	.text
	.file	"gdevpsf2.bc"
	.globl	psf_write_type2_font
	.align	16, 0x90
	.type	psf_write_type2_font,@function
psf_write_type2_font:                   # @psf_write_type2_font
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
	subq	$3416, %rsp             # imm = 0xD58
.Ltmp6:
	.cfi_def_cfa_offset 3472
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
	movq	%r9, 224(%rsp)          # 8-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movl	%edx, 248(%rsp)         # 4-byte Spill
	movq	%rsi, %r14
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	leaq	2312(%rsp), %rbp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	callq	psf_enumerate_list_begin
	movl	$-1, %r13d
	leaq	2304(%rsp), %rbx
	.align	16, 0x90
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	psf_enumerate_glyphs_next
	incl	%r13d
	cmpl	$1, %eax
	jne	.LBB0_1
# BB#2:                                 # %while.end
	movq	16(%r14), %rdi
	leal	(,%r13,8), %esi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, 2736(%rsp)
	movq	16(%r14), %rdi
	leal	(%r13,%r13,2), %eax
	leal	12960(,%rax,8), %esi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, 240(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	movl	$-25, %ebp
	je	.LBB0_248
# BB#3:                                 # %while.end
	movq	2736(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_248
# BB#4:                                 # %if.end
	leaq	2728(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	psf_get_type1_glyphs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_248
# BB#5:                                 # %if.end.24
	cmpq	$2147483647, 2728(%rsp) # imm = 0x7FFFFFFF
	jne	.LBB0_7
# BB#6:
	movl	$-15, %ebp
	jmp	.LBB0_248
.LBB0_7:                                # %if.end.29
	movl	248(%rsp), %eax         # 4-byte Reload
	testb	$2, %al
	jne	.LBB0_9
# BB#8:
	movq	3472(%rsp), %r12
	jmp	.LBB0_11
.LBB0_9:                                # %if.then.30
	orl	$1, %eax
	cmpl	$2, 128(%r14)
	movq	3472(%rsp), %r12
	je	.LBB0_11
# BB#10:                                # %if.then.33
	movq	$0, 536(%r14)
.LBB0_11:                               # %if.end.36
	movl	%eax, 248(%rsp)         # 4-byte Spill
	leal	40(%r13), %r15d
	movq	240(%rsp), %rcx         # 8-byte Reload
	addq	$12000, %rcx            # imm = 0x2EE0
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movl	%eax, 2768(%rsp)
	xorl	%ebx, %ebx
	leaq	2376(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	s_init
	movq	%rbp, %rdi
	callq	swrite_position_only
	movq	%rbp, 2776(%rsp)
	movq	%r14, 2784(%rsp)
	movq	$psf_type1_glyph_data, 2792(%rsp)
	movq	$1, 2800(%rsp)
	movq	232(%rsp), %rdi         # 8-byte Reload
	callq	stell
	movq	%rax, 2808(%rsp)
	movups	(%r12), %xmm0
	movups	%xmm0, 2864(%rsp)
	movq	2744(%rsp), %rdx
	testq	%rdx, %rdx
	movl	2752(%rsp), %ecx
	cmovel	%ebx, %ecx
	leaq	2312(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%r14, %rsi
	callq	psf_enumerate_list_begin
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*200(%r14)
	movq	%rax, 2304(%rsp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB0_18
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpq	2728(%rsp), %rax
	je	.LBB0_18
# BB#14:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpq	$0, 2744(%rsp)
	je	.LBB0_17
# BB#15:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	2736(%rsp), %rdi
	movl	2752(%rsp), %esi
	movq	%rax, %rdx
	callq	psf_sorted_glyphs_include
	testl	%eax, %eax
	je	.LBB0_18
# BB#16:                                # %lor.lhs.false.65.if.then.72_crit_edge
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	2304(%rsp), %rax
.LBB0_17:                               # %if.then.72
                                        #   in Loop: Header=BB0_12 Depth=1
	movslq	%ebp, %rcx
	incl	%ebp
	movq	%rax, 256(%rsp,%rcx,8)
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=1
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB0_12
# BB#19:                                # %for.end
	movl	%ebp, 2764(%rsp)
	leaq	256(%rsp), %rdi
	movl	%ebp, %esi
	callq	psf_sort_glyphs
	movl	%eax, %ebx
	movl	%ebx, 2760(%rsp)
	cmpq	$0, 2744(%rsp)
	je	.LBB0_21
# BB#20:                                # %for.end.if.end.109_crit_edge
	movq	%r14, 216(%rsp)         # 8-byte Spill
	movl	2752(%rsp), %r14d
	jmp	.LBB0_27
.LBB0_21:                               # %if.then.80
	leaq	2312(%rsp), %rbp
	movq	%rbp, %rdi
	callq	psf_enumerate_glyphs_reset
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	2304(%rsp), %r12
	jmp	.LBB0_22
.LBB0_25:                               # %if.end.92
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	2304(%rsp), %rax
	movq	2736(%rsp), %rcx
	movq	%rax, (%rcx,%rsi,8)
	incq	%rsi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
.LBB0_22:                               # %while.cond.81
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	je	.LBB0_26
# BB#23:                                # %while.cond.81
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%eax, %eax
	jne	.LBB0_22
# BB#24:                                # %if.then.88
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	200(%rsp), %rsi         # 8-byte Reload
	cmpl	%r13d, %esi
	jne	.LBB0_25
# BB#249:                               # %cleanup.148
	movl	$-13, %ebp
	jmp	.LBB0_248
.LBB0_26:                               # %cleanup.thread
	movq	%r14, 216(%rsp)         # 8-byte Spill
	movq	2736(%rsp), %rdi
	movq	200(%rsp), %rsi         # 8-byte Reload
	callq	psf_sort_glyphs
	movl	%eax, %r14d
	movl	%r14d, 2752(%rsp)
	movq	2736(%rsp), %rax
	movq	%rax, 2744(%rsp)
.LBB0_27:                               # %if.end.109
	testl	%r14d, %r14d
	jle	.LBB0_34
# BB#28:                                # %while.body.115.lr.ph.lr.ph
	movslq	%r14d, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	256(%rsp), %r12
.LBB0_29:                               # %while.body.115.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	movslq	%r14d, %rbp
	leal	-1(%rbp), %eax
	movslq	%eax, %r13
	shlq	$3, %r13
	.align	16, 0x90
.LBB0_30:                               # %while.body.115
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rbp), %r14
	movq	2736(%rsp), %rax
	movq	(%rax,%r13), %rdx
	movq	%rdx, 2304(%rsp)
	cmpq	2728(%rsp), %rdx
	je	.LBB0_31
# BB#32:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB0_30 Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	psf_sorted_glyphs_include
	testl	%eax, %eax
	je	.LBB0_33
.LBB0_31:                               # %while.cond.112.backedge
                                        #   in Loop: Header=BB0_30 Depth=2
	addq	$-8, %r13
	cmpq	$1, %rbp
	movq	%r14, %rbp
	jg	.LBB0_30
	jmp	.LBB0_34
.LBB0_33:                               # %if.then.128
                                        #   in Loop: Header=BB0_29 Depth=1
	movq	2304(%rsp), %rax
	movq	2736(%rsp), %rcx
	movq	200(%rsp), %rdx         # 8-byte Reload
	movq	%rax, -8(%rcx,%rdx,8)
	decq	%rdx
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	cmpl	$1, %ebp
	jg	.LBB0_29
.LBB0_34:                               # %cleanup.cont.152
	movq	2728(%rsp), %rax
	movq	2736(%rsp), %rdi
	movq	%rax, (%rdi)
	addq	$8, %rdi
	movslq	%ebx, %rdx
	shlq	$3, %rdx
	leaq	256(%rsp), %rsi
	callq	memcpy
	movq	224(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_36
# BB#35:                                # %if.then.154
	movq	(%rcx), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	addq	$8, %rcx
	jmp	.LBB0_37
.LBB0_36:                               # %if.else
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	324(%rax), %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leaq	372(%rax), %rcx
.LBB0_37:                               # %if.end.160
	movq	208(%rsp), %r13         # 8-byte Reload
	movl	(%rcx), %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	2816(%rsp), %r14
	xorl	%esi, %esi
	movl	$12000, %edx            # imm = 0x2EE0
	movq	240(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, 2816(%rsp)
	movabsq	$2147483648000, %rax    # imm = 0x1F400000000
	movq	%rax, 2824(%rsp)
	movl	$17, %ebx
	.align	16, 0x90
.LBB0_38:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$500, %edi              # imm = 0x1F4
	movl	%ebx, %esi
	callq	igcd
	cmpl	$1, %eax
	je	.LBB0_39
# BB#40:                                # %while.body.i
                                        #   in Loop: Header=BB0_38 Depth=1
	leal	1(%rbx,%rbx), %eax
	movslq	%eax, %rbx
	imulq	$274877907, %rbx, %rax  # imm = 0x10624DD3
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$500, %eax, %eax        # imm = 0x1F4
	subl	%eax, %ebx
	movl	$1, %eax
	cmpl	$1, %ebx
	jne	.LBB0_38
	jmp	.LBB0_41
.LBB0_39:
	movl	%ebx, %eax
.LBB0_41:                               # %cff_string_table_init.exit
	movl	$0, 2832(%rsp)
	movl	%eax, 2836(%rsp)
	xorl	%edi, %edi
	movl	$10, %esi
	callq	gs_c_known_encode
	movq	%rax, 2304(%rsp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB0_44
# BB#42:                                # %for.body.166.lr.ph
	movl	$1, %ebp
	leaq	256(%rsp), %r12
	leaq	3136(%rsp), %rbx
	.align	16, 0x90
.LBB0_43:                               # %for.body.166
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	gs_c_glyph_name
	movq	256(%rsp), %rsi
	movl	264(%rsp), %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%rbx, %r8
	callq	cff_string_index
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	gs_c_known_encode
	movq	%rax, 2304(%rsp)
	incq	%rbp
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB0_43
.LBB0_44:                               # %for.end.174
	movslq	%r15d, %rbx
	leaq	(,%rbx,8), %rax
	leaq	(%rax,%rax,2), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	movq	%r13, 2840(%rsp)
	movl	$0, 2848(%rsp)
	movl	%ebx, 2852(%rsp)
	movl	$17, %ebx
	movq	216(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB0_45:                               # %land.rhs.i.143
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %edi
	movl	%ebx, %esi
	callq	igcd
	cmpl	$1, %eax
	je	.LBB0_46
# BB#47:                                # %while.body.i.148
                                        #   in Loop: Header=BB0_45 Depth=1
	leal	1(%rbx,%rbx), %eax
	cltd
	idivl	%r15d
	movl	$1, %eax
	movl	%edx, %ebx
	cmpl	$1, %ebx
	jne	.LBB0_45
	jmp	.LBB0_48
.LBB0_46:
	movl	%ebx, %eax
.LBB0_48:                               # %cff_string_table_init.exit152
	movl	$0, 2856(%rsp)
	movl	%eax, 2860(%rsp)
	leaq	2768(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	cff_write_Top_font
	movq	2736(%rsp), %rdx
	movl	2752(%rsp), %ecx
	leaq	2312(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%r14, %rsi
	callq	psf_enumerate_list_begin
	.align	16, 0x90
.LBB0_49:                               # %while.cond.179
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
	leaq	2312(%rsp), %rdi
	leaq	2304(%rsp), %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB0_50
# BB#55:                                # %if.then.186
                                        #   in Loop: Header=BB0_49 Depth=1
	movq	2304(%rsp), %rsi
	movq	2784(%rsp), %rdi
	leaq	256(%rsp), %rdx
	callq	*240(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_248
# BB#56:                                # %if.end.i
                                        #   in Loop: Header=BB0_49 Depth=1
	movq	%r14, %rbx
	movq	256(%rsp), %r12
	movl	264(%rsp), %r15d
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	movl	$0, %r13d
	je	.LBB0_58
# BB#57:                                # %cond.false.i
                                        #   in Loop: Header=BB0_49 Depth=1
	movzbl	(%r12), %eax
	imull	$23, %eax, %r13d
	leal	-1(%r15), %eax
	movzbl	(%r12,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r15d, %r13d
	addl	%eax, %r13d
.LBB0_58:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	2828(%rsp), %ecx
	.align	16, 0x90
.LBB0_59:                               # %while.cond.i
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movslq	%r13d, %rcx
	movq	2816(%rsp), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbp
	testq	%rbp, %rbp
	je	.LBB0_62
# BB#60:                                # %while.body.i.161
                                        #   in Loop: Header=BB0_59 Depth=2
	decq	%rbp
	leaq	(%rbp,%rbp,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB0_64
# BB#61:                                # %if.end.i.162
                                        #   in Loop: Header=BB0_59 Depth=2
	addl	2836(%rsp), %r13d
	incl	%r14d
	movl	2828(%rsp), %ecx
	cmpl	%ecx, %r14d
	jl	.LBB0_59
.LBB0_62:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	$1, %ecx
	leaq	2840(%rsp), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	leaq	3136(%rsp), %r8
	callq	cff_string_index
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_248
# BB#63:                                # %if.end.i.i
                                        #   in Loop: Header=BB0_49 Depth=1
	movl	3136(%rsp), %ebp
	movl	$391, %eax              # imm = 0x187
	addl	%eax, %ebp
.LBB0_64:                               # %cff_glyph_sid.exit
                                        #   in Loop: Header=BB0_49 Depth=1
	testl	%ebp, %ebp
	movq	%rbx, %r14
	jns	.LBB0_49
	jmp	.LBB0_248
.LBB0_50:                               # %while.cond.179
                                        #   in Loop: Header=BB0_49 Depth=1
	cmpl	$1, %eax
	jne	.LBB0_49
# BB#51:                                # %while.end.193
	movl	248(%rsp), %eax         # 4-byte Reload
	testb	$8, %al
	jne	.LBB0_54
# BB#52:                                # %lor.lhs.false.197
	cmpl	$2, 128(%r14)
	je	.LBB0_65
# BB#53:                                # %land.rhs.i.165
	testb	$2, 2768(%rsp)
	jne	.LBB0_54
.LBB0_65:                               # %if.else.201
	leaq	2768(%rsp), %rdi
	leaq	2364(%rsp), %rsi
	movl	$1, %ecx
	movq	%r14, %rdx
	callq	cff_write_Subrs_offsets
	movl	%eax, %r15d
	jmp	.LBB0_66
.LBB0_54:                               # %if.then.200
	movl	$0, 2364(%rsp)
	xorl	%r15d, %r15d
.LBB0_66:                               # %if.end.203
	movq	%r14, 216(%rsp)         # 8-byte Spill
	movq	2760(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	cmpl	$256, %ecx              # imm = 0x100
	movl	$255, %r12d
	cmovll	%ecx, %r12d
	xorl	%ebx, %ebx
	subl	%r12d, %eax
	jle	.LBB0_68
# BB#67:                                # %cond.true.2.i
	leal	1(%rax,%rax,2), %ebx
.LBB0_68:                               # %cff_Encoding_size.exit
	movl	2752(%rsp), %r14d
	leaq	2768(%rsp), %rdi
	leaq	2312(%rsp), %rsi
	leaq	2372(%rsp), %rdx
	callq	cff_write_CharStrings_offsets
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_248
# BB#69:                                # %if.end.215
	addl	$2, %r12d
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpl	$2, 128(%rax)
	je	.LBB0_72
# BB#70:                                # %land.rhs.i.176
	testb	$2, 2768(%rsp)
	jne	.LBB0_71
.LBB0_72:                               # %cond.false.219
	leaq	2768(%rsp), %rdi
	leaq	2368(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	216(%rsp), %rdx         # 8-byte Reload
	callq	cff_write_Subrs_offsets
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movl	2368(%rsp), %eax
	jmp	.LBB0_73
.LBB0_71:
	movl	$0, 152(%rsp)           # 4-byte Folded Spill
                                        # implicit-def: EAX
.LBB0_73:                               # %cond.end.221
	movl	%eax, 76(%rsp)          # 4-byte Spill
	addl	%ebx, %r12d
	movq	%r12, 32(%rsp)          # 8-byte Spill
	leal	-1(%r14,%r14), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %r13d
	movl	%r13d, 92(%rsp)         # 4-byte Spill
	leal	10(%rax), %r14d
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	2364(%rsp), %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	2372(%rsp), %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leal	1(%rbp), %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	leal	1(%rcx), %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	%ebp, %ecx
	addl	$3, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r15, 80(%rsp)          # 8-byte Spill
	leal	1(%r15), %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	leal	1(%rax), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	leal	3(%r15), %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	$8388607, %eax          # imm = 0x7FFFFF
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	$8388607, 156(%rsp)     # 4-byte Folded Spill
                                        # imm = 0x7FFFFF
	movl	$8388607, 116(%rsp)     # 4-byte Folded Spill
                                        # imm = 0x7FFFFF
	jmp	.LBB0_74
.LBB0_243:                              #   in Loop: Header=BB0_74 Depth=1
	movq	248(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 156(%rsp)         # 4-byte Spill
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB0_74:                               # %iter
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_80 Depth 2
                                        #     Child Loop BB0_84 Depth 2
                                        #     Child Loop BB0_88 Depth 2
                                        #     Child Loop BB0_93 Depth 2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #       Child Loop BB0_133 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_178 Depth 3
                                        #         Child Loop BB0_185 Depth 4
                                        #       Child Loop BB0_203 Depth 3
                                        #         Child Loop BB0_207 Depth 4
	leaq	2376(%rsp), %rbx
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	%rbx, 2776(%rsp)
	cmpl	$256, %r13d             # imm = 0x100
	movl	$1, %eax
	movl	%r13d, %ecx
	jb	.LBB0_76
.LBB0_75:                               # %while.body.i.i
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB0_75
.LBB0_76:                               # %cff_Index_size.exit
                                        #   in Loop: Header=BB0_74 Depth=1
	movq	176(%rsp), %rcx         # 8-byte Reload
	leal	1(%rcx), %ecx
	movl	$1, %ebx
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB0_78
.LBB0_77:                               # %while.body.i.i.193
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%ebx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB0_77
.LBB0_78:                               # %cff_Index_size.exit199
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	2848(%rsp), %ecx
	movl	$2, %edx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	movl	$2, %edx
	je	.LBB0_82
# BB#79:                                # %cond.false.i.203
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	2856(%rsp), %r8d
	leal	1(%r8), %edx
	movl	$1, %esi
	cmpl	$256, %edx              # imm = 0x100
	jb	.LBB0_81
.LBB0_80:                               # %while.body.i.i.209
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %edi
	shrl	$8, %edi
	incl	%esi
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	%edi, %edx
	ja	.LBB0_80
.LBB0_81:                               # %offset_size.exit.i
                                        #   in Loop: Header=BB0_74 Depth=1
	incl	%ecx
	imull	%esi, %ecx
	leal	3(%r8,%rcx), %edx
.LBB0_82:                               # %cff_Index_size.exit215
                                        #   in Loop: Header=BB0_74 Depth=1
	addl	%eax, %ebx
	movq	176(%rsp), %rax         # 8-byte Reload
	leal	(%r14,%rax), %r14d
	addl	%edx, %r14d
	movq	136(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_86
# BB#83:                                # %cond.false.i.219
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	$1, %eax
	movl	44(%rsp), %ecx          # 4-byte Reload
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB0_85
.LBB0_84:                               # %while.body.i.i.225
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB0_84
.LBB0_85:                               # %offset_size.exit.i.231
                                        #   in Loop: Header=BB0_74 Depth=1
	imull	40(%rsp), %eax          # 4-byte Folded Reload
	leal	(%rax,%r15), %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB0_86:                               # %cff_Index_size.exit233
                                        #   in Loop: Header=BB0_74 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$2, 164(%rsp)           # 4-byte Folded Spill
	je	.LBB0_90
# BB#87:                                # %cond.false.i.238
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	$1, %eax
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB0_89
.LBB0_88:                               # %while.body.i.i.244
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB0_88
.LBB0_89:                               # %offset_size.exit.i.250
                                        #   in Loop: Header=BB0_74 Depth=1
	imull	56(%rsp), %eax          # 4-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
.LBB0_90:                               # %cff_Index_size.exit252
                                        #   in Loop: Header=BB0_74 Depth=1
	xorl	%edx, %edx
	leaq	2376(%rsp), %rdi
	leaq	256(%rsp), %rsi
	movq	%rsi, %rcx
	movq	%rsi, %r15
	callq	sputs
	testl	%eax, %eax
	jne	.LBB0_91
# BB#92:                                # %if.end.243.lr.ph
                                        #   in Loop: Header=BB0_74 Depth=1
	leal	(%r14,%rbx,2), %r14d
	movq	144(%rsp), %rax         # 8-byte Reload
	addl	%r14d, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leal	(%r12,%rax), %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	addl	%eax, 164(%rsp)         # 4-byte Folded Spill
	cmpl	$32767, 116(%rsp)       # 4-byte Folded Reload
                                        # imm = 0x7FFF
	seta	%al
	movzbl	%al, %eax
	orq	$2, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	156(%rsp), %eax         # 4-byte Reload
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%r15, %rbx
.LBB0_93:                               # %if.end.243
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #       Child Loop BB0_133 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_178 Depth 3
                                        #         Child Loop BB0_185 Depth 4
                                        #       Child Loop BB0_203 Depth 3
                                        #         Child Loop BB0_207 Depth 4
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 2800(%rsp)
	movq	2776(%rsp), %rdi
	movl	$.L.str.4, %esi
	movl	$3, %edx
	movq	%rbx, %rcx
	callq	sputs
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_95
# BB#94:                                # %cond.true.i
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	2800(%rsp), %cl
	movb	%cl, 1(%rax)
	jmp	.LBB0_96
.LBB0_95:                               # %cond.false.i.258
                                        #   in Loop: Header=BB0_93 Depth=2
	movzbl	2800(%rsp), %esi
	callq	spputc
.LBB0_96:                               # %cff_write_header.exit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_98
# BB#97:                                # %cond.true.i.505
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_99
.LBB0_98:                               # %cond.false.i.507
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB0_99:                               # %cond.end.i.509
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_101
# BB#100:                               # %cond.true.25.i.511
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$1, 1(%rax)
	jmp	.LBB0_102
.LBB0_101:                              # %cond.false.36.i.513
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	$1, %esi
	callq	spputc
.LBB0_102:                              # %put_card16.exit514
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	$1, %eax
	cmpl	$256, %r13d             # imm = 0x100
	movl	%r13d, %ecx
	jb	.LBB0_104
.LBB0_103:                              # %while.body.i.i.267
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB0_103
.LBB0_104:                              # %offset_size.exit.i.272
                                        #   in Loop: Header=BB0_93 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 2800(%rsp)
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB0_106
# BB#105:                               # %cond.true.i.274
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB0_107
.LBB0_106:                              # %cond.false.i.275
                                        #   in Loop: Header=BB0_93 Depth=2
	movzbl	%al, %esi
	callq	spputc
.LBB0_107:                              # %cff_put_Index_header.exit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%rbx, %r12
	movq	2800(%rsp), %rax
	movl	%eax, %ecx
	decl	%ecx
	js	.LBB0_114
# BB#108:                               # %for.body.i.523.preheader
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leal	(%rax,%rcx), %r15d
	shll	$3, %r15d
	leal	1(%rax,%rcx), %ebx
.LBB0_109:                              # %for.body.i.523
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_111
# BB#110:                               # %cond.true.i.528
                                        #   in Loop: Header=BB0_109 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB0_112
.LBB0_111:                              # %cond.false.i.533
                                        #   in Loop: Header=BB0_109 Depth=3
	movl	$1, %eax
	movb	%r15b, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB0_112:                              # %for.inc.i.536
                                        #   in Loop: Header=BB0_109 Depth=3
	addl	$-8, %r15d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB0_109
# BB#113:                               # %put_offset.exit538.loopexit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2800(%rsp), %rax
.LBB0_114:                              # %put_offset.exit538
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	%eax, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	addl	%edx, %ecx
	js	.LBB0_120
# BB#115:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leal	(%rax,%rcx), %r15d
	shll	$3, %r15d
	leal	1(%rax,%rcx), %ebx
.LBB0_116:                              # %for.body.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_118
# BB#117:                               # %cond.true.i.285
                                        #   in Loop: Header=BB0_116 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r13d, %edx
	movb	%r15b, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB0_119
.LBB0_118:                              # %cond.false.i.288
                                        #   in Loop: Header=BB0_116 Depth=3
	movl	%r13d, %eax
	movb	%r15b, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB0_119:                              # %for.inc.i
                                        #   in Loop: Header=BB0_116 Depth=3
	addl	$-8, %r15d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB0_116
.LBB0_120:                              # %put_offset.exit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	200(%rsp), %rsi         # 8-byte Reload
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	%r12, %rbx
	movq	%rbx, %rcx
	callq	sputs
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_122
# BB#121:                               # %cond.true.i.542
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_123
.LBB0_122:                              # %cond.false.i.544
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB0_123:                              # %cond.end.i.546
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_125
# BB#124:                               # %cond.true.25.i.548
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	%r14d, 208(%rsp)        # 4-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$1, 1(%rax)
	jmp	.LBB0_126
.LBB0_125:                              # %cond.false.36.i.550
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	%r14d, 208(%rsp)        # 4-byte Spill
	movl	$1, %esi
	callq	spputc
.LBB0_126:                              # %put_card16.exit551
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	176(%rsp), %r14         # 8-byte Reload
	incl	%r14d
	movl	$1, %eax
	cmpl	$256, %r14d             # imm = 0x100
	movl	%r14d, %ecx
	jb	.LBB0_128
.LBB0_127:                              # %while.body.i.i.301
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB0_127
.LBB0_128:                              # %offset_size.exit.i.307
                                        #   in Loop: Header=BB0_93 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 2800(%rsp)
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB0_130
# BB#129:                               # %cond.true.i.310
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB0_131
.LBB0_130:                              # %cond.false.i.313
                                        #   in Loop: Header=BB0_93 Depth=2
	movzbl	%al, %esi
	callq	spputc
.LBB0_131:                              # %cff_put_Index_header.exit315
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%rbx, %r12
	movq	2800(%rsp), %rax
	movl	%eax, %ecx
	addl	%r13d, %ecx
	js	.LBB0_138
# BB#132:                               # %for.body.i.357.preheader
                                        #   in Loop: Header=BB0_93 Depth=2
	leal	(%rax,%r13), %r15d
	shll	$3, %r15d
	leal	1(%rax,%r13), %ebx
.LBB0_133:                              # %for.body.i.357
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_135
# BB#134:                               # %cond.true.i.362
                                        #   in Loop: Header=BB0_133 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB0_136
.LBB0_135:                              # %cond.false.i.367
                                        #   in Loop: Header=BB0_133 Depth=3
	movl	$1, %eax
	movb	%r15b, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB0_136:                              # %for.inc.i.370
                                        #   in Loop: Header=BB0_133 Depth=3
	addl	$-8, %r15d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB0_133
# BB#137:                               # %put_offset.exit371.loopexit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2800(%rsp), %rax
.LBB0_138:                              # %put_offset.exit371
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	%eax, %ecx
	addl	%r13d, %ecx
	js	.LBB0_144
# BB#139:                               # %for.body.i.324.preheader
                                        #   in Loop: Header=BB0_93 Depth=2
	leal	(%rax,%r13), %r15d
	shll	$3, %r15d
	leal	1(%rax,%r13), %ebx
.LBB0_140:                              # %for.body.i.324
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_142
# BB#141:                               # %cond.true.i.329
                                        #   in Loop: Header=BB0_140 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r14d, %edx
	movb	%r15b, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB0_143
.LBB0_142:                              # %cond.false.i.334
                                        #   in Loop: Header=BB0_140 Depth=3
	movl	%r14d, %eax
	movb	%r15b, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB0_143:                              # %for.inc.i.337
                                        #   in Loop: Header=BB0_140 Depth=3
	addl	$-8, %r15d
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB0_140
.LBB0_144:                              # %put_offset.exit338
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, %r15
	leaq	2768(%rsp), %rbx
	movq	%rbx, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	160(%rsp), %ecx         # 4-byte Reload
	movl	164(%rsp), %r8d         # 4-byte Reload
	movq	248(%rsp), %r9          # 8-byte Reload
	callq	cff_write_Top_font
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	leaq	2840(%rsp), %rsi
	callq	cff_put_Index
	movq	2776(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rsi, %rcx
	callq	sputs
	testl	%eax, %eax
	jne	.LBB0_145
# BB#146:                               # %if.end.270
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, %rdx
	movq	168(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edx
	cmpl	208(%rsp), %edx         # 4-byte Folded Reload
	ja	.LBB0_147
# BB#148:                               # %if.end.278
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	216(%rsp), %rcx         # 8-byte Reload
	je	.LBB0_151
# BB#149:                               # %lor.lhs.false.281
                                        #   in Loop: Header=BB0_93 Depth=2
	cmpl	$2, 128(%rcx)
	je	.LBB0_157
# BB#150:                               # %land.rhs.i.346
                                        #   in Loop: Header=BB0_93 Depth=2
	testb	$2, 2768(%rsp)
	jne	.LBB0_151
.LBB0_157:                              # %if.else.285
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movl	$1, %r8d
	leaq	2768(%rsp), %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	cff_write_Subrs
	jmp	.LBB0_158
.LBB0_151:                              # %if.then.284
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_153
# BB#152:                               # %cond.true.i.376
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_154
.LBB0_153:                              # %cond.false.i.378
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	spputc
.LBB0_154:                              # %cond.end.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_156
# BB#155:                               # %cond.true.25.i
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_158
.LBB0_156:                              # %cond.false.36.i
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB0_158:                              # %if.end.286
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	subl	%r15d, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	2776(%rsp), %r14
	movq	%r14, 192(%rsp)         # 8-byte Spill
	movq	2784(%rsp), %r15
	movq	%r15, 184(%rsp)         # 8-byte Spill
	movl	2760(%rsp), %r13d
	cmpl	$255, %r13d
	movl	$255, %eax
	cmovael	%eax, %r13d
	movslq	%r13d, %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	leaq	3136(%rsp), %rdi
	callq	memset
	xorl	%r12d, %r12d
.LBB0_159:                              # %for.body.i.384
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*200(%r15)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB0_166
# BB#160:                               # %for.body.i.384
                                        #   in Loop: Header=BB0_159 Depth=3
	cmpq	2728(%rsp), %rax
	je	.LBB0_166
# BB#161:                               # %if.end.i.385
                                        #   in Loop: Header=BB0_159 Depth=3
	movq	2736(%rsp), %rdi
	addq	$8, %rdi
	movl	2760(%rsp), %esi
	movq	%rax, %rdx
	callq	psf_sorted_glyphs_index_of
	testl	%eax, %eax
	js	.LBB0_166
# BB#162:                               # %if.end.21.i
                                        #   in Loop: Header=BB0_159 Depth=3
	cmpl	$254, %eax
	ja	.LBB0_164
# BB#163:                               # %lor.lhs.false.25.i
                                        #   in Loop: Header=BB0_159 Depth=3
	cltq
	cmpb	$0, 3136(%rsp,%rax)
	je	.LBB0_165
.LBB0_164:                              # %if.then.27.i
                                        #   in Loop: Header=BB0_159 Depth=3
	movslq	%r12d, %rax
	incl	%r12d
	movb	%bl, 256(%rsp,%rax)
	jmp	.LBB0_166
.LBB0_165:                              # %if.else.i
                                        #   in Loop: Header=BB0_159 Depth=3
	movb	%bl, 2880(%rsp,%rax)
	movb	$1, 3136(%rsp,%rax)
.LBB0_166:                              # %cleanup.i
                                        #   in Loop: Header=BB0_159 Depth=3
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB0_159
# BB#167:                               # %for.end.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB0_169
# BB#168:                               # %cond.true.43.i
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	testl	%r12d, %r12d
	setne	%cl
	shlb	$7, %cl
	movb	%cl, 1(%rax)
	jmp	.LBB0_170
.LBB0_169:                              # %cond.false.53.i
                                        #   in Loop: Header=BB0_93 Depth=2
	testl	%r12d, %r12d
	setne	%al
	movzbl	%al, %esi
	shll	$7, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB0_170:                              # %cond.end.58.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB0_172
# BB#171:                               # %cond.true.68.i
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%r13b, 1(%rax)
	jmp	.LBB0_173
.LBB0_172:                              # %cond.false.77.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movzbl	%r13b, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB0_173:                              # %cond.end.80.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%r14, %rdi
	leaq	2880(%rsp), %rsi
	movl	%r13d, %edx
	leaq	3392(%rsp), %rcx
	callq	sputs
	testl	%r12d, %r12d
	je	.LBB0_199
# BB#174:                               # %if.then.85.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB0_176
# BB#175:                               # %cond.true.94.i
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	%r12b, 1(%rax)
	jmp	.LBB0_177
.LBB0_176:                              # %cond.false.103.i
                                        #   in Loop: Header=BB0_93 Depth=2
	movzbl	%r12b, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB0_177:                              # %for.cond.108.preheader.i
                                        #   in Loop: Header=BB0_93 Depth=2
	testl	%r12d, %r12d
	movl	$0, %r13d
	jle	.LBB0_199
.LBB0_178:                              # %for.body.111.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_185 Depth 4
	movb	256(%rsp,%r13), %al
	movzbl	%al, %ebx
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jae	.LBB0_180
# BB#179:                               # %cond.true.122.i
                                        #   in Loop: Header=BB0_178 Depth=3
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%r14)
	movb	%al, 1(%rcx)
	jmp	.LBB0_181
.LBB0_180:                              # %cond.false.130.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	spputc
.LBB0_181:                              # %cond.end.132.i
                                        #   in Loop: Header=BB0_178 Depth=3
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*200(%r15)
	movq	2784(%rsp), %rdi
	movq	%rax, %rsi
	leaq	3392(%rsp), %rdx
	callq	*240(%rdi)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_192
# BB#182:                               # %if.end.i.i.392
                                        #   in Loop: Header=BB0_178 Depth=3
	movq	%r13, 208(%rsp)         # 8-byte Spill
	movl	%r12d, 248(%rsp)        # 4-byte Spill
	movq	3392(%rsp), %r15
	movl	3400(%rsp), %r13d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %r14d
	je	.LBB0_184
# BB#183:                               # %cond.false.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movzbl	(%r15), %eax
	imull	$23, %eax, %r14d
	leal	-1(%r13), %eax
	movzbl	(%r15,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r13d, %r14d
	addl	%eax, %r14d
.LBB0_184:                              # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movl	2828(%rsp), %ecx
	.align	16, 0x90
.LBB0_185:                              # %while.cond.i.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        #       Parent Loop BB0_178 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r14d
	movslq	%r14d, %rcx
	movq	2816(%rsp), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB0_188
# BB#186:                               # %while.body.i.i.395
                                        #   in Loop: Header=BB0_185 Depth=4
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r15, %rdx
	movl	%r13d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB0_190
# BB#187:                               # %if.end.i.4.i
                                        #   in Loop: Header=BB0_185 Depth=4
	addl	2836(%rsp), %r14d
	incl	%r12d
	movl	2828(%rsp), %ecx
	cmpl	%ecx, %r12d
	jl	.LBB0_185
.LBB0_188:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movl	$1, %ecx
	leaq	2840(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	leaq	3412(%rsp), %r8
	callq	cff_string_index
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_191
# BB#189:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movl	3412(%rsp), %ebx
	movl	$391, %eax              # imm = 0x187
	addl	%eax, %ebx
.LBB0_190:                              # %cff_string_sid.exit.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movl	%ebx, 3412(%rsp)
.LBB0_191:                              # %cff_string_sid.exit.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movq	192(%rsp), %r14         # 8-byte Reload
	movq	184(%rsp), %r15         # 8-byte Reload
	movl	248(%rsp), %r12d        # 4-byte Reload
	movq	208(%rsp), %r13         # 8-byte Reload
.LBB0_192:                              # %cff_glyph_sid.exit.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_194
# BB#193:                               # %cond.true.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB0_195
.LBB0_194:                              # %cond.false.i.9.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movzbl	%bh, %esi  # NOREX
	callq	spputc
.LBB0_195:                              # %cond.end.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_197
# BB#196:                               # %cond.true.25.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bl, 1(%rax)
	jmp	.LBB0_198
.LBB0_197:                              # %cond.false.36.i.i
                                        #   in Loop: Header=BB0_178 Depth=3
	movzbl	%bl, %esi
	callq	spputc
.LBB0_198:                              # %put_card16.exit.i
                                        #   in Loop: Header=BB0_178 Depth=3
	incq	%r13
	cmpl	%r12d, %r13d
	jne	.LBB0_178
.LBB0_199:                              # %cff_write_Encoding.exit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_201
# BB#200:                               # %cond.true.i.404
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_202
.LBB0_201:                              # %cond.false.i.406
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB0_202:                              # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	256(%rsp), %rbx
	movq	%rbx, %r15
	cmpl	$2, 2752(%rsp)
	movl	$1, %ebx
	jb	.LBB0_220
.LBB0_203:                              # %for.body.i.420
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_207 Depth 4
	movq	2736(%rsp), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	2784(%rsp), %rdi
	movq	%r15, %rdx
	callq	*240(%rdi)
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB0_213
# BB#204:                               # %if.end.i.i.421
                                        #   in Loop: Header=BB0_203 Depth=3
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	movq	256(%rsp), %r14
	movl	264(%rsp), %r15d
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	movl	$0, %ebx
	je	.LBB0_206
# BB#205:                               # %cond.false.i.i.431
                                        #   in Loop: Header=BB0_203 Depth=3
	movzbl	(%r14), %eax
	imull	$23, %eax, %ebx
	leal	-1(%r15), %eax
	movzbl	(%r14,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r15d, %ebx
	addl	%eax, %ebx
.LBB0_206:                              # %while.cond.preheader.i.i.434
                                        #   in Loop: Header=BB0_203 Depth=3
	movl	2828(%rsp), %ecx
	.align	16, 0x90
.LBB0_207:                              # %while.cond.i.i.441
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        #       Parent Loop BB0_203 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	movslq	%ebx, %rcx
	movq	2816(%rsp), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %r12
	testq	%r12, %r12
	je	.LBB0_210
# BB#208:                               # %while.body.i.i.447
                                        #   in Loop: Header=BB0_207 Depth=4
	decq	%r12
	leaq	(%r12,%r12,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB0_250
# BB#209:                               # %if.end.i.3.i
                                        #   in Loop: Header=BB0_207 Depth=4
	addl	2836(%rsp), %ebx
	incl	%r13d
	movl	2828(%rsp), %ecx
	cmpl	%ecx, %r13d
	jl	.LBB0_207
.LBB0_210:                              # %if.then.i.i.i.454
                                        #   in Loop: Header=BB0_203 Depth=3
	movl	$1, %ecx
	leaq	2840(%rsp), %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	leaq	3136(%rsp), %r8
	callq	cff_string_index
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB0_212
# BB#211:                               # %if.end.i.i.i.456
                                        #   in Loop: Header=BB0_203 Depth=3
	movl	3136(%rsp), %edx
	movl	$391, %eax              # imm = 0x187
	addl	%eax, %edx
	movl	%edx, 3136(%rsp)
	jmp	.LBB0_212
.LBB0_250:                              # %entry.if.end.4_crit_edge.i.i.i.451
                                        #   in Loop: Header=BB0_203 Depth=3
	movl	%r12d, 3136(%rsp)
	movq	%r12, %rdx
.LBB0_212:                              # %cff_string_sid.exit.i.i.458
                                        #   in Loop: Header=BB0_203 Depth=3
	leaq	256(%rsp), %rbx
	movq	%rbx, %r15
	movq	248(%rsp), %rbx         # 8-byte Reload
.LBB0_213:                              # %cff_glyph_sid.exit.i.460
                                        #   in Loop: Header=BB0_203 Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_215
# BB#214:                               # %cond.true.i.i.463
                                        #   in Loop: Header=BB0_203 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB0_216
.LBB0_215:                              # %cond.false.i.8.i
                                        #   in Loop: Header=BB0_203 Depth=3
	movzbl	%dh, %esi  # NOREX
	movq	%rdx, %r14
	callq	spputc
	movq	%r14, %rdx
.LBB0_216:                              # %cond.end.i.i.467
                                        #   in Loop: Header=BB0_203 Depth=3
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_218
# BB#217:                               # %cond.true.25.i.i.470
                                        #   in Loop: Header=BB0_203 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dl, 1(%rax)
	jmp	.LBB0_219
.LBB0_218:                              # %cond.false.36.i.i.473
                                        #   in Loop: Header=BB0_203 Depth=3
	movzbl	%dl, %esi
	callq	spputc
.LBB0_219:                              # %put_card16.exit.i.476
                                        #   in Loop: Header=BB0_203 Depth=3
	incq	%rbx
	cmpl	2752(%rsp), %ebx
	jb	.LBB0_203
.LBB0_220:                              # %cff_write_charset.exit
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, %r14
	movq	168(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r14d
	cmpl	160(%rsp), %r14d        # 4-byte Folded Reload
	ja	.LBB0_221
# BB#222:                               # %if.end.296
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	2768(%rsp), %rdi
	leaq	2312(%rsp), %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	%ebp, %ecx
	callq	cff_write_CharStrings
	movq	2776(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rcx
	callq	sputs
	testl	%eax, %eax
	jne	.LBB0_223
# BB#224:                               # %if.end.301
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	%r14, 208(%rsp)         # 8-byte Spill
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, %r14
	movl	%r14d, %r15d
	movq	168(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r15d
	cmpl	164(%rsp), %r15d        # 4-byte Folded Reload
	ja	.LBB0_225
# BB#226:                               # %if.end.309
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	152(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movl	156(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, %esi
	cmovel	%eax, %esi
	leaq	2768(%rsp), %rdi
	movq	216(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	cff_write_Private
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	2776(%rsp), %rdi
	callq	stell
	movq	%rax, %r12
	subl	%r14d, %r12d
	cmpl	%r13d, %r12d
	ja	.LBB0_227
# BB#228:                               # %if.end.331
                                        #   in Loop: Header=BB0_93 Depth=2
	cmpl	$2, 128(%rbx)
	je	.LBB0_236
# BB#229:                               # %land.rhs.i.485
                                        #   in Loop: Header=BB0_93 Depth=2
	testb	$2, 2768(%rsp)
	jne	.LBB0_230
.LBB0_236:                              # %if.else.335
                                        #   in Loop: Header=BB0_93 Depth=2
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	leaq	256(%rsp), %rbx
	je	.LBB0_238
# BB#237:                               # %if.then.338
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%r8d, %r8d
	leaq	2768(%rsp), %rdi
	movl	76(%rsp), %esi          # 4-byte Reload
	movl	152(%rsp), %edx         # 4-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	callq	cff_write_Subrs
	jmp	.LBB0_238
.LBB0_230:                              # %if.then.334
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_232
# BB#231:                               # %cond.true.i.492
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_233
.LBB0_232:                              # %cond.false.i.494
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB0_233:                              # %cond.end.i.496
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	leaq	256(%rsp), %rbx
	jae	.LBB0_235
# BB#234:                               # %cond.true.25.i.498
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB0_238
.LBB0_235:                              # %cond.false.36.i.500
                                        #   in Loop: Header=BB0_93 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB0_238:                              # %if.end.340
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	2776(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rcx
	callq	sputs
	testl	%eax, %eax
	jne	.LBB0_239
# BB#240:                               # %if.end.345
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	248(%rsp), %rax         # 8-byte Reload
	subl	%r14d, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	2776(%rsp), %rdi
	callq	stell
	movq	168(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	cmpl	116(%rsp), %eax         # 4-byte Folded Reload
	ja	.LBB0_241
# BB#242:                               # %if.end.353
                                        #   in Loop: Header=BB0_93 Depth=2
	movl	92(%rsp), %r13d         # 4-byte Reload
	jne	.LBB0_243
# BB#244:                               # %if.then.356
                                        #   in Loop: Header=BB0_93 Depth=2
	leaq	2376(%rsp), %rax
	cmpq	%rax, 2776(%rsp)
	jne	.LBB0_247
# BB#245:                               # %if.then.360
                                        #   in Loop: Header=BB0_93 Depth=2
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, 2776(%rsp)
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rcx
	callq	sputs
	testl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movl	%r15d, 164(%rsp)        # 4-byte Spill
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r14d
	je	.LBB0_93
# BB#246:
	movl	$-12, %ebp
	jmp	.LBB0_248
.LBB0_145:
	movl	$-12, %ebp
	jmp	.LBB0_248
.LBB0_147:
	movl	$-15, %ebp
	jmp	.LBB0_248
.LBB0_221:
	movl	$-15, %ebp
	jmp	.LBB0_248
.LBB0_223:
	movl	$-12, %ebp
	jmp	.LBB0_248
.LBB0_225:
	movl	$-15, %ebp
	jmp	.LBB0_248
.LBB0_227:
	movl	$-15, %ebp
	jmp	.LBB0_248
.LBB0_239:
	movl	$-12, %ebp
	jmp	.LBB0_248
.LBB0_241:
	movl	$-15, %ebp
	jmp	.LBB0_248
.LBB0_247:                              # %if.end.364
	movq	216(%rsp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movl	$.L.str, %edx
	movq	240(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	16(%rbx), %rdi
	movq	2736(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	xorl	%ebp, %ebp
	jmp	.LBB0_248
.LBB0_91:
	movl	$-12, %ebp
.LBB0_248:                              # %cleanup.374
	movl	%ebp, %eax
	addq	$3416, %rsp             # imm = 0xD58
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	psf_write_type2_font, .Lfunc_end0-psf_write_type2_font
	.cfi_endproc

	.align	16, 0x90
	.type	cff_string_index,@function
cff_string_index:                       # @cff_string_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	movl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %cond.false
	movzbl	(%r12), %eax
	imull	$23, %eax, %eax
	leal	-1(%r15), %ecx
	movzbl	(%r12,%rcx), %ecx
	imull	$59, %ecx, %ecx
	addl	%r15d, %eax
	addl	%ecx, %eax
.LBB1_2:                                # %while.cond.preheader
	movl	12(%rbx), %esi
	.align	16, 0x90
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cltd
	idivl	%esi
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	(%rbx), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %r13
	testq	%r13, %r13
	je	.LBB1_4
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	decq	%r13
	leaq	(%r13,%r13,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB1_6
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	20(%rbx), %eax
	addl	%ebp, %eax
	incl	%r14d
	movl	12(%rbx), %esi
	cmpl	%esi, %r14d
	jl	.LBB1_3
	jmp	.LBB1_8
.LBB1_4:
	movl	%ebp, %eax
.LBB1_8:                                # %while.end
	movl	$-21, %ecx
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB1_13
# BB#9:                                 # %if.end.27
	movl	8(%rbx), %edx
	movl	$-13, %ecx
	cmpl	%esi, %edx
	jge	.LBB1_13
# BB#10:                                # %cff_string_add.exit
	movslq	%edx, %rdi
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbx)
	movq	(%rbx), %rsi
	leaq	(%rdi,%rdi,2), %rdi
	movq	%r12, (%rsi,%rdi,8)
	movl	%r15d, 8(%rsi,%rdi,8)
	addl	%r15d, 16(%rbx)
	testl	%edx, %edx
	js	.LBB1_11
# BB#12:                                # %if.end.32
	cltq
	leaq	(%rax,%rax,2), %rax
	movl	%ecx, 16(%rsi,%rax,8)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%edx, (%rax)
	movl	$1, %ecx
	jmp	.LBB1_13
.LBB1_6:                                # %if.then
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%r13d, (%rax)
	xorl	%ecx, %ecx
	jmp	.LBB1_13
.LBB1_11:
	movl	%edx, %ecx
.LBB1_13:                               # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cff_string_index, .Lfunc_end1-cff_string_index
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_Top_font,@function
cff_write_Top_font:                     # @cff_write_Top_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 224
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %ebp
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	%edx, %r13d
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	%rdi, %rbx
	movq	16(%rbx), %r14
	movl	$1, 48(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 52(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 56(%rsp)
	movabsq	$219043331996, %rax     # imm = 0x32FFFFFF9C
	movq	%rax, 80(%rsp)
	leaq	8(%rsp), %r12
	xorl	%esi, %esi
	movl	$799200, %edx           # imm = 0xC31E0
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	*184(%r14)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	callq	cff_write_Top_common
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	cff_put_int
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	cff_put_int
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB2_2
# BB#1:                                 # %cond.true.50.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$18, 1(%rax)
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false.61.i.i
	movl	$18, %esi
	callq	spputc
.LBB2_3:                                # %cff_put_int_value.exit
	movq	%rbx, %rdi
	movl	(%rsp), %esi            # 4-byte Reload
	callq	cff_put_int
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB2_5
# BB#4:                                 # %cond.true.50.i.i.17
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$17, 1(%rax)
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.61.i.i.19
	movl	$17, %esi
	callq	spputc
.LBB2_6:                                # %cff_put_int_value.exit20
	testl	%r13d, %r13d
	je	.LBB2_10
# BB#7:                                 # %if.then.i
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	cff_put_int
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB2_9
# BB#8:                                 # %cond.true.50.i.i.24
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$15, 1(%rax)
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.61.i.i.26
	movl	$15, %esi
	callq	spputc
.LBB2_10:                               # %cff_put_int_if_ne.exit
	movl	4(%rsp), %esi           # 4-byte Reload
	testl	%esi, %esi
	je	.LBB2_14
# BB#11:                                # %if.then.i.29
	movq	%rbx, %rdi
	callq	cff_put_int
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB2_13
# BB#12:                                # %cond.true.50.i.i.34
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$16, 1(%rax)
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.61.i.i.36
	movl	$16, %esi
	callq	spputc
.LBB2_14:                               # %cff_put_int_if_ne.exit30
	testb	$2, (%rbx)
	jne	.LBB2_22
# BB#15:                                # %cond.false
	cmpl	$2, 128(%r14)
	je	.LBB2_22
# BB#16:                                # %if.then.i.39
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	cff_put_int
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB2_18
# BB#17:                                # %cond.true.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false.i.i
	movl	$12, %esi
	callq	spputc
.LBB2_19:                               # %cond.end.i.i
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB2_21
# BB#20:                                # %cond.true.23.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$6, 1(%rax)
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false.33.i.i
	movl	$6, %esi
	callq	spputc
.LBB2_22:                               # %cff_put_int_if_ne.exit40
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cff_write_Top_font, .Lfunc_end2-cff_write_Top_font
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_Subrs_offsets,@function
cff_write_Subrs_offsets:                # @cff_write_Subrs_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 128
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r13
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	testb	$1, (%r12)
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	je	.LBB3_2
# BB#1:                                 # %cond.true.i
	movl	512(%r13), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
.LBB3_2:                                # %cff_extra_lenIV.exit
	movq	16(%r13), %rax
	movq	%rax, 64(%rsp)
	leaq	24(%rsp), %rcx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	*456(%r13)
	movl	$1, %ebx
	cmpl	$-15, %eax
	je	.LBB3_8
# BB#3:                                 # %for.body.lr.ph
	movl	$1, %ebx
	leaq	24(%rsp), %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	32(%rsp), %eax
	subl	20(%rsp), %eax          # 4-byte Folded Reload
	movl	$0, %ecx
	cmovbl	%ecx, %eax
	addl	%eax, %ebx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	put_offset
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	gs_glyph_data_free
	jmp	.LBB3_7
	.align	16, 0x90
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	put_offset
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	incl	%ebp
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*456(%r13)
	cmpl	$-15, %eax
	jne	.LBB3_4
.LBB3_8:                                # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%ebp, (%rax)
	decl	%ebx
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cff_write_Subrs_offsets, .Lfunc_end3-cff_write_Subrs_offsets
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_CharStrings_offsets,@function
cff_write_CharStrings_offsets:          # @cff_write_CharStrings_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp58:
	.cfi_def_cfa_offset 512
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	16(%rbx), %r15
	xorl	%r14d, %r14d
	leaq	96(%rsp), %rdi
	xorl	%esi, %esi
	callq	s_init
	movq	%rbp, %rdi
	callq	psf_enumerate_glyphs_reset
	movq	$2147483647, 448(%rsp)  # imm = 0x7FFFFFFF
	leaq	448(%rsp), %rsi
	movq	%rbp, %rdi
	callq	psf_enumerate_glyphs_next
	movl	$1, %ebp
	cmpl	$1, %eax
	je	.LBB4_23
# BB#1:                                 # %for.body.lr.ph
	movl	$1, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	movq	16(%r15), %rcx
	movq	%rcx, 88(%rsp)
	testl	%eax, %eax
	je	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_2 Depth=1
	movq	%r15, %r12
	jmp	.LBB4_16
	.align	16, 0x90
.LBB4_4:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	448(%rsp), %rsi
	movq	%r15, %rdi
	leaq	48(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	*24(%rbx)
	testl	%eax, %eax
	js	.LBB4_5
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	56(%rsp), %eax
	movl	(%rbx), %edx
	xorl	%ecx, %ecx
	testb	$1, %dl
	je	.LBB4_8
# BB#7:                                 # %cond.true.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rsp), %rcx
	movl	512(%rcx), %ecx
	testl	%ecx, %ecx
	movl	$0, %esi
	cmovsl	%esi, %ecx
.LBB4_8:                                # %cff_extra_lenIV.exit
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	%ecx, %eax
	jae	.LBB4_10
# BB#9:                                 #   in Loop: Header=BB4_2 Depth=1
	movq	%r15, %r12
	jmp	.LBB4_15
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%r15, %r12
	jmp	.LBB4_16
.LBB4_10:                               # %if.then.8
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rsp), %rsi
	cmpl	$2, 128(%rsi)
	je	.LBB4_14
# BB#11:                                # %if.then.8
                                        #   in Loop: Header=BB4_2 Depth=1
	andl	$2, %edx
	je	.LBB4_14
# BB#12:                                # %if.then.10
                                        #   in Loop: Header=BB4_2 Depth=1
	leaq	96(%rsp), %r12
	movq	%r12, %rdi
	callq	swrite_position_only
	movq	40(%rsp), %rdx
	movq	%r12, %rdi
	leaq	48(%rsp), %rsi
	callq	psf_convert_type1_to_type2
	testl	%eax, %eax
	js	.LBB4_25
# BB#13:                                # %if.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	%r12, %rdi
	movq	%r15, %r12
	callq	stell
	addl	%ebp, %eax
	movl	%eax, %ebp
	jmp	.LBB4_15
.LBB4_14:                               # %if.else
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	%r15, %r12
	subl	%ecx, %ebp
	addl	%eax, %ebp
.LBB4_15:                               # %cleanup.thread
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$.L.str.3, %esi
	leaq	48(%rsp), %rdi
	callq	gs_glyph_data_free
.LBB4_16:                               # %if.end.21
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rbx), %rax
	movl	%eax, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	addl	%edx, %ecx
	js	.LBB4_22
# BB#17:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leal	(%rax,%rcx), %r13d
	shll	$3, %r13d
	leal	1(%rax,%rcx), %r15d
	.align	16, 0x90
.LBB4_18:                               # %for.body.i
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB4_20
# BB#19:                                # %cond.true.i.23
                                        #   in Loop: Header=BB4_18 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%ebp, %edx
	movb	%r13b, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB4_21
	.align	16, 0x90
.LBB4_20:                               # %cond.false.i
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	%ebp, %eax
	movb	%r13b, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB4_21:                               # %for.inc.i
                                        #   in Loop: Header=BB4_18 Depth=2
	addl	$-8, %r13d
	decl	%r15d
	testl	%r15d, %r15d
	jg	.LBB4_18
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	%r14d
	movq	32(%rsp), %rdi          # 8-byte Reload
	leaq	448(%rsp), %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	movq	%r12, %r15
	jne	.LBB4_2
.LBB4_23:                               # %for.end
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%r14d, (%rax)
	decl	%ebp
.LBB4_24:                               # %cleanup.28
	movl	%ebp, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_25:                               # %cleanup.22
	movl	%eax, %ebp
	jmp	.LBB4_24
.Lfunc_end4:
	.size	cff_write_CharStrings_offsets, .Lfunc_end4-cff_write_CharStrings_offsets
	.cfi_endproc

	.align	16, 0x90
	.type	put_offset,@function
put_offset:                             # @put_offset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 48
.Ltmp70:
	.cfi_offset %rbx, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	32(%r15), %rcx
	movl	%ecx, %edx
	decl	%edx
	js	.LBB5_6
# BB#1:                                 # %for.body.lr.ph
	leal	(%rcx,%rax), %ebp
	leal	1(%rcx,%rax), %ebx
	shll	$3, %ebp
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB5_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r14d, %edx
	movb	%bpl, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB5_5
	.align	16, 0x90
.LBB5_4:                                # %cond.false
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r14d, %eax
	movb	%bpl, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	decl	%ebx
	addl	$-8, %ebp
	testl	%ebx, %ebx
	jg	.LBB5_2
.LBB5_6:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	put_offset, .Lfunc_end5-put_offset
	.cfi_endproc

	.align	16, 0x90
	.type	cff_put_Index,@function
cff_put_Index:                          # @cff_put_Index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 64
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	8(%r14), %edx
	testl	%edx, %edx
	je	.LBB6_1
# BB#7:                                 # %if.end
	movl	16(%r14), %ebx
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB6_9
# BB#8:                                 # %cond.true.i.40
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB6_10
.LBB6_1:                                # %if.then
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB6_3
# BB#2:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB6_4
.LBB6_9:                                # %cond.false.i.42
	movzbl	%dh, %esi  # NOREX
	movl	%edx, %ebp
	callq	spputc
	movl	%ebp, %edx
.LBB6_10:                               # %cond.end.i.44
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB6_12
# BB#11:                                # %cond.true.25.i.46
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dl, 1(%rax)
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false.36.i.48
	movzbl	%dl, %esi
	callq	spputc
.LBB6_13:                               # %if.then.i
	incl	%ebx
	movl	$1, %eax
	cmpl	$256, %ebx              # imm = 0x100
	jb	.LBB6_15
	.align	16, 0x90
.LBB6_14:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	shrl	$8, %ecx
	incl	%eax
	cmpl	$65535, %ebx            # imm = 0xFFFF
	movl	%ecx, %ebx
	ja	.LBB6_14
.LBB6_15:                               # %offset_size.exit.i
	movslq	%eax, %rcx
	movq	%rcx, 32(%r13)
	movq	8(%r13), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB6_17
# BB#16:                                # %cond.true.i.22
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB6_18
.LBB6_17:                               # %cond.false.i.23
	movzbl	%al, %esi
	callq	spputc
.LBB6_18:                               # %cond.end.i.24
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	movq	32(%r13), %rax
	movl	%eax, %ecx
	decl	%ecx
	js	.LBB6_24
# BB#19:                                # %for.body.i.58.preheader
	leal	(%rax,%r15), %ebp
	shll	$3, %ebp
	leal	1(%rax,%r15), %ebx
	.align	16, 0x90
.LBB6_20:                               # %for.body.i.58
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB6_22
# BB#21:                                # %cond.true.i.63
                                        #   in Loop: Header=BB6_20 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%bpl, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB6_23
	.align	16, 0x90
.LBB6_22:                               # %cond.false.i.68
                                        #   in Loop: Header=BB6_20 Depth=1
	movl	$1, %eax
	movb	%bpl, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB6_23:                               # %for.inc.i.71
                                        #   in Loop: Header=BB6_20 Depth=1
	addl	$-8, %ebp
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB6_20
.LBB6_24:                               # %for.cond.preheader
	movl	8(%r14), %eax
	testl	%eax, %eax
	je	.LBB6_33
# BB#25:                                # %for.body.lr.ph
	xorl	%r12d, %r12d
	movl	$1, %ebx
	.align	16, 0x90
.LBB6_26:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
	movl	%r12d, %ecx
	movq	(%r14), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	addl	8(%rdx,%rcx,8), %ebx
	movq	32(%r13), %rcx
	movl	%ecx, %edx
	addl	%r15d, %edx
	js	.LBB6_37
# BB#27:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB6_26 Depth=1
	leal	(%rcx,%r15), %ebp
	shll	$3, %ebp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leal	1(%rcx,%rax), %r15d
	.align	16, 0x90
.LBB6_28:                               # %for.body.i
                                        #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB6_34
# BB#29:                                # %cond.true.i.30
                                        #   in Loop: Header=BB6_28 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%ebx, %edx
	movb	%bpl, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB6_35
	.align	16, 0x90
.LBB6_34:                               # %cond.false.i.32
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	%ebx, %eax
	movb	%bpl, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB6_35:                               # %for.inc.i
                                        #   in Loop: Header=BB6_28 Depth=2
	addl	$-8, %ebp
	decl	%r15d
	testl	%r15d, %r15d
	jg	.LBB6_28
# BB#36:                                # %put_offset.exit.loopexit
                                        #   in Loop: Header=BB6_26 Depth=1
	movl	8(%r14), %eax
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
.LBB6_37:                               # %put_offset.exit
                                        #   in Loop: Header=BB6_26 Depth=1
	incl	%r12d
	cmpl	%eax, %r12d
	jb	.LBB6_26
# BB#30:                                # %for.cond.4.preheader
	testl	%eax, %eax
	je	.LBB6_33
# BB#31:                                # %for.body.7.lr.ph
	xorl	%ebx, %ebx
	leaq	4(%rsp), %rbp
	.align	16, 0x90
.LBB6_32:                               # %for.body.7
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rdi
	movl	%ebx, %eax
	movq	(%r14), %rcx
	leaq	(%rax,%rax,2), %rax
	movq	(%rcx,%rax,8), %rsi
	movl	8(%rcx,%rax,8), %edx
	movq	%rbp, %rcx
	callq	sputs
	incl	%ebx
	cmpl	8(%r14), %ebx
	jb	.LBB6_32
	jmp	.LBB6_33
.LBB6_3:                                # %cond.false.i
	xorl	%esi, %esi
	callq	spputc
.LBB6_4:                                # %cond.end.i
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB6_6
# BB#5:                                 # %cond.true.25.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
.LBB6_33:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_6:                                # %cond.false.36.i
	xorl	%esi, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end6:
	.size	cff_put_Index, .Lfunc_end6-cff_put_Index
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_Subrs,@function
cff_write_Subrs:                        # @cff_write_Subrs
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
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 112
.Ltmp93:
	.cfi_offset %rbx, -48
.Ltmp94:
	.cfi_offset %r12, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, %r12
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	%rdi, %r15
	movq	16(%r12), %rax
	movq	%rax, 48(%rsp)
	movq	8(%r15), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB7_2
# BB#1:                                 # %cond.true.i.15
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false.i.16
	movzbl	%bh, %esi  # NOREX
	callq	spputc
.LBB7_3:                                # %cond.end.i.17
	movq	8(%r15), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB7_5
# BB#4:                                 # %cond.true.25.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bl, 1(%rax)
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.36.i
	movzbl	%bl, %esi
	callq	spputc
.LBB7_6:                                # %put_card16.exit
	testl	%ebx, %ebx
	je	.LBB7_18
# BB#7:                                 # %if.then.i
	incl	%ebp
	movl	$1, %eax
	cmpl	$256, %ebp              # imm = 0x100
	jb	.LBB7_9
	.align	16, 0x90
.LBB7_8:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	shrl	$8, %ecx
	incl	%eax
	cmpl	$65535, %ebp            # imm = 0xFFFF
	movl	%ecx, %ebp
	ja	.LBB7_8
.LBB7_9:                                # %offset_size.exit.i
	movslq	%eax, %rcx
	movq	%rcx, 32(%r15)
	movq	8(%r15), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB7_11
# BB#10:                                # %cond.true.i
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB7_12
.LBB7_11:                               # %cond.false.i
	movzbl	%al, %esi
	callq	spputc
.LBB7_12:                               # %cond.end.i
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	32(%r15), %rcx
	movl	%ecx, %edx
	decl	%edx
	js	.LBB7_18
# BB#13:                                # %for.body.i.preheader
	leal	(%rcx,%rax), %ebp
	shll	$3, %ebp
	leal	1(%rcx,%rax), %ebx
	.align	16, 0x90
.LBB7_14:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB7_16
# BB#15:                                # %cond.true.i.24
                                        #   in Loop: Header=BB7_14 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%bpl, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB7_17
	.align	16, 0x90
.LBB7_16:                               # %cond.false.i.26
                                        #   in Loop: Header=BB7_14 Depth=1
	movl	$1, %eax
	movb	%bpl, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB7_17:                               # %for.inc.i
                                        #   in Loop: Header=BB7_14 Depth=1
	addl	$-8, %ebp
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB7_14
.LBB7_18:                               # %cff_put_Index_header.exit
	leaq	60(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	cff_write_Subrs_offsets
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	*456(%r12)
	cmpl	$-15, %eax
	je	.LBB7_23
# BB#19:                                # %for.body.lr.ph
	movl	$1, %ebp
	leaq	8(%rsp), %rbx
	.align	16, 0x90
.LBB7_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB7_22
# BB#21:                                # %if.then
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	cff_put_CharString
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	gs_glyph_data_free
.LBB7_22:                               # %for.inc
                                        #   in Loop: Header=BB7_20 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	callq	*456(%r12)
	incl	%ebp
	cmpl	$-15, %eax
	jne	.LBB7_20
.LBB7_23:                               # %for.end
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cff_write_Subrs, .Lfunc_end7-cff_write_Subrs
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_CharStrings,@function
cff_write_CharStrings:                  # @cff_write_CharStrings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 128
.Ltmp105:
	.cfi_offset %rbx, -56
.Ltmp106:
	.cfi_offset %r12, -48
.Ltmp107:
	.cfi_offset %r13, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	16(%r12), %r15
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB8_2
# BB#1:                                 # %cond.true.i.14
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false.i.15
	movzbl	%bh, %esi  # NOREX
	callq	spputc
.LBB8_3:                                # %cond.end.i.16
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB8_5
# BB#4:                                 # %cond.true.25.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bl, 1(%rax)
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false.36.i
	movzbl	%bl, %esi
	callq	spputc
.LBB8_6:                                # %put_card16.exit
	testl	%ebx, %ebx
	je	.LBB8_18
# BB#7:                                 # %if.then.i
	incl	%ebp
	movl	$1, %eax
	cmpl	$256, %ebp              # imm = 0x100
	jb	.LBB8_9
	.align	16, 0x90
.LBB8_8:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	shrl	$8, %ecx
	incl	%eax
	cmpl	$65535, %ebp            # imm = 0xFFFF
	movl	%ecx, %ebp
	ja	.LBB8_8
.LBB8_9:                                # %offset_size.exit.i
	movslq	%eax, %rcx
	movq	%rcx, 32(%r12)
	movq	8(%r12), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB8_11
# BB#10:                                # %cond.true.i
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false.i
	movzbl	%al, %esi
	callq	spputc
.LBB8_12:                               # %cond.end.i
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	32(%r12), %rcx
	movl	%ecx, %edx
	decl	%edx
	js	.LBB8_18
# BB#13:                                # %for.body.i.preheader
	leal	(%rcx,%rax), %ebp
	shll	$3, %ebp
	leal	1(%rcx,%rax), %ebx
	.align	16, 0x90
.LBB8_14:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB8_16
# BB#15:                                # %cond.true.i.23
                                        #   in Loop: Header=BB8_14 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%bpl, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB8_17
	.align	16, 0x90
.LBB8_16:                               # %cond.false.i.25
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	$1, %eax
	movb	%bpl, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB8_17:                               # %for.inc.i
                                        #   in Loop: Header=BB8_14 Depth=1
	addl	$-8, %ebp
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB8_14
.LBB8_18:                               # %cff_put_Index_header.exit
	leaq	68(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	cff_write_CharStrings_offsets
	movq	%r14, %rdi
	callq	psf_enumerate_glyphs_reset
	movq	$2147483647, 56(%rsp)   # imm = 0x7FFFFFFF
	leaq	56(%rsp), %rsi
	movq	%r14, %rdi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	je	.LBB8_24
# BB#19:                                # %for.body.lr.ph
	leaq	8(%rsp), %r13
	leaq	(%rsp), %rbx
	leaq	56(%rsp), %rbp
	.align	16, 0x90
.LBB8_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rcx
	movq	%rcx, 48(%rsp)
	testl	%eax, %eax
	jne	.LBB8_23
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	56(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	*24(%r12)
	testl	%eax, %eax
	js	.LBB8_23
# BB#22:                                # %if.then
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	movq	(%rsp), %rcx
	movq	%r12, %rdi
	callq	cff_put_CharString
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	callq	gs_glyph_data_free
.LBB8_23:                               # %if.end
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	jne	.LBB8_20
.LBB8_24:                               # %for.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cff_write_CharStrings, .Lfunc_end8-cff_write_CharStrings
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4571153621781053440     # double 0.00390625
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_1:
	.long	1025658323              # float 0.0396250002
.LCPI9_2:
	.long	1088421888              # float 7
.LCPI9_3:
	.long	1031127695              # float 0.0599999987
	.text
	.align	16, 0x90
	.type	cff_write_Private,@function
cff_write_Private:                      # @cff_write_Private
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 64
.Ltmp117:
	.cfi_offset %rbx, -48
.Ltmp118:
	.cfi_offset %r12, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	movl	556(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_6
# BB#1:                                 # %for.body.i.preheader
	leaq	560(%r14), %rbx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	addq	$4, %rbx
	decl	%ebp
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jne	.LBB9_2
# BB#3:                                 # %for.end.i
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_5
# BB#4:                                 # %cond.true.50.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$6, 1(%rax)
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.61.i
	movl	$6, %esi
	callq	spputc
.LBB9_6:                                # %cff_put_real_deltarray.exit
	movl	732(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_12
# BB#7:                                 # %for.body.i.59.preheader
	leaq	736(%r14), %rbx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_8:                                # %for.body.i.59
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	addq	$4, %rbx
	decl	%ebp
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jne	.LBB9_8
# BB#9:                                 # %for.end.i.60
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_11
# BB#10:                                # %cond.true.50.i.65
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$7, 1(%rax)
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false.61.i.67
	movl	$7, %esi
	callq	spputc
.LBB9_12:                               # %cff_put_real_deltarray.exit61
	movl	624(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_18
# BB#13:                                # %for.body.i.78.preheader
	leaq	628(%r14), %rbx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_14:                               # %for.body.i.78
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	addq	$4, %rbx
	decl	%ebp
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jne	.LBB9_14
# BB#15:                                # %for.end.i.79
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_17
# BB#16:                                # %cond.true.50.i.84
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$8, 1(%rax)
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.61.i.86
	movl	$8, %esi
	callq	spputc
.LBB9_18:                               # %cff_put_real_deltarray.exit80
	movl	684(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_24
# BB#19:                                # %for.body.i.97.preheader
	leaq	688(%r14), %rbx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_20:                               # %for.body.i.97
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	addq	$4, %rbx
	decl	%ebp
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jne	.LBB9_20
# BB#21:                                # %for.end.i.98
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_23
# BB#22:                                # %cond.true.50.i.103
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$9, 1(%rax)
	jmp	.LBB9_24
.LBB9_23:                               # %cond.false.61.i.105
	movl	$9, %esi
	callq	spputc
.LBB9_24:                               # %cff_put_real_deltarray.exit99
	cmpl	$0, 780(%r14)
	jle	.LBB9_28
# BB#25:                                # %if.then
	movss	784(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_27
# BB#26:                                # %cond.true.50.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$10, 1(%rax)
	jmp	.LBB9_28
.LBB9_27:                               # %cond.false.61.i.i
	movl	$10, %esi
	callq	spputc
.LBB9_28:                               # %if.end
	cmpl	$0, 788(%r14)
	jle	.LBB9_32
# BB#29:                                # %if.then.30
	movss	792(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_31
# BB#30:                                # %cond.true.50.i.i.110
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$11, 1(%rax)
	jmp	.LBB9_32
.LBB9_31:                               # %cond.false.61.i.i.112
	movl	$11, %esi
	callq	spputc
.LBB9_32:                               # %if.end.36
	testl	%r15d, %r15d
	je	.LBB9_36
# BB#33:                                # %if.then.37
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_35
# BB#34:                                # %cond.true.50.i.i.117
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$19, 1(%rax)
	jmp	.LBB9_36
.LBB9_35:                               # %cond.false.61.i.i.119
	movl	$19, %esi
	callq	spputc
.LBB9_36:                               # %if.end.38
	cmpl	$1, 128(%r14)
	je	.LBB9_52
# BB#37:                                # %if.then.41
	movl	536(%r14), %eax
	testl	%eax, %eax
	je	.LBB9_41
# BB#38:                                # %if.then.46
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI9_0(%rip), %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_40
# BB#39:                                # %cond.true.50.i.i.123
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$20, 1(%rax)
	jmp	.LBB9_41
.LBB9_40:                               # %cond.false.61.i.i.125
	movl	$20, %esi
	callq	spputc
.LBB9_41:                               # %if.end.50
	movl	540(%r14), %eax
	testl	%eax, %eax
	je	.LBB9_45
# BB#42:                                # %if.then.55
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI9_0(%rip), %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_44
# BB#43:                                # %cond.true.50.i.i.130
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$21, 1(%rax)
	jmp	.LBB9_45
.LBB9_44:                               # %cond.false.61.i.i.132
	movl	$21, %esi
	callq	spputc
.LBB9_45:                               # %if.end.60
	movl	528(%r14), %esi
	testl	%esi, %esi
	je	.LBB9_52
# BB#46:                                # %if.then.i
	movq	%r12, %rdi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_48
# BB#47:                                # %cond.true.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_49
.LBB9_48:                               # %cond.false.i.i
	movl	$12, %esi
	callq	spputc
.LBB9_49:                               # %cond.end.i.i
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_51
# BB#50:                                # %cond.true.23.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$19, 1(%rax)
	jmp	.LBB9_52
.LBB9_51:                               # %cond.false.33.i.i
	movl	$19, %esi
	callq	spputc
.LBB9_52:                               # %if.end.63
	movss	548(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI9_1(%rip), %xmm0
	jne	.LBB9_53
	jnp	.LBB9_59
.LBB9_53:                               # %if.then.i.140
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_55
# BB#54:                                # %cond.true.i.i.144
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_56
.LBB9_55:                               # %cond.false.i.i.146
	movl	$12, %esi
	callq	spputc
.LBB9_56:                               # %cond.end.i.i.148
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_58
# BB#57:                                # %cond.true.23.i.i.150
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$9, 1(%rax)
	jmp	.LBB9_59
.LBB9_58:                               # %cond.false.33.i.i.152
	movl	$9, %esi
	callq	spputc
.LBB9_59:                               # %cff_put_real_if_ne.exit
	movss	552(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI9_2(%rip), %xmm0
	jne	.LBB9_60
	jnp	.LBB9_66
.LBB9_60:                               # %if.then.i.156
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_62
# BB#61:                                # %cond.true.i.i.161
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_63
.LBB9_62:                               # %cond.false.i.i.163
	movl	$12, %esi
	callq	spputc
.LBB9_63:                               # %cond.end.i.i.165
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_65
# BB#64:                                # %cond.true.23.i.i.167
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$10, 1(%rax)
	jmp	.LBB9_66
.LBB9_65:                               # %cond.false.33.i.i.169
	movl	$10, %esi
	callq	spputc
.LBB9_66:                               # %cff_put_real_if_ne.exit157
	movl	544(%r14), %esi
	cmpl	$1, %esi
	je	.LBB9_73
# BB#67:                                # %if.then.i.172
	movq	%r12, %rdi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_69
# BB#68:                                # %cond.true.i.i.177
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_70
.LBB9_69:                               # %cond.false.i.i.179
	movl	$12, %esi
	callq	spputc
.LBB9_70:                               # %cond.end.i.i.181
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_72
# BB#71:                                # %cond.true.23.i.i.183
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$11, 1(%rax)
	jmp	.LBB9_73
.LBB9_72:                               # %cond.false.33.i.i.185
	movl	$11, %esi
	callq	spputc
.LBB9_73:                               # %cff_put_int_if_ne.exit173
	movl	796(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_82
# BB#74:                                # %for.body.i.196.preheader
	leaq	800(%r14), %rbx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_75:                               # %for.body.i.196
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	addq	$4, %rbx
	decl	%ebp
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jne	.LBB9_75
# BB#76:                                # %for.end.i.197
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_78
# BB#77:                                # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_79
.LBB9_78:                               # %cond.false.i
	movl	$12, %esi
	callq	spputc
.LBB9_79:                               # %cond.end.i
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_81
# BB#80:                                # %cond.true.23.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_82
.LBB9_81:                               # %cond.false.33.i
	movl	$12, %esi
	callq	spputc
.LBB9_82:                               # %cff_put_real_deltarray.exit198
	movl	848(%r14), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_91
# BB#83:                                # %for.body.i.212.preheader
	leaq	852(%r14), %rbx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_84:                               # %for.body.i.212
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	addq	$4, %rbx
	decl	%ebp
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jne	.LBB9_84
# BB#85:                                # %for.end.i.213
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_87
# BB#86:                                # %cond.true.i.219
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_88
.LBB9_87:                               # %cond.false.i.221
	movl	$12, %esi
	callq	spputc
.LBB9_88:                               # %cond.end.i.223
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_90
# BB#89:                                # %cond.true.23.i.225
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$13, 1(%rax)
	jmp	.LBB9_91
.LBB9_90:                               # %cond.false.33.i.227
	movl	$13, %esi
	callq	spputc
.LBB9_91:                               # %cff_put_real_deltarray.exit214
	cmpl	$0, 620(%r14)
	je	.LBB9_98
# BB#92:                                # %if.then.84
	movl	$1, %esi
	movq	%r12, %rdi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_94
# BB#93:                                # %cond.true.i.i.232
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_95
.LBB9_94:                               # %cond.false.i.i.234
	movl	$12, %esi
	callq	spputc
.LBB9_95:                               # %cond.end.i.i.236
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_97
# BB#96:                                # %cond.true.23.i.i.238
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$14, 1(%rax)
	jmp	.LBB9_98
.LBB9_97:                               # %cond.false.33.i.i.240
	movl	$14, %esi
	callq	spputc
.LBB9_98:                               # %if.end.87
	testb	$1, (%r12)
	jne	.LBB9_106
# BB#99:                                # %if.then.89
	movl	512(%r14), %esi
	cmpl	$-1, %esi
	je	.LBB9_106
# BB#100:                               # %if.then.i.242
	movq	%r12, %rdi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_102
# BB#101:                               # %cond.true.i.i.247
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_103
.LBB9_102:                              # %cond.false.i.i.249
	movl	$12, %esi
	callq	spputc
.LBB9_103:                              # %cond.end.i.i.251
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_105
# BB#104:                               # %cond.true.23.i.i.253
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$16, 1(%rax)
	jmp	.LBB9_106
.LBB9_105:                              # %cond.false.33.i.i.255
	movl	$16, %esi
	callq	spputc
.LBB9_106:                              # %if.end.91
	movl	728(%r14), %esi
	testl	%esi, %esi
	je	.LBB9_113
# BB#107:                               # %if.then.i.258
	movq	%r12, %rdi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_109
# BB#108:                               # %cond.true.i.i.263
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_110
.LBB9_109:                              # %cond.false.i.i.265
	movl	$12, %esi
	callq	spputc
.LBB9_110:                              # %cond.end.i.i.267
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_112
# BB#111:                               # %cond.true.23.i.i.269
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$17, 1(%rax)
	jmp	.LBB9_113
.LBB9_112:                              # %cond.false.33.i.i.271
	movl	$17, %esi
	callq	spputc
.LBB9_113:                              # %cff_put_int_if_ne.exit259
	movss	616(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI9_3(%rip), %xmm0
	jne	.LBB9_114
	jnp	.LBB9_119
.LBB9_114:                              # %if.then.i.275
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cff_put_real
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_116
# BB#115:                               # %cond.true.i.i.280
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB9_117
.LBB9_116:                              # %cond.false.i.i.282
	movl	$12, %esi
	callq	spputc
.LBB9_117:                              # %cond.end.i.i.284
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB9_120
# BB#118:                               # %cond.true.23.i.i.286
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$18, 1(%rax)
.LBB9_119:                              # %cff_put_real_if_ne.exit276
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_120:                              # %cond.false.33.i.i.288
	movl	$18, %esi
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end9:
	.size	cff_write_Private, .Lfunc_end9-cff_write_Private
	.cfi_endproc

	.globl	psf_write_cid0_font
	.align	16, 0x90
	.type	psf_write_cid0_font,@function
psf_write_cid0_font:                    # @psf_write_cid0_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	subq	$31128, %rsp            # imm = 0x7998
.Ltmp128:
	.cfi_def_cfa_offset 31184
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %ebx
	movq	%rcx, %rbp
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%rdi, 240(%rsp)         # 8-byte Spill
	movslq	520(%r12), %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	leaq	448(%rsp), %r15
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	psf_enumerate_bits_begin
	movl	$cid0_glyph_data, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	psf_check_outline_glyphs
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB10_40
# BB#1:                                 # %if.end
	testq	%rbp, %rbp
	je	.LBB10_4
# BB#2:                                 # %if.end
	testl	%ebx, %ebx
	je	.LBB10_4
# BB#3:                                 # %land.lhs.true.2
	movl	$-15, %ecx
	cmpb	$0, (%rbp)
	jns	.LBB10_40
.LBB10_4:                               # %if.end.5
	movl	%r13d, 31000(%rsp)
	leaq	5680(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	%rbx, 31008(%rsp)
	movq	%r12, 31016(%rsp)
	movq	$cid0_glyph_data, 31024(%rsp)
	movq	$1, 31032(%rsp)
	movq	240(%rsp), %rdi         # 8-byte Reload
	callq	stell
	movq	%rax, 31040(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 31096(%rsp)
	testq	%r14, %r14
	je	.LBB10_6
# BB#5:                                 # %if.then.18
	movq	%r12, %r15
	movq	(%r14), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	8(%r14), %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	280(%rsp), %r14         # 8-byte Reload
	jmp	.LBB10_10
.LBB10_6:                               # %if.else
	movl	372(%r12), %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movq	280(%rsp), %r14         # 8-byte Reload
	je	.LBB10_8
# BB#7:                                 # %if.then.21
	leaq	324(%r12), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.26
	leaq	272(%r12), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	320(%r12), %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
.LBB10_9:                               # %if.end.34
	movq	%r12, %r15
.LBB10_10:                              # %if.end.34
	leaq	18992(%rsp), %rbx
	xorl	%esi, %esi
	movl	$12000, %edx            # imm = 0x2EE0
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, 31048(%rsp)
	movabsq	$2147483648000, %rax    # imm = 0x1F400000000
	movq	%rax, 31056(%rsp)
	movl	$17, %ebx
	.align	16, 0x90
.LBB10_11:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$500, %edi              # imm = 0x1F4
	movl	%ebx, %esi
	callq	igcd
	cmpl	$1, %eax
	je	.LBB10_12
# BB#13:                                # %while.body.i
                                        #   in Loop: Header=BB10_11 Depth=1
	leal	1(%rbx,%rbx), %eax
	movslq	%eax, %rbx
	imulq	$274877907, %rbx, %rax  # imm = 0x10624DD3
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$500, %eax, %eax        # imm = 0x1F4
	subl	%eax, %ebx
	movl	$1, %eax
	cmpl	$1, %ebx
	jne	.LBB10_11
	jmp	.LBB10_14
.LBB10_12:
	movl	%ebx, %eax
.LBB10_14:                              # %cff_string_table_init.exit
	movl	$0, 31064(%rsp)
	movl	%eax, 31068(%rsp)
	leaq	6032(%rsp), %rbx
	xorl	%esi, %esi
	movl	$12960, %edx            # imm = 0x32A0
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, 31072(%rsp)
	movabsq	$2319282339840, %rax    # imm = 0x21C00000000
	movq	%rax, 31080(%rsp)
	movl	$17, %ebx
	.align	16, 0x90
.LBB10_15:                              # %land.rhs.i.161
                                        # =>This Inner Loop Header: Depth=1
	movl	$540, %edi              # imm = 0x21C
	movl	%ebx, %esi
	callq	igcd
	cmpl	$1, %eax
	je	.LBB10_16
# BB#17:                                # %while.body.i.166
                                        #   in Loop: Header=BB10_15 Depth=1
	leal	1(%rbx,%rbx), %eax
	movslq	%eax, %rcx
	imulq	$-222702007, %rcx, %rax # imm = 0xFFFFFFFFF2B9D649
	shrq	$32, %rax
	leal	1(%rax,%rbx,2), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$540, %eax, %eax        # imm = 0x21C
	subl	%eax, %ecx
	movl	$1, %eax
	cmpl	$1, %ecx
	movl	%ecx, %ebx
	jne	.LBB10_15
	jmp	.LBB10_18
.LBB10_16:
	movl	%ebx, %eax
.LBB10_18:                              # %cff_string_table_init.exit170
	movl	$0, 31088(%rsp)
	movl	%eax, 31092(%rsp)
	leaq	448(%r15), %rsi
	leaq	31000(%rsp), %rdi
	callq	cff_write_ROS
	testl	%r14d, %r14d
	jle	.LBB10_21
# BB#19:                                # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	31000(%rsp), %rbx
	.align	16, 0x90
.LBB10_20:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	512(%r15), %rax
	movq	(%rax,%rbp,8), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	cff_write_Top_fdarray
	incq	%rbp
	cmpl	%ebp, %r14d
	jne	.LBB10_20
.LBB10_21:                              # %for.cond.42.preheader
	testl	%r14d, %r14d
	js	.LBB10_27
# BB#22:                                # %for.body.45.lr.ph
	movl	$2130706431, %eax       # imm = 0x7EFFFFFF
	xorl	%edx, %edx
	movq	256(%rsp), %rcx         # 8-byte Reload
	idivl	%ecx
	leal	1(%r14), %ecx
	xorl	%r8d, %r8d
	testb	$1, %cl
	je	.LBB10_24
# BB#23:                                # %for.body.45.prol
	movl	$16777216, 496(%rsp)    # imm = 0x1000000
	movl	$16777216, 1536(%rsp)   # imm = 0x1000000
	movl	$16777216, 2576(%rsp)   # imm = 0x1000000
	movl	$1, %r8d
.LBB10_24:                              # %for.body.45.lr.ph.split
	testl	%r14d, %r14d
	je	.LBB10_27
# BB#25:                                # %for.body.45.lr.ph.split.split
	movq	256(%rsp), %rcx         # 8-byte Reload
	leal	1(%rcx), %r9d
	subl	%r8d, %r9d
	leaq	4(,%r8,4), %rcx
	movq	%r8, %r10
	incq	%r10
	leaq	496(%rsp), %rdi
	orq	%rcx, %rdi
	leaq	1536(%rsp), %rbp
	orq	%rcx, %rbp
	leaq	2576(%rsp), %rbx
	orq	%rcx, %rbx
	imull	%eax, %r8d
	addl	$16777216, %r8d         # imm = 0x1000000
	imull	%eax, %r10d
	addl	%eax, %eax
	addl	$16777216, %r10d        # imm = 0x1000000
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB10_26:                              # %for.body.45
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r8,%rcx), %esi
	movl	%esi, -4(%rdi,%rdx,4)
	movl	%esi, -4(%rbp,%rdx,4)
	movl	%esi, -4(%rbx,%rdx,4)
	leal	(%r10,%rcx), %esi
	movl	%esi, (%rdi,%rdx,4)
	movl	%esi, (%rbp,%rdx,4)
	movl	%esi, (%rbx,%rdx,4)
	addq	$2, %rdx
	addl	%eax, %ecx
	cmpl	%edx, %r9d
	jne	.LBB10_26
.LBB10_27:                              # %for.end.54
	testb	$8, %r13b
	jne	.LBB10_30
# BB#28:                                # %lor.lhs.false
	movq	512(%r15), %rax
	movq	(%rax), %rcx
	cmpl	$2, 128(%rcx)
	je	.LBB10_31
# BB#29:                                # %land.rhs.i.172
	testb	$2, 31000(%rsp)
	jne	.LBB10_30
.LBB10_31:                              # %if.else.64
	movq	%r15, 272(%rsp)         # 8-byte Spill
	movq	%r14, 280(%rsp)         # 8-byte Spill
	movq	(%rax), %rdx
	leaq	31000(%rsp), %rdi
	leaq	5672(%rsp), %rsi
	movl	$1, %ecx
	callq	cff_write_Subrs_offsets
	jmp	.LBB10_32
.LBB10_30:                              # %if.then.63
	movq	%r15, 272(%rsp)         # 8-byte Spill
	movq	%r14, 280(%rsp)         # 8-byte Spill
	movl	$0, 5672(%rsp)
	xorl	%eax, %eax
.LBB10_32:                              # %if.end.69
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	5680(%rsp), %rbx
	movq	%rbx, %rdi
	callq	swrite_position_only
	leaq	31000(%rsp), %rdi
	leaq	448(%rsp), %rbp
	movq	%rbp, %rsi
	callq	cff_write_cidset
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	31016(%rsp), %rbx
	movq	%rbp, %rdi
	callq	psf_enumerate_glyphs_reset
	leaq	31120(%rsp), %rsi
	movq	%rbp, %rdi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	je	.LBB10_34
# BB#33:
	movl	%r13d, 188(%rsp)        # 4-byte Spill
	movl	$1, %r13d
	movl	$5, %r14d
	jmp	.LBB10_38
.LBB10_34:                              # %while.body.lr.ph.i
	movl	%r13d, 188(%rsp)        # 4-byte Spill
	movl	$-1, %r12d
	movl	$1, %r13d
	movl	$5, %r14d
	leaq	448(%rsp), %r15
	leaq	31120(%rsp), %rbp
	.align	16, 0x90
.LBB10_35:                              # %while.body.i.173
                                        # =>This Inner Loop Header: Depth=1
	movq	31120(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	leaq	31116(%rsp), %rcx
	callq	*528(%rbx)
	testl	%eax, %eax
	js	.LBB10_37
# BB#36:                                # %if.then.i
                                        #   in Loop: Header=BB10_35 Depth=1
	movl	31116(%rsp), %eax
	leal	3(%r14), %ecx
	cmpl	%r12d, %eax
	cmovel	%r14d, %ecx
	incl	%r13d
	movl	%eax, %r12d
	movl	%ecx, %r14d
.LBB10_37:                              # %if.end.6.i
                                        #   in Loop: Header=BB10_35 Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	je	.LBB10_35
.LBB10_38:                              # %cff_FDSelect_size.exit
	movq	%r14, 216(%rsp)         # 8-byte Spill
	movl	%r13d, 228(%rsp)        # 4-byte Spill
	cmpl	%r13d, %r14d
	cmovbl	%r14d, %r13d
	leaq	31000(%rsp), %rdi
	leaq	448(%rsp), %rsi
	leaq	5676(%rsp), %rdx
	callq	cff_write_CharStrings_offsets
	testl	%eax, %eax
	js	.LBB10_39
# BB#41:                                # %for.cond.79.preheader
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB10_47
# BB#42:                                # %for.body.82.preheader
	leaq	4640(%rsp), %rbx
	xorl	%ebp, %ebp
	leaq	31000(%rsp), %r14
	.align	16, 0x90
.LBB10_43:                              # %for.body.82
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rsp), %rax         # 8-byte Reload
	movq	512(%rax), %rax
	movq	(%rax,%rbp,8), %rdx
	cmpl	$2, 128(%rdx)
	je	.LBB10_45
# BB#44:                                # %land.rhs.i.182
                                        #   in Loop: Header=BB10_43 Depth=1
	xorl	%eax, %eax
	testb	$2, 31000(%rsp)
	jne	.LBB10_46
.LBB10_45:                              # %cond.false
                                        #   in Loop: Header=BB10_43 Depth=1
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	cff_write_Subrs_offsets
.LBB10_46:                              # %cond.end
                                        #   in Loop: Header=BB10_43 Depth=1
	movl	%eax, 3616(%rsp,%rbp,4)
	incq	%rbp
	addq	$4, %rbx
	movq	280(%rsp), %rax         # 8-byte Reload
	cmpl	%ebp, %eax
	jne	.LBB10_43
.LBB10_47:                              # %for.end.97
	movl	$1, 328(%rsp)
	movl	$0, 288(%rsp)
	movl	$0, 332(%rsp)
	movl	$0, 324(%rsp)
	movl	$0, 336(%rsp)
	movabsq	$219043331996, %rax     # imm = 0x32FFFFFF9C
	movq	%rax, 360(%rsp)
	leaq	288(%rsp), %rcx
	xorl	%esi, %esi
	movl	$799200, %edx           # imm = 0xC31E0
	movq	272(%rsp), %rdi         # 8-byte Reload
	callq	*184(%rdi)
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpl	228(%rsp), %eax         # 4-byte Folded Reload
	movl	5672(%rsp), %r14d
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movb	$3, %al
	movq	%rax, 144(%rsp)         # 8-byte Spill
	jb	.LBB10_49
# BB#48:                                # %for.end.97
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB10_49:                              # %for.end.97
	movq	232(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %r12d
	movl	%r12d, 268(%rsp)        # 4-byte Spill
	leal	10(%rax), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leal	-5(%r13), %eax
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movl	$2863311531, %ecx       # imm = 0xAAAAAAAB
	imulq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$33, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	shrq	$41, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	5676(%rsp), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	shrl	$8, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	leal	1(%r14), %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	leal	3(%rax), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 252(%rsp)         # 4-byte Spill
	movl	$8388607, %r13d         # imm = 0x7FFFFF
	movl	$33554431, 192(%rsp)    # 4-byte Folded Spill
                                        # imm = 0x1FFFFFF
	movl	$33554431, 132(%rsp)    # 4-byte Folded Spill
                                        # imm = 0x1FFFFFF
	jmp	.LBB10_50
.LBB10_39:
	movl	%eax, %ecx
	jmp	.LBB10_40
.LBB10_251:                             #   in Loop: Header=BB10_50 Depth=1
	movq	%r12, %r13
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	268(%rsp), %r12d        # 4-byte Reload
	.align	16, 0x90
.LBB10_50:                              # %iter
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_51 Depth 2
                                        #     Child Loop BB10_53 Depth 2
                                        #     Child Loop BB10_56 Depth 2
                                        #     Child Loop BB10_60 Depth 2
                                        #     Child Loop BB10_63 Depth 2
                                        #       Child Loop BB10_73 Depth 3
                                        #       Child Loop BB10_79 Depth 3
                                        #       Child Loop BB10_86 Depth 3
                                        #       Child Loop BB10_97 Depth 3
                                        #       Child Loop BB10_103 Depth 3
                                        #       Child Loop BB10_110 Depth 3
                                        #       Child Loop BB10_154 Depth 3
                                        #       Child Loop BB10_166 Depth 3
                                        #       Child Loop BB10_199 Depth 3
                                        #       Child Loop BB10_205 Depth 3
                                        #       Child Loop BB10_210 Depth 3
                                        #         Child Loop BB10_212 Depth 4
                                        #       Child Loop BB10_223 Depth 3
                                        #       Child Loop BB10_229 Depth 3
                                        #       Child Loop BB10_236 Depth 3
	leaq	5680(%rsp), %rbp
	movq	%rbp, %rdi
	callq	swrite_position_only
	movq	%rbp, 31008(%rsp)
	cmpl	$256, %r12d             # imm = 0x100
	movl	$1, %eax
	movl	%r12d, %ecx
	movl	%r12d, %ebp
	jb	.LBB10_52
	.align	16, 0x90
.LBB10_51:                              # %while.body.i.i
                                        #   Parent Loop BB10_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB10_51
.LBB10_52:                              # %cff_Index_size.exit
                                        #   in Loop: Header=BB10_50 Depth=1
	movq	%r13, %r12
	leal	1(%r12), %edx
	movl	$1, %ecx
	cmpl	$256, %edx              # imm = 0x100
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	jb	.LBB10_54
	.align	16, 0x90
.LBB10_53:                              # %while.body.i.i.194
                                        #   Parent Loop BB10_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %esi
	shrl	$8, %esi
	incl	%ecx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	%esi, %edx
	ja	.LBB10_53
.LBB10_54:                              # %cff_Index_size.exit199
                                        #   in Loop: Header=BB10_50 Depth=1
	movl	31080(%rsp), %edx
	movl	$2, %r9d
	testl	%edx, %edx
	movl	$2, %esi
	je	.LBB10_58
# BB#55:                                # %cond.false.i
                                        #   in Loop: Header=BB10_50 Depth=1
	movl	%ebp, %r8d
	movl	31088(%rsp), %esi
	leal	1(%rsi), %ebx
	movl	$1, %edi
	cmpl	$256, %ebx              # imm = 0x100
	jb	.LBB10_57
	.align	16, 0x90
.LBB10_56:                              # %while.body.i.i.208
                                        #   Parent Loop BB10_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ebp
	shrl	$8, %ebp
	incl	%edi
	cmpl	$65535, %ebx            # imm = 0xFFFF
	movl	%ebp, %ebx
	ja	.LBB10_56
.LBB10_57:                              # %offset_size.exit.i
                                        #   in Loop: Header=BB10_50 Depth=1
	incl	%edx
	imull	%edi, %edx
	leal	3(%rsi,%rdx), %esi
	movl	%r8d, %ebp
.LBB10_58:                              # %cff_Index_size.exit213
                                        #   in Loop: Header=BB10_50 Depth=1
	addl	%eax, %ecx
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r12), %eax
	addl	%esi, %eax
	testl	%r14d, %r14d
	leal	(%rax,%rcx,2), %r13d
	je	.LBB10_62
# BB#59:                                # %cond.false.i.217
                                        #   in Loop: Header=BB10_50 Depth=1
	movl	$1, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	cmpl	$256, %ecx              # imm = 0x100
	jb	.LBB10_61
	.align	16, 0x90
.LBB10_60:                              # %while.body.i.i.223
                                        #   Parent Loop BB10_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB10_60
.LBB10_61:                              # %offset_size.exit.i.229
                                        #   in Loop: Header=BB10_50 Depth=1
	imull	72(%rsp), %eax          # 4-byte Folded Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %r9d
.LBB10_62:                              # %cff_Index_size.exit231
                                        #   in Loop: Header=BB10_50 Depth=1
	addl	%r13d, %r9d
	movq	%r9, 120(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	(%r9,%rax), %ecx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 200(%rsp)         # 4-byte Spill
	cmpl	$32767, 132(%rsp)       # 4-byte Folded Reload
                                        # imm = 0x7FFF
	seta	%al
	movzbl	%al, %ebx
	orq	$2, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leaq	5680(%rsp), %rdi
	jmp	.LBB10_63
.LBB10_253:                             # %if.then.372
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, 31008(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 200(%rsp)         # 4-byte Spill
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	movl	268(%rsp), %ebp         # 4-byte Reload
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	.align	16, 0x90
.LBB10_63:                              # %write
                                        #   Parent Loop BB10_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_73 Depth 3
                                        #       Child Loop BB10_79 Depth 3
                                        #       Child Loop BB10_86 Depth 3
                                        #       Child Loop BB10_97 Depth 3
                                        #       Child Loop BB10_103 Depth 3
                                        #       Child Loop BB10_110 Depth 3
                                        #       Child Loop BB10_154 Depth 3
                                        #       Child Loop BB10_166 Depth 3
                                        #       Child Loop BB10_199 Depth 3
                                        #       Child Loop BB10_205 Depth 3
                                        #       Child Loop BB10_210 Depth 3
                                        #         Child Loop BB10_212 Depth 4
                                        #       Child Loop BB10_223 Depth 3
                                        #       Child Loop BB10_229 Depth 3
                                        #       Child Loop BB10_236 Depth 3
	callq	stell
	movq	%rax, %r14
	movq	%rbx, 31032(%rsp)
	movq	31008(%rsp), %rdi
	movl	$.L.str.4, %esi
	movl	$3, %edx
	leaq	31120(%rsp), %rcx
	callq	sputs
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_65
# BB#64:                                # %cond.true.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	31032(%rsp), %cl
	movb	%cl, 1(%rax)
	jmp	.LBB10_66
.LBB10_65:                              # %cond.false.i.234
                                        #   in Loop: Header=BB10_63 Depth=2
	movzbl	31032(%rsp), %esi
	callq	spputc
.LBB10_66:                              # %cff_write_header.exit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_68
# BB#67:                                # %cond.true.i.399
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB10_69
.LBB10_68:                              # %cond.false.i.401
                                        #   in Loop: Header=BB10_63 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB10_69:                              # %cond.end.i.403
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_71
# BB#70:                                # %cond.true.25.i.405
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$1, 1(%rax)
	jmp	.LBB10_72
.LBB10_71:                              # %cond.false.36.i.407
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$1, %esi
	callq	spputc
.LBB10_72:                              # %put_card16.exit408
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$1, %eax
	cmpl	$256, %ebp              # imm = 0x100
	movl	%ebp, %ecx
	jb	.LBB10_74
	.align	16, 0x90
.LBB10_73:                              # %while.body.i.i.243
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB10_73
.LBB10_74:                              # %offset_size.exit.i.249
                                        #   in Loop: Header=BB10_63 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 31032(%rsp)
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB10_76
# BB#75:                                # %cond.true.i.251
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB10_77
.LBB10_76:                              # %cond.false.i.252
                                        #   in Loop: Header=BB10_63 Depth=2
	movzbl	%al, %esi
	callq	spputc
.LBB10_77:                              # %cff_put_Index_header.exit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31032(%rsp), %rax
	movl	%eax, %ecx
	decl	%ecx
	js	.LBB10_84
# BB#78:                                # %for.body.i.417.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	leal	(%rax,%r15), %ebx
	shll	$3, %ebx
	leal	1(%rax,%r15), %ebp
	.align	16, 0x90
.LBB10_79:                              # %for.body.i.417
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_81
# BB#80:                                # %cond.true.i.422
                                        #   in Loop: Header=BB10_79 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%bl, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB10_82
	.align	16, 0x90
.LBB10_81:                              # %cond.false.i.427
                                        #   in Loop: Header=BB10_79 Depth=3
	movl	$1, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB10_82:                              # %for.inc.i.430
                                        #   in Loop: Header=BB10_79 Depth=3
	addl	$-8, %ebx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB10_79
# BB#83:                                # %put_offset.exit431.loopexit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31032(%rsp), %rax
.LBB10_84:                              # %put_offset.exit431
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	%eax, %ecx
	addl	%r15d, %ecx
	js	.LBB10_90
# BB#85:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	leal	(%rax,%r15), %ebx
	shll	$3, %ebx
	leal	1(%rax,%r15), %ebp
	.align	16, 0x90
.LBB10_86:                              # %for.body.i
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_88
# BB#87:                                # %cond.true.i.260
                                        #   in Loop: Header=BB10_86 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	268(%rsp), %edx         # 4-byte Reload
	movb	%bl, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB10_89
	.align	16, 0x90
.LBB10_88:                              # %cond.false.i.263
                                        #   in Loop: Header=BB10_86 Depth=3
	movl	268(%rsp), %eax         # 4-byte Reload
	movb	%bl, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB10_89:                              # %for.inc.i
                                        #   in Loop: Header=BB10_86 Depth=3
	addl	$-8, %ebx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB10_86
.LBB10_90:                              # %put_offset.exit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	232(%rsp), %rdx         # 8-byte Reload
	leaq	31120(%rsp), %rcx
	callq	sputs
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_92
# BB#91:                                # %cond.true.i.435
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB10_93
.LBB10_92:                              # %cond.false.i.437
                                        #   in Loop: Header=BB10_63 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB10_93:                              # %cond.end.i.439
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_95
# BB#94:                                # %cond.true.25.i.441
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$1, 1(%rax)
	jmp	.LBB10_96
.LBB10_95:                              # %cond.false.36.i.443
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$1, %esi
	callq	spputc
.LBB10_96:                              # %put_card16.exit444
                                        #   in Loop: Header=BB10_63 Depth=2
	incl	%r12d
	movl	$1, %eax
	cmpl	$256, %r12d             # imm = 0x100
	movl	%r12d, %ecx
	jb	.LBB10_98
	.align	16, 0x90
.LBB10_97:                              # %while.body.i.i.274
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ecx, %edx
	shrl	$8, %edx
	incl	%eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	%edx, %ecx
	ja	.LBB10_97
.LBB10_98:                              # %offset_size.exit.i.280
                                        #   in Loop: Header=BB10_63 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 31032(%rsp)
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB10_100
# BB#99:                                # %cond.true.i.283
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB10_101
.LBB10_100:                             # %cond.false.i.286
                                        #   in Loop: Header=BB10_63 Depth=2
	movzbl	%al, %esi
	callq	spputc
.LBB10_101:                             # %cff_put_Index_header.exit287
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31032(%rsp), %rax
	movl	%eax, %ecx
	addl	%r15d, %ecx
	js	.LBB10_108
# BB#102:                               # %for.body.i.453.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	leal	(%rax,%r15), %ebx
	shll	$3, %ebx
	leal	1(%rax,%r15), %ebp
	.align	16, 0x90
.LBB10_103:                             # %for.body.i.453
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_105
# BB#104:                               # %cond.true.i.458
                                        #   in Loop: Header=BB10_103 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%bl, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB10_106
	.align	16, 0x90
.LBB10_105:                             # %cond.false.i.463
                                        #   in Loop: Header=BB10_103 Depth=3
	movl	$1, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB10_106:                             # %for.inc.i.466
                                        #   in Loop: Header=BB10_103 Depth=3
	addl	$-8, %ebx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB10_103
# BB#107:                               # %put_offset.exit467.loopexit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31032(%rsp), %rax
.LBB10_108:                             # %put_offset.exit467
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	%eax, %ecx
	addl	%r15d, %ecx
	js	.LBB10_114
# BB#109:                               # %for.body.i.296.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	leal	(%rax,%r15), %ebx
	shll	$3, %ebx
	leal	1(%rax,%r15), %ebp
	.align	16, 0x90
.LBB10_110:                             # %for.body.i.296
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_112
# BB#111:                               # %cond.true.i.301
                                        #   in Loop: Header=BB10_110 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r12d, %edx
	movb	%bl, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB10_113
	.align	16, 0x90
.LBB10_112:                             # %cond.false.i.306
                                        #   in Loop: Header=BB10_110 Depth=3
	movl	%r12d, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB10_113:                             # %for.inc.i.309
                                        #   in Loop: Header=BB10_110 Depth=3
	addl	$-8, %ebx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB10_110
.LBB10_114:                             # %put_offset.exit310
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	callq	stell
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	31016(%rsp), %rbx
	leaq	448(%rbx), %rsi
	leaq	31000(%rsp), %rbp
	movq	%rbp, %rdi
	callq	cff_write_ROS
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	leaq	288(%rsp), %rcx
	callq	cff_write_Top_common
	movq	120(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	je	.LBB10_118
# BB#115:                               # %if.then.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rbp, %rdi
	callq	cff_put_int
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_117
# BB#116:                               # %cond.true.50.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$15, 1(%rax)
	jmp	.LBB10_118
.LBB10_117:                             # %cond.false.61.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$15, %esi
	callq	spputc
.LBB10_118:                             # %cff_put_int_if_ne.exit.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rbp, %rdi
	movl	200(%rsp), %esi         # 4-byte Reload
	callq	cff_put_int
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_120
# BB#119:                               # %cond.true.50.i.i.15.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$17, 1(%rax)
	jmp	.LBB10_121
.LBB10_120:                             # %cond.false.61.i.i.17.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$17, %esi
	callq	spputc
.LBB10_121:                             # %cff_put_int_value.exit18.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	488(%rbx), %esi
	cmpl	$8720, %esi             # imm = 0x2210
	je	.LBB10_128
# BB#122:                               # %if.then.i.20.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rbp, %rdi
	callq	cff_put_int
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_124
# BB#123:                               # %cond.true.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB10_125
.LBB10_124:                             # %cond.false.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$12, %esi
	callq	spputc
.LBB10_125:                             # %cond.end.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_127
# BB#126:                               # %cond.true.23.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$34, 1(%rax)
	jmp	.LBB10_128
.LBB10_127:                             # %cond.false.33.i.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$34, %esi
	callq	spputc
.LBB10_128:                             # %cff_put_int_if_ne.exit21.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rbp, %rdi
	movl	192(%rsp), %esi         # 4-byte Reload
	callq	cff_put_int
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_130
# BB#129:                               # %cond.true.i.i.28.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB10_131
.LBB10_130:                             # %cond.false.i.i.30.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$12, %esi
	callq	spputc
.LBB10_131:                             # %cond.end.i.i.32.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_133
# BB#132:                               # %cond.true.23.i.i.34.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$36, 1(%rax)
	jmp	.LBB10_134
.LBB10_133:                             # %cond.false.33.i.i.36.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$36, %esi
	callq	spputc
.LBB10_134:                             # %cff_put_int_value.exit37.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rbp, %rdi
	movq	208(%rsp), %rsi         # 8-byte Reload
	callq	cff_put_int
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_136
# BB#135:                               # %cond.true.i.i.41.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB10_137
.LBB10_136:                             # %cond.false.i.i.43.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$12, %esi
	callq	spputc
.LBB10_137:                             # %cond.end.i.i.45.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_139
# BB#138:                               # %cond.true.23.i.i.47.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$37, 1(%rax)
	jmp	.LBB10_140
.LBB10_139:                             # %cond.false.33.i.i.49.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$37, %esi
	callq	spputc
.LBB10_140:                             # %cff_write_Top_cidfont.exit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	callq	stell
	movq	%rax, %r12
	movq	%rbp, %rdi
	leaq	31072(%rsp), %rsi
	callq	cff_put_Index
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	movl	$-15, %ecx
	cmpl	%r13d, %eax
	ja	.LBB10_40
# BB#141:                               # %if.end.150
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	je	.LBB10_144
# BB#142:                               # %lor.lhs.false.153
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	272(%rsp), %rax         # 8-byte Reload
	movq	512(%rax), %rax
	movq	(%rax), %rcx
	cmpl	$2, 128(%rcx)
	je	.LBB10_150
# BB#143:                               # %land.rhs.i.317
                                        #   in Loop: Header=BB10_63 Depth=2
	testb	$2, 31000(%rsp)
	jne	.LBB10_144
.LBB10_150:                             # %if.else.160
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	(%rax), %rcx
	movl	$1, %r8d
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	movq	176(%rsp), %rdx         # 8-byte Reload
	callq	cff_write_Subrs
	leaq	448(%rsp), %r13
	jmp	.LBB10_151
.LBB10_144:                             # %if.then.159
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_146
# BB#145:                               # %cond.true.i.323
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB10_147
.LBB10_146:                             # %cond.false.i.325
                                        #   in Loop: Header=BB10_63 Depth=2
	xorl	%esi, %esi
	callq	spputc
.LBB10_147:                             # %cond.end.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	leaq	448(%rsp), %r13
	jae	.LBB10_149
# BB#148:                               # %cond.true.25.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	movq	%rbp, %rbx
	jmp	.LBB10_151
.LBB10_149:                             # %cond.false.36.i
                                        #   in Loop: Header=BB10_63 Depth=2
	xorl	%esi, %esi
	callq	spputc
	movq	%rbp, %rbx
.LBB10_151:                             # %do.end.167
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	cff_write_cidset
	movq	31008(%rsp), %rdi
	callq	stell
	movq	%r14, %rbp
	subl	%ebp, %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	ja	.LBB10_152
# BB#153:                               # %if.end.179
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	31008(%rsp), %r14
	movq	31016(%rsp), %rbx
	movq	144(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	movq	%r13, %rdi
	callq	psf_enumerate_glyphs_reset
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpl	228(%rsp), %eax         # 4-byte Folded Reload
	jae	.LBB10_154
# BB#158:                               # %sw.bb.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_160
# BB#159:                               # %cond.true.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movb	%cl, 1(%rax)
	jmp	.LBB10_161
	.align	16, 0x90
.LBB10_185:                             # %cond.false.54.i
                                        #   in Loop: Header=BB10_154 Depth=3
	movzbl	31116(%rsp), %esi
	movq	%r14, %rdi
	callq	spputc
.LBB10_154:                             # %while.cond.25.preheader.i
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	leaq	31120(%rsp), %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB10_187
# BB#155:                               # %while.body.29.i
                                        #   in Loop: Header=BB10_154 Depth=3
	movq	31120(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	leaq	31116(%rsp), %rcx
	callq	*528(%rbx)
	testl	%eax, %eax
	js	.LBB10_154
# BB#156:                               # %if.then.36.i
                                        #   in Loop: Header=BB10_154 Depth=3
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB10_185
# BB#157:                               # %cond.true.45.i
                                        #   in Loop: Header=BB10_154 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	31116(%rsp), %cl
	movb	%cl, 1(%rax)
	jmp	.LBB10_154
.LBB10_160:                             # %cond.false.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %esi
	callq	spputc
.LBB10_161:                             # %cond.end.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_163
# BB#162:                               # %cond.true.25.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movb	%cl, 1(%rax)
	jmp	.LBB10_164
.LBB10_163:                             # %cond.false.36.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %esi
	callq	spputc
.LBB10_164:                             # %while.cond.preheader.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%r13, %rdi
	leaq	31120(%rsp), %rsi
	callq	psf_enumerate_glyphs_next
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.LBB10_180
# BB#165:                               # %while.body.lr.ph.i.337
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	$-1, %ebp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB10_166:                             # %while.body.i.340
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	31120(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	leaq	31116(%rsp), %rcx
	callq	*528(%rbx)
	testl	%eax, %eax
	js	.LBB10_179
# BB#167:                               # %if.then.i.342
                                        #   in Loop: Header=BB10_166 Depth=3
	cmpl	%ebp, 31116(%rsp)
	je	.LBB10_178
# BB#168:                               # %if.then.9.i
                                        #   in Loop: Header=BB10_166 Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_170
# BB#169:                               # %cond.true.i.6.i
                                        #   in Loop: Header=BB10_166 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r12d, %ecx
	movb	%ch, 1(%rax)  # NOREX
	jmp	.LBB10_171
.LBB10_170:                             # %cond.false.i.10.i
                                        #   in Loop: Header=BB10_166 Depth=3
	movl	%r12d, %eax
	movzbl	%ah, %esi  # NOREX
	callq	spputc
.LBB10_171:                             # %cond.end.i.12.i
                                        #   in Loop: Header=BB10_166 Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_173
# BB#172:                               # %cond.true.25.i.15.i
                                        #   in Loop: Header=BB10_166 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%r12b, 1(%rax)
	jmp	.LBB10_174
.LBB10_173:                             # %cond.false.36.i.18.i
                                        #   in Loop: Header=BB10_166 Depth=3
	movzbl	%r12b, %esi
	callq	spputc
.LBB10_174:                             # %put_card16.exit19.i
                                        #   in Loop: Header=BB10_166 Depth=3
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB10_176
# BB#175:                               # %cond.true.i.344
                                        #   in Loop: Header=BB10_166 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	31116(%rsp), %cl
	movb	%cl, 1(%rax)
	jmp	.LBB10_177
.LBB10_176:                             # %cond.false.i.345
                                        #   in Loop: Header=BB10_166 Depth=3
	movzbl	31116(%rsp), %esi
	movq	%r14, %rdi
	callq	spputc
.LBB10_177:                             # %cond.end.i.346
                                        #   in Loop: Header=BB10_166 Depth=3
	movl	31116(%rsp), %ebp
.LBB10_178:                             # %if.end.i
                                        #   in Loop: Header=BB10_166 Depth=3
	incl	%r12d
.LBB10_179:                             # %if.end.23.i
                                        #   in Loop: Header=BB10_166 Depth=3
	movq	%r13, %rdi
	leaq	31120(%rsp), %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	je	.LBB10_166
.LBB10_180:                             # %while.end.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_182
# BB#181:                               # %cond.true.i.25.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r12d, %ecx
	movb	%ch, 1(%rax)  # NOREX
	movl	%ecx, %ebx
	jmp	.LBB10_183
.LBB10_182:                             # %cond.false.i.29.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	%r12d, %eax
	movzbl	%ah, %esi  # NOREX
	movl	%eax, %ebx
	callq	spputc
.LBB10_183:                             # %cond.end.i.31.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	208(%rsp), %rbp         # 8-byte Reload
	movq	160(%rsp), %r12         # 8-byte Reload
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_186
# BB#184:                               # %cond.true.25.i.34.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bl, 1(%rax)
	jmp	.LBB10_187
.LBB10_186:                             # %cond.false.36.i.37.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movzbl	%bl, %esi
	callq	spputc
.LBB10_187:                             # %cff_write_FDSelect.exit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	callq	stell
	movq	%rax, %rbx
	subl	%ebp, %ebx
	cmpl	200(%rsp), %ebx         # 4-byte Folded Reload
	ja	.LBB10_188
# BB#189:                               # %if.end.191
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	31000(%rsp), %rdi
	movq	%r13, %rsi
	movl	112(%rsp), %edx         # 4-byte Reload
	movl	116(%rsp), %ecx         # 4-byte Reload
	callq	cff_write_CharStrings
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%ebp, %eax
	cmpl	192(%rsp), %eax         # 4-byte Folded Reload
	ja	.LBB10_190
# BB#191:                               # %if.end.202
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	movl	2576(%rsp,%rax,4), %ebx
	movl	2576(%rsp), %r12d
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_193
# BB#192:                               # %cond.true.i.23.i
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	108(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 1(%rax)
	jmp	.LBB10_194
.LBB10_193:                             # %cond.false.i.25.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	108(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %esi
	callq	spputc
.LBB10_194:                             # %cond.end.i.26.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	280(%rsp), %rbp         # 8-byte Reload
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_196
# BB#195:                               # %cond.true.25.i.i.358
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bpl, 1(%rax)
	jmp	.LBB10_197
.LBB10_196:                             # %cond.false.36.i.i.361
                                        #   in Loop: Header=BB10_63 Depth=2
	movzbl	%bpl, %esi
	callq	spputc
.LBB10_197:                             # %put_card16.exit.i
                                        #   in Loop: Header=BB10_63 Depth=2
	testl	%ebp, %ebp
	movq	%rbp, %r13
	je	.LBB10_217
# BB#198:                               # %if.then.i.i.363
                                        #   in Loop: Header=BB10_63 Depth=2
	subl	%r12d, %ebx
	incl	%ebx
	movl	$1, %eax
	cmpl	$256, %ebx              # imm = 0x100
	jb	.LBB10_200
	.align	16, 0x90
.LBB10_199:                             # %while.body.i.i.i
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %ecx
	shrl	$8, %ecx
	incl	%eax
	cmpl	$65535, %ebx            # imm = 0xFFFF
	movl	%ecx, %ebx
	ja	.LBB10_199
.LBB10_200:                             # %offset_size.exit.i.i
                                        #   in Loop: Header=BB10_63 Depth=2
	movslq	%eax, %rcx
	movq	%rcx, 31032(%rsp)
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB10_202
# BB#201:                               # %cond.true.i.i.366
                                        #   in Loop: Header=BB10_63 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB10_203
.LBB10_202:                             # %cond.false.i.i.367
                                        #   in Loop: Header=BB10_63 Depth=2
	movzbl	%al, %esi
	callq	spputc
.LBB10_203:                             # %cond.end.i.i.368
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31032(%rsp), %rax
	movl	%eax, %ecx
	addl	%r15d, %ecx
	js	.LBB10_209
# BB#204:                               # %for.body.i.35.i.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	leal	(%rax,%r15), %ebx
	shll	$3, %ebx
	leal	1(%rax,%r15), %ebp
	.align	16, 0x90
.LBB10_205:                             # %for.body.i.35.i
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_207
# BB#206:                               # %cond.true.i.40.i
                                        #   in Loop: Header=BB10_205 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	$1, %edx
	movb	%bl, %cl
	shrl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB10_208
	.align	16, 0x90
.LBB10_207:                             # %cond.false.i.45.i
                                        #   in Loop: Header=BB10_205 Depth=3
	movl	$1, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB10_208:                             # %for.inc.i.48.i
                                        #   in Loop: Header=BB10_205 Depth=3
	addl	$-8, %ebx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB10_205
.LBB10_209:                             # %for.cond.preheader.i
                                        #   in Loop: Header=BB10_63 Depth=2
	testl	%r13d, %r13d
	movl	$1, %r14d
	jle	.LBB10_217
	.align	16, 0x90
.LBB10_210:                             # %for.body.i.371
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_212 Depth 4
	movq	31032(%rsp), %rax
	movl	%eax, %ecx
	addl	%r15d, %ecx
	js	.LBB10_216
# BB#211:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB10_210 Depth=3
	movl	2576(%rsp,%r14,4), %r15d
	subl	%r12d, %r15d
	incl	%r15d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leal	(%rax,%rcx), %ebx
	shll	$3, %ebx
	leal	1(%rax,%rcx), %ebp
	.align	16, 0x90
.LBB10_212:                             # %for.body.i.i
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        #       Parent Loop BB10_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_214
# BB#213:                               # %cond.true.i.15.i
                                        #   in Loop: Header=BB10_212 Depth=4
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movl	%r15d, %edx
	movb	%bl, %cl
	sarl	%cl, %edx
	movb	%dl, 1(%rax)
	jmp	.LBB10_215
	.align	16, 0x90
.LBB10_214:                             # %cond.false.i.16.i
                                        #   in Loop: Header=BB10_212 Depth=4
	movl	%r15d, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movzbl	%al, %esi
	callq	spputc
.LBB10_215:                             # %for.inc.i.i
                                        #   in Loop: Header=BB10_212 Depth=4
	addl	$-8, %ebx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB10_212
.LBB10_216:                             # %put_offset.exit.i
                                        #   in Loop: Header=BB10_210 Depth=3
	incq	%r14
	cmpl	252(%rsp), %r14d        # 4-byte Folded Reload
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	jne	.LBB10_210
.LBB10_217:                             # %cff_write_FDArray_offsets.exit
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	callq	stell
	movq	208(%rsp), %r14         # 8-byte Reload
	subl	%r14d, %eax
	cmpl	%r12d, %eax
	ja	.LBB10_218
# BB#219:                               # %if.end.215
                                        #   in Loop: Header=BB10_63 Depth=2
	testl	%r13d, %r13d
	movl	%eax, 2576(%rsp)
	movl	$0, %ebx
	movl	188(%rsp), %r12d        # 4-byte Reload
	movq	272(%rsp), %rbp         # 8-byte Reload
	leaq	31000(%rsp), %r15
	jle	.LBB10_220
	.align	16, 0x90
.LBB10_223:                             # %for.body.220
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	512(%rbp), %rax
	movq	(%rax,%rbx,8), %rsi
	testb	$2, %r12b
	je	.LBB10_226
# BB#224:                               # %if.then.228
                                        #   in Loop: Header=BB10_223 Depth=3
	orl	$1, %r12d
	cmpl	$2, 128(%rsi)
	je	.LBB10_226
# BB#225:                               # %if.then.231
                                        #   in Loop: Header=BB10_223 Depth=3
	movq	$0, 536(%rsi)
.LBB10_226:                             # %if.end.235
                                        #   in Loop: Header=BB10_223 Depth=3
	movl	1536(%rsp,%rbx,4), %edx
	movl	1540(%rsp,%rbx,4), %ecx
	subl	%edx, %ecx
	movq	%r15, %rdi
	callq	cff_write_Top_fdarray
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	cmpl	2580(%rsp,%rbx,4), %eax
	ja	.LBB10_227
# BB#222:                               # %if.end.257
                                        #   in Loop: Header=BB10_223 Depth=3
	movl	%eax, 2580(%rsp,%rbx,4)
	incq	%rbx
	cmpq	256(%rsp), %rbx         # 8-byte Folded Reload
	jl	.LBB10_223
.LBB10_220:                             # %for.cond.264.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	movl	%r12d, 188(%rsp)        # 4-byte Spill
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	cmpl	1536(%rsp), %eax
	ja	.LBB10_221
# BB#228:                               #   in Loop: Header=BB10_63 Depth=2
	movq	160(%rsp), %r12         # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %r12d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB10_229:                             # %if.end.278
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, 1536(%rsp,%rbx,4)
	cmpl	%ebx, %r13d
	je	.LBB10_230
# BB#232:                               # %if.end.284
                                        #   in Loop: Header=BB10_229 Depth=3
	movq	512(%rbp), %rax
	movq	(%rax,%rbx,8), %rdx
	xorl	%esi, %esi
	cmpl	$0, 3616(%rsp,%rbx,4)
	je	.LBB10_234
# BB#233:                               # %cond.false.294
                                        #   in Loop: Header=BB10_229 Depth=3
	movl	496(%rsp,%rbx,4), %esi
.LBB10_234:                             # %for.inc.302
                                        #   in Loop: Header=BB10_229 Depth=3
	movq	%r15, %rdi
	callq	cff_write_Private
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	cmpl	1540(%rsp,%rbx,4), %eax
	leaq	1(%rbx), %rbx
	jbe	.LBB10_229
	jmp	.LBB10_235
.LBB10_230:                             # %for.cond.305.preheader
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	subl	1536(%rsp), %eax
	cmpl	496(%rsp), %eax
	movl	$0, %ebx
	ja	.LBB10_231
	.align	16, 0x90
.LBB10_236:                             # %if.end.323
                                        #   Parent Loop BB10_50 Depth=1
                                        #     Parent Loop BB10_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, 496(%rsp,%rbx,4)
	cmpl	%ebx, %r13d
	je	.LBB10_249
# BB#237:                               # %if.end.329
                                        #   in Loop: Header=BB10_236 Depth=3
	movq	512(%rbp), %rax
	movq	(%rax,%rbx,8), %rcx
	cmpl	$2, 128(%rcx)
	je	.LBB10_245
# BB#238:                               # %land.rhs.i.379
                                        #   in Loop: Header=BB10_236 Depth=3
	testb	$2, 31000(%rsp)
	jne	.LBB10_239
.LBB10_245:                             # %if.else.337
                                        #   in Loop: Header=BB10_236 Depth=3
	movl	3616(%rsp,%rbx,4), %edx
	testl	%edx, %edx
	je	.LBB10_247
# BB#246:                               # %if.then.342
                                        #   in Loop: Header=BB10_236 Depth=3
	movl	4640(%rsp,%rbx,4), %esi
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	cff_write_Subrs
	jmp	.LBB10_247
	.align	16, 0x90
.LBB10_239:                             # %if.then.336
                                        #   in Loop: Header=BB10_236 Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_241
# BB#240:                               # %cond.true.i.386
                                        #   in Loop: Header=BB10_236 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB10_242
.LBB10_241:                             # %cond.false.i.388
                                        #   in Loop: Header=BB10_236 Depth=3
	xorl	%esi, %esi
	callq	spputc
.LBB10_242:                             # %cond.end.i.390
                                        #   in Loop: Header=BB10_236 Depth=3
	movq	31008(%rsp), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB10_244
# BB#243:                               # %cond.true.25.i.392
                                        #   in Loop: Header=BB10_236 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB10_247
.LBB10_244:                             # %cond.false.36.i.394
                                        #   in Loop: Header=BB10_236 Depth=3
	xorl	%esi, %esi
	callq	spputc
	.align	16, 0x90
.LBB10_247:                             # %for.inc.352
                                        #   in Loop: Header=BB10_236 Depth=3
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	subl	1540(%rsp,%rbx,4), %eax
	cmpl	500(%rsp,%rbx,4), %eax
	leaq	1(%rbx), %rbx
	jbe	.LBB10_236
	jmp	.LBB10_248
.LBB10_249:                             # %for.end.354
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	%r13, 280(%rsp)         # 8-byte Spill
	movq	31008(%rsp), %rdi
	callq	stell
	subl	%r14d, %eax
	cmpl	132(%rsp), %eax         # 4-byte Folded Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	$-15, %ecx
	ja	.LBB10_40
# BB#250:                               # %if.end.365
                                        #   in Loop: Header=BB10_63 Depth=2
	movq	136(%rsp), %r14         # 8-byte Reload
	jne	.LBB10_251
# BB#252:                               # %if.then.368
                                        #   in Loop: Header=BB10_63 Depth=2
	xorl	%ecx, %ecx
	leaq	5680(%rsp), %rax
	cmpq	%rax, 31008(%rsp)
	je	.LBB10_253
	jmp	.LBB10_40
.LBB10_235:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_227:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_248:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_152:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_188:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_190:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_218:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_221:
	movl	$-15, %ecx
	jmp	.LBB10_40
.LBB10_231:
	movl	$-15, %ecx
.LBB10_40:                              # %cleanup.377
	movl	%ecx, %eax
	addq	$31128, %rsp            # imm = 0x7998
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	psf_write_cid0_font, .Lfunc_end10-psf_write_cid0_font
	.cfi_endproc

	.align	16, 0x90
	.type	cid0_glyph_data,@function
cid0_glyph_data:                        # @cid0_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp137:
	.cfi_def_cfa_offset 32
.Ltmp138:
	.cfi_offset %rbx, -24
.Ltmp139:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	leaq	4(%rsp), %rcx
	callq	*528(%rbx)
	testl	%eax, %eax
	js	.LBB11_2
# BB#1:                                 # %if.then
	movslq	4(%rsp), %rcx
	movq	512(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, (%r14)
.LBB11_2:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	cid0_glyph_data, .Lfunc_end11-cid0_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_ROS,@function
cff_write_ROS:                          # @cff_write_ROS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp143:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp144:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 80
.Ltmp147:
	.cfi_offset %rbx, -56
.Ltmp148:
	.cfi_offset %r12, -48
.Ltmp149:
	.cfi_offset %r13, -40
.Ltmp150:
	.cfi_offset %r14, -32
.Ltmp151:
	.cfi_offset %r15, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movq	(%rsi), %r15
	movl	8(%rsi), %r12d
	xorl	%r14d, %r14d
	testl	%r12d, %r12d
	movl	$0, %ebp
	je	.LBB12_2
# BB#1:                                 # %cond.false.i
	movzbl	(%r15), %eax
	imull	$23, %eax, %ebp
	leal	-1(%r12), %eax
	movzbl	(%r15,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r12d, %ebp
	addl	%eax, %ebp
.LBB12_2:                               # %while.cond.preheader.i
	movl	60(%r13), %ecx
	.align	16, 0x90
.LBB12_3:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	48(%r13), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB12_6
# BB#4:                                 # %while.body.i
                                        #   in Loop: Header=BB12_3 Depth=1
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB12_8
# BB#5:                                 # %if.end.i.8
                                        #   in Loop: Header=BB12_3 Depth=1
	addl	68(%r13), %ebp
	incl	%r14d
	movl	60(%r13), %ecx
	cmpl	%ecx, %r14d
	jl	.LBB12_3
.LBB12_6:                               # %if.then.i.i
	leaq	72(%r13), %rdi
	leaq	16(%rsp), %r8
	movl	$1, %ecx
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB12_10
# BB#7:                                 # %if.end.i.i
	movl	$391, %ebx              # imm = 0x187
	addl	16(%rsp), %ebx
.LBB12_8:                               # %cff_string_sid.exit.i
	testl	%ebx, %ebx
	js	.LBB12_10
# BB#9:                                 # %if.end.i
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
.LBB12_10:                              # %cff_put_string.exit
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	16(%rax), %r15
	movl	24(%rax), %r12d
	xorl	%r14d, %r14d
	testl	%r12d, %r12d
	movl	$0, %ebp
	je	.LBB12_12
# BB#11:                                # %cond.false.i.38
	movzbl	(%r15), %eax
	imull	$23, %eax, %ebp
	leal	-1(%r12), %eax
	movzbl	(%r15,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r12d, %ebp
	addl	%eax, %ebp
.LBB12_12:                              # %while.cond.preheader.i.44
	movl	60(%r13), %ecx
	.align	16, 0x90
.LBB12_13:                              # %while.cond.i.51
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	48(%r13), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB12_16
# BB#14:                                # %while.body.i.58
                                        #   in Loop: Header=BB12_13 Depth=1
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB12_18
# BB#15:                                # %if.end.i.63
                                        #   in Loop: Header=BB12_13 Depth=1
	addl	68(%r13), %ebp
	incl	%r14d
	movl	60(%r13), %ecx
	cmpl	%ecx, %r14d
	jl	.LBB12_13
.LBB12_16:                              # %if.then.i.i.18
	leaq	72(%r13), %rdi
	leaq	20(%rsp), %r8
	movl	$1, %ecx
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB12_20
# BB#17:                                # %if.end.i.i.21
	movl	$391, %ebx              # imm = 0x187
	addl	20(%rsp), %ebx
.LBB12_18:                              # %cff_string_sid.exit.i.24
	testl	%ebx, %ebx
	js	.LBB12_20
# BB#19:                                # %if.end.i.25
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
.LBB12_20:                              # %cff_put_string.exit27
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	32(%rax), %esi
	movq	%r13, %rdi
	callq	cff_put_int
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB12_22
# BB#21:                                # %cond.true.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB12_23
.LBB12_22:                              # %cond.false.i.i
	movl	$12, %esi
	callq	spputc
.LBB12_23:                              # %cond.end.i.i
	movq	8(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB12_25
# BB#24:                                # %cff_put_int_value.exit
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$30, 1(%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_25:                              # %cond.false.33.i.i
	movl	$30, %esi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end12:
	.size	cff_write_ROS, .Lfunc_end12-cff_write_ROS
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_Top_fdarray,@function
cff_write_Top_fdarray:                  # @cff_write_Top_fdarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp156:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp157:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp159:
	.cfi_def_cfa_offset 224
.Ltmp160:
	.cfi_offset %rbx, -56
.Ltmp161:
	.cfi_offset %r12, -48
.Ltmp162:
	.cfi_offset %r13, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
.Ltmp165:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$1, 40(%rsp)
	movl	$0, (%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 48(%rsp)
	movabsq	$219043331996, %rax     # imm = 0x32FFFFFF9C
	movq	%rax, 72(%rsp)
	leaq	(%rsp), %rbp
	xorl	%esi, %esi
	movl	$12480, %edx            # imm = 0x30C0
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	*184(%r14)
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rcx
	callq	cff_write_Top_common
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	cff_put_int
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB13_2
# BB#1:                                 # %cond.true.50.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$18, 1(%rax)
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false.61.i.i
	movl	$18, %esi
	callq	spputc
.LBB13_3:                               # %cff_put_int_value.exit
	cmpl	$0, 372(%r14)
	je	.LBB13_4
# BB#5:                                 # %select.mid
	addq	$324, %r14              # imm = 0x144
	jmp	.LBB13_6
.LBB13_4:
	addq	$272, %r14              # imm = 0x110
.LBB13_6:                               # %select.end
	movl	48(%r14), %r15d
	testl	%r15d, %r15d
	je	.LBB13_21
# BB#7:                                 # %while.cond.preheader.i
	movzbl	(%r14), %eax
	imull	$23, %eax, %ebp
	leal	-1(%r15), %eax
	movzbl	(%r14,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r15d, %ebp
	addl	%eax, %ebp
	movl	60(%r12), %ecx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB13_8:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	48(%r12), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB13_11
# BB#9:                                 # %while.body.i
                                        #   in Loop: Header=BB13_8 Depth=1
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB13_13
# BB#10:                                # %if.end.i.15
                                        #   in Loop: Header=BB13_8 Depth=1
	addl	68(%r12), %ebp
	incl	%r13d
	movl	60(%r12), %ecx
	cmpl	%ecx, %r13d
	jl	.LBB13_8
.LBB13_11:                              # %if.then.i.i
	leaq	72(%r12), %rdi
	leaq	164(%rsp), %r8
	movl	$1, %ecx
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB13_15
# BB#12:                                # %if.end.i.i
	movl	$391, %ebx              # imm = 0x187
	addl	164(%rsp), %ebx
.LBB13_13:                              # %cff_string_sid.exit.i
	testl	%ebx, %ebx
	js	.LBB13_15
# BB#14:                                # %if.end.i
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
.LBB13_15:                              # %cff_put_string.exit
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB13_17
# BB#16:                                # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB13_18
.LBB13_17:                              # %cond.false.i.19
	movl	$12, %esi
	callq	spputc
.LBB13_18:                              # %cond.end.i
	movq	8(%r12), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB13_20
# BB#19:                                # %cond.true.23.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$38, 1(%rax)
	jmp	.LBB13_21
.LBB13_20:                              # %cond.false.33.i
	movl	$38, %esi
	callq	spputc
.LBB13_21:                              # %if.end.5
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cff_write_Top_fdarray, .Lfunc_end13-cff_write_Top_fdarray
	.cfi_endproc

	.align	16, 0x90
	.type	cff_write_cidset,@function
cff_write_cidset:                       # @cff_write_cidset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp170:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp171:
	.cfi_def_cfa_offset 64
.Ltmp172:
	.cfi_offset %rbx, -48
.Ltmp173:
	.cfi_offset %r12, -40
.Ltmp174:
	.cfi_offset %r13, -32
.Ltmp175:
	.cfi_offset %r14, -24
.Ltmp176:
	.cfi_offset %r15, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB14_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	xorl	%esi, %esi
	callq	spputc
.LBB14_3:                               # %cond.end
	movq	%r13, %rdi
	callq	psf_enumerate_glyphs_reset
	leaq	8(%rsp), %rsi
	movq	%r13, %rdi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB14_7
# BB#4:
	movl	$2147483648, %r12d      # imm = 0x80000000
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB14_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rbx
	cmpq	%r12, %rbx
	je	.LBB14_6
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB14_5 Depth=1
	addq	%r12, %rbx
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB14_10
# BB#9:                                 # %cond.true.i
                                        #   in Loop: Header=BB14_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB14_11
	.align	16, 0x90
.LBB14_10:                              # %cond.false.i
                                        #   in Loop: Header=BB14_5 Depth=1
	movzbl	%bh, %esi  # NOREX
	callq	spputc
.LBB14_11:                              # %cond.end.i
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB14_13
# BB#12:                                # %cond.true.25.i
                                        #   in Loop: Header=BB14_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bl, 1(%rax)
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_13:                              # %cond.false.36.i
                                        #   in Loop: Header=BB14_5 Depth=1
	movzbl	%bl, %esi
	callq	spputc
.LBB14_6:                               # %while.cond.backedge
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	je	.LBB14_5
.LBB14_7:                               # %while.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	cff_write_cidset, .Lfunc_end14-cff_write_cidset
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI15_0:
	.long	981668463               # float 0.00100000005
	.text
	.align	16, 0x90
	.type	cff_write_Top_common,@function
cff_write_Top_common:                   # @cff_write_Top_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp179:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp180:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp181:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp182:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp183:
	.cfi_def_cfa_offset 96
.Ltmp184:
	.cfi_offset %rbx, -56
.Ltmp185:
	.cfi_offset %r12, -48
.Ltmp186:
	.cfi_offset %r13, -40
.Ltmp187:
	.cfi_offset %r14, -32
.Ltmp188:
	.cfi_offset %r15, -24
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	testb	$-128, (%r15)
	je	.LBB15_14
# BB#1:                                 # %if.then
	movq	104(%r15), %r13
	movl	112(%r15), %ebp
	movq	%r15, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	movl	$0, %r15d
	je	.LBB15_3
# BB#2:                                 # %cond.false.i.213
	movzbl	(%r13), %eax
	imull	$23, %eax, %r15d
	leal	-1(%rbp), %eax
	movzbl	(%r13,%rax), %eax
	imull	$59, %eax, %eax
	addl	%ebp, %r15d
	addl	%eax, %r15d
.LBB15_3:                               # %while.cond.preheader.i
	movl	60(%r14), %ecx
	.align	16, 0x90
.LBB15_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %r15d
	movslq	%r15d, %rcx
	movq	48(%r14), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %r12
	testq	%r12, %r12
	je	.LBB15_7
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB15_4 Depth=1
	decq	%r12
	leaq	(%r12,%r12,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB15_10
# BB#6:                                 # %if.end.i.215
                                        #   in Loop: Header=BB15_4 Depth=1
	addl	68(%r14), %r15d
	incl	%ebx
	movl	60(%r14), %ecx
	cmpl	%ecx, %ebx
	jl	.LBB15_4
.LBB15_7:                               # %if.then.i.i
	leaq	72(%r14), %rdi
	leaq	36(%rsp), %r8
	movl	$1, %ecx
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB15_8
# BB#9:                                 # %if.end.i.i
	movl	$391, %r12d             # imm = 0x187
	addl	36(%rsp), %r12d
.LBB15_10:                              # %cff_string_sid.exit.i
	testl	%r12d, %r12d
	movq	24(%rsp), %r15          # 8-byte Reload
	js	.LBB15_14
# BB#11:                                # %if.then.i
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_13
# BB#12:                                # %cond.true.50.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$1, 1(%rax)
	jmp	.LBB15_14
.LBB15_8:                               # %cff_string_sid.exit.thread.i
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB15_14
.LBB15_13:                              # %cond.false.61.i
	movl	$1, %esi
	callq	spputc
.LBB15_14:                              # %if.end
	testb	$32, 1(%r15)
	je	.LBB15_28
# BB#15:                                # %if.then.5
	movq	136(%r15), %r13
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	144(%r15), %r15d
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	movl	$0, %ebp
	je	.LBB15_17
# BB#16:                                # %cond.false.i.246
	movzbl	(%r13), %eax
	imull	$23, %eax, %ebp
	leal	-1(%r15), %eax
	movzbl	(%r13,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r15d, %ebp
	addl	%eax, %ebp
.LBB15_17:                              # %while.cond.preheader.i.252
	movl	60(%r14), %ecx
	.align	16, 0x90
.LBB15_18:                              # %while.cond.i.259
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	48(%r14), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB15_21
# BB#19:                                # %while.body.i.266
                                        #   in Loop: Header=BB15_18 Depth=1
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB15_24
# BB#20:                                # %if.end.i.271
                                        #   in Loop: Header=BB15_18 Depth=1
	addl	68(%r14), %ebp
	incl	%r12d
	movl	60(%r14), %ecx
	cmpl	%ecx, %r12d
	jl	.LBB15_18
.LBB15_21:                              # %if.then.i.i.226
	leaq	72(%r14), %rdi
	leaq	36(%rsp), %r8
	movl	$1, %ecx
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB15_22
# BB#23:                                # %if.end.i.i.229
	movl	$391, %ebx              # imm = 0x187
	addl	36(%rsp), %ebx
.LBB15_24:                              # %cff_string_sid.exit.i.232
	testl	%ebx, %ebx
	movq	24(%rsp), %r15          # 8-byte Reload
	js	.LBB15_28
# BB#25:                                # %if.then.i.72
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_27
# BB#26:                                # %cond.true.50.i.77
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$2, 1(%rax)
	jmp	.LBB15_28
.LBB15_22:                              # %cff_string_sid.exit.thread.i.227
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB15_28
.LBB15_27:                              # %cond.false.61.i.79
	movl	$2, %esi
	callq	spputc
.LBB15_28:                              # %if.end.10
	testb	$16, 1(%r15)
	je	.LBB15_42
# BB#29:                                # %if.then.14
	movq	120(%r15), %r13
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	128(%r15), %r15d
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	movl	$0, %ebp
	je	.LBB15_31
# BB#30:                                # %cond.false.i.305
	movzbl	(%r13), %eax
	imull	$23, %eax, %ebp
	leal	-1(%r15), %eax
	movzbl	(%r13,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r15d, %ebp
	addl	%eax, %ebp
.LBB15_31:                              # %while.cond.preheader.i.311
	movl	60(%r14), %ecx
	.align	16, 0x90
.LBB15_32:                              # %while.cond.i.318
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	48(%r14), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB15_35
# BB#33:                                # %while.body.i.325
                                        #   in Loop: Header=BB15_32 Depth=1
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB15_38
# BB#34:                                # %if.end.i.330
                                        #   in Loop: Header=BB15_32 Depth=1
	addl	68(%r14), %ebp
	incl	%r12d
	movl	60(%r14), %ecx
	cmpl	%ecx, %r12d
	jl	.LBB15_32
.LBB15_35:                              # %if.then.i.i.285
	leaq	72(%r14), %rdi
	leaq	36(%rsp), %r8
	movl	$1, %ecx
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB15_36
# BB#37:                                # %if.end.i.i.288
	movl	$391, %ebx              # imm = 0x187
	addl	36(%rsp), %ebx
.LBB15_38:                              # %cff_string_sid.exit.i.291
	testl	%ebx, %ebx
	movq	24(%rsp), %r15          # 8-byte Reload
	js	.LBB15_42
# BB#39:                                # %if.then.i.83
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_41
# BB#40:                                # %cond.true.50.i.88
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$3, 1(%rax)
	jmp	.LBB15_42
.LBB15_36:                              # %cff_string_sid.exit.thread.i.286
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB15_42
.LBB15_41:                              # %cond.false.61.i.90
	movl	$3, %esi
	callq	spputc
.LBB15_42:                              # %if.end.19
	movl	96(%r14), %eax
	testl	%eax, %eax
	movq	16(%rsp), %rbp          # 8-byte Reload
	jne	.LBB15_46
# BB#43:                                # %lor.lhs.false
	cmpl	$0, 100(%r14)
	jne	.LBB15_46
# BB#44:                                # %lor.lhs.false.23
	cmpl	$0, 104(%r14)
	jne	.LBB15_46
# BB#45:                                # %lor.lhs.false.27
	cmpl	$0, 108(%r14)
	je	.LBB15_49
.LBB15_46:                              # %if.then.32
	cvtsi2sdl	%eax, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movl	100(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movl	104(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movl	108(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_48
# BB#47:                                # %cond.true.50.i.95
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$5, 1(%rax)
	jmp	.LBB15_49
.LBB15_48:                              # %cond.false.61.i.97
	movl	$5, %esi
	callq	spputc
.LBB15_49:                              # %if.end.48
	movq	408(%rbp), %rsi
	cmpq	$16777215, %rsi         # imm = 0xFFFFFF
	ja	.LBB15_53
# BB#50:                                # %if.then.52
	movq	%r14, %rdi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_52
# BB#51:                                # %cond.true.50.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$13, 1(%rax)
	jmp	.LBB15_61
.LBB15_53:                              # %if.else
	testq	%rsi, %rsi
	jns	.LBB15_61
# BB#54:                                # %for.cond.preheader
	testl	%esi, %esi
	je	.LBB15_57
# BB#55:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB15_56:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	416(%rbp), %rax
	movl	(%rax,%rbx,8), %esi
	movq	%r14, %rdi
	callq	cff_put_int
	incq	%rbx
	xorl	%eax, %eax
	subl	408(%rbp), %eax
	cmpl	%eax, %ebx
	jb	.LBB15_56
.LBB15_57:                              # %for.end
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_59
# BB#58:                                # %cond.true.50.i.102
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$14, 1(%rax)
	jmp	.LBB15_61
.LBB15_52:                              # %cond.false.61.i.i
	movl	$13, %esi
	jmp	.LBB15_60
.LBB15_59:                              # %cond.false.61.i.104
	movl	$14, %esi
.LBB15_60:                              # %if.end.69
	callq	spputc
.LBB15_61:                              # %if.end.69
	testb	$4, (%r14)
	jne	.LBB15_117
# BB#62:                                # %if.then.72
	testb	$64, (%r15)
	je	.LBB15_79
# BB#63:                                # %if.then.76
	movq	88(%r15), %r13
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	96(%r15), %r15d
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	movl	$0, %ebp
	je	.LBB15_65
# BB#64:                                # %cond.false.i.364
	movzbl	(%r13), %eax
	imull	$23, %eax, %ebp
	leal	-1(%r15), %eax
	movzbl	(%r13,%rax), %eax
	imull	$59, %eax, %eax
	addl	%r15d, %ebp
	addl	%eax, %ebp
.LBB15_65:                              # %while.cond.preheader.i.370
	movl	60(%r14), %ecx
	.align	16, 0x90
.LBB15_66:                              # %while.cond.i.377
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movslq	%ebp, %rcx
	movq	48(%r14), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movslq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	je	.LBB15_69
# BB#67:                                # %while.body.i.384
                                        #   in Loop: Header=BB15_66 Depth=1
	decq	%rbx
	leaq	(%rbx,%rbx,2), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %esi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB15_72
# BB#68:                                # %if.end.i.389
                                        #   in Loop: Header=BB15_66 Depth=1
	addl	68(%r14), %ebp
	incl	%r12d
	movl	60(%r14), %ecx
	cmpl	%ecx, %r12d
	jl	.LBB15_66
.LBB15_69:                              # %if.then.i.i.344
	leaq	72(%r14), %rdi
	leaq	36(%rsp), %r8
	movl	$1, %ecx
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	cff_string_index
	testl	%eax, %eax
	js	.LBB15_70
# BB#71:                                # %if.end.i.i.347
	movl	$391, %ebx              # imm = 0x187
	addl	36(%rsp), %ebx
.LBB15_72:                              # %cff_string_sid.exit.i.350
	testl	%ebx, %ebx
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	js	.LBB15_79
# BB#73:                                # %if.then.i.108
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_75
# BB#74:                                # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_76
.LBB15_70:                              # %cff_string_sid.exit.thread.i.345
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB15_79
.LBB15_75:                              # %cond.false.i
	movl	$12, %esi
	callq	spputc
.LBB15_76:                              # %cond.end.i
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_78
# BB#77:                                # %cond.true.23.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$0, 1(%rax)
	jmp	.LBB15_79
.LBB15_78:                              # %cond.false.33.i
	xorl	%esi, %esi
	callq	spputc
.LBB15_79:                              # %if.end.81
	movl	36(%r15), %eax
	andl	44(%r15), %eax
	testb	$1, %al
	je	.LBB15_89
# BB#80:                                # %if.then.85
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_82
# BB#81:                                # %cond.true.i.398
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$-116, 1(%rax)
	jmp	.LBB15_83
.LBB15_82:                              # %cond.false.i.400
	movl	$140, %esi
	callq	spputc
.LBB15_83:                              # %cff_put_int.exit
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_85
# BB#84:                                # %cond.true.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_86
.LBB15_85:                              # %cond.false.i.i
	movl	$12, %esi
	callq	spputc
.LBB15_86:                              # %cond.end.i.i
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_88
# BB#87:                                # %cond.true.23.i.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$1, 1(%rax)
	jmp	.LBB15_89
.LBB15_88:                              # %cond.false.33.i.i
	movl	$1, %esi
	callq	spputc
.LBB15_89:                              # %if.end.86
	movss	48(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB15_90
	jnp	.LBB15_96
.LBB15_90:                              # %if.then.i.118
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_92
# BB#91:                                # %cond.true.i.i.122
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_93
.LBB15_92:                              # %cond.false.i.i.124
	movl	$12, %esi
	callq	spputc
.LBB15_93:                              # %cond.end.i.i.126
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_95
# BB#94:                                # %cond.true.23.i.i.128
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$2, 1(%rax)
	jmp	.LBB15_96
.LBB15_95:                              # %cond.false.33.i.i.130
	movl	$2, %esi
	callq	spputc
.LBB15_96:                              # %cff_put_real_if_ne.exit
	movl	72(%r15), %esi
	cmpl	$-100, %esi
	je	.LBB15_103
# BB#97:                                # %if.then.i.132
	movq	%r14, %rdi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_99
# BB#98:                                # %cond.true.i.i.136
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_100
.LBB15_99:                              # %cond.false.i.i.138
	movl	$12, %esi
	callq	spputc
.LBB15_100:                             # %cond.end.i.i.140
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_102
# BB#101:                               # %cond.true.23.i.i.142
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$3, 1(%rax)
	jmp	.LBB15_103
.LBB15_102:                             # %cond.false.33.i.i.144
	movl	$3, %esi
	callq	spputc
.LBB15_103:                             # %cff_put_int_if_ne.exit
	movl	76(%r15), %esi
	cmpl	$50, %esi
	je	.LBB15_110
# BB#104:                               # %if.then.i.147
	movq	%r14, %rdi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_106
# BB#105:                               # %cond.true.i.i.152
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_107
.LBB15_106:                             # %cond.false.i.i.154
	movl	$12, %esi
	callq	spputc
.LBB15_107:                             # %cond.end.i.i.156
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_109
# BB#108:                               # %cond.true.23.i.i.158
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$4, 1(%rax)
	jmp	.LBB15_110
.LBB15_109:                             # %cond.false.33.i.i.160
	movl	$4, %esi
	callq	spputc
.LBB15_110:                             # %cff_put_int_if_ne.exit148
	movl	152(%rbp), %esi
	testl	%esi, %esi
	je	.LBB15_117
# BB#111:                               # %if.then.i.163
	movq	%r14, %rdi
	callq	cff_put_int
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_113
# BB#112:                               # %cond.true.i.i.168
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_114
.LBB15_113:                             # %cond.false.i.i.170
	movl	$12, %esi
	callq	spputc
.LBB15_114:                             # %cond.end.i.i.172
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_116
# BB#115:                               # %cond.true.23.i.i.174
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$5, 1(%rax)
	jmp	.LBB15_117
.LBB15_116:                             # %cond.false.33.i.i.176
	movl	$5, %esi
	callq	spputc
.LBB15_117:                             # %if.end.88
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movss	80(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jne	.LBB15_124
# BB#118:                               # %if.end.88
	ucomiss	.LCPI15_0(%rip), %xmm0
	jne	.LBB15_124
	jp	.LBB15_124
# BB#119:                               # %lor.lhs.false.93
	movss	84(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jne	.LBB15_124
	jp	.LBB15_124
# BB#120:                               # %lor.lhs.false.97
	movss	88(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB15_124
	jp	.LBB15_124
# BB#121:                               # %lor.lhs.false.101
	movss	92(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB15_124
	jp	.LBB15_124
# BB#122:                               # %lor.lhs.false.105
	movss	96(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jne	.LBB15_124
	jp	.LBB15_124
# BB#123:                               # %lor.lhs.false.109
	movss	100(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB15_124
	jnp	.LBB15_130
.LBB15_124:                             # %if.then.113
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movss	84(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movss	88(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movss	92(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movss	96(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movss	100(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_126
# BB#125:                               # %cond.true.i.182
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_127
.LBB15_126:                             # %cond.false.i.184
	movl	$12, %esi
	callq	spputc
.LBB15_127:                             # %cond.end.i.186
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_129
# BB#128:                               # %cond.true.23.i.188
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$7, 1(%rax)
	jmp	.LBB15_130
.LBB15_129:                             # %cond.false.33.i.190
	movl	$7, %esi
	callq	spputc
.LBB15_130:                             # %if.end.132
	movss	156(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB15_131
	jnp	.LBB15_136
.LBB15_131:                             # %if.then.i.194
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	cff_put_real
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_133
# BB#132:                               # %cond.true.i.i.199
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$12, 1(%rax)
	jmp	.LBB15_134
.LBB15_133:                             # %cond.false.i.i.201
	movl	$12, %esi
	callq	spputc
.LBB15_134:                             # %cond.end.i.i.203
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB15_137
# BB#135:                               # %cond.true.23.i.i.205
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$8, 1(%rax)
.LBB15_136:                             # %cff_put_real_if_ne.exit195
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_137:                             # %cond.false.33.i.i.207
	movl	$8, %esi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end15:
	.size	cff_write_Top_common, .Lfunc_end15-cff_write_Top_common
	.cfi_endproc

	.align	16, 0x90
	.type	cff_put_int,@function
cff_put_int:                            # @cff_put_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 32
.Ltmp193:
	.cfi_offset %rbx, -32
.Ltmp194:
	.cfi_offset %r14, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB16_3
# BB#1:                                 # %if.then
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_10
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	addl	$139, %ebx
	movb	%bl, 1(%rax)
	jmp	.LBB16_19
.LBB16_3:                               # %if.else
	cmpl	$1131, %ebx             # imm = 0x46B
	ja	.LBB16_13
# BB#4:                                 # %if.then.18
	addl	$63124, %ebx            # imm = 0xF694
	jmp	.LBB16_5
.LBB16_10:                              # %cond.false
	addl	$139, %ebx
	jmp	.LBB16_11
.LBB16_13:                              # %if.else.20
	cmpl	$-1131, %ebx            # imm = 0xFFFFFFFFFFFFFB95
	jb	.LBB16_21
# BB#14:                                # %if.then.26
	movl	$64148, %edx            # imm = 0xFA94
	subl	%ebx, %edx
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_16
# BB#15:                                # %cond.true.i.39
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB16_17
.LBB16_21:                              # %if.else.29
	leal	32768(%rbx), %edx
	movq	120(%rdi), %rax
	movq	128(%rdi), %rcx
	cmpl	$65535, %edx            # imm = 0xFFFF
	ja	.LBB16_27
# BB#22:                                # %if.then.35
	cmpq	%rcx, %rax
	jb	.LBB16_23
# BB#24:                                # %cond.false.52
	movl	$28, %esi
	jmp	.LBB16_25
.LBB16_16:                              # %cond.false.i.43
	movzbl	%dh, %esi  # NOREX
	movl	%edx, %ebx
	callq	spputc
	movl	%ebx, %edx
.LBB16_17:                              # %cond.end.i.45
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_20
# BB#18:                                # %cond.true.25.i.48
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dl, 1(%rax)
	jmp	.LBB16_19
.LBB16_27:                              # %if.else.56
	cmpq	%rcx, %rax
	jb	.LBB16_28
# BB#29:                                # %cond.false.73
	movl	$29, %esi
	callq	spputc
	jmp	.LBB16_30
.LBB16_20:                              # %cond.false.36.i.51
	movzbl	%dl, %esi
	jmp	.LBB16_12
.LBB16_23:                              # %cond.true.44
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$28, 1(%rax)
	movq	8(%r14), %rdi
	jmp	.LBB16_5
.LBB16_28:                              # %cond.true.65
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$29, 1(%rax)
.LBB16_30:                              # %cond.end.75
	movl	%ebx, %edx
	sarl	$16, %edx
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_32
# BB#31:                                # %cond.true.i.77
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dh, 1(%rax)  # NOREX
	jmp	.LBB16_33
.LBB16_32:                              # %cond.false.i.81
	movzbl	%dh, %esi  # NOREX
	movl	%edx, %ebp
	callq	spputc
	movl	%ebp, %edx
.LBB16_33:                              # %cond.end.i.83
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_35
# BB#34:                                # %cond.true.25.i.86
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%dl, 1(%rax)
	movq	8(%r14), %rdi
	jmp	.LBB16_5
.LBB16_35:                              # %cond.false.36.i.89
	movzbl	%dl, %esi
.LBB16_25:                              # %cond.end.54
	callq	spputc
	movq	8(%r14), %rdi
.LBB16_5:                               # %if.then.18
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_7
# BB#6:                                 # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB16_8
.LBB16_7:                               # %cond.false.i
	movzbl	%bh, %esi  # NOREX
	callq	spputc
.LBB16_8:                               # %cond.end.i
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB16_11
# BB#9:                                 # %cond.true.25.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	%bl, 1(%rax)
.LBB16_19:                              # %if.end.80
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB16_11:                              # %cond.false.36.i
	movzbl	%bl, %esi
.LBB16_12:                              # %cond.false.36.i
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end16:
	.size	cff_put_int, .Lfunc_end16-cff_put_int
	.cfi_endproc

	.align	16, 0x90
	.type	cff_put_real,@function
cff_put_real:                           # @cff_put_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp198:
	.cfi_def_cfa_offset 80
.Ltmp199:
	.cfi_offset %rbx, -24
.Ltmp200:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	%esi, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB17_2
	jp	.LBB17_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	jmp	cff_put_int             # TAILCALL
.LBB17_2:                               # %if.else
	leaq	(%rsp), %rbx
	movl	$.L.str.1, %esi
	movb	$1, %al
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	8(%r14), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB17_4
# BB#3:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$30, 1(%rax)
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movl	$30, %esi
	callq	spputc
.LBB17_5:                               # %for.cond
	movb	$-1, %al
	jmp	.LBB17_6
	.align	16, 0x90
.LBB17_19:                              # %for.inc
                                        #   in Loop: Header=BB17_6 Depth=1
	incq	%rbx
.LBB17_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rbx), %edx
	leal	-43(%rdx), %esi
	cmpl	$26, %esi
	jbe	.LBB17_24
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB17_6 Depth=1
	cmpl	$101, %edx
	je	.LBB17_11
# BB#8:                                 # %for.cond
                                        #   in Loop: Header=BB17_6 Depth=1
	testl	%edx, %edx
	je	.LBB17_20
.LBB17_9:                               # %sw.default
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$13, %ecx
	jmp	.LBB17_13
	.align	16, 0x90
.LBB17_24:                              # %for.cond
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$10, %ecx
	jmpq	*.LJTI17_0(,%rsi,8)
.LBB17_12:                              # %sw.bb.31
                                        #   in Loop: Header=BB17_6 Depth=1
	addl	$-48, %edx
	movl	%edx, %ecx
.LBB17_13:                              # %sw.epilog
                                        #   in Loop: Header=BB17_6 Depth=1
	movzbl	%al, %eax
	cmpl	$255, %eax
	je	.LBB17_14
# BB#15:                                # %if.else.38
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	8(%r14), %rdi
	movq	120(%rdi), %rdx
	cmpq	128(%rdi), %rdx
	jae	.LBB17_17
# BB#16:                                # %cond.true.49
                                        #   in Loop: Header=BB17_6 Depth=1
	leaq	1(%rdx), %rsi
	movq	%rsi, 120(%rdi)
	andl	$240, %eax
	addl	%eax, %ecx
	movb	%cl, 1(%rdx)
	jmp	.LBB17_18
	.align	16, 0x90
.LBB17_14:                              # %if.then.36
                                        #   in Loop: Header=BB17_6 Depth=1
	shll	$4, %ecx
	orl	$15, %ecx
	movb	%cl, %al
	incq	%rbx
	jmp	.LBB17_6
	.align	16, 0x90
.LBB17_17:                              # %cond.false.62
                                        #   in Loop: Header=BB17_6 Depth=1
	andl	$240, %eax
	addl	%eax, %ecx
	movzbl	%cl, %esi
	callq	spputc
.LBB17_18:                              # %for.inc
                                        #   in Loop: Header=BB17_6 Depth=1
	movb	$-1, %al
	jmp	.LBB17_19
.LBB17_11:                              # %sw.bb.24
                                        #   in Loop: Header=BB17_6 Depth=1
	leaq	1(%rbx), %rcx
	movzbl	1(%rbx), %edx
	cmpl	$45, %edx
	sete	%dl
	cmoveq	%rcx, %rbx
	movzbl	%dl, %ecx
	addl	$11, %ecx
	jmp	.LBB17_13
.LBB17_10:                              # %sw.bb.23
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$14, %ecx
	jmp	.LBB17_13
.LBB17_20:                              # %done
	movq	8(%r14), %rdi
	movq	120(%rdi), %rcx
	cmpq	128(%rdi), %rcx
	jae	.LBB17_22
# BB#21:                                # %cond.true.83
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%rdi)
	movb	%al, 1(%rcx)
	jmp	.LBB17_23
.LBB17_22:                              # %cond.false.93
	movzbl	%al, %esi
	callq	spputc
.LBB17_23:                              # %if.end.98
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	cff_put_real, .Lfunc_end17-cff_put_real
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_19
	.quad	.LBB17_9
	.quad	.LBB17_10
	.quad	.LBB17_13
	.quad	.LBB17_9
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_12
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_9
	.quad	.LBB17_11

	.text
	.align	16, 0x90
	.type	cff_put_CharString,@function
cff_put_CharString:                     # @cff_put_CharString
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp203:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp204:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp205:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp207:
	.cfi_def_cfa_offset 128
.Ltmp208:
	.cfi_offset %rbx, -56
.Ltmp209:
	.cfi_offset %r12, -48
.Ltmp210:
	.cfi_offset %r13, -40
.Ltmp211:
	.cfi_offset %r14, -32
.Ltmp212:
	.cfi_offset %r15, -24
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	%edx, %ebx
	movq	%rsi, %r14
	movl	512(%rbp), %r15d
	movq	8(%rdi), %r13
	cmpl	$2, 128(%rbp)
	je	.LBB18_3
# BB#1:                                 # %land.rhs.i
	testb	$2, (%rdi)
	jne	.LBB18_2
.LBB18_3:                               # %if.else
	testl	%r15d, %r15d
	js	.LBB18_5
# BB#4:                                 # %lor.lhs.false
	testb	$1, (%rdi)
	jne	.LBB18_6
.LBB18_5:                               # %if.then.9
	leaq	16(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	sputs
	jmp	.LBB18_13
.LBB18_2:                               # %if.then
	movq	16(%rbp), %rax
	movq	%rax, 56(%rsp)
	leaq	16(%rsp), %r12
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	gs_glyph_data_from_string
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	psf_convert_type1_to_type2
	jmp	.LBB18_13
.LBB18_6:                               # %if.else.11
	cmpl	%ebx, %r15d
	ja	.LBB18_13
# BB#7:                                 # %if.then.13
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movw	$4330, 66(%rsp)         # imm = 0x10EA
	testl	%r15d, %r15d
	je	.LBB18_10
# BB#8:                                 # %for.body.lr.ph
	movslq	%r15d, %rax
	leaq	(%rax,%r14), %r13
	movl	%r15d, %r12d
	.align	16, 0x90
.LBB18_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	cmpl	$50, %r12d
	movl	$50, %ebp
	cmovbl	%r12d, %ebp
	movq	%r13, %rsi
	subq	%rax, %rsi
	leaq	16(%rsp), %rdi
	movl	%ebp, %edx
	leaq	66(%rsp), %rcx
	callq	gs_type1_decrypt
	subl	%ebp, %r12d
	jne	.LBB18_9
.LBB18_10:                              # %for.end
	cmpl	%ebx, %r15d
	movq	8(%rsp), %rbp           # 8-byte Reload
	je	.LBB18_13
# BB#11:                                # %for.body.26.lr.ph
	movl	%ebx, %eax
	subl	%r15d, %ebx
	addq	%rax, %r14
	leaq	16(%rsp), %r12
	leaq	68(%rsp), %r15
	.align	16, 0x90
.LBB18_12:                              # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	cmpl	$50, %ebx
	movl	$50, %r13d
	cmovbl	%ebx, %r13d
	movq	%r14, %rsi
	subq	%rax, %rsi
	movq	%r12, %rdi
	movl	%r13d, %edx
	leaq	66(%rsp), %rcx
	callq	gs_type1_decrypt
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	sputs
	subl	%r13d, %ebx
	jne	.LBB18_12
.LBB18_13:                              # %cleanup.51
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	cff_put_CharString, .Lfunc_end18-cff_put_CharString
	.cfi_endproc

	.type	default_defaultWidthX,@object # @default_defaultWidthX
	.section	.rodata,"a",@progbits
	.globl	default_defaultWidthX
	.align	8
default_defaultWidthX:
	.quad	0                       # 0x0
	.size	default_defaultWidthX, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"psf_write_type2_font"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%g"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cff_write_Subrs_offsets"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cff_write_CharStrings_offsets"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.cst4,"aM",@progbits,4
.L.str.4:
	.asciz	"\001\000\004"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"cff_write_Subrs"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cff_write_CharStrings"
	.size	.L.str.6, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
