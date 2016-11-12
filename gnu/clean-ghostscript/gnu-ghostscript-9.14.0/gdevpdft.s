	.text
	.file	"gdevpdft.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4608983858650965606     # double 1.3999999999999999
	.text
	.globl	gdev_pdf_create_compositor
	.align	16, 0x90
	.type	gdev_pdf_create_compositor,@function
gdev_pdf_create_compositor:             # @gdev_pdf_create_compositor
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r13
	cmpl	$0, 9552(%r13)
	je	.LBB0_39
# BB#1:                                 # %land.lhs.true
	movsd	9368(%r13), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI0_0(%rip), %xmm0
	jb	.LBB0_39
# BB#2:                                 # %land.lhs.true.1
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB0_39
# BB#3:                                 # %land.lhs.true.4
	cmpl	$1, 9564(%r13)
	jne	.LBB0_4
.LBB0_39:                               # %if.end
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	psdf_create_compositor  # TAILCALL
.LBB0_4:                                # %if.then
	movq	%r13, (%rsi)
	movl	40(%rbx), %eax
	cmpq	$11, %rax
	jbe	.LBB0_5
# BB#38:                                # %sw.default
	movl	$-28, %r12d
	jmp	.LBB0_41
.LBB0_5:                                # %if.then
	leaq	40(%rbx), %r15
	xorl	%r12d, %r12d
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_6:                                # %sw.bb.10
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_begin_transparency_group # TAILCALL
.LBB0_7:                                # %sw.bb.11
	cmpl	$0, 9536(%r13)
	setne	%dl
	cmpq	$0, 26552(%r13)
	je	.LBB0_41
# BB#8:                                 # %if.end.i
	movl	30408(%r13), %ecx
	movl	30608(%r13), %eax
	movl	$1, %esi
	shll	%cl, %esi
	btl	%ecx, %eax
	jae	.LBB0_10
# BB#9:                                 # %if.then.2.i
	decl	%ecx
	movl	%ecx, 30408(%r13)
	notl	%esi
	andl	%esi, %eax
	movl	%eax, 30608(%r13)
	jmp	.LBB0_41
.LBB0_19:                               # %sw.bb.13
	cmpl	$0, 656(%rbx)
	je	.LBB0_21
# BB#20:                                # %if.then.i
	movl	$1, 30604(%r13)
	jmp	.LBB0_41
.LBB0_31:                               # %sw.bb.15
	cmpl	$0, 30604(%r13)
	je	.LBB0_33
# BB#32:                                # %if.then.i.32
	movl	$0, 30604(%r13)
	jmp	.LBB0_41
.LBB0_21:                               # %if.else.i.26
	movq	$0, 32(%rsp)
	leaq	32(%rsp), %rcx
	movl	$12, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r13, %rdi
	callq	pdf_alloc_resource
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
# BB#22:                                # %if.end.i.i
	movq	32(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	32(%rsp), %rax
	movq	%rax, 30648(%r13)
	movq	64(%rax), %rbp
	cmpl	$0, 60(%r15)
	movl	$.L.str.18, %eax
	movl	$.L.str.19, %edx
	cmoveq	%rax, %rdx
	setne	%al
	movzbl	%al, %eax
	leal	6(%rax,%rax,4), %ecx
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	callq	cos_dict_put_c_key_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
# BB#23:                                # %if.end.11.i.i
	movl	104(%rbx), %edx
	testl	%edx, %edx
	je	.LBB0_26
# BB#24:                                # %if.then.12.i.i
	leaq	112(%rbx), %rsi
	movl	$.L.str.20, %ecx
	movq	%r13, %rdi
	callq	cos_array_from_floats
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB0_41
# BB#25:                                # %cleanup.i.i
	movl	$.L.str.21, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
.LBB0_26:                               # %if.end.23.i.i
	movq	376(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_29
# BB#27:                                # %if.then.25.i.i
	leaq	24(%rsp), %rdx
	movq	%r13, %rdi
	callq	pdf_write_function
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
# BB#28:                                # %cleanup.41.i.i
	movq	24(%rsp), %rdx
	leaq	(%rsp), %rbx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.23, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
.LBB0_29:                               # %if.end.i.27
	movl	$1, %esi
	movq	%r13, %rdi
	callq	pdf_open_page
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
# BB#30:                                # %if.end.5.i
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	pdf_begin_transparency_group
	movl	%eax, %r12d
	jmp	.LBB0_41
.LBB0_33:                               # %if.else.i.36
	movq	30480(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	%r13, %rdi
	callq	pdf_exit_substream
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_37
# BB#34:                                # %if.end.i.37
	xorl	%ebx, %ebx
	leaq	32(%rsp), %rsi
	movl	$4, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	pdf_substitute_resource
	testl	%eax, %eax
	js	.LBB0_37
# BB#35:                                # %if.end.6.i
	movq	26664(%r13), %rax
	movq	32(%rsp), %rdi
	orq	%rax, 56(%rdi)
	callq	pdf_resource_id
	movq	%rax, %rcx
	leaq	(%rsp), %rbx
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	gs_sprintf
	movq	30648(%r13), %rax
	movq	64(%rax), %rbp
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.25, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_37
# BB#36:                                # %if.end.16.i
	leaq	30648(%r13), %rsi
	xorl	%r12d, %r12d
	movl	$12, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	pdf_substitute_resource
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_37
# BB#40:                                # %cleanup.i.46
	movq	26664(%r13), %rax
	movq	30648(%r13), %rcx
	orq	%rax, 56(%rcx)
	movq	64(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, 240(%r14)
	movq	$0, 30648(%r13)
	decl	30408(%r13)
	jmp	.LBB0_41
.LBB0_37:                               # %cleanup.thread.i
	movl	%ebx, %r12d
	jmp	.LBB0_41
.LBB0_10:                               # %if.else.i
	movzbl	%dl, %eax
	cmpl	%eax, 30392(%r13)
	jne	.LBB0_13
# BB#11:                                # %if.then.8.i
	movslq	26544(%r13), %rax
	movq	26648(%r13), %rcx
	imulq	$208, %rax, %rax
	movl	$-28, %r12d
	cmpq	$0, 96(%rcx,%rax)
	je	.LBB0_41
# BB#12:                                # %select.mid
	xorl	%r12d, %r12d
	jmp	.LBB0_41
.LBB0_13:                               # %if.else.12.i
	movq	30480(%r13), %rax
	movq	%rax, (%rsp)
	decl	%ecx
	movl	%ecx, 30408(%r13)
	movq	%r13, %rdi
	callq	pdf_exit_substream
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
# BB#14:                                # %if.end.17.i
	leaq	(%rsp), %rsi
	movl	$4, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	pdf_substitute_resource
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_41
# BB#15:                                # %if.end.21.i
	movq	26664(%r13), %rax
	movq	(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movq	5848(%r13), %rdi
	movq	120(%rdi), %rax
	cmpq	128(%rdi), %rax
	jae	.LBB0_17
# BB#16:                                # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdi)
	movb	$47, 1(%rax)
	jmp	.LBB0_18
.LBB0_17:                               # %cond.false.i
	movl	$47, %esi
	callq	spputc
.LBB0_18:                               # %cond.end.i
	movq	5848(%r13), %rbx
	movq	(%rsp), %rbp
	addq	$32, %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	32(%rsp), %r14
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	callq	sputs
	movq	5848(%r13), %rdi
	movl	$.L.str.17, %esi
	movl	$4, %edx
	movq	%r14, %rcx
	callq	sputs
	movq	30448(%r13), %rsi
	movq	(%rsp), %rcx
	movl	$.L.str.9, %edx
	movq	%r13, %rdi
	callq	pdf_add_resource
	movl	%eax, %r12d
.LBB0_41:                               # %cleanup.25
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdev_pdf_create_compositor, .Lfunc_end0-gdev_pdf_create_compositor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_19
	.quad	.LBB0_31
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41

	.text
	.align	16, 0x90
	.type	pdf_begin_transparency_group,@function
pdf_begin_transparency_group:           # @pdf_begin_transparency_group
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
	subq	$104, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 160
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	26552(%r15), %rbx
	callq	gx_hld_get_gstate_ptr
	movq	%rax, %rbp
	movl	$-28, %eax
	testq	%rbp, %rbp
	je	.LBB1_34
# BB#1:                                 # %if.end
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	gx_hld_get_gstate_ptr
	movq	%rax, %r12
	leaq	80(%rsp), %rcx
	movl	$11, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r15, %rdi
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB1_34
# BB#2:                                 # %if.end.i
	movq	80(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	80(%rsp), %rax
	movq	64(%rax), %rbx
	movl	$.L.str.2, %esi
	movl	$.L.str.3, %edx
	movl	$6, %ecx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_34
# BB#3:                                 # %if.end.7.i
	movl	$.L.str.4, %esi
	movl	$.L.str.5, %edx
	movl	$13, %ecx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_34
# BB#4:                                 # %if.end.11.i
	cmpl	$0, 12(%r14)
	je	.LBB1_6
# BB#5:                                 # %if.then.12.i
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB1_34
.LBB1_6:                                # %if.end.17.i
	cmpl	$0, 16(%r14)
	je	.LBB1_8
# BB#7:                                 # %if.then.19.i
	movl	$.L.str.7, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB1_34
.LBB1_8:                                # %if.end.24.i
	testq	%r12, %r12
	je	.LBB1_12
# BB#9:                                 # %land.lhs.true.i
	cmpl	$6, 672(%r14)
	je	.LBB1_12
# BB#10:                                # %if.then.27.i
	movq	1744(%r12), %rcx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	48(%rsp), %rsi
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	callq	pdf_color_space_named
	testl	%eax, %eax
	js	.LBB1_34
# BB#11:                                # %cleanup.i
	leaq	48(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key
	testl	%eax, %eax
	js	.LBB1_34
.LBB1_12:                               # %if.end.36.i
	leaq	80(%rsp), %rsi
	movl	$11, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	pdf_substitute_resource
	testl	%eax, %eax
	js	.LBB1_34
# BB#13:                                # %if.end.7
	movq	26664(%r15), %rax
	movq	80(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movq	64(%rcx), %r12
	movl	$1, %esi
	movq	%r15, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	movq	24(%rsp), %rbx          # 8-byte Reload
	js	.LBB1_34
# BB#14:                                # %if.end.12
	movq	1688(%rbp), %rsi
	movq	%r15, %rdi
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB1_16
# BB#15:                                # %if.then.14
	movq	1688(%rbp), %rsi
	movq	%r15, %rdi
	callq	pdf_put_clip_path
	testl	%eax, %eax
	js	.LBB1_34
.LBB1_16:                               # %if.end.21
	testq	%rbx, %rbx
	je	.LBB1_17
# BB#18:                                # %if.else
	cmpl	$0, 20(%r14)
	je	.LBB1_20
# BB#19:                                # %if.then.25
	movl	30408(%r15), %ecx
	incl	%ecx
	movl	%ecx, 30408(%r15)
	movl	$1, %eax
	shll	%cl, %eax
	orl	%eax, 30608(%r15)
	xorl	%eax, %eax
	jmp	.LBB1_34
.LBB1_17:                               # %if.then.23
	movq	8(%r12), %rax
	movslq	26544(%r15), %rcx
	movq	26648(%r15), %rdx
	imulq	$208, %rcx, %rcx
	movq	%rax, 96(%rdx,%rcx)
	xorl	%eax, %eax
	jmp	.LBB1_34
.LBB1_20:                               # %if.else.27
	movq	$0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	pdf_prepare_drawing
	testl	%eax, %eax
	js	.LBB1_34
# BB#21:                                # %if.end.32
	movq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	pdf_end_gstate
	testl	%eax, %eax
	js	.LBB1_34
# BB#22:                                # %if.end.37
	movl	8892(%r15), %r9d
	leaq	40(%rsp), %rcx
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	pdf_enter_substream
	testl	%eax, %eax
	js	.LBB1_34
# BB#23:                                # %if.end.42
	incl	30408(%r15)
	movq	40(%rsp), %rax
	movq	64(%rax), %rbx
	addq	$24, %r14
	addq	$132, %r13
	leaq	48(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gs_bbox_transform
	testl	%eax, %eax
	js	.LBB1_34
# BB#24:                                # %if.end.i.48
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 80(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 84(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 88(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 92(%rsp)
	movl	$.L.str.2, %esi
	movl	$.L.str.9, %edx
	movl	$8, %ecx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_34
# BB#25:                                # %if.end.16.i
	movl	$.L.str.10, %esi
	movl	$.L.str.11, %edx
	movl	$5, %ecx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_34
# BB#26:                                # %if.end.21.i
	movl	$.L.str.12, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB1_34
# BB#27:                                # %if.end.26.i
	movl	$.L.str.13, %esi
	movl	$.L.str.14, %edx
	movl	$13, %ecx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_34
# BB#28:                                # %if.end.31.i
	leaq	80(%rsp), %rsi
	movl	$4, %edx
	movl	$.L.str.15, %ecx
	movq	%r15, %rdi
	callq	cos_array_from_floats
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_34
# BB#29:                                # %if.end.36.i.52
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB1_34
# BB#30:                                # %pdf_make_form_dict.exit
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB1_34
# BB#31:                                # %if.end.49
	movq	40(%rsp), %rax
	movq	64(%rax), %rdi
	callq	cos_stream_dict
	movq	%rax, %rbx
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	cos_dict_alloc
	movq	%rax, %rbp
	testq	%rbx, %rbx
	movl	$-25, %eax
	je	.LBB1_34
# BB#32:                                # %if.end.49
	testq	%rbp, %rbp
	je	.LBB1_34
# BB#33:                                # %if.end.58
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	cos_dict_put_c_key_object
	movq	%rbp, 30448(%r15)
.LBB1_34:                               # %cleanup.65
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_begin_transparency_group, .Lfunc_end1-pdf_begin_transparency_group
	.cfi_endproc

	.globl	gdev_pdf_begin_transparency_group
	.align	16, 0x90
	.type	gdev_pdf_begin_transparency_group,@function
gdev_pdf_begin_transparency_group:      # @gdev_pdf_begin_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gdev_pdf_begin_transparency_group, .Lfunc_end2-gdev_pdf_begin_transparency_group
	.cfi_endproc

	.globl	gdev_pdf_end_transparency_group
	.align	16, 0x90
	.type	gdev_pdf_end_transparency_group,@function
gdev_pdf_end_transparency_group:        # @gdev_pdf_end_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gdev_pdf_end_transparency_group, .Lfunc_end3-gdev_pdf_end_transparency_group
	.cfi_endproc

	.globl	gdev_pdf_begin_transparency_mask
	.align	16, 0x90
	.type	gdev_pdf_begin_transparency_mask,@function
gdev_pdf_begin_transparency_mask:       # @gdev_pdf_begin_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gdev_pdf_begin_transparency_mask, .Lfunc_end4-gdev_pdf_begin_transparency_mask
	.cfi_endproc

	.globl	gdev_pdf_end_transparency_mask
	.align	16, 0x90
	.type	gdev_pdf_end_transparency_mask,@function
gdev_pdf_end_transparency_mask:         # @gdev_pdf_end_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gdev_pdf_end_transparency_mask, .Lfunc_end5-gdev_pdf_end_transparency_mask
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_group(Resources)"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/Resources"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/Type"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/Group"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/S"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/Transparency"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/I"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/K"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/CS"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/XObject"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Subtype"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Form"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/FormType"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/Matrix"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"[1 0 0 1 0 0]"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pdf_begin_transparency_group"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/BBox"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" Do\n"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/Alpha"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/Luminosity"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdf_write_soft_mask_dict"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/BC"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	" %ld 0 R"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/TR"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%ld 0 R"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/G"
	.size	.L.str.25, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
