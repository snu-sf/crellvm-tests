	.text
	.file	"eprnparm.bc"
	.globl	eprn_get_string
	.align	16, 0x90
	.type	eprn_get_string,@function
eprn_get_string:                        # @eprn_get_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movl	%edi, %ecx
	movq	(%rsi), %rdi
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	.LBB0_5
# BB#1:                                 # %land.rhs.preheader
	addq	$16, %rsi
	.align	16, 0x90
.LBB0_3:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -8(%rsi)
	je	.LBB0_4
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	(%rsi), %rdi
	addq	$16, %rsi
	testq	%rdi, %rdi
	jne	.LBB0_3
	jmp	.LBB0_5
.LBB0_4:                                # %if.end
	movq	%rdi, (%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	movl	$1, 12(%rbx)
	xorl	%eax, %eax
.LBB0_5:                                # %return
	popq	%rbx
	retq
.Lfunc_end0:
	.size	eprn_get_string, .Lfunc_end0-eprn_get_string
	.cfi_endproc

	.globl	eprn_get_int
	.align	16, 0x90
	.type	eprn_get_int,@function
eprn_get_int:                           # @eprn_get_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 48
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r12, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	8(%r12), %edi
	incl	%edi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB1_1
# BB#2:                                 # %if.end
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	movq	%r15, %rdi
	callq	strncpy
	movl	8(%r12), %eax
	movb	$0, (%r15,%rax)
	movq	(%rbx), %rdi
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_5:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rbx), %rdi
	addq	$16, %rbx
.LBB1_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB1_6
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_5
# BB#7:                                 # %while.end
	cmpq	$0, (%rbx)
	je	.LBB1_6
# BB#8:                                 # %if.then.20
	movl	8(%rbx), %eax
	movl	%eax, (%r14)
	movq	%r15, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB1_9
.LBB1_6:                                # %if.else
	movq	%r15, %rdi
	callq	free
	movl	$-15, %eax
	jmp	.LBB1_9
.LBB1_1:                                # %if.then
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	errprintf_nomem
	movl	$-25, %eax
.LBB1_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	eprn_get_int, .Lfunc_end1-eprn_get_int
	.cfi_endproc

	.globl	eprn_get_params
	.align	16, 0x90
	.type	eprn_get_params,@function
eprn_get_params:                        # @eprn_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB2_32
# BB#1:                                 # %if.end
	addq	$18472, %r15            # imm = 0x4828
	leaq	88(%r15), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB2_32
# BB#2:                                 # %if.end.5
	leaq	92(%r15), %rbx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB2_32
# BB#3:                                 # %if.end.9
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB2_32
# BB#4:                                 # %if.end.14
	movl	84(%r15), %eax
	movl	$.L.str, %edi
	testl	%eax, %eax
	je	.LBB2_6
# BB#5:                                 # %while.cond.i
	movl	$.L.str.1, %edi
	cmpl	$1, %eax
	je	.LBB2_6
# BB#34:                                # %while.cond.i.1
	movl	$.L.str.2, %edi
	cmpl	$2, %eax
	je	.LBB2_6
# BB#35:                                # %while.cond.i.2
	movl	$.L.str.3, %edi
	cmpl	$3, %eax
	je	.LBB2_6
# BB#36:                                # %while.cond.i.3
	movl	$.L.str.4, %edi
	cmpl	$4, %eax
	jne	.LBB2_7
.LBB2_6:                                # %if.end.i
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
.LBB2_7:                                # %eprn_get_string.exit
	leaq	(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB2_32
# BB#8:                                 # %lor.lhs.false
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB2_32
# BB#9:                                 # %if.end.21
	leaq	112(%r15), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB2_32
# BB#10:                                # %if.end.25
	leaq	116(%r15), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB2_32
# BB#11:                                # %if.end.29
	movl	96(%r15), %eax
	movl	$.L.str.39, %edi
	testl	%eax, %eax
	je	.LBB2_13
# BB#12:                                # %while.cond.i.50
	movl	$.L.str.40, %edi
	cmpl	$1, %eax
	je	.LBB2_13
# BB#33:                                # %while.cond.i.50.1
	movl	$.L.str.41, %edi
	cmpl	$2, %eax
	jne	.LBB2_14
.LBB2_13:                               # %if.end.i.60
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
.LBB2_14:                               # %eprn_get_string.exit62
	leaq	(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB2_32
# BB#15:                                # %if.end.34
	cmpl	$0, 64(%r15)
	je	.LBB2_17
# BB#16:                                # %if.then.35
	leaq	60(%r15), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_write_int
	jmp	.LBB2_18
.LBB2_17:                               # %if.else
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB2_18:                               # %if.else
	testl	%eax, %eax
	js	.LBB2_32
# BB#19:                                # %if.end.44
	movq	8(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB2_20
# BB#21:                                # %if.else.51
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB2_22
.LBB2_20:                               # %if.then.46
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB2_22:                               # %if.else.51
	testl	%eax, %eax
	js	.LBB2_32
# BB#23:                                # %if.end.60
	cmpl	$0, 120(%r15)
	je	.LBB2_25
# BB#24:                                # %if.then.62
	leaq	124(%r15), %rdx
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	param_write_int
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.68
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB2_26:                               # %if.else.68
	testl	%eax, %eax
	js	.LBB2_32
# BB#27:                                # %if.end.74
	movq	104(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB2_28
# BB#29:                                # %if.else.83
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB2_30
.LBB2_28:                               # %if.then.77
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB2_30:                               # %if.else.83
	testl	%eax, %eax
	js	.LBB2_32
# BB#31:                                # %if.end.96
	xorl	%eax, %eax
.LBB2_32:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	eprn_get_params, .Lfunc_end2-eprn_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1116733440              # float 72
.LCPI3_1:
	.long	1077242582              # float 2.83464575
	.text
	.globl	eprn_set_media_data
	.align	16, 0x90
	.type	eprn_set_media_data,@function
eprn_set_media_data:                    # @eprn_set_media_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp24:
	.cfi_def_cfa_offset 384
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$.L.str.18, %r14d
	cmpl	$0, 18588(%r15)
	jne	.LBB3_2
# BB#1:                                 # %select.mid
	movl	$.L.str.19, %r14d
.LBB3_2:                                # %select.end
	movl	$0, 18528(%r15)
	movq	18480(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB3_4
# BB#3:                                 # %if.then
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movq	$0, 18480(%r15)
.LBB3_4:                                # %if.end
	movq	18488(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB3_8
# BB#5:
	movq	%rsi, %rax
	.align	16, 0x90
.LBB3_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	leaq	20(%rax), %rax
	jne	.LBB3_6
# BB#7:                                 # %while.end
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movq	$0, 18488(%r15)
.LBB3_8:                                # %if.end.24
	testq	%r12, %r12
	je	.LBB3_11
# BB#9:                                 # %if.end.24
	testq	%rbp, %rbp
	jne	.LBB3_11
# BB#10:                                # %if.then.27
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbp
.LBB3_11:                               # %if.end.28
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB3_100
# BB#12:                                # %if.end.28
	testq	%rbp, %rbp
	je	.LBB3_100
# BB#13:                                # %if.then.32
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	leal	1(%rbp), %esi
	movl	$1, %edx
	movl	$.L.str.20, %ecx
	callq	*88(%rdi)
	movq	%rax, 18480(%r15)
	testq	%rax, %rax
	je	.LBB3_14
# BB#15:                                # %if.else
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	strncpy
	movq	18480(%r15), %rax
	movb	$0, (%rax,%rbp)
	movq	24(%r15), %rax
	movq	200(%rax), %r14
	cmpl	$0, 18588(%r15)
	movl	$.L.str.18, %ebp
	movl	$.L.str.19, %eax
	cmoveq	%rax, %rbp
	movl	$.L.str.22, %ebx
	cmoveq	%rax, %rbx
	movq	18480(%r15), %rdi
	movl	$.L.str.42, %esi
	callq	gp_fopen
	movq	%rax, %r12
	movq	%r12, 88(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	je	.LBB3_97
# BB#16:                                # %while.cond.preheader.i
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%r15, 72(%rsp)          # 8-byte Spill
	leaq	128(%rsp), %r13
	movl	$200, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	fgets
	xorl	%ebp, %ebp
	testq	%rax, %rax
	movl	$0, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	je	.LBB3_90
# BB#17:                                # %while.body.lr.ph.i
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB3_18
.LBB3_14:                               # %if.then.45
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	$-25, %ebx
	jmp	.LBB3_100
.LBB3_97:                               # %if.then.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18480(%r15), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rbx
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	movq	%rbp, %r8
	movq	%rbx, %r9
	callq	errprintf_nomem
	jmp	.LBB3_98
.LBB3_48:                               #   in Loop: Header=BB3_18 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB3_49
.LBB3_53:                               #   in Loop: Header=BB3_18 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movss	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB3_49:                               # %cleanup.223.thread214.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	movq	88(%rsp), %r12          # 8-byte Reload
	movl	108(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB3_89
	.align	16, 0x90
.LBB3_18:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_35 Depth 2
                                        #     Child Loop BB3_38 Depth 2
                                        #     Child Loop BB3_41 Depth 2
                                        #     Child Loop BB3_43 Depth 2
                                        #     Child Loop BB3_59 Depth 2
                                        #     Child Loop BB3_61 Depth 2
	incl	%r14d
	movl	$10, %esi
	movq	%r13, %rdi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_19
# BB#21:                                # %if.end.26.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movl	%r14d, 108(%rsp)        # 4-byte Spill
	movb	$0, (%rbp)
	jmp	.LBB3_23
	.align	16, 0x90
.LBB3_19:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%r12, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	jne	.LBB3_20
# BB#22:                                # %if.then.28.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movl	%r14d, 108(%rsp)        # 4-byte Spill
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	__rawmemchr
	movq	%rax, %rbp
	.align	16, 0x90
.LBB3_23:                               # %while.cond.32.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rbx
	cmpq	%rbx, %r13
	jae	.LBB3_24
# BB#25:                                # %land.rhs.i
                                        #   in Loop: Header=BB3_23 Depth=2
	leaq	-1(%rbx), %rbp
	movsbq	-1(%rbx), %r15
	callq	__ctype_b_loc
	movq	%rax, %r14
	movq	(%r14), %rax
	testb	$32, 1(%rax,%r15,2)
	jne	.LBB3_23
	jmp	.LBB3_26
	.align	16, 0x90
.LBB3_24:                               # %while.cond.32.while.end_crit_edge.i
                                        #   in Loop: Header=BB3_18 Depth=1
	callq	__ctype_b_loc
	movq	%rax, %r14
.LBB3_26:                               # %while.end.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movb	$0, (%rbx)
	movq	(%r14), %rbp
	leaq	127(%rsp), %rbx
	.align	16, 0x90
.LBB3_27:                               # %while.cond.40.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	1(%rbx), %r15
	incq	%rbx
	testb	$32, 1(%rbp,%r15,2)
	jne	.LBB3_27
# BB#28:                                # %while.end.50.i
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	%r15b, %r15b
	je	.LBB3_29
# BB#30:                                # %while.end.50.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movzbl	%r15b, %eax
	cmpl	$35, %eax
	jne	.LBB3_31
.LBB3_29:                               #   in Loop: Header=BB3_18 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movl	108(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB3_89
	.align	16, 0x90
.LBB3_31:                               # %if.end.58.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$.L.str.45, %edi
	callq	strlen
	movq	%rax, %r12
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB3_56
# BB#32:                                # %if.end.i.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movsbq	(%rbx,%r12), %rax
	testq	%rax, %rax
	je	.LBB3_55
# BB#33:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	%r15b, %r15b
	je	.LBB3_56
# BB#34:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movzwl	(%rbp,%rax,2), %eax
	andl	$8192, %eax             # imm = 0x2000
	testw	%ax, %ax
	jne	.LBB3_35
	jmp	.LBB3_56
.LBB3_55:                               # %if.then.61.i
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	%r15b, %r15b
	je	.LBB3_56
	.align	16, 0x90
.LBB3_35:                               # %while.body.i.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	1(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_56
# BB#36:                                # %while.body.i.land.rhs.i_crit_edge.i
                                        #   in Loop: Header=BB3_35 Depth=2
	incq	%rbx
	movzwl	(%rbp,%rax,2), %ecx
	testb	$32, %ch
	je	.LBB3_35
# BB#37:                                # %land.rhs.8.i.i.preheader
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	$32, %ch
	je	.LBB3_40
	.align	16, 0x90
.LBB3_38:                               # %while.body.17.i.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	1(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_56
# BB#39:                                # %while.body.17.i.land.rhs.8.i_crit_edge.i
                                        #   in Loop: Header=BB3_38 Depth=2
	incq	%rbx
	testb	$32, 1(%rbp,%rax,2)
	jne	.LBB3_38
.LBB3_40:                               #   in Loop: Header=BB3_18 Depth=1
	leaq	-1(%rbx), %r15
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB3_41:                               # %land.rhs.i.153.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	%al, %rax
	testb	$32, 1(%rbp,%rax,2)
	jne	.LBB3_42
# BB#45:                                # %while.body.i.156.i
                                        #   in Loop: Header=BB3_41 Depth=2
	movb	1(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB3_41
	jmp	.LBB3_46
.LBB3_42:                               # %while.body.17.i.165.i.preheader
                                        #   in Loop: Header=BB3_18 Depth=1
	incq	%rcx
.LBB3_43:                               # %while.body.17.i.165.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	(%rcx), %rax
	testq	%rax, %rax
	je	.LBB3_46
# BB#44:                                # %while.body.17.i.165.land.rhs.8.i.162_crit_edge.i
                                        #   in Loop: Header=BB3_43 Depth=2
	incq	%rcx
	testb	$32, 1(%rbp,%rax,2)
	jne	.LBB3_43
	jmp	.LBB3_56
.LBB3_46:                               # %if.then.69.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$.L.str.46, %edi
	callq	strlen
	movq	%rax, %r12
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB3_51
# BB#47:                                # %if.end.i.175.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movsbq	1(%r15,%r12), %rax
	testq	%rax, %rax
	je	.LBB3_48
# BB#50:                                # %lor.rhs.i.181.i
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	$32, 1(%rbp,%rax,2)
	jne	.LBB3_48
.LBB3_51:                               # %if.end.73.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$.L.str.47, %edi
	callq	strlen
	movq	%rax, %r12
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB3_56
# BB#52:                                # %if.end.i.191.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movsbq	1(%r15,%r12), %rax
	testq	%rax, %rax
	je	.LBB3_53
# BB#54:                                # %lor.rhs.i.197.i
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	$32, 1(%rbp,%rax,2)
	jne	.LBB3_53
	.align	16, 0x90
.LBB3_56:                               # %if.end.80.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	leal	1(%r15), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cltq
	shlq	$2, %rax
	leaq	(%rax,%rax,4), %rsi
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_57
# BB#58:                                # %cleanup.cont.95.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	(%r14), %rax
	leaq	127(%rsp), %rbx
	.align	16, 0x90
.LBB3_59:                               # %while.cond.98.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	1(%rbx), %rcx
	incq	%rbx
	testb	$32, 1(%rax,%rcx,2)
	jne	.LBB3_59
# BB#60:                                # %while.cond.110.preheader.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movslq	%r15d, %r14
	movq	%rbx, %rcx
	incq	%rcx
	movq	88(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB3_61:                               # %while.cond.110.i
                                        #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	movsbq	(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_62
# BB#63:                                # %land.rhs.114.i
                                        #   in Loop: Header=BB3_61 Depth=2
	leaq	1(%rbp), %rcx
	testb	$32, 1(%rax,%rdx,2)
	je	.LBB3_61
# BB#64:                                # %if.then.129.i
                                        #   in Loop: Header=BB3_18 Depth=1
	decq	%rbp
	movb	$0, -1(%rcx)
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	leaq	2(%rbp), %rbp
	movl	$2, %eax
	jmp	.LBB3_65
.LBB3_62:                               #   in Loop: Header=BB3_18 Depth=1
	leaq	-1(%rbp), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$1, %eax
.LBB3_65:                               # %if.end.131.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	18496(%rax), %rsi
	movq	%rbx, %rdi
	callq	ms_find_code_from_name
	testl	%eax, %eax
	je	.LBB3_66
# BB#68:                                # %if.end.141.i
                                        #   in Loop: Header=BB3_18 Depth=1
	testb	$16, %ah
	jne	.LBB3_69
# BB#70:                                # %cleanup.cont.154.i
                                        #   in Loop: Header=BB3_18 Depth=1
	leaq	(%r14,%r14,4), %r14
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx,%r14,4)
	leaq	4(%rcx,%r14,4), %r13
	leaq	8(%rcx,%r14,4), %r15
	leaq	12(%rcx,%r14,4), %r12
	leaq	16(%rcx,%r14,4), %rbx
	leaq	124(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r12, %r8
	movq	%rbx, %r9
	movq	%r15, %rcx
	callq	sscanf
	cmpl	$4, %eax
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	jne	.LBB3_72
# BB#71:                                # %lor.lhs.false.158.i
                                        #   in Loop: Header=BB3_18 Depth=1
	leaq	(%rdx,%rsi), %rax
	movslq	124(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB3_72
# BB#77:                                # %if.end.177.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movss	(%r13), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm0, %xmm4
	ja	.LBB3_81
# BB#78:                                # %lor.lhs.false.181.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movss	(%r15), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm4
	ja	.LBB3_81
# BB#79:                                # %lor.lhs.false.185.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movss	(%r12), %xmm2           # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm4
	ja	.LBB3_81
# BB#80:                                # %lor.lhs.false.189.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movss	(%rbx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	ja	.LBB3_81
# BB#82:                                # %if.end.199.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%r14,4), %rax
	unpcklps	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	unpcklps	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movaps	32(%rsp), %xmm1         # 16-byte Reload
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	mulps	%xmm0, %xmm1
	movups	%xmm1, (%r13)
	movl	(%rax), %eax
	movl	$-65281, %ecx           # imm = 0xFFFFFFFFFFFF00FF
	andl	%ecx, %eax
	cmpl	$76, %eax
	jne	.LBB3_83
# BB#84:                                # %land.lhs.true.213.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	18472(%rbp), %rax
	cmpq	$0, 16(%rax)
	movl	108(%rsp), %r14d        # 4-byte Reload
	je	.LBB3_86
# BB#85:                                #   in Loop: Header=BB3_18 Depth=1
	movq	%rdx, %rax
	jmp	.LBB3_87
.LBB3_83:                               #   in Loop: Header=BB3_18 Depth=1
	movq	%rdx, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	88(%rsp), %r12          # 8-byte Reload
	movl	108(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB3_88
.LBB3_86:                               # %if.then.216.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%rdx, %r15
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18472(%rbp), %rax
	movq	18480(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movl	$.L.str.54, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%r14d, %r8d
	movq	%rsi, %r9
	movq	%rsi, %rcx
	callq	errprintf_nomem
	movq	%r15, %rax
.LBB3_87:                               # %cleanup.223.thread214.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	88(%rsp), %r12          # 8-byte Reload
.LBB3_88:                               # %cleanup.223.thread214.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	64(%rsp), %rbp          # 8-byte Reload
	leaq	128(%rsp), %r13
	.align	16, 0x90
.LBB3_89:                               # %cleanup.223.thread214.i
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$200, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	movl	%ebp, %ebx
	jne	.LBB3_18
.LBB3_90:                               # %while.end.229.i
	movq	%rbp, %rbx
	movq	%r12, %rdi
	callq	ferror
	testl	%eax, %eax
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	je	.LBB3_92
# BB#91:                                # %if.then.232.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18480(%r15), %rdx
	movl	$.L.str.55, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	errprintf_nomem
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r12, %rdi
	callq	fclose
.LBB3_98:                               # %if.then.58
	movl	$-9, %ebx
	jmp	.LBB3_99
.LBB3_92:                               # %if.end.238.i
	movq	%r12, %rdi
	callq	fclose
	testl	%ebx, %ebx
	je	.LBB3_93
# BB#94:                                # %if.end.247.i
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	200(%rax), %rdi
	leal	1(%rbx), %esi
	movl	$20, %edx
	movl	$.L.str.57, %ecx
	callq	*88(%rdi)
	movq	%rax, 18488(%r15)
	testq	%rax, %rax
	je	.LBB3_95
# BB#96:                                # %eprn_read_media_data.exit
	movslq	%ebx, %rbx
	leaq	(,%rbx,4), %rcx
	leaq	(%rcx,%rcx,4), %rdx
	movq	%rax, %rdi
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	memcpy
	movq	18488(%r15), %rax
	leaq	(%rbx,%rbx,4), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	%rbp, %rdi
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB3_100
.LBB3_81:                               # %if.then.193.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	18480(%r15), %r8
	movl	$.L.str.53, %edi
	xorl	%eax, %eax
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	108(%rsp), %edx         # 4-byte Reload
	movq	%rsi, %rcx
	callq	errprintf_nomem
	jmp	.LBB3_75
.LBB3_72:                               # %if.then.164.i
	cmpb	$0, (%rbp)
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	108(%rsp), %r14d        # 4-byte Reload
	je	.LBB3_74
# BB#73:                                # %if.then.168.i
	movb	$32, -1(%rdx,%rsi)
.LBB3_74:                               # %if.end.170.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	18480(%r15), %rdx
	leaq	128(%rsp), %r9
	movl	$.L.str.52, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	movq	%rbp, %r8
	movl	%r14d, %ecx
	callq	errprintf_nomem
.LBB3_75:                               # %if.then.58
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	88(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB3_76
.LBB3_93:                               # %if.then.242.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	18480(%r15), %rdx
	movl	$.L.str.56, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	movq	%rbp, %rcx
	callq	errprintf_nomem
	movl	$-15, %ebx
	jmp	.LBB3_99
.LBB3_20:                               # %if.then.17.i
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	18480(%r15), %r8
	movl	$.L.str.44, %edi
	movl	$198, %edx
	xorl	%eax, %eax
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %rcx
	movl	%r14d, %r9d
	callq	errprintf_nomem
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r12, %rdi
	callq	fclose
	movl	$-13, %ebx
	jmp	.LBB3_99
.LBB3_95:                               # %if.then.254.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.58, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	callq	errprintf_nomem
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	$-25, %ebx
	jmp	.LBB3_99
.LBB3_57:                               # %cleanup.93.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.48, %edi
	xorl	%eax, %eax
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rcx, %rdx
	callq	errprintf_nomem
	movq	%rbp, %rdi
	callq	free
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	fclose
	movl	$-25, %ebx
	movq	72(%rsp), %r15          # 8-byte Reload
	jmp	.LBB3_99
.LBB3_66:                               # %if.then.135.i
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	18480(%r15), %r8
	movl	$.L.str.49, %edi
	jmp	.LBB3_67
.LBB3_69:                               # %if.then.144.i
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	18480(%r15), %r8
	movl	$.L.str.50, %edi
.LBB3_67:                               # %if.then.58
	xorl	%eax, %eax
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	movl	108(%rsp), %r9d         # 4-byte Reload
	callq	errprintf_nomem
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r12, %rdi
.LBB3_76:                               # %if.then.58
	callq	fclose
	movl	$-15, %ebx
.LBB3_99:                               # %if.then.58
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18480(%r15), %rsi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movq	$0, 18480(%r15)
.LBB3_100:                              # %if.end.71
	movl	%ebx, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	eprn_set_media_data, .Lfunc_end3-eprn_set_media_data
	.cfi_endproc

	.globl	eprn_bits_for_levels
	.align	16, 0x90
	.type	eprn_bits_for_levels,@function
eprn_bits_for_levels:                   # @eprn_bits_for_levels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	cmpl	$2, %edi
	jb	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%eax
	addq	%rdx, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB4_1
.LBB4_2:                                # %for.end
	retq
.Lfunc_end4:
	.size	eprn_bits_for_levels, .Lfunc_end4-eprn_bits_for_levels
	.cfi_endproc

	.globl	eprn_check_colour_info
	.align	16, 0x90
	.type	eprn_check_colour_info,@function
eprn_check_colour_info:                 # @eprn_check_colour_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
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
	movq	8(%rdi), %r10
	testq	%r10, %r10
	je	.LBB5_38
# BB#1:                                 # %for.body.lr.ph
	movl	(%rsi), %r11d
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_15 Depth 3
                                        #       Child Loop BB5_22 Depth 3
                                        #         Child Loop BB5_25 Depth 4
                                        #         Child Loop BB5_31 Depth 4
	cmpl	$3, %r11d
	sete	%al
	movl	(%rdi), %r14d
	cmpl	$4, %r14d
	sete	%bl
	cmpl	%r11d, %r14d
	je	.LBB5_4
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	andb	%al, %bl
	je	.LBB5_37
.LBB5_4:                                # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	leal	-1(%r14), %eax
	cmpl	$2, %eax
	movq	%r8, %rsi
	cmovbq	%r9, %rsi
	movq	8(%r10), %rax
	testq	%rax, %rax
	je	.LBB5_37
# BB#5:                                 # %for.body.16.lr.ph
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	(%rsi), %ebx
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB5_6:                                # %for.body.16
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_15 Depth 3
                                        #       Child Loop BB5_22 Depth 3
                                        #         Child Loop BB5_25 Depth 4
                                        #         Child Loop BB5_31 Depth 4
	movq	(%r10), %rsi
	testq	%rsi, %rsi
	je	.LBB5_13
# BB#7:                                 # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB5_6 Depth=2
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	jbe	.LBB5_12
# BB#8:                                 # %land.rhs.i.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	addq	$8, %rsi
	.align	16, 0x90
.LBB5_9:                                # %land.rhs.i.i
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ucomiss	%xmm1, %xmm3
	jne	.LBB5_11
	jp	.LBB5_11
# BB#10:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB5_9 Depth=3
	movss	-4(%rsi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm4
	jne	.LBB5_11
	jnp	.LBB5_12
.LBB5_11:                               # %while.body.i.i
                                        #   in Loop: Header=BB5_9 Depth=3
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	addq	$8, %rsi
	ucomiss	%xmm0, %xmm3
	ja	.LBB5_9
.LBB5_12:                               # %res_supported.exit.i
                                        #   in Loop: Header=BB5_6 Depth=2
	ucomiss	%xmm0, %xmm3
	jbe	.LBB5_36
.LBB5_13:                               # %land.rhs.i
                                        #   in Loop: Header=BB5_6 Depth=2
	movw	(%rax), %si
	testw	%si, %si
	je	.LBB5_36
# BB#14:                                # %land.rhs.i.3.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	addq	$4, %rax
	.align	16, 0x90
.LBB5_15:                               # %land.rhs.i.3.i
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	%si, %esi
	cmpl	%ebx, %esi
	ja	.LBB5_17
# BB#16:                                # %lor.rhs.i.4.i
                                        #   in Loop: Header=BB5_15 Depth=3
	movzwl	-2(%rax), %esi
	cmpl	%ebx, %esi
	jae	.LBB5_18
.LBB5_17:                               # %while.body.i.7.i
                                        #   in Loop: Header=BB5_15 Depth=3
	movw	(%rax), %si
	addq	$4, %rax
	testw	%si, %si
	jne	.LBB5_15
	jmp	.LBB5_36
.LBB5_18:                               # %if.then.17
                                        #   in Loop: Header=BB5_6 Depth=2
	xorl	%eax, %eax
	cmpl	$3, %r14d
	jb	.LBB5_39
# BB#19:                                # %if.end
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	16(%rdi), %r15
	testq	%r15, %r15
	je	.LBB5_40
# BB#20:                                # %for.cond.33.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB5_35
# BB#21:                                # %for.body.36.lr.ph
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	(%r9), %r12d
	.align	16, 0x90
.LBB5_22:                               # %for.body.36
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_25 Depth 4
                                        #         Child Loop BB5_31 Depth 4
	movq	(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB5_29
# BB#23:                                # %while.cond.preheader.i.i.37
                                        #   in Loop: Header=BB5_22 Depth=3
	movss	(%rbp), %xmm3           # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	jbe	.LBB5_28
# BB#24:                                # %land.rhs.i.i.39.preheader
                                        #   in Loop: Header=BB5_22 Depth=3
	addq	$8, %rbp
	.align	16, 0x90
.LBB5_25:                               # %land.rhs.i.i.39
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ucomiss	%xmm1, %xmm3
	jne	.LBB5_27
	jp	.LBB5_27
# BB#26:                                # %lor.rhs.i.i.41
                                        #   in Loop: Header=BB5_25 Depth=4
	movss	-4(%rbp), %xmm4         # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm4
	jne	.LBB5_27
	jnp	.LBB5_28
.LBB5_27:                               # %while.body.i.i.45
                                        #   in Loop: Header=BB5_25 Depth=4
	movss	(%rbp), %xmm3           # xmm3 = mem[0],zero,zero,zero
	addq	$8, %rbp
	ucomiss	%xmm0, %xmm3
	ja	.LBB5_25
.LBB5_28:                               # %res_supported.exit.i.47
                                        #   in Loop: Header=BB5_22 Depth=3
	ucomiss	%xmm0, %xmm3
	jbe	.LBB5_34
.LBB5_29:                               # %land.rhs.i.51
                                        #   in Loop: Header=BB5_22 Depth=3
	movw	(%rsi), %bp
	testw	%bp, %bp
	je	.LBB5_34
# BB#30:                                # %land.rhs.i.3.i.54.preheader
                                        #   in Loop: Header=BB5_22 Depth=3
	addq	$4, %rsi
	.align	16, 0x90
.LBB5_31:                               # %land.rhs.i.3.i.54
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	%bp, %ebp
	cmpl	%r12d, %ebp
	ja	.LBB5_33
# BB#32:                                # %lor.rhs.i.4.i.57
                                        #   in Loop: Header=BB5_31 Depth=4
	movzwl	-2(%rsi), %ebp
	cmpl	%r12d, %ebp
	jae	.LBB5_35
.LBB5_33:                               # %while.body.i.7.i.61
                                        #   in Loop: Header=BB5_31 Depth=4
	movw	(%rsi), %bp
	addq	$4, %rsi
	testw	%bp, %bp
	jne	.LBB5_31
.LBB5_34:                               # %for.inc
                                        #   in Loop: Header=BB5_22 Depth=3
	movq	24(%r15), %rsi
	addq	$16, %r15
	testq	%rsi, %rsi
	jne	.LBB5_22
.LBB5_35:                               # %land.lhs.true.51
                                        #   in Loop: Header=BB5_6 Depth=2
	cmpq	$0, 8(%r15)
	je	.LBB5_36
	jmp	.LBB5_39
.LBB5_40:                               # %land.lhs.true.45
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	(%r8), %esi
	cmpl	(%r9), %esi
	je	.LBB5_39
	.align	16, 0x90
.LBB5_36:                               # %for.inc.57
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	24(%r10), %rax
	addq	$16, %r10
	testq	%rax, %rax
	jne	.LBB5_6
.LBB5_37:                               # %for.inc.65
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	32(%rdi), %r10
	addq	$24, %rdi
	testq	%r10, %r10
	jne	.LBB5_2
.LBB5_38:
	movl	$-1, %eax
.LBB5_39:                               # %cleanup.68
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	eprn_check_colour_info, .Lfunc_end5-eprn_check_colour_info
	.cfi_endproc

	.globl	eprn_put_params
	.align	16, 0x90
	.type	eprn_put_params,@function
eprn_put_params:                        # @eprn_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 144
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	18588(%r13), %rbx
	movl	18588(%r13), %ebp
	movl	836(%r13), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	832(%r13), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movss	856(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	860(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movl	$2, 68(%rsp)
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_read_bool
	testl	%eax, %eax
	je	.LBB6_1
# BB#2:                                 # %if.else
	testl	%ebp, %ebp
	movl	$.L.str.22, %edx
	movl	$.L.str.19, %ecx
	cmoveq	%rcx, %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	$.L.str.18, %edx
	cmoveq	%rcx, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	jmp	.LBB6_3
.LBB6_1:                                # %if.then
	cmpl	$0, (%rbx)
	movl	$.L.str.18, %ecx
	movl	$.L.str.19, %eax
	cmoveq	%rax, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.22, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
.LBB6_3:                                # %if.end.19
	leaq	72(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB6_4
# BB#8:                                 # %if.else.40
	cmovsl	%eax, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB6_9
.LBB6_4:                                # %if.then.22
	leaq	72(%rsp), %rdi
	leaq	68(%rsp), %rdx
	movl	$eprn_colour_model_list, %esi
	callq	eprn_get_int
	movl	%eax, %ebx
	cmpl	$-25, %ebx
	je	.LBB6_7
# BB#5:                                 # %if.then.22
	movl	$1, %r15d
	testl	%ebx, %ebx
	je	.LBB6_9
# BB#6:                                 # %if.then.27
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	24(%r13), %rdi
	movq	72(%rsp), %rsi
	movl	80(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB6_7:                                # %if.end.36
	movq	(%r14), %rax
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	xorl	%r15d, %r15d
	movl	%ebx, %ebp
.LBB6_9:                                # %if.end.45
	leaq	18472(%r13), %r12
	leaq	72(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB6_10
# BB#14:                                # %if.else.76
	cmovsl	%eax, %ebp
	jmp	.LBB6_15
.LBB6_10:                               # %if.then.49
	leaq	72(%rsp), %rdi
	leaq	68(%rsp), %rdx
	movl	$eprn_colour_model_list, %esi
	callq	eprn_get_int
	movl	%eax, %ebx
	cmpl	$-25, %ebx
	je	.LBB6_13
# BB#11:                                # %if.then.49
	testl	%ebx, %ebx
	je	.LBB6_16
# BB#12:                                # %if.then.56
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	24(%r13), %rdi
	movq	72(%rsp), %rsi
	movl	80(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB6_13:                               # %if.end.70
	movq	(%r14), %rax
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB6_15:                               # %if.end.81
	testl	%r15d, %r15d
	je	.LBB6_34
.LBB6_16:                               # %if.then.83
	movl	84(%r12), %ecx
	movl	68(%rsp), %eax
	cmpl	%eax, %ecx
	je	.LBB6_19
# BB#17:                                # %land.lhs.true
	cmpl	$0, 84(%r13)
	movl	%eax, %ecx
	je	.LBB6_19
# BB#18:                                # %if.then.87
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	68(%rsp), %ecx
.LBB6_19:                               # %if.end.89
	movl	%ecx, 84(%r12)
	leal	-1(%rcx), %eax
	cmpl	$3, %eax
	jae	.LBB6_20
# BB#25:                                # %sw.bb.92
	movl	$3, 100(%r13)
	movl	$3, %ecx
	jmp	.LBB6_26
.LBB6_20:                               # %if.end.89
	cmpl	$4, %ecx
	jne	.LBB6_21
# BB#23:                                # %sw.bb.95
	movl	$4, 100(%r13)
	movl	$4, %ecx
	jmp	.LBB6_26
.LBB6_21:                               # %if.end.89
	testl	%ecx, %ecx
	jne	.LBB6_24
# BB#22:                                # %sw.bb
	movl	$1, 100(%r13)
	movl	$1, %ecx
.LBB6_26:                               # %sw.epilog
	cmpl	$4, %ecx
	sbbl	%edx, %edx
	andl	$1, %edx
	movl	%edx, 104(%r13)
	movl	18560(%r13), %edx
	cmpl	$1, %eax
	ja	.LBB6_29
# BB#27:                                # %if.then.110
	testl	%edx, %edx
	je	.LBB6_31
# BB#28:                                # %if.then.113
	movl	$0, 88(%r12)
	jmp	.LBB6_31
.LBB6_29:                               # %if.else.116
	testl	%edx, %edx
	jne	.LBB6_31
# BB#30:                                # %if.then.120
	movl	$2, 88(%r12)
.LBB6_31:                               # %if.end.123
	cmpl	$2, %ecx
	jb	.LBB6_34
# BB#32:                                # %land.lhs.true.128
	cmpl	$0, 92(%r12)
	jne	.LBB6_34
# BB#33:                                # %if.then.131
	movl	$2, 92(%r12)
.LBB6_34:                               # %if.end.134
	leaq	68(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB6_35
# BB#44:                                # %if.else.182
	cmovsl	%eax, %ebp
	jmp	.LBB6_45
.LBB6_35:                               # %if.then.138
	movl	68(%rsp), %eax
	testl	%eax, %eax
	je	.LBB6_36
# BB#38:                                # %lor.lhs.false.149
	leal	-2(%rax), %ecx
	cmpl	$254, %ecx
	ja	.LBB6_37
# BB#39:                                # %land.lhs.true.155
	movl	84(%r12), %ecx
	decl	%ecx
	cmpl	$2, %ecx
	jb	.LBB6_37
	jmp	.LBB6_40
.LBB6_36:                               # %land.lhs.true.141
	movl	84(%r12), %ecx
	decl	%ecx
	cmpl	$2, %ecx
	jae	.LBB6_37
.LBB6_40:                               # %if.then.163
	cmpl	%eax, 88(%r12)
	je	.LBB6_43
# BB#41:                                # %land.lhs.true.167
	cmpl	$0, 84(%r13)
	je	.LBB6_43
# BB#42:                                # %if.then.170
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	68(%rsp), %eax
.LBB6_43:                               # %if.end.172
	movl	%eax, 88(%r12)
	jmp	.LBB6_45
.LBB6_37:                               # %if.else.174
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	68(%rsp), %edx
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$.L.str.6, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB6_45:                               # %if.end.187
	leaq	68(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB6_46
# BB#55:                                # %if.else.227
	cmovsl	%eax, %ebp
	jmp	.LBB6_56
.LBB6_46:                               # %if.then.191
	movl	68(%rsp), %eax
	testl	%eax, %eax
	je	.LBB6_47
# BB#49:                                # %lor.lhs.false.198
	leal	-2(%rax), %ecx
	cmpl	$254, %ecx
	ja	.LBB6_48
# BB#50:                                # %land.lhs.true.204
	cmpl	$0, 84(%r12)
	jne	.LBB6_51
	jmp	.LBB6_48
.LBB6_47:                               # %land.lhs.true.194
	cmpl	$0, 84(%r12)
	je	.LBB6_51
.LBB6_48:                               # %if.else.219
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	68(%rsp), %edx
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$.L.str.7, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB6_56
.LBB6_51:                               # %if.then.208
	cmpl	%eax, 92(%r12)
	je	.LBB6_54
# BB#52:                                # %land.lhs.true.212
	cmpl	$0, 84(%r13)
	je	.LBB6_54
# BB#53:                                # %if.then.215
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	68(%rsp), %eax
.LBB6_54:                               # %if.end.217
	movl	%eax, 92(%r12)
.LBB6_56:                               # %if.end.232
	leaq	40(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	je	.LBB6_57
# BB#61:                                # %if.else.248
	cmovsl	%eax, %ebp
	jmp	.LBB6_62
.LBB6_57:                               # %if.then.237
	cmpl	$0, 112(%r12)
	movl	40(%rsp), %eax
	je	.LBB6_60
# BB#58:                                # %if.then.237
	testl	%eax, %eax
	jne	.LBB6_60
# BB#59:                                # %if.then.241
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	jmp	.LBB6_62
.LBB6_60:                               # %if.else.245
	movl	%eax, 112(%r12)
.LBB6_62:                               # %if.end.253
	movq	%r12, 32(%rsp)          # 8-byte Spill
	leaq	72(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB6_63
# BB#69:                                # %if.else.289
	cmovsl	%eax, %ebp
	jmp	.LBB6_70
.LBB6_63:                               # %if.then.257
	leaq	72(%rsp), %rdi
	leaq	68(%rsp), %rdx
	movl	$intensity_rendering_list, %esi
	callq	eprn_get_int
	testl	%eax, %eax
	je	.LBB6_64
# BB#68:                                # %if.else.271
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	24(%r13), %rdi
	movq	72(%rsp), %rsi
	movl	80(%rsp), %edx
	callq	errwrite
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$.L.str.13, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB6_70
.LBB6_64:                               # %if.then.261
	movl	68(%rsp), %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	cmpl	96(%rbx), %eax
	je	.LBB6_67
# BB#65:                                # %land.lhs.true.264
	cmpl	$0, 84(%r13)
	je	.LBB6_67
# BB#66:                                # %if.then.267
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	68(%rsp), %eax
.LBB6_67:                               # %if.end.269
	movl	%eax, 96(%rbx)
.LBB6_70:                               # %if.end.294
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_read_null
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB6_71
# BB#75:                                # %if.else.307
	jns	.LBB6_77
# BB#76:                                # %if.else.307
	cmpl	$-20, %r15d
	jne	.LBB6_87
.LBB6_77:                               # %if.else.314
	leaq	68(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB6_78
# BB#85:                                # %if.else.346
	cmovsl	%eax, %ebp
	jmp	.LBB6_86
.LBB6_71:                               # %if.then.298
	movq	32(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 64(%rbx)
	je	.LBB6_74
# BB#72:                                # %land.lhs.true.300
	cmpl	$0, 84(%r13)
	je	.LBB6_74
# BB#73:                                # %if.then.303
	movq	%r13, %rdi
	callq	gs_closedevice
.LBB6_74:                               # %if.end.305
	movl	$0, 64(%rbx)
.LBB6_86:                               # %if.end.353
	movl	%ebp, %r15d
.LBB6_87:                               # %if.end.353
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB6_88
# BB#98:                                # %if.else.367
	movq	24(%rsp), %r12          # 8-byte Reload
	jns	.LBB6_100
# BB#99:                                # %if.else.367
	cmpl	$-20, %ebx
	jne	.LBB6_120
.LBB6_100:                              # %if.else.374
	leaq	72(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB6_101
# BB#118:                               # %if.else.431
	cmovsl	%eax, %r15d
	jmp	.LBB6_119
.LBB6_88:                               # %if.then.357
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB6_89
# BB#90:                                # %land.lhs.true.360
	cmpl	$0, 84(%r13)
	je	.LBB6_91
# BB#92:                                # %if.end.365
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	%r13, %rdi
	callq	gs_closedevice
	movq	18480(%r13), %rsi
	movl	$0, 18528(%r13)
	testq	%rsi, %rsi
	jne	.LBB6_93
	jmp	.LBB6_94
.LBB6_89:                               # %if.end.365.thread
	movq	24(%rsp), %r12          # 8-byte Reload
	movl	$0, 18528(%r13)
	jmp	.LBB6_94
.LBB6_78:                               # %if.then.318
	movl	68(%rsp), %eax
	cmpl	$3, %eax
	ja	.LBB6_84
# BB#79:                                # %if.then.324
	movq	32(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 64(%rbx)
	je	.LBB6_81
# BB#80:                                # %lor.lhs.false.327
	cmpl	%eax, 60(%rbx)
	je	.LBB6_83
.LBB6_81:                               # %land.lhs.true.330
	cmpl	$0, 84(%r13)
	je	.LBB6_83
# BB#82:                                # %if.then.333
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	68(%rsp), %eax
.LBB6_83:                               # %if.end.335
	movl	$1, 64(%rbx)
	movl	%eax, 60(%rbx)
	jmp	.LBB6_86
.LBB6_101:                              # %if.then.378
	movl	80(%rsp), %ebp
	testq	%rbp, %rbp
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rbx
	je	.LBB6_109
# BB#102:                               # %if.then.382
	testq	%rbx, %rbx
	je	.LBB6_105
# BB#103:                               # %lor.lhs.false.386
	movq	72(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB6_105
# BB#104:                               # %lor.lhs.false.394
	cmpb	$0, (%rbx,%rbp)
	je	.LBB6_107
.LBB6_105:                              # %land.lhs.true.402
	cmpl	$0, 84(%r13)
	je	.LBB6_107
# BB#106:                               # %if.then.405
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	80(%rsp), %ebp
.LBB6_107:                              # %if.end.423
	movq	72(%rsp), %rsi
	movl	%ebp, %edx
	movq	%r13, %rdi
	callq	eprn_set_media_data
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	%r15d, %ebx
	je	.LBB6_120
# BB#108:                               # %if.then.426
	movq	(%r14), %rax
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %ebx
	jmp	.LBB6_120
.LBB6_91:                               # %if.end.365.thread297
	movq	24(%rsp), %r12          # 8-byte Reload
	movl	$0, 18528(%r13)
.LBB6_93:                               # %if.then.i
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movq	$0, 18480(%r13)
.LBB6_94:                               # %if.end.i
	movq	18488(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB6_119
# BB#95:
	movq	%rsi, %rax
	.align	16, 0x90
.LBB6_96:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	leaq	20(%rax), %rax
	jne	.LBB6_96
	jmp	.LBB6_97
.LBB6_84:                               # %if.else.338
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	68(%rsp), %edx
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-15, %r15d
	movl	$.L.str.14, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB6_87
.LBB6_109:                              # %if.else.412
	testq	%rbx, %rbx
	je	.LBB6_110
# BB#111:                               # %land.lhs.true.416
	cmpl	$0, 84(%r13)
	je	.LBB6_112
# BB#113:                               # %if.end.421
	movq	%r13, %rdi
	callq	gs_closedevice
	movq	18480(%r13), %rbx
	movl	$0, 18528(%r13)
	testq	%rbx, %rbx
	jne	.LBB6_114
	jmp	.LBB6_115
.LBB6_110:                              # %if.end.421.thread
	movl	$0, 18528(%r13)
	jmp	.LBB6_115
.LBB6_112:                              # %if.end.421.thread302
	movl	$0, 18528(%r13)
.LBB6_114:                              # %if.then.i.260
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.20, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	$0, 18480(%r13)
.LBB6_115:                              # %if.end.i.263
	movq	18488(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB6_119
# BB#116:
	movq	%rsi, %rax
	.align	16, 0x90
.LBB6_117:                              # %while.cond.i.268
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	leaq	20(%rax), %rax
	jne	.LBB6_117
.LBB6_97:                               # %while.end.i
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movq	$0, 18488(%r13)
.LBB6_119:                              # %if.end.438
	movl	%r15d, %ebx
.LBB6_120:                              # %if.end.438
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB6_121
# BB#122:                               # %if.else.443
	movq	32(%rsp), %rcx          # 8-byte Reload
	jns	.LBB6_127
# BB#123:                               # %land.lhs.true.446
	leaq	124(%rcx), %rbp
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB6_124
.LBB6_127:                              # %if.else.461
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	jmp	.LBB6_128
.LBB6_121:                              # %if.then.442
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$0, 120(%rax)
	jmp	.LBB6_128
.LBB6_124:                              # %if.then.450
	cmpl	$0, (%rbp)
	jns	.LBB6_126
# BB#125:                               # %if.then.454
	callq	gs_program_name
	movq	%r12, %r15
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r15, %r12
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	(%rbp), %edx
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%rsi, %rcx
	callq	errprintf_nomem
.LBB6_126:                              # %if.end.459
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$1, 120(%rax)
.LBB6_128:                              # %if.end.467
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB6_129
# BB#131:                               # %if.else.484
	jns	.LBB6_133
# BB#132:                               # %if.else.484
	cmpl	$-20, %ebp
	jne	.LBB6_141
.LBB6_133:                              # %if.else.491
	leaq	72(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	jne	.LBB6_140
# BB#134:                               # %if.then.495
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	104(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB6_136
# BB#135:                               # %if.then.499
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.33, %edx
	callq	*24(%rdi)
	movq	$0, 18576(%r13)
.LBB6_136:                              # %if.end.510
	movl	80(%rsp), %esi
	testl	%esi, %esi
	je	.LBB6_140
# BB#137:                               # %if.then.514
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	incl	%esi
	movl	$1, %edx
	movl	$.L.str.33, %ecx
	callq	*88(%rdi)
	movq	%rax, 18576(%r13)
	testq	%rax, %rax
	je	.LBB6_138
# BB#139:                               # %if.else.535
	movq	72(%rsp), %rsi
	movl	80(%rsp), %edx
	movq	%rax, %rdi
	callq	strncpy
	movl	80(%rsp), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	104(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB6_140
.LBB6_129:                              # %if.then.471
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	104(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB6_140
# BB#130:                               # %if.then.474
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.33, %edx
	callq	*24(%rdi)
	movq	$0, 18576(%r13)
.LBB6_140:                              # %if.end.549
	movl	%ebx, %ebp
.LBB6_141:                              # %if.end.549
	leaq	68(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB6_142
# BB#149:                               # %if.else.581
	cmovsl	%eax, %ebp
	jmp	.LBB6_150
.LBB6_142:                              # %if.then.553
	movl	68(%rsp), %eax
	testl	%eax, %eax
	je	.LBB6_144
# BB#143:                               # %if.then.553
	leal	-2(%rax), %ecx
	cmpl	$254, %ecx
	jbe	.LBB6_144
# BB#148:                               # %if.else.573
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	68(%rsp), %edx
	movl	$.L.str.35, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$.L.str.8, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB6_150
.LBB6_144:                              # %if.then.562
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, 92(%rcx)
	je	.LBB6_147
# BB#145:                               # %land.lhs.true.566
	cmpl	$0, 84(%r13)
	je	.LBB6_147
# BB#146:                               # %if.then.569
	movq	%r13, %rdi
	callq	gs_closedevice
	movl	68(%rsp), %eax
.LBB6_147:                              # %if.end.571
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 92(%rcx)
.LBB6_150:                              # %if.end.586
	movl	18568(%r13), %eax
	movl	$256, %ecx              # imm = 0x100
	cmpl	$2, %eax
	je	.LBB6_153
# BB#151:                               # %if.end.7.i
	movl	18560(%r13), %edx
	movl	18564(%r13), %esi
	cmpl	%esi, %edx
	cmovbl	%esi, %edx
	movl	%edx, %ecx
	cmpl	$2, %edx
	jb	.LBB6_152
.LBB6_153:                              # %for.body.i.preheader.i
	xorl	%edx, %edx
	movl	$1, %esi
	.align	16, 0x90
.LBB6_154:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%edx
	addq	%rsi, %rsi
	cmpq	%rcx, %rsi
	jb	.LBB6_154
# BB#155:                               # %eprn_bits_for_levels.exit.loopexit.i
	leaq	18564(%r13), %rcx
	movl	18564(%r13), %esi
	jmp	.LBB6_156
.LBB6_152:
	leaq	18564(%r13), %rcx
	xorl	%edx, %edx
.LBB6_156:                              # %eprn_bits_for_levels.exit.i
	movl	%edx, 18600(%r13)
	testl	%esi, %esi
	setne	%bl
	movzbl	%bl, %esi
	leal	1(%rsi,%rsi,2), %esi
	imull	%edx, %esi
	movw	%si, 108(%r13)
	movzwl	%si, %edx
	cmpl	$3, %edx
	jb	.LBB6_162
# BB#157:                               # %if.then.16.i
	cmpl	$4, %edx
	ja	.LBB6_159
# BB#158:                               # %if.then.22.i
	movw	$4, 108(%r13)
	jmp	.LBB6_162
.LBB6_159:                              # %if.else.25.i
	cmpl	$8, %edx
	ja	.LBB6_161
# BB#160:                               # %if.then.31.i
	movw	$8, 108(%r13)
	jmp	.LBB6_162
.LBB6_161:                              # %if.else.34.i
	addl	$7, %esi
	andl	$65528, %esi            # imm = 0xFFF8
	movw	%si, 108(%r13)
.LBB6_162:                              # %if.end.44.i
	cmpl	$1, %eax
	movl	(%rcx), %eax
	jne	.LBB6_163
# BB#165:                               # %if.else.72.i
	leal	-1(%rax), %ecx
	testl	%eax, %eax
	cmovel	%eax, %ecx
	movl	%ecx, 116(%r13)
	movl	18560(%r13), %edx
	leal	-1(%rdx), %esi
	testl	%edx, %edx
	cmovel	%ecx, %esi
	cmovel	%eax, %edx
	testl	%eax, %eax
	movl	%esi, 112(%r13)
	movl	%edx, 120(%r13)
	je	.LBB6_167
# BB#166:                               # %if.then.113.i
	movl	%eax, 124(%r13)
	jmp	.LBB6_168
.LBB6_163:                              # %if.then.48.i
	testl	%eax, %eax
	movl	$255, %ecx
	cmovel	%eax, %ecx
	movl	%ecx, 116(%r13)
	movl	$255, 112(%r13)
	movl	$256, 120(%r13)         # imm = 0x100
	cmpl	$1, 100(%r13)
	jne	.LBB6_164
.LBB6_167:                              # %if.else.117.i
	movl	$0, 124(%r13)
	jmp	.LBB6_168
.LBB6_164:                              # %if.else.65.i
	incl	%ecx
	movl	%ecx, 124(%r13)
.LBB6_168:                              # %set_derived_colour_data.exit
	leaq	68(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	je	.LBB6_169
# BB#171:                               # %if.else.603
	cmovsl	%eax, %ebp
	jmp	.LBB6_172
.LBB6_169:                              # %if.then.590
	movzwl	108(%r13), %eax
	cmpl	%eax, 68(%rsp)
	je	.LBB6_172
# BB#170:                               # %if.then.595
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	68(%rsp), %edx
	movl	$.L.str.37, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%r12, %rcx
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$.L.str.36, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB6_172:                              # %if.end.608
	movl	$-1, 56(%rsp)
	leaq	40(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_read_requested_typed
	testl	%eax, %eax
	jne	.LBB6_174
# BB#173:                               # %if.then.613
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$1, 76(%rax)
.LBB6_174:                              # %if.end.614
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	testl	%eax, %eax
	js	.LBB6_177
# BB#175:                               # %lor.lhs.false.618
	testl	%ebp, %ebp
	js	.LBB6_178
# BB#176:                               # %lor.lhs.false.618
	testl	%eax, %eax
	jle	.LBB6_178
.LBB6_177:                              # %if.then.624
	movl	%eax, %ebp
.LBB6_178:                              # %if.end.625
	testl	%ebp, %ebp
	js	.LBB6_185
# BB#179:                               # %if.end.629
	cmpl	$0, 84(%r13)
	je	.LBB6_185
# BB#180:                               # %land.lhs.true.632
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, 832(%r13)
	jne	.LBB6_184
# BB#181:                               # %lor.lhs.false.636
	movl	16(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, 836(%r13)
	jne	.LBB6_184
# BB#182:                               # %lor.lhs.false.640
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	856(%r13), %xmm0
	jne	.LBB6_184
	jp	.LBB6_184
# BB#183:                               # %lor.lhs.false.646
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	860(%r13), %xmm0
	jne	.LBB6_184
	jnp	.LBB6_185
.LBB6_184:                              # %if.then.652
	movq	%r13, %rdi
	callq	gs_closedevice
.LBB6_185:                              # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_138:                              # %if.then.528
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.34, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	errprintf_nomem
	movq	(%r14), %rax
	movl	$-25, %ebp
	movl	$.L.str.17, %esi
	movl	$-25, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB6_141
.LBB6_24:                               # %sw.default
	movl	$.L.str.25, %edi
	movl	$.L.str.26, %esi
	movl	$964, %edx              # imm = 0x3C4
	movl	$.L__PRETTY_FUNCTION__.eprn_put_params, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	eprn_put_params, .Lfunc_end6-eprn_put_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gray"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"RGB"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CMY"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"CMY+K"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CMYK"
	.size	.L.str.4, 5

	.type	eprn_colour_model_list,@object # @eprn_colour_model_list
	.section	.rodata,"a",@progbits
	.globl	eprn_colour_model_list
	.align	16
eprn_colour_model_list:
	.quad	.L.str
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.4
	.long	4                       # 0x4
	.zero	4
	.zero	16
	.size	eprn_colour_model_list, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"? eprn: Memory allocation failure in eprn_get_int(): %s.\n"
	.size	.L.str.5, 58

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"BlackLevels"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CMYLevels"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"RGBLevels"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ColourModel"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ColorModel"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"CUPSAccounting"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"CUPSMessages"
	.size	.L.str.12, 13

	.type	intensity_rendering_list,@object # @intensity_rendering_list
	.section	.rodata,"a",@progbits
	.align	16
intensity_rendering_list:
	.quad	.L.str.39
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.41
	.long	2                       # 0x2
	.zero	4
	.zero	16
	.size	intensity_rendering_list, 64

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"IntensityRendering"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"LeadingEdge"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"MediaConfigurationFile"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"MediaPosition"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"PageCountFile"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ERROR: "
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"eprn_set_media_data"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s? eprn: Memory allocation failure from gs_malloc() in eprn_set_media_data().\n"
	.size	.L.str.21, 80

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"WARNING: "
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s? eprn: Unknown colour model: `"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"'.\n"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"0"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"./contrib/pcl3/eprn/eprnparm.c"
	.size	.L.str.26, 31

	.type	.L__PRETTY_FUNCTION__.eprn_put_params,@object # @__PRETTY_FUNCTION__.eprn_put_params
.L__PRETTY_FUNCTION__.eprn_put_params:
	.asciz	"int eprn_put_params(gx_device *, gs_param_list *)"
	.size	.L__PRETTY_FUNCTION__.eprn_put_params, 50

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s? eprn: The value for BlackLevels is outside the range permitted: %d.\n"
	.size	.L.str.27, 73

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s? eprn: The value for CMYLevels is outside the range permitted: %d.\n"
	.size	.L.str.28, 71

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"WARNING: ?-W eprn: Attempt to set CUPSAccounting from true to false.\n"
	.size	.L.str.29, 70

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s? eprn: Invalid method for IntensityRendering: `"
	.size	.L.str.30, 51

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s? eprn: LeadingEdge may only have values 0 to 3, not %d.\n"
	.size	.L.str.31, 60

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s?-W eprn: Ghostscript does not accept negative values (%d) for the\n%s    `MediaPosition' parameter.\n"
	.size	.L.str.32, 103

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"eprn_put_params"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s? eprn: Memory allocation failure from gs_malloc() in eprn_put_params().\n"
	.size	.L.str.34, 76

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s? eprn: The value for RGBLevels is outside the range permitted: %d.\n"
	.size	.L.str.35, 71

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"BitsPerPixel"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s? eprn: Attempt to set `BitsPerPixel' to a value (%d)\n%s  other than the one selected by the driver.\n"
	.size	.L.str.37, 104

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	".HWMargins"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"printer"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"halftones"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Floyd-Steinberg"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"r"
	.size	.L.str.42, 2

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%s? eprn: Error opening the media configuration file\n%s    `%s'\n%s  for reading: %s.\n"
	.size	.L.str.43, 86

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s? eprn: Exceeding line length %d in media configuration file\n%s  %s, line %d.\n"
	.size	.L.str.44, 81

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"unit"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"in"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"mm"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s? eprn: Memory allocation failure in eprn_read_media_data(): %s.\n"
	.size	.L.str.48, 68

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s? eprn: Unknown media name (%s) in media configuration file\n%s  %s, line %d.\n"
	.size	.L.str.49, 80

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s? eprn: Invalid substring \"Rotated\" in media name (%s)\n%s  in media configuration file %s, line %d.\n"
	.size	.L.str.50, 103

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%g %g %g %g%n"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s? eprn: Syntax error in media configuration file %s, line %d:\n%s    %s\n"
	.size	.L.str.52, 74

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s? eprn: Ghostscript does not support negative margins (line %d in the\n%s  media configuration file %s).\n"
	.size	.L.str.53, 107

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s?-W eprn: The media configuration file %s\n%s    contains a custom page size entry in line %d, but custom page sizes\n%s    are not supported by the %s.\n"
	.size	.L.str.54, 154

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%s? eprn: Unidentified system error while reading `%s'.\n"
	.size	.L.str.55, 57

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%s? eprn: The media configuration file %s\n%s  does not contain any media information.\n"
	.size	.L.str.56, 87

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"eprn_read_media_data"
	.size	.L.str.57, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%s? eprn: Memory allocation failure from gs_malloc() in eprn_read_media_data().\n"
	.size	.L.str.58, 81


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
