	.text
	.file	"gdevpdfc.bc"
	.globl	pdf_finish_cie_space
	.align	16, 0x90
	.type	pdf_finish_cie_space,@function
pdf_finish_cie_space:                   # @pdf_finish_cie_space
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	32(%r15), %rdi
	movl	$.L.str.47, %esi
	callq	cos_array_alloc
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB0_15
# BB#1:                                 # %if.end.i
	movss	104(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_4
# BB#2:                                 # %if.end.i.24
	movss	108(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_4
# BB#3:                                 # %cos_array_add_vector3.exit
	movss	112(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_4
# BB#5:                                 # %cos_dict_put_c_key_vector3.exit
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_15
# BB#6:                                 # %if.end
	movss	116(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_9
	jp	.LBB0_9
# BB#7:                                 # %lor.lhs.false
	movss	120(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_9
	jp	.LBB0_9
# BB#8:                                 # %lor.lhs.false.6
	movss	124(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_9
	jnp	.LBB0_16
.LBB0_9:                                # %if.then.10
	movq	32(%r15), %rdi
	movl	$.L.str.47, %esi
	callq	cos_array_alloc
	movq	%rax, %r12
	testq	%r12, %r12
	movl	$-25, %ebp
	je	.LBB0_15
# BB#10:                                # %if.end.i.16
	movss	116(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_13
# BB#11:                                # %if.end.i.33
	movss	120(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_13
# BB#12:                                # %cos_array_add_vector3.exit39
	movss	124(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_13
# BB#14:                                # %cos_dict_put_c_key_vector3.exit21
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_15
.LBB0_16:                               # %if.end.17
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cos_array_add_object    # TAILCALL
.LBB0_4:                                # %if.then.3.i
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	cos_free
.LBB0_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_13:                               # %if.then.3.i.17
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	cos_free
	jmp	.LBB0_15
.Lfunc_end0:
	.size	pdf_finish_cie_space, .Lfunc_end0-pdf_finish_cie_space
	.cfi_endproc

	.globl	pdf_cspace_init_Device
	.align	16, 0x90
	.type	pdf_cspace_init_Device,@function
pdf_cspace_init_Device:                 # @pdf_cspace_init_Device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cmpl	$4, %edx
	je	.LBB1_5
# BB#1:                                 # %entry
	cmpl	$3, %edx
	jne	.LBB1_2
# BB#4:                                 # %sw.bb.1
	callq	gs_cspace_new_DeviceRGB
	jmp	.LBB1_6
.LBB1_5:                                # %sw.bb.3
	callq	gs_cspace_new_DeviceCMYK
	jmp	.LBB1_6
.LBB1_2:                                # %entry
	movl	$-15, %eax
	cmpl	$1, %edx
	jne	.LBB1_7
# BB#3:                                 # %sw.bb
	callq	gs_cspace_new_DeviceGray
.LBB1_6:                                # %return
	movq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB1_7:                                # %return
	popq	%rbx
	retq
.Lfunc_end1:
	.size	pdf_cspace_init_Device, .Lfunc_end1-pdf_cspace_init_Device
	.cfi_endproc

	.globl	pdf_delete_sampled_base_space_function
	.align	16, 0x90
	.type	pdf_delete_sampled_base_space_function,@function
pdf_delete_sampled_base_space_function: # @pdf_delete_sampled_base_space_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	24(%r14), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%r14), %rdi
	movq	96(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%r14), %rdi
	movq	128(%rbx), %rsi
	movl	136(%rbx), %edx
	movl	$.L.str.12, %ecx
	callq	*160(%rdi)
	movq	24(%r14), %rdi
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	pdf_delete_sampled_base_space_function, .Lfunc_end2-pdf_delete_sampled_base_space_function
	.cfi_endproc

	.globl	pdf_delete_base_space_function
	.align	16, 0x90
	.type	pdf_delete_base_space_function,@function
pdf_delete_base_space_function:         # @pdf_delete_base_space_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -24
.Ltmp24:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movq	80(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movq	96(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movq	104(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movq	112(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movl	$.L.str.11, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	pdf_delete_base_space_function, .Lfunc_end3-pdf_delete_base_space_function
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_1:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.text
	.globl	pdf_make_sampled_base_space_function
	.align	16, 0x90
	.type	pdf_make_sampled_base_space_function,@function
pdf_make_sampled_base_space_function:   # @pdf_make_sampled_base_space_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 208
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %ebx
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	24(%r15), %rdi
	movl	%r13d, %eax
	imull	%ebx, %eax
	leal	(,%rax,8), %esi
	movl	$.L.str.13, %edx
	callq	*136(%rdi)
	movq	%rax, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	cvtsi2sdl	%r13d, %xmm1
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	cvttsd2si	%xmm0, %rdx
	imull	%ebx, %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	%r13d, 16(%rsp)
	movl	%ebx, 32(%rsp)
	movl	$1, 48(%rsp)
	movl	$8, 88(%rsp)
	movq	24(%r15), %rdi
	movl	$4, %edx
	movl	$.L.str.14, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	testl	%r13d, %r13d
	jle	.LBB4_12
# BB#1:                                 # %for.body.lr.ph
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%r13), %edx
	leaq	1(%rdx), %r9
	xorl	%ecx, %ecx
	movq	%r9, %r10
	andq	%r8, %r10
	je	.LBB4_9
# BB#2:                                 # %vector.body.preheader
	movq	%r12, %r11
	leaq	1(%rdx), %rsi
	andq	%r8, %rsi
	addq	$-8, %rsi
	movl	%esi, %edi
	shrl	$3, %edi
	incl	%edi
	xorl	%ecx, %ecx
	testb	$3, %dil
	je	.LBB4_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r13d, %ebp
	andl	$24, %ebp
	addl	$-8, %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%ecx, %ecx
	movapd	.LCPI4_1(%rip), %xmm0   # xmm0 = [2,2,2,2]
	.align	16, 0x90
.LBB4_4:                                # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, (%rax,%rcx,4)
	movupd	%xmm0, 16(%rax,%rcx,4)
	addq	$8, %rcx
	incq	%rbp
	jne	.LBB4_4
.LBB4_5:                                # %vector.body.preheader.split
	cmpq	$24, %rsi
	jb	.LBB4_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%rcx, %rdx
	leaq	112(%rax,%rcx,4), %rcx
	movapd	.LCPI4_1(%rip), %xmm0   # xmm0 = [2,2,2,2]
	.align	16, 0x90
.LBB4_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, -112(%rcx)
	movupd	%xmm0, -96(%rcx)
	movupd	%xmm0, -80(%rcx)
	movupd	%xmm0, -64(%rcx)
	movupd	%xmm0, -48(%rcx)
	movupd	%xmm0, -32(%rcx)
	movupd	%xmm0, -16(%rcx)
	movupd	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-32, %rdx
	jne	.LBB4_7
.LBB4_8:
	movq	%r10, %rcx
	movq	%r11, %r12
.LBB4_9:                                # %middle.block
	cmpq	%rcx, %r9
	je	.LBB4_12
# BB#10:                                # %for.body.preheader
	leaq	(%rax,%rcx,4), %rdx
	movl	%r13d, %esi
	subl	%ecx, %esi
	.align	16, 0x90
.LBB4_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, (%rdx)
	addq	$4, %rdx
	decl	%esi
	jne	.LBB4_11
.LBB4_12:                               # %for.end
	movq	%r12, %rbp
	movq	%rax, 112(%rsp)
	movq	24(%r15), %rdi
	leal	(%r13,%r13), %esi
	movl	$4, %edx
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %r12d
	testq	%r14, %r14
	je	.LBB4_27
# BB#13:                                # %if.end
	movq	24(%r15), %rdi
	leal	(%rbx,%rbx), %esi
	movl	$4, %edx
	movl	$.L.str.15, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB4_28
# BB#14:                                # %for.cond.40.preheader
	testl	%r13d, %r13d
	movq	%rbp, %rdi
	jle	.LBB4_20
# BB#15:                                # %for.body.43.lr.ph
	xorl	%edx, %edx
	testb	$1, %r13b
	je	.LBB4_17
# BB#16:                                # %for.body.43.prol
	movabsq	$4575657221408423936, %rcx # imm = 0x3F80000000000000
	movq	%rcx, (%r14)
	movl	$1, %edx
.LBB4_17:                               # %for.body.43.lr.ph.split
	cmpl	$1, %r13d
	je	.LBB4_20
# BB#18:                                # %for.body.43.lr.ph.split.split
	subl	%edx, %r13d
	leal	1(%rdx,%rdx), %ecx
	leal	3(%rdx,%rdx), %edx
	.align	16, 0x90
.LBB4_19:                               # %for.body.43
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r14,%rsi,4)
	movslq	%ecx, %rcx
	movl	$1065353216, (%r14,%rcx,4) # imm = 0x3F800000
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r14,%rsi,4)
	movslq	%edx, %rdx
	movl	$1065353216, (%r14,%rdx,4) # imm = 0x3F800000
	addl	$4, %ecx
	addl	$4, %edx
	addl	$-2, %r13d
	jne	.LBB4_19
.LBB4_20:                               # %for.cond.53.preheader
	testl	%ebx, %ebx
	jle	.LBB4_26
# BB#21:                                # %for.body.56.lr.ph
	xorl	%edx, %edx
	testb	$1, %bl
	je	.LBB4_23
# BB#22:                                # %for.body.56.prol
	movabsq	$4575657221408423936, %rcx # imm = 0x3F80000000000000
	movq	%rcx, (%rax)
	movl	$1, %edx
.LBB4_23:                               # %for.body.56.lr.ph.split
	cmpl	$1, %ebx
	je	.LBB4_26
# BB#24:                                # %for.body.56.lr.ph.split.split
	subl	%edx, %ebx
	leal	1(%rdx,%rdx), %ecx
	leal	3(%rdx,%rdx), %edx
	.align	16, 0x90
.LBB4_25:                               # %for.body.56
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	movslq	%esi, %rsi
	movl	$0, (%rax,%rsi,4)
	movslq	%ecx, %rcx
	movl	$1065353216, (%rax,%rcx,4) # imm = 0x3F800000
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	movl	$0, (%rax,%rsi,4)
	movslq	%edx, %rdx
	movl	$1065353216, (%rax,%rdx,4) # imm = 0x3F800000
	addl	$4, %ecx
	addl	$4, %edx
	addl	$-2, %ebx
	jne	.LBB4_25
.LBB4_26:                               # %for.end.66
	movq	%r14, 24(%rsp)
	movq	%rax, 40(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 96(%rsp)
	movl	$0, 64(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 72(%rsp)
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%eax, 80(%rsp)
	movq	$data_source_access_string, 56(%rsp)
	movq	24(%r15), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_function_Sd_init
	movl	%eax, %r12d
	jmp	.LBB4_27
.LBB4_28:                               # %if.then.35
	movq	24(%r15), %rdi
	movl	$.L.str.15, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB4_27:                               # %cleanup
	movl	%r12d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pdf_make_sampled_base_space_function, .Lfunc_end4-pdf_make_sampled_base_space_function
	.cfi_endproc

	.globl	pdf_make_base_space_function
	.align	16, 0x90
	.type	pdf_make_base_space_function,@function
pdf_make_base_space_function:           # @pdf_make_base_space_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 128
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, %rbx
	movl	%edx, %r15d
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movq	24(%r13), %rdi
	movl	$2, %esi
	movl	$4, %edx
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %r12d
	testq	%r14, %r14
	je	.LBB5_21
# BB#1:                                 # %if.end
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rbp, %rbx
	movq	24(%r13), %rdi
	leal	(%r15,%r15), %esi
	movl	$4, %edx
	movl	$.L.str.15, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB5_2
# BB#4:                                 # %if.end.12
	movl	$1, 16(%rsp)
	movl	%r15d, 32(%rsp)
	movl	$1065353216, 64(%rsp)   # imm = 0x3F800000
	movabsq	$4575657221408423936, %rax # imm = 0x3F80000000000000
	movq	%rax, (%r14)
	testl	%r15d, %r15d
	jle	.LBB5_10
# BB#5:                                 # %for.body.preheader
	xorl	%edx, %edx
	testb	$1, %r15b
	je	.LBB5_7
# BB#6:                                 # %for.body.prol
	movq	%rax, (%r12)
	movl	$1, %edx
.LBB5_7:                                # %for.body.preheader.split
	cmpl	$1, %r15d
	je	.LBB5_10
# BB#8:                                 # %for.body.preheader.split.split
	movl	%r15d, %eax
	subl	%edx, %eax
	leal	1(%rdx,%rdx), %ecx
	leal	3(%rdx,%rdx), %edx
	.align	16, 0x90
.LBB5_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r12,%rsi,4)
	movslq	%ecx, %rcx
	movl	$1065353216, (%r12,%rcx,4) # imm = 0x3F800000
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	movl	$0, (%r12,%rsi,4)
	movslq	%edx, %rdx
	movl	$1065353216, (%r12,%rdx,4) # imm = 0x3F800000
	addl	$4, %ecx
	addl	$4, %edx
	addl	$-2, %eax
	jne	.LBB5_9
.LBB5_10:                               # %for.end
	movq	%r14, 24(%rsp)
	movq	%r12, 40(%rsp)
	movq	24(%r13), %rdi
	movl	$4, %edx
	movl	$.L.str.16, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	movq	24(%r13), %rdi
	testq	%rax, %rax
	je	.LBB5_11
# BB#12:                                # %if.end.37
	movq	%rax, %rbp
	movl	$4, %edx
	movl	$.L.str.17, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB5_22
# BB#13:                                # %for.cond.60.preheader
	movq	8(%rsp), %rdi           # 8-byte Reload
	testl	%r15d, %r15d
	movq	%rbx, %rsi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbp, %r9
	jle	.LBB5_19
# BB#14:                                # %for.body.62.preheader
	xorl	%ecx, %ecx
	testb	$1, %r15b
	je	.LBB5_16
# BB#15:                                # %for.body.62.prol
	movl	(%rbx), %ecx
	movl	%ecx, (%r9)
	movl	(%rsi), %ecx
	movl	%ecx, (%rax)
	movl	$1, %ecx
.LBB5_16:                               # %for.body.62.preheader.split
	cmpl	$1, %r15d
	je	.LBB5_19
# BB#17:                                # %for.body.62.preheader.split.split
	subl	%ecx, %r15d
	leaq	4(%rbx,%rcx,4), %r8
	leaq	4(%r9,%rcx,4), %rdx
	leaq	4(%rsi,%rcx,4), %rsi
	leaq	4(%rax,%rcx,4), %rcx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_18:                               # %for.body.62
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%r8,%rbx,4), %ebp
	movl	%ebp, -4(%rdx,%rbx,4)
	movl	-4(%rsi,%rbx,4), %ebp
	movl	%ebp, -4(%rcx,%rbx,4)
	movl	(%r8,%rbx,4), %ebp
	movl	%ebp, (%rdx,%rbx,4)
	movl	(%rsi,%rbx,4), %ebp
	movl	%ebp, (%rcx,%rbx,4)
	addq	$2, %rbx
	cmpl	%ebx, %r15d
	jne	.LBB5_18
.LBB5_19:                               # %for.end.73
	movq	%r9, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	24(%r13), %rdx
	leaq	16(%rsp), %rsi
	callq	gs_function_ElIn_init
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB5_21
# BB#20:                                # %if.then.77
	movq	24(%r13), %rdi
	movq	24(%rsp), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movq	40(%rsp), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movq	48(%rsp), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movq	56(%rsp), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	jmp	.LBB5_21
.LBB5_2:                                # %if.then.8
	movq	24(%r13), %rdi
	movl	$.L.str.15, %edx
	movq	%r14, %rsi
	jmp	.LBB5_3
.LBB5_11:                               # %if.then.26
	movl	$.L.str.16, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movl	$.L.str.16, %edx
	movq	%r12, %rsi
	jmp	.LBB5_3
.LBB5_22:                               # %if.then.44
	movq	24(%r13), %rdi
	movl	$.L.str.17, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movl	$.L.str.17, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movl	$.L.str.17, %edx
	movq	%rbp, %rsi
.LBB5_3:                                # %cleanup
	callq	*24(%rdi)
	movl	$-25, %r12d
.LBB5_21:                               # %cleanup
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pdf_make_base_space_function, .Lfunc_end5-pdf_make_base_space_function
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4608533498688228557     # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.long	3741319168              # float -9.223372e+18
	.long	3741319168              # float -9.223372e+18
	.long	3741319168              # float -9.223372e+18
	.long	3741319168              # float -9.223372e+18
.LCPI6_2:
	.long	1593835520              # float 9.223372e+18
	.long	1593835520              # float 9.223372e+18
	.long	1593835520              # float 9.223372e+18
	.long	1593835520              # float 9.223372e+18
.LCPI6_3:
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
	.long	1132396544              # float 2.550000e+02
.LCPI6_4:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI6_5:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_6:
	.long	1132396544              # float 255
	.text
	.globl	pdf_indexed_color_space
	.align	16, 0x90
	.type	pdf_indexed_color_space,@function
pdf_indexed_color_space:                # @pdf_indexed_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$1992, %rsp             # imm = 0x7C8
.Ltmp57:
	.cfi_def_cfa_offset 2048
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%r8, 208(%rsp)          # 8-byte Spill
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	40(%r13), %rdi
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	movl	72(%r13), %r14d
	leal	1(%r14), %ebp
	movl	%ebp, 236(%rsp)         # 4-byte Spill
	callq	gs_color_space_num_components
	movq	%rax, 240(%rsp)         # 8-byte Spill
	imull	%eax, %ebp
	movl	$-15, %r12d
	cmpl	$255, %r14d
	jg	.LBB6_64
# BB#1:                                 # %if.end
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	1728(%r15), %rbx
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jbe	.LBB6_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 9524(%r15)
	jne	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	addl	$-4, %eax
	cmpl	$8, %eax
	jae	.LBB6_4
# BB#63:                                # %switch.hole_check
	movl	$225, %ecx
	btl	%eax, %ecx
	jb	.LBB6_64
.LBB6_4:                                # %if.end.7
	movq	%r14, 144(%rsp)         # 8-byte Spill
	leal	2(,%rbp,4), %r14d
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*136(%rbx)
	movq	%rbp, %rsi
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%rax, %r12
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movl	$.L.str.20, %edx
	movq	%rbx, %rdi
	callq	*136(%rbx)
	testq	%r12, %r12
	movq	%rax, %rbp
	je	.LBB6_6
# BB#5:                                 # %if.end.7
	testq	%rbp, %rbp
	je	.LBB6_6
# BB#7:                                 # %if.end.18
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movl	%r14d, %r15d
	movl	%r15d, 108(%rsp)        # 4-byte Spill
	leaq	1416(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rbx, %rsi
	callq	s_init
	movq	%r14, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movl	%r15d, %edx
	callq	swrite_string
	leaq	1064(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	s_init
	leaq	1768(%rsp), %r15
	movl	$s_PSSE_template, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	s_init_state
	leaq	1888(%rsp), %rdx
	movl	$100, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %r8
	callq	s_init_filter
	movq	1536(%rsp), %rax
	cmpq	1544(%rsp), %rax
	jae	.LBB6_9
# BB#8:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 1536(%rsp)
	movb	$40, 1(%rax)
	jmp	.LBB6_10
.LBB6_6:                                # %if.then.14
	movl	$.L.str.20, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	152(%rsp), %rdx         # 8-byte Reload
	callq	*160(%rbx)
	movl	$.L.str.19, %ecx
	movq	%rbx, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movl	%r14d, %edx
	callq	*160(%rbx)
	movl	$-25, %r12d
	jmp	.LBB6_64
.LBB6_9:                                # %cond.false
	leaq	1416(%rsp), %rdi
	movl	$40, %esi
	callq	spputc
.LBB6_10:                               # %cond.end
	movq	152(%rsp), %r14         # 8-byte Reload
	cmpl	$0, 96(%r13)
	je	.LBB6_43
# BB#11:                                # %if.then.33
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %r15       # imm = 0x1FFFFFFF8
	movq	240(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	144(%rsp), %r14         # 8-byte Reload
	jle	.LBB6_22
# BB#12:                                # %for.body.preheader
	movq	240(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r15, %rdx
	je	.LBB6_19
# BB#13:                                # %vector.body.preheader
	leaq	1(%rcx), %rsi
	andq	%r15, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rbp
	shrq	$3, %rbp
	xorl	%edi, %edi
	btq	$3, %rsi
	jb	.LBB6_15
# BB#14:                                # %vector.body.prol
	movaps	.LCPI6_1(%rip), %xmm0   # xmm0 = [-9.223372e+18,-9.223372e+18,-9.223372e+18,-9.223372e+18]
	movups	%xmm0, 784(%rsp)
	movups	%xmm0, 800(%rsp)
	movapd	.LCPI6_2(%rip), %xmm0   # xmm0 = [9.223372e+18,9.223372e+18,9.223372e+18,9.223372e+18]
	movupd	%xmm0, 520(%rsp)
	movupd	%xmm0, 536(%rsp)
	movl	$8, %edi
.LBB6_15:                               # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB6_18
# BB#16:                                # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r15, %rcx
	subq	%rdi, %rcx
	leaq	832(%rsp,%rdi,4), %rsi
	leaq	568(%rsp,%rdi,4), %rdi
	movapd	.LCPI6_1(%rip), %xmm0   # xmm0 = [-9.223372e+18,-9.223372e+18,-9.223372e+18,-9.223372e+18]
	movdqa	.LCPI6_2(%rip), %xmm1   # xmm1 = [9.223372e+18,9.223372e+18,9.223372e+18,9.223372e+18]
	.align	16, 0x90
.LBB6_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, -48(%rsi)
	movupd	%xmm0, -32(%rsi)
	movdqu	%xmm1, -48(%rdi)
	movdqu	%xmm1, -32(%rdi)
	movupd	%xmm0, -16(%rsi)
	movupd	%xmm0, (%rsi)
	movdqu	%xmm1, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-16, %rcx
	jne	.LBB6_17
.LBB6_18:
	movq	%rdx, %rsi
.LBB6_19:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB6_22
# BB#20:                                # %for.body.preheader186
	leaq	784(%rsp,%rsi,4), %rax
	leaq	520(%rsp,%rsi,4), %rcx
	movq	240(%rsp), %rdx         # 8-byte Reload
	subl	%esi, %edx
	.align	16, 0x90
.LBB6_21:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-553648128, (%rax)     # imm = 0xFFFFFFFFDF000000
	movl	$1593835520, (%rcx)     # imm = 0x5F000000
	addq	$4, %rax
	addq	$4, %rcx
	decl	%edx
	jne	.LBB6_21
.LBB6_22:                               # %for.end
	leaq	776(%rsp), %rdi
	movq	216(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	gs_color_space_restrict_color
	leaq	512(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_color_space_restrict_color
	testl	%r14d, %r14d
	js	.LBB6_42
# BB#23:                                # %for.body.41.lr.ph
	movq	240(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	1(%rax), %r12
	leaq	256(%rsp,%rax,4), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	784(%rsp,%rax,4), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	520(%rsp,%rax,4), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	addq	$4, %r15
	andq	%r12, %r15
	movq	%r15, 224(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%r12, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movq	96(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB6_24:                               # %for.body.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
                                        #     Child Loop BB6_35 Depth 2
	movq	%r13, %rdi
	movl	%r15d, %esi
	leaq	248(%rsp), %rdx
	callq	gs_cspace_indexed_lookup
	movq	240(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB6_41
# BB#25:                                # %overflow.checked140
                                        #   in Loop: Header=BB6_24 Depth=1
	cmpq	$0, 224(%rsp)           # 8-byte Folded Reload
	movl	$0, %ebp
	movq	%r14, %rax
	movss	.LCPI6_6(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	xorps	%xmm9, %xmm9
	movaps	.LCPI6_3(%rip), %xmm6   # xmm6 = [2.550000e+02,2.550000e+02,2.550000e+02,2.550000e+02]
	xorps	%xmm8, %xmm8
	movaps	.LCPI6_4(%rip), %xmm7   # xmm7 = [1,1,1,1]
	movdqa	.LCPI6_5(%rip), %xmm5   # xmm5 = [255,255,255,255]
	je	.LBB6_33
# BB#26:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	192(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rsi
	cmpq	184(%rsp), %r14         # 8-byte Folded Reload
	setbe	%bl
	leaq	256(%rsp), %rax
	cmpq	%rsi, %rax
	setbe	%dl
	cmpq	176(%rsp), %r14         # 8-byte Folded Reload
	setbe	%al
	leaq	784(%rsp), %rcx
	cmpq	%rsi, %rcx
	setbe	%dil
	cmpq	168(%rsp), %r14         # 8-byte Folded Reload
	setbe	%cl
	leaq	520(%rsp), %rbp
	cmpq	%rsi, %rbp
	setbe	%sil
	testb	%dl, %bl
	jne	.LBB6_27
# BB#28:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_24 Depth=1
	andb	%dil, %al
	jne	.LBB6_27
# BB#29:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_24 Depth=1
	andb	%sil, %cl
	movl	$0, %ebp
	movq	%r14, %rax
	jne	.LBB6_33
# BB#30:                                #   in Loop: Header=BB6_24 Depth=1
	movq	224(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rax
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	%r14, %rdx
	leaq	520(%rsp), %rsi
	leaq	784(%rsp), %rdi
	leaq	256(%rsp), %rbp
	.align	16, 0x90
.LBB6_31:                               # %vector.body136
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rbp), %xmm0
	movups	(%rdi), %xmm1
	subps	%xmm1, %xmm0
	mulps	%xmm6, %xmm0
	movups	(%rsi), %xmm2
	subps	%xmm1, %xmm2
	divps	%xmm2, %xmm0
	movaps	%xmm6, %xmm1
	cmpnleps	%xmm0, %xmm1
	cvttps2dq	%xmm0, %xmm2
	cmpnleps	%xmm8, %xmm0
	movaps	%xmm1, %xmm3
	andps	%xmm0, %xmm3
	andps	%xmm2, %xmm3
	xorps	%xmm7, %xmm1
	andps	%xmm0, %xmm1
	pslld	$31, %xmm1
	psrad	$31, %xmm1
	movdqa	%xmm5, %xmm0
	pand	%xmm1, %xmm0
	pandn	%xmm3, %xmm1
	por	%xmm0, %xmm1
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rdx)
	addq	$16, %rbp
	addq	$16, %rdi
	addq	$16, %rsi
	addq	$4, %rdx
	addq	$-4, %rcx
	jne	.LBB6_31
# BB#32:                                #   in Loop: Header=BB6_24 Depth=1
	movq	224(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_27:                               #   in Loop: Header=BB6_24 Depth=1
	xorl	%ebp, %ebp
	movq	%r14, %rax
	.align	16, 0x90
.LBB6_33:                               # %middle.block137
                                        #   in Loop: Header=BB6_24 Depth=1
	cmpq	%rbp, %r12
	je	.LBB6_40
# BB#34:                                # %for.body.45.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	leaq	256(%rsp), %rcx
	leaq	(%rcx,%rbp,4), %rcx
	leaq	784(%rsp), %rdx
	leaq	(%rdx,%rbp,4), %rdx
	leaq	520(%rsp), %rsi
	leaq	(%rsi,%rbp,4), %rsi
	movq	240(%rsp), %rdi         # 8-byte Reload
	subl	%ebp, %edi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_35:                               # %for.body.45
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%rdx,%rbp,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	movss	(%rsi,%rbp,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm9
	jae	.LBB6_36
# BB#37:                                # %cond.false.67
                                        #   in Loop: Header=BB6_35 Depth=2
	movb	$-1, %bl
	ucomiss	.LCPI6_6(%rip), %xmm0
	jae	.LBB6_39
# BB#38:                                # %cond.false.70
                                        #   in Loop: Header=BB6_35 Depth=2
	cvttss2si	%xmm0, %ebx
	jmp	.LBB6_39
	.align	16, 0x90
.LBB6_36:                               #   in Loop: Header=BB6_35 Depth=2
	xorl	%ebx, %ebx
.LBB6_39:                               # %cond.end.74
                                        #   in Loop: Header=BB6_35 Depth=2
	movb	%bl, (%rax,%rbp)
	incq	%rbp
	cmpl	%ebp, %edi
	jne	.LBB6_35
.LBB6_40:                               # %for.cond.43.for.end.80_crit_edge
                                        #   in Loop: Header=BB6_24 Depth=1
	addq	%r12, %r14
.LBB6_41:                               # %for.end.80
                                        #   in Loop: Header=BB6_24 Depth=1
	incl	%r15d
	cmpl	236(%rsp), %r15d        # 4-byte Folded Reload
	jl	.LBB6_24
.LBB6_42:                               # %for.end.83
	movq	152(%rsp), %r14         # 8-byte Reload
	movq	96(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB6_44
.LBB6_43:                               # %if.else
	movq	80(%r13), %rsi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	callq	memcpy
.LBB6_44:                               # %if.end.87
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	gs_color_space_get_index
	cmpl	$1, %eax
	jne	.LBB6_54
# BB#45:                                # %for.cond.93.preheader
	movslq	%r14d, %rdx
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %eax
	movq	240(%rsp), %rcx         # 8-byte Reload
	imull	%eax, %ecx
	addl	$-3, %ecx
	movslq	%ecx, %rcx
	movq	%rbp, %rax
	addq	%rcx, %rax
	.align	16, 0x90
.LBB6_46:                               # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	addl	$-3, %edx
	js	.LBB6_49
# BB#47:                                # %for.body.97
                                        #   in Loop: Header=BB6_46 Depth=1
	movzbl	(%rax), %edx
	movzbl	-2(%rbp,%rcx), %esi
	cmpl	%esi, %edx
	jne	.LBB6_49
# BB#48:                                # %lor.lhs.false.107
                                        #   in Loop: Header=BB6_46 Depth=1
	movzbl	-1(%rbp,%rcx), %esi
	movzbl	%dl, %edi
	leaq	-3(%rcx), %rdx
	addq	$-3, %rax
	cmpl	%esi, %edi
	je	.LBB6_46
.LBB6_49:                               # %for.end.119
	cmpl	$2, %ecx
	jg	.LBB6_54
# BB#50:                                # %for.cond.123.preheader
	movq	144(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB6_53
# BB#51:                                # %for.body.126.lr.ph
	movslq	236(%rsp), %rax         # 4-byte Folded Reload
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	.align	16, 0x90
.LBB6_52:                               # %for.body.126
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rdx), %bl
	movb	%bl, (%rbp,%rcx)
	incq	%rcx
	addq	$3, %rdx
	cmpq	%rax, %rcx
	jl	.LBB6_52
.LBB6_53:                               # %for.end.134
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movl	236(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r14d
.LBB6_54:                               # %if.end.137
	leaq	1064(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	callq	stream_write
	movl	$.L.str.20, %ecx
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	callq	*160(%rbx)
	movq	%r15, %rdi
	callq	sclose
	leaq	1416(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*1624(%rsp)
	movq	%rbp, %rdi
	callq	stell
	movq	%rax, %r14
	movl	$.L.str.19, %r8d
	movq	%rbx, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movl	108(%rsp), %edx         # 4-byte Reload
	movl	%r14d, %ecx
	callq	*152(%rbx)
	movq	%rax, %r15
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	je	.LBB6_56
# BB#55:                                # %if.end.137
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	30760(%rax), %eax
	testl	%eax, %eax
	jne	.LBB6_56
# BB#61:                                # %if.else.177
	leaq	1040(%rsp), %rbp
	movl	$.L.str.6, %esi
	movq	%rbp, %rdi
	callq	cos_c_string_value
	movq	200(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movq	%rbx, %rdi
	movq	208(%rsp), %rsi         # 8-byte Reload
	callq	cos_array_add
	movl	72(%r13), %esi
	movq	%rbx, %rdi
	callq	cos_array_add_int
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	cos_string_value
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_array_add_no_copy
.LBB6_62:                               # %if.end.185
	xorl	%r12d, %r12d
	jmp	.LBB6_64
.LBB6_56:                               # %if.then.152
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	callq	pdf_color_space_named
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB6_64
# BB#57:                                # %lor.lhs.false.156
	leaq	1040(%rsp), %rdi
	movl	$.L.str.6, %esi
	callq	cos_c_string_value
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB6_64
# BB#58:                                # %lor.lhs.false.161
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	callq	cos_array_add
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB6_64
# BB#59:                                # %lor.lhs.false.165
	movl	72(%r13), %esi
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	cos_array_add_int
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB6_64
# BB#60:                                # %lor.lhs.false.170
	leaq	1040(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	cos_string_value
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	cos_array_add_no_copy
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB6_62
.LBB6_64:                               # %cleanup
	movl	%r12d, %eax
	addq	$1992, %rsp             # imm = 0x7C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf_indexed_color_space, .Lfunc_end6-pdf_indexed_color_space
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4608533498688228557     # double 1.3
.LCPI7_2:
	.quad	4562254508917369340     # double 0.001
.LCPI7_3:
	.quad	4599664668345717930     # double 0.33268101761252444
.LCPI7_4:
	.quad	4604185894586111403     # double 0.66731898238747556
.LCPI7_6:
	.quad	4647697223260307456     # double 511
.LCPI7_7:
	.quad	4625196817309499392     # double 16
.LCPI7_8:
	.quad	-4585508845593296896    # double -116
.LCPI7_9:
	.quad	-4575868327640956928    # double -500
.LCPI7_10:
	.quad	4641240890982006784     # double 200
.LCPI7_11:
	.quad	-4629234527320245354    # double -0.13793103448275862
.LCPI7_12:
	.quad	4593794786138392866     # double 0.12841854934601665
.LCPI7_13:
	.quad	4596622254156527969     # double 0.20689655172413793
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_1:
	.long	1065353216              # float 1
.LCPI7_5:
	.long	3212836864              # float -1
	.text
	.globl	pdf_color_space_named
	.align	16, 0x90
	.type	pdf_color_space_named,@function
pdf_color_space_named:                  # @pdf_color_space_named
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp70:
	.cfi_def_cfa_offset 816
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movq	$0, 728(%rsp)
	movq	$0, 616(%rsp)
	movl	$0, 612(%rsp)
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbp), %xmm0
	ja	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movq	%r12, %rdi
	callq	gs_color_space_is_PSCIE
.LBB7_2:                                # %if.end
	movq	%r12, %rdi
	callq	gs_color_space_get_index
	movl	%eax, %r13d
	cmpl	$0, 832(%rsp)
	jne	.LBB7_5
# BB#3:                                 # %if.end
	cmpl	$12, %r13d
	jne	.LBB7_5
# BB#4:                                 # %if.then.4
	movq	64(%r12), %rdi
	callq	gsicc_get_default_type
	movl	%eax, %r13d
.LBB7_5:                                # %if.end.6
	testq	%rbx, %rbx
	je	.LBB7_7
# BB#6:                                 # %if.then.8
	movq	$0, (%rbx)
.LBB7_7:                                # %if.end.9
	cmpl	$1, %r13d
	jle	.LBB7_8
# BB#11:                                # %if.end.9
	cmpl	$2, %r13d
	je	.LBB7_20
# BB#12:                                # %if.end.9
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	cmpl	$11, %r13d
	jne	.LBB7_13
# BB#21:                                # %sw.bb.15
	cmpl	$0, 72(%r12)
	jne	.LBB7_31
# BB#22:                                # %if.then.17
	movl	$.L.str.21, %esi
	jmp	.LBB7_23
.LBB7_8:                                # %if.end.9
	testl	%r13d, %r13d
	jne	.LBB7_9
# BB#19:                                # %sw.bb
	movq	8(%r14), %rsi
	jmp	.LBB7_23
.LBB7_20:                               # %sw.bb.13
	movq	(%r14), %rsi
	jmp	.LBB7_23
.LBB7_13:                               # %if.end.9
	cmpl	$12, %r13d
	jne	.LBB7_31
# BB#14:                                # %sw.bb.20
	cmpq	$0, 64(%r12)
	je	.LBB7_16
# BB#15:                                # %lor.lhs.false.23
	movq	152(%rsp), %rax         # 8-byte Reload
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rax), %xmm0
	jbe	.LBB7_31
.LBB7_16:                               # %if.then.26
	xorl	%r14d, %r14d
	cmpq	$0, 816(%rsp)
	jne	.LBB7_345
# BB#17:                                # %if.end.29
	movq	40(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB7_24
# BB#18:                                # %if.then.31
	movl	832(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	136(%rsp), %r8          # 8-byte Reload
	movl	%r15d, %r9d
	callq	pdf_color_space_named
	movl	%eax, %r14d
	jmp	.LBB7_345
.LBB7_9:                                # %if.end.9
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	cmpl	$1, %r13d
	jne	.LBB7_31
# BB#10:                                # %sw.bb.11
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
.LBB7_23:                               # %cleanup.1033
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	cos_c_string_value
.LBB7_344:                              # %if.end.1032
	xorl	%r14d, %r14d
.LBB7_345:                              # %cleanup.1033
	movl	%r14d, %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_24:                               # %if.else.34
	movq	(%r12), %rax
	movq	%r12, %rdi
	callq	*24(%rax)
	cmpl	$4, %eax
	je	.LBB7_30
# BB#25:                                # %if.else.34
	cmpl	$3, %eax
	jne	.LBB7_26
# BB#29:                                # %sw.bb.39
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	jmp	.LBB7_28
.LBB7_30:                               # %sw.bb.42
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	jmp	.LBB7_28
.LBB7_26:                               # %if.else.34
	cmpl	$1, %eax
	jne	.LBB7_31
# BB#27:                                # %sw.bb.36
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
.LBB7_28:                               # %cleanup.1033
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	cos_c_string_value
	jmp	.LBB7_345
.LBB7_31:                               # %sw.epilog.48
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 30760(%rax)
	movq	%rbx, %r14
	je	.LBB7_45
# BB#32:                                # %if.then.50
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	9008(%rax), %eax
	cmpl	$4, %eax
	je	.LBB7_38
# BB#33:                                # %if.then.50
	cmpl	$6, %eax
	jne	.LBB7_34
# BB#41:                                # %switch.early.test433
	testl	%r13d, %r13d
	je	.LBB7_45
# BB#42:                                # %switch.early.test433
	cmpl	$11, %r13d
	je	.LBB7_45
# BB#43:                                # %if.then.92
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	24(%rbx), %rbp
	callq	gs_program_name
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	120(%rsp), %r14         # 8-byte Reload
	movq	104(%rsp), %r12         # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.24, %esi
	jmp	.LBB7_44
.LBB7_38:                               # %switch.early.test432
	cmpl	$11, %r13d
	ja	.LBB7_40
# BB#39:                                # %switch.early.test432
	movl	$2051, %eax             # imm = 0x803
	btl	%r13d, %eax
	jb	.LBB7_45
.LBB7_40:                               # %if.end.84.thread
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	24(%rbx), %rbp
	callq	gs_program_name
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	120(%rsp), %r14         # 8-byte Reload
	movq	104(%rsp), %r12         # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.23, %esi
.LBB7_44:                               # %if.end.101
	xorl	%eax, %eax
	callq	errprintf
	movl	$0, 9008(%rbx)
	jmp	.LBB7_45
.LBB7_34:                               # %if.then.50
	cmpl	$5, %eax
	jne	.LBB7_45
# BB#35:                                # %switch.early.test
	cmpl	$11, %r13d
	ja	.LBB7_37
# BB#36:                                # %switch.early.test
	movl	$2053, %eax             # imm = 0x805
	btl	%r13d, %eax
	jb	.LBB7_45
.LBB7_37:                               # %if.end.84.thread901
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	24(%rbp), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	callq	gs_program_name
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	104(%rsp), %r12         # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$0, 9008(%rbp)
.LBB7_45:                               # %if.end.101
	movl	%r15d, 132(%rsp)        # 4-byte Spill
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB7_47
# BB#46:                                # %if.end.106
	xorl	%esi, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	pdf_find_resource_by_gs_id
	movq	%rax, %rbx
	movq	%rbx, 616(%rsp)
	testq	%rbx, %rbx
	jne	.LBB7_68
.LBB7_47:                               # %if.then.108
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rsi
	leaq	256(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	%r12, %r15
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB7_48
# BB#49:                                # %if.end.114
	movq	%r14, 120(%rsp)         # 8-byte Spill
	leaq	256(%rsp), %rbx
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	sclose
	movl	%ebp, %r12d
	cmpq	$101, %r12
	jae	.LBB7_51
# BB#50:
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	leaq	624(%rsp), %rbp
	jmp	.LBB7_52
.LBB7_48:
	movl	$-28, %r14d
	jmp	.LBB7_345
.LBB7_51:                               # %if.else.121
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.25, %edx
	movq	%rbp, %rsi
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB7_345
.LBB7_52:                               # %if.end.128
	leaq	256(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	swrite_string
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB7_53
# BB#54:                                # %if.end.135
	leaq	256(%rsp), %rdi
	callq	stell
	cmpq	%r12, %rax
	movl	$-28, %r14d
	jne	.LBB7_345
# BB#55:                                # %if.end.141
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movq	%rbp, %r15
	leaq	256(%rsp), %rdi
	callq	sclose
	xorl	%ebp, %ebp
	movq	112(%rsp), %r14         # 8-byte Reload
.LBB7_56:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	26672(%rax,%rbp,8), %rbx
	jmp	.LBB7_57
	.align	16, 0x90
.LBB7_60:                               # %for.inc.i
                                        #   in Loop: Header=BB7_57 Depth=2
	movq	(%rbx), %rbx
.LBB7_57:                               # %for.body.i
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB7_61
# BB#58:                                # %for.body.4.i
                                        #   in Loop: Header=BB7_57 Depth=2
	cmpl	%r14d, 80(%rbx)
	jne	.LBB7_60
# BB#59:                                # %cleanup.i
                                        #   in Loop: Header=BB7_57 Depth=2
	movq	88(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB7_60
	jmp	.LBB7_65
.LBB7_61:                               # %for.inc.11.i
                                        #   in Loop: Header=BB7_56 Depth=1
	incq	%rbp
	cmpq	$16, %rbp
	jl	.LBB7_56
# BB#62:                                # %if.end.156.thread932
	movq	$0, 616(%rsp)
	movq	120(%rsp), %r14         # 8-byte Reload
	jmp	.LBB7_63
.LBB7_53:
	movl	$-28, %r14d
	jmp	.LBB7_345
.LBB7_65:                               # %if.then.146
	movq	%rbx, 616(%rsp)
	leaq	624(%rsp), %rax
	cmpq	%rax, %r15
	je	.LBB7_66
# BB#67:                                # %if.end.156
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.25, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	616(%rsp), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	movq	120(%rsp), %r14         # 8-byte Reload
	jne	.LBB7_68
.LBB7_63:                               # %if.end.169
	movl	$.L.str.25, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB7_64
# BB#72:                                # %if.end.174
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movl	$-15, %r14d
	addl	$-4, %r13d
	cmpl	$8, %r13d
	ja	.LBB7_345
# BB#73:                                # %if.end.174
	jmpq	*.LJTI7_0(,%r13,8)
.LBB7_279:                              # %sw.bb.736
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 30720(%rax)
	je	.LBB7_345
# BB#280:                               # %if.end.739
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rax), %xmm0
	ja	.LBB7_345
# BB#281:                               # %if.end.744
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %r15
	callq	gs_cspace_get_devn_function
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB7_345
# BB#282:                               # %if.end.749
	movl	$.L.str.35, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %r12
	movl	$-25, %r14d
	testq	%r12, %r12
	movq	%r15, %rbx
	je	.LBB7_345
# BB#283:                               # %for.cond.756.preheader
	cmpl	$0, 80(%rbx)
	je	.LBB7_289
# BB#284:                               # %for.body.761.lr.ph
	xorl	%ebp, %ebp
	leaq	736(%rsp), %r15
.LBB7_286:                              # %for.body.761
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	movq	72(%rbx), %rax
	movq	(%rax,%rbp,8), %rsi
	leaq	248(%rsp), %rdx
	leaq	244(%rsp), %rcx
	callq	*112(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#287:                               # %lor.lhs.false.772
                                        #   in Loop: Header=BB7_286 Depth=1
	movq	248(%rsp), %rsi
	movl	244(%rsp), %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rcx
	callq	pdf_string_to_cos_name
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#288:                               # %lor.lhs.false.776
                                        #   in Loop: Header=BB7_286 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	cos_array_add_no_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#285:                               # %for.cond.756
                                        #   in Loop: Header=BB7_286 Depth=1
	incq	%rbp
	cmpl	80(%rbx), %ebp
	jb	.LBB7_286
.LBB7_289:                              # %for.end.784
	leaq	736(%rsp), %rdi
	movq	%r12, %rsi
	callq	cos_object_value
	xorl	%r12d, %r12d
	cmpq	$0, 96(%rbx)
                                        # implicit-def: R14D
	je	.LBB7_311
# BB#290:                               # %if.then.791
	movl	$.L.str.35, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %r15
	xorl	%r12d, %r12d
	testq	%r15, %r15
	je	.LBB7_291
# BB#292:                               # %if.end.797
	xorl	%r12d, %r12d
	leaq	160(%rsp), %rcx
	movl	$5, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	pdf_alloc_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_293
# BB#294:                               # %if.end.802
	movq	160(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	leaq	216(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cos_object_value
	movq	160(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.36, %esi
	movl	$10, %edx
	movq	%rbx, %rcx
	callq	cos_dict_put
	movl	%eax, %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	js	.LBB7_295
# BB#296:                               # %for.cond.816.preheader
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	96(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB7_307
# BB#297:
	leaq	192(%rsp), %rbx
.LBB7_299:                              # %for.body.819
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	movq	24(%rbp), %rsi
	leaq	248(%rsp), %rdx
	leaq	244(%rsp), %rcx
	movq	104(%rsp), %rax         # 8-byte Reload
	callq	*112(%rax)
	movl	%eax, %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	js	.LBB7_300
# BB#301:                               # %if.end.828
                                        #   in Loop: Header=BB7_299 Depth=1
	movq	32(%rbp), %rcx
	movl	832(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	136(%rsp), %r8          # 8-byte Reload
	callq	pdf_color_space_named
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_302
# BB#303:                               # %if.end.833
                                        #   in Loop: Header=BB7_299 Depth=1
	movq	248(%rsp), %rsi
	movl	244(%rsp), %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	leaq	168(%rsp), %rcx
	callq	pdf_string_to_cos_name
	movl	%eax, %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	js	.LBB7_304
# BB#305:                               # %if.end.838
                                        #   in Loop: Header=BB7_299 Depth=1
	movq	176(%rsp), %rsi
	movl	184(%rsp), %edx
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	cos_dict_put
	movl	%eax, %r14d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	js	.LBB7_306
# BB#298:                               # %for.cond.816
                                        #   in Loop: Header=BB7_299 Depth=1
	movq	40(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB7_299
.LBB7_307:                              # %for.end.847
	xorl	%r12d, %r12d
	leaq	160(%rsp), %rsi
	movl	$5, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	pdf_substitute_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_308
# BB#309:                               # %if.end.852
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	26664(%rax), %rax
	movq	160(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movq	64(%rcx), %rsi
	leaq	256(%rsp), %r12
	movq	%r12, %rdi
	callq	cos_object_value
	movb	$1, %al
                                        # implicit-def: R14D
	jmp	.LBB7_310
.LBB7_66:                               # %if.end.156.thread935
	movq	120(%rsp), %r14         # 8-byte Reload
.LBB7_68:                               # %if.then.158
	movq	144(%rsp), %r13         # 8-byte Reload
	testq	%r14, %r14
	je	.LBB7_71
# BB#69:                                # %land.lhs.true.161
	movq	72(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_71
# BB#70:                                # %if.then.165
	movq	%rax, (%r14)
.LBB7_71:                               # %if.end.167
	movq	64(%rbx), %rbx
	movq	152(%rsp), %rbp         # 8-byte Reload
.LBB7_339:                              # %ret
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	je	.LBB7_341
# BB#340:                               # %if.then.1014
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	cos_resource_value
	jmp	.LBB7_342
.LBB7_341:                              # %if.else.1017
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	cos_object_value
.LBB7_342:                              # %if.end.1020
	movq	616(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB7_344
# BB#343:                               # %if.then.1023
	movq	%rbp, %rdi
	movq	26664(%rdi), %rax
	orq	%rax, 56(%rcx)
	movq	30448(%rdi), %rsi
	movl	$.L.str.39, %edx
	callq	pdf_add_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB7_344
	jmp	.LBB7_345
.LBB7_64:
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_260:                              # %sw.bb.665
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 30760(%rdi)
	jne	.LBB7_277
# BB#261:                               # %land.lhs.true.668
	cmpl	$0, 9524(%rdi)
	je	.LBB7_262
.LBB7_277:                              # %if.else.724
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	72(%rdx), %r8
	leaq	728(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.34, %ecx
	jmp	.LBB7_259
.LBB7_244:                              # %sw.bb.596
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 30760(%rdi)
	jne	.LBB7_258
# BB#245:                               # %land.lhs.true.599
	cmpl	$0, 9524(%rdi)
	je	.LBB7_246
.LBB7_258:                              # %if.else.655
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	72(%rdx), %r8
	leaq	728(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.30, %ecx
.LBB7_259:                              # %sw.epilog.930
	leaq	31352(%r8), %r9
	movq	%rbx, %rsi
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	callq	pdf_convert_cie_space
	jmp	.LBB7_322
.LBB7_138:                              # %sw.bb.393
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	72(%rax), %r8
	movss	6416(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_141
	jnp	.LBB7_140
	jmp	.LBB7_141
.LBB7_74:                               # %sw.bb.177
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	72(%rax), %r8
	movss	6416(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_77
	jnp	.LBB7_76
	jmp	.LBB7_77
.LBB7_312:                              # %sw.bb.879
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 30716(%rax)
	je	.LBB7_345
# BB#313:                               # %if.end.882
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	%rax, %rbp
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rbx
	callq	gs_cspace_get_sepr_function
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB7_345
# BB#314:                               # %if.end.887
	movq	24(%rbp), %rdi
	movq	72(%rbx), %rsi
	leaq	256(%rsp), %rdx
	leaq	216(%rsp), %rcx
	callq	*96(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#315:                               # %lor.lhs.false.898
	movq	256(%rsp), %rsi
	movl	216(%rsp), %edx
	leaq	736(%rsp), %rcx
	movq	%rbp, %rdi
	callq	pdf_string_to_cos_name
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#316:                               # %cleanup.909
	movq	40(%rbx), %r8
	movq	$0, (%rsp)
	leaq	736(%rsp), %rcx
	movl	$.L.str.38, %edx
	movq	%rbp, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %r9
	callq	pdf_separation_color_space
	jmp	.LBB7_320
.LBB7_278:                              # %sw.bb.734
	movq	%r15, 88(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	callq	pdf_indexed_color_space
	jmp	.LBB7_322
.LBB7_317:                              # %sw.bb.913
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rcx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	pdf_color_space_named
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#318:                               # %lor.lhs.false.918
	leaq	736(%rsp), %rdi
	movl	$.L.str.21, %esi
	callq	cos_c_string_value
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#319:                               # %lor.lhs.false.923
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	cos_array_add
.LBB7_320:                              # %lor.lhs.false.923
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB7_324
	jmp	.LBB7_345
.LBB7_321:                              # %sw.bb.175
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	callq	pdf_iccbased_color_space
	jmp	.LBB7_322
.LBB7_262:                              # %if.then.671
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	48(%rax), %rdx
	testq	%rdx, %rdx
	movq	%rax, %rbp
	jne	.LBB7_265
# BB#263:                               # %if.then.676
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdx
	leaq	612(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_colorspace_set_icc_equivalent
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#264:                               # %if.then.676.if.end.683_crit_edge
	movq	48(%rbp), %rdx
.LBB7_265:                              # %if.end.683
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	pdf_iccbased_color_space
	movl	%eax, %r15d
	movq	72(%rbp), %rcx
	leaq	31352(%rcx), %rax
	xorpd	%xmm0, %xmm0
	ucomiss	31352(%rcx), %xmm0
	ja	.LBB7_267
# BB#266:                               # %if.end.683
	movss	31356(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_268
.LBB7_267:                              # %if.then.711
	movq	%rax, 728(%rsp)
.LBB7_268:                              # %if.end.717
	xorps	%xmm0, %xmm0
	ucomiss	31360(%rcx), %xmm0
	ja	.LBB7_270
# BB#269:                               # %if.end.717
	movss	31364(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_271
.LBB7_270:                              # %if.then.711.1
	movq	%rax, 728(%rsp)
.LBB7_271:                              # %if.end.717.1
	xorps	%xmm0, %xmm0
	ucomiss	31368(%rcx), %xmm0
	ja	.LBB7_273
# BB#272:                               # %if.end.717.1
	movss	31372(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_274
.LBB7_273:                              # %if.then.711.2
	movq	%rax, 728(%rsp)
.LBB7_274:                              # %if.end.717.2
	xorps	%xmm0, %xmm0
	ucomiss	31376(%rcx), %xmm0
	ja	.LBB7_351
# BB#275:                               # %if.end.717.2
	movss	31380(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	ja	.LBB7_351
# BB#276:
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	jmp	.LBB7_323
.LBB7_246:                              # %if.then.602
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	48(%rax), %rdx
	testq	%rdx, %rdx
	movq	%rax, %rbp
	jne	.LBB7_249
# BB#247:                               # %if.then.607
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdx
	leaq	612(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_colorspace_set_icc_equivalent
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#248:                               # %if.then.607.if.end.614_crit_edge
	movq	48(%rbp), %rdx
.LBB7_249:                              # %if.end.614
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	pdf_iccbased_color_space
	movl	%eax, %r15d
	movq	72(%rbp), %rcx
	leaq	31352(%rcx), %rax
	xorpd	%xmm0, %xmm0
	ucomiss	31352(%rcx), %xmm0
	ja	.LBB7_251
# BB#250:                               # %if.end.614
	movss	31356(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_252
.LBB7_251:                              # %if.then.642
	movq	%rax, 728(%rsp)
.LBB7_252:                              # %if.end.648
	xorps	%xmm0, %xmm0
	ucomiss	31360(%rcx), %xmm0
	ja	.LBB7_254
# BB#253:                               # %if.end.648
	movss	31364(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_255
.LBB7_254:                              # %if.then.642.1
	movq	%rax, 728(%rsp)
.LBB7_255:                              # %if.end.648.1
	xorps	%xmm0, %xmm0
	ucomiss	31368(%rcx), %xmm0
	ja	.LBB7_351
# BB#256:                               # %if.end.648.1
	movss	31372(%rcx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	ja	.LBB7_351
# BB#257:
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	jmp	.LBB7_323
.LBB7_351:                              # %if.then.642.2
	movq	%rax, 728(%rsp)
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	jmp	.LBB7_323
.LBB7_291:
	movl	$-25, %r14d
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_293:
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_295:
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_308:
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_300:
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_302:
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_304:
	xorl	%eax, %eax
	jmp	.LBB7_310
.LBB7_306:
	xorl	%eax, %eax
.LBB7_310:                              # %cleanup.856
	testb	%al, %al
	movq	104(%rsp), %rbx         # 8-byte Reload
	je	.LBB7_345
.LBB7_311:                              # %cleanup.871
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	40(%rbx), %r8
	movq	%r12, (%rsp)
	leaq	736(%rsp), %rcx
	movl	$.L.str.37, %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %r9
	callq	pdf_separation_color_space
	movl	%eax, %r15d
	testl	%r15d, %r15d
	cmovsl	%r15d, %r14d
	movq	144(%rsp), %r13         # 8-byte Reload
	jns	.LBB7_323
	jmp	.LBB7_345
.LBB7_75:                               # %for.cond.i
	movl	$1, %eax
	jmp	.LBB7_77
.LBB7_76:                               # %lor.lhs.false.i
	movss	6420(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_77
	jnp	.LBB7_75
.LBB7_77:                               # %cie_ranges_are_0_1.exit
	movss	6432(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_80
	jp	.LBB7_80
# BB#78:                                # %land.lhs.true.182
	movss	6436(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_80
	jp	.LBB7_80
# BB#79:                                # %land.rhs
	movss	6440(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpeqss	.LCPI7_1(%rip), %xmm0
	movd	%xmm0, %ecx
	andl	$1, %ecx
.LBB7_80:                               # %land.end
	leaq	6416(%r8), %r14
	cmpl	$0, 100(%r8)
	je	.LBB7_81
# BB#90:                                # %if.end.231
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r15, 88(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB7_121
# BB#91:                                # %land.lhs.true.235
	cmpl	$0, 6448(%r8)
	je	.LBB7_109
# BB#92:                                # %land.lhs.true.239
	movss	168(%r8), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	848(%r8), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 136(%rsp)        # 4-byte Spill
	movss	1532(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	2212(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_109
# BB#93:                                # %lor.lhs.false.i.i
	movss	96(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	136(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_94
	jnp	.LBB7_109
.LBB7_94:                               # %lor.lhs.false.i.i
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_109
# BB#95:                                # %lor.lhs.false.4.i.i
	xorpd	%xmm0, %xmm0
	movss	136(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_109
# BB#96:                                # %if.end.11.i.i
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	divsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %rbp
	callq	log
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	136(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_109
# BB#97:                                # %land.lhs.true.245
	movss	2256(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	2936(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movss	3620(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movss	4300(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_109
# BB#98:                                # %lor.lhs.false.i.i.457
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	96(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_99
	jnp	.LBB7_109
.LBB7_99:                               # %lor.lhs.false.i.i.457
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_109
# BB#100:                               # %lor.lhs.false.4.i.i.461
	xorpd	%xmm0, %xmm0
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_109
# BB#101:                               # %if.end.11.i.i.471
	movss	96(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	divsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %rbp
	callq	log
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_109
# BB#102:                               # %land.lhs.true.253
	movss	4344(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	5024(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	5708(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 64(%rsp)         # 4-byte Spill
	movss	6388(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_109
# BB#103:                               # %lor.lhs.false.i.i.490
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	80(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_104
	jnp	.LBB7_109
.LBB7_104:                              # %lor.lhs.false.i.i.490
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_109
# BB#105:                               # %lor.lhs.false.4.i.i.494
	xorpd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_109
# BB#106:                               # %if.end.11.i.i.504
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	64(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %rbp
	callq	log
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_109
# BB#107:                               # %land.lhs.true.261
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 136(%rsp)        # 4-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_109
	jp	.LBB7_109
# BB#108:                               # %land.lhs.true.261
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	ucomiss	136(%rsp), %xmm0        # 4-byte Folded Reload
	jne	.LBB7_109
	jnp	.LBB7_118
.LBB7_109:                              # %land.lhs.true.276
	cmpl	$0, 128(%r8)
	je	.LBB7_121
# BB#110:                               # %land.lhs.true.285
	cmpl	$0, 2216(%r8)
	je	.LBB7_121
# BB#111:                               # %land.lhs.true.294
	cmpl	$0, 4304(%r8)
	je	.LBB7_121
# BB#112:                               # %land.lhs.true.303
	movss	8572(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	10612(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 136(%rsp)        # 4-byte Spill
	movss	12664(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	14704(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_121
# BB#113:                               # %lor.lhs.false.i.i.516
	movss	96(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	136(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_114
	jnp	.LBB7_121
.LBB7_114:                              # %lor.lhs.false.i.i.516
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_121
# BB#115:                               # %lor.lhs.false.4.i.i.520
	xorpd	%xmm0, %xmm0
	movss	136(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_121
# BB#116:                               # %if.end.11.i.i.530
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	divsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %rbp
	callq	log
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	136(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_121
# BB#117:                               # %cie_vector_cache_is_exponential.exit
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 136(%rsp)        # 4-byte Spill
.LBB7_118:                              # %if.end.358
	movq	%r8, 56(%rsp)           # 8-byte Spill
	leaq	736(%rsp), %rdi
	movl	$.L.str.27, %esi
	callq	cos_c_string_value
	movq	%rbx, %rdi
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#119:                               # %if.end.364
	movl	$.L.str.28, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB7_120
# BB#133:                               # %if.end.369
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_134
	jnp	.LBB7_137
.LBB7_134:                              # %if.then.373
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	cos_dict_put_c_key_real
.LBB7_135:                              # %if.then.373
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB7_137
	jmp	.LBB7_345
.LBB7_121:                              # %if.else.313
	movq	152(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 30760(%rdi)
	movq	104(%rsp), %rdx         # 8-byte Reload
	jne	.LBB7_130
# BB#122:                               # %land.lhs.true.316
	cmpl	$0, 9524(%rdi)
	je	.LBB7_123
.LBB7_130:                              # %if.else.353
	leaq	728(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.26, %ecx
	movq	%rbx, %rsi
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	jmp	.LBB7_131
.LBB7_81:                               # %if.then.191
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 30760(%rdi)
	jne	.LBB7_89
# BB#82:                                # %land.lhs.true.194
	cmpl	$0, 9524(%rdi)
	je	.LBB7_83
.LBB7_89:                               # %if.else.227
	leaq	728(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.26, %ecx
	movq	%rbx, %rsi
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rdx         # 8-byte Reload
.LBB7_131:                              # %sw.epilog.930
	movq	%r14, %r9
	callq	pdf_convert_cie_space
.LBB7_322:                              # %sw.epilog.930
	movl	%eax, %r15d
.LBB7_323:                              # %sw.epilog.930
	testl	%r15d, %r15d
	js	.LBB7_325
.LBB7_324:                              # %lor.lhs.false.934
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	32(%rax), %rdx
	leaq	616(%rsp), %rcx
	xorl	%esi, %esi
	movq	$-1, %r8
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	pdf_alloc_resource
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB7_325
# BB#326:                               # %if.end.941
	movq	616(%rsp), %rsi
	xorl	%edx, %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	pdf_reserve_object_id
	movq	816(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_328
# BB#327:                               # %if.then.944
	movq	%rax, %rsi
	movslq	824(%rsp), %rax
	cmpq	$23, %rax
	movl	$23, %ebx
	cmovbq	%rax, %rbx
	movq	616(%rsp), %rdi
	addq	$32, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	616(%rsp), %rax
	movb	$0, 32(%rax,%rbx)
.LBB7_328:                              # %if.end.956
	movq	616(%rsp), %r15
	leaq	624(%rsp), %rax
	movq	88(%rsp), %rbp          # 8-byte Reload
	cmpq	%rax, %rbp
	movq	104(%rsp), %r14         # 8-byte Reload
	jne	.LBB7_332
# BB#329:                               # %if.then.960
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.25, %edx
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB7_330
# BB#331:                               # %if.end.969
	movq	%rbx, %rdx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rdx
	leaq	624(%rsp), %rsi
	movq	%rbp, %rdi
	callq	memcpy
.LBB7_332:                              # %if.end.973
	movq	%rbp, 88(%r15)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, 80(%r15)
	cmpq	$0, 728(%rsp)
	je	.LBB7_337
# BB#333:                               # %if.then.977
	movq	%r14, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r14d
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$8, %edx
	movl	$.L.str.25, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB7_336
# BB#334:                               # %if.end.987
	movq	728(%rsp), %rsi
	movslq	%r14d, %rdx
	shlq	$3, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, 72(%r15)
	movq	120(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB7_338
# BB#335:                               # %if.then.992
	movq	%rbx, (%rax)
	jmp	.LBB7_338
.LBB7_325:                              # %if.then.939
	movl	$.L.str.25, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	cos_free
	movl	%r15d, %r14d
	jmp	.LBB7_345
.LBB7_337:                              # %if.else.998
	movq	$0, 72(%r15)
.LBB7_338:                              # %cleanup.1009
	movq	616(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rax, 8(%rbx)
	movl	$.L.str.25, %esi
	callq	cos_free
	movq	616(%rsp), %rax
	movq	%rbx, 64(%rax)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	callq	cos_write_object
	jmp	.LBB7_339
.LBB7_336:                              # %cleanup.994
	movl	$.L.str.25, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	cos_free
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_330:
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_123:                              # %if.then.319
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	120(%rsp), %r12         # 8-byte Reload
	movq	48(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB7_126
# BB#124:                               # %if.then.323
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdx
	leaq	612(%rsp), %rsi
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	gs_colorspace_set_icc_equivalent
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#125:                               # %if.then.323.if.end.330_crit_edge
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	48(%rax), %rdx
.LBB7_126:                              # %if.end.330
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	pdf_iccbased_color_space
	movl	%eax, %r15d
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	xorps	%xmm0, %xmm0
	ucomiss	6416(%rax), %xmm0
	ja	.LBB7_129
# BB#127:                               # %lor.lhs.false.340
	movss	6420(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	ja	.LBB7_129
# BB#128:
	movq	%r12, 120(%rsp)         # 8-byte Spill
	jmp	.LBB7_323
.LBB7_83:                               # %if.then.196
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	120(%rsp), %r12         # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	48(%rax), %rdx
	testq	%rdx, %rdx
	jne	.LBB7_86
# BB#84:                                # %if.then.199
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdx
	leaq	612(%rsp), %rsi
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	gs_colorspace_set_icc_equivalent
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#85:                                # %if.then.199.if.end.206_crit_edge
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	48(%rax), %rdx
.LBB7_86:                               # %if.end.206
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	pdf_iccbased_color_space
	movl	%eax, %r15d
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	xorps	%xmm0, %xmm0
	ucomiss	6416(%rax), %xmm0
	ja	.LBB7_129
# BB#87:                                # %lor.lhs.false.215
	movss	6420(%rax), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_88
.LBB7_129:                              # %if.then.222
	addq	$6416, %rax             # imm = 0x1910
	movq	%rax, 728(%rsp)
	movq	%r12, 120(%rsp)         # 8-byte Spill
	jmp	.LBB7_323
.LBB7_88:
	movq	%r12, 120(%rsp)         # 8-byte Spill
	jmp	.LBB7_323
.LBB7_120:
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_136:                              # %cal
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	pdf_put_lab_color_space
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	144(%rsp), %r13         # 8-byte Reload
	js	.LBB7_345
.LBB7_137:                              # %if.end.391
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	pdf_finish_cie_space
	jmp	.LBB7_322
.LBB7_139:                              # %for.cond.i.535
	movss	6424(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_141
	jnp	.LBB7_347
	jmp	.LBB7_141
.LBB7_347:                              # %lor.lhs.false.i.543.1
	movss	6428(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_141
	jp	.LBB7_141
# BB#348:                               # %for.cond.i.535.1
	movss	6432(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_141
	jp	.LBB7_141
# BB#349:                               # %lor.lhs.false.i.543.2
	movss	6436(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_141
	jp	.LBB7_141
# BB#350:                               # %for.cond.i.535.2
	movl	$1, %eax
	jmp	.LBB7_141
.LBB7_140:                              # %lor.lhs.false.i.543
	movss	6420(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_141
	jnp	.LBB7_139
.LBB7_141:                              # %cie_ranges_are_0_1.exit546
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	cmpl	$0, 128(%r8)
	je	.LBB7_148
# BB#142:                               # %land.lhs.true.i
	cmpl	$0, 2216(%r8)
	je	.LBB7_148
# BB#143:                               # %land.lhs.true.9.i
	cmpl	$0, 4304(%r8)
	je	.LBB7_148
# BB#144:                               # %if.then.i
	cmpl	$0, 6500(%r8)
	je	.LBB7_146
# BB#145:                               # %if.then.20.i
	leaq	64(%r8), %r15
	movl	$2, %ebx
	jmp	.LBB7_152
.LBB7_146:                              # %if.end.i
	cmpl	$0, 100(%r8)
	je	.LBB7_148
# BB#147:
	leaq	6464(%r8), %r15
	movl	$2, %ebx
	jmp	.LBB7_152
.LBB7_148:                              # %if.end.29.i
	xorl	%r15d, %r15d
	cmpl	$0, 6512(%r8)
	movl	$0, %ebx
	je	.LBB7_152
# BB#149:                               # %land.lhs.true.37.i
	xorl	%r15d, %r15d
	cmpl	$0, 14784(%r8)
	movl	$0, %ebx
	je	.LBB7_152
# BB#150:                               # %land.lhs.true.46.i
	xorl	%r15d, %r15d
	cmpl	$0, 23056(%r8)
	movl	$0, %ebx
	je	.LBB7_152
# BB#151:                               # %if.then.55.i
	xorl	%r15d, %r15d
	cmpl	$0, 6500(%r8)
	leaq	64(%r8), %rcx
	cmovneq	%rcx, %r15
	setne	%cl
	movzbl	%cl, %ebx
.LBB7_152:                              # %cie_cached_abc_is_one_step.exit
	testl	%eax, %eax
	je	.LBB7_183
# BB#153:                               # %if.then.403
	cmpl	$1, %ebx
	jne	.LBB7_154
# BB#168:                               # %sw.bb.429
	movss	168(%r8), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	848(%r8), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 136(%rsp)        # 4-byte Spill
	movss	1532(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movss	2212(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#169:                               # %lor.lhs.false.i.i.662
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	136(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_170
	jnp	.LBB7_183
.LBB7_170:                              # %lor.lhs.false.i.i.662
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_183
# BB#171:                               # %lor.lhs.false.4.i.i.666
	xorpd	%xmm0, %xmm0
	movss	136(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_183
# BB#172:                               # %if.end.11.i.i.676
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	divsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %r14
	callq	log
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	136(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%r14, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#173:                               # %land.lhs.true.437
	movss	2256(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	2936(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	3620(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 64(%rsp)         # 4-byte Spill
	movss	4300(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#174:                               # %lor.lhs.false.i.i.695
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	80(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_175
	jnp	.LBB7_183
.LBB7_175:                              # %lor.lhs.false.i.i.695
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_183
# BB#176:                               # %lor.lhs.false.4.i.i.699
	xorpd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_183
# BB#177:                               # %if.end.11.i.i.709
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	64(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %r14
	callq	log
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%r14, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#178:                               # %land.lhs.true.445
	movss	4344(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	5024(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movss	5708(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 48(%rsp)         # 4-byte Spill
	movss	6388(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 64(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
	jmp	.LBB7_179
.LBB7_154:                              # %if.then.403
	cmpl	$2, %ebx
	jne	.LBB7_183
# BB#155:                               # %sw.bb.404
	movss	8636(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	10676(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 136(%rsp)        # 4-byte Spill
	movss	12728(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movss	14768(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#156:                               # %lor.lhs.false.i.i.563
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	136(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_157
	jnp	.LBB7_183
.LBB7_157:                              # %lor.lhs.false.i.i.563
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_183
# BB#158:                               # %lor.lhs.false.4.i.i.567
	xorpd	%xmm0, %xmm0
	movss	136(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_183
# BB#159:                               # %if.end.11.i.i.577
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	divsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %r14
	callq	log
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	136(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%r14, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#160:                               # %land.lhs.true.411
	movss	16908(%r8), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	18948(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 80(%rsp)         # 4-byte Spill
	movss	21000(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 64(%rsp)         # 4-byte Spill
	movss	23040(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#161:                               # %lor.lhs.false.i.i.596
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	80(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_162
	jnp	.LBB7_183
.LBB7_162:                              # %lor.lhs.false.i.i.596
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_183
# BB#163:                               # %lor.lhs.false.4.i.i.600
	xorpd	%xmm0, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_183
# BB#164:                               # %if.end.11.i.i.610
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	64(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %r14
	callq	log
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%r14, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#165:                               # %land.lhs.true.419
	movss	25180(%r8), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	27220(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 72(%rsp)         # 4-byte Spill
	movss	29272(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 48(%rsp)         # 4-byte Spill
	movss	31312(%r8), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 64(%rsp)         # 4-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#166:                               # %lor.lhs.false.i.i.629
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	72(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_167
	jnp	.LBB7_183
.LBB7_167:                              # %lor.lhs.false.i.i.629
	jmp	.LBB7_180
.LBB7_179:                              # %lor.lhs.false.i.i.728
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	xorps	%xmm1, %xmm1
	movss	72(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB7_180
	jnp	.LBB7_183
.LBB7_180:                              # %lor.lhs.false.i.i.728
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_183
# BB#181:                               # %lor.lhs.false.4.i.i.732
	xorpd	%xmm0, %xmm0
	movss	72(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	64(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	jne	.LBB7_183
# BB#182:                               # %if.end.11.i.i.742
	movss	72(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	48(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	divsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r8, %r14
	callq	log
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	.LCPI7_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	log
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	fabs
	movq	%r14, %r8
	ucomisd	.LCPI7_2(%rip), %xmm0
	jae	.LBB7_183
# BB#218:                               # %calrgb
	movq	%r8, 56(%rsp)           # 8-byte Spill
	leaq	736(%rsp), %rdi
	movl	$.L.str.31, %esi
	callq	cos_c_string_value
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	144(%rsp), %rbp         # 8-byte Reload
	js	.LBB7_345
# BB#219:                               # %if.end.535
	movl	$.L.str.28, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB7_220
# BB#221:                               # %if.end.540
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 136(%rsp)        # 4-byte Spill
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	ucomiss	.LCPI7_1(%rip), %xmm0
	movq	%rbp, %r13
	jne	.LBB7_224
	jp	.LBB7_224
# BB#222:                               # %if.end.540
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_224
	jp	.LBB7_224
# BB#223:                               # %if.end.540
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_224
	jnp	.LBB7_231
.LBB7_224:                              # %if.then.552
	movq	32(%rbx), %rdi
	movl	$.L.str.47, %esi
	callq	cos_array_alloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB7_225
# BB#226:                               # %if.end.i.766
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_229
# BB#227:                               # %if.end.i.815
	movss	136(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_229
# BB#228:                               # %cos_array_add_vector3.exit821
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_229
# BB#230:                               # %cos_dict_put_c_key_vector3.exit
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
.LBB7_231:                              # %if.end.558
	cmpl	$0, 36(%r15)
	jne	.LBB7_137
# BB#232:                               # %if.then.561
	movl	$.L.str.32, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB7_233
# BB#234:                               # %if.end.566
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#235:                               # %if.end.i.775
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#236:                               # %cos_array_add_vector3.exit
	movss	8(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#237:                               # %lor.lhs.false.570
	movss	12(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#238:                               # %if.end.i.785
	movss	16(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#239:                               # %cos_array_add_vector3.exit791
	movss	20(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#240:                               # %lor.lhs.false.574
	movss	24(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#241:                               # %if.end.i.800
	movss	28(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#242:                               # %cos_array_add_vector3.exit806
	movss	32(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#243:                               # %lor.lhs.false.578
	leaq	736(%rsp), %rdi
	movq	%r12, %rsi
	callq	cos_object_value
	movl	$.L.str.33, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	movq	%rax, %rcx
	callq	cos_dict_put
	jmp	.LBB7_135
.LBB7_183:                              # %if.end.457
	leaq	6416(%r8), %r14
	movss	6464(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_201
	jp	.LBB7_201
# BB#184:                               # %land.lhs.true.i.750
	movss	6468(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_201
	jp	.LBB7_201
# BB#185:                               # %land.lhs.true.4.i
	movss	6472(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_201
	jp	.LBB7_201
# BB#186:                               # %land.lhs.true.8.i
	movss	6476(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_201
	jp	.LBB7_201
# BB#187:                               # %land.lhs.true.12.i
	movss	6480(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_201
	jp	.LBB7_201
# BB#188:                               # %land.lhs.true.17.i
	movss	6484(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_201
	jp	.LBB7_201
# BB#189:                               # %land.lhs.true.22.i
	movss	6488(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_201
	jp	.LBB7_201
# BB#190:                               # %land.lhs.true.26.i
	movss	6492(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_201
	jp	.LBB7_201
# BB#191:                               # %land.lhs.true.31.i
	movss	6496(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_5(%rip), %xmm0
	jne	.LBB7_201
	jp	.LBB7_201
# BB#192:                               # %land.lhs.true.36.i
	cmpl	$0, 100(%r8)
	je	.LBB7_201
# BB#193:                               # %for.cond.preheader.i
	movss	8600(%r8), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	8608(%r8), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movss	16872(%r8), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movss	25144(%r8), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movss	25152(%r8), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	leaq	8636(%r8), %r13
	movq	%r8, 56(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
.LBB7_195:                              # %for.body.i.760
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	divsd	.LCPI7_6(%rip), %xmm1
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movss	(%r13), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI7_7(%rip), %xmm0
	divsd	.LCPI7_8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	56(%rsp), %r8           # 8-byte Reload
	jbe	.LBB7_201
# BB#196:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB7_195 Depth=1
	movss	16880(%r8), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	136(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	%xmm1, %xmm0
	movss	8272(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI7_9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_201
# BB#197:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB7_195 Depth=1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	136(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movss	16552(%r13), %xmm1      # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI7_10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_201
# BB#198:                               # %land.lhs.true.39.i
                                        #   in Loop: Header=BB7_195 Depth=1
	movsd	136(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LCPI7_13(%rip), %xmm1  # xmm1 = mem[0],zero
	cmpnlesd	%xmm2, %xmm1
	addsd	.LCPI7_11(%rip), %xmm2
	mulsd	.LCPI7_12(%rip), %xmm2
	andpd	%xmm1, %xmm2
	andnpd	%xmm0, %xmm1
	orpd	%xmm1, %xmm2
	movsd	%xmm2, 136(%rsp)        # 8-byte Spill
	movss	168(%r8,%r12,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	104(%r8), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_201
# BB#199:                               # %land.lhs.true.i.25.i
                                        #   in Loop: Header=BB7_195 Depth=1
	movss	2256(%r8,%r12,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	108(%r8), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	136(%rsp), %xmm1        # 8-byte Folded Reload
	subsd	%xmm1, %xmm0
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_201
# BB#200:                               # %land.rhs.i.27.i
                                        #   in Loop: Header=BB7_195 Depth=1
	movss	4344(%r8,%r12,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	112(%r8), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	136(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	movq	%r8, %rbp
	callq	fabs
	movq	%rbp, %r8
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_201
# BB#194:                               # %for.cond.i.754
                                        #   in Loop: Header=BB7_195 Depth=1
	incq	%r12
	addq	$12, %r13
	cmpq	$511, %r12              # imm = 0x1FF
	jle	.LBB7_195
# BB#215:                               # %if.then.460
	movl	$.L.str.28, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB7_136
# BB#216:
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_201:                              # %if.else.470
	movq	152(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 30760(%rdi)
	jne	.LBB7_217
# BB#202:                               # %land.lhs.true.473
	cmpl	$0, 9524(%rdi)
	je	.LBB7_203
.LBB7_217:                              # %if.else.524
	leaq	728(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$.L.str.30, %ecx
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%r14, %r9
	callq	pdf_convert_cie_space
	movl	%eax, %r15d
	movq	144(%rsp), %r13         # 8-byte Reload
	jmp	.LBB7_323
.LBB7_203:                              # %if.then.476
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	48(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB7_206
# BB#204:                               # %if.then.480
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdx
	leaq	612(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_colorspace_set_icc_equivalent
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_345
# BB#205:                               # %if.then.480.if.end.487_crit_edge
	movq	48(%rbx), %rdx
.LBB7_206:                              # %if.end.487
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	pdf_iccbased_color_space
	movl	%eax, %r15d
	movq	72(%rbx), %rcx
	leaq	6416(%rcx), %rax
	xorps	%xmm0, %xmm0
	ucomiss	6416(%rcx), %xmm0
	ja	.LBB7_208
# BB#207:                               # %if.end.487
	movss	6420(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_209
.LBB7_208:                              # %if.then.514
	movq	%rax, 728(%rsp)
.LBB7_209:                              # %if.end.520
	xorps	%xmm0, %xmm0
	ucomiss	6424(%rcx), %xmm0
	ja	.LBB7_211
# BB#210:                               # %if.end.520
	movss	6428(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	jbe	.LBB7_212
.LBB7_211:                              # %if.then.514.1
	movq	%rax, 728(%rsp)
.LBB7_212:                              # %if.end.520.1
	xorps	%xmm0, %xmm0
	ucomiss	6432(%rcx), %xmm0
	ja	.LBB7_346
# BB#213:                               # %if.end.520.1
	movss	6436(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_1(%rip), %xmm0
	ja	.LBB7_346
# BB#214:
	movq	144(%rsp), %r13         # 8-byte Reload
	jmp	.LBB7_323
.LBB7_346:                              # %if.then.514.2
	movq	%rax, 728(%rsp)
	movq	144(%rsp), %r13         # 8-byte Reload
	jmp	.LBB7_323
.LBB7_220:
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_229:                              # %if.then.3.i
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	cos_free
	jmp	.LBB7_345
.LBB7_225:
	movl	$-25, %r14d
	jmp	.LBB7_345
.LBB7_233:
	movl	$-25, %r14d
	jmp	.LBB7_345
.Lfunc_end7:
	.size	pdf_color_space_named, .Lfunc_end7-pdf_color_space_named
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_279
	.quad	.LBB7_260
	.quad	.LBB7_244
	.quad	.LBB7_138
	.quad	.LBB7_74
	.quad	.LBB7_312
	.quad	.LBB7_278
	.quad	.LBB7_317
	.quad	.LBB7_321

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_convert_ICC
	.align	16, 0x90
	.type	pdf_convert_ICC,@function
pdf_convert_ICC:                        # @pdf_convert_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 64
.Ltmp83:
	.cfi_offset %rbx, -48
.Ltmp84:
	.cfi_offset %r12, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	64(%rbx), %rdi
	callq	gsicc_get_default_type
.LBB8_2:                                # %if.end
	cmpl	$10, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	40(%rbx), %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
.LBB8_4:                                # %if.end.5
	xorl	%ebp, %ebp
	cmpl	$12, %eax
	jne	.LBB8_17
# BB#5:                                 # %if.then.7
	cmpq	$0, 64(%rbx)
	je	.LBB8_7
# BB#6:                                 # %lor.lhs.false
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	jbe	.LBB8_17
.LBB8_7:                                # %if.then.11
	cmpq	$0, 40(%rbx)
	jne	.LBB8_17
# BB#8:                                 # %if.else
	leaq	8(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	testl	%eax, %eax
	js	.LBB8_16
# BB#9:                                 # %if.end.18
	movq	8(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	cmpl	$4, %eax
	je	.LBB8_14
# BB#10:                                # %if.end.18
	cmpl	$3, %eax
	jne	.LBB8_11
# BB#13:                                # %sw.bb.21
	movq	16(%r15), %rsi
	jmp	.LBB8_15
.LBB8_14:                               # %sw.bb.23
	movq	(%r15), %rsi
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.18
	cmpl	$1, %eax
	jne	.LBB8_17
# BB#12:                                # %sw.bb
	movq	8(%r15), %rsi
.LBB8_15:                               # %cleanup.thread
	movq	%r14, %rdi
	callq	cos_c_string_value
	movl	$-1, %eax
.LBB8_16:                               # %cleanup.thread
	movl	%eax, %ebp
.LBB8_17:                               # %cleanup.29
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_convert_ICC, .Lfunc_end8-pdf_convert_ICC
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pdf_separation_color_space,@function
pdf_separation_color_space:             # @pdf_separation_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 192
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	%r12, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	64(%r12), %rdi
	callq	gsicc_get_default_type
.LBB9_2:                                # %if.end
	cmpl	$2, %eax
	jne	.LBB9_3
# BB#25:                                # %land.lhs.true.58
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 9564(%r13)
	je	.LBB9_33
# BB#26:                                # %land.lhs.true.61
	cmpl	$1, 30456(%r13)
	jne	.LBB9_33
# BB#27:                                # %if.then.64
	movq	%r15, %rbx
	movq	$0, 96(%rsp)
	movl	$0, 92(%rsp)
	leaq	92(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%r14, %rdi
	callq	*8(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#28:                                # %if.end.77
	movss	76(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	64(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	68(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm2
	addss	72(%rsp), %xmm0
	movss	.LCPI9_0(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm3
	subss	%xmm1, %xmm3
	movaps	%xmm5, %xmm4
	cmpltss	%xmm1, %xmm4
	andnps	%xmm3, %xmm4
	movss	%xmm4, 64(%rsp)
	movaps	%xmm5, %xmm1
	subss	%xmm2, %xmm1
	movaps	%xmm5, %xmm3
	cmpltss	%xmm2, %xmm3
	andnps	%xmm1, %xmm3
	movss	%xmm3, 68(%rsp)
	movaps	%xmm5, %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm5, %xmm2
	cmpltss	%xmm0, %xmm2
	andnps	%xmm1, %xmm2
	movss	%xmm2, 72(%rsp)
	movl	$1065353216, 92(%rsp)   # imm = 0x3F800000
	leaq	92(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movq	%r14, %rdi
	callq	*8(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#29:                                # %if.end.87
	movss	60(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	52(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm2
	addss	56(%rsp), %xmm0
	movss	.LCPI9_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm5
	subss	%xmm1, %xmm3
	movaps	%xmm5, %xmm4
	cmpltss	%xmm1, %xmm4
	andnps	%xmm3, %xmm4
	movss	%xmm4, 48(%rsp)
	movaps	%xmm5, %xmm1
	subss	%xmm2, %xmm1
	movaps	%xmm5, %xmm3
	cmpltss	%xmm2, %xmm3
	andnps	%xmm1, %xmm3
	movss	%xmm3, 52(%rsp)
	movaps	%xmm5, %xmm1
	subss	%xmm0, %xmm1
	cmpltss	%xmm0, %xmm5
	andnps	%xmm1, %xmm5
	movss	%xmm5, 56(%rsp)
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %rcx
	leaq	48(%rsp), %r8
	movl	$3, %edx
	movq	%r13, %rdi
	callq	pdf_make_base_space_function
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#30:                                # %if.end.93
	leaq	112(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cos_c_string_value
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#31:                                # %if.then.97
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	cos_array_add_no_copy
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#32:                                # %if.then.100
	leaq	112(%rsp), %rbx
	movl	$.L.str.5, %esi
	jmp	.LBB9_19
.LBB9_3:                                # %if.end
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	cmpl	$1, %eax
	jne	.LBB9_33
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 9560(%r13)
	jne	.LBB9_7
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, 9564(%r13)
	je	.LBB9_33
# BB#6:                                 # %land.lhs.true.4
	cmpl	$2, 30456(%r13)
	jne	.LBB9_33
.LBB9_7:                                # %if.then.6
	movq	%r15, %rbx
	movq	$0, 96(%rsp)
	movl	$0, 92(%rsp)
	leaq	92(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%r14, %rdi
	callq	*8(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#8:                                 # %if.end.11
	movss	64(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	68(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movss	72(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jb	.LBB9_10
# BB#9:                                 # %if.end.11
	ucomiss	%xmm2, %xmm0
	movaps	%xmm2, %xmm3
	jae	.LBB9_11
.LBB9_10:                               # %if.else.i
	movaps	%xmm1, %xmm4
	cmpnless	%xmm0, %xmm4
	movaps	%xmm4, %xmm3
	andps	%xmm0, %xmm3
	andnps	%xmm1, %xmm4
	orps	%xmm3, %xmm4
	movaps	%xmm1, %xmm3
	cmpnless	%xmm2, %xmm3
	movaps	%xmm3, %xmm5
	andnps	%xmm4, %xmm5
	andps	%xmm0, %xmm3
	orps	%xmm5, %xmm3
.LBB9_11:                               # %pdf_SepRGB_ConvertToCMYK.exit
	movss	.LCPI9_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm4
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI9_1(%rip), %xmm6   # xmm6 = mem[0],zero
	movapd	%xmm6, %xmm3
	subsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm4, %xmm2
	subsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm6, %xmm5
	subsd	%xmm1, %xmm5
	subsd	%xmm2, %xmm5
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm5, %xmm1
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm6, %xmm5
	subsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm5
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm5, %xmm0
	movss	%xmm3, 64(%rsp)
	movss	%xmm1, 68(%rsp)
	movss	%xmm0, 72(%rsp)
	movss	%xmm4, 76(%rsp)
	movl	$1065353216, 92(%rsp)   # imm = 0x3F800000
	leaq	92(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movq	%r14, %rdi
	callq	*8(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#12:                                # %if.end.20
	movss	48(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	52(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movss	56(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jb	.LBB9_14
# BB#13:                                # %if.end.20
	ucomiss	%xmm2, %xmm0
	movaps	%xmm2, %xmm3
	jae	.LBB9_15
.LBB9_14:                               # %if.else.i.12
	movaps	%xmm1, %xmm4
	cmpnless	%xmm0, %xmm4
	movaps	%xmm4, %xmm3
	andps	%xmm0, %xmm3
	andnps	%xmm1, %xmm4
	orps	%xmm3, %xmm4
	movaps	%xmm1, %xmm3
	cmpnless	%xmm2, %xmm3
	movaps	%xmm3, %xmm5
	andnps	%xmm4, %xmm5
	andps	%xmm0, %xmm3
	orps	%xmm5, %xmm3
.LBB9_15:                               # %pdf_SepRGB_ConvertToCMYK.exit33
	movss	.LCPI9_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm5
	subss	%xmm3, %xmm5
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI9_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm6
	subsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm5, %xmm2
	subsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm6, %xmm4
	subsd	%xmm1, %xmm4
	subsd	%xmm2, %xmm4
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm4, %xmm1
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm6
	subsd	%xmm2, %xmm6
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm6, %xmm0
	movss	%xmm3, 48(%rsp)
	movss	%xmm1, 52(%rsp)
	movss	%xmm0, 56(%rsp)
	movss	%xmm5, 60(%rsp)
	leaq	96(%rsp), %rsi
	leaq	64(%rsp), %rcx
	leaq	48(%rsp), %r8
	movl	$4, %edx
	movq	%r13, %rdi
	callq	pdf_make_base_space_function
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#16:                                # %if.end.26
	leaq	112(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cos_c_string_value
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#17:                                # %if.then.30
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	cos_array_add_no_copy
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#18:                                # %if.then.33
	leaq	112(%rsp), %rbx
	movl	$.L.str.3, %esi
.LBB9_19:                               # %if.then.33
	movq	%rbx, %rdi
	callq	cos_c_string_value
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#20:                                # %if.then.37
	movq	96(%rsp), %rsi
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	pdf_function_scaled
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#21:                                # %if.then.40
	leaq	112(%rsp), %rsi
	movq	%rbp, %rdi
	callq	cos_array_add
	movl	%eax, %r15d
	cmpq	$0, 192(%rsp)
	je	.LBB9_24
# BB#22:                                # %if.then.40
	testl	%r15d, %r15d
	js	.LBB9_24
# BB#23:                                # %if.then.45
	movq	%rbp, %rdi
	movq	192(%rsp), %rsi
	callq	cos_array_add
	movl	%eax, %r15d
.LBB9_24:                               # %if.end.51
	movq	96(%rsp), %rbx
	movq	24(%r13), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movq	96(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movq	104(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movq	112(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rdi
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB9_41
.LBB9_33:                               # %if.end.124
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	callq	cos_c_string_value
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#34:                                # %lor.lhs.false.128
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	cos_array_add_no_copy
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#35:                                # %lor.lhs.false.131
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	112(%rsp), %rsi
	leaq	104(%rsp), %rdx
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	pdf_color_space_named
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#36:                                # %lor.lhs.false.134
	leaq	112(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#37:                                # %lor.lhs.false.137
	movq	104(%rsp), %rdx
	leaq	112(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	pdf_function_scaled
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#38:                                # %lor.lhs.false.140
	leaq	112(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_41
# BB#39:                                # %lor.lhs.false.143
	xorl	%r15d, %r15d
	cmpq	$0, 192(%rsp)
	je	.LBB9_41
# BB#40:                                # %cond.true
	movq	%rbx, %rdi
	movq	192(%rsp), %rsi
	callq	cos_array_add
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	%eax, %r15d
.LBB9_41:                               # %cleanup.149
	movl	%r15d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_separation_color_space, .Lfunc_end9-pdf_separation_color_space
	.cfi_endproc

	.globl	free_color_space
	.align	16, 0x90
	.type	free_color_space,@function
free_color_space:                       # @free_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp103:
	.cfi_def_cfa_offset 32
.Ltmp104:
	.cfi_offset %rbx, -24
.Ltmp105:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	88(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	1728(%r14), %rdi
	movl	$.L.str.40, %edx
	callq	*24(%rdi)
.LBB10_2:                               # %if.end
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB10_4
# BB#3:                                 # %if.then.4
	movl	$.L.str.41, %esi
	callq	cos_release
	movq	1728(%r14), %rdi
	movq	64(%rbx), %rsi
	movl	$.L.str.42, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbx)
.LBB10_4:                               # %if.end.12
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	free_color_space, .Lfunc_end10-free_color_space
	.cfi_endproc

	.globl	pdf_cs_Pattern_colored
	.align	16, 0x90
	.type	pdf_cs_Pattern_colored,@function
pdf_cs_Pattern_colored:                 # @pdf_cs_Pattern_colored
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	28592(%rdi), %rdx
	movl	$.L.str.43, %ecx
	jmp	pdf_pattern_space       # TAILCALL
.Lfunc_end11:
	.size	pdf_cs_Pattern_colored, .Lfunc_end11-pdf_cs_Pattern_colored
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_pattern_space,@function
pdf_pattern_space:                      # @pdf_pattern_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp110:
	.cfi_def_cfa_offset 48
.Ltmp111:
	.cfi_offset %rbx, -40
.Ltmp112:
	.cfi_offset %r12, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r15), %rcx
	testq	%rcx, %rcx
	jne	.LBB12_3
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	callq	pdf_begin_resource_body
	testl	%eax, %eax
	js	.LBB12_5
# BB#2:                                 # %if.end
	movq	5848(%rbx), %rdi
	movl	$.L.str.48, %esi
	movq	%r12, %rdx
	callq	pprints1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_end_resource
	movq	(%r15), %rax
	movq	64(%rax), %rcx
	movb	$1, 50(%rcx)
	movq	$0, 72(%rax)
	movq	(%r15), %rax
	movq	$0, 88(%rax)
	movq	(%r15), %rcx
.LBB12_3:                               # %if.end.5
	movq	30448(%rbx), %rsi
	movl	$.L.str.39, %edx
	movq	%rbx, %rdi
	callq	pdf_add_resource
	testl	%eax, %eax
	js	.LBB12_5
# BB#4:                                 # %if.end.9
	movq	(%r15), %rax
	movq	64(%rax), %rsi
	movq	%r14, %rdi
	callq	cos_resource_value
	xorl	%eax, %eax
.LBB12_5:                               # %cleanup.12
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	pdf_pattern_space, .Lfunc_end12-pdf_pattern_space
	.cfi_endproc

	.globl	pdf_cs_Pattern_uncolored
	.align	16, 0x90
	.type	pdf_cs_Pattern_uncolored,@function
pdf_cs_Pattern_uncolored:               # @pdf_cs_Pattern_uncolored
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	100(%rdi), %rax
	leaq	28592(%rdi,%rax,8), %rdx
	movq	pdf_cs_Pattern_uncolored.pcs_names(,%rax,8), %rcx
	jmp	pdf_pattern_space       # TAILCALL
.Lfunc_end13:
	.size	pdf_cs_Pattern_uncolored, .Lfunc_end13-pdf_cs_Pattern_uncolored
	.cfi_endproc

	.globl	pdf_cs_Pattern_uncolored_hl
	.align	16, 0x90
	.type	pdf_cs_Pattern_uncolored_hl,@function
pdf_cs_Pattern_uncolored_hl:            # @pdf_cs_Pattern_uncolored_hl
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 32
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	movl	$1, %r9d
	movq	%rax, %rsi
	callq	pdf_color_space_named
	addq	$24, %rsp
	retq
.Lfunc_end14:
	.size	pdf_cs_Pattern_uncolored_hl, .Lfunc_end14-pdf_cs_Pattern_uncolored_hl
	.cfi_endproc

	.globl	pdf_color_space_procsets
	.align	16, 0x90
	.type	pdf_color_space_procsets,@function
pdf_color_space_procsets:               # @pdf_color_space_procsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %rbx, -24
.Ltmp120:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	jmp	.LBB15_1
	.align	16, 0x90
.LBB15_5:                               # %sw.bb.1
                                        #   in Loop: Header=BB15_1 Depth=1
	orb	$4, 26584(%r14)
	movq	40(%rbx), %rdi
.LBB15_1:                               # %csw
                                        # =>This Inner Loop Header: Depth=1
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	je	.LBB15_5
# BB#2:                                 # %csw
	cmpl	$8, %eax
	je	.LBB15_4
# BB#3:                                 # %csw
	testl	%eax, %eax
	jne	.LBB15_6
.LBB15_4:                               # %sw.bb
	movl	26584(%r14), %eax
	orl	$1, %eax
	jmp	.LBB15_7
.LBB15_6:                               # %sw.default
	movl	26584(%r14), %eax
	orl	$2, %eax
.LBB15_7:                               # %sw.epilog
	movl	%eax, 26584(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	pdf_color_space_procsets, .Lfunc_end15-pdf_color_space_procsets
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_color_space_t"
	.size	.L.str, 18

	.type	pdf_color_space_reloc_ptrs,@object # @pdf_color_space_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_color_space_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_pdf_resource
	.quad	pdf_color_space_enum_ptrs
	.size	pdf_color_space_reloc_ptrs, 24

	.type	st_pdf_color_space,@object # @st_pdf_color_space
	.globl	st_pdf_color_space
	.align	8
st_pdf_color_space:
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_color_space_reloc_ptrs
	.size	st_pdf_color_space, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"/WhitePoint"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/BlackPoint"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/DeviceCMYK"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/DeviceGray"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/DeviceRGB"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/Indexed"
	.size	.L.str.6, 9

	.type	pdf_color_space_names,@object # @pdf_color_space_names
	.section	.rodata,"a",@progbits
	.globl	pdf_color_space_names
	.align	8
pdf_color_space_names:
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	pdf_color_space_names, 32

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"/CMYK"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/G"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/RGB"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/I"
	.size	.L.str.10, 3

	.type	pdf_color_space_names_short,@object # @pdf_color_space_names_short
	.section	.rodata,"a",@progbits
	.globl	pdf_color_space_names_short
	.align	8
pdf_color_space_names_short:
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.size	pdf_color_space_names_short, 32

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"pdf_delete_function"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pdf_dselete_function"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pdf_DeviceN"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pdf_make_function(Domain)"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pdf_make_function(Range)"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pdf_make_function(C0)"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pdf_make_function(C1)"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"pdf_make_function"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pdf_color_space(table)"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdf_color_space(palette)"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/Pattern"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\nUnable to convert color space to CMYK, reverting strategy to LeaveColorUnchanged.\n"
	.size	.L.str.22, 84

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\nUnable to convert color space to sRGB, reverting strategy to LeaveColorUnchanged.\n"
	.size	.L.str.23, 84

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\nUnable to convert color space to Gray, reverting strategy to LeaveColorUnchanged.\n"
	.size	.L.str.24, 84

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"pdf_color_space"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GRAY"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/CalGray"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pdf_color_space(dict)"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/Gamma"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"RGB "
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/CalRGB"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"pdf_color_space(Matrix)"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/Matrix"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"CMYK"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"pdf_color_space(DeviceN)"
	.size	.L.str.35, 25

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/Colorants"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"/DeviceN"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/Separation"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/ColorSpace"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"free serialized colour space"
	.size	.L.str.40, 29

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"release ColorSpace object"
	.size	.L.str.41, 26

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"free ColorSpace object"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"[/Pattern]"
	.size	.L.str.43, 11

	.type	pdf_cs_Pattern_uncolored.pcs_names,@object # @pdf_cs_Pattern_uncolored.pcs_names
	.section	.rodata,"a",@progbits
	.align	16
pdf_cs_Pattern_uncolored.pcs_names:
	.quad	0
	.quad	.L.str.44
	.quad	0
	.quad	.L.str.45
	.quad	.L.str.46
	.size	pdf_cs_Pattern_uncolored.pcs_names, 40

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"[/Pattern /DeviceGray]"
	.size	.L.str.44, 23

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"[/Pattern /DeviceRGB]"
	.size	.L.str.45, 22

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"[/Pattern /DeviceCMYK]"
	.size	.L.str.46, 23

	.type	pdf_color_space_enum_ptrs,@object # @pdf_color_space_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pdf_color_space_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.short	88                      # 0x58
	.size	pdf_color_space_enum_ptrs, 8

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"cos_array_from_vector3"
	.size	.L.str.47, 23

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s\n"
	.size	.L.str.48, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
