	.text
	.file	"gdevpdtt.bc"
	.globl	pdf_text_release_cgp
	.align	16, 0x90
	.type	pdf_text_release_cgp,@function
pdf_text_release_cgp:                   # @pdf_text_release_cgp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	552(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	144(%rbx), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	movq	$0, 552(%rbx)
.LBB0_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end0:
	.size	pdf_text_release_cgp, .Lfunc_end0-pdf_text_release_cgp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gdev_pdf_text_begin
	.align	16, 0x90
	.type	gdev_pdf_text_begin,@function
gdev_pdf_text_begin:                    # @gdev_pdf_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 176
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movq	%r15, 112(%rsp)
	leaq	80(%rcx), %rdi
	leaq	132(%rsi), %rsi
	leaq	88(%rsp), %rbx
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	leaq	72(%rsp), %rsi
	xorps	%xmm1, %xmm1
	movq	%rbx, %rdi
	callq	gs_distance_transform
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	fabs
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	xorl	%r14d, %r14d
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_4
# BB#1:                                 # %if.else
	xorpd	.LCPI1_1(%rip), %xmm0
	movl	$2, %r14d
	ucomisd	%xmm1, %xmm0
	ja	.LBB1_4
# BB#2:                                 # %if.else.8
	movapd	%xmm1, %xmm0
	callq	fabs
	movl	$1, %r14d
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_4
# BB#3:                                 # %if.else.14
	xorpd	.LCPI1_1(%rip), %xmm0
	ucomisd	32(%rsp), %xmm0         # 8-byte Folded Reload
	setbe	%al
	movzbl	%al, %r14d
	addq	$3, %r14
.LBB1_4:                                # %if.end.24
	movl	16(%rbp), %r13d
	movq	%r12, %rdi
	callq	pdf_current_page
	addq	%r13, 112(%rax,%r14,8)
	movl	$0, 30688(%r12)
	testb	$-8, 1(%rbp)
	movq	56(%rsp), %r10          # 8-byte Reload
	movq	64(%rsp), %r13          # 8-byte Reload
	je	.LBB1_8
# BB#5:                                 # %land.lhs.true
	movq	56(%r15), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB1_8
# BB#6:                                 # %if.then.27
	movq	26592(%r12), %rax
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	movq	%r10, %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%r10, %rbx
	callq	pdf_compare_text_state_for_charpath
	movq	%rbx, %r10
	testl	%eax, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.31
	movl	$63488, %eax            # imm = 0xF800
	andl	(%rbp), %eax
	movl	%eax, 30688(%r12)
.LBB1_8:                                # %if.end.36
	movq	192(%rsp), %rdx
	movq	184(%rsp), %rbx
	movl	128(%r13), %eax
	leal	-51(%rax), %ecx
	cmpl	$4, %ecx
	jb	.LBB1_25
# BB#9:                                 # %if.end.36
	cmpl	$3, %eax
	je	.LBB1_25
# BB#10:                                # %if.end.36
	testl	%eax, %eax
	jne	.LBB1_20
# BB#11:                                # %land.lhs.true.59
	cmpl	$9, 376(%r13)
	je	.LBB1_20
# BB#12:                                # %if.then.62
	movq	%r10, %r14
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	$st_pdf_text_enum, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB1_72
# BB#13:                                # %do.body.68
	movq	$1, 160(%rbp)
	movq	%rbx, 168(%rbp)
	movq	$rc_free_text_enum, 176(%rbp)
	movq	$0, 448(%rbp)
	movl	$0, 464(%rbp)
	movl	$0, 30524(%r12)
	movl	$0, 468(%rbp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 432(%rbp)
	movq	$0, 552(%rbp)
	movq	$-1, 560(%rbp)
	movq	112(%rsp), %rax
	movq	%rbx, 24(%rsp)
	movq	176(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$pdf_text_procs, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	callq	gs_text_enum_init
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_41
# BB#14:                                # %do.body.89.preheader
	movq	%r14, %rbx
	movq	%rbp, %r13
	addq	$248, %r13
	leaq	88(%rsp), %r14
	leaq	72(%rsp), %r15
	.align	16, 0x90
.LBB1_15:                               # %do.body.89
                                        # =>This Inner Loop Header: Depth=1
	movq	112(%rbp), %rax
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*256(%rax)
	cmpl	$1, %eax
	jne	.LBB1_17
# BB#16:                                # %if.then.94
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	240(%rbp), %rcx
	shlq	$4, %rcx
	movq	(%r13,%rcx), %rcx
	cmpl	$3, 128(%rcx)
	je	.LBB1_24
.LBB1_17:                               # %do.cond.105
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$2, %eax
	je	.LBB1_19
# BB#18:                                # %do.cond.105
                                        #   in Loop: Header=BB1_15 Depth=1
	testl	%eax, %eax
	jns	.LBB1_15
.LBB1_19:                               # %if.end.113.if.else.138_crit_edge.critedge
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	gs_text_release
	movq	%rbx, %r10
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	184(%rsp), %rbx
	movq	192(%rsp), %rdx
.LBB1_20:                               # %if.end.113.if.else.138_crit_edge
	movl	(%rbp), %ecx
	jmp	.LBB1_21
.LBB1_24:                               # %if.end.113
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	gs_text_release
	movq	%rbx, %r10
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	184(%rsp), %rbx
.LBB1_25:                               # %lor.lhs.false.115
	movl	(%rbp), %ecx
	movq	%rbp, %r14
	testb	$-8, %ch
	jne	.LBB1_30
# BB#26:                                # %land.lhs.true.121
	movl	%ecx, %eax
	andl	$131584, %eax           # imm = 0x20200
	cmpl	$131584, %eax           # imm = 0x20200
	jne	.LBB1_27
# BB#28:                                # %land.lhs.true.129
	cmpl	$3, 252(%r10)
	movq	%r14, %rbp
	movq	192(%rsp), %rdx
	je	.LBB1_21
# BB#29:                                # %if.then.132
	movq	%rbp, %r14
	leaq	112(%rsp), %rsi
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gx_hld_stringwidth_begin
	movq	%rbp, %r10
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB1_30
	jmp	.LBB1_72
.LBB1_27:
	movq	%r14, %rbp
	movq	192(%rsp), %rdx
.LBB1_21:                               # %if.else.138
	testb	$4, %ch
	jne	.LBB1_42
# BB#22:                                # %land.lhs.true.142
	cmpl	$3, 252(%r10)
	movq	112(%rsp), %r8
	jne	.LBB1_45
# BB#23:                                # %land.lhs.true.142
	testq	%r8, %r8
	movq	%r8, %rax
	jne	.LBB1_43
	jmp	.LBB1_46
.LBB1_42:                               # %lor.lhs.false.146
	movq	112(%rsp), %r8
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.LBB1_46
.LBB1_43:                               # %lor.lhs.false.149
	testb	$1, 97(%r8)
	je	.LBB1_45
# BB#44:                                # %lor.lhs.false.154
	cmpl	$0, 30692(%r12)
	je	.LBB1_48
.LBB1_45:
	movq	%r8, %rax
.LBB1_46:                               # %if.then.156
	movq	%rdx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	176(%rsp), %rcx
	movq	%rcx, (%rsp)
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movq	%rax, %r8
.LBB1_47:                               # %cleanup.224
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gx_default_text_begin
	movl	%eax, %r15d
	jmp	.LBB1_72
.LBB1_48:                               # %if.else.158
	movq	%rbp, %r14
	testb	$-8, %ch
	je	.LBB1_30
# BB#49:                                # %if.then.162
	movq	192(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r14, %rdx
	movq	%r13, %rcx
	jmp	.LBB1_47
.LBB1_30:                               # %if.end.167
	cmpl	$0, 9524(%r12)
	jne	.LBB1_39
# BB#31:                                # %if.then.169
	testb	$4, 1(%r14)
	je	.LBB1_39
# BB#32:                                # %if.then.2.i
	movl	252(%r10), %eax
	movl	%eax, %ecx
	orl	$4, %ecx
	cmpl	$7, %ecx
	je	.LBB1_39
# BB#33:                                # %if.then.5.i
	cmpl	$2, 152(%r13)
	jne	.LBB1_50
# BB#34:                                # %if.then.7.i
	movq	1760(%r10), %rdx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB1_37
# BB#35:                                # %cond.end.i
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gx_remap_color
	movq	%rbp, %r10
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB1_72
# BB#36:                                # %cond.end.if.end_crit_edge.i
	movq	1760(%r10), %rdx
.LBB1_37:                               # %if.end.i
	leaq	8144(%r12), %rcx
	leaq	7504(%r12), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r10, %rbp
	callq	pdf_set_drawing_color
	movl	%eax, %r15d
.LBB1_38:                               # %pdf_prepare_text_color.exit
	testl	%r15d, %r15d
	movq	%rbp, %r10
	jne	.LBB1_72
	jmp	.LBB1_39
.LBB1_50:                               # %if.else.i
	cmpl	$6, %eax
	ja	.LBB1_56
# BB#51:                                # %if.else.i
	movl	$85, %ecx
	btl	%eax, %ecx
	jae	.LBB1_56
# BB#52:                                # %land.lhs.true.28.i
	cmpl	$0, 9908(%r12)
	jne	.LBB1_56
# BB#53:                                # %if.then.30.i
	movq	1760(%r10), %rcx
	movl	$gx_dc_type_data_none, %edx
	cmpq	%rdx, (%rcx)
	jne	.LBB1_56
# BB#54:                                # %cond.end.39.i
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gx_remap_color
	movq	%rbp, %r10
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB1_72
# BB#55:                                # %cond.end.39.if.end.44_crit_edge.i
	movl	252(%r10), %eax
.LBB1_56:                               # %if.end.44.i
	cmpl	$6, %eax
	ja	.LBB1_39
# BB#57:                                # %if.end.44.i
	movl	$102, %ecx
	btl	%eax, %ecx
	jae	.LBB1_39
# BB#58:                                # %if.then.56.i
	cmpl	$0, 9904(%r12)
	je	.LBB1_59
# BB#65:                                # %if.else.82.i
	movl	$0, 9904(%r12)
	jmp	.LBB1_66
.LBB1_59:                               # %if.then.58.i
	cmpl	$0, 9908(%r12)
	je	.LBB1_61
# BB#60:                                # %if.then.61.i
	movl	$0, 9908(%r12)
	jmp	.LBB1_66
.LBB1_61:                               # %if.else.63.i
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gs_swapcolors_quick
	movq	%rbp, %r10
	movq	1760(%r10), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB1_66
# BB#62:                                # %cond.end.72.i
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gx_remap_color
	movq	%rbp, %r10
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB1_63
.LBB1_66:                               # %if.end.84.i
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gs_swapcolors_quick
	movq	%rbp, %r10
	movq	1760(%r10), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, (%rax)
	je	.LBB1_67
.LBB1_39:                               # %do.body.176
	movl	$st_pdf_text_enum, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r10, %rbp
	callq	*72(%rbx)
	movq	%rbp, %r8
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB1_72
# BB#40:                                # %do.body.184
	movq	$1, 160(%rbp)
	movq	%rbx, 168(%rbp)
	movq	$rc_free_text_enum, 176(%rbp)
	movq	$0, 448(%rbp)
	movl	$0, 464(%rbp)
	movl	$0, 30524(%r12)
	movl	$0, 468(%rbp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 432(%rbp)
	movq	$0, 552(%rbp)
	movq	$-1, 560(%rbp)
	movq	112(%rsp), %rax
	movq	%rbx, 24(%rsp)
	movq	176(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$pdf_text_procs, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movq	%r8, %rcx
	movq	%r14, %r8
	movq	%r13, %r9
	callq	gs_text_enum_init
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_41
# BB#69:                                # %if.end.219
	cmpq	$0, 30472(%r12)
	je	.LBB1_71
# BB#70:                                # %if.then.222
	movl	$1, 384(%rbp)
.LBB1_71:                               # %if.end.223
	movq	192(%rsp), %rax
	movq	%rbp, (%rax)
	xorl	%r15d, %r15d
	jmp	.LBB1_72
.LBB1_41:                               # %if.then.86
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB1_72:                               # %cleanup.224
	movl	%r15d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_67:                               # %cond.end.93.i
	movq	%r10, %rdi
	movq	%r10, %rbp
	callq	gx_remap_color
	movl	%eax, %r15d
	cmpl	$-103, %r15d
	jne	.LBB1_38
# BB#68:                                # %if.then.96.i
	movl	$1, 9904(%r12)
	movl	$-103, %r15d
	jmp	.LBB1_72
.LBB1_63:                               # %cond.end.72.i
	cmpl	$-103, %r15d
	jne	.LBB1_72
# BB#64:                                # %if.then.75.i
	movl	$1, 9908(%r12)
	movl	$-103, %r15d
	jmp	.LBB1_72
.Lfunc_end1:
	.size	gdev_pdf_text_begin, .Lfunc_end1-gdev_pdf_text_begin
	.cfi_endproc

	.globl	pdf_locate_font_cache_elem
	.align	16, 0x90
	.type	pdf_locate_font_cache_elem,@function
pdf_locate_font_cache_elem:             # @pdf_locate_font_cache_elem
	.cfi_startproc
# BB#0:                                 # %entry
	movq	28784(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB2_4
# BB#1:
	addq	$28784, %rdi            # imm = 0x7070
	movq	56(%rsi), %rdx
	.align	16, 0x90
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 8(%rcx)
	movq	%rdi, %rax
	je	.LBB2_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rcx, %rdi
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movl	$0, %eax
	jne	.LBB2_3
.LBB2_4:                                # %cleanup
	retq
.Lfunc_end2:
	.size	pdf_locate_font_cache_elem, .Lfunc_end2-pdf_locate_font_cache_elem
	.cfi_endproc

	.globl	pdf_free_font_cache
	.align	16, 0x90
	.type	pdf_free_font_cache,@function
pdf_free_font_cache:                    # @pdf_free_font_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	28784(%r14), %r15
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_6:                                # %if.then.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%r15, (%rcx)
	movq	1728(%r12), %rdi
	movq	32(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	1728(%r12), %rdi
	movq	40(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	$0, (%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 48(%rbx)
	movq	1728(%r12), %rdi
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB3_1:                                # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	testq	%r15, %r15
	je	.LBB3_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%r15, %rbx
	movq	(%rbx), %r15
	movq	48(%rbx), %r12
	movq	28784(%r12), %rax
	testq	%rax, %rax
	je	.LBB3_1
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	leaq	28784(%r12), %rcx
	.align	16, 0x90
.LBB3_5:                                # %for.body.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %rax
	je	.LBB3_6
# BB#4:                                 # %for.cond.i
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	%rax, %rcx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB3_5
	jmp	.LBB3_1
.LBB3_7:                                # %while.end
	movq	$0, 28784(%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	pdf_free_font_cache, .Lfunc_end3-pdf_free_font_cache
	.cfi_endproc

	.globl	pdf_attached_font_resource
	.align	16, 0x90
	.type	pdf_attached_font_resource,@function
pdf_attached_font_resource:             # @pdf_attached_font_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 96
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	28784(%rbx), %r12
	movb	$1, %cl
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.LBB4_1
# BB#4:
	leaq	28784(%rbx), %r14
	movq	56(%r15), %rax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB4_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rax, 8(%r12)
	je	.LBB4_6
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r12, %r14
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.LBB4_5
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB4_29
.LBB4_1:
	xorl	%eax, %eax
	jmp	.LBB4_29
.LBB4_6:                                # %pdf_locate_font_cache_elem.exit
	xorl	%edx, %edx
	testq	%r14, %r14
	movl	$0, %eax
	je	.LBB4_29
# BB#7:                                 # %land.lhs.true
	testq	%r13, %r13
	je	.LBB4_9
# BB#8:                                 # %land.lhs.true
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_11
.LBB4_9:                                # %lor.lhs.false
	testq	%r8, %r8
	je	.LBB4_28
# BB#10:                                # %lor.lhs.false
	movq	40(%r12), %rax
	testq	%rax, %rax
	jne	.LBB4_28
.LBB4_11:                               # %if.then
	movl	128(%r15), %eax
	cmpq	$14, %rax
	jbe	.LBB4_46
# BB#12:                                # %if.then
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	%eax, %ecx
	cmpl	$54, %eax
	ja	.LBB4_17
# BB#13:                                # %if.then
	movabsq	$33781395251789824, %rax # imm = 0x78040000000000
	btq	%rcx, %rax
	jb	.LBB4_14
	jmp	.LBB4_17
.LBB4_46:                               # %if.then
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	$65536, %ecx            # imm = 0x10000
	xorl	%ebp, %ebp
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_14:                               # %sw.bb.1.i.i
	movl	$256, %ebp              # imm = 0x100
	movl	$256, %ecx              # imm = 0x100
	jmp	.LBB4_18
.LBB4_17:                               # %sw.default.i.i
	movl	$65536, %ebp            # imm = 0x10000
	movl	$65536, %ecx            # imm = 0x10000
.LBB4_18:                               # %font_cache_elem_array_sizes.exit.i
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leal	7(%rcx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rcx,%rax), %esi
	sarl	$3, %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	1728(%rbx), %rdi
	movl	$.L.str.12, %edx
	callq	*64(%rdi)
	movq	%rax, 32(%r12)
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	jle	.LBB4_23
# BB#19:                                # %cond.true.i
	movq	1728(%rbx), %rdi
	movq	64(%rdi), %rax
	leal	(,%rbp,8), %esi
	movl	128(%r15), %ecx
	cmpq	$53, %rcx
	ja	.LBB4_21
# BB#20:                                # %cond.true.i
	movl	$2, %edx
	movq	%rbp, %r8
	movabsq	$15762598695796744, %rbp # imm = 0x38000000000008
	btq	%rcx, %rbp
	movq	%r8, %rbp
	jb	.LBB4_22
.LBB4_21:                               # %lor.rhs.i
	cmpl	$54, %ecx
	sete	%cl
	movzbl	%cl, %edx
	incl	%edx
.LBB4_22:                               # %lor.end.i
	imull	%edx, %esi
	movl	$.L.str.12, %edx
	callq	*%rax
	movq	%rax, %rcx
	movq	32(%r12), %rax
.LBB4_23:                               # %cond.end.i
	movq	%rcx, 40(%r12)
	testq	%rax, %rax
	je	.LBB4_47
# BB#24:                                # %lor.lhs.false.30.i
	testl	%ebp, %ebp
	je	.LBB4_26
# BB#25:                                # %lor.lhs.false.30.i
	testq	%rcx, %rcx
	jne	.LBB4_26
.LBB4_47:                               # %alloc_font_cache_elem_arrays.exit
	movq	1728(%rbx), %rdi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	1728(%rbx), %rdi
	movq	40(%r12), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movl	$-25, %eax
	jmp	.LBB4_45
.LBB4_26:                               # %if.end.i
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 16(%r12)
	movl	%ebp, 20(%r12)
	movslq	28(%rsp), %rdx          # 4-byte Folded Reload
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	40(%r12), %rdi
	testq	%rdi, %rdi
	movq	16(%rsp), %r9           # 8-byte Reload
	movq	%rbp, %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	(%rsp), %r8             # 8-byte Reload
	je	.LBB4_28
# BB#27:                                # %if.then.53.i
	movslq	%eax, %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	%r9, %rbx
	movq	%r8, %r15
	callq	memset
	movq	%r15, %r8
	movq	%rbx, %r9
.LBB4_28:                               # %cond.false
	movq	(%r14), %rax
	movq	24(%rax), %rax
	xorl	%ecx, %ecx
	movq	%r14, %rdx
.LBB4_29:                               # %cond.end
	movq	%rax, (%rbp)
	testq	%r13, %r13
	je	.LBB4_33
# BB#30:                                # %if.then.16
	xorl	%eax, %eax
	testb	%cl, %cl
	jne	.LBB4_32
# BB#31:                                # %cond.false.19
	movq	(%rdx), %rax
	movq	32(%rax), %rax
.LBB4_32:                               # %cond.end.21
	movq	%rax, (%r13)
.LBB4_33:                               # %if.end.23
	testq	%r8, %r8
	je	.LBB4_37
# BB#34:                                # %if.then.25
	xorl	%eax, %eax
	testb	%cl, %cl
	jne	.LBB4_36
# BB#35:                                # %cond.false.28
	movq	(%rdx), %rax
	movq	40(%rax), %rax
.LBB4_36:                               # %cond.end.30
	movq	%rax, (%r8)
.LBB4_37:                               # %if.end.32
	movq	96(%rsp), %rsi
	testq	%r9, %r9
	je	.LBB4_41
# BB#38:                                # %if.then.34
	xorl	%eax, %eax
	testb	%cl, %cl
	jne	.LBB4_40
# BB#39:                                # %cond.false.37
	movq	(%rdx), %rax
	movl	16(%rax), %eax
.LBB4_40:                               # %cond.end.39
	movl	%eax, (%r9)
.LBB4_41:                               # %if.end.41
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB4_45
# BB#42:                                # %if.then.43
	xorl	%eax, %eax
	testb	%cl, %cl
	movl	$0, %ecx
	jne	.LBB4_44
# BB#43:                                # %cond.false.46
	movq	(%rdx), %rcx
	movl	20(%rcx), %ecx
.LBB4_44:                               # %cond.end.48
	movl	%ecx, (%rsi)
.LBB4_45:                               # %cleanup.51
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_15:                               # %sw.bb.2.i.i
	movl	492(%r15), %ebp
	incl	%ebp
	movl	%ebp, %ecx
	jmp	.LBB4_18
.LBB4_16:                               # %sw.bb.3.i.i
	movl	696(%r15), %ebp
	movl	%ebp, %ecx
	jmp	.LBB4_18
.Lfunc_end4:
	.size	pdf_attached_font_resource, .Lfunc_end4-pdf_attached_font_resource
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_18
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_17
	.quad	.LBB4_17
	.quad	.LBB4_17
	.quad	.LBB4_17
	.quad	.LBB4_15
	.quad	.LBB4_17
	.quad	.LBB4_16
	.quad	.LBB4_17
	.quad	.LBB4_17
	.quad	.LBB4_14

	.text
	.globl	pdf_attach_font_resource
	.align	16, 0x90
	.type	pdf_attach_font_resource,@function
pdf_attach_font_resource:               # @pdf_attach_font_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -48
.Ltmp43:
	.cfi_offset %r12, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	28784(%rbx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_4
# BB#1:
	leaq	28784(%rbx), %rsi
	movq	56(%r15), %rdx
	.align	16, 0x90
.LBB5_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 8(%rcx)
	movq	%rsi, %rax
	je	.LBB5_4
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rcx, %rsi
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movl	$0, %eax
	jne	.LBB5_3
.LBB5_4:                                # %pdf_locate_font_cache_elem.exit
	movl	72(%r14), %edx
	movl	128(%r15), %ecx
	cmpl	%ecx, %edx
	jne	.LBB5_6
# BB#5:
	movl	%edx, %ecx
	jmp	.LBB5_8
.LBB5_6:                                # %land.lhs.true
	movl	$-28, %ebp
	cmpl	$3, %edx
	jne	.LBB5_20
# BB#7:                                 # %land.lhs.true
	leal	-51(%rcx), %edx
	cmpl	$3, %edx
	ja	.LBB5_20
.LBB5_8:                                # %if.end
	movl	%ecx, %edx
	cmpl	$14, %ecx
	jbe	.LBB5_21
# BB#9:                                 # %if.end
	cmpl	$54, %ecx
	ja	.LBB5_14
# BB#10:                                # %if.end
	movabsq	$33781395251789824, %rcx # imm = 0x78040000000000
	btq	%rdx, %rcx
	jb	.LBB5_11
	jmp	.LBB5_14
.LBB5_21:                               # %if.end
	xorl	%r12d, %r12d
	movl	$65536, %ecx            # imm = 0x10000
	jmpq	*.LJTI5_0(,%rdx,8)
.LBB5_11:                               # %sw.bb.1.i
	movl	$256, %ecx              # imm = 0x100
	movl	$256, %r12d             # imm = 0x100
	jmp	.LBB5_15
.LBB5_14:                               # %sw.default.i
	movl	$65536, %ecx            # imm = 0x10000
	movl	$65536, %r12d           # imm = 0x10000
.LBB5_15:                               # %font_cache_elem_array_sizes.exit
	leal	7(%rcx), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	testq	%rax, %rax
	je	.LBB5_18
# BB#16:                                # %if.then.16
	movq	(%rax), %rbx
	xorl	%ebp, %ebp
	cmpq	%r14, 24(%rbx)
	je	.LBB5_20
# BB#17:                                # %if.end.20
	leal	7(%rcx,%rdx), %eax
	sarl	$3, %eax
	movq	%r14, 24(%rbx)
	movq	32(%rbx), %rdi
	movslq	%eax, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	memset
	movq	40(%rbx), %rdi
	movslq	%r12d, %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB5_20
.LBB5_18:                               # %if.else
	movq	1728(%rbx), %rdi
	movl	$st_pdf_font_cache_elem, %esi
	movl	$.L.str.3, %edx
	callq	*72(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB5_20
# BB#19:                                # %if.end.30
	movq	%r14, 24(%rax)
	movq	56(%r15), %rcx
	movq	%rcx, 8(%rax)
	movl	$0, 16(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	%rbx, 48(%rax)
	movq	28784(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 28784(%rbx)
	xorl	%ebp, %ebp
.LBB5_20:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_12:                               # %sw.bb.2.i
	movl	492(%r15), %ecx
	incl	%ecx
	movl	%ecx, %r12d
	jmp	.LBB5_15
.LBB5_13:                               # %sw.bb.3.i
	movl	696(%r15), %ecx
	movl	%ecx, %r12d
	jmp	.LBB5_15
.Lfunc_end5:
	.size	pdf_attach_font_resource, .Lfunc_end5-pdf_attach_font_resource
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_15
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_12
	.quad	.LBB5_14
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_11

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	973078528               # float 4.8828125E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_2:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	pdf_font_orig_matrix
	.align	16, 0x90
	.type	pdf_font_orig_matrix,@function
pdf_font_orig_matrix:                   # @pdf_font_orig_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 16
	movl	128(%rdi), %ecx
	movl	$-15, %eax
	cmpq	$54, %rcx
	ja	.LBB6_22
# BB#1:                                 # %entry
	movabsq	$33776997205279246, %rdx # imm = 0x7800000000020E
	btq	%rcx, %rdx
	jae	.LBB6_2
	.align	16, 0x90
.LBB6_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	movq	64(%rax), %rdi
	cmpq	%rax, %rdi
	jne	.LBB6_4
# BB#5:                                 # %while.end
	movl	%ecx, %edx
	cmpl	$54, %ecx
	ja	.LBB6_9
# BB#6:                                 # %while.end
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rdx, %rcx
	jae	.LBB6_9
# BB#7:                                 # %if.then
	movq	96(%rax), %rcx
	movq	%rcx, 16(%rsi)
	movupd	80(%rax), %xmm0
	movupd	%xmm0, (%rsi)
	jmp	.LBB6_21
.LBB6_9:                                # %if.else
	movss	104(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_13
	jp	.LBB6_13
# BB#10:                                # %lor.lhs.false.17
	movss	108(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_13
	jp	.LBB6_13
# BB#11:                                # %lor.lhs.false.20
	movss	112(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_13
	jp	.LBB6_13
# BB#12:                                # %lor.lhs.false.23
	movss	116(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_13
	jnp	.LBB6_15
.LBB6_13:                               # %if.then.26
	addq	$104, %rax
.LBB6_14:                               # %return
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsi)
	movupd	(%rax), %xmm0
	movupd	%xmm0, (%rsi)
	jmp	.LBB6_21
.LBB6_2:                                # %entry
	movabsq	$4398046513153, %rdx    # imm = 0x40000000801
	btq	%rcx, %rdx
	jae	.LBB6_22
# BB#3:                                 # %sw.bb
	movq	%rsi, %rdi
	callq	gs_make_identity
.LBB6_21:                               # %return
	xorl	%eax, %eax
.LBB6_22:                               # %return
	popq	%rdx
	retq
.LBB6_15:                               # %if.else.28
	movss	80(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_0(%rip), %xmm0
	jne	.LBB6_20
	jp	.LBB6_20
# BB#16:                                # %land.lhs.true
	movss	84(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_20
	jp	.LBB6_20
# BB#17:                                # %land.lhs.true.37
	movss	88(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_20
	jp	.LBB6_20
# BB#18:                                # %land.lhs.true.42
	movss	92(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI6_1(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	andnps	%xmm0, %xmm2
	andps	%xmm1, %xmm3
	orps	%xmm2, %xmm3
	ucomiss	.LCPI6_0(%rip), %xmm3
	jne	.LBB6_20
	jp	.LBB6_20
# BB#19:                                # %if.then.54
	addq	$80, %rax
	jmp	.LBB6_14
.LBB6_20:                               # %if.else.56
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movq	%rsi, %rdi
	callq	gs_make_scaling
	jmp	.LBB6_21
.Lfunc_end6:
	.size	pdf_font_orig_matrix, .Lfunc_end6-pdf_font_orig_matrix
	.cfi_endproc

	.globl	pdf_check_encoding_compatibility
	.align	16, 0x90
	.type	pdf_check_encoding_compatibility,@function
pdf_check_encoding_compatibility:       # @pdf_check_encoding_compatibility
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	jle	.LBB7_6
# BB#1:                                 # %for.body.lr.ph
	movq	192(%rdi), %rcx
	movslq	%edx, %r8
	addq	$8, %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %rax
	shlq	$5, %rax
	movq	(%rcx,%rax), %rdx
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	setne	%al
	cmpq	%rdx, (%rsi)
	movl	$4, %edx
	je	.LBB7_4
# BB#3:                                 # %select.mid
                                        #   in Loop: Header=BB7_2 Depth=1
	movzbl	%al, %edx
.LBB7_4:                                # %select.end
                                        #   in Loop: Header=BB7_2 Depth=1
	xorl	%eax, %eax
	orl	$4, %edx
	cmpl	$4, %edx
	jne	.LBB7_7
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	incq	%rdi
	addq	$16, %rsi
	cmpq	%r8, %rdi
	jl	.LBB7_2
.LBB7_6:
	movl	$1, %eax
.LBB7_7:                                # %cleanup.11
	retq
.Lfunc_end7:
	.size	pdf_check_encoding_compatibility, .Lfunc_end7-pdf_check_encoding_compatibility
	.cfi_endproc

	.globl	pdf_obtain_cidfont_resource
	.align	16, 0x90
	.type	pdf_obtain_cidfont_resource,@function
pdf_obtain_cidfont_resource:            # @pdf_obtain_cidfont_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 48
.Ltmp53:
	.cfi_offset %rbx, -48
.Ltmp54:
	.cfi_offset %r12, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	28784(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_8
# BB#1:
	leaq	28784(%rbx), %rcx
	movq	56(%r14), %rdx
	.align	16, 0x90
.LBB8_3:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 8(%rax)
	je	.LBB8_4
# BB#2:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rax, %rcx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB8_3
	jmp	.LBB8_8
.LBB8_4:                                # %pdf_locate_font_cache_elem.exit.i
	testq	%rcx, %rcx
	je	.LBB8_8
# BB#5:                                 # %if.end
	movq	24(%rax), %rdi
	movq	%rdi, (%r15)
	testq	%rdi, %rdi
	je	.LBB8_9
# BB#6:                                 # %if.then.2
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	pdf_font_resource_font
	movslq	8(%r12), %rcx
	shlq	$4, %rcx
	leaq	24(%r12,%rcx), %rdx
	movl	4(%r12), %ecx
	movl	$16, %r8d
	movl	$1, %r9d
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	gs_copied_can_copy_glyphs
	testl	%eax, %eax
	jg	.LBB8_14
# BB#7:                                 # %if.end.7
	movl	%eax, %ebp
	js	.LBB8_14
.LBB8_8:                                # %cleanup
	movq	$0, (%r15)
.LBB8_9:                                # %if.end.11
	movl	$8, %edx
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	pdf_find_font_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_14
# BB#10:                                # %if.end.15
	movq	(%r15), %rdx
	testq	%rdx, %rdx
	jne	.LBB8_13
# BB#11:                                # %if.then.17
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	pdf_make_font_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_14
# BB#12:                                # %if.then.17.if.end.22_crit_edge
	movq	(%r15), %rdx
.LBB8_13:                               # %if.end.22
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_attach_font_resource # TAILCALL
.LBB8_14:                               # %cleanup.24
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_obtain_cidfont_resource, .Lfunc_end8-pdf_obtain_cidfont_resource
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_find_font_resource,@function
pdf_find_font_resource:                 # @pdf_find_font_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 96
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movq	%r8, %r13
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %rbp
	movl	%edx, %eax
	leaq	16(%r13), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	shlq	$7, %rax
	addq	%rdi, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB9_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
                                        #       Child Loop BB9_16 Depth 3
                                        #         Child Loop BB9_17 Depth 4
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	26672(%rax,%r15,8), %rbx
	jmp	.LBB9_2
	.align	16, 0x90
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	(%rbx), %rbx
.LBB9_2:                                # %for.body
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
                                        #         Child Loop BB9_17 Depth 4
	testq	%rbx, %rbx
	je	.LBB9_23
# BB#3:                                 # %for.body.5
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	128(%rbp), %eax
	cmpl	72(%rbx), %eax
	jne	.LBB9_6
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%eax, %eax
	je	.LBB9_5
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB9_2 Depth=2
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_font_resource_font
	movq	%rax, %r12
	movq	%rbp, %r14
	jmp	.LBB9_8
.LBB9_5:                                # %if.then.10
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	424(%rbp), %rax
	movq	(%rax), %r14
	movq	176(%rbx), %rdi
	xorl	%esi, %esi
	callq	pdf_font_resource_font
	movq	%rax, %r12
	movq	440(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	240(%rbx), %eax
	jne	.LBB9_6
.LBB9_8:                                # %if.end.20
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	128(%r14), %eax
	andl	$-3, %eax
	cmpl	$9, %eax
	je	.LBB9_19
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	movslq	(%r13), %rcx
	je	.LBB9_12
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	pdf_is_compatible_encoding
	testq	%r12, %r12
	je	.LBB9_6
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%eax, %eax
	jne	.LBB9_20
	jmp	.LBB9_6
.LBB9_12:                               # %cond.false
                                        #   in Loop: Header=BB9_2 Depth=2
	movl	72(%rbx), %eax
	cmpq	$42, %rax
	ja	.LBB9_6
# BB#13:                                # %cond.false
                                        #   in Loop: Header=BB9_2 Depth=2
	movabsq	$4398046511110, %rdx    # imm = 0x40000000006
	btq	%rax, %rdx
	jae	.LBB9_6
# BB#14:                                # %sw.bb.1.i
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%ecx, %ecx
	jle	.LBB9_6
# BB#15:                                # %for.cond.1.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	192(%rbx), %rax
	addq	$96, %rax
	xorl	%r8d, %r8d
.LBB9_16:                               # %for.cond.1.preheader.i.i
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_17 Depth 4
	movq	%r8, %rdx
	shlq	$4, %rdx
	movq	24(%r13,%rdx), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB9_17:                               # %for.body.3.i.i
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_2 Depth=2
                                        #       Parent Loop BB9_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	-96(%rdi), %rsi
	je	.LBB9_19
# BB#18:                                # %for.cond.1.i.i
                                        #   in Loop: Header=BB9_17 Depth=4
	cmpq	-64(%rdi), %rsi
	je	.LBB9_19
# BB#25:                                # %for.cond.1.i.i.1
                                        #   in Loop: Header=BB9_17 Depth=4
	cmpq	-32(%rdi), %rsi
	je	.LBB9_19
# BB#26:                                # %for.cond.1.i.i.2
                                        #   in Loop: Header=BB9_17 Depth=4
	cmpq	(%rdi), %rsi
	je	.LBB9_19
# BB#27:                                # %for.cond.1.i.i.3
                                        #   in Loop: Header=BB9_17 Depth=4
	addq	$4, %rdx
	subq	$-128, %rdi
	cmpq	$256, %rdx              # imm = 0x100
	jl	.LBB9_17
# BB#28:                                # %for.inc.8.i.i
                                        #   in Loop: Header=BB9_16 Depth=3
	incq	%r8
	cmpq	%rcx, %r8
	jl	.LBB9_16
	jmp	.LBB9_6
	.align	16, 0x90
.LBB9_19:                               # %if.end.32
                                        #   in Loop: Header=BB9_2 Depth=2
	testq	%r12, %r12
	je	.LBB9_6
.LBB9_20:                               # %if.end.35
                                        #   in Loop: Header=BB9_2 Depth=2
	movslq	8(%r13), %rax
	shlq	$4, %rax
	leaq	24(%r13,%rax), %rdx
	movl	4(%r13), %ecx
	movl	$16, %r8d
	movl	$1, %r9d
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gs_copied_can_copy_glyphs
	movl	%eax, %ecx
	movl	$-28, %eax
	cmpl	$-28, %ecx
	je	.LBB9_24
# BB#21:                                # %if.end.42
                                        #   in Loop: Header=BB9_2 Depth=2
	testl	%ecx, %ecx
	jle	.LBB9_6
	jmp	.LBB9_22
	.align	16, 0x90
.LBB9_23:                               # %for.inc.52
                                        #   in Loop: Header=BB9_1 Depth=1
	incq	%r15
	xorl	%eax, %eax
	cmpq	$16, %r15
	jl	.LBB9_1
	jmp	.LBB9_24
.LBB9_22:                               # %if.then.44
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbx, (%rax)
	movl	$1, %eax
.LBB9_24:                               # %cleanup.54
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_find_font_resource, .Lfunc_end9-pdf_find_font_resource
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4608533498688228557     # double 1.3
.LCPI10_1:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	pdf_make_font_resource,@function
pdf_make_font_resource:                 # @pdf_make_font_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp77:
	.cfi_def_cfa_offset 320
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	$-1, 260(%rsp)
	movq	$0, 248(%rsp)
	movq	26592(%r13), %rax
	movq	(%rax), %rax
	movq	(%rax), %r12
	cmpl	$2009, 8848(%r13)       # imm = 0x7D9
	ja	.LBB10_3
# BB#1:                                 # %if.then
	movl	128(%r15), %eax
	movl	$-21, %ebp
	cmpl	$11, %eax
	je	.LBB10_59
# BB#2:                                 # %if.then
	cmpl	$42, %eax
	je	.LBB10_59
.LBB10_3:                               # %if.end
	cmpl	$0, 9524(%r13)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 8864(%r13)
	jne	.LBB10_6
# BB#5:                                 # %if.then.2
	movl	128(%r15), %eax
	movl	$-21, %ebp
	orl	$2, %eax
	cmpl	$11, %eax
	je	.LBB10_59
.LBB10_6:                               # %if.end.7
	cmpl	$0, 8856(%r13)
	jne	.LBB10_8
# BB#7:                                 # %if.then.9
	movl	$-21, %ebp
	cmpl	$2, 128(%r15)
	je	.LBB10_59
.LBB10_8:                               # %if.end.14
	leaq	16(%rbx), %r14
	movl	(%rbx), %r8d
	leaq	260(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	pdf_font_embed_status
	movl	%eax, %edx
	movsd	9368(%r13), %xmm0       # xmm0 = mem[0],zero
	cmpl	$1, %edx
	je	.LBB10_11
# BB#9:                                 # %if.end.14
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_11
# BB#10:                                # %land.lhs.true.18
	movl	$-15, %ebp
	cmpl	$11, 128(%r15)
	je	.LBB10_59
.LBB10_11:                              # %if.end.23
	testl	%edx, %edx
	je	.LBB10_12
# BB#25:                                # %if.end.52
	movl	$pdf_font_cidfont_alloc, %r14d
	movl	128(%r15), %eax
	movl	$-10, %ebp
	leal	-1(%rax), %ecx
	cmpl	$10, %ecx
	jbe	.LBB10_60
# BB#26:                                # %if.end.52
	leal	-51(%rax), %ecx
	cmpl	$4, %ecx
	jb	.LBB10_61
# BB#27:                                # %if.end.52
	cmpl	$42, %eax
	jne	.LBB10_59
	jmp	.LBB10_28
.LBB10_12:                              # %if.then.25
	movslq	260(%rsp), %r9
	movq	%r9, %rax
	shlq	$5, %rax
	leaq	(%r12,%rax), %rbp
	movq	(%r12,%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB10_13
# BB#14:                                # %lor.lhs.false
	movl	(%rbx), %ecx
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	pdf_is_compatible_encoding
	testl	%eax, %eax
	je	.LBB10_15
# BB#24:                                # %if.else
	movq	(%rbp), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
	xorl	%ebp, %ebp
	jmp	.LBB10_59
.LBB10_60:                              # %if.end.52
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_28:                              # %sw.bb.55
	movl	$pdf_font_simple_alloc, %r14d
.LBB10_29:                              # %sw.epilog.63
	cmpl	$2, %edx
	jne	.LBB10_38
# BB#30:                                # %sw.epilog.63
	cmpl	$42, %eax
	jne	.LBB10_38
# BB#31:                                # %land.lhs.true.70
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB10_40
# BB#32:                                # %land.lhs.true.74
	cmpl	$0, 9524(%r13)
	jne	.LBB10_41
# BB#33:                                # %for.cond.preheader
	xorl	%ebx, %ebx
	movl	$3221225472, %r12d      # imm = 0xC0000000
.LBB10_35:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*200(%r15)
	movl	%ebp, %edx
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB10_34
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB10_35 Depth=1
	andq	$-256, %rax
	movl	$-15, %ebp
	cmpq	%r12, %rax
	jne	.LBB10_59
.LBB10_34:                              # %for.cond
                                        #   in Loop: Header=BB10_35 Depth=1
	incq	%rbx
	cmpq	$255, %rbx
	jle	.LBB10_35
# BB#37:                                # %if.end.96thread-pre-split.loopexit
	movl	128(%r15), %eax
.LBB10_38:                              # %if.end.96
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB10_39
# BB#42:                                # %if.then.111
	movl	444(%r15), %eax
	cmpl	$0, 9524(%r13)
	jne	.LBB10_43
# BB#44:                                # %if.end.i.98
	leal	-4(%rax), %ecx
	cmpl	$3, %ecx
	movl	$4, %ebx
	cmovbl	%eax, %ebx
	jmp	.LBB10_45
.LBB10_61:                              # %sw.bb.56
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	pdf_make_font3_resource
	testl	%eax, %eax
	movl	$1, %ebp
	cmovsl	%eax, %ebp
	jmp	.LBB10_59
.LBB10_13:
	movq	%rbp, %rbx
	movb	$1, %al
	jmp	.LBB10_16
.LBB10_15:                              # %lor.lhs.false.if.then.34_crit_edge
	movl	260(%rsp), %r9d
	cmpq	$0, (%rbp)
	movq	%rbp, %rbx
	sete	%al
.LBB10_16:                              # %if.then.34
	movzbl	%al, %edx
	movq	56(%r15), %rcx
	movq	%r13, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r15, %r8
	callq	pdf_font_std_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_59
# BB#17:                                # %if.end.41
	cmpq	$0, (%rbx)
	jne	.LBB10_19
# BB#18:                                # %if.then.45
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%rbx)
.LBB10_19:                              # %if.end.47
	movslq	444(%r15), %rax
	cmpl	$0, 9524(%r13)
	je	.LBB10_21
# BB#20:                                # %if.then.i
	cmpl	$1, %eax
	sete	%cl
	movzbl	%cl, %ecx
	testl	%eax, %eax
	cmovel	%eax, %ecx
	jmp	.LBB10_23
.LBB10_21:                              # %if.end.i
	movl	$4, %ecx
	cmpl	$6, %eax
	ja	.LBB10_23
# BB#22:                                # %switch.lookup
	movl	.Lswitch.table.1(,%rax,4), %ecx
.LBB10_23:                              # %pdf_refine_encoding_index.exit
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax), %rax
	movl	%ecx, 184(%rax)
	jmp	.LBB10_58
.LBB10_39:                              # %if.end.96
	movl	$-1, %ebx
	cmpl	$42, %eax
	jne	.LBB10_45
.LBB10_40:                              # %land.lhs.true.108
	movl	$-1, %ebx
	cmpl	$0, 9524(%r13)
	je	.LBB10_45
.LBB10_41:                              # %if.then.111.thread
	movl	444(%r15), %eax
.LBB10_43:                              # %if.then.i.97
	cmpl	$1, %eax
	sete	%cl
	movzbl	%cl, %ebx
	testl	%eax, %eax
	cmovel	%eax, %ebx
.LBB10_45:                              # %if.end.114
	cmpl	$2, %edx
	sete	%al
	movzbl	%al, %ecx
	leaq	248(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	pdf_font_descriptor_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_59
# BB#46:                                # %lor.lhs.false.120
	movq	56(%r15), %rdx
	movq	248(%rsp), %rcx
	leaq	240(%rsp), %rsi
	movq	%r13, %rdi
	callq	*%r14
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_59
# BB#47:                                # %if.end.126
	movl	128(%r15), %eax
	movl	%eax, %ecx
	andl	$-3, %ecx
	cmpl	$9, %ecx
	je	.LBB10_49
# BB#48:                                # %if.then.129
	movq	240(%rsp), %rcx
	movl	%ebx, 184(%rcx)
	movq	24(%r15), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, 160(%rcx)
.LBB10_49:                              # %if.end.134
	cmpl	$0, 9564(%r13)
	je	.LBB10_57
# BB#50:                                # %if.end.134
	cmpl	$42, %eax
	jne	.LBB10_57
# BB#51:                                # %if.then.141
	movq	248(%rsp), %rdi
	xorl	%esi, %esi
	callq	pdf_font_descriptor_font
	movq	%rax, %rdi
	callq	copied_get_notdef
	movq	%rax, %rbx
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 96(%rsp)
	movapd	%xmm0, 80(%rsp)
	movapd	%xmm0, 64(%rsp)
	movapd	%xmm0, 48(%rsp)
	movapd	%xmm0, 32(%rsp)
	movl	$-15, %ebp
	movb	$1, %r14b
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	je	.LBB10_56
# BB#52:                                # %if.then.146
	movq	240(%rsp), %rsi
	movl	148(%r15), %edx
	leaq	24(%rsp), %rcx
	leaq	8(%rsp), %r8
	leaq	16(%rsp), %r9
	movq	%r13, %rdi
	callq	pdf_obtain_cidfont_widths_arrays
	testl	%eax, %eax
	js	.LBB10_53
# BB#54:                                # %if.end.151
	movq	$0, 120(%rsp)
	movq	240(%rsp), %rdi
	movl	148(%r15), %esi
	leaq	120(%rsp), %r8
	leaq	32(%rsp), %r9
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	pdf_glyph_widths
	testl	%eax, %eax
	js	.LBB10_53
# BB#55:                                # %if.end.159
	movq	120(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	240(%rsp), %rax
	movq	136(%rax), %rax
	orb	$-128, (%rax)
	jmp	.LBB10_56
.LBB10_53:
	xorl	%r14d, %r14d
	movl	%eax, %ebp
.LBB10_56:                              # %cleanup.167
	testb	%r14b, %r14b
	je	.LBB10_59
.LBB10_57:                              # %if.end.176
	movq	240(%rsp), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
.LBB10_58:                              # %cleanup.177
	movl	$1, %ebp
.LBB10_59:                              # %cleanup.177
	movl	%ebp, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pdf_make_font_resource, .Lfunc_end10-pdf_make_font_resource
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_28
	.quad	.LBB10_28
	.quad	.LBB10_61
	.quad	.LBB10_59
	.quad	.LBB10_59
	.quad	.LBB10_59
	.quad	.LBB10_59
	.quad	.LBB10_59
	.quad	.LBB10_29
	.quad	.LBB10_59
	.quad	.LBB10_29

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	-4616189618054758400    # double -1.000000e+00
.LCPI11_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI11_3:
	.long	1092616192              # float 1.000000e+01
	.long	1092616192              # float 1.000000e+01
	.long	1092616192              # float 1.000000e+01
	.long	1092616192              # float 1.000000e+01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_2:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	pdf_make_font3_resource
	.align	16, 0x90
	.type	pdf_make_font3_resource,@function
pdf_make_font3_resource:                # @pdf_make_font3_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 64
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	1728(%r12), %rdi
	movl	$32, %esi
	movl	$.L.str.4, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movl	$-25, %r15d
	testq	%rbx, %rbx
	je	.LBB11_27
# BB#1:                                 # %if.end
	movq	56(%r13), %rdx
	leaq	(%rsp), %rsi
	movl	$3, %ecx
	movl	$pdf_write_contents_bitmap, %r8d
	movq	%r12, %rdi
	callq	font_resource_encoded_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_2
# BB#3:                                 # %if.end.8
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	24(%r13), %rax
	movq	128(%rax), %rax
	movq	(%rsp), %rcx
	movq	%rax, 160(%rcx)
	movq	(%rsp), %rax
	movl	$0, 284(%rax)
	movslq	444(%r13), %rcx
	cmpl	$0, 9524(%r12)
	je	.LBB11_5
# BB#4:                                 # %if.then.i
	cmpl	$1, %ecx
	sete	%dl
	movzbl	%dl, %edx
	testl	%ecx, %ecx
	cmovel	%ecx, %edx
	jmp	.LBB11_7
.LBB11_2:                               # %if.then.4
	movq	1728(%r12), %rdi
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	%ebp, %r15d
	jmp	.LBB11_27
.LBB11_5:                               # %if.end.i
	movl	$4, %edx
	cmpl	$6, %ecx
	ja	.LBB11_7
# BB#6:                                 # %switch.lookup
	movl	.Lswitch.table.1(,%rcx,4), %edx
.LBB11_7:                               # %pdf_refine_encoding_index.exit
	movl	%edx, 184(%rax)
	movq	$0, 272(%rax)
	movq	(%rsp), %rax
	movq	%rbx, 296(%rax)
	movq	(%rsp), %rax
	cmpl	$3, 72(%rax)
	jne	.LBB11_8
# BB#10:                                # %land.lhs.true
	movsd	376(%r13), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	xorps	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_9
	jp	.LBB11_9
# BB#11:                                # %land.lhs.true.25
	movsd	384(%r13), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_9
	jp	.LBB11_9
# BB#12:                                # %land.lhs.true.29
	movsd	392(%r13), %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_9
	jp	.LBB11_9
# BB#13:                                # %land.lhs.true.33
	movsd	400(%r13), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_9
	jp	.LBB11_9
# BB#14:                                # %if.then.38
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rax)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [1.000000e+00,-1.000000e+00]
	movups	%xmm0, 232(%rax)
	jmp	.LBB11_15
.LBB11_8:                               # %pdf_refine_encoding_index.exit.if.else_crit_edge
	movq	376(%r13), %rcx
.LBB11_9:                               # %if.else
	movq	%rcx, 216(%rax)
	movups	384(%r13), %xmm0
	movups	%xmm0, 224(%rax)
	movq	400(%r13), %rcx
	movq	%rcx, 240(%rax)
.LBB11_15:                              # %if.end.107
	movq	96(%r13), %rcx
	movq	%rcx, 264(%rax)
	movups	80(%r13), %xmm0
	movups	%xmm0, 248(%rax)
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	cos_dict_alloc
	movq	(%rsp), %rcx
	movq	%rax, 288(%rcx)
	movq	(%rsp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB11_27
# BB#16:                                # %if.end.125
	movss	248(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB11_20
	jp	.LBB11_20
# BB#17:                                # %lor.lhs.false
	movss	252(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB11_20
	jp	.LBB11_20
# BB#18:                                # %lor.lhs.false.141
	movss	256(%rax), %xmm3        # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jne	.LBB11_20
	jp	.LBB11_20
# BB#19:                                # %lor.lhs.false.150
	movss	260(%rax), %xmm3        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB11_20
	jnp	.LBB11_26
.LBB11_20:                              # %while.cond.preheader
	movaps	.LCPI11_1(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	andnps	%xmm0, %xmm1
	andps	%xmm2, %xmm3
	orps	%xmm1, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jbe	.LBB11_26
# BB#21:                                # %land.lhs.true.183.lr.ph
	movss	252(%rax), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movaps	.LCPI11_1(%rip), %xmm9  # xmm9 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm10, %xmm10
	movaps	.LCPI11_3(%rip), %xmm8  # xmm8 = [1.000000e+01,1.000000e+01,1.000000e+01,1.000000e+01]
	.align	16, 0x90
.LBB11_22:                              # %land.lhs.true.183
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm5, %xmm6
	xorps	%xmm9, %xmm6
	movaps	%xmm5, %xmm7
	cmpltss	%xmm10, %xmm7
	movaps	%xmm7, %xmm4
	andnps	%xmm5, %xmm4
	andps	%xmm6, %xmm7
	orps	%xmm4, %xmm7
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm7, %xmm4
	ucomisd	%xmm4, %xmm1
	jbe	.LBB11_26
# BB#23:                                # %land.lhs.true.212
                                        #   in Loop: Header=BB11_22 Depth=1
	movss	256(%rax), %xmm6        # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm4
	xorps	%xmm9, %xmm4
	movaps	%xmm6, %xmm7
	cmpltss	%xmm10, %xmm7
	movaps	%xmm7, %xmm2
	andnps	%xmm6, %xmm2
	andps	%xmm4, %xmm7
	orps	%xmm2, %xmm7
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm7, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB11_26
# BB#24:                                # %land.rhs
                                        #   in Loop: Header=BB11_22 Depth=1
	movss	260(%rax), %xmm7        # xmm7 = mem[0],zero,zero,zero
	movaps	%xmm7, %xmm2
	xorps	%xmm9, %xmm2
	movaps	%xmm7, %xmm4
	cmpltss	%xmm10, %xmm4
	movaps	%xmm4, %xmm3
	andnps	%xmm7, %xmm3
	andps	%xmm2, %xmm4
	orps	%xmm3, %xmm4
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm4, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB11_26
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB11_22 Depth=1
	unpcklps	%xmm7, %xmm5    # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1]
	unpcklps	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1]
	unpcklps	%xmm5, %xmm0    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1]
	mulps	%xmm8, %xmm0
	movups	%xmm0, 248(%rax)
	movaps	%xmm0, %xmm2
	xorps	%xmm9, %xmm2
	movaps	%xmm0, %xmm3
	cmpltss	%xmm10, %xmm3
	andps	%xmm3, %xmm2
	andnps	%xmm0, %xmm3
	orps	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm1
	movaps	%xmm0, %xmm5
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	ja	.LBB11_22
.LBB11_26:                              # %if.end.296
	movq	%rax, (%r14)
	xorl	%r15d, %r15d
.LBB11_27:                              # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdf_make_font3_resource, .Lfunc_end11-pdf_make_font3_resource
	.cfi_endproc

	.globl	pdf_is_simple_font
	.align	16, 0x90
	.type	pdf_is_simple_font,@function
pdf_is_simple_font:                     # @pdf_is_simple_font
	.cfi_startproc
# BB#0:                                 # %entry
	movl	128(%rdi), %ecx
	decl	%ecx
	cmpl	$54, %ecx
	sbbb	%al, %al
	movabsq	$16890697625894919, %rdx # imm = 0x3C020000000007
	shrq	%cl, %rdx
	andl	$1, %edx
	andb	%al, %dl
	movzbl	%dl, %eax
	retq
.Lfunc_end12:
	.size	pdf_is_simple_font, .Lfunc_end12-pdf_is_simple_font
	.cfi_endproc

	.globl	pdf_is_CID_font
	.align	16, 0x90
	.type	pdf_is_CID_font,@function
pdf_is_CID_font:                        # @pdf_is_CID_font
	.cfi_startproc
# BB#0:                                 # %entry
	movl	128(%rdi), %eax
	andl	$-3, %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end13:
	.size	pdf_is_CID_font, .Lfunc_end13-pdf_is_CID_font
	.cfi_endproc

	.globl	pdf_obtain_font_resource
	.align	16, 0x90
	.type	pdf_obtain_font_resource,@function
pdf_obtain_font_resource:               # @pdf_obtain_font_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$584, %rsp              # imm = 0x248
.Ltmp103:
	.cfi_def_cfa_offset 640
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	88(%rbx), %r12
	movq	192(%rbx), %rbp
	movq	$0, 112(%rsp)
	movl	$-28, %eax
	cmpl	$0, 128(%rbp)
	je	.LBB14_47
# BB#1:                                 # %if.end
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	112(%rsp), %rcx
	leaq	104(%rsp), %r8
	leaq	100(%rsp), %r9
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	pdf_attached_font_resource
	movq	%rbp, %rdx
	testl	%eax, %eax
	js	.LBB14_47
# BB#2:                                 # %if.end.3
	movabsq	$16890697625894919, %r15 # imm = 0x3C020000000007
	movq	552(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB14_29
# BB#3:                                 # %if.then.5
	leaq	8(%r14), %rax
	leaq	16(%rbx), %rcx
	testq	%r14, %r14
	cmoveq	%rcx, %rax
	movl	(%rax), %ebp
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%ebp, %esi
	shll	$5, %esi
	orl	$16, %esi
	movq	144(%rbx), %rdi
	movl	$.L.str.14, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB14_47
# BB#4:                                 # %if.end.9
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	%rcx, %r12
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r12, 552(%rbx)
	movl	%ebp, 8(%r12)
	movq	$0, (%r12)
	movq	112(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	100(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	136(%rsp), %rdi
	movl	$448, %edx              # imm = 0x1C0
	movq	%rbx, %rsi
	callq	memcpy
	movq	192(%rbx), %rbp
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	128(%rbp), %ecx
	decl	%ecx
	movabsq	$18014398509481983, %rax # imm = 0x3FFFFFFFFFFFFF
	andq	%r15, %rax
	shrq	%cl, %rax
	andl	$1, %eax
	testq	%r14, %r14
	movq	$0, (%r12)
	je	.LBB14_7
# BB#5:                                 # %if.then.i
	movq	(%r14), %rdx
	movq	%rdx, 144(%rsp)
	movl	8(%r14), %edx
	movl	%edx, 152(%rsp)
	movl	$0, 368(%rsp)
	movl	136(%rsp), %edx
	testb	$4, %dl
	je	.LBB14_7
# BB#6:                                 # %if.then.6.i
	andl	$-6, %edx
	orl	$1, %edx
	movl	%edx, 136(%rsp)
.LBB14_7:                               # %for.cond.preheader.i
	movq	%r14, 40(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	setne	%al
	cmpl	$54, %ecx
	sbbb	%bl, %bl
	andb	%al, %bl
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	setne	79(%rsp)                # 1-byte Folded Spill
	addq	$16, 56(%rsp)           # 8-byte Folded Spill
	leaq	136(%rsp), %r14
	leaq	128(%rsp), %r15
	leaq	120(%rsp), %r12
                                        # implicit-def: R13
	jmp	.LBB14_8
.LBB14_26:                              # %if.then.21.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
	movslq	4(%rdi), %rcx
	movslq	8(%rdi), %rsi
	leaq	(%rsi,%rcx), %rsi
	shlq	$4, %rsi
	movq	%rdx, 24(%rdi,%rsi)
	movslq	8(%rdi), %rdx
	addq	%rcx, %rdx
	shlq	$4, %rdx
	movq	%rax, 16(%rdi,%rdx)
	incl	4(%rdi)
	.align	16, 0x90
.LBB14_8:                               # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_21 Depth 2
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*256(%rbp)
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB14_14
# BB#9:                                 # %for.cond.i
                                        #   in Loop: Header=BB14_8 Depth=1
	testl	%ecx, %ecx
	js	.LBB14_14
# BB#10:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	testb	%bl, %bl
	jne	.LBB14_11
# BB#12:                                # %if.else.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	120(%rsp), %rax
	movl	$2147483648, %ecx       # imm = 0x80000000
	cmpq	%rcx, %rax
	jb	.LBB14_8
# BB#13:                                # %if.end.12.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	addq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, %r13
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_14:                              # %pdf_next_char_glyph.exit.i
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$3, %ecx
	je	.LBB14_8
# BB#15:                                # %pdf_next_char_glyph.exit.i
                                        #   in Loop: Header=BB14_8 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB14_27
# BB#16:                                # %if.end.19.i
                                        #   in Loop: Header=BB14_8 Depth=1
	testl	%ecx, %ecx
	movl	%ecx, %eax
	jns	.LBB14_17
	jmp	.LBB14_27
.LBB14_11:                              # %if.then.4.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	128(%rsp), %r13
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*200(%rbp)
	movq	%rax, 120(%rsp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB14_8
.LBB14_17:                              # %if.end.22.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	88(%rsp), %rdx          # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$-28, %eax
	cmpl	8(%rdx), %ecx
	jg	.LBB14_27
# BB#18:                                # %if.end.26.i
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpq	%r13, 80(%rsp)          # 8-byte Folded Reload
	sbbb	%al, %al
	testb	79(%rsp), %al           # 1-byte Folded Reload
	jne	.LBB14_8
# BB#19:                                # %if.end.31.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	128(%rsp), %rax
	movq	120(%rsp), %rdx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jle	.LBB14_23
# BB#20:                                # %for.body.preheader.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %rdi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB14_21:                              # %for.body.i.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r13, (%rdi)
	je	.LBB14_23
# BB#22:                                # %for.inc.i.i
                                        #   in Loop: Header=BB14_21 Depth=2
	incq	%rsi
	addq	$16, %rdi
	cmpq	%rcx, %rsi
	jl	.LBB14_21
.LBB14_23:                              # %for.end.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	%ecx, %esi
	jl	.LBB14_8
# BB#24:                                # %if.end.5.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	shlq	$4, %rcx
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, 24(%rsi,%rcx)
	movq	%rax, 16(%rsi,%rcx)
	incl	(%rsi)
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB14_26
# BB#25:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%r13, %rcx
	shrq	$3, %rcx
	movq	64(%rsp), %rsi          # 8-byte Reload
	movzbl	(%rsi,%rcx), %esi
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	testl	%edi, %esi
	jne	.LBB14_8
	jmp	.LBB14_26
.LBB14_27:                              # %pdf_make_text_glyphs_table.exit
	testl	%eax, %eax
	movq	40(%rsp), %r14          # 8-byte Reload
	movabsq	$16890697625894919, %r15 # imm = 0x3C020000000007
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	js	.LBB14_47
# BB#28:                                # %pdf_make_text_glyphs_table.exit.if.end.14_crit_edge
	movq	552(%rbx), %rcx
.LBB14_29:                              # %if.end.14
	movq	%r12, %rdi
	movq	%rdx, %rbp
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	pdf_obtain_font_resource_encoded
	movq	%rbp, %rsi
	testl	%eax, %eax
	js	.LBB14_47
# BB#30:                                # %if.end.19
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	112(%rsp), %rcx
	leaq	104(%rsp), %r8
	leaq	100(%rsp), %r9
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB14_47
# BB#31:                                # %if.end.23
	movq	112(%rsp), %rbp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movslq	100(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	136(%rsp), %rdi
	movl	$448, %edx              # imm = 0x1C0
	movq	%rbx, %rsi
	callq	memcpy
	movq	192(%rbx), %rbx
	movl	128(%rbx), %ecx
	decl	%ecx
	movabsq	$18014398509481983, %rax # imm = 0x3FFFFFFFFFFFFF
	andq	%rax, %r15
	shrq	%cl, %r15
	andl	$1, %r15d
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB14_47
# BB#32:                                # %if.end.i.45
	testq	%r14, %r14
	je	.LBB14_35
# BB#33:                                # %if.then.2.i
	movq	(%r14), %rax
	movq	%rax, 144(%rsp)
	movl	8(%r14), %eax
	movl	%eax, 152(%rsp)
	movl	$0, 368(%rsp)
	movl	136(%rsp), %eax
	testb	$4, %al
	je	.LBB14_35
# BB#34:                                # %if.then.7.i
	andl	$-6, %eax
	orl	$1, %eax
	movl	%eax, 136(%rsp)
.LBB14_35:                              # %for.cond.preheader.i.55
	testq	%r15, %r15
	setne	%al
	cmpl	$54, %ecx
	sbbb	%r13b, %r13b
	andb	%al, %r13b
	leaq	136(%rsp), %r14
	leaq	128(%rsp), %r15
	leaq	120(%rsp), %rbp
                                        # implicit-def: R12
	jmp	.LBB14_36
.LBB14_46:                              # %if.end.28.i
                                        #   in Loop: Header=BB14_36 Depth=1
	movb	%r12b, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movq	%r12, %rcx
	shrq	$3, %rcx
	movq	80(%rsp), %rsi          # 8-byte Reload
	movzbl	(%rsi,%rcx), %edx
	orl	%eax, %edx
	movb	%dl, (%rsi,%rcx)
	.align	16, 0x90
.LBB14_36:                              # %for.cond.i.61
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	*256(%rbx)
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB14_42
# BB#37:                                # %for.cond.i.61
                                        #   in Loop: Header=BB14_36 Depth=1
	testl	%ecx, %ecx
	js	.LBB14_42
# BB#38:                                # %if.end.3.i.i.62
                                        #   in Loop: Header=BB14_36 Depth=1
	testb	%r13b, %r13b
	jne	.LBB14_39
# BB#40:                                # %if.else.i.i.67
                                        #   in Loop: Header=BB14_36 Depth=1
	movq	120(%rsp), %rax
	movl	$2147483648, %ecx       # imm = 0x80000000
	cmpq	%rcx, %rax
	jb	.LBB14_36
# BB#41:                                # %if.end.12.i.i.69
                                        #   in Loop: Header=BB14_36 Depth=1
	addq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, %r12
	jmp	.LBB14_45
	.align	16, 0x90
.LBB14_42:                              # %pdf_next_char_glyph.exit.i.70
                                        #   in Loop: Header=BB14_36 Depth=1
	cmpl	$3, %ecx
	je	.LBB14_36
# BB#43:                                # %pdf_next_char_glyph.exit.i.70
                                        #   in Loop: Header=BB14_36 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB14_47
# BB#44:                                # %if.end.21.i
                                        #   in Loop: Header=BB14_36 Depth=1
	testl	%ecx, %ecx
	movl	%ecx, %eax
	jns	.LBB14_45
	jmp	.LBB14_47
.LBB14_39:                              # %if.then.4.i.i.65
                                        #   in Loop: Header=BB14_36 Depth=1
	movq	128(%rsp), %r12
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*200(%rbx)
	movq	%rax, 120(%rsp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB14_36
.LBB14_45:                              # %if.end.24.i
                                        #   in Loop: Header=BB14_36 Depth=1
	cmpq	88(%rsp), %r12          # 8-byte Folded Reload
	jae	.LBB14_36
	jmp	.LBB14_46
.LBB14_47:                              # %cleanup
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_obtain_font_resource, .Lfunc_end14-pdf_obtain_font_resource
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_obtain_font_resource_encoded,@function
pdf_obtain_font_resource_encoded:       # @pdf_obtain_font_resource_encoded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 80
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r13), %rdi
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.LBB15_10
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	callq	pdf_font_resource_font
	movl	128(%r14), %ecx
	cmpq	$54, %rcx
	ja	.LBB15_3
# BB#2:                                 # %if.then
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB15_3
# BB#6:                                 # %if.end.17.thread
	movq	(%r13), %rsi
	jmp	.LBB15_7
.LBB15_3:                               # %if.then.13
	movslq	8(%r12), %rcx
	shlq	$4, %rcx
	leaq	24(%r12,%rcx), %rdx
	movl	4(%r12), %ecx
	movl	$16, %r8d
	movl	$1, %r9d
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	gs_copied_can_copy_glyphs
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB15_37
# BB#4:                                 # %if.end.17
	movq	(%r13), %rsi
	je	.LBB15_5
.LBB15_7:                               # %if.else.20
	leaq	16(%r12), %rdx
	movl	(%r12), %ecx
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	pdf_is_compatible_encoding
	movq	(%r13), %rsi
	testl	%eax, %eax
	je	.LBB15_8
# BB#9:                                 # %if.end.26
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	movl	$0, %esi
	jne	.LBB15_37
	jmp	.LBB15_10
.LBB15_8:                               # %if.then.23
	movq	$0, (%r13)
	jmp	.LBB15_10
.LBB15_5:                               # %if.then.19
	movq	$0, (%r13)
.LBB15_10:                              # %while.cond.preheader
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rbp
	.align	16, 0x90
.LBB15_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rbx
	movq	64(%rbx), %rbp
	cmpq	%rbx, %rbp
	je	.LBB15_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*192(%rbx)
	testl	%eax, %eax
	jne	.LBB15_11
.LBB15_13:                              # %while.end
	movl	$1, %eax
	cmpq	%r14, %rbx
	je	.LBB15_15
# BB#14:                                # %if.then.33
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*192(%rbx)
	shrl	$2, %eax
	andl	$1, %eax
.LBB15_15:                              # %if.end.38
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	%r14, %rsi
	movq	%r15, %r14
	movq	28784(%r14), %rax
	xorl	%edi, %edi
	testq	%rax, %rax
	je	.LBB15_21
# BB#16:
	leaq	28784(%r14), %rcx
	movq	56(%rbx), %rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB15_18:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 8(%rax)
	je	.LBB15_19
# BB#17:                                # %for.cond.i.i
                                        #   in Loop: Header=BB15_18 Depth=1
	movq	%rax, %rcx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB15_18
	jmp	.LBB15_21
.LBB15_19:                              # %pdf_locate_font_cache_elem.exit.i
	xorl	%edi, %edi
	testq	%rcx, %rcx
	je	.LBB15_21
# BB#20:                                # %land.lhs.true.i
	movq	24(%rax), %rdi
.LBB15_21:                              # %if.end.43
	movq	%rdi, (%r13)
	movq	%rsi, %r15
	cmpq	%r15, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	je	.LBB15_24
# BB#22:                                # %if.end.43
	cmpq	%rdi, %rbp
	jne	.LBB15_24
# BB#23:                                # %if.end.51.thread
	movq	$0, (%r13)
	jmp	.LBB15_29
.LBB15_24:                              # %if.end.51
	testq	%rdi, %rdi
	je	.LBB15_29
# BB#25:                                # %land.lhs.true.54
	leaq	16(%r12), %rdx
	movl	(%r12), %ecx
	movq	%rbx, %rsi
	callq	pdf_is_compatible_encoding
	testl	%eax, %eax
	je	.LBB15_26
# BB#27:                                # %if.end.61
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB15_29
# BB#28:                                # %if.end.61
	cmpq	%rbp, %rax
	jne	.LBB15_35
	jmp	.LBB15_29
.LBB15_26:                              # %if.then.60
	movq	$0, (%r13)
.LBB15_29:                              # %if.then.66
	movl	128(%rbx), %eax
	andl	$-3, %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	leal	6(%rax,%rax), %edx
	movq	$0, (%r13)
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	pdf_find_font_resource
	testl	%eax, %eax
	js	.LBB15_36
# BB#30:                                # %if.end.73
	cmpq	$0, (%r13)
	jne	.LBB15_32
# BB#31:                                # %if.then.76
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	pdf_make_font_resource
	testl	%eax, %eax
	js	.LBB15_36
.LBB15_32:                              # %if.end.82
	cmpq	%r15, %rbx
	je	.LBB15_35
# BB#33:                                # %if.end.82
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB15_35
# BB#34:                                # %if.then.87
	movq	(%r13), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_attach_font_resource
	testl	%eax, %eax
	js	.LBB15_36
.LBB15_35:                              # %if.end.97
	movq	(%r13), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_attach_font_resource
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jns	.LBB15_37
.LBB15_36:                              # %cleanup.103.thread
	movl	%eax, %ecx
.LBB15_37:                              # %cleanup.109
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pdf_obtain_font_resource_encoded, .Lfunc_end15-pdf_obtain_font_resource_encoded
	.cfi_endproc

	.globl	pdf_obtain_font_resource_unencoded
	.align	16, 0x90
	.type	pdf_obtain_font_resource_unencoded,@function
pdf_obtain_font_resource_unencoded:     # @pdf_obtain_font_resource_unencoded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp129:
	.cfi_def_cfa_offset 192
.Ltmp130:
	.cfi_offset %rbx, -56
.Ltmp131:
	.cfi_offset %r12, -48
.Ltmp132:
	.cfi_offset %r13, -40
.Ltmp133:
	.cfi_offset %r14, -32
.Ltmp134:
	.cfi_offset %r15, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	88(%rdi), %rbx
	movq	192(%rdi), %r14
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$0, 84(%rsp)
	movl	$0, 80(%rsp)
	movl	$-28, %eax
	cmpl	$0, 128(%r14)
	je	.LBB16_96
# BB#1:                                 # %if.end
	leaq	80(%rsp), %r13
	movq	%r13, (%rsp)
	leaq	96(%rsp), %rcx
	movq	%rsi, %r15
	leaq	88(%rsp), %r8
	leaq	84(%rsp), %r9
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	pdf_attached_font_resource
	movq	%rbx, %rsi
	movq	%r15, %r8
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB16_96
# BB#2:                                 # %if.end.3
	movq	%r13, %rbp
	movq	(%r12), %rax
	movq	%r12, %r13
	movl	$-1, %edx
	testq	%rax, %rax
	je	.LBB16_4
# BB#3:                                 # %if.then.5
	movl	188(%rax), %edx
.LBB16_4:                               # %if.end.6
	movq	%rsi, %r12
	movl	%edx, 52(%rsp)          # 4-byte Spill
	cmpq	$0, 552(%rcx)
	je	.LBB16_6
# BB#5:
	movq	%r12, %rdi
	movq	%r13, %r12
	movq	%rbp, %r13
.LBB16_90:                              # %if.end.18
	movq	552(%rcx), %rcx
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r8, %rbx
	movq	%rdi, %rbp
	callq	pdf_obtain_font_resource_encoded
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	testl	%eax, %eax
	js	.LBB16_96
# BB#91:                                # %if.end.23
	movq	%r13, (%rsp)
	leaq	96(%rsp), %rcx
	movq	%rdx, %rbp
	leaq	88(%rsp), %r8
	leaq	84(%rsp), %r9
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	pdf_attached_font_resource
	movq	%rbp, %rbx
	testl	%eax, %eax
	js	.LBB16_96
# BB#92:                                # %if.end.27
	movq	(%r12), %rax
	movl	52(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 188(%rax)
	xorl	%eax, %eax
	cmpl	$0, 8(%rbx)
	je	.LBB16_96
# BB#93:                                # %for.body.lr.ph.i.37
	movq	96(%rsp), %rdx
	movl	84(%rsp), %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB16_94:                              # %for.body.i.42
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movzbl	(%rax,%rdi), %ebp
	movl	$-15, %eax
	cmpl	%esi, %ebp
	jge	.LBB16_96
# BB#95:                                # %if.end.i.45
                                        #   in Loop: Header=BB16_94 Depth=1
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	shrb	$3, %bpl
	movzbl	%bpl, %ecx
	movzbl	(%rdx,%rcx), %ebp
	orl	%eax, %ebp
	movb	%bpl, (%rdx,%rcx)
	incq	%rdi
	xorl	%eax, %eax
	cmpl	8(%rbx), %edi
	jb	.LBB16_94
	jmp	.LBB16_96
.LBB16_6:                               # %if.then.8
	leaq	8(%r8), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	leaq	16(%rcx), %rax
	testq	%r8, %r8
	cmovneq	%rdx, %rax
	movl	(%rax), %esi
	movl	%esi, 56(%rsp)          # 4-byte Spill
	shll	$5, %esi
	orl	$16, %esi
	movq	%rcx, %rbp
	movq	144(%rbp), %rdi
	movl	$.L.str.14, %edx
	movq	%r8, %rbx
	callq	*64(%rdi)
	movq	%rbx, %r8
	movq	%rbp, %rcx
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	movq	%r12, %rbp
	je	.LBB16_96
# BB#7:                                 # %if.end.12
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%r15, 552(%rcx)
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%r15)
	movq	$0, (%r15)
	movq	(%r8), %r12
	movq	28784(%rbp), %rcx
	xorl	%r11d, %r11d
	testq	%rcx, %rcx
	movl	$0, %edx
	je	.LBB16_13
# BB#8:
	leaq	28784(%rbp), %rsi
	movq	56(%r14), %rdi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB16_10:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, 8(%rcx)
	je	.LBB16_11
# BB#9:                                 # %for.cond.i.i.i
                                        #   in Loop: Header=BB16_10 Depth=1
	movq	%rcx, %rsi
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB16_10
	jmp	.LBB16_13
.LBB16_11:                              # %pdf_locate_font_cache_elem.exit.i.i
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.LBB16_13
# BB#12:                                # %land.lhs.true.i.i
	movq	24(%rcx), %rdx
.LBB16_13:                              # %pdf_attached_font_resource.exit.i
	movq	%rdx, 112(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB16_21
# BB#14:                                # %for.body.lr.ph.i
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r14, %r13
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	leaq	120(%rsp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB16_15:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp,8), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	*240(%r13)
	testl	%eax, %eax
	js	.LBB16_96
# BB#16:                                # %if.end.6.i
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	120(%rsp), %rdi
	movl	128(%rsp), %esi
	callq	gs_c_name_glyph
	movq	%rax, (%r12,%rbp,8)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB16_18
# BB#17:                                # %if.then.15.i
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp,8), %rax
	movq	%rax, (%r12,%rbp,8)
	movl	$1, %ebx
.LBB16_18:                              # %for.inc.i
                                        #   in Loop: Header=BB16_15 Depth=1
	incq	%rbp
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r11d
	cmpl	%r11d, %ebp
	jb	.LBB16_15
# BB#19:                                # %do_unknown.preheader.i
	testl	%ebx, %ebx
	jne	.LBB16_23
# BB#20:
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%r13, %r14
	movq	40(%rsp), %r8           # 8-byte Reload
.LBB16_21:                              # %if.end.153.i
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	cmpq	$0, gs_c_known_encodings(%rip)
	je	.LBB16_22
# BB#70:                                # %for.body.162.lr.ph.i
	movl	444(%r14), %ecx
	movq	%r14, %r13
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	cmovsl	%ebx, %ecx
	leaq	16(%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	52(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB16_71:                              # %for.body.162.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_75 Depth 2
                                        #       Child Loop BB16_78 Depth 3
	movslq	%ecx, %rdx
	cmpq	$0, gs_c_known_encodings(,%rdx,8)
	movl	$0, %r14d
	je	.LBB16_73
# BB#72:                                # %select.mid
                                        #   in Loop: Header=BB16_71 Depth=1
	movl	%ecx, %r14d
.LBB16_73:                              # %select.end
                                        #   in Loop: Header=BB16_71 Depth=1
	cmpl	$5, %r14d
	jg	.LBB16_86
# BB#74:                                # %if.end.171.i
                                        #   in Loop: Header=BB16_71 Depth=1
	movq	$0, (%r15)
	xorl	%ebp, %ebp
	testl	%r11d, %r11d
	je	.LBB16_84
	.align	16, 0x90
.LBB16_75:                              # %for.body.178.i
                                        #   Parent Loop BB16_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_78 Depth 3
	movq	(%r12,%rbp,8), %rdi
	movl	%r14d, %esi
	callq	gs_c_decode
	cmpq	$255, %rax
	ja	.LBB16_83
# BB#76:                                # %if.end.189.i
                                        #   in Loop: Header=BB16_75 Depth=2
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rbp,8), %rcx
	movslq	(%r15), %rdx
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jle	.LBB16_80
# BB#77:                                # %for.body.preheader.i.i
                                        #   in Loop: Header=BB16_75 Depth=2
	movq	56(%rsp), %rdi          # 8-byte Reload
	xorl	%esi, %esi
	.align	16, 0x90
.LBB16_78:                              # %for.body.i.i
                                        #   Parent Loop BB16_71 Depth=1
                                        #     Parent Loop BB16_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rax, (%rdi)
	je	.LBB16_80
# BB#79:                                # %for.inc.i.i
                                        #   in Loop: Header=BB16_78 Depth=3
	incq	%rsi
	addq	$16, %rdi
	cmpq	%rdx, %rsi
	jl	.LBB16_78
.LBB16_80:                              # %for.end.i.i
                                        #   in Loop: Header=BB16_75 Depth=2
	cmpl	%edx, %esi
	jl	.LBB16_82
# BB#81:                                # %if.end.5.i.i
                                        #   in Loop: Header=BB16_75 Depth=2
	shlq	$4, %rdx
	movq	%rcx, 24(%r15,%rdx)
	movq	%rax, 16(%r15,%rdx)
	incl	(%r15)
	movslq	4(%r15), %rdx
	movslq	8(%r15), %rsi
	leaq	(%rsi,%rdx), %rsi
	shlq	$4, %rsi
	movq	%rcx, 24(%r15,%rsi)
	movslq	8(%r15), %rcx
	addq	%rdx, %rcx
	shlq	$4, %rcx
	movq	%rax, 16(%r15,%rcx)
	incl	4(%r15)
.LBB16_82:                              # %store_glyphs.exit.i
                                        #   in Loop: Header=BB16_75 Depth=2
	incq	%rbp
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r11d
	cmpl	%r11d, %ebp
	jb	.LBB16_75
	jmp	.LBB16_84
.LBB16_83:                              # %for.body.178.for.end.194_crit_edge.i
                                        #   in Loop: Header=BB16_71 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r11d
.LBB16_84:                              # %for.end.194.i
                                        #   in Loop: Header=BB16_71 Depth=1
	cmpl	%r11d, %ebp
	je	.LBB16_87
# BB#85:                                #   in Loop: Header=BB16_71 Depth=1
	movl	%r14d, %eax
.LBB16_86:                              # %for.inc.215.i
                                        #   in Loop: Header=BB16_71 Depth=1
	incl	%r14d
	cmpq	$0, gs_c_known_encodings+8(,%rbx,8)
	leaq	1(%rbx), %rbx
	movl	%r14d, %ecx
	jne	.LBB16_71
	jmp	.LBB16_24
.LBB16_22:
	movq	%r14, %r13
.LBB16_23:
	movl	52(%rsp), %eax          # 4-byte Reload
.LBB16_24:                              # %if.then.21.i
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	$-1, 108(%rsp)
	movq	$0, (%r15)
	testl	%r11d, %r11d
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	je	.LBB16_33
# BB#25:                                # %for.body.25.lr.ph.i
	leaq	16(%r15), %r8
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB16_26:                              # %for.body.25.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_28 Depth 2
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rbp
	testl	%r10d, %r10d
	movl	$0, %ebx
	jle	.LBB16_30
# BB#27:                                # %for.body.preheader.i.121.i
                                        #   in Loop: Header=BB16_26 Depth=1
	movslq	%r10d, %rcx
	movq	%r8, %rdx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB16_28:                              # %for.body.i.125.i
                                        #   Parent Loop BB16_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbp, (%rdx)
	je	.LBB16_30
# BB#29:                                # %for.inc.i.128.i
                                        #   in Loop: Header=BB16_28 Depth=2
	incq	%rbx
	addq	$16, %rdx
	cmpq	%rcx, %rbx
	jl	.LBB16_28
.LBB16_30:                              # %for.end.i.133.i
                                        #   in Loop: Header=BB16_26 Depth=1
	cmpl	%r10d, %ebx
	jl	.LBB16_32
# BB#31:                                # %if.end.5.i.138.i
                                        #   in Loop: Header=BB16_26 Depth=1
	movslq	%r10d, %rcx
	shlq	$4, %rcx
	movq	%rbp, 24(%r15,%rcx)
	movq	%rbp, 16(%r15,%rcx)
	incl	%r10d
	movl	%r10d, (%r15)
	movslq	8(%r15), %rcx
	movslq	%r9d, %r9
	leaq	(%rcx,%r9), %rcx
	shlq	$4, %rcx
	movq	%rbp, 24(%r15,%rcx)
	movslq	8(%r15), %rcx
	addq	%r9, %rcx
	shlq	$4, %rcx
	movq	%rbp, 16(%r15,%rcx)
	incl	%r9d
	movl	%r9d, 4(%r15)
.LBB16_32:                              # %store_glyphs.exit148.i
                                        #   in Loop: Header=BB16_26 Depth=1
	incq	%rax
	cmpl	%r11d, %eax
	jb	.LBB16_26
.LBB16_33:                              # %for.end.34.i
	leaq	112(%rsp), %rcx
	movl	$6, %edx
	xorl	%r9d, %r9d
	movq	%r13, %rsi
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movq	%r15, %r8
	callq	pdf_find_font_resource
	testl	%eax, %eax
	leaq	80(%rsp), %r13
	js	.LBB16_69
# BB#34:                                # %if.end.38.i
	movq	112(%rsp), %rbx
	je	.LBB16_36
# BB#35:                                # %if.then.40.i
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rbx, %rdx
	callq	pdf_attach_font_resource
	testl	%eax, %eax
	js	.LBB16_69
.LBB16_36:                              # %if.end.45.i
	movq	$0, (%r15)
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	movl	$0, %r10d
	je	.LBB16_38
# BB#37:                                # %if.then.49.i
	movl	208(%rbx), %eax
	movl	%eax, 108(%rsp)
	movq	%rbx, %r10
.LBB16_38:                              # %for.cond.52.preheader.i
	leaq	208(%r10), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB16_57
# BB#39:                                # %for.body.55.i.preheader
	leaq	24(%r15), %r14
	xorl	%ebx, %ebx
	movl	%eax, %ecx
.LBB16_40:                              # %for.body.55.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_46 Depth 2
                                        #       Child Loop BB16_48 Depth 3
	testq	%r10, %r10
	movl	%ecx, %r8d
	je	.LBB16_44
# BB#41:                                # %if.end.61.i
                                        #   in Loop: Header=BB16_40 Depth=1
	movslq	%ebx, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rdx
	movq	%r10, %rdi
	movq	%rdi, %rbp
	movq	%r15, %rsi
	leaq	108(%rsp), %rcx
	callq	pdf_reserve_char_code_in_pdfont
	cmpq	$255, %rax
	jbe	.LBB16_42
# BB#43:                                # %if.then.65.i
                                        #   in Loop: Header=BB16_40 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 108(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r8d
	movq	%rbp, %r10
.LBB16_44:                              # %if.end.69.i
                                        #   in Loop: Header=BB16_40 Depth=1
	movl	$-1, 108(%rsp)
	movq	$0, (%r15)
	movl	$-1, %r9d
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	movl	$0, %edi
	movl	$0, %ebx
	je	.LBB16_45
	.align	16, 0x90
.LBB16_46:                              # %for.body.75.i
                                        #   Parent Loop BB16_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_48 Depth 3
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %rax
	testl	%edi, %edi
	movl	$0, %ebp
	jle	.LBB16_50
# BB#47:                                # %for.body.preheader.i.150.i
                                        #   in Loop: Header=BB16_46 Depth=2
	movslq	%edi, %rdx
	movq	%r14, %rsi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB16_48:                              # %for.body.i.153.i
                                        #   Parent Loop BB16_40 Depth=1
                                        #     Parent Loop BB16_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rax, (%rsi)
	je	.LBB16_50
# BB#49:                                # %for.inc.i.156.i
                                        #   in Loop: Header=BB16_48 Depth=3
	incq	%rbp
	addq	$16, %rsi
	cmpq	%rdx, %rbp
	jl	.LBB16_48
.LBB16_50:                              # %for.end.i.160.i
                                        #   in Loop: Header=BB16_46 Depth=2
	cmpl	%edi, %ebp
	jge	.LBB16_52
# BB#51:                                # %if.then.5.i.i
                                        #   in Loop: Header=BB16_46 Depth=2
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	16(%r15,%rax), %rbp
	jmp	.LBB16_53
	.align	16, 0x90
.LBB16_52:                              # %if.end.9.i.i
                                        #   in Loop: Header=BB16_46 Depth=2
	incl	%r9d
	movl	%r9d, 108(%rsp)
	movslq	%edi, %rdx
	shlq	$4, %rdx
	movq	%rax, 24(%r15,%rdx)
	movslq	%r9d, %rbp
	movq	%rbp, 16(%r15,%rdx)
	incl	%edi
	movl	%edi, (%r15)
	movslq	8(%r15), %rdx
	movslq	%ecx, %rcx
	leaq	(%rdx,%rcx), %rdx
	shlq	$4, %rdx
	movq	%rax, 24(%r15,%rdx)
	movslq	8(%r15), %rax
	addq	%rcx, %rax
	shlq	$4, %rax
	movq	%rbp, 16(%r15,%rax)
	incl	%ecx
	movl	%ecx, 4(%r15)
.LBB16_53:                              # %pdf_new_char_code_in_pdfont.exit.i
                                        #   in Loop: Header=BB16_46 Depth=2
	movl	$-28, %eax
	cmpq	$255, %rbp
	ja	.LBB16_69
# BB#54:                                # %for.inc.82.i
                                        #   in Loop: Header=BB16_46 Depth=2
	incq	%rbx
	cmpl	%r8d, %ebx
	jb	.LBB16_46
# BB#55:                                #   in Loop: Header=BB16_40 Depth=1
	movl	%r8d, %ecx
	jmp	.LBB16_56
.LBB16_42:                              # %if.end.61.i.for.inc.86.i_crit_edge
                                        #   in Loop: Header=BB16_40 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movq	%rbp, %r10
	jmp	.LBB16_56
.LBB16_45:                              #   in Loop: Header=BB16_40 Depth=1
	xorl	%ebx, %ebx
.LBB16_56:                              # %for.inc.86.i
                                        #   in Loop: Header=BB16_40 Depth=1
	incl	%ebx
	cmpl	%ecx, %ebx
	jb	.LBB16_40
.LBB16_57:                              # %for.end.88.i
	testq	%r10, %r10
	movq	%r10, %rbx
	je	.LBB16_59
# BB#58:                                # %if.then.90.i
	movl	108(%rsp), %eax
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	%eax, (%rdx)
.LBB16_59:                              # %for.cond.95.preheader.i
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#60:                                # %for.body.98.i.preheader
	movq	%r15, %r14
	addq	$24, %r14
	xorl	%ebp, %ebp
.LBB16_61:                              # %for.body.98.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_64 Depth 2
	testq	%rbx, %rbx
	je	.LBB16_62
# BB#97:                                # %if.then.100.i
                                        #   in Loop: Header=BB16_61 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp,8), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	pdf_reserve_char_code_in_pdfont
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rbp)
	jmp	.LBB16_68
.LBB16_62:                              # %for.cond.112.preheader.i
                                        #   in Loop: Header=BB16_61 Depth=1
	movslq	(%r15), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jle	.LBB16_66
# BB#63:                                # %for.body.116.lr.ph.i
                                        #   in Loop: Header=BB16_61 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp,8), %rax
	movq	%r14, %rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB16_64:                              # %for.body.116.i
                                        #   Parent Loop BB16_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, (%rsi)
	je	.LBB16_66
# BB#65:                                # %for.inc.125.i
                                        #   in Loop: Header=BB16_64 Depth=2
	incq	%rdx
	addq	$16, %rsi
	cmpq	%rcx, %rdx
	jl	.LBB16_64
.LBB16_66:                              # %for.end.127.i
                                        #   in Loop: Header=BB16_61 Depth=1
	movl	$-28, %eax
	cmpl	%ecx, %edx
	jge	.LBB16_69
# BB#67:                                # %cleanup.141.thread.i
                                        #   in Loop: Header=BB16_61 Depth=1
	movslq	%edx, %rax
	shlq	$4, %rax
	movb	16(%r15,%rax), %al
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rbp)
.LBB16_68:                              # %for.inc.145.i
                                        #   in Loop: Header=BB16_61 Depth=1
	incq	%rbp
	xorl	%eax, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %ebp
	jb	.LBB16_61
.LBB16_69:                              # %pdf_make_text_glyphs_table_unencoded.exit
	testl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	jns	.LBB16_90
.LBB16_96:                              # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_87:                              # %for.cond.199.preheader.i
	xorl	%ebx, %ebx
	testl	%r11d, %r11d
	movq	40(%rsp), %r8           # 8-byte Reload
	je	.LBB16_89
.LBB16_88:                              # %for.body.203.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	movl	%r14d, %esi
	movq	%r8, %rbp
	callq	gs_c_decode
	movq	%rbp, %r8
	movq	(%r8), %rcx
	movb	%al, (%rcx,%rbx)
	incq	%rbx
	cmpl	8(%r8), %ebx
	jb	.LBB16_88
.LBB16_89:                              # %pdf_make_text_glyphs_table_unencoded.exit.thread
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %r14
	leaq	80(%rsp), %r13
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB16_90
.Lfunc_end16:
	.size	pdf_obtain_font_resource_unencoded, .Lfunc_end16-pdf_obtain_font_resource_unencoded
	.cfi_endproc

	.globl	pdf_obtain_parent_type0_font_resource
	.align	16, 0x90
	.type	pdf_obtain_parent_type0_font_resource,@function
pdf_obtain_parent_type0_font_resource:  # @pdf_obtain_parent_type0_font_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp140:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp142:
	.cfi_def_cfa_offset 64
.Ltmp143:
	.cfi_offset %rbx, -56
.Ltmp144:
	.cfi_offset %r12, -48
.Ltmp145:
	.cfi_offset %r13, -40
.Ltmp146:
	.cfi_offset %r14, -32
.Ltmp147:
	.cfi_offset %r15, -24
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rcx, %r15
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	232(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB17_16
# BB#1:                                 # %land.lhs.true
	cmpl	%r13d, 232(%rbp)
	jne	.LBB17_5
# BB#2:                                 # %land.lhs.true.7
	movl	8(%r15), %edx
	cmpl	224(%rbp), %edx
	jne	.LBB17_5
# BB#3:                                 # %land.rhs.i
	movq	(%r15), %rdi
	movq	216(%rbp), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB17_4
.LBB17_5:                               # %lor.lhs.false
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_6:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
	movq	27440(%r12,%rbp,8), %r14
	jmp	.LBB17_7
	.align	16, 0x90
.LBB17_13:                              # %for.inc.i
                                        #   in Loop: Header=BB17_7 Depth=2
	movq	(%r14), %r14
.LBB17_7:                               # %for.body.i
                                        #   Parent Loop BB17_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r14, %r14
	je	.LBB17_15
# BB#8:                                 # %for.body.4.i
                                        #   in Loop: Header=BB17_7 Depth=2
	cmpl	$0, 72(%r14)
	jne	.LBB17_13
# BB#9:                                 # %if.end.i
                                        #   in Loop: Header=BB17_7 Depth=2
	cmpq	%rbx, 176(%r14)
	jne	.LBB17_13
# BB#10:                                # %if.end.8.i
                                        #   in Loop: Header=BB17_7 Depth=2
	cmpl	%r13d, 232(%r14)
	jne	.LBB17_13
# BB#11:                                # %if.end.14.i
                                        #   in Loop: Header=BB17_7 Depth=2
	movl	96(%rbx), %eax
	movl	8(%r15), %edx
	leal	1(%rax,%rdx), %ecx
	cmpl	%ecx, 96(%r14)
	jne	.LBB17_13
# BB#12:                                # %if.end.21.i
                                        #   in Loop: Header=BB17_7 Depth=2
	movq	88(%r14), %rcx
	leaq	1(%rcx,%rax), %rdi
	movq	(%r15), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB17_13
	jmp	.LBB17_14
	.align	16, 0x90
.LBB17_15:                              # %for.inc.30.i
                                        #   in Loop: Header=BB17_6 Depth=1
	incq	%rbp
	cmpq	$16, %rbp
	jl	.LBB17_6
.LBB17_16:                              # %if.then.23
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbx, %rcx
	movq	%r15, %r8
	callq	pdf_font_type0_alloc
	testl	%eax, %eax
	js	.LBB17_20
# BB#17:                                # %if.end
	movq	(%rbp), %r14
	movl	%r13d, 232(%r14)
	jmp	.LBB17_18
.LBB17_14:                              # %pdf_find_type0_font_resource.exit
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r14, (%rax)
.LBB17_18:                              # %if.end.30
	movq	%r14, 232(%rbx)
.LBB17_19:                              # %return
	xorl	%eax, %eax
.LBB17_20:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_4:                               # %if.then
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rbp, (%rax)
	jmp	.LBB17_19
.Lfunc_end17:
	.size	pdf_obtain_parent_type0_font_resource, .Lfunc_end17-pdf_obtain_parent_type0_font_resource
	.cfi_endproc

	.globl	pdf_find_glyph
	.align	16, 0x90
	.type	pdf_find_glyph,@function
pdf_find_glyph:                         # @pdf_find_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	movl	72(%rdi), %ecx
	cmpq	$54, %rcx
	ja	.LBB18_10
# BB#1:                                 # %entry
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB18_10
# BB#2:                                 # %if.else
	movl	176(%rdi), %ecx
	movl	180(%rdi), %r8d
	xorl	%eax, %eax
	cmpl	%r8d, %ecx
	jg	.LBB18_10
# BB#3:                                 # %for.body.lr.ph
	movq	192(%rdi), %rdi
	movl	$-1, %eax
	.align	16, 0x90
.LBB18_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rdx
	cmpq	%rsi, %rdx
	je	.LBB18_5
# BB#6:                                 # %if.end.28
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	cmovel	%ecx, %edx
	cmpl	$-1, %eax
	cmovel	%edx, %eax
	leal	1(%rcx), %edx
	addq	$32, %rdi
	cmpl	%r8d, %ecx
	movl	%edx, %ecx
	jl	.LBB18_4
# BB#7:                                 # %for.end
	cmpl	$-1, %eax
	je	.LBB18_9
# BB#8:                                 # %if.then.39
	cltq
	retq
.LBB18_5:                               # %if.then.27
	movslq	%ecx, %rax
	retq
.LBB18_9:                               # %if.end.41
	cmpl	$256, %edx              # imm = 0x100
	movslq	%edx, %rcx
	movq	$-1, %rax
	cmovlq	%rcx, %rax
.LBB18_10:                              # %return
	retq
.Lfunc_end18:
	.size	pdf_find_glyph, .Lfunc_end18-pdf_find_glyph
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4634766966517661696     # double 72
.LCPI19_1:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_2:
	.long	1065353216              # float 1
	.text
	.globl	pdf_calculate_text_size
	.align	16, 0x90
	.type	pdf_calculate_text_size,@function
pdf_calculate_text_size:                # @pdf_calculate_text_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp150:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp151:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp152:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp153:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp154:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp155:
	.cfi_def_cfa_offset 112
.Ltmp156:
	.cfi_offset %rbx, -56
.Ltmp157:
	.cfi_offset %r12, -48
.Ltmp158:
	.cfi_offset %r13, -40
.Ltmp159:
	.cfi_offset %r14, -32
.Ltmp160:
	.cfi_offset %r15, -24
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	112(%rsp), %rax
	movss	884(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	888(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	pdf_font_resource_font
	movl	72(%rbp), %ecx
	cmpq	$54, %rcx
	ja	.LBB19_4
# BB#1:                                 # %entry
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB19_4
# BB#2:                                 # %if.then
	movq	264(%rbp), %rax
	movq	%rax, 48(%rsp)
	movupd	248(%rbp), %xmm0
	movapd	%xmm0, 32(%rsp)
	jmp	.LBB19_7
.LBB19_4:                               # %if.else
	testq	%rax, %rax
	je	.LBB19_6
# BB#5:                                 # %if.then.23
	movq	96(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movupd	80(%rax), %xmm0
	movapd	%xmm0, 32(%rsp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.25
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	pdf_font_orig_matrix
.LBB19_7:                               # %if.end.27
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI19_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_matrix_invert
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	movups	132(%r15), %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB19_9
# BB#8:                                 # %call.sqrt
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB19_9:                               # %if.end.27.split
	divsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI19_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jbe	.LBB19_13
# BB#10:                                # %if.then.44
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI19_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB19_12
# BB#11:                                # %call.sqrt30
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB19_12:                              # %if.then.44.split
	divsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movsd	.LCPI19_1(%rip), %xmm2  # xmm2 = mem[0],zero
.LBB19_13:                              # %if.end.57
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.LBB19_15
# BB#14:
	movss	.LCPI19_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB19_15:                              # %if.end.57
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pdf_calculate_text_size, .Lfunc_end19-pdf_calculate_text_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4576918229304087675     # double 0.01
.LCPI20_1:
	.quad	4571153621781053440     # double 0.00390625
.LCPI20_2:
	.quad	4562254508917369340     # double 0.001
.LCPI20_3:
	.quad	4634766966517661696     # double 72
.LCPI20_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	pdf_update_text_state
	.align	16, 0x90
	.type	pdf_update_text_state,@function
pdf_update_text_state:                  # @pdf_update_text_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp165:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp166:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp168:
	.cfi_def_cfa_offset 208
.Ltmp169:
	.cfi_offset %rbx, -56
.Ltmp170:
	.cfi_offset %r12, -48
.Ltmp171:
	.cfi_offset %r13, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	88(%r13), %r15
	movq	192(%r13), %rbp
	movq	120(%r13), %rdi
	leaq	128(%rsp), %rsi
	callq	gx_path_current_point
	testl	%eax, %eax
	js	.LBB20_39
# BB#1:                                 # %if.end
	movq	104(%r13), %rdi
	movq	192(%r13), %r9
	movq	%r15, (%rsp)
	leaq	104(%rsp), %rcx
	leaq	80(%rsp), %r8
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	pdf_calculate_text_size
	movl	(%r13), %eax
	xorps	%xmm4, %xmm4
	xorl	%ebx, %ebx
	testb	$64, %al
	jne	.LBB20_3
# BB#2:
	xorps	%xmm5, %xmm5
	jmp	.LBB20_14
.LBB20_3:                               # %if.then.3
	movq	192(%r13), %rcx
	movl	$64, %ebx
	cmpl	$0, 148(%rcx)
	xorps	%xmm5, %xmm5
	jne	.LBB20_14
# BB#4:                                 # %if.then.6
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movsd	24(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%r13), %xmm1         # xmm1 = mem[0],zero
	leaq	104(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	gs_distance_transform_inverse
	testl	%eax, %eax
	js	.LBB20_5
# BB#6:                                 # %if.end.i
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB20_7
	jnp	.LBB20_11
.LBB20_7:                               # %if.end.4.i
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	104(%rsp), %rdi
	leaq	136(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	xorpd	%xmm1, %xmm1
	testl	%eax, %eax
	js	.LBB20_11
# BB#8:                                 # %if.end.9.i
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	24(%r13), %xmm0
	callq	fabs
	xorpd	%xmm1, %xmm1
	movsd	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_11
# BB#9:                                 # %land.lhs.true.i
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	32(%r13), %xmm0
	callq	fabs
	xorpd	%xmm1, %xmm1
	movsd	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_11
# BB#10:                                # %if.then.19.i
	movq	$0, 72(%rsp)
.LBB20_11:                              # %land.lhs.true
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$64, %ebx
	ucomisd	%xmm1, %xmm0
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	xorps	%xmm4, %xmm4
	jne	.LBB20_13
	jp	.LBB20_13
# BB#12:                                # %if.then.11
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	mulsd	64(%rsp), %xmm1
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm1, %xmm5
	xorl	%ebx, %ebx
	jmp	.LBB20_13
.LBB20_5:                               # %transform_delta_inverse.exit.thread105
	xorps	%xmm5, %xmm5
	movl	$64, %ebx
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	xorps	%xmm4, %xmm4
.LBB20_13:                              # %if.end.13
	movl	(%r13), %eax
.LBB20_14:                              # %if.end.17
	testb	$-128, %al
	je	.LBB20_26
# BB#15:                                # %if.then.22
	movss	%xmm5, 32(%rsp)         # 4-byte Spill
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movsd	40(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%r13), %xmm1         # xmm1 = mem[0],zero
	leaq	104(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	gs_distance_transform_inverse
	testl	%eax, %eax
	js	.LBB20_16
# BB#18:                                # %if.end.i.86
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB20_19
	jnp	.LBB20_23
.LBB20_19:                              # %if.end.4.i.90
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	104(%rsp), %rdi
	leaq	136(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	xorpd	%xmm1, %xmm1
	testl	%eax, %eax
	js	.LBB20_23
# BB#20:                                # %if.end.9.i.95
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	40(%r13), %xmm0
	callq	fabs
	xorpd	%xmm1, %xmm1
	movsd	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_23
# BB#21:                                # %land.lhs.true.i.100
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	48(%r13), %xmm0
	callq	fabs
	xorpd	%xmm1, %xmm1
	movsd	.LCPI20_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_23
# BB#22:                                # %if.then.19.i.101
	movq	$0, 72(%rsp)
.LBB20_23:                              # %land.lhs.true.28
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movss	32(%rsp), %xmm5         # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	jne	.LBB20_17
	jp	.LBB20_17
# BB#24:                                # %land.lhs.true.32
	cmpq	$32, 56(%r13)
	jne	.LBB20_17
# BB#25:                                # %if.then.36
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	mulsd	64(%rsp), %xmm1
	cvtsd2ss	%xmm1, %xmm4
	jmp	.LBB20_26
.LBB20_16:                              # %transform_delta_inverse.exit103.thread108
	movss	32(%rsp), %xmm5         # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
.LBB20_17:                              # %if.else.41
	orl	$128, %ebx
	xorps	%xmm4, %xmm4
	movaps	48(%rsp), %xmm0         # 16-byte Reload
.LBB20_26:                              # %if.end.44
	movaps	80(%rsp), %xmm6
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	divps	%xmm1, %xmm6
	movaps	%xmm6, 80(%rsp)
	cvtsi2sdl	128(%rsp), %xmm3
	movsd	.LCPI20_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm3
	movss	96(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, 96(%rsp)
	xorps	%xmm2, %xmm2
	cvtsi2sdl	132(%rsp), %xmm2
	mulsd	%xmm1, %xmm2
	movss	100(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 100(%rsp)
	movss	%xmm5, (%r14)
	movq	%r12, 8(%r14)
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 16(%r14)
	movq	96(%rsp), %rax
	movq	%rax, 40(%r14)
	movapd	80(%rsp), %xmm1
	movupd	%xmm1, 24(%r14)
	movq	104(%r13), %r12
	movl	252(%r12), %eax
	movl	%eax, 48(%r14)
	movss	%xmm4, 52(%r14)
	movq	%rbp, 56(%r14)
	cmpl	$2, 152(%rbp)
	jne	.LBB20_37
# BB#27:                                # %if.end.44
	testl	%eax, %eax
	jne	.LBB20_37
# BB#28:                                # %if.then.76
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movq	192(%r13), %rax
	movss	92(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movss	156(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm2, %xmm1
	cvtss2sd	%xmm2, %xmm2
	jne	.LBB20_29
# BB#30:                                # %if.then.76
	movaps	%xmm6, 32(%rsp)         # 16-byte Spill
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	jp	.LBB20_32
# BB#31:                                # %if.then.76
	movsd	.LCPI20_2(%rip), %xmm2  # xmm2 = mem[0],zero
	jmp	.LBB20_32
.LBB20_37:                              # %if.else.145
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	pdf_set_text_process_state
	jmp	.LBB20_38
.LBB20_29:
	movaps	%xmm6, 32(%rsp)         # 16-byte Spill
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
.LBB20_32:                              # %if.then.76
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movl	24(%r12), %ebp
	movss	888(%r15), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI20_3(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	leaq	116(%rax), %rcx
	ucomiss	%xmm1, %xmm3
	jne	.LBB20_34
	jp	.LBB20_34
# BB#33:                                # %select.mid
	addq	$108, %rax
	movq	%rax, %rcx
.LBB20_34:                              # %select.end
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	16(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	movaps	32(%rsp), %xmm3         # 16-byte Reload
	movaps	%xmm3, %xmm0
	shufps	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	xorpd	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	cmpneqss	%xmm1, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm3, %xmm2
	orps	%xmm0, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	mulsd	%xmm4, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movl	$1, 48(%r14)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movq	%r14, %rdx
	callq	pdf_set_PaintType0_params
	testl	%eax, %eax
	js	.LBB20_39
# BB#35:                                # %if.end.128
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI20_4(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r12)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	pdf_set_text_process_state
	testl	%eax, %eax
	js	.LBB20_39
# BB#36:                                # %cleanup
	movl	%ebp, 24(%r12)
.LBB20_38:                              # %if.end.147
	testl	%eax, %eax
	cmovnsl	%ebx, %eax
.LBB20_39:                              # %cleanup.154
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pdf_update_text_state, .Lfunc_end20-pdf_update_text_state
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_set_text_process_state
	.align	16, 0x90
	.type	pdf_set_text_process_state,@function
pdf_set_text_process_state:             # @pdf_set_text_process_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp177:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp179:
	.cfi_def_cfa_offset 48
.Ltmp180:
	.cfi_offset %rbx, -40
.Ltmp181:
	.cfi_offset %r12, -32
.Ltmp182:
	.cfi_offset %r14, -24
.Ltmp183:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	%r14, %rsi
	callq	pdf_render_mode_uses_stroke
	testl	%eax, %eax
	je	.LBB21_8
# BB#1:                                 # %if.then
	movq	104(%rbx), %r15
	movl	24(%r15), %ebx
	cmpl	$3, 26560(%r12)
	jne	.LBB21_3
# BB#2:                                 # %if.then.2
	movq	%r12, %rdi
	callq	sync_text_state
	testl	%eax, %eax
	js	.LBB21_9
.LBB21_3:                               # %if.end.6
	movl	$1, %esi
	movq	%r12, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB21_9
# BB#4:                                 # %if.end.10
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_prepare_stroke
	testl	%eax, %eax
	js	.LBB21_6
# BB#5:                                 # %if.then.13
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gdev_vector_prepare_stroke
	testl	%eax, %eax
	js	.LBB21_9
.LBB21_6:                               # %if.end.18
	movl	$3, %esi
	movq	%r12, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB21_9
# BB#7:                                 # %cleanup
	movl	%ebx, 24(%r15)
.LBB21_8:                               # %if.end.30
	movq	%r12, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	pdf_set_text_state_values # TAILCALL
.LBB21_9:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	pdf_set_text_process_state, .Lfunc_end21-pdf_set_text_process_state
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4652007308841189376     # double 1000
.LCPI22_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	pdf_glyph_widths
	.align	16, 0x90
	.type	pdf_glyph_widths,@function
pdf_glyph_widths:                       # @pdf_glyph_widths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp187:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp188:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp189:
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp190:
	.cfi_def_cfa_offset 560
.Ltmp191:
	.cfi_offset %rbx, -56
.Ltmp192:
	.cfi_offset %r12, -48
.Ltmp193:
	.cfi_offset %r13, -40
.Ltmp194:
	.cfi_offset %r14, -32
.Ltmp195:
	.cfi_offset %r15, -24
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, %rbp
	movq	%rcx, %r13
	movq	%rdx, %r12
	movl	%esi, %r14d
	xorl	%esi, %esi
	callq	pdf_font_resource_font
	movq	%rax, %r15
	movl	128(%r13), %eax
	movl	%eax, %ecx
	andl	$-3, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	cmpl	$9, %ecx
	sete	47(%rsp)                # 1-byte Folded Spill
	movl	$-28, %ebx
	testl	%eax, %eax
	je	.LBB22_67
# BB#1:                                 # %if.end
	leaq	216(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	glyph_orig_matrix
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB22_67
# BB#2:                                 # %if.end.8
	leaq	192(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	glyph_orig_matrix
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB22_67
# BB#3:                                 # %if.end.12
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	216(%rsp), %rdi
	movapd	%xmm0, %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	leaq	192(%rsp), %rdi
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 24(%rbp)
	movq	$0, 72(%rbp)
	movupd	%xmm0, 56(%rbp)
	movupd	%xmm0, 40(%rbp)
	movq	$0, 80(%rbp)
	cmpq	$2147483647, %r12       # imm = 0x7FFFFFFF
	movq	%r12, %rsi
	jne	.LBB22_5
# BB#4:                                 # %if.then.30
	leaq	216(%rsp), %rdx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rbp, %rcx
	callq	get_missing_width
	movl	%eax, %ebx
	jmp	.LBB22_67
.LBB22_5:                               # %if.end.32
	leaq	24(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$1, %r12d
	movl	%r14d, %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	shll	%cl, %r12d
	movl	$64, %eax
	shll	%cl, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	$65, %r14d
	shll	%cl, %r14d
	movl	%r14d, %ecx
	orl	$33, %ecx
	leaq	240(%rsp), %r8
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	callq	*224(%r15)
	movl	%eax, %ebx
	cmpl	$-21, %ebx
	jne	.LBB22_6
# BB#9:                                 # %land.lhs.true
	movl	128(%r13), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB22_7
# BB#10:                                # %if.then.46
	movl	%r14d, (%rsp)           # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$0, 56(%rsp)
	leaq	56(%rsp), %r15
	leaq	344(%rsp), %rbx
	xorl	%r14d, %r14d
	movl	$-21, %ebp
	.align	16, 0x90
.LBB22_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	callq	*216(%r13)
	testl	%eax, %eax
	js	.LBB22_21
# BB#12:                                # %for.cond
                                        #   in Loop: Header=BB22_11 Depth=1
	movl	56(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_21
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	344(%rsp), %rsi
	movq	%r13, %rdi
	callq	gs_font_glyph_is_notdef
	testl	%eax, %eax
	je	.LBB22_11
# BB#14:                                # %if.then.53
	movq	344(%rsp), %rsi
	leaq	240(%rsp), %r8
	xorl	%edx, %edx
	movq	%r13, %rdi
	movl	%r12d, %ecx
	callq	*224(%r13)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB22_67
# BB#15:                                # %if.end.60
	movl	36(%rsp), %r14d         # 4-byte Reload
	movslq	%r14d, %rax
	shlq	$4, %rax
	movsd	248(%rsp,%rax), %xmm0   # xmm0 = mem[0],zero
	movsd	256(%rsp,%rax), %xmm1   # xmm1 = mem[0],zero
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	8(%rbp), %rbx
	leaq	216(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_distance_transform
	leaq	16(%rbp), %rax
	testl	%r14d, %r14d
	movq	%rax, %rcx
	cmoveq	%rbx, %rcx
	cmoveq	%rax, %rbx
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rcx), %rax
	movq	%rax, (%rbp)
	movl	$1, %ebp
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB22_17
	jp	.LBB22_17
# BB#16:                                # %if.end.14.i
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	216(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gs_distance_transform
	xorl	%ebp, %ebp
.LBB22_17:                              # %if.end.65
	movl	4(%rsp), %eax           # 4-byte Reload
	testl	240(%rsp), %eax
	je	.LBB22_19
# BB#18:                                # %if.then.71
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	216(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	gs_distance_transform
	jmp	.LBB22_20
.LBB22_6:                               # %lor.lhs.false
	testl	240(%rsp), %r12d
	je	.LBB22_7
# BB#29:                                # %if.else.111
	testl	%ebx, %ebx
	js	.LBB22_67
# BB#30:                                # %if.else.114
	movl	%r14d, (%rsp)           # 4-byte Spill
	movl	36(%rsp), %r14d         # 4-byte Reload
	movslq	%r14d, %rax
	shlq	$4, %rax
	movsd	248(%rsp,%rax), %xmm0   # xmm0 = mem[0],zero
	movsd	256(%rsp,%rax), %xmm1   # xmm1 = mem[0],zero
	leaq	8(%rbp), %rbx
	leaq	216(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_distance_transform
	leaq	16(%rbp), %rax
	testl	%r14d, %r14d
	movq	%rax, %rcx
	cmoveq	%rbx, %rcx
	cmoveq	%rax, %rbx
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rcx), %rax
	movq	%rax, (%rbp)
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$1, %ebp
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB22_32
	jp	.LBB22_32
# BB#31:                                # %if.end.14.i.125
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	216(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gs_distance_transform
	xorl	%ebp, %ebp
.LBB22_32:                              # %if.end.119
	movl	4(%rsp), %eax           # 4-byte Reload
	testl	240(%rsp), %eax
	je	.LBB22_34
# BB#33:                                # %if.then.125
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	216(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	gs_distance_transform
	jmp	.LBB22_35
.LBB22_7:                               # %if.else.82
	leaq	216(%rsp), %rdx
	movq	%r15, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	%rbp, %rcx
	callq	get_missing_width
	movq	%rbp, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_8
# BB#22:                                # %if.else.87
	movq	32(%rcx), %rax
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rax, 184(%rsp)
	jmp	.LBB22_23
.LBB22_8:                               # %if.then.85
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	$0, 184(%rsp)
.LBB22_23:                              # %if.end.92
	movq	24(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB22_28
# BB#24:                                # %if.then.94
	leaq	344(%rsp), %rcx
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	*184(%r15)
	testl	%eax, %eax
	js	.LBB22_25
# BB#26:                                # %if.else.99
	movl	%r14d, (%rsp)           # 4-byte Spill
	movl	404(%rsp), %eax
	cvtsi2sdl	%eax, %xmm0
	leaq	104(%rsp), %rsi
	leaq	216(%rsp), %rdi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 88(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
	movd	%rax, %xmm0
	mulsd	.LCPI22_1(%rip), %xmm0
	jmp	.LBB22_27
.LBB22_28:                              # %if.else.104
	movl	%r14d, (%rsp)           # 4-byte Spill
	movq	(%rbx), %rax
	movq	%rax, 176(%rsp)
	xorl	%r14d, %r14d
	movq	48(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB22_44
.LBB22_25:                              # %if.then.97
	movl	%r14d, (%rsp)           # 4-byte Spill
	xorpd	%xmm0, %xmm0
.LBB22_27:                              # %if.end.103
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, 176(%rsp)
	xorl	%r14d, %r14d
	jmp	.LBB22_44
.LBB22_34:                              # %if.else.131
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 176(%rsp)
.LBB22_35:                              # %if.end.134
	movq	24(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB22_36
# BB#37:                                # %land.lhs.true.136
	movl	128(%r13), %eax
	andl	$-3, %eax
	cmpl	$9, %eax
	jne	.LBB22_36
# BB#38:                                # %if.then.139
	testl	240(%rsp), %r12d
	je	.LBB22_40
# BB#39:                                # %if.then.144
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	216(%rsp), %rdi
	leaq	344(%rsp), %rsi
	callq	gs_distance_transform
	movsd	344(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI22_1(%rip), %xmm0
	movsd	%xmm0, 176(%rsp)
.LBB22_36:
	movl	%ebp, %r14d
	movq	48(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB22_44
.LBB22_19:                              # %if.else
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 176(%rsp)
.LBB22_20:                              # %cleanup.thread
	movl	%ebp, %r14d
.LBB22_21:                              # %cleanup.thread
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB22_44:                              # %if.end.169
	movapd	176(%rsp), %xmm0
	movupd	%xmm0, (%rbx)
	testl	%ebp, %ebp
	jle	.LBB22_47
# BB#45:                                # %land.lhs.true.173
	movl	128(%r13), %eax
	andl	$-3, %eax
	cmpl	$9, %eax
	je	.LBB22_47
# BB#46:                                # %if.then.176
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	$0, 16(%rax)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%rax)
.LBB22_47:                              # %if.end.185
	testq	%rcx, %rcx
	je	.LBB22_48
# BB#50:                                # %if.else.204
	movups	(%rcx), %xmm0
	movups	%xmm0, 248(%rsp)
	movupd	48(%rcx), %xmm0
	movupd	%xmm0, 264(%rsp)
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB22_52
# BB#51:                                # %cond.true
	movq	64(%rcx), %rax
	movq	%rax, 280(%rsp)
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	jmp	.LBB22_53
.LBB22_48:                              # %if.then.187
	movzbl	47(%rsp), %ecx          # 1-byte Folded Reload
	shll	$8, %ecx
	movl	$0, 240(%rsp)
	orl	(%rsp), %ecx            # 4-byte Folded Reload
	leaq	240(%rsp), %r8
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*224(%r13)
	movl	%eax, %ebx
	movl	240(%rsp), %eax
	testb	$1, %ah
	jne	.LBB22_49
# BB#54:                                # %if.end.239
	cmpl	$-21, %ebx
	movq	16(%rsp), %rbp          # 8-byte Reload
	je	.LBB22_56
	jmp	.LBB22_55
.LBB22_52:                              # %cond.end.230.critedge
	movq	$0, 280(%rsp)
	xorpd	%xmm0, %xmm0
.LBB22_53:                              # %if.end.239.thread
	movq	16(%rsp), %rbp          # 8-byte Reload
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	setne	%al
	movsd	%xmm0, 288(%rsp)
	movzbl	%al, %eax
	shll	$7, %eax
	orl	%r12d, %eax
	movl	%eax, 240(%rsp)
	xorl	%ebx, %ebx
.LBB22_55:                              # %lor.lhs.false.241
	testl	%r12d, %eax
	je	.LBB22_56
# BB#57:                                # %if.else.249
	testl	%ebx, %ebx
	js	.LBB22_67
# BB#58:                                # %if.else.252
	leaq	56(%rbp), %r15
	testb	$-64, %al
	je	.LBB22_62
# BB#59:                                # %if.then.256
	movl	$1, 80(%rbp)
	cmpl	$1, 36(%rsp)            # 4-byte Folded Reload
	jne	.LBB22_63
# BB#60:                                # %if.then.256
	andl	$128, %eax
	jne	.LBB22_63
# BB#61:                                # %if.then.263
	movl	$1, 84(%rbp)
	jmp	.LBB22_63
.LBB22_56:                              # %if.then.246
	leaq	40(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movupd	(%rbp), %xmm0
	movupd	16(%rbp), %xmm1
	movupd	%xmm1, 16(%rax)
	movupd	%xmm0, (%rax)
	movl	%r14d, %ebx
	jmp	.LBB22_67
.LBB22_49:                              # %if.then.199
	cmpl	$9, 40(%rsp)            # 4-byte Folded Reload
	movl	$3, %eax
	movl	$-15, %ebx
	cmovel	%eax, %ebx
	jmp	.LBB22_67
.LBB22_62:                              # %if.else.266
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 280(%rsp)
.LBB22_63:                              # %if.end.271
	movl	36(%rsp), %r12d         # 4-byte Reload
	movslq	%r12d, %rax
	shlq	$4, %rax
	movsd	248(%rsp,%rax), %xmm0   # xmm0 = mem[0],zero
	movsd	256(%rsp,%rax), %xmm1   # xmm1 = mem[0],zero
	leaq	48(%rbp), %rbx
	leaq	192(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_distance_transform
	testl	%r12d, %r12d
	movq	%r15, %rax
	cmoveq	%rbx, %rax
	cmoveq	%r15, %rbx
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movq	(%rax), %rax
	movq	%rax, 40(%rbp)
	leaq	64(%rbp), %rbp
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB22_64
	jnp	.LBB22_65
.LBB22_64:                              # %if.end.271.if.end.276_crit_edge
	movl	$1, %ebx
	jmp	.LBB22_66
.LBB22_65:                              # %if.end.14.i.163
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	192(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gs_distance_transform
	xorl	%ebx, %ebx
.LBB22_66:                              # %if.end.276
	orl	%r14d, %ebx
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	192(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gs_distance_transform
.LBB22_67:                              # %cleanup.287
	movl	%ebx, %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_40:                              # %if.else.154
	leaq	344(%rsp), %rcx
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%r15, %rdi
	callq	*184(%r15)
	testl	%eax, %eax
	js	.LBB22_41
# BB#42:                                # %if.else.160
	movl	404(%rsp), %eax
	cvtsi2sdl	%eax, %xmm0
	leaq	104(%rsp), %rsi
	leaq	216(%rsp), %rdi
	xorpd	%xmm1, %xmm1
	callq	gs_distance_transform
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 88(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
	movd	%rax, %xmm0
	mulsd	.LCPI22_1(%rip), %xmm0
	jmp	.LBB22_43
.LBB22_41:                              # %if.then.158
	xorpd	%xmm0, %xmm0
.LBB22_43:                              # %if.end.165
	movq	48(%rsp), %rcx          # 8-byte Reload
	movsd	%xmm0, 176(%rsp)
	movl	%ebp, %r14d
	jmp	.LBB22_44
.Lfunc_end22:
	.size	pdf_glyph_widths, .Lfunc_end22-pdf_glyph_widths
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_orig_matrix,@function
glyph_orig_matrix:                      # @glyph_orig_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp199:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp201:
	.cfi_def_cfa_offset 48
.Ltmp202:
	.cfi_offset %rbx, -40
.Ltmp203:
	.cfi_offset %r14, -32
.Ltmp204:
	.cfi_offset %r15, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%r14, %rsi
	callq	pdf_font_orig_matrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB23_5
# BB#1:                                 # %if.then
	cmpl	$9, 128(%rbx)
	jne	.LBB23_5
# BB#2:                                 # %if.then.2
	movl	$2147483648, %eax       # imm = 0x80000000
	testq	$-2147483648, %r15      # imm = 0xFFFFFFFF80000000
	cmoveq	%rax, %r15
	leaq	4(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*528(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB23_4
# BB#3:                                 # %if.end.11
	leaq	4(%rsp), %rcx
	movl	$2147483648, %esi       # imm = 0x80000000
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*528(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB23_5
.LBB23_4:                               # %if.then.13
	movl	4(%rsp), %esi
	movq	%rbx, %rdi
	callq	gs_cid0_indexed_font
	leaq	80(%rax), %rdi
	movq	%r14, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
.LBB23_5:                               # %if.end.18
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	glyph_orig_matrix, .Lfunc_end23-glyph_orig_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	-4620693217682128896    # double -0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	get_missing_width,@function
get_missing_width:                      # @get_missing_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp208:
	.cfi_def_cfa_offset 32
	subq	$160, %rsp
.Ltmp209:
	.cfi_def_cfa_offset 192
.Ltmp210:
	.cfi_offset %rbx, -32
.Ltmp211:
	.cfi_offset %r14, -24
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	%esi, %ebp
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$2048, %edx             # imm = 0x800
	callq	*184(%rdi)
	testl	%eax, %eax
	js	.LBB24_5
# BB#1:                                 # %if.end
	testl	%ebp, %ebp
	movl	60(%rsp), %eax
	je	.LBB24_3
# BB#2:                                 # %if.then.1
	negl	%eax
	cvtsi2sdl	%eax, %xmm1
	leaq	48(%rbx), %rsi
	xorps	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	gs_distance_transform
	movq	$0, 8(%rbx)
	movq	56(%rbx), %rax
	movq	%rax, 16(%rbx)
	movq	%rax, 40(%rbx)
	movq	%rax, (%rbx)
	movd	%rax, %xmm0
	movsd	.LCPI24_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rbx)
	xorpd	.LCPI24_1(%rip), %xmm0
	movlpd	%xmm0, 32(%rbx)
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	cvtsi2sdl	%eax, %xmm0
	leaq	48(%rbx), %rsi
	xorpd	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	gs_distance_transform
	movq	48(%rbx), %rax
	movq	%rax, 8(%rbx)
	movq	%rax, 40(%rbx)
	movq	%rax, (%rbx)
	movq	$0, 32(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 16(%rbx)
.LBB24_4:                               # %cleanup
	movl	$1, %eax
.LBB24_5:                               # %cleanup
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	get_missing_width, .Lfunc_end24-get_missing_width
	.cfi_endproc

	.globl	pdf_default_text_begin
	.align	16, 0x90
	.type	pdf_default_text_begin,@function
pdf_default_text_begin:                 # @pdf_default_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$120, %rsp
.Ltmp213:
	.cfi_def_cfa_offset 128
	movq	80(%rsi), %rax
	movq	%rax, 112(%rsp)
	movups	64(%rsi), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movaps	%xmm3, 80(%rsp)
	movaps	%xmm2, 64(%rsp)
	movaps	%xmm1, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	192(%rdi), %rcx
	cmpl	$3, 128(%rcx)
	jne	.LBB25_3
# BB#1:                                 # %land.lhs.true
	movl	32(%rsp), %eax
	testb	$2, %ah
	je	.LBB25_3
# BB#2:                                 # %if.then
	andl	$-1537, %eax            # imm = 0xFFFFFFFFFFFFF9FF
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 32(%rsp)
.LBB25_3:                               # %if.end
	movq	88(%rdi), %r10
	movq	104(%rdi), %rsi
	movq	120(%rdi), %r8
	movq	128(%rdi), %r9
	movq	136(%rdi), %rax
	movq	144(%rdi), %rdi
	movq	%rdx, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	32(%rsp), %rdx
	movq	%r10, %rdi
	callq	gx_default_text_begin
	addq	$120, %rsp
	retq
.Lfunc_end25:
	.size	pdf_default_text_begin, .Lfunc_end25-pdf_default_text_begin
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_text_resync,@function
pdf_text_resync:                        # @pdf_text_resync
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 32
.Ltmp217:
	.cfi_offset %rbx, -32
.Ltmp218:
	.cfi_offset %r14, -24
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	(%r14), %eax
	xorl	(%rbx), %eax
	movl	$-15, %ebp
	cmpl	$63, %eax
	ja	.LBB26_4
# BB#1:                                 # %if.end
	movq	448(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB26_3
# BB#2:                                 # %if.then.4
	movq	%r14, %rsi
	callq	gs_text_resync
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB26_4
.LBB26_3:                               # %if.end.8
	movq	80(%r14), %rax
	movq	%rax, 80(%rbx)
	movups	64(%r14), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movups	48(%r14), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_text_enum_copy_dynamic
.LBB26_4:                               # %cleanup.11
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	pdf_text_resync, .Lfunc_end26-pdf_text_resync
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_0:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
.LCPI27_2:
	.quad	4666723172467343360     # double 1.000000e+04
	.quad	4666723172467343360     # double 1.000000e+04
.LCPI27_3:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	pdf_text_process,@function
pdf_text_process:                       # @pdf_text_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp223:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp224:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp225:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp226:
	.cfi_def_cfa_offset 496
.Ltmp227:
	.cfi_offset %rbx, -56
.Ltmp228:
	.cfi_offset %r12, -48
.Ltmp229:
	.cfi_offset %r13, -40
.Ltmp230:
	.cfi_offset %r14, -32
.Ltmp231:
	.cfi_offset %r15, -24
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	(%r13), %eax
	movl	16(%r13), %ecx
	subl	232(%r13), %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	88(%r13), %r14
	movq	448(%r13), %r12
	testq	%r12, %r12
	je	.LBB27_2
# BB#1:                                 # %entry.if.end.16_crit_edge
	movl	%eax, 112(%rsp)         # 4-byte Spill
	leaq	192(%r13), %rax
	jmp	.LBB27_47
.LBB27_2:                               # %if.then
	movq	104(%r13), %r15
	movq	136(%r13), %rbx
	movq	192(%r13), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	testb	$2, %ah
	movl	%eax, 112(%rsp)         # 4-byte Spill
	je	.LBB27_4
# BB#3:                                 # %lor.lhs.false.i
	xorl	%r12d, %r12d
	cmpl	$3, 252(%r15)
	movl	112(%rsp), %eax         # 4-byte Reload
	jne	.LBB27_11
.LBB27_4:                               # %if.then.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_must_put_clip_path
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB27_6
# BB#5:                                 # %if.then.5.i
	movq	%r14, %rdi
	callq	pdf_unclip
	jmp	.LBB27_8
.LBB27_6:                               # %if.else.i
	cmpl	$0, 26560(%r14)
	jne	.LBB27_9
# BB#7:                                 # %if.then.8.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_page
.LBB27_8:                               # %if.end.11.i
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_41
.LBB27_9:                               # %if.end.14.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_prepare_fill
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_41
# BB#10:                                # %if.end.14.if.end.19_crit_edge.i
	movl	(%r13), %eax
.LBB27_11:                              # %if.end.19.i
	testb	$4, %ah
	je	.LBB27_44
# BB#12:                                # %if.then.23.i
	testl	%r12d, %r12d
	je	.LBB27_14
# BB#13:                                # %if.then.25.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_put_clip_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_41
.LBB27_14:                              # %if.end.30.i
	cmpl	$0, 9524(%r14)
	je	.LBB27_15
# BB#35:                                # %if.else.123.i
	movq	1760(%r15), %rdx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB27_38
# BB#36:                                # %cond.end.132.i
	movq	%r15, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB27_41
# BB#37:                                # %cond.end.132.if.end.136_crit_edge.i
	movq	1760(%r15), %rdx
.LBB27_38:                              # %if.end.136.i
	leaq	8144(%r14), %rcx
	leaq	7504(%r14), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_set_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_41
# BB#39:                                # %lor.lhs.false.144.i
	movq	1760(%r15), %rdx
	leaq	7512(%r14), %rcx
	leaq	7500(%r14), %r8
	movl	$psdf_set_fill_color_commands, %r9d
.LBB27_40:                              # %lor.lhs.false.144.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_set_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB27_44
	jmp	.LBB27_41
.LBB27_15:                              # %if.then.32.i
	movl	252(%r15), %eax
	movl	%eax, %ecx
	orl	$4, %ecx
	cmpl	$7, %ecx
	je	.LBB27_44
# BB#16:                                # %if.then.37.i
	movq	136(%rsp), %rcx         # 8-byte Reload
	cmpl	$2, 152(%rcx)
	jne	.LBB27_21
# BB#17:                                # %if.then.39.i
	movq	1760(%r15), %rdx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB27_20
# BB#18:                                # %cond.end.i
	movq	%r15, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB27_41
# BB#19:                                # %cond.end.if.end.44_crit_edge.i
	movq	1760(%r15), %rdx
.LBB27_20:                              # %if.end.44.i
	leaq	8144(%r14), %rcx
	leaq	7504(%r14), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	jmp	.LBB27_40
.LBB27_21:                              # %if.else.52.i
	cmpl	$6, %eax
	ja	.LBB27_28
# BB#22:                                # %if.else.52.i
	movl	$85, %ecx
	btl	%eax, %ecx
	jae	.LBB27_28
# BB#23:                                # %if.then.64.i
	movq	1760(%r15), %rdx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB27_26
# BB#24:                                # %cond.end.73.i
	movq	%r15, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB27_41
# BB#25:                                # %cond.end.73.if.end.77_crit_edge.i
	movq	1760(%r15), %rdx
.LBB27_26:                              # %if.end.77.i
	leaq	7512(%r14), %rcx
	leaq	7500(%r14), %r8
	movl	$psdf_set_fill_color_commands, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_set_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_41
# BB#27:                                # %if.end.77.if.end.85_crit_edge.i
	movl	252(%r15), %eax
.LBB27_28:                              # %if.end.85.i
	cmpl	$6, %eax
	ja	.LBB27_44
# BB#29:                                # %if.end.85.i
	movl	$102, %ecx
	btl	%eax, %ecx
	jae	.LBB27_44
# BB#30:                                # %if.then.97.i
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	gs_swapcolors_quick
	movq	1760(%rbx), %rdx
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB27_33
# BB#31:                                # %cond.end.106.i
	movq	%rbx, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB27_41
# BB#32:                                # %cond.end.106.if.end.110_crit_edge.i
	movq	1760(%rbx), %rdx
.LBB27_33:                              # %if.end.110.i
	leaq	8144(%r14), %rcx
	leaq	7504(%r14), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_set_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_41
# BB#34:                                # %if.end.119.i
	movq	%rbx, %rdi
	callq	gs_swapcolors_quick
	jmp	.LBB27_44
.LBB27_41:                              # %pdf_prepare_text_drawing.exit
	cmpl	$-15, %ebp
	jne	.LBB27_43
# BB#42:
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
                                        # implicit-def: EAX
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB27_137
.LBB27_43:                              # %if.end
	testl	%ebp, %ebp
	js	.LBB27_180
.LBB27_44:                              # %if.end.9
	leaq	192(%r13), %rax
	movq	448(%r13), %r12
	testq	%r12, %r12
	jne	.LBB27_47
# BB#45:                                # %if.then.12
	movl	$0, 30560(%r14)
	xorl	%r12d, %r12d
	cmpl	$0, 468(%r13)
	je	.LBB27_47
# BB#46:                                # %if.then.14
	movq	112(%r13), %rcx
	movq	%rcx, 192(%r13)
	xorl	%r12d, %r12d
.LBB27_47:                              # %if.end.16
	movq	(%rax), %rcx
	movl	$-1, %eax
	movl	128(%rcx), %ecx
	cmpq	$54, %rcx
	jbe	.LBB27_49
# BB#48:
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	jmp	.LBB27_50
.LBB27_49:                              # %if.end.16
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB27_50
# BB#51:                                # %land.lhs.true
	testb	$-8, 1(%r13)
	je	.LBB27_50
# BB#52:                                # %land.lhs.true.37
	cmpl	$0, 30692(%r14)
	je	.LBB27_53
.LBB27_50:
                                        # implicit-def: ECX
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	jmp	.LBB27_54
.LBB27_53:                              # %if.then.39
	movl	$1, 30692(%r14)
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	cmpl	$0, 464(%r13)
                                        # implicit-def: ECX
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	je	.LBB27_137
.LBB27_54:                              # %top.preheader
	movq	%r12, 320(%rsp)
	testq	%r12, %r12
	movl	132(%rsp), %ebx         # 4-byte Reload
	je	.LBB27_55
# BB#56:                                # %if.then.47.preheader
	leaq	192(%r13), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	112(%rsp), %eax         # 4-byte Reload
	andl	$4, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	leaq	30488(%r14), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	560(%r13), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	28784(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	248(%r13), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB27_57
.LBB27_55:
	movl	%eax, %ebp
	jmp	.LBB27_146
.LBB27_106:                             #   in Loop: Header=BB27_57 Depth=1
	movl	132(%rsp), %ebx         # 4-byte Reload
.LBB27_118:                             # %if.end.369
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	320(%rsp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 152(%rax)
	movl	16(%r13), %eax
	subl	232(%r13), %eax
	testl	%ebp, %ebp
	js	.LBB27_119
# BB#120:                               # %if.end.378
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %r12d
	cmpl	$0, 30692(%r14)
	je	.LBB27_135
# BB#121:                               # %select.mid746
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$2, %r12d
	jmp	.LBB27_135
.LBB27_119:                             #   in Loop: Header=BB27_57 Depth=1
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB27_135
.LBB27_110:                             # %if.then.290
                                        #   in Loop: Header=BB27_57 Depth=1
	xorl	%esi, %esi
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movl	$-25, %eax
	jmp	.LBB27_111
	.align	16, 0x90
.LBB27_57:                              # %if.then.47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_69 Depth 2
                                        #     Child Loop BB27_96 Depth 2
                                        #     Child Loop BB27_116 Depth 2
                                        #     Child Loop BB27_130 Depth 2
	cmpl	$0, 464(%r13)
	je	.LBB27_61
# BB#58:                                # %if.then.51
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	complete_charproc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_180
# BB#59:                                # %if.end.55
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$3, %r12d
	cmpl	$0, 30692(%r14)
	je	.LBB27_135
# BB#60:                                # %select.mid
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$2, %r12d
	jmp	.LBB27_135
	.align	16, 0x90
.LBB27_61:                              # %if.end.59
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	8(%r13), %rdi
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movl	128(%rsi), %eax
	je	.LBB27_62
# BB#63:                                # %if.end.59
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$53, %eax
	jne	.LBB27_64
# BB#65:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$0, 30692(%r14)
	je	.LBB27_67
# BB#66:                                #   in Loop: Header=BB27_57 Depth=1
	movl	%ebx, %edx
	jmp	.LBB27_71
.LBB27_62:                              #   in Loop: Header=BB27_57 Depth=1
	movl	%ebx, %edx
	jmp	.LBB27_71
.LBB27_64:                              #   in Loop: Header=BB27_57 Depth=1
	movl	%ebx, %edx
	jmp	.LBB27_71
.LBB27_67:                              # %land.lhs.true.69
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	232(%r13), %ecx
	movq	(%rdi,%rcx,8), %rcx
	cmpq	$255, %rcx
	movl	%ebx, %edx
	ja	.LBB27_71
# BB#68:                                # %if.then.72
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	56(%rsi), %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB27_69:                              # %for.body.i.i
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rdx
	cmpq	%rsi, 8(%rdx)
	jne	.LBB27_69
# BB#70:                                # %pdf_locate_font_cache_elem.exit.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	24(%rdx), %rdx
	movq	%rcx, %rsi
	shrq	$3, %rsi
	movq	296(%rdx), %rdx
	movzbl	(%rdx,%rsi), %edx
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	testl	%esi, %edx
	sete	%cl
	movzbl	%cl, %edx
	.align	16, 0x90
.LBB27_71:                              # %if.end.92
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	%eax, %ecx
	cmpl	$54, %eax
	ja	.LBB27_76
# BB#72:                                # %if.end.92
                                        #   in Loop: Header=BB27_57 Depth=1
	movabsq	$24769797950537728, %rax # imm = 0x58000000000000
	btq	%rcx, %rax
	jae	.LBB27_76
# BB#73:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	je	.LBB27_76
# BB#74:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$0, 30692(%r14)
	jne	.LBB27_76
# BB#75:                                # %if.then.113
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	104(%r13), %rax
	movss	132(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	136(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	140(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	mulps	%xmm2, %xmm2
	movss	144(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	mulps	%xmm0, %xmm0
	addps	%xmm2, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	movl	$1, %ecx
	ucomiss	%xmm1, %xmm0
	jne	.LBB27_76
	jnp	.LBB27_77
	.align	16, 0x90
.LBB27_76:                              # %if.end.140
                                        #   in Loop: Header=BB27_57 Depth=1
	xorl	%r15d, %r15d
	testl	%edx, %edx
	movl	%edx, %ecx
	je	.LBB27_79
.LBB27_77:                              # %if.then.142
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	232(%r13), %eax
	cmpq	$255, (%rdi,%rax,8)
	ja	.LBB27_78
# BB#84:                                # %if.then.148
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movq	104(%r13), %rbx
	movq	152(%r12), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	48(%rcx), %rax
	movq	%rax, 400(%rsp)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movaps	%xmm2, 384(%rsp)
	movaps	%xmm1, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movq	1152(%r14), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	$pdf_text_set_cache, 384(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 152(%r12)
	movslq	240(%r13), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	testq	%rax, %rax
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	cmovsq	%rdx, %rax
	movq	(%rax), %rax
	leaq	248(%r13,%rcx), %rcx
	cmovsq	%rdx, %rcx
	movq	(%rcx), %r12
	movl	148(%rax), %r15d
	movq	$0, 328(%rsp)
	movq	$0, 152(%rsp)
	leaq	132(%rbx), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	leaq	328(%rsp), %rdx
	leaq	144(%rsp), %r8
	callq	gx_lookup_fm_pair
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_181
# BB#85:                                # %if.end.180
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	144(%rsp), %rsi
	movq	320(%rsp), %rax
	movl	232(%rax), %ecx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rdx
	movl	$1, %r8d
	movq	%r12, %rdi
	movl	%r15d, %ecx
	leaq	152(%rsp), %r9
	callq	gx_lookup_cached_char
	testq	%rax, %rax
	je	.LBB27_87
# BB#86:                                # %if.then.190
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	24(%r12), %rdi
	movl	$pdf_query_purge_cached_char, %esi
	movq	%rax, %rdx
	callq	gx_purge_selected_cached_chars
.LBB27_87:                              # %cleanup.cont.200
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	%rbx, %rdi
	callq	gs_gsave
	movq	1792(%rbx), %rax
	movq	96(%rax), %rcx
	movq	%rcx, 176(%rsp)
	movups	80(%rax), %xmm0
	movaps	%xmm0, 160(%rsp)
	leaq	192(%rsp), %rdi
	callq	gs_make_identity
	movq	1792(%rbx), %rax
	movq	208(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movups	192(%rsp), %xmm0
	movups	%xmm0, 80(%rax)
	movl	$0, 1844(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movl	$0, 1840(%rbx)
	movl	232(%r13), %eax
	movq	8(%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 416(%r13)
	movq	320(%rsp), %rcx
	movq	%rax, 416(%rcx)
	movq	104(%r13), %rax
	movl	164(%rax), %ecx
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, 32(%rdx)
	movups	132(%rax), %xmm0
	movups	148(%rax), %xmm1
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	192(%r13), %rax
	movl	128(%rax), %eax
	cmpq	$54, %rax
	ja	.LBB27_100
# BB#88:                                # %cleanup.cont.200
                                        #   in Loop: Header=BB27_57 Depth=1
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB27_100
# BB#89:                                # %land.lhs.true.i.296
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpq	$2147483647, 200(%r13)  # imm = 0x7FFFFFFF
	jne	.LBB27_100
# BB#90:                                # %land.lhs.true.17.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	448(%r13), %rax
	testb	$8, 1(%rax)
	jne	.LBB27_100
# BB#91:                                # %if.then.i.301
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$0, 30564(%r14)
	movq	%r14, %rdi
	callq	pdf_start_charproc_accum
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_181
# BB#92:                                # %if.end.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	104(%r13), %rsi
	movq	128(%r13), %rdx
	movq	%r14, %rdi
	callq	pdf_viewer_state_from_imager_state
	movl	$-1082130432, 5896(%r14) # imm = 0xFFFFFFFFBF800000
	movaps	.LCPI27_0(%rip), %xmm0  # xmm0 = [4,4,4,5]
	movups	%xmm0, 5900(%r14)
	movl	$-1082130432, 5920(%r14) # imm = 0xFFFFFFFFBF800000
	movl	$-1, 5968(%r14)
	leaq	328(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_make_identity
	movq	104(%r13), %rdi
	addq	$132, %rdi
	movq	%rbp, %rsi
	callq	gs_matrix_fixed_from_matrix
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	pdf_choose_output_char_code
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_181
# BB#93:                                # %if.end.40.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	movl	$0, %esi
	je	.LBB27_99
# BB#94:                                #   in Loop: Header=BB27_57 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	80(%rsp), %rdx          # 8-byte Reload
.LBB27_96:                              # %for.body.i.i.i
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rcx, 8(%rax)
	je	.LBB27_97
# BB#95:                                # %for.cond.i.i.i
                                        #   in Loop: Header=BB27_96 Depth=2
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	movl	$0, %esi
	jne	.LBB27_96
	jmp	.LBB27_99
.LBB27_78:                              #   in Loop: Header=BB27_57 Depth=1
	movl	%ecx, %r15d
.LBB27_79:                              # %if.end.391
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	480(%r12), %ebx
	movq	104(%r13), %rdi
	movq	1760(%rdi), %rsi
	leaq	352(%rsp), %rdx
	leaq	328(%rsp), %rcx
	callq	gx_hld_get_color_space_and_ccolor
	cmpl	$1, %eax
	jne	.LBB27_81
# BB#80:                                # %if.then.400
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$-1, 480(%r12)
.LBB27_81:                              # %if.end.402
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	320(%rsp), %rax
	movq	%rax, 28840(%r14)
	movq	320(%rsp), %rdi
	callq	gs_text_process
	movl	%eax, %ebp
	movl	%ebx, 480(%r12)
	movq	$0, 28840(%r14)
	movl	$0, 30560(%r14)
	cmpl	$1, %ebp
	jne	.LBB27_142
# BB#82:                                # %land.lhs.true.410
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$0, 30692(%r14)
	movq	320(%rsp), %rsi
	jne	.LBB27_83
# BB#122:                               # %if.then.413
                                        #   in Loop: Header=BB27_57 Depth=1
	movups	416(%rsi), %xmm0
	movups	%xmm0, 416(%r13)
	movq	104(%r13), %rax
	movl	164(%rax), %ecx
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, 32(%rdx)
	movups	132(%rax), %xmm0
	movups	148(%rax), %xmm1
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	192(%r13), %rax
	cmpl	$3, 128(%rax)
	jne	.LBB27_83
# BB#123:                               # %land.lhs.true.i.339
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpq	$2147483647, 200(%r13)  # imm = 0x7FFFFFFF
	jne	.LBB27_83
# BB#124:                               # %land.lhs.true.7.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	448(%r13), %rax
	testb	$8, 1(%rax)
	jne	.LBB27_83
# BB#125:                               # %if.then.i.344
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	%r14, %rdi
	callq	pdf_start_charproc_accum
	testl	%eax, %eax
	js	.LBB27_134
# BB#126:                               # %if.end.i.354
                                        #   in Loop: Header=BB27_57 Depth=1
	imull	$100, 832(%r14), %eax
	movl	%eax, 832(%r14)
	imull	$100, 836(%r14), %eax
	movl	%eax, 836(%r14)
	movq	104(%r13), %rsi
	movq	128(%r13), %rdx
	movq	%r14, %rdi
	callq	pdf_viewer_state_from_imager_state
	movl	$-1082130432, 5896(%r14) # imm = 0xFFFFFFFFBF800000
	movaps	.LCPI27_0(%rip), %xmm0  # xmm0 = [4,4,4,5]
	movups	%xmm0, 5900(%r14)
	movl	$-1082130432, 5920(%r14) # imm = 0xFFFFFFFFBF800000
	movl	$-1, 5968(%r14)
	leaq	352(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_identity
	movq	%rbx, %rdi
	movsd	.LCPI27_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movq	%rbx, %rsi
	callq	gs_matrix_scale
	movq	104(%r13), %rdi
	addq	$132, %rdi
	movq	%rbx, %rsi
	callq	gs_matrix_fixed_from_matrix
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	pdf_choose_output_char_code
	testl	%eax, %eax
	js	.LBB27_134
# BB#127:                               # %if.end.32.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	movl	$0, %esi
	je	.LBB27_133
# BB#128:                               #   in Loop: Header=BB27_57 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	80(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB27_130:                             # %for.body.i.i.i.364
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rcx, 8(%rax)
	je	.LBB27_131
# BB#129:                               # %for.cond.i.i.i.359
                                        #   in Loop: Header=BB27_130 Depth=2
	movq	%rax, %rdx
	movq	(%rax), %rax
	testq	%rax, %rax
	movl	$0, %esi
	jne	.LBB27_130
	jmp	.LBB27_133
.LBB27_181:                             # %cleanup.192
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$1, %r12d
	movl	%ebp, %eax
	jmp	.LBB27_111
.LBB27_131:                             # %pdf_locate_font_cache_elem.exit.i.i.366
                                        #   in Loop: Header=BB27_57 Depth=1
	testq	%rdx, %rdx
	movl	$0, %esi
	je	.LBB27_133
# BB#132:                               # %land.lhs.true.i.i.368
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	24(%rax), %rsi
.LBB27_133:                             # %if.end.37.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	%rsi, 30472(%r14)
	movq	288(%rsi), %rax
	movq	%rax, 30448(%r14)
	movl	$1, 464(%r13)
	movl	$1, 30524(%r14)
	movaps	.LCPI27_2(%rip), %xmm0  # xmm0 = [1.000000e+04,1.000000e+04]
	movups	%xmm0, 30528(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 30544(%r14)
	movl	$1, %eax
.LBB27_134:                             # %install_PS_charproc_accumulator.exit.thread411
                                        #   in Loop: Header=BB27_57 Depth=1
	testl	%eax, %eax
	setne	%cl
	movzbl	%cl, %r12d
	movl	136(%rsp), %ecx         # 4-byte Reload
	cmovnel	%eax, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movl	$1, %ebp
	movl	%r15d, %ebx
	jmp	.LBB27_135
.LBB27_97:                              # %pdf_locate_font_cache_elem.exit.i.i
                                        #   in Loop: Header=BB27_57 Depth=1
	testq	%rdx, %rdx
	movl	$0, %esi
	je	.LBB27_99
# BB#98:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	24(%rax), %rsi
.LBB27_99:                              # %install_charproc_accumulator.exit
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	%rsi, 30472(%r14)
	movq	288(%rsi), %rax
	movq	%rax, 30448(%r14)
	movl	$1, 464(%r13)
	movl	$1, 30524(%r14)
.LBB27_100:                             # %if.end.222
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$1, 16(%r13)
	je	.LBB27_102
# BB#101:                               # %if.then.227
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	232(%r13), %eax
	incl	%eax
	movq	320(%rsp), %rcx
	movl	%eax, 16(%rcx)
.LBB27_102:                             # %if.end.232
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	$pdf_type3_get_initial_matrix, 1152(%r14)
	movq	320(%rsp), %rax
	movq	%rax, 28840(%r14)
	movq	320(%rsp), %rdi
	callq	gs_text_process
	movl	%eax, %ebp
	movl	$1, %r12d
	testl	%ebp, %ebp
	js	.LBB27_103
# BB#104:                               # %if.end.240
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	$0, 28840(%r14)
	movl	$0, 30560(%r14)
	movq	1792(%rbx), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movaps	160(%rsp), %xmm0
	movups	%xmm0, 80(%rax)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1152(%r14)
	movq	320(%rsp), %rax
	movups	416(%rax), %xmm0
	movups	%xmm0, 416(%r13)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	pdf_choose_output_char_code
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_103
# BB#105:                               # %if.end.258
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	320(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	complete_charproc
	movl	%eax, %ebp
	movq	192(%r13), %rax
	cmpl	$53, 128(%rax)
	jne	.LBB27_106
# BB#107:                               # %if.then.264
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	$0, 144(%rsp)
	cmpl	$0, 240(%r13)
	movq	120(%rsp), %rax         # 8-byte Reload
	js	.LBB27_109
# BB#108:                               # %select.mid713
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB27_109:                             # %select.end712
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	(%rax), %rax
	movl	148(%rax), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	144(%r13), %r15
	movl	$st_device_memory, %esi
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	testq	%rax, %rax
	je	.LBB27_110
# BB#112:                               # %if.end.292
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	88(%r13), %rdx
	movq	%rax, %rbp
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gs_make_mem_mono_device
	movq	1872(%rbx), %rax
	movl	884(%rax), %ecx
	movl	%ecx, 884(%rbp)
	movl	888(%rax), %eax
	movl	%eax, 888(%rbp)
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gx_device_retain
	movq	192(%r13), %rax
	movq	24(%rax), %rdi
	leaq	328(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$1, (%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rsi
	movq	%rbp, %rbx
	leaq	144(%rsp), %r9
	callq	gx_alloc_char_bits
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_111
# BB#113:                               # %if.end.308
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	192(%r13), %rdi
	movq	104(%r13), %rsi
	movl	$132, %eax
	addq	%rax, %rsi
	xorl	%ecx, %ecx
	leaq	144(%rsp), %rdx
	leaq	152(%rsp), %r8
	callq	gx_lookup_fm_pair
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_111
# BB#114:                               # %if.end.316
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	416(%r13), %rax
	movq	328(%rsp), %rdx
	movq	%rax, 40(%rdx)
	movl	64(%rsp), %eax          # 4-byte Reload
	movb	%al, 48(%rdx)
	movl	$0, 76(%rdx)
	movl	$0, 72(%rdx)
	movq	$0, 144(%rsp)
	movq	192(%r13), %rax
	movq	24(%rax), %rdi
	movq	152(%rsp), %rcx
	movq	%rbx, %rsi
	leaq	144(%rsp), %r8
	callq	gx_add_cached_char
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_111
# BB#115:                               # %if.end.334
                                        #   in Loop: Header=BB27_57 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_retain
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	56(%rax), %rcx
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	132(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB27_116:                             # %for.body.i.i.314
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	cmpq	%rcx, 8(%rax)
	jne	.LBB27_116
# BB#117:                               # %cleanup.359
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	24(%rax), %rax
	movl	232(%r13), %ecx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx,%rcx,8), %rdx
	movb	%dl, %cl
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	shrq	$3, %rdx
	movq	296(%rax), %rax
	movzbl	(%rax,%rdx), %ecx
	orl	%esi, %ecx
	movb	%cl, (%rax,%rdx)
	xorl	%ebp, %ebp
	jmp	.LBB27_118
.LBB27_103:                             #   in Loop: Header=BB27_57 Depth=1
	movl	%ebp, %eax
.LBB27_111:                             # %cleanup.359.thread
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	132(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB27_135:                             # %cleanup.432
                                        #   in Loop: Header=BB27_57 Depth=1
	cmpl	$3, %r12d
	jne	.LBB27_136
# BB#145:                               # %cleanup.432.topthread-pre-split_crit_edge
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	448(%r13), %r12
	movq	%r12, 320(%rsp)
	testq	%r12, %r12
	jne	.LBB27_57
.LBB27_146:                             # %if.end.434
	movq	112(%r13), %rcx
	movl	$process_cid_text, %r12d
	movl	128(%rcx), %eax
	cmpq	$11, %rax
	jbe	.LBB27_149
# BB#147:                               # %if.end.434
	movl	%eax, %ecx
	cmpl	$54, %eax
	jbe	.LBB27_150
# BB#148:
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	jmp	.LBB27_168
.LBB27_149:                             # %if.end.434
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	jmpq	*.LJTI27_0(,%rax,8)
.LBB27_152:                             # %sw.bb.439
	movl	$process_cmap_text, %r12d
	cmpl	$9, 376(%rcx)
	je	.LBB27_154
# BB#153:                               # %select.mid837
	movl	$process_composite_text, %r12d
	jmp	.LBB27_154
.LBB27_83:                              # %if.end.422.thread
	movl	$1, %ebp
	movl	$1, %edx
	movq	%r13, %rdi
	callq	gs_text_enum_copy_dynamic
	jmp	.LBB27_180
.LBB27_150:                             # %if.end.434
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	movabsq	$33781395251789824, %rdx # imm = 0x78040000000000
	btq	%rcx, %rdx
	jae	.LBB27_168
.LBB27_151:                             # %sw.bb.438
	movl	$process_plain_text, %r12d
.LBB27_154:                             # %cleanup.cont.446
	movl	112(%rsp), %edx         # 4-byte Reload
	testb	$3, %dl
	je	.LBB27_156
# BB#155:                               # %if.then.449
	movq	96(%rsp), %rdx          # 8-byte Reload
	cmpl	$8, %edx
	movl	$8, %ecx
	cmovael	%edx, %ecx
	jmp	.LBB27_161
.LBB27_156:                             # %if.else.455
	testb	$4, %dl
	jne	.LBB27_157
# BB#158:                               # %if.else.462
	movl	$8, %ecx
	testb	$16, %dl
	jne	.LBB27_161
# BB#159:                               # %if.else.466
	testb	$8, %dl
	jne	.LBB27_157
# BB#160:                               # %if.else.473
	testb	$32, %dl
	je	.LBB27_168
	jmp	.LBB27_161
.LBB27_136:                             # %cleanup.432
	movl	%ebx, 132(%rsp)         # 4-byte Spill
	cmpl	$2, %r12d
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	jne	.LBB27_180
	jmp	.LBB27_137
.LBB27_157:                             # %if.then.458
	movq	96(%rsp), %rcx          # 8-byte Reload
	shll	$3, %ecx
.LBB27_161:                             # %if.end.482
	testl	%eax, %eax
	je	.LBB27_163
# BB#162:
	movl	%ecx, %eax
	jmp	.LBB27_164
.LBB27_163:                             # %if.then.487
	movl	%ecx, %eax
	movl	16(%r13), %edx
	subl	232(%r13), %edx
	shlq	$4, %rdx
	cmpq	%rdx, %rax
	movq	%rdx, %rax
	cmovael	%ecx, %eax
.LBB27_164:                             # %if.end.508
	cmpl	$104, %eax
	ja	.LBB27_166
# BB#165:                               # %if.then.512
	leaq	216(%rsp), %rsi
	movq	%r13, %rdi
	movl	%eax, %edx
	movq	%rax, 96(%rsp)          # 8-byte Spill
	callq	*%r12
	movl	%eax, %ebp
	jmp	.LBB27_168
.LBB27_166:                             # %if.else.514
	movq	144(%r13), %rdi
	movl	$.L.str.2, %edx
	movl	%eax, %esi
	movq	%rax, %rbx
	callq	*136(%rdi)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB27_180
# BB#167:                               # %cleanup.528.thread
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movl	%ebx, %edx
	callq	*%r12
	movl	%eax, %ebp
	movq	144(%r13), %rdi
	movl	$.L.str.2, %ecx
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	*160(%rdi)
.LBB27_168:                             # %skip
	testl	%ebp, %ebp
	js	.LBB27_174
# BB#169:                               # %lor.lhs.false.534
	movq	192(%r13), %rax
	movl	128(%rax), %eax
	cmpq	$54, %rax
	ja	.LBB27_171
# BB#170:                               # %lor.lhs.false.534
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB27_171
# BB#176:                               # %land.lhs.true.564
	cmpl	$2, %ebp
	jne	.LBB27_173
# BB#177:
	movl	$2, %ebp
	jmp	.LBB27_178
.LBB27_171:                             # %lor.lhs.false.559
	cmpl	$2, %ebp
	je	.LBB27_178
# BB#172:                               # %lor.lhs.false.559
	cmpl	$42, %eax
	jne	.LBB27_178
.LBB27_173:                             # %land.lhs.true.567
	movl	232(%r13), %eax
	cmpl	16(%r13), %eax
	jae	.LBB27_178
.LBB27_174:                             # %if.then.573
	leal	28(%rbp), %eax
	cmpl	$18, %eax
	ja	.LBB27_137
# BB#175:                               # %if.then.573
	movl	$262153, %ecx           # imm = 0x40009
	btl	%eax, %ecx
	jb	.LBB27_180
.LBB27_137:                             # %default_impl
	movq	80(%r13), %rax
	movq	%rax, 432(%rsp)
	movups	64(%r13), %xmm0
	movaps	%xmm0, 416(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movaps	%xmm3, 400(%rsp)
	movaps	%xmm2, 384(%rsp)
	movaps	%xmm1, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movq	192(%r13), %rcx
	cmpl	$3, 128(%rcx)
	jne	.LBB27_140
# BB#138:                               # %land.lhs.true.i.385
	movl	352(%rsp), %eax
	testb	$2, %ah
	je	.LBB27_140
# BB#139:                               # %if.then.i.386
	andl	$-1537, %eax            # imm = 0xFFFFFFFFFFFFF9FF
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 352(%rsp)
.LBB27_140:                             # %pdf_default_text_begin.exit
	movq	88(%r13), %rdi
	movq	104(%r13), %rsi
	movq	120(%r13), %r8
	movq	128(%r13), %r9
	movq	136(%r13), %rax
	movq	144(%r13), %rdx
	leaq	320(%rsp), %rbp
	movq	%rbp, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	352(%rsp), %rdx
	callq	gx_default_text_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_180
# BB#141:                               # %if.end.591
	movq	320(%rsp), %rdi
	movq	%rdi, 448(%r13)
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	gs_text_enum_copy_dynamic
.LBB27_178:                             # %if.end.593
	testl	%ebp, %ebp
	jne	.LBB27_180
# BB#179:                               # %if.end.593
	movq	448(%r13), %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	jne	.LBB27_54
	jmp	.LBB27_180
.LBB27_142:                             # %if.end.422
	movq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	gs_text_enum_copy_dynamic
	testl	%ebp, %ebp
	jne	.LBB27_180
# BB#143:                               # %if.end.425
	movq	320(%rsp), %rdi
	movl	$.L.str.2, %esi
	callq	gs_text_release
	movq	$0, 448(%r13)
	xorl	%ebp, %ebp
	cmpl	$0, 30692(%r14)
	je	.LBB27_180
# BB#144:                               # %if.then.429
	movl	$0, 30692(%r14)
.LBB27_180:                             # %cleanup.600
	movl	%ebp, %eax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	pdf_text_process, .Lfunc_end27-pdf_text_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI27_0:
	.quad	.LBB27_152
	.quad	.LBB27_151
	.quad	.LBB27_151
	.quad	.LBB27_151
	.quad	.LBB27_168
	.quad	.LBB27_168
	.quad	.LBB27_168
	.quad	.LBB27_168
	.quad	.LBB27_168
	.quad	.LBB27_154
	.quad	.LBB27_168
	.quad	.LBB27_154

	.text
	.align	16, 0x90
	.type	pdf_text_is_width_only,@function
pdf_text_is_width_only:                 # @pdf_text_is_width_only
	.cfi_startproc
# BB#0:                                 # %entry
	movq	448(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB28_1
# BB#2:                                 # %if.then
	jmp	gs_text_is_width_only   # TAILCALL
.LBB28_1:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	pdf_text_is_width_only, .Lfunc_end28-pdf_text_is_width_only
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_text_current_width,@function
pdf_text_current_width:                 # @pdf_text_current_width
	.cfi_startproc
# BB#0:                                 # %entry
	movq	448(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB29_1
# BB#2:                                 # %if.then
	jmp	gs_text_current_width   # TAILCALL
.LBB29_1:                               # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end29:
	.size	pdf_text_current_width, .Lfunc_end29-pdf_text_current_width
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4576918229304087675     # double 0.01
.LCPI30_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	pdf_text_set_cache,@function
pdf_text_set_cache:                     # @pdf_text_set_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp234:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp235:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp236:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp237:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp238:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp239:
	.cfi_def_cfa_offset 224
.Ltmp240:
	.cfi_offset %rbx, -56
.Ltmp241:
	.cfi_offset %r12, -48
.Ltmp242:
	.cfi_offset %r13, -40
.Ltmp243:
	.cfi_offset %r14, -32
.Ltmp244:
	.cfi_offset %r15, -24
.Ltmp245:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	88(%rbx), %rbp
	cmpl	$0, 30692(%rbp)
	je	.LBB30_3
# BB#1:                                 # %if.then
	movq	448(%rbx), %rdi
.LBB30_2:                               # %if.else.223
	movq	%r15, %rsi
	movl	%r14d, %edx
.LBB30_48:                              # %cleanup.227
	callq	gs_text_set_cache
	movl	%eax, %r13d
.LBB30_49:                              # %cleanup.227
	movl	%r13d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_3:                               # %if.end
	cmpl	$2, %r14d
	jae	.LBB30_4
# BB#7:                                 # %sw.bb
	leaq	30564(%rbp), %r13
	cmpl	$0, 30564(%rbp)
	je	.LBB30_13
# BB#8:                                 # %if.then.2
	movq	104(%rbx), %rdi
	addq	$132, %rdi
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	144(%rsp), %r12
	movapd	%xmm0, %xmm1
	movq	%r12, %rsi
	callq	gs_matrix_scale
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	leaq	28792(%rbp), %rsi
	movq	%r12, %rdi
	callq	gs_distance_transform
	jmp	.LBB30_14
.LBB30_4:                               # %if.end
	movl	$-15, %r13d
	jne	.LBB30_49
# BB#5:                                 # %sw.bb.11
	cmpl	$0, 30564(%rbp)
	je	.LBB30_9
# BB#6:                                 # %if.then.14
	movq	104(%rbx), %rdi
	addq	$132, %rdi
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	144(%rsp), %r12
	movapd	%xmm0, %xmm1
	movq	%r12, %rsi
	callq	gs_matrix_scale
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	leaq	28792(%rbp), %rsi
	movq	%r12, %rdi
	callq	gs_distance_transform
	jmp	.LBB30_10
.LBB30_13:                              # %if.else
	movq	(%r15), %rax
	movq	%rax, 28792(%rbp)
	movq	8(%r15), %rax
	movq	%rax, 28800(%rbp)
	jmp	.LBB30_14
.LBB30_9:                               # %if.else.22
	movq	(%r15), %rax
	movq	%rax, 28792(%rbp)
	movq	8(%r15), %rax
	movq	%rax, 28800(%rbp)
.LBB30_10:                              # %if.end.29
	cmpl	$0, 468(%rbx)
	je	.LBB30_11
# BB#12:                                # %if.then.31
	addq	$472, %rbx              # imm = 0x1D8
	movl	$80, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	xorl	%r13d, %r13d
	jmp	.LBB30_49
.LBB30_11:
	leaq	30564(%rbp), %r13
.LBB30_14:                              # %sw.epilog
	movl	(%r13), %eax
	testl	%eax, %eax
	movq	%rbx, %r12
	je	.LBB30_16
# BB#15:                                # %if.else.37
	movq	448(%rbx), %r12
.LBB30_16:                              # %if.end.39
	movq	192(%rbx), %rcx
	movl	128(%rcx), %ecx
	cmpq	$54, %rcx
	ja	.LBB30_44
# BB#17:                                # %if.end.39
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB30_44
# BB#18:                                # %land.lhs.true
	cmpq	$2147483647, 200(%rbx)  # imm = 0x7FFFFFFF
	jne	.LBB30_44
# BB#19:                                # %land.lhs.true.56
	testb	$8, 1(%r12)
	jne	.LBB30_44
# BB#20:                                # %if.then.58
	cmpq	$2147483647, 424(%rbx)  # imm = 0x7FFFFFFF
	jne	.LBB30_21
# BB#22:                                # %lor.lhs.false.62
	movq	%r13, 16(%rsp)          # 8-byte Spill
	jmp	.LBB30_23
.LBB30_21:                              # %land.lhs.true.60
	movq	%r13, 16(%rsp)          # 8-byte Spill
	cmpq	$-1, 560(%rbx)
	jne	.LBB30_24
.LBB30_23:                              # %lor.lhs.false.62
	testl	%eax, %eax
	je	.LBB30_24
# BB#41:                                # %if.else.177
	movq	30480(%rbp), %r12
	movq	%rbp, %rdi
	callq	pdf_exit_substream
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB30_49
# BB#42:                                # %if.end.183
	movl	$7, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	pdf_cancel_resource
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB30_49
# BB#43:                                # %cleanup.204
	movl	$7, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	pdf_forget_resource
	movq	104(%rbx), %rdi
	addq	$132, %rdi
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movslq	832(%rbp), %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, 832(%rbp)
	movslq	836(%rbp), %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, 836(%rbp)
	leaq	30488(%rbp), %rdi
	movq	104(%rbx), %rsi
	addq	$132, %rsi
	leaq	48(%rsp), %r12
	movq	%r12, %rdx
	callq	gs_matrix_multiply
	movq	104(%rbx), %rdi
	addq	$132, %rdi
	movq	%r12, %rsi
	callq	gs_matrix_fixed_from_matrix
	movl	$0, 464(%rbx)
	movl	$0, 30524(%rbp)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
.LBB30_44:                              # %if.end.208
	movl	$-28, %r13d
	testl	%eax, %eax
	je	.LBB30_49
# BB#45:                                # %land.lhs.true.211
	movq	448(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB30_49
# BB#46:                                # %if.then.214
	testb	$8, 1(%rdi)
	je	.LBB30_2
# BB#47:                                # %if.then.220
	xorl	%edx, %edx
	movq	%r15, %rsi
	jmp	.LBB30_48
.LBB30_24:                              # %if.then.65
	cmpl	$1, %r14d
	setne	%al
	testl	%r14d, %r14d
	movzbl	%al, %eax
	leal	6(,%rax,4), %eax
	movl	$2, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	144(%r12), %rdi
	movq	%r12, %rsi
	callq	*128(%rdi)
	movl	$st_gs_show_enum, %ecx
	movl	$-28, %r13d
	cmpq	%rcx, %rax
	jne	.LBB30_49
# BB#25:                                # %for.cond.preheader
	movl	%r14d, 8(%rsp)          # 4-byte Spill
	movl	12(%rsp), %eax          # 4-byte Reload
	xorl	%r13d, %r13d
.LBB30_26:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%r15,%r13,8), %xmm0    # xmm0 = mem[0],zero
	movsd	8(%r15,%r13,8), %xmm1   # xmm1 = mem[0],zero
	movq	456(%r12), %rdi
	movl	$132, %ecx
	addq	%rcx, %rdi
	leaq	32(%rsp), %rsi
	movq	%r12, %r14
	movq	%rax, %r12
	callq	gs_point_transform
	movq	%r12, %rax
	movq	%r14, %r12
	movapd	32(%rsp), %xmm0
	movapd	%xmm0, 48(%rsp,%r13,8)
	addq	$2, %r13
	cmpq	%rax, %r13
	jl	.LBB30_26
# BB#27:                                # %for.end
	movl	8(%rsp), %r14d          # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB30_28
# BB#29:                                # %if.then.89
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	mulsd	88(%rsp), %xmm0
	cvttsd2si	%xmm0, %edx
	jmp	.LBB30_30
.LBB30_28:
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$1073741823, %edx       # imm = 0x3FFFFFFF
	movl	$-1073741824, %ecx      # imm = 0xFFFFFFFFC0000000
	movl	$-1073741824, %eax      # imm = 0xFFFFFFFFC0000000
	movl	$1073741823, %esi       # imm = 0x3FFFFFFF
.LBB30_30:                              # %if.end.116
	movl	%ecx, 132(%rsp)
	movl	%eax, 128(%rsp)
	movl	%edx, 140(%rsp)
	movl	%esi, 136(%rsp)
	movq	456(%r12), %rdi
	leaq	128(%rsp), %rsi
	callq	gx_clip_to_rectangle
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB30_49
# BB#31:                                # %if.end.122
	movl	$132, %edi
	addq	456(%r12), %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB30_33
# BB#32:                                # %if.then.125
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	144(%rsp), %rsi
	movapd	%xmm0, %xmm1
	callq	gs_matrix_scale
	jmp	.LBB30_34
.LBB30_33:                              # %if.else.129
	movq	16(%rdi), %rax
	movq	%rax, 160(%rsp)
	movupd	(%rdi), %xmm0
	movapd	%xmm0, 144(%rsp)
.LBB30_34:                              # %for.cond.133.preheader
	xorl	%r13d, %r13d
.LBB30_35:                              # %for.body.136
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%r15,%r13,8), %xmm0    # xmm0 = mem[0],zero
	movsd	8(%r15,%r13,8), %xmm1   # xmm1 = mem[0],zero
	leaq	144(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_point_transform
	movapd	32(%rsp), %xmm0
	movapd	%xmm0, 48(%rsp,%r13,8)
	addq	$2, %r13
	cmpq	24(%rsp), %r13          # 8-byte Folded Reload
	jl	.LBB30_35
# BB#36:                                # %for.end.153
	movq	192(%rbx), %rsi
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB30_37
# BB#38:                                # %if.else.161
	movq	560(%rbx), %r9
	movl	$1, (%rsp)
	jmp	.LBB30_39
.LBB30_37:                              # %if.then.156
	movq	416(%rbx), %r9
	movl	$0, (%rsp)
.LBB30_39:                              # %if.end.166
	leaq	48(%rsp), %rdx
	movq	%rbp, %rdi
	movl	12(%rsp), %ecx          # 4-byte Reload
	movl	%r14d, %r8d
	callq	pdf_set_charproc_attrs
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB30_49
# BB#40:                                # %if.end.170
	movq	456(%r12), %rdi
	callq	gx_get_clip_path_id
	movq	%rax, 8784(%rbp)
	jmp	.LBB30_49
.Lfunc_end30:
	.size	pdf_text_set_cache, .Lfunc_end30-pdf_text_set_cache
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_text_retry,@function
pdf_text_retry:                         # @pdf_text_retry
	.cfi_startproc
# BB#0:                                 # %entry
	movq	448(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB31_1
# BB#2:                                 # %if.then
	jmp	gs_text_retry           # TAILCALL
.LBB31_1:                               # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end31:
	.size	pdf_text_retry, .Lfunc_end31-pdf_text_retry
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_text_release,@function
pdf_text_release:                       # @pdf_text_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp247:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp248:
	.cfi_def_cfa_offset 32
.Ltmp249:
	.cfi_offset %rbx, -24
.Ltmp250:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	448(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	%r14, %rsi
	callq	gs_text_release
	movq	$0, 448(%rbx)
.LBB32_2:                               # %if.end
	movq	552(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB32_4
# BB#3:                                 # %if.then.i
	movq	144(%rbx), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	movq	$0, 552(%rbx)
.LBB32_4:                               # %pdf_text_release_cgp.exit
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_default_text_release # TAILCALL
.Lfunc_end32:
	.size	pdf_text_release, .Lfunc_end32-pdf_text_release
	.cfi_endproc

	.align	16, 0x90
	.type	complete_charproc,@function
complete_charproc:                      # @complete_charproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp252:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp253:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp254:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp255:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp256:
	.cfi_def_cfa_offset 56
	subq	$584, %rsp              # imm = 0x248
.Ltmp257:
	.cfi_def_cfa_offset 640
.Ltmp258:
	.cfi_offset %rbx, -56
.Ltmp259:
	.cfi_offset %r12, -48
.Ltmp260:
	.cfi_offset %r13, -40
.Ltmp261:
	.cfi_offset %r14, -32
.Ltmp262:
	.cfi_offset %r15, -24
.Ltmp263:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	424(%r14), %rbp
	movq	112(%r12), %rdi
	cmpl	$0, 128(%rdi)
	je	.LBB33_2
# BB#1:                                 # %lor.lhs.false.i
	leaq	568(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*240(%rdi)
	testl	%eax, %eax
	jns	.LBB33_4
.LBB33_2:                               # %if.then.i
	movl	$5, 576(%rsp)
	movq	1728(%r15), %rdi
	movl	$5, %esi
	movl	$.L.str.9, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_14
# BB#3:                                 # %if.end.i
	movzwl	%bp, %edx
	leaq	304(%rsp), %rbp
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbx, 568(%rsp)
.LBB33_4:                               # %if.end
	movq	192(%r12), %rax
	movl	128(%rax), %eax
	cmpq	$54, %rax
	ja	.LBB33_8
# BB#5:                                 # %if.end
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB33_8
# BB#6:                                 # %land.lhs.true
	movq	5848(%r15), %rdi
	callq	stell
	testq	%rax, %rax
	jne	.LBB33_8
# BB#7:                                 # %if.then.19
	movl	576(%rsp), %eax
	cmpl	$47, %eax
	movl	$47, %ecx
	cmovbel	%eax, %ecx
	movq	568(%rsp), %rsi
	movslq	%ecx, %rbx
	leaq	304(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 304(%rsp,%rbx)
	movq	192(%r12), %rsi
	movslq	372(%rsi), %rbx
	addq	$324, %rsi              # imm = 0x144
	cmpq	$47, %rbx
	movl	$47, %eax
	cmovaq	%rax, %rbx
	leaq	256(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 256(%rsp,%rbx)
	movq	192(%r12), %rsi
	movslq	320(%rsi), %rbp
	addq	$272, %rsi              # imm = 0x110
	cmpq	$47, %rbp
	movl	$47, %eax
	cmovaq	%rax, %rbp
	leaq	(%rsp), %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, (%rsp,%rbp)
	movq	24(%r15), %rbp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r15), %rdi
	movl	26544(%r15), %edx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	leaq	304(%rsp), %rcx
	leaq	256(%rsp), %r8
	leaq	(%rsp), %r9
	callq	errprintf
	movq	5848(%r15), %rdi
	movl	$.L.str.8, %esi
	callq	stream_puts
.LBB33_8:                               # %if.end.71
	testl	%r13d, %r13d
	je	.LBB33_10
# BB#9:                                 # %if.then.72
	movslq	832(%r15), %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, 832(%r15)
	movslq	836(%r15), %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, 836(%r15)
.LBB33_10:                              # %if.end.74
	movq	192(%r12), %rsi
	movq	552(%r12), %rdx
	movq	424(%r14), %rcx
	movq	560(%r12), %r8
	leaq	568(%rsp), %r9
	movq	%r15, %rdi
	callq	pdf_end_charproc_accum
	testl	%eax, %eax
	js	.LBB33_13
# BB#11:                                # %if.end.82
	movl	$0, 30524(%r15)
	movl	$0, 464(%r12)
	movq	%r14, %rdi
	callq	gx_default_text_restore_state
	testl	%eax, %eax
	js	.LBB33_13
# BB#12:                                # %if.end.87
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	gs_text_release
	movq	$0, 448(%r12)
	xorl	%eax, %eax
	jmp	.LBB33_13
.LBB33_14:                              # %pdf_choose_output_glyph_hame.exit
	movl	$-25, %eax
.LBB33_13:                              # %cleanup
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	complete_charproc, .Lfunc_end33-complete_charproc
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_query_purge_cached_char,@function
pdf_query_purge_cached_char:            # @pdf_query_purge_cached_char
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rsi), %rax
	cmpq	40(%rdx), %rax
	jne	.LBB34_6
# BB#1:                                 # %land.lhs.true
	movq	24(%rsi), %rax
	cmpq	24(%rdx), %rax
	jne	.LBB34_6
# BB#2:                                 # %land.lhs.true.4
	movl	72(%rsi), %eax
	cmpl	72(%rdx), %eax
	jne	.LBB34_6
# BB#3:                                 # %land.lhs.true.8
	movl	76(%rsi), %eax
	cmpl	76(%rdx), %eax
	jne	.LBB34_6
# BB#4:                                 # %land.lhs.true.13
	movzbl	48(%rdx), %eax
	movzbl	48(%rsi), %ecx
	cmpl	%eax, %ecx
	jne	.LBB34_6
# BB#5:                                 # %land.lhs.true.18
	movl	4(%rsi), %ecx
	movl	$1, %eax
	cmpl	4(%rdx), %ecx
	je	.LBB34_7
.LBB34_6:                               # %if.end
	xorl	%eax, %eax
.LBB34_7:                               # %cleanup
	retq
.Lfunc_end34:
	.size	pdf_query_purge_cached_char, .Lfunc_end34-pdf_query_purge_cached_char
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	pdf_type3_get_initial_matrix,@function
pdf_type3_get_initial_matrix:           # @pdf_type3_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp264:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp265:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp266:
	.cfi_def_cfa_offset 32
.Ltmp267:
	.cfi_offset %rbx, -24
.Ltmp268:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movups	30488(%r14), %xmm0
	movups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	%rbx, %rdi
	callq	gs_matrix_invert
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI35_0(%rip), %xmm0
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_matrix_scale         # TAILCALL
.Lfunc_end35:
	.size	pdf_type3_get_initial_matrix, .Lfunc_end35-pdf_type3_get_initial_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_choose_output_char_code,@function
pdf_choose_output_char_code:            # @pdf_choose_output_char_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp269:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp270:
	.cfi_def_cfa_offset 32
.Ltmp271:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	192(%rsi), %rax
	testb	$32, (%rsi)
	jne	.LBB36_1
# BB#2:                                 # %if.else.7
	movq	112(%rsi), %rcx
	cmpl	$0, 128(%rcx)
	jne	.LBB36_20
# BB#3:                                 # %if.then.10
	cmpl	$9, 376(%rcx)
	jne	.LBB36_20
# BB#4:                                 # %if.then.16
	movq	424(%rsi), %r8
	movq	28784(%rdi), %rsi
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.LBB36_10
# BB#5:
	addq	$28784, %rdi            # imm = 0x7070
	movq	56(%rax), %rax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB36_7:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rax, 8(%rsi)
	je	.LBB36_8
# BB#6:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB36_7 Depth=1
	movq	%rsi, %rdi
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB36_7
	jmp	.LBB36_10
.LBB36_1:                               # %if.then
	movq	8(%rsi), %rsi
	leaq	15(%rsp), %rdx
	leaq	8(%rsp), %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	pdf_encode_glyph
	cmpl	$1, 8(%rsp)
	movzbl	15(%rsp), %esi
	movq	$-1, %rcx
	cmovneq	%rcx, %rsi
	testl	%eax, %eax
	cmovsq	%rcx, %rsi
	jmp	.LBB36_21
.LBB36_20:                              # %if.else.32
	movq	416(%rsi), %rsi
.LBB36_21:                              # %cleanup.37
	movq	%rsi, (%rbx)
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB36_8:                               # %pdf_locate_font_cache_elem.exit.i
	xorl	%edx, %edx
	testq	%rdi, %rdi
	je	.LBB36_10
# BB#9:                                 # %land.lhs.true.i
	movq	24(%rsi), %rdx
.LBB36_10:                              # %if.end.22
	movq	$-1, %rsi
	movl	72(%rdx), %eax
	cmpq	$54, %rax
	ja	.LBB36_21
# BB#11:                                # %if.end.22
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB36_21
# BB#12:                                # %if.else.i
	movl	176(%rdx), %eax
	movl	180(%rdx), %edi
	xorl	%esi, %esi
	cmpl	%edi, %eax
	jg	.LBB36_21
# BB#13:                                # %for.body.lr.ph.i
	movq	192(%rdx), %rsi
	movl	$-1, %edx
	.align	16, 0x90
.LBB36_14:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rcx
	cmpq	%r8, %rcx
	je	.LBB36_15
# BB#16:                                # %if.end.28.i
                                        #   in Loop: Header=BB36_14 Depth=1
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	movl	%edx, %ecx
	cmovel	%eax, %ecx
	cmpl	$-1, %edx
	cmovel	%ecx, %edx
	leal	1(%rax), %ecx
	addq	$32, %rsi
	cmpl	%edi, %eax
	movl	%ecx, %eax
	jl	.LBB36_14
# BB#17:                                # %for.end.i
	cmpl	$-1, %edx
	je	.LBB36_19
# BB#18:                                # %if.then.39.i
	movslq	%edx, %rsi
	jmp	.LBB36_21
.LBB36_15:                              # %if.then.27.i
	movslq	%eax, %rsi
	jmp	.LBB36_21
.LBB36_19:                              # %if.end.41.i
	cmpl	$256, %ecx              # imm = 0x100
	movslq	%ecx, %rax
	movq	$-1, %rsi
	cmovlq	%rax, %rsi
	jmp	.LBB36_21
.Lfunc_end36:
	.size	pdf_choose_output_char_code, .Lfunc_end36-pdf_choose_output_char_code
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_is_compatible_encoding,@function
pdf_is_compatible_encoding:             # @pdf_is_compatible_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp272:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp273:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp274:
	.cfi_def_cfa_offset 32
.Ltmp275:
	.cfi_offset %rbx, -24
.Ltmp276:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movl	72(%rdi), %esi
	xorl	%eax, %eax
	cmpq	$11, %rsi
	jbe	.LBB37_19
# BB#1:                                 # %entry
	leal	-51(%rsi), %ebx
	cmpl	$4, %ebx
	jb	.LBB37_9
# BB#2:                                 # %entry
	cmpl	$42, %esi
	jne	.LBB37_8
	jmp	.LBB37_10
.LBB37_19:                              # %entry
	jmpq	*.LJTI37_0(,%rsi,8)
.LBB37_18:                              # %sw.bb.16
	xorl	%esi, %esi
	callq	pdf_font_resource_font
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	gs_font_cid_system_info
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	gs_font_cid_system_info
	movq	%rbx, %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_is_CIDSystemInfo_compatible # TAILCALL
.LBB37_9:                               # %sw.bb.8
	cmpq	$0, 192(%rdi)
	je	.LBB37_8
.LBB37_10:                              # %sw.bb.14
	testl	%ecx, %ecx
	jle	.LBB37_11
# BB#12:                                # %for.body.lr.ph.i
	movq	192(%rdi), %rsi
	movslq	%ecx, %rcx
	addq	$8, %rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB37_13:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	shlq	$5, %rax
	movq	(%rsi,%rax), %rbx
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	setne	%al
	cmpq	%rbx, (%rdx)
	movl	$4, %ebx
	je	.LBB37_15
# BB#14:                                # %select.mid
                                        #   in Loop: Header=BB37_13 Depth=1
	movzbl	%al, %ebx
.LBB37_15:                              # %select.end
                                        #   in Loop: Header=BB37_13 Depth=1
	xorl	%eax, %eax
	orl	$4, %ebx
	cmpl	$4, %ebx
	jne	.LBB37_8
# BB#16:                                # %for.inc.i
                                        #   in Loop: Header=BB37_13 Depth=1
	incq	%rdi
	addq	$16, %rdx
	cmpq	%rcx, %rdi
	jl	.LBB37_13
# BB#17:
	movl	$1, %eax
	jmp	.LBB37_8
.LBB37_11:
	movl	$1, %eax
	jmp	.LBB37_8
.LBB37_3:                               # %sw.bb
	cmpl	$9, 376(%rbx)
	jne	.LBB37_8
# BB#4:                                 # %if.then
	movq	440(%rbx), %rax
	movl	224(%rdi), %edx
	cmpl	24(%rax), %edx
	jne	.LBB37_5
# BB#6:                                 # %land.rhs
	movq	216(%rdi), %rdi
	movq	16(%rax), %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB37_7
.LBB37_5:
	xorl	%eax, %eax
.LBB37_7:                               # %land.end
	movzbl	%al, %eax
.LBB37_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end37:
	.size	pdf_is_compatible_encoding, .Lfunc_end37-pdf_is_compatible_encoding
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI37_0:
	.quad	.LBB37_3
	.quad	.LBB37_10
	.quad	.LBB37_10
	.quad	.LBB37_9
	.quad	.LBB37_8
	.quad	.LBB37_8
	.quad	.LBB37_8
	.quad	.LBB37_8
	.quad	.LBB37_8
	.quad	.LBB37_18
	.quad	.LBB37_8
	.quad	.LBB37_18

	.text
	.align	16, 0x90
	.type	pdf_reserve_char_code_in_pdfont,@function
pdf_reserve_char_code_in_pdfont:        # @pdf_reserve_char_code_in_pdfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp277:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp278:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp279:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp280:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp281:
	.cfi_def_cfa_offset 48
.Ltmp282:
	.cfi_offset %rbx, -48
.Ltmp283:
	.cfi_offset %r12, -40
.Ltmp284:
	.cfi_offset %r13, -32
.Ltmp285:
	.cfi_offset %r14, -24
.Ltmp286:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	(%r14), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.LBB38_4
# BB#1:                                 # %for.body.preheader
	leaq	24(%r14), %rdx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB38_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, (%rdx)
	je	.LBB38_4
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB38_2 Depth=1
	incq	%rax
	addq	$16, %rdx
	cmpq	%rcx, %rax
	jl	.LBB38_2
.LBB38_4:                               # %for.end
	cmpl	%ecx, %eax
	jge	.LBB38_5
# BB#28:                                # %if.then.5
	cltq
	shlq	$4, %rax
	movq	16(%r14,%rax), %rax
	jmp	.LBB38_23
.LBB38_5:                               # %for.cond.10.preheader
	movq	192(%r12), %rcx
	addq	$96, %rcx
	xorl	%eax, %eax
	movl	$3, %edx
	.align	16, 0x90
.LBB38_6:                               # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, -96(%rcx)
	je	.LBB38_23
# BB#7:                                 # %for.cond.10
                                        #   in Loop: Header=BB38_6 Depth=1
	cmpq	%rbx, -64(%rcx)
	je	.LBB38_8
# BB#24:                                # %for.cond.10.1
                                        #   in Loop: Header=BB38_6 Depth=1
	cmpq	%rbx, -32(%rcx)
	je	.LBB38_25
# BB#26:                                # %for.cond.10.2
                                        #   in Loop: Header=BB38_6 Depth=1
	cmpq	%rbx, (%rcx)
	je	.LBB38_27
# BB#9:                                 # %for.cond.10.3
                                        #   in Loop: Header=BB38_6 Depth=1
	addq	$4, %rax
	subq	$-128, %rcx
	leaq	4(%rdx), %rsi
	incq	%rdx
	cmpq	$256, %rdx              # imm = 0x100
	movq	%rsi, %rdx
	jl	.LBB38_6
# BB#10:                                # %for.end.21
	movslq	188(%r12), %r13
	cmpq	$-1, %r13
	je	.LBB38_11
# BB#12:                                # %if.then.26
	movq	standard_glyph_code_for_notdef(%rip), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB38_14
# BB#13:                                # %if.then.34
	movl	$.L.str.15, %edi
	movl	$7, %esi
	callq	gs_c_name_glyph
	subq	gs_c_min_std_encoding_glyph(%rip), %rax
	movq	%rax, standard_glyph_code_for_notdef(%rip)
.LBB38_14:                              # %if.end.35
	movl	(%r15), %ecx
	leal	1(%rcx), %edi
	cmpl	$255, %edi
	jg	.LBB38_19
# BB#15:                                # %for.body.39.lr.ph
	movq	gs_c_known_encodings(,%r13,8), %r8
	movslq	%edi, %rdx
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	192(%r12), %rdi
	.align	16, 0x90
.LBB38_16:                              # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, (%rdi)     # imm = 0x7FFFFFFF
	jne	.LBB38_18
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB38_16 Depth=1
	movzwl	(%r8,%rdx,2), %esi
	cmpq	%rax, %rsi
	je	.LBB38_22
.LBB38_18:                              # %for.cond.36.backedge
                                        #   in Loop: Header=BB38_16 Depth=1
	incq	%rdx
	addq	$32, %rdi
	cmpl	$256, %edx              # imm = 0x100
	jl	.LBB38_16
	jmp	.LBB38_19
.LBB38_8:
	orq	$1, %rax
	jmp	.LBB38_23
.LBB38_25:
	orq	$2, %rax
	jmp	.LBB38_23
.LBB38_27:
	movq	%rdx, %rax
	jmp	.LBB38_23
.LBB38_11:                              # %for.end.21.if.then.65_crit_edge
	movl	(%r15), %ecx
.LBB38_19:                              # %for.cond.67.preheader
	incl	%ecx
	movslq	%ecx, %rax
	shlq	$5, %rax
	.align	16, 0x90
.LBB38_20:                              # %for.cond.67
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	cmpl	$254, %edx
	jg	.LBB38_22
# BB#21:                                # %for.body.70
                                        #   in Loop: Header=BB38_20 Depth=1
	movq	192(%r12), %rsi
	leal	1(%rdx), %ecx
	cmpq	$2147483647, (%rsi,%rax) # imm = 0x7FFFFFFF
	leaq	32(%rax), %rax
	jne	.LBB38_20
.LBB38_22:                              # %if.end.88
	movl	%edx, (%r15)
	movslq	(%r14), %rcx
	shlq	$4, %rcx
	movq	%rbx, 24(%r14,%rcx)
	movslq	%edx, %rax
	movq	%rax, 16(%r14,%rcx)
	incl	(%r14)
	movslq	4(%r14), %rcx
	movslq	8(%r14), %rdx
	leaq	(%rdx,%rcx), %rdx
	shlq	$4, %rdx
	movq	%rbx, 24(%r14,%rdx)
	movslq	8(%r14), %rdx
	addq	%rcx, %rdx
	shlq	$4, %rdx
	movq	%rax, 16(%r14,%rdx)
	incl	4(%r14)
.LBB38_23:                              # %cleanup.118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end38:
	.size	pdf_reserve_char_code_in_pdfont, .Lfunc_end38-pdf_reserve_char_code_in_pdfont
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_text_release"
	.size	.L.str, 17

	.type	st_pdf_text_enum,@object # @st_pdf_text_enum
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_text_enum:
	.long	568                     # 0x238
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_text_enum_reloc_ptrs
	.size	st_pdf_text_enum, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gdev_pdf_text_begin"
	.size	.L.str.1, 20

	.type	pdf_text_procs,@object  # @pdf_text_procs
	.section	.rodata,"a",@progbits
	.align	8
pdf_text_procs:
	.quad	pdf_text_resync
	.quad	pdf_text_process
	.quad	pdf_text_is_width_only
	.quad	pdf_text_current_width
	.quad	pdf_text_set_cache
	.quad	pdf_text_retry
	.quad	pdf_text_release
	.size	pdf_text_procs, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pdf_text_process"
	.size	.L.str.2, 17

	.type	st_pdf_font_cache_elem,@object # @st_pdf_font_cache_elem
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_font_cache_elem:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_font_cache_elem_reloc
	.size	st_pdf_font_cache_elem, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pdf_attach_font_resource"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pdf_make_font3_resource"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pdf_text_enum_t"
	.size	.L.str.5, 16

	.type	pdf_text_enum_reloc_ptrs,@object # @pdf_text_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_text_enum_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_text_enum
	.quad	pdf_text_enum_enum_ptrs
	.size	pdf_text_enum_reloc_ptrs, 24

	.type	pdf_text_enum_enum_ptrs,@object # @pdf_text_enum_enum_ptrs
	.align	2
pdf_text_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	448                     # 0x1c0
	.short	0                       # 0x0
	.short	552                     # 0x228
	.size	pdf_text_enum_enum_ptrs, 8

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"show_cache_setup(dev_cache)"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ERROR: Page %d used undefined glyph '%s' from type 3 font '%s', key '%s'\n"
	.size	.L.str.7, 74

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0 0 0 0 0 0 d1\n"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pdf_text_set_cache"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"g%04x"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"pdf_remove_font_cache_elem"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"alloc_font_cache_elem_arrays"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pdf_font_cache_elem_t"
	.size	.L.str.13, 22

	.type	pdf_font_cache_elem_reloc,@object # @pdf_font_cache_elem_reloc
	.section	.rodata,"a",@progbits
	.align	8
pdf_font_cache_elem_reloc:
	.short	5                       # 0x5
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_font_cache_elem_enum
	.size	pdf_font_cache_elem_reloc, 24

	.type	pdf_font_cache_elem_enum,@object # @pdf_font_cache_elem_enum
	.align	16
pdf_font_cache_elem_enum:
	.zero	4
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	48                      # 0x30
	.size	pdf_font_cache_elem_enum, 20

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"pdf_alloc_text_glyphs_table"
	.size	.L.str.14, 28

	.type	standard_glyph_code_for_notdef,@object # @standard_glyph_code_for_notdef
	.data
	.align	8
standard_glyph_code_for_notdef:
	.quad	2147483647              # 0x7fffffff
	.size	standard_glyph_code_for_notdef, 8

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	".notdef"
	.size	.L.str.15, 8

	.type	.Lswitch.table.1,@object # @switch.table.1
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table.1:
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.size	.Lswitch.table.1, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
