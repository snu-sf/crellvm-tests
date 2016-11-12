	.text
	.file	"zimage.bc"
	.globl	data_image_params
	.align	16, 0x90
	.type	data_image_params,@function
data_image_params:                      # @data_image_params
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movl	%r9d, %r15d
	movl	%r8d, %r13d
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %do.body
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	8(%rbx), %rax
	movl	$-7, %r14d
	testb	$32, (%rax)
	je	.LBB0_32
# BB#3:                                 # %do.end
	leaq	32(%rbp), %r9
	movl	$.L.str, %esi
	xorl	%edx, %edx
	movl	$4194303, %ecx          # imm = 0x3FFFFF
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#4:                                 # %if.end.11
	leaq	36(%rbp), %r9
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	movl	$4194303, %ecx          # imm = 0x3FFFFF
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#5:                                 # %if.end.16
	leaq	8(%rbp), %rcx
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	dict_matrix_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#6:                                 # %if.end.21
	movl	$.L.str.3, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	dict_bool_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#7:                                 # %if.end.26
	movl	112(%rsp), %ecx
	leaq	40(%rbp), %r9
	movl	$.L.str.4, %esi
	movl	$1, %edx
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#8:                                 # %if.end.31
	leaq	564(%rbp), %rcx
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_32
# BB#9:                                 # %if.end.36
	movl	128(%rsp), %eax
	testl	%eax, %eax
	je	.LBB0_13
# BB#10:                                # %if.then.38
	leaq	44(%rbp), %r14
	leaq	52(%rbp), %r8
	movl	$.L.str.6, %edx
	movl	$4, %ecx
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB0_12
# BB#11:                                # %if.end.51.thread
	movabsq	$4812096201845374976, %rax # imm = 0x42C8000000000000
	movq	%rax, 44(%rbp)
	movq	%r14, %rax
	jmp	.LBB0_14
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %r14d
.LBB0_32:                               # %cleanup.143
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_13:                               # %if.else.56
	leal	(%r15,%r15), %ecx
	addq	$44, %rbp
	movl	$0, 8(%rsp)
	movl	$-15, (%rsp)
	movl	$.L.str.6, %edx
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %r8
	callq	dict_float_array_check_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%rbp, %rax
	jns	.LBB0_14
	jmp	.LBB0_32
.LBB0_12:                               # %if.end.51
	movl	$0, 8(%rsp)
	movl	$-15, (%rsp)
	movl	$.L.str.6, %edx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %r8
	callq	dict_float_array_check_param
	movq	%r14, %rcx
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%rcx, %rax
	js	.LBB0_32
.LBB0_14:                               # %if.end.64
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rax, 1048(%rbp)
	leaq	48(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_15
# BB#17:                                # %if.end.76
	leaq	8(%rbp), %r13
	cmpl	$0, (%rbp)
	je	.LBB0_30
# BB#18:                                # %if.then.79
	movl	120(%rsp), %edx
	cmpl	$1, %edx
	movl	%r15d, %ebx
	sbbl	$-1, %ebx
	movq	48(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %r14d
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_32
# BB#19:                                # %if.end.90
	movslq	%ebx, %rcx
	movl	4(%rsi), %eax
	movl	$-15, %r14d
	cmpq	%rcx, %rax
	jne	.LBB0_32
# BB#20:                                # %for.cond.preheader
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB0_24
# BB#21:                                # %for.body.preheader
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	array_get
	cmpl	$1, %ebx
	je	.LBB0_24
# BB#22:                                # %for.body.for.body_crit_edge.preheader
	cmpl	$0, 120(%rsp)
	setne	%al
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	24(%rcx), %rbp
	movzbl	%al, %eax
	addl	%eax, %r15d
	movslq	%r15d, %r15
	movl	$1, %ebx
.LBB0_23:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	array_get
	incq	%rbx
	addq	$16, %rbp
	cmpq	%rbx, %r15
	jne	.LBB0_23
.LBB0_24:                               # %for.end
	movzbl	1(%r13), %eax
	cmpl	$18, %eax
	jne	.LBB0_31
# BB#25:                                # %if.then.108
	negl	28(%rsp)                # 4-byte Folded Spill
	sbbq	%rax, %rax
	movq	32(%rsp), %rdi          # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$2, %rdi
	jl	.LBB0_31
# BB#26:                                # %for.body.115.lr.ph
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	28(%rax), %rax
	movl	$1, %ecx
	movq	40(%rsp), %rsi          # 8-byte Reload
.LBB0_27:                               # %for.body.115
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rax), %edx
	cmpl	$18, %edx
	jne	.LBB0_29
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_27 Depth=1
	movl	(%rax), %edx
	cmpl	12(%rsi), %edx
	jne	.LBB0_32
.LBB0_29:                               # %for.inc.133
                                        #   in Loop: Header=BB0_27 Depth=1
	incq	%rcx
	addq	$16, %rax
	cmpq	%rdi, %rcx
	jl	.LBB0_27
	jmp	.LBB0_31
.LBB0_15:                               # %if.then.70
	movl	$1, %r14d
	testl	%r13d, %r13d
	je	.LBB0_32
# BB#16:                                # %if.then.72
	testl	%eax, %eax
	movl	$-15, %r14d
	cmovsl	%eax, %r14d
	jmp	.LBB0_32
.LBB0_30:                               # %if.else.139
	movq	48(%rsp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%r13)
.LBB0_31:                               # %cleanup.143
	xorl	%r14d, %r14d
	jmp	.LBB0_32
.Lfunc_end0:
	.size	data_image_params, .Lfunc_end0-data_image_params
	.cfi_endproc

	.globl	pixel_image_params
	.align	16, 0x90
	.type	pixel_image_params,@function
pixel_image_params:                     # @pixel_image_params
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
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
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
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%r8d, %r13d
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	96(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_color_space_num_components
	movl	$-15, %ecx
	testl	%eax, %eax
	jle	.LBB1_4
# BB#1:                                 # %if.end
	movq	%r14, 576(%rbx)
	movq	64(%r14), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movl	4(%rdx), %ecx
.LBB1_3:                                # %if.end.7
	movq	8(%rbp), %rdi
	movl	%ecx, 16(%rsp)
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, %r8d
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movl	%eax, %r9d
	callq	data_image_params
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB1_4
# BB#5:                                 # %if.end.11
	cmpl	$0, (%r12)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 568(%rbx)
	addq	$572, %rbx              # imm = 0x23C
	movl	$.L.str.8, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	dict_bool_param         # TAILCALL
.LBB1_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pixel_image_params, .Lfunc_end1-pixel_image_params
	.cfi_endproc

	.globl	zimage_setup
	.align	16, 0x90
	.type	zimage_setup,@function
zimage_setup:                           # @zimage_setup
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
	subq	$40, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 96
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
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	leaq	32(%rsp), %rax
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gs_image_begin_typed
	testl	%eax, %eax
	js	.LBB2_38
# BB#1:                                 # %if.end
	movq	32(%rsp), %r11
	movslq	44(%r11), %r13
	leaq	520(%rbx), %rdi
	movq	520(%rbx), %r8
	movq	536(%rbx), %rax
	leaq	7(%r13,%r13), %rsi
	movq	%rsi, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	cmpq	%rax, %r8
	jbe	.LBB2_4
# BB#2:                                 # %if.then.i
	movq	%rdi, %r14
	movq	%r11, %rbp
	callq	ref_stack_extend
	movq	%rbp, %r11
	testl	%eax, %eax
	js	.LBB2_38
# BB#3:                                 # %if.then.if.end.9_crit_edge.i
	movq	%r14, %rdi
	movq	(%rdi), %r8
.LBB2_4:                                # %if.end.9.i
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r13, 40(%r8)
	movw	$2816, 32(%r8)          # imm = 0xB00
	movl	$1, %r12d
	testl	%r13d, %r13d
	jle	.LBB2_24
# BB#5:                                 # %for.body.lr.ph.i
	leaq	8(%r15), %rdi
	movl	$1, %r12d
	xorl	%edx, %edx
	movq	%r13, %rax
	movq	%r15, %r14
	jmp	.LBB2_6
	.align	16, 0x90
.LBB2_23:                               # %for.inc.130.for.body_crit_edge.i
                                        #   in Loop: Header=BB2_6 Depth=1
	addq	$16, %r14
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r8
	movq	40(%r8), %rax
.LBB2_6:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
	movq	%rdx, %rcx
	notq	%rcx
	addq	%rax, %rcx
	shlq	$5, %rcx
	leaq	48(%r8,%rcx), %rsi
	movq	$1, 72(%r8,%rcx)
	movw	$2816, 64(%r8,%rcx)     # imm = 0xB00
	movzbl	1(%r14), %ecx
	cmpl	$18, %ecx
	je	.LBB2_15
# BB#7:                                 # %for.body.i
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	$3, %ecx
	jne	.LBB2_17
# BB#8:                                 # %sw.bb.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	$-20, %eax
	cmpl	$2, 80(%rbx)
	jl	.LBB2_38
# BB#9:                                 # %for.cond.47.preheader.i
                                        #   in Loop: Header=BB2_6 Depth=1
	xorl	%r12d, %r12d
	testq	%rdx, %rdx
	jle	.LBB2_15
# BB#10:                                # %for.body.50.lr.ph.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, %r10
	leaq	48(%r8), %r9
	movq	8(%r14), %rbx
	movq	%rdi, %rbp
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_11:                               # %for.body.50.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, (%rbp)
	je	.LBB2_12
# BB#13:                                # %for.inc.i
                                        #   in Loop: Header=BB2_11 Depth=2
	incq	%rax
	addq	$16, %rbp
	cmpq	%rdx, %rax
	jl	.LBB2_11
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_17:                               # %sw.default.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movzwl	(%r15), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB2_18
# BB#19:                                # %do.body.115.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	xorl	%r12d, %r12d
	cmpl	$1216, %eax             # imm = 0x4C0
	je	.LBB2_22
	jmp	.LBB2_20
.LBB2_12:                               # %if.then.57.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	%eax, %ecx
	negl	%ecx
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rsi)
	movw	$2816, 16(%rsi)         # imm = 0xB00
	notq	%rax
	addq	40(%r8), %rax
	shlq	$5, %rax
	incq	24(%r9,%rax)
	movb	1(%r14), %cl
.LBB2_14:                               #   in Loop: Header=BB2_6 Depth=1
	movq	%r10, %rbx
.LBB2_15:                               # %sw.bb.86.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movzbl	1(%r15), %eax
	movzbl	%cl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB2_16
# BB#21:                                # %do.body.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	$-7, %eax
	testb	$32, (%r14)
	je	.LBB2_38
.LBB2_22:                               # %for.inc.130.i
                                        #   in Loop: Header=BB2_6 Depth=1
	movups	(%r14), %xmm0
	movups	%xmm0, (%rsi)
	incq	%rdx
	cmpq	%r13, %rdx
	jl	.LBB2_23
.LBB2_24:                               # %for.end.132.i
	movq	48(%rbx), %rdi
	movl	$.L.str.14, %esi
	movq	%r11, %rbp
	callq	gs_image_enum_alloc
	movq	%rbp, %rsi
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB2_38
# BB#25:                                # %if.end.137.i
	movq	(%rbx), %rcx
	movq	%r14, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rsi, %rbp
	callq	gs_image_enum_init
	testl	%eax, %eax
	je	.LBB2_26
# BB#29:                                # %if.then.143.i
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	%eax, %ebp
	callq	gs_image_cleanup_and_free_enum
	movl	%ebp, %edx
	testl	%edx, %edx
	jns	.LBB2_30
# BB#39:
	xorl	%ecx, %ecx
	jmp	.LBB2_31
.LBB2_16:                               # %if.then.97.i
	xorl	%esi, %esi
	movq	%r11, %rdi
	callq	gx_image_end
	movl	$-20, %eax
	jmp	.LBB2_38
.LBB2_26:                               # %lor.lhs.false.i
	testl	%r12d, %r12d
	je	.LBB2_32
# BB#27:                                # %lor.lhs.false.i
	movl	40(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB2_32
# BB#28:                                # %if.then.143.thread.i
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	%eax, %ebp
	callq	gs_image_cleanup_and_free_enum
	movl	%ebp, %edx
.LBB2_30:
	movl	12(%rsp), %ecx          # 4-byte Reload
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	movb	$1, %cl
.LBB2_31:                               # %if.end.154.i
	testl	%eax, %eax
	cmovnsl	%edx, %eax
	testb	%cl, %cl
	cmovel	%edx, %eax
	jmp	.LBB2_38
.LBB2_32:                               # %if.end.163.i
	leaq	(%r13,%r13), %rax
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	$image_cleanup, 24(%rcx)
	movq	(%rsi), %rcx
	movw	$3712, (%rcx)           # imm = 0xE80
	movl	$0, 4(%rcx)
	addl	$4, %eax
	cltq
	shlq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, (%rsi)
	movq	$0, -24(%rcx,%rax)
	movw	$2816, -32(%rcx,%rax)   # imm = 0xB00
	movq	%r13, -8(%rcx,%rax)
	movw	$2816, -16(%rcx,%rax)   # imm = 0xB00
	movq	%r14, 8(%rcx,%rax)
	movq	(%rsi), %rax
	movw	$2060, (%rax)           # imm = 0x80C
	movzbl	1(%r15), %ecx
	cmpl	$18, %ecx
	jne	.LBB2_33
# BB#35:                                # %sw.bb.245.i
	leaq	16(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	$image_string_continue, 24(%rax)
	jmp	.LBB2_37
.LBB2_18:                               # %if.then.111.i
	xorl	%esi, %esi
	movq	%r11, %rdi
	callq	gx_image_end
	movl	$.L.str.7, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	gs_errorinfo_put_pair
	movl	$-20, %eax
	jmp	.LBB2_38
.LBB2_20:                               # %if.then.122.i
	movq	%r14, %rdi
	callq	check_proc_failed
	jmp	.LBB2_38
.LBB2_33:                               # %if.end.163.i
	cmpl	$3, %ecx
	jne	.LBB2_36
# BB#34:                                # %sw.bb.225.i
	leaq	16(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	$image_file_continue, 24(%rax)
	jmp	.LBB2_37
.LBB2_36:                               # %sw.default.265.i
	leaq	16(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	$image_proc_process, 24(%rax)
.LBB2_37:                               # %sw.epilog.285.i
	movq	(%rsi), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movslq	12(%rsp), %rax          # 4-byte Folded Reload
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	movl	$5, %eax
.LBB2_38:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zimage_setup, .Lfunc_end2-zimage_setup
	.cfi_endproc

	.globl	image1_setup
	.align	16, 0x90
	.type	image1_setup,@function
image1_setup:                           # @image1_setup
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
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
	subq	$1680, %rsp             # imm = 0x690
.Ltmp44:
	.cfi_def_cfa_offset 1728
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	624(%r12), %r15
	movq	(%r12), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rbp
	movq	8(%r12), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	%rbp, %rdi
	callq	gs_color_space_num_components
	testl	%eax, %eax
	jg	.LBB3_3
# BB#2:                                 # %if.then
	movq	40(%rbp), %rax
	testq	%rax, %rax
	cmovneq	%rax, %rbp
.LBB3_3:                                # %if.end.5
	leaq	1080(%rsp), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	gs_image_t_init_adjust
	movl	$16, %ebx
	cmpl	$1, 80(%r12)
	jg	.LBB3_5
# BB#4:                                 # %select.mid
	movl	$8, %ebx
.LBB3_5:                                # %select.end
	movq	%rbp, %rdi
	callq	gs_color_space_num_components
	movl	$-15, %ecx
	testl	%eax, %eax
	jle	.LBB3_18
# BB#6:                                 # %if.end.i
	movq	%rbp, 1656(%rsp)
	movq	64(%rbp), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.LBB3_8
# BB#7:                                 # %if.then.3.i
	movl	4(%rdx), %ecx
.LBB3_8:                                # %if.end.7.i
	movq	8(%r12), %rdi
	movl	%ecx, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%ebx, (%rsp)
	leaq	1080(%rsp), %rdx
	leaq	24(%rsp), %rcx
	movl	$1, %r8d
	movq	%r15, %rsi
	movl	%eax, %r9d
	callq	data_image_params
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_18
# BB#9:                                 # %pixel_image_params.exit
	cmpl	$0, 24(%rsp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 1648(%rsp)
	leaq	1652(%rsp), %rcx
	movl	$.L.str.8, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	dict_bool_param
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB3_18
# BB#10:                                # %if.end.10
	testl	%r14d, %r14d
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, 1672(%rsp)
	movq	1112(%rsp), %rax
	cmpl	$1, %eax
	jne	.LBB3_17
# BB#11:                                # %land.lhs.true.14
	shrq	$32, %rax
	cmpl	$2, %eax
	jl	.LBB3_17
# BB#12:                                # %land.lhs.true.16
	cmpl	$8, 1120(%rsp)
	jne	.LBB3_17
# BB#13:                                # %land.lhs.true.18
	movss	1092(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_17
	jp	.LBB3_17
# BB#14:                                # %land.lhs.true.21
	movss	1096(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_17
	jp	.LBB3_17
# BB#15:                                # %land.lhs.true.26
	movss	1104(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB3_17
	jp	.LBB3_17
# BB#16:                                # %if.then.31
	movl	%eax, 1112(%rsp)
	movl	$1, 1116(%rsp)
	movl	1088(%rsp), %eax
	movl	%eax, 1092(%rsp)
	movl	1100(%rsp), %eax
	movl	%eax, 1096(%rsp)
	movl	$0, 1088(%rsp)
	movl	$0, 1100(%rsp)
	movl	1108(%rsp), %eax
	movl	%eax, 1104(%rsp)
	movss	%xmm0, 1108(%rsp)
.LBB3_17:                               # %if.end.53
	leaq	32(%rsp), %rdx
	movl	1652(%rsp), %ecx
	leaq	1080(%rsp), %rsi
	movl	$1, %r8d
	movq	%r12, %rdi
	callq	zimage_setup
	movl	%eax, %ecx
.LBB3_18:                               # %cleanup
	movl	%ecx, %eax
	addq	$1680, %rsp             # imm = 0x690
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image1_setup, .Lfunc_end3-image1_setup
	.cfi_endproc

	.align	16, 0x90
	.type	zimage1,@function
zimage1:                                # @zimage1
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	image1_setup            # TAILCALL
.Lfunc_end4:
	.size	zimage1, .Lfunc_end4-zimage1
	.cfi_endproc

	.align	16, 0x90
	.type	zimagemask1,@function
zimagemask1:                            # @zimagemask1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$1680, %rsp             # imm = 0x690
.Ltmp53:
	.cfi_def_cfa_offset 1712
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_incachedevice
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	1080(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gs_image_t_init_mask_adjust
	movq	8(%rbx), %rdi
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$1, (%rsp)
	leaq	24(%rsp), %rcx
	movl	$1, %r8d
	movl	$1, %r9d
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	data_image_params
	testl	%eax, %eax
	js	.LBB5_2
# BB#1:                                 # %if.end
	leaq	32(%rsp), %rdx
	leaq	1080(%rsp), %rsi
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	zimage_setup
.LBB5_2:                                # %cleanup
	addq	$1680, %rsp             # imm = 0x690
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zimagemask1, .Lfunc_end5-zimagemask1
	.cfi_endproc

	.align	16, 0x90
	.type	image_proc_continue,@function
image_proc_continue:                    # @image_proc_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$1304, %rsp             # imm = 0x518
.Ltmp63:
	.cfi_def_cfa_offset 1360
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	520(%r15), %rcx
	movq	624(%r15), %r13
	movq	-8(%rcx), %r14
	movzwl	(%r13), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB6_1
# BB#4:                                 # %if.end.34
	movq	8(%rcx), %rbx
	movq	-24(%rcx), %rbp
	movl	4(%r13), %eax
	testl	%eax, %eax
	jne	.LBB6_6
# BB#5:                                 # %land.lhs.true
	movl	$1, %r12d
	cmpq	$0, -40(%rcx)
	je	.LBB6_16
.LBB6_6:                                # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB6_13
# BB#7:                                 # %for.body.preheader
	leal	-1(%r14), %edx
	xorl	%ecx, %ecx
	testb	$7, %r14b
	je	.LBB6_10
# BB#8:                                 # %for.body.prol.preheader
	leaq	8(%rsp), %rsi
	movl	%r14d, %edi
	andl	$7, %edi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_9:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi)
	incq	%rcx
	addq	$16, %rsi
	cmpl	%ecx, %edi
	jne	.LBB6_9
.LBB6_10:                               # %for.body.preheader.split
	cmpl	$7, %edx
	jb	.LBB6_13
# BB#11:                                # %for.body.preheader.split.split
	movl	%r14d, %edx
	subl	%ecx, %edx
	shlq	$4, %rcx
	leaq	(%rsp), %rsi
	leaq	120(%rcx,%rsi), %rcx
	.align	16, 0x90
.LBB6_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rcx)
	movl	$0, -96(%rcx)
	movl	$0, -80(%rcx)
	movl	$0, -64(%rcx)
	movl	$0, -48(%rcx)
	movl	$0, -32(%rcx)
	movl	$0, -16(%rcx)
	movl	$0, (%rcx)
	subq	$-128, %rcx
	addl	$-8, %edx
	jne	.LBB6_12
.LBB6_13:                               # %for.end
	movq	8(%r13), %rcx
	movq	%rbp, %rdx
	shlq	$32, %rdx
	sarq	$28, %rdx
	movq	%rcx, (%rsp,%rdx)
	movl	%eax, 8(%rsp,%rdx)
	leaq	(%rsp), %rsi
	leaq	1040(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gs_image_next_planes
	movl	%eax, %r12d
	cmpl	$-103, %r12d
	jne	.LBB6_14
# BB#24:                                # %if.then.63
	movslq	%ebp, %rax
	movl	1040(%rsp,%rax,4), %eax
	addq	%rax, 8(%r13)
	subl	%eax, 4(%r13)
	movq	520(%r15), %rax
	movq	$0, -40(%rax)
	movl	$-103, %eax
	jmp	.LBB6_23
.LBB6_1:                                # %if.then
	movl	$-17, %eax
	cmpq	632(%r15), %r13
	jb	.LBB6_23
# BB#2:                                 # %if.end
	addq	%r14, %r14
	movq	$-5, %rax
	subq	%r14, %rax
	shlq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 520(%r15)
	movq	40(%rcx,%rax), %rax
	shlq	$5, %rax
	movq	88(%rax,%rdx), %rdi
	movq	(%r15), %rsi
	callq	gs_image_cleanup_and_free_enum
	movzbl	1(%r13), %ecx
	movl	$-20, %eax
	cmpl	$18, %ecx
	jne	.LBB6_23
# BB#3:                                 # %select.mid
	movl	$-7, %eax
	jmp	.LBB6_23
.LBB6_14:                               # %for.end
	testl	%r12d, %r12d
	jne	.LBB6_15
# BB#17:                                # %if.end.99
	addq	$-16, 624(%r15)
	movq	%rbx, %rdi
	callq	gs_image_planes_wanted
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_18:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebp
	cmpl	%r14d, %ebp
	cmovel	%ecx, %ebp
	movslq	%ebp, %rbx
	cmpb	$0, (%rax,%rbx)
	je	.LBB6_18
# BB#19:                                # %do.end
	movq	520(%r15), %rax
	movq	%rbx, -24(%rax)
	movq	8(%rax), %rdi
	callq	gs_image_planes_wanted
	movq	520(%r15), %rcx
	movl	-8(%rcx), %edx
	movq	$0, -40(%rcx)
	cmpb	$0, (%rax,%rbx)
	jne	.LBB6_22
# BB#20:                                # %while.body.preheader.i
	xorl	%esi, %esi
	.align	16, 0x90
.LBB6_21:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebp
	cmpl	%edx, %ebp
	cmovel	%esi, %ebp
	movslq	%ebp, %rdi
	movq	%rdi, -24(%rcx)
	cmpb	$0, (%rax,%rdi)
	je	.LBB6_21
.LBB6_22:                               # %image_proc_process.exit
	addl	%ebp, %ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	negq	%rax
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r15)
	movq	$image_proc_continue, 24(%rcx)
	movq	520(%r15), %rdx
	movw	$3968, (%rdx)           # imm = 0xF80
	movl	$0, 4(%rdx)
	leaq	16(%rdx), %rsi
	movq	%rsi, 520(%r15)
	movups	-64(%rcx,%rax), %xmm0
	movups	%xmm0, 16(%rdx)
	movl	$5, %eax
	jmp	.LBB6_23
.LBB6_15:                               # %for.end.if.then.83_crit_edge
	movq	520(%r15), %rcx
	movq	624(%r15), %r13
	movq	-8(%rcx), %r14
.LBB6_16:                               # %if.then.83
	addq	%r14, %r14
	movq	$-5, %rax
	subq	%r14, %rax
	shlq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 520(%r15)
	addq	$-16, %r13
	movq	%r13, 624(%r15)
	movq	40(%rcx,%rax), %rax
	shlq	$5, %rax
	movq	88(%rax,%rdx), %rdi
	movq	(%r15), %rsi
	callq	gs_image_cleanup_and_free_enum
	testl	%r12d, %r12d
	movl	$14, %eax
	cmovsl	%r12d, %eax
.LBB6_23:                               # %cleanup
	addq	$1304, %rsp             # imm = 0x518
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_proc_continue, .Lfunc_end6-image_proc_continue
	.cfi_endproc

	.align	16, 0x90
	.type	image_file_continue,@function
image_file_continue:                    # @image_file_continue
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
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$1368, %rsp             # imm = 0x558
.Ltmp76:
	.cfi_def_cfa_offset 1424
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	520(%r13), %rax
	movq	-8(%rax), %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	%ebp, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_28:                               # %cleanup.cont.103
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, %ebx
	movl	36(%rsp), %ecx          # 4-byte Reload
	cmpl	%ebp, %ecx
	jge	.LBB7_32
# BB#29:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB7_1 Depth=1
	testl	%ecx, %ecx
	je	.LBB7_31
# BB#30:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB7_1 Depth=1
	testl	%edx, %edx
	je	.LBB7_32
.LBB7_31:                               # %if.end.110
                                        #   in Loop: Header=BB7_1 Depth=1
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.LBB7_1
	jmp	.LBB7_32
.LBB7_22:                               # %for.body.79.prol
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	48(%rsp), %edx
	movq	-56(%rcx), %rsi
	addq	%rdx, 112(%rsi)
	addq	$-96, %rcx
	movl	$1, %edi
.LBB7_23:                               # %for.body.79.lr.ph.split
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$1, %ebp
	je	.LBB7_27
# BB#24:                                # %for.body.79.lr.ph.split.split
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%ebp, %esi
	movq	%rbp, %r8
	subl	%edi, %esi
	leaq	52(%rsp), %rbp
	leaq	(%rbp,%rdi,4), %rdi
	addq	$8, %rcx
	.align	16, 0x90
.LBB7_25:                               # %for.body.79
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rdi), %ebp
	movq	(%rcx), %rbx
	addq	%rbp, 112(%rbx)
	leal	(%rdx,%rbp), %edx
	movl	(%rdi), %ebp
	movq	-32(%rcx), %rbx
	addq	%rbp, 112(%rbx)
	leal	(%rdx,%rbp), %edx
	addq	$8, %rdi
	addq	$-64, %rcx
	addl	$-2, %esi
	jne	.LBB7_25
# BB#26:                                #   in Loop: Header=BB7_1 Depth=1
	movq	%r8, %rbp
	jmp	.LBB7_27
	.align	16, 0x90
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #       Child Loop BB7_7 Depth 3
                                        #     Child Loop BB7_25 Depth 2
	testl	%ebp, %ebp
	jle	.LBB7_2
# BB#3:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	520(%r13), %rbx
	addq	$-64, %rbx
	xorl	%r14d, %r14d
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
.LBB7_4:                                # %for.body
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_7 Depth 3
	movl	24(%rbx), %r12d
	movq	8(%rbx), %rbp
	testl	%r12d, %r12d
	jg	.LBB7_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	520(%r13), %rax
	negl	%r12d
	addl	%r12d, %r12d
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movl	-40(%rax), %r12d
.LBB7_6:                                # %while.cond.preheader
                                        #   in Loop: Header=BB7_4 Depth=2
	leal	-1(%r12), %r15d
	jmp	.LBB7_7
	.align	16, 0x90
.LBB7_20:                               # %cleanup.thread69
                                        #   in Loop: Header=BB7_7 Depth=3
	movq	%rbp, %rdi
	callq	s_process_read_buf
.LBB7_7:                                # %while.cond
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	120(%rbp), %eax
	movq	112(%rbp), %rdi
	subl	%edi, %eax
	movswl	152(%rbp), %esi
	xorl	%edx, %edx
	cmpl	$-3, %esi
	ja	.LBB7_9
# BB#8:                                 # %cond.false
                                        #   in Loop: Header=BB7_7 Depth=3
	movq	256(%rbp), %rcx
	movl	24(%rcx), %edx
.LBB7_9:                                # %cond.end
                                        #   in Loop: Header=BB7_7 Depth=3
	leal	(%r15,%rdx), %ecx
	cmpl	%ecx, %eax
	ja	.LBB7_14
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB7_7 Depth=3
	testl	%esi, %esi
	je	.LBB7_20
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB7_4 Depth=2
	leal	4(%rsi), %ecx
	cmpl	$2, %ecx
	jb	.LBB7_21
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	$-12, %ecx
	cmpl	$-1, %esi
	jne	.LBB7_33
# BB#13:                                # %cleanup
                                        #   in Loop: Header=BB7_4 Depth=2
	incl	36(%rsp)                # 4-byte Folded Spill
	.align	16, 0x90
.LBB7_14:                               # %while.end
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	%eax, %ecx
	subl	%edx, %ecx
	jb	.LBB7_16
# BB#15:                                # %if.then.48
                                        #   in Loop: Header=BB7_4 Depth=2
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r12d
.LBB7_16:                               # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=2
	incq	%rdi
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rdi, 320(%rsp,%rcx)
	movl	%eax, 328(%rsp,%rcx)
	incq	%r14
	addq	$-32, %rbx
	cmpq	40(%rsp), %r14          # 8-byte Folded Reload
	jl	.LBB7_4
# BB#17:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	leaq	320(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	gs_image_next_planes
	xorl	%edx, %edx
	movq	16(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	jle	.LBB7_27
# BB#18:                                # %for.body.79.lr.ph
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	520(%r13), %rcx
	xorl	%edi, %edi
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB7_22
# BB#19:                                #   in Loop: Header=BB7_1 Depth=1
	addq	$-64, %rcx
	xorl	%edx, %edx
	jmp	.LBB7_23
	.align	16, 0x90
.LBB7_2:                                # %for.end.thread
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	leaq	320(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	gs_image_next_planes
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	xorl	%edx, %edx
.LBB7_27:                               # %for.end.95
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$-103, %eax
	movl	$-103, %ecx
	jne	.LBB7_28
	jmp	.LBB7_33
.LBB7_21:                               # %sw.bb.44
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$image_file_continue, %r9d
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	s_handle_read_exception
	movl	%eax, %ecx
.LBB7_33:                               # %cleanup.144
	movl	%ecx, %eax
	addq	$1368, %rsp             # imm = 0x558
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_32:                               # %if.then.112
	movq	520(%r13), %rax
	movq	-8(%rax), %rcx
	addq	%rcx, %rcx
	movq	$-5, %rdx
	subq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, 520(%r13)
	movq	40(%rax,%rdx), %rax
	shlq	$5, %rax
	movq	88(%rax,%rcx), %rdi
	movq	(%r13), %rsi
	callq	gs_image_cleanup_and_free_enum
	testl	%eax, %eax
	movl	$14, %ecx
	cmovsl	%eax, %ecx
	testl	%ebx, %ebx
	cmovsl	%ebx, %ecx
	jmp	.LBB7_33
.Lfunc_end7:
	.size	image_file_continue, .Lfunc_end7-image_file_continue
	.cfi_endproc

	.align	16, 0x90
	.type	image_string_continue,@function
image_string_continue:                  # @image_string_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$1320, %rsp             # imm = 0x528
.Ltmp89:
	.cfi_def_cfa_offset 1376
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	-8(%rax), %r15
	movq	8(%rax), %r14
	movq	%r15, %rdx
	shlq	$32, %rdx
	sarq	$28, %rdx
	leaq	272(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	leaq	(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gs_image_next_planes
	movl	%eax, %ebp
	movl	$-103, %r13d
	cmpl	$-103, %ebp
	je	.LBB8_11
# BB#1:                                 # %stop_now.preheader.lr.ph
	movslq	%r15d, %r12
.LBB8_3:                                # %stop_now.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	testl	%ebp, %ebp
	jne	.LBB8_9
# BB#4:                                 # %for.cond.20.preheader.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	testl	%r15d, %r15d
	movl	$0, %eax
	movl	$0, %ecx
	jle	.LBB8_2
	.align	16, 0x90
.LBB8_5:                                # %for.body
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 280(%rsp,%rax,8)
	jne	.LBB8_8
# BB#6:                                 # %if.then.25
                                        #   in Loop: Header=BB8_5 Depth=2
	movq	520(%rbx), %rdx
	movslq	%eax, %rdi
	shlq	$4, %rdi
	movq	%rdi, %rsi
	negq	%rsi
	movl	-60(%rdx,%rsi), %esi
	movl	$1, %ebp
	testl	%esi, %esi
	je	.LBB8_10
# BB#7:                                 # %cleanup.thread
                                        #   in Loop: Header=BB8_5 Depth=2
	leaq	(%rax,%rax), %rbp
	subq	%rdi, %rdx
	addq	$-64, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 272(%rsp,%rax,8)
	movl	%esi, 280(%rsp,%rbp,4)
.LBB8_8:                                # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=2
	incq	%rcx
	addq	$2, %rax
	cmpq	%r12, %rcx
	jl	.LBB8_5
.LBB8_2:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%r14, %rdi
	leaq	272(%rsp), %rsi
	leaq	(%rsp), %rdx
	callq	gs_image_next_planes
	movl	%eax, %ebp
	cmpl	$-103, %ebp
	jne	.LBB8_3
	jmp	.LBB8_11
.LBB8_9:                                # %stop_now.preheader.if.then.10_crit_edge
	movq	520(%rbx), %rdx
.LBB8_10:                               # %if.then.10
	leal	5(%r15,%r15), %eax
	cltq
	shlq	$4, %rax
	subq	%rax, %rdx
	movq	%rdx, 520(%rbx)
	movq	40(%rdx), %rax
	shlq	$5, %rax
	movq	88(%rax,%rdx), %rdi
	movq	(%rbx), %rsi
	callq	gs_image_cleanup_and_free_enum
	testl	%ebp, %ebp
	movl	$14, %r13d
	cmovsl	%ebp, %r13d
.LBB8_11:                               # %cleanup.51
	movl	%r13d, %eax
	addq	$1320, %rsp             # imm = 0x528
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	image_string_continue, .Lfunc_end8-image_string_continue
	.cfi_endproc

	.align	16, 0x90
	.type	image_cleanup,@function
image_cleanup:                          # @image_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movq	40(%rax), %rcx
	shlq	$5, %rcx
	movq	88(%rcx,%rax), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	jmp	gs_image_cleanup_and_free_enum # TAILCALL
.Lfunc_end9:
	.size	image_cleanup, .Lfunc_end9-image_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	image_proc_process,@function
image_proc_process:                     # @image_proc_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp98:
	.cfi_def_cfa_offset 32
.Ltmp99:
	.cfi_offset %rbx, -24
.Ltmp100:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	520(%r14), %rax
	movq	-24(%rax), %rbx
	movq	8(%rax), %rdi
	callq	gs_image_planes_wanted
	movq	520(%r14), %rcx
	movl	-8(%rcx), %edx
	movq	$0, -40(%rcx)
	movslq	%ebx, %rsi
	cmpb	$0, (%rax,%rsi)
	jne	.LBB10_3
# BB#1:                                 # %while.body.preheader
	xorl	%esi, %esi
	.align	16, 0x90
.LBB10_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebx
	cmpl	%edx, %ebx
	cmovel	%esi, %ebx
	movslq	%ebx, %rdi
	movq	%rdi, -24(%rcx)
	cmpb	$0, (%rax,%rdi)
	je	.LBB10_2
.LBB10_3:                               # %while.end
	addl	%ebx, %ebx
	movslq	%ebx, %rax
	shlq	$4, %rax
	negq	%rax
	leaq	16(%rcx), %rdx
	movq	%rdx, 520(%r14)
	movq	$image_proc_continue, 24(%rcx)
	movq	520(%r14), %rdx
	movw	$3968, (%rdx)           # imm = 0xF80
	movl	$0, 4(%rdx)
	leaq	16(%rdx), %rsi
	movq	%rsi, 520(%r14)
	movups	-64(%rcx,%rax), %xmm0
	movups	%xmm0, 16(%rdx)
	movl	$5, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	image_proc_process, .Lfunc_end10-image_proc_process
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Width"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Height"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ImageMatrix"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"MultipleDataSources"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"BitsPerComponent"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Interpolate"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Decode"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata,"a",@progbits
.L.str.7:
	.asciz	"DataSource"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"CombineWithColor"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.image1"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1.imagemask1"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1%image_proc_continue"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0%image_file_continue"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0%image_string_continue"
	.size	.L.str.13, 24

	.type	zimage_op_defs,@object  # @zimage_op_defs
	.section	.rodata,"a",@progbits
	.globl	zimage_op_defs
	.align	16
zimage_op_defs:
	.quad	.L.str.9
	.quad	zimage1
	.quad	.L.str.10
	.quad	zimagemask1
	.quad	.L.str.11
	.quad	image_proc_continue
	.quad	.L.str.12
	.quad	image_file_continue
	.quad	.L.str.13
	.quad	image_string_continue
	.zero	16
	.size	zimage_op_defs, 96

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"image_setup"
	.size	.L.str.14, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
