	.text
	.file	"iinit.bc"
	.globl	i_initial_enter_name
	.align	16, 0x90
	.type	i_initial_enter_name,@function
i_initial_enter_name:                   # @i_initial_enter_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	leaq	504(%rdi), %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	jmp	i_initial_enter_name_in # TAILCALL
.Lfunc_end0:
	.size	i_initial_enter_name, .Lfunc_end0-i_initial_enter_name
	.cfi_endproc

	.align	16, 0x90
	.type	i_initial_enter_name_in,@function
i_initial_enter_name_in:                # @i_initial_enter_name_in
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	leaq	368(%rdi), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	dict_put_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_2
# BB#1:                                 # %if.then
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.40, %edi
	movl	$97, %esi
	callq	lprintf_file_and_line
	movq	%rbx, %rdi
	callq	dict_length
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	dict_maxlength
	movl	%eax, %ebx
	movl	$.L.str.48, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	callq	errprintf_nomem
.LBB1_2:                                # %if.end
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	i_initial_enter_name_in, .Lfunc_end1-i_initial_enter_name_in
	.cfi_endproc

	.globl	i_initial_remove_name
	.align	16, 0x90
	.type	i_initial_remove_name,@function
i_initial_remove_name:                  # @i_initial_remove_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 48
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	%r14, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$-1, %r8d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %if.then
	leaq	368(%rbx), %rdx
	addq	$504, %rbx              # imm = 0x1F8
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	dict_undef
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	i_initial_remove_name, .Lfunc_end2-i_initial_remove_name
	.cfi_endproc

	.globl	gs_have_level2
	.align	16, 0x90
	.type	gs_have_level2,@function
gs_have_level2:                         # @gs_have_level2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 16
	callq	gs_op_language_level
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	gs_have_level2, .Lfunc_end3-gs_have_level2
	.cfi_endproc

	.align	16, 0x90
	.type	gs_op_language_level,@function
gs_op_language_level:                   # @gs_op_language_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	$op_defs_all, %r14d
	movq	op_defs_all(%rip), %rbp
	movl	$1, %r15d
	testq	%rbp, %rbp
	je	.LBB4_29
# BB#1:
	movl	$2, %r12d
	movl	$3, %r13d
	.align	16, 0x90
.LBB4_2:                                # %for.cond.1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB4_28
# BB#3:                                 # %for.body.3.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	addq	$16, %rbp
	.align	16, 0x90
.LBB4_4:                                # %for.body.3
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	jne	.LBB4_27
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_4 Depth=2
	movl	$.L.str.30, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB4_13
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	(%rbx), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB4_14
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_14
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	1(%rbx), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB4_14
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_14
# BB#10:                                # %if.then.25
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	2(%rbx), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB4_14
# BB#11:                                # %if.then.25
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_14
# BB#12:                                # %if.then.35
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	3(%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false
                                        #   in Loop: Header=BB4_4 Depth=2
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB4_14:                               # %cond.end
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	je	.LBB4_15
# BB#16:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB4_4 Depth=2
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	-16(%rbp), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_24
# BB#17:                                # %cond.true.61
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB4_25
# BB#18:                                # %cond.true.61
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_25
# BB#19:                                # %if.then.76
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	1(%rdi), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB4_25
# BB#20:                                # %if.then.76
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_25
# BB#21:                                # %if.then.86
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	2(%rdi), %eax
	addl	$-51, %eax
	cmpq	$3, %rcx
	jb	.LBB4_25
# BB#22:                                # %if.then.86
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_25
# BB#23:                                # %if.then.96
                                        #   in Loop: Header=BB4_4 Depth=2
	movzbl	3(%rdi), %eax
	addl	$-100, %eax
	jmp	.LBB4_25
.LBB4_15:                               # %if.then.45
                                        #   in Loop: Header=BB4_4 Depth=2
	cmpl	$1, %r15d
	cmovlel	%r12d, %r15d
	jmp	.LBB4_27
.LBB4_24:                               # %cond.false.105
                                        #   in Loop: Header=BB4_4 Depth=2
	movl	$.L.str.31, %esi
	callq	strcmp
.LBB4_25:                               # %cond.end.108
                                        #   in Loop: Header=BB4_4 Depth=2
	testl	%eax, %eax
	jne	.LBB4_27
# BB#26:                                # %if.then.111
                                        #   in Loop: Header=BB4_4 Depth=2
	cmpl	$2, %r15d
	cmovlel	%r13d, %r15d
	.align	16, 0x90
.LBB4_27:                               # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=2
	movq	(%rbp), %rbx
	addq	$16, %rbp
	testq	%rbx, %rbx
	jne	.LBB4_4
.LBB4_28:                               # %for.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%r14), %rbp
	addq	$8, %r14
	testq	%rbp, %rbp
	jne	.LBB4_2
.LBB4_29:                               # %for.end.123
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_op_language_level, .Lfunc_end4-gs_op_language_level
	.cfi_endproc

	.globl	obj_init
	.align	16, 0x90
	.type	obj_init,@function
obj_init:                               # @obj_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 48
	subq	$128, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 176
.Ltmp36:
	.cfi_offset %rbx, -48
.Ltmp37:
	.cfi_offset %r12, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	gs_op_language_level
	movl	%eax, %ebx
	movq	32(%r15), %rdi
	cmpl	$1, %ebx
	movl	$983, %eax              # imm = 0x3D7
	movl	$631, %ecx              # imm = 0x277
	cmovgl	%eax, %ecx
	cmpl	$2, %ebx
	movl	$1123, %esi             # imm = 0x463
	cmovlel	%ecx, %esi
	leaq	112(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#1:                                 # %if.end
	leaq	112(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_interp_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#2:                                 # %if.end.8
	movq	(%r14), %r15
	movl	$2, 464(%r15)
	movl	76(%r15), %edx
	leaq	32(%rsp), %rdi
	movl	$5, %esi
	callq	refset_null_new
	movq	368(%r15), %rax
	cmpl	$2, %ebx
	jl	.LBB5_4
# BB#3:                                 # %if.then.10
	leaq	32(%rax), %rcx
	movq	%rcx, 368(%r15)
	movups	112(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	incl	464(%r15)
	movq	368(%r15), %rax
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	addq	$16, %rax
	movq	%rax, 368(%r15)
.LBB5_5:                                # %if.end.20
	movups	112(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$op_defs_all, %r12d
	movq	op_defs_all(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB5_13
# BB#6:
	leaq	32(%rsp), %r14
	movl	$-25, %ebp
	.align	16, 0x90
.LBB5_7:                                # %for.cond.25.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_12
# BB#8:                                 # %for.body.27.preheader
                                        #   in Loop: Header=BB5_7 Depth=1
	addq	$16, %rbx
	.align	16, 0x90
.LBB5_9:                                # %for.body.27
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbx)
	jne	.LBB5_11
# BB#10:                                # %if.then.29
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	make_initial_dict
	testq	%rax, %rax
	je	.LBB5_36
.LBB5_11:                               # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	(%rbx), %rsi
	addq	$16, %rbx
	testq	%rsi, %rsi
	jne	.LBB5_9
.LBB5_12:                               # %for.inc.38
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	8(%r12), %rbx
	addq	$8, %r12
	testq	%rbx, %rbx
	jne	.LBB5_7
.LBB5_13:                               # %for.cond.41.preheader
	movq	368(%r15), %rbx
	addq	$16, %rbx
	movq	%rbx, 368(%r15)
	movl	$.L.str.33, %edi
	callq	strlen
	cmpq	$4, %rax
	jb	.LBB5_16
# BB#14:                                # %cond.end.95
	movl	$.L.str.33, %edi
	movl	$.L.str.33, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB5_17
# BB#15:                                # %cond.end.95.if.then.97_crit_edge
	movq	368(%r15), %rbx
.LBB5_16:                               # %if.then.97
	subq	376(%r15), %rbx
	shrq	$4, %rbx
	movl	%ebx, 468(%r15)
.LBB5_17:                               # %if.end.105
	leaq	32(%rsp), %rdx
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	callq	make_initial_dict
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB5_36
# BB#18:                                # %for.inc.119
	movq	368(%r15), %rcx
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
	leaq	504(%r15), %r14
	movl	$.L.str.35, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r14, %rcx
	callq	i_initial_enter_name_in
	movl	$-25, %ebp
	movzbl	33(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB5_20
# BB#19:                                # %if.then.137
	movzwl	504(%r15), %eax
	movl	%eax, %ebx
	andl	$12, %ebx
	orl	$12, %eax
	movw	%ax, 504(%r15)
	leaq	32(%rsp), %rcx
	movl	$.L.str.30, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movzwl	504(%r15), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebx, %ecx
	movw	%cx, 504(%r15)
	testl	%eax, %eax
	movl	$-25, %ebp
	cmovsl	%eax, %ebp
	js	.LBB5_36
.LBB5_20:                               # %for.inc.181
	movzbl	49(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB5_22
# BB#21:                                # %if.then.137.1
	leaq	48(%rsp), %rcx
	movzwl	504(%r15), %eax
	movl	%eax, %ebx
	andl	$12, %ebx
	orl	$12, %eax
	movw	%ax, 504(%r15)
	movl	$.L.str.31, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movzwl	504(%r15), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebx, %ecx
	movw	%cx, 504(%r15)
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	js	.LBB5_36
.LBB5_22:                               # %for.inc.181.1
	movzbl	65(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB5_24
# BB#23:                                # %if.then.137.2
	leaq	64(%rsp), %rcx
	movzwl	504(%r15), %eax
	movl	%eax, %ebx
	andl	$12, %ebx
	orl	$12, %eax
	movw	%ax, 504(%r15)
	movl	$.L.str.32, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movzwl	504(%r15), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebx, %ecx
	movw	%cx, 504(%r15)
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	js	.LBB5_36
.LBB5_24:                               # %for.inc.181.2
	movzbl	81(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB5_26
# BB#25:                                # %if.then.137.3
	leaq	80(%rsp), %rcx
	movzwl	504(%r15), %eax
	movl	%eax, %ebx
	andl	$12, %ebx
	orl	$12, %eax
	movw	%ax, 504(%r15)
	movl	$.L.str.33, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movzwl	504(%r15), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebx, %ecx
	movw	%cx, 504(%r15)
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	js	.LBB5_36
.LBB5_26:                               # %for.inc.181.3
	movzbl	97(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB5_28
# BB#27:                                # %if.then.137.4
	leaq	96(%rsp), %rcx
	movzwl	504(%r15), %eax
	movl	%eax, %ebx
	andl	$12, %ebx
	orl	$12, %eax
	movw	%ax, 504(%r15)
	movl	$.L.str.34, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movzwl	504(%r15), %ecx
	andl	$65523, %ecx            # imm = 0xFFF3
	orl	%ebx, %ecx
	movw	%cx, 504(%r15)
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	js	.LBB5_36
.LBB5_28:                               # %for.inc.181.4
	movq	%r15, %rdi
	callq	gs_interp_reset
	movw	$3584, 32(%rsp)         # imm = 0xE00
	movw	$1, 24(%rsp)
	movw	$256, 16(%rsp)          # imm = 0x100
	movw	$0, 8(%rsp)
	movw	$256, (%rsp)            # imm = 0x100
	leaq	32(%rsp), %rcx
	movl	$.L.str.36, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#29:                                # %lor.lhs.false
	leaq	16(%rsp), %rcx
	movl	$.L.str.37, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#30:                                # %cleanup.212
	leaq	(%rsp), %rcx
	movl	$.L.str.38, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#31:                                # %cleanup.cont.216
	movq	8(%r15), %rdi
	leaq	32(%rsp), %rsi
	movl	$96, %edx
	movl	$29, %ecx
	movl	$.L.str.39, %r8d
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#32:                                # %for.cond.227.preheader
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB5_34:                               # %for.body.230
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	gs_error_names(,%rbx,8), %rsi
	movq	40(%rsp), %rdx
	addq	%r12, %rdx
	callq	names_enter_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_36
# BB#33:                                # %for.cond.227
                                        #   in Loop: Header=BB5_34 Depth=1
	incq	%rbx
	addq	$16, %r12
	cmpq	$28, %rbx
	jle	.LBB5_34
# BB#35:                                # %for.end.244
	leaq	32(%rsp), %rcx
	movl	$.L.str.39, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movl	%eax, %ebp
.LBB5_36:                               # %cleanup.249
	movl	%ebp, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	obj_init, .Lfunc_end5-obj_init
	.cfi_endproc

	.align	16, 0x90
	.type	make_initial_dict,@function
make_initial_dict:                      # @make_initial_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$.L.str.35, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB6_8
# BB#1:                                 # %cond.true
	movzbl	(%rbx), %eax
	addl	$-115, %eax
	testq	%rcx, %rcx
	je	.LBB6_9
# BB#2:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB6_9
# BB#3:                                 # %if.then
	movzbl	1(%rbx), %eax
	addl	$-121, %eax
	cmpq	$2, %rcx
	jb	.LBB6_9
# BB#4:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB6_9
# BB#5:                                 # %if.then.18
	movzbl	2(%rbx), %eax
	addl	$-115, %eax
	cmpq	$3, %rcx
	jb	.LBB6_9
# BB#6:                                 # %if.then.18
	testl	%eax, %eax
	jne	.LBB6_9
# BB#7:                                 # %if.then.28
	movzbl	3(%rbx), %eax
	addl	$-116, %eax
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
	movl	$.L.str.35, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB6_9:                                # %cond.end
	testl	%eax, %eax
	je	.LBB6_15
# BB#10:                                # %for.cond.preheader
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	callq	strcmp
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	$0, %esi
	je	.LBB6_11
# BB#17:                                # %for.inc
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$1, %edx
	movl	$1, %esi
	testl	%eax, %eax
	je	.LBB6_11
# BB#18:                                # %for.inc.1
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$2, %edx
	movl	$2, %esi
	testl	%eax, %eax
	je	.LBB6_11
# BB#19:                                # %for.inc.2
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$3, %edx
	movl	$3, %esi
	testl	%eax, %eax
	je	.LBB6_11
# BB#20:                                # %for.inc.3
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	%eax, %ecx
	movl	$4, %edx
	xorl	%eax, %eax
	movl	$4, %esi
	testl	%ecx, %ecx
	jne	.LBB6_16
.LBB6_11:                               # %if.then.54
	shlq	$4, %rsi
	movzbl	1(%r14,%rsi), %eax
	addq	%rsi, %r14
	cmpl	$14, %eax
	jne	.LBB6_12
# BB#13:                                # %if.then.62
	movl	initial_dictionaries+8(%rsi), %esi
	leaq	48(%r15), %rax
	addq	$40, %r15
	cmpl	$3, %edx
	cmoveq	%rax, %r15
	movq	(%r15), %rdi
	movq	%r14, %rdx
	callq	dict_alloc
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB6_16
# BB#14:                                # %if.end.83
	movq	%r14, %rax
	jmp	.LBB6_16
.LBB6_15:                               # %if.then.37
	addq	$504, %r15              # imm = 0x1F8
	movq	%r15, %rax
	jmp	.LBB6_16
.LBB6_12:
	movq	%r14, %rax
.LBB6_16:                               # %cleanup.90
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	make_initial_dict, .Lfunc_end6-make_initial_dict
	.cfi_endproc

	.globl	zop_init
	.align	16, 0x90
	.type	zop_init,@function
zop_init:                               # @zop_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 128
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
	movq	%rdi, %r15
	movl	$op_defs_all, %ebp
	movq	op_defs_all(%rip), %rbx
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_7:                                # %for.inc.13
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rbp), %rbx
	addq	$8, %rbp
.LBB7_1:                                # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	testq	%rbx, %rbx
	je	.LBB7_8
# BB#2:                                 # %for.cond.1.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	addq	$-16, %rbx
	.align	16, 0x90
.LBB7_3:                                # %for.cond.1
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, 16(%rbx)
	leaq	16(%rbx), %rbx
	jne	.LBB7_3
# BB#4:                                 # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_7
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB7_7
# BB#6:                                 # %if.then.7
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.40, %edi
	movl	$379, %esi              # imm = 0x17B
	callq	lprintf_file_and_line
	movq	8(%rbx), %rsi
	movl	$.L.str.41, %edi
	xorl	%eax, %eax
	movl	%r12d, %edx
	callq	errprintf_nomem
	movl	%r12d, %eax
	jmp	.LBB7_13
.LBB7_8:                                # %for.end.15
	movq	gs_copyright(%rip), %rdi
	movq	%rdi, 72(%rsp)
	movw	$4704, 64(%rsp)         # imm = 0x1260
	callq	strlen
	movl	%eax, 68(%rsp)
	movq	gs_product(%rip), %rdi
	movq	%rdi, 56(%rsp)
	movw	$4704, 48(%rsp)         # imm = 0x1260
	callq	strlen
	movl	%eax, 52(%rsp)
	movq	gs_productfamily(%rip), %rdi
	movq	%rdi, 40(%rsp)
	movw	$4704, 32(%rsp)         # imm = 0x1260
	callq	strlen
	movl	%eax, 36(%rsp)
	movq	gs_revision(%rip), %rax
	movq	%rax, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	movq	gs_revisiondate(%rip), %rax
	movq	%rax, 8(%rsp)
	movw	$2816, (%rsp)           # imm = 0xB00
	leaq	504(%r15), %r14
	leaq	64(%rsp), %rcx
	movl	$.L.str.42, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	testl	%eax, %eax
	js	.LBB7_13
# BB#9:                                 # %lor.lhs.false
	leaq	48(%rsp), %rcx
	movl	$.L.str.43, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	testl	%eax, %eax
	js	.LBB7_13
# BB#10:                                # %lor.lhs.false.47
	leaq	32(%rsp), %rcx
	movl	$.L.str.44, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	testl	%eax, %eax
	js	.LBB7_13
# BB#11:                                # %lor.lhs.false.51
	leaq	16(%rsp), %rcx
	movl	$.L.str.45, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	testl	%eax, %eax
	js	.LBB7_13
# BB#12:                                # %lor.lhs.false.55
	leaq	(%rsp), %rcx
	movl	$.L.str.46, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	i_initial_enter_name_in
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB7_13:                               # %cleanup
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zop_init, .Lfunc_end7-zop_init
	.cfi_endproc

	.globl	op_init
	.align	16, 0x90
	.type	op_init,@function
op_init:                                # @op_init
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
	movq	%rdi, %r13
	cmpq	$0, op_defs_all(%rip)
	je	.LBB8_16
# BB#1:                                 # %for.body.lr.ph
	leaq	504(%r13), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$op_defs_all, %r15d
.LBB8_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movq	%rax, 32(%rsp)
	movq	(%r15), %r14
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB8_15
# BB#3:                                 # %for.body.3.lr.ph
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%r15, %rcx
	movl	$op_defs_all, %eax
	subq	%rax, %rcx
	addq	%rcx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB8_4:                                # %for.body.3
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB8_5
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	%r14, %r12
	subq	(%r15), %r12
	shrq	$4, %r12
	cmpl	$16, %r12d
	jae	.LBB8_9
# BB#10:                                # %if.end.32
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	%eax, %r12d
	leaq	16(%rsp), %rdi
	movl	%r12d, %edx
	callq	gs_interp_make_oper
	movsbl	(%rbx), %eax
	addl	$-48, %eax
	movl	$-100, %ebp
	cmpl	gs_interp_max_op_num_args(%rip), %eax
	jg	.LBB8_19
# BB#11:                                # %if.end.38
                                        #   in Loop: Header=BB8_4 Depth=2
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	je	.LBB8_14
# BB#12:                                # %if.end.38
                                        #   in Loop: Header=BB8_4 Depth=2
	cmpl	%r12d, 20(%rsp)
	jne	.LBB8_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB8_4 Depth=2
	incq	%rbx
	movq	32(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	leaq	16(%rsp), %rcx
	callq	i_initial_enter_name_in
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_14
	jmp	.LBB8_19
	.align	16, 0x90
.LBB8_5:                                # %if.then
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movq	%rbx, %rdi
	callq	strlen
	movl	$-1, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	leaq	16(%rsp), %rcx
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_19
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	(%rsp), %rdi            # 8-byte Reload
	leaq	16(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	dict_find
	movl	$-100, %ebp
	testl	%eax, %eax
	je	.LBB8_19
# BB#7:                                 # %if.end.13
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	32(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB8_19
.LBB8_14:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	16(%r14), %rbx
	addq	$16, %r14
	testq	%rbx, %rbx
	jne	.LBB8_4
.LBB8_15:                               # %for.inc.64
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	$0, 8(%r15)
	leaq	8(%r15), %r15
	movq	(%rsp), %rax            # 8-byte Reload
	jne	.LBB8_2
.LBB8_16:                               # %for.end.66
	leaq	264(%r13), %rcx
	movl	$300, %esi              # imm = 0x12C
	movl	$8, %edx
	movq	%r13, %rdi
	callq	alloc_op_array_table
	movl	$1, %ebp
	testl	%eax, %eax
	js	.LBB8_19
# BB#17:                                # %if.end.71
	movl	op_def_count(%rip), %eax
	movl	%eax, 292(%r13)
	leaq	304(%r13), %rcx
	movl	$150, %esi
	movl	$12, %edx
	movq	%r13, %rdi
	callq	alloc_op_array_table
	testl	%eax, %eax
	js	.LBB8_19
# BB#18:                                # %if.end.77
	movl	268(%r13), %eax
	addl	292(%r13), %eax
	movl	%eax, 332(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB8_19
.LBB8_9:                                # %if.then.27
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.40, %edi
	movl	$467, %esi              # imm = 0x1D3
	callq	lprintf_file_and_line
	movq	(%r14), %rsi
	movl	$.L.str.47, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-100, %ebp
.LBB8_19:                               # %cleanup.86
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	op_init, .Lfunc_end8-op_init
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_op_array_table,@function
alloc_op_array_table:                   # @alloc_op_array_table
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
	pushq	%rax
.Ltmp77:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r12
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %rbp
	leaq	8(%rbp), %r13
	movl	56(%rbp), %r14d
	movq	%r13, %rdi
	movl	%edx, %esi
	callq	ialloc_set_space
	movq	8(%rbp), %rdi
	movl	$96, %edx
	movl	$.L.str.49, %r8d
	movq	%r12, %rsi
	movl	%r15d, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %ebx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	ialloc_set_space
	testl	%ebx, %ebx
	js	.LBB9_3
# BB#1:                                 # %if.end
	movq	8(%r12), %rdi
	movl	76(%rbp), %edx
	movl	%r15d, %esi
	callq	refset_null_new
	movq	8(%rbp), %rdi
	movl	$2, %edx
	movl	$.L.str.50, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	movq	%rax, 16(%r12)
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB9_3
# BB#2:                                 # %if.end.14
	movl	$0, 24(%r12)
	movl	4(%rsp), %eax           # 4-byte Reload
	orl	$128, %eax
	movl	%eax, 32(%r12)
	xorl	%ebx, %ebx
.LBB9_3:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	alloc_op_array_table, .Lfunc_end9-alloc_op_array_table
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknownerror"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"dictfull"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"dictstackoverflow"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dictstackunderflow"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"execstackoverflow"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"interrupt"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalidaccess"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalidexit"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"invalidfileaccess"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"invalidfont"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"invalidrestore"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ioerror"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"limitcheck"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"nocurrentpoint"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"rangecheck"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"stackoverflow"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"stackunderflow"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"syntaxerror"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"timeout"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"typecheck"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"undefined"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"undefinedfilename"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"undefinedresult"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unmatchedmark"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"VMerror"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"configurationerror"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"undefinedresource"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"unregistered"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalidcontext"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"invalidid"
	.size	.L.str.29, 10

	.type	gs_error_names,@object  # @gs_error_names
	.section	.rodata,"a",@progbits
	.globl	gs_error_names
	.align	16
gs_error_names:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.size	gs_error_names, 240

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"level2dict"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ll3dict"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"globaldict"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"userdict"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"filterdict"
	.size	.L.str.34, 11

	.type	initial_dictionaries,@object # @initial_dictionaries
	.section	.rodata,"a",@progbits
	.globl	initial_dictionaries
	.align	16
initial_dictionaries:
	.quad	.L.str.30
	.long	251                     # 0xfb
	.long	0                       # 0x0
	.quad	.L.str.31
	.long	43                      # 0x2b
	.long	0                       # 0x0
	.quad	.L.str.32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.33
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.34
	.long	43                      # 0x2b
	.long	0                       # 0x0
	.size	initial_dictionaries, 80

	.type	initial_dstack,@object  # @initial_dstack
	.globl	initial_dstack
	.align	8
initial_dstack:
	.quad	.L.str.33
	.size	initial_dstack, 8

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"systemdict"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"null"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"true"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"false"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ErrorNames"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"./psi/iinit.c"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"op_init proc 0x%lx returned error %d!\n"
	.size	.L.str.41, 39

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"copyright"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"product"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"productfamily"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"revision"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"revisiondate"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"opdef overrun! %s\n"
	.size	.L.str.47, 19

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"initial_enter failed (%d), entering /%s in -dict:%u/%u-\n"
	.size	.L.str.48, 57

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"op_array table"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"op_array nx_table"
	.size	.L.str.50, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
