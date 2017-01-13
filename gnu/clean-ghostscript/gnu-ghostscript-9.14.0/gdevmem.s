	.text
	.file	"gdevmem.bc"
	.align	16, 0x90
	.type	device_memory_enum_ptrs,@function
device_memory_enum_ptrs:                # @device_memory_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#7:                                 # %sw.bb.1
	xorl	%eax, %eax
	cmpl	$0, 1776(%rsi)
	jne	.LBB0_6
# BB#8:                                 # %cond.false.4
	movq	2576(%rsi), %rax
	jmp	.LBB0_6
.LBB0_4:                                # %sw.bb
	xorl	%eax, %eax
	cmpl	$0, 1760(%rsi)
	jne	.LBB0_6
# BB#5:                                 # %cond.false
	movq	1744(%rsi), %rax
.LBB0_6:                                # %cond.end
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_2:                                # %entry
	cmpl	$2, %ecx
	jne	.LBB0_3
# BB#9:                                 # %sw.bb.8
	movq	2584(%rsi), %rax
	movq	%rax, (%r8)
	movl	2592(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.LBB0_3:                                # %sw.default
	addl	$-3, %ecx
	movl	$1736, %edx             # imm = 0x6C8
	movl	$st_device_forward, %r9d
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_memory_enum_ptrs, .Lfunc_end0-device_memory_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_memory_reloc_ptrs,@function
device_memory_reloc_ptrs:               # @device_memory_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r15
	cmpl	$0, 1760(%r15)
	je	.LBB1_1
# BB#11:                                # %if.else
	cmpl	$0, 1776(%r15)
	jne	.LBB1_13
# BB#12:                                # %if.then.11
	movq	(%r14), %rax
	movq	2576(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 2576(%r15)
	jmp	.LBB1_13
.LBB1_1:                                # %if.then
	movq	1744(%r15), %rbx
	movl	836(%r15), %r12d
	cmpl	$0, 848(%r15)
	je	.LBB1_3
# BB#2:                                 # %if.then.2
	imull	100(%r15), %r12d
.LBB1_3:                                # %if.end
	movq	(%r14), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1744(%r15)
	subq	%rax, %rbx
	negq	%rbx
	testl	%r12d, %r12d
	jle	.LBB1_10
# BB#4:                                 # %for.body.lr.ph
	leal	-1(%r12), %ecx
	xorl	%eax, %eax
	testb	$3, %r12b
	je	.LBB1_7
# BB#5:                                 # %for.body.prol.preheader
	movl	%r12d, %edx
	andl	$3, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_6:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	2576(%r15), %rsi
	addq	%rbx, (%rsi,%rax,8)
	incq	%rax
	cmpl	%eax, %edx
	jne	.LBB1_6
.LBB1_7:                                # %for.body.lr.ph.split
	cmpl	$3, %ecx
	jb	.LBB1_10
# BB#8:                                 # %for.body.lr.ph.split.split
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB1_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	2576(%r15), %rdx
	addq	%rbx, (%rdx,%rax,8)
	movq	2576(%r15), %rdx
	addq	%rbx, 8(%rdx,%rax,8)
	movq	2576(%r15), %rdx
	addq	%rbx, 16(%rdx,%rax,8)
	movq	2576(%r15), %rdx
	addq	%rbx, 24(%rdx,%rax,8)
	addq	$4, %rax
	cmpl	%eax, %ecx
	jne	.LBB1_9
.LBB1_10:                               # %for.end
	addq	%rbx, 2576(%r15)
.LBB1_13:                               # %if.end.17
	movq	(%r14), %rax
	leaq	2584(%r15), %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	movl	$1736, %esi             # imm = 0x6C8
	movl	$st_device_forward, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*st_device_forward+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_memory_reloc_ptrs, .Lfunc_end1-device_memory_reloc_ptrs
	.cfi_endproc

	.globl	gdev_mem_device_for_bits
	.align	16, 0x90
	.type	gdev_mem_device_for_bits,@function
gdev_mem_device_for_bits:               # @gdev_mem_device_for_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$mem_x_device, %eax
	cmpl	$64, %edi
	ja	.LBB2_2
# BB#1:                                 # %cond.false
	movslq	%edi, %rax
	movq	mem_devices(,%rax,8), %rax
.LBB2_2:                                # %cond.end
	retq
.Lfunc_end2:
	.size	gdev_mem_device_for_bits, .Lfunc_end2-gdev_mem_device_for_bits
	.cfi_endproc

	.globl	gdev_mem_word_device_for_bits
	.align	16, 0x90
	.type	gdev_mem_word_device_for_bits,@function
gdev_mem_word_device_for_bits:          # @gdev_mem_word_device_for_bits
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$64, %edi
	ja	.LBB3_2
# BB#1:                                 # %cond.false
	movslq	%edi, %rax
	movq	mem_word_devices(,%rax,8), %rax
.LBB3_2:                                # %cond.end
	retq
.Lfunc_end3:
	.size	gdev_mem_word_device_for_bits, .Lfunc_end3-gdev_mem_word_device_for_bits
	.cfi_endproc

	.globl	gs_device_is_memory
	.align	16, 0x90
	.type	gs_device_is_memory,@function
gs_device_is_memory:                    # @gs_device_is_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %ecx
	cmpq	$64, %rcx
	movl	$mem_x_device, %edx
	ja	.LBB4_2
# BB#1:                                 # %gdev_mem_device_for_bits.exit
	movq	mem_devices(,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB4_5
.LBB4_2:                                # %land.lhs.true
	movq	1384(%rdi), %rsi
	movl	$1, %eax
	cmpq	1384(%rdx), %rsi
	je	.LBB4_9
# BB#3:                                 # %if.end
	cmpl	$64, %ecx
	jbe	.LBB4_5
# BB#4:
	xorl	%eax, %eax
	jmp	.LBB4_8
.LBB4_5:                                # %gdev_mem_word_device_for_bits.exit
	movq	mem_word_devices(,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB4_6
# BB#7:                                 # %land.rhs
	movq	1384(%rdi), %rcx
	cmpq	1384(%rax), %rcx
	sete	%al
	jmp	.LBB4_8
.LBB4_6:
	xorl	%eax, %eax
.LBB4_8:                                # %land.end
	movzbl	%al, %eax
.LBB4_9:                                # %cleanup
	retq
.Lfunc_end4:
	.size	gs_device_is_memory, .Lfunc_end4-gs_device_is_memory
	.cfi_endproc

	.globl	gs_make_mem_device
	.align	16, 0x90
	.type	gs_make_mem_device,@function
gs_make_mem_device:                     # @gs_make_mem_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 160
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %ebp
	movq	%rdi, %rbx
	movl	$1, %ecx
	callq	gx_device_init
	movq	$st_device_memory, 32(%rbx)
	cmpl	$1, %ebp
	jne	.LBB5_1
# BB#3:                                 # %sw.bb.1
	movq	$gx_page_device_get_page_device, 1296(%rbx)
	jmp	.LBB5_4
.LBB5_1:                                # %entry
	cmpl	$-1, %ebp
	jne	.LBB5_4
# BB#2:                                 # %sw.bb
	movq	$gx_default_get_page_device, 1296(%rbx)
.LBB5_4:                                # %sw.epilog
	testq	%r14, %r14
	je	.LBB5_5
# BB#9:                                 # %if.else.16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_target
	movq	%rbx, %rdi
	callq	gx_device_forward_color_procs
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_copy_color_procs
	movups	816(%r14), %xmm0
	movups	%xmm0, 816(%rbx)
	movl	1112(%r14), %eax
	movl	%eax, 1112(%rbx)
	movq	1656(%r14), %rax
	movq	%rax, 1656(%rbx)
	movzwl	108(%rbx), %ecx
	jmp	.LBB5_10
.LBB5_5:                                # %if.then
	movzwl	108(%rbx), %ecx
	cmpl	$1, %ecx
	jne	.LBB5_7
# BB#6:                                 # %if.then.6
	movq	$1, 816(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
	movq	$0, 816(%rbx)
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
.LBB5_8:                                # %if.end
	movq	%rax, 824(%rbx)
	movl	$0, 1112(%rbx)
.LBB5_10:                               # %if.end.24
	movzwl	%cx, %eax
	cmpl	$1, %eax
	jne	.LBB5_29
# BB#11:                                # %if.then.30
	testq	%r14, %r14
	je	.LBB5_12
# BB#13:                                # %for.cond.preheader
	movslq	100(%r14), %rax
	testq	%rax, %rax
	jle	.LBB5_25
# BB#14:                                # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB5_24
# BB#15:                                # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-16, %rcx
	je	.LBB5_23
# BB#16:                                # %vector.body.preheader
	leaq	-16(%rax), %rdx
	movl	%edx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB5_19
# BB#17:                                # %vector.body.prol.preheader
	leal	-16(%rax), %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB5_18:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, (%rsp,%rsi,2)
	movaps	%xmm0, 16(%rsp,%rsi,2)
	addq	$16, %rsi
	incq	%rdi
	jne	.LBB5_18
.LBB5_19:                               # %vector.body.preheader.split
	cmpq	$48, %rdx
	jb	.LBB5_22
# BB#20:                                # %vector.body.preheader.split.split
	movq	%rax, %rdx
	andq	$-16, %rdx
	subq	%rsi, %rdx
	leaq	112(%rsp,%rsi,2), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB5_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rdx
	jne	.LBB5_21
.LBB5_22:
	movq	%rcx, %rdx
.LBB5_23:                               # %middle.block
	cmpq	%rdx, %rax
	je	.LBB5_25
	.align	16, 0x90
.LBB5_24:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rsp,%rdx,2)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB5_24
.LBB5_25:                               # %lor.end
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	leaq	2584(%rbx), %rcx
	testq	%rax, %rax
	je	.LBB5_27
# BB#26:                                # %if.then.i
	movups	mem_mono_b_w_palette(%rip), %xmm0
	jmp	.LBB5_28
.LBB5_12:                               # %lor.end.thread
	leaq	2584(%rbx), %rcx
	movups	mem_mono_b_w_palette(%rip), %xmm0
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.i
	movups	mem_mono_w_b_palette(%rip), %xmm0
.LBB5_28:                               # %gdev_mem_mono_set_inverted.exit
	movups	%xmm0, (%rcx)
.LBB5_29:                               # %if.end.43
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	%rbx, %rdi
	callq	gx_device_fill_in_procs
	movl	$0, 2788(%rbx)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_make_mem_device, .Lfunc_end5-gs_make_mem_device
	.cfi_endproc

	.globl	gdev_mem_mono_set_inverted
	.align	16, 0x90
	.type	gdev_mem_mono_set_inverted,@function
gdev_mem_mono_set_inverted:             # @gdev_mem_mono_set_inverted
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$2584, %rdi             # imm = 0xA18
	testl	%esi, %esi
	je	.LBB6_2
# BB#1:                                 # %if.then
	movups	mem_mono_b_w_palette(%rip), %xmm0
	movups	%xmm0, (%rdi)
	retq
.LBB6_2:                                # %if.else
	movups	mem_mono_w_b_palette(%rip), %xmm0
	movups	%xmm0, (%rdi)
	retq
.Lfunc_end6:
	.size	gdev_mem_mono_set_inverted, .Lfunc_end6-gdev_mem_mono_set_inverted
	.cfi_endproc

	.globl	gs_make_mem_device_with_copydevice
	.align	16, 0x90
	.type	gs_make_mem_device_with_copydevice,@function
gs_make_mem_device_with_copydevice:     # @gs_make_mem_device_with_copydevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%r8, %r15
	movl	%ecx, %ebx
	movq	%rdi, %r14
	movl	$-1, %eax
	testq	%rdx, %rdx
	je	.LBB7_19
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdi
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB7_19
# BB#2:                                 # %if.end.3
	cmpl	$1, %ebx
	jne	.LBB7_3
# BB#5:                                 # %sw.bb.4
	movq	8(%rsp), %rax
	movq	$gx_page_device_get_page_device, 1296(%rax)
	jmp	.LBB7_6
.LBB7_3:                                # %if.end.3
	cmpl	$-1, %ebx
	jne	.LBB7_6
# BB#4:                                 # %sw.bb
	movq	8(%rsp), %rax
	movq	$gx_default_get_page_device, 1296(%rax)
.LBB7_6:                                # %sw.epilog
	movq	8(%rsp), %rbx
	testq	%r15, %r15
	je	.LBB7_7
# BB#10:                                # %if.else.22
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_device_set_target
	movq	8(%rsp), %rdi
	callq	gx_device_forward_color_procs
	movq	8(%rsp), %rdi
	movq	%r15, %rsi
	callq	gx_device_copy_color_procs
	movq	8(%rsp), %rbx
	movups	816(%r15), %xmm0
	movups	%xmm0, 816(%rbx)
	movl	1112(%r15), %eax
	movl	%eax, 1112(%rbx)
	movzwl	108(%rbx), %ecx
	jmp	.LBB7_11
.LBB7_7:                                # %if.then.8
	movzwl	108(%rbx), %ecx
	cmpl	$1, %ecx
	jne	.LBB7_9
# BB#8:                                 # %if.then.11
	movl	$1, %eax
	movd	%rax, %xmm0
	movups	%xmm0, 816(%rbx)
	movl	$0, 1112(%rbx)
	jmp	.LBB7_11
.LBB7_9:                                # %if.else
	movq	$0, 816(%rbx)
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
	movq	%rax, 824(%rbx)
	movl	$0, 1112(%rbx)
.LBB7_11:                               # %if.end.27
	movzwl	%cx, %eax
	cmpl	$1, %eax
	jne	.LBB7_18
# BB#12:                                # %if.then.33
	movw	$0, 6(%rsp)
	movl	$0, 2(%rsp)
	testq	%r15, %r15
	je	.LBB7_13
# BB#14:                                # %lor.end
	leaq	2(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	addq	$2584, %rbx             # imm = 0xA18
	testq	%rax, %rax
	je	.LBB7_16
# BB#15:                                # %if.then.i
	movups	mem_mono_b_w_palette(%rip), %xmm0
	jmp	.LBB7_17
.LBB7_13:                               # %lor.end.thread
	addq	$2584, %rbx             # imm = 0xA18
	movups	mem_mono_b_w_palette(%rip), %xmm0
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.i
	movups	mem_mono_w_b_palette(%rip), %xmm0
.LBB7_17:                               # %gdev_mem_mono_set_inverted.exit
	movups	%xmm0, (%rbx)
	movq	8(%rsp), %rbx
.LBB7_18:                               # %if.end.42
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	8(%rsp), %rdi
	callq	gx_device_fill_in_procs
	movq	8(%rsp), %rax
	movl	$0, 2788(%rax)
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB7_19:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gs_make_mem_device_with_copydevice, .Lfunc_end7-gs_make_mem_device_with_copydevice
	.cfi_endproc

	.globl	gs_make_mem_mono_device_with_copydevice
	.align	16, 0x90
	.type	gs_make_mem_mono_device_with_copydevice,@function
gs_make_mem_mono_device_with_copydevice: # @gs_make_mem_mono_device_with_copydevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	%rdi, %r14
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB8_3
# BB#1:                                 # %if.end
	leaq	(%rsp), %rdi
	movl	$mem_mono_device, %esi
	movq	%rcx, %rdx
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB8_3
# BB#2:                                 # %if.end.3
	movq	(%rsp), %rax
	movq	$gx_default_get_page_device, 1296(%rax)
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_device_set_target
	movq	(%rsp), %rax
	movq	$gx_forward_get_profile, 1680(%rax)
	movq	(%rsp), %rdi
	movups	mem_mono_b_w_palette(%rip), %xmm0
	movups	%xmm0, 2584(%rdi)
	callq	check_device_separable
	movq	(%rsp), %rdi
	callq	gx_device_fill_in_procs
	movq	(%rsp), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB8_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	gs_make_mem_mono_device_with_copydevice, .Lfunc_end8-gs_make_mem_mono_device_with_copydevice
	.cfi_endproc

	.globl	gs_make_mem_mono_device
	.align	16, 0x90
	.type	gs_make_mem_mono_device,@function
gs_make_mem_mono_device:                # @gs_make_mem_mono_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -24
.Ltmp32:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$mem_mono_device, %esi
	movl	$1, %ecx
	movq	%rax, %rdx
	callq	gx_device_init
	movq	$gx_default_get_page_device, 1296(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_target
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, 1736(%rbx)
	movups	mem_mono_b_w_palette(%rip), %xmm0
	movups	%xmm0, 2584(%rbx)
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	%rbx, %rdi
	callq	gx_device_fill_in_procs
	movq	$gx_forward_get_profile, 1680(%rbx)
	movq	$gx_forward_set_graphics_type_tag, 1688(%rbx)
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movl	1112(%r14), %eax
.LBB9_2:                                # %cond.end
	movl	%eax, 1112(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	gs_make_mem_mono_device, .Lfunc_end9-gs_make_mem_mono_device
	.cfi_endproc

	.globl	gdev_mem_bits_size
	.align	16, 0x90
	.type	gdev_mem_bits_size,@function
gdev_mem_bits_size:                     # @gdev_mem_bits_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rcx, %r8
	cmpl	$0, 848(%rdi)
	je	.LBB10_2
# BB#1:                                 # %cond.end
	movl	100(%rdi), %eax
	testl	%eax, %eax
	je	.LBB10_2
# BB#3:                                 # %if.end
	xorl	%r11d, %r11d
	testl	%eax, %eax
	jle	.LBB10_12
# BB#4:
	leaq	1780(%rdi), %r14
	jmp	.LBB10_5
.LBB10_2:                               # %if.end.thread
	movzwl	108(%rdi), %eax
	movl	%eax, -16(%rsp)
	movl	$1, %eax
	leaq	-16(%rsp), %r14
.LBB10_5:                               # %for.body.lr.ph
	movl	840(%rdi), %r15d
	movl	844(%rdi), %ebp
	cmpl	$3, %ebp
	movl	$3, %r9d
	cmovgel	%ebp, %r9d
	movb	$3, %cl
	jl	.LBB10_7
# BB#6:                                 # %for.body.lr.ph
	movb	%bpl, %cl
.LBB10_7:                               # %for.body.lr.ph
	shll	$3, %r15d
	movl	$8, %r12d
	shll	%cl, %r12d
	leal	3(%r9), %r10d
	xorl	%ecx, %ecx
	testb	$1, %al
	movl	$0, %r11d
	je	.LBB10_9
# BB#8:                                 # %for.body.prol
	movl	(%r14), %ecx
	imull	%esi, %ecx
	addl	%r15d, %ecx
	leal	-1(%r12,%rcx), %r11d
	movb	%r10b, %cl
	sarl	%cl, %r11d
	movb	%r9b, %cl
	shll	%cl, %r11d
	movl	$1, %ecx
.LBB10_9:                               # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB10_12
# BB#10:                                # %for.body.lr.ph.split.split
	subl	%ecx, %eax
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r14,%rcx,4), %rbp
	.align	16, 0x90
.LBB10_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %ecx
	imull	%esi, %ecx
	addl	%r15d, %ecx
	leal	-1(%r12,%rcx), %ebx
	movb	%r10b, %cl
	sarl	%cl, %ebx
	movb	%r9b, %cl
	shll	%cl, %ebx
	addq	%r11, %rbx
	movl	12(%rbp), %ecx
	imull	%esi, %ecx
	addl	%r15d, %ecx
	leal	-1(%r12,%rcx), %r11d
	movb	%r10b, %cl
	sarl	%cl, %r11d
	movb	%r9b, %cl
	shll	%cl, %r11d
	addq	%rbx, %r11
	addq	$24, %rbp
	addl	$-2, %eax
	jne	.LBB10_11
.LBB10_12:                              # %for.end
	xorl	%esi, %esi
	testl	%edx, %edx
	je	.LBB10_14
# BB#13:                                # %if.then.38
	movslq	%edx, %rsi
	movq	$-9, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rcx
	movl	$-25, %eax
	cmpq	%rcx, %r11
	ja	.LBB10_17
.LBB10_14:                              # %if.end.44
	imulq	%rsi, %r11
	addq	$7, %r11
	andq	$-8, %r11
	movl	844(%rdi), %ecx
	cmpl	$4, %ecx
	jl	.LBB10_16
# BB#15:                                # %if.then.51
	movl	$1, %eax
	shll	%cl, %eax
	cltq
	addq	%rax, %r11
.LBB10_16:                              # %if.end.56
	movq	%r11, (%r8)
	xorl	%eax, %eax
.LBB10_17:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gdev_mem_bits_size, .Lfunc_end10-gdev_mem_bits_size
	.cfi_endproc

	.globl	gdev_mem_line_ptrs_size
	.align	16, 0x90
	.type	gdev_mem_line_ptrs_size,@function
gdev_mem_line_ptrs_size:                # @gdev_mem_line_ptrs_size
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edx, %rax
	shlq	$3, %rax
	movl	$1, %ecx
	cmpl	$0, 848(%rdi)
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movslq	100(%rdi), %rcx
.LBB11_2:                               # %cond.end
	imulq	%rcx, %rax
	retq
.Lfunc_end11:
	.size	gdev_mem_line_ptrs_size, .Lfunc_end11-gdev_mem_line_ptrs_size
	.cfi_endproc

	.globl	gdev_mem_data_size
	.align	16, 0x90
	.type	gdev_mem_data_size,@function
gdev_mem_data_size:                     # @gdev_mem_data_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rcx, %r8
	movslq	%edx, %r11
	leaq	(,%r11,8), %r10
	cmpl	$0, 848(%rdi)
	je	.LBB12_2
# BB#1:                                 # %cond.end.i
	movslq	100(%rdi), %r13
	imulq	%r13, %r10
	testq	%r13, %r13
	je	.LBB12_2
# BB#3:                                 # %if.end.i
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jle	.LBB12_12
# BB#4:
	leaq	1780(%rdi), %r15
	jmp	.LBB12_5
.LBB12_2:                               # %if.end.thread.i
	movzwl	108(%rdi), %eax
	movl	%eax, -16(%rsp)
	movl	$1, %r13d
	leaq	-16(%rsp), %r15
.LBB12_5:                               # %for.body.lr.ph.i
	movl	840(%rdi), %ebx
	movl	844(%rdi), %ebp
	cmpl	$3, %ebp
	movl	$3, %r9d
	cmovgel	%ebp, %r9d
	movb	$3, %cl
	jl	.LBB12_7
# BB#6:                                 # %for.body.lr.ph.i
	movb	%bpl, %cl
.LBB12_7:                               # %for.body.lr.ph.i
	movl	$8, %ebp
	shll	%cl, %ebp
	leal	3(%r9), %r14d
	leal	-1(%rbp,%rbx,8), %r12d
	xorl	%ecx, %ecx
	testb	$1, %r13b
	movl	$0, %ebx
	je	.LBB12_9
# BB#8:                                 # %for.body.i.prol
	movl	(%r15), %ecx
	imull	%esi, %ecx
	leal	(%rcx,%r12), %ebx
	movb	%r14b, %cl
	sarl	%cl, %ebx
	movb	%r9b, %cl
	shll	%cl, %ebx
	movl	$1, %ecx
.LBB12_9:                               # %for.body.lr.ph.i.split
	cmpl	$1, %r13d
	je	.LBB12_12
# BB#10:                                # %for.body.lr.ph.i.split.split
	subl	%ecx, %r13d
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r15,%rcx,4), %rbp
	.align	16, 0x90
.LBB12_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %ecx
	imull	%esi, %ecx
	leal	(%rcx,%r12), %eax
	movb	%r14b, %cl
	sarl	%cl, %eax
	movb	%r9b, %cl
	shll	%cl, %eax
	addq	%rbx, %rax
	movl	12(%rbp), %ecx
	imull	%esi, %ecx
	leal	(%rcx,%r12), %ebx
	movb	%r14b, %cl
	sarl	%cl, %ebx
	movb	%r9b, %cl
	shll	%cl, %ebx
	addq	%rax, %rbx
	addq	$24, %rbp
	addl	$-2, %r13d
	jne	.LBB12_11
.LBB12_12:                              # %for.end.i
	xorl	%esi, %esi
	testl	%edx, %edx
	je	.LBB12_15
# BB#13:                                # %if.then.38.i
	movq	$-9, %rax
	xorl	%edx, %edx
	divq	%r11
	cmpq	%rax, %rbx
	movq	%r11, %rsi
	jbe	.LBB12_15
# BB#14:                                # %gdev_mem_bits_size.exit.thread21
	movl	$-25, %eax
	jmp	.LBB12_19
.LBB12_15:                              # %if.end.44.i
	imulq	%rbx, %rsi
	addq	$7, %rsi
	andq	$-8, %rsi
	movl	844(%rdi), %ecx
	cmpl	$4, %ecx
	jl	.LBB12_17
# BB#16:                                # %if.then.51.i
	movl	$1, %eax
	shll	%cl, %eax
	cltq
	addq	%rax, %rsi
.LBB12_17:                              # %lor.lhs.false
	movq	%r10, %rcx
	notq	%rcx
	movl	$-25, %eax
	cmpq	%rcx, %rsi
	ja	.LBB12_19
# BB#18:                                # %if.end
	addq	%r10, %rsi
	movq	%rsi, (%r8)
	xorl	%eax, %eax
.LBB12_19:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gdev_mem_data_size, .Lfunc_end12-gdev_mem_data_size
	.cfi_endproc

	.globl	gdev_mem_max_height
	.align	16, 0x90
	.type	gdev_mem_max_height,@function
gdev_mem_max_height:                    # @gdev_mem_max_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 64
.Ltmp61:
	.cfi_offset %rbx, -48
.Ltmp62:
	.cfi_offset %r12, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %r15
	movzwl	108(%r15), %esi
	imull	%r12d, %esi
	testl	%ecx, %ecx
	je	.LBB13_8
# BB#1:                                 # %if.then
	imull	$120, %r12d, %edi
	movl	840(%r15), %ebp
	movl	844(%r15), %edx
	leal	3(%rdx), %ecx
	cmpl	$3, %edx
	movb	$3, %al
	jl	.LBB13_3
# BB#2:                                 # %if.then
	movb	%dl, %al
.LBB13_3:                               # %if.then
	movb	$6, %dl
	jl	.LBB13_5
# BB#4:                                 # %if.then
	movb	%cl, %dl
.LBB13_5:                               # %if.then
	movl	$8, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	addl	%esi, %edi
	leal	(%rdi,%rbp,8), %ecx
	leal	-1(%rbx,%rcx), %esi
	movb	%dl, %cl
	sarl	%cl, %esi
	movb	%al, %cl
	shll	%cl, %esi
	movl	$8, %ecx
	cmpl	$0, 848(%r15)
	je	.LBB13_7
# BB#6:                                 # %cond.true.29
	movslq	100(%r15), %rcx
	shlq	$3, %rcx
.LBB13_7:                               # %cond.end.32
	addq	%rsi, %rcx
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%rcx
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmovbl	%eax, %ebx
	jmp	.LBB13_16
.LBB13_8:                               # %if.else
	movl	840(%r15), %edi
	movl	844(%r15), %edx
	leal	3(%rdx), %ecx
	cmpl	$3, %edx
	movb	$3, %al
	jl	.LBB13_10
# BB#9:                                 # %if.else
	movb	%dl, %al
.LBB13_10:                              # %if.else
	movb	$6, %dl
	jl	.LBB13_12
# BB#11:                                # %if.else
	movb	%cl, %dl
.LBB13_12:                              # %if.else
	movl	$8, %ebp
	movb	%al, %cl
	shll	%cl, %ebp
	leal	(%rsi,%rdi,8), %ecx
	leal	-1(%rbp,%rcx), %esi
	movb	%dl, %cl
	sarl	%cl, %esi
	movb	%al, %cl
	shll	%cl, %esi
	movl	$8, %ecx
	cmpl	$0, 848(%r15)
	je	.LBB13_14
# BB#13:                                # %cond.true.84
	movslq	100(%r15), %rcx
	shlq	$3, %rcx
.LBB13_14:                              # %cond.end.88
	addq	%rsi, %rcx
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%rcx
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmovbl	%eax, %ecx
	leaq	8(%rsp), %rbp
	.align	16, 0x90
.LBB13_15:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	movq	%rbp, %rcx
	callq	gdev_mem_data_size
	leal	-1(%rbx), %ecx
	cmpq	%r14, 8(%rsp)
	ja	.LBB13_15
.LBB13_16:                              # %if.end.106
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gdev_mem_max_height, .Lfunc_end13-gdev_mem_max_height
	.cfi_endproc

	.globl	mem_open
	.align	16, 0x90
	.type	mem_open,@function
mem_open:                               # @mem_open
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 848(%rdi)
	je	.LBB14_2
# BB#1:                                 # %cleanup
	movl	$-15, %eax
	retq
.LBB14_2:                               # %if.end
	movl	836(%rdi), %esi
	jmp	gdev_mem_open_scan_lines # TAILCALL
.Lfunc_end14:
	.size	mem_open, .Lfunc_end14-mem_open
	.cfi_endproc

	.globl	gdev_mem_open_scan_lines
	.align	16, 0x90
	.type	gdev_mem_open_scan_lines,@function
gdev_mem_open_scan_lines:               # @gdev_mem_open_scan_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 80
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r12
	movl	$-15, %ecx
	testl	%ebx, %ebx
	js	.LBB15_48
# BB#1:                                 # %lor.lhs.false
	movl	836(%r12), %edx
	cmpl	%ebx, %edx
	jl	.LBB15_48
# BB#2:                                 # %if.end
	cmpq	$0, 1752(%r12)
	je	.LBB15_9
# BB#3:                                 # %if.then.3
	movl	832(%r12), %esi
	leaq	(%rsp), %rcx
	movq	%r12, %rdi
	callq	gdev_mem_data_size
	movl	$-25, %ecx
	testl	%eax, %eax
	js	.LBB15_48
# BB#4:                                 # %if.end.7
	movq	(%rsp), %r14
	movl	%r14d, %eax
	movl	$-13, %ecx
	cmpq	%r14, %rax
	jne	.LBB15_48
# BB#5:                                 # %if.end.12
	movq	1752(%r12), %rdi
	movl	$.L.str.1, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 1744(%r12)
	testq	%rax, %rax
	movl	$-25, %ecx
	je	.LBB15_48
# BB#6:                                 # %cleanup
	movb	844(%r12), %cl
	movl	$1, %edx
	shll	%cl, %edx
	movl	%eax, %ecx
	negl	%ecx
	decl	%edx
	andl	%ecx, %edx
	movslq	%edx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 1744(%r12)
	movl	$0, 1760(%r12)
	movl	836(%r12), %edx
	jmp	.LBB15_7
.LBB15_9:                               # %if.else
	movq	1768(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB15_7
# BB#10:                                # %if.then.27
	movq	88(%rdi), %rbp
	movl	$8, %eax
	cmpl	$0, 848(%r12)
	je	.LBB15_12
# BB#11:                                # %cond.true
	movl	100(%r12), %eax
	shll	$3, %eax
.LBB15_12:                              # %cond.end
	movl	$.L.str.2, %ecx
	movl	%edx, %esi
	movl	%eax, %edx
	callq	*%rbp
	movq	%rax, 2576(%r12)
	movl	$-25, %ecx
	testq	%rax, %rax
	movl	%ebx, %ebp
	je	.LBB15_48
# BB#13:                                # %if.end.39
	movl	$0, 1776(%r12)
	jmp	.LBB15_31
.LBB15_7:                               # %if.then.43
	movl	832(%r12), %r8d
	cmpl	$0, 848(%r12)
	je	.LBB15_8
# BB#14:                                # %cond.end.i
	movl	%ebx, %r15d
	movl	100(%r12), %ebp
	testl	%ebp, %ebp
	je	.LBB15_15
# BB#16:                                # %if.end.i
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jle	.LBB15_25
# BB#17:
	leaq	1780(%r12), %r9
	jmp	.LBB15_18
.LBB15_8:                               # %cond.end.thread.i
	movl	%ebx, %r15d
.LBB15_15:                              # %if.end.thread.i
	movzwl	108(%r12), %eax
	movl	%eax, 8(%rsp)
	movl	$1, %ebp
	leaq	8(%rsp), %r9
.LBB15_18:                              # %for.body.lr.ph.i
	movl	840(%r12), %eax
	movl	844(%r12), %esi
	cmpl	$3, %esi
	movl	$3, %r10d
	cmovgel	%esi, %r10d
	movb	$3, %cl
	jl	.LBB15_20
# BB#19:                                # %for.body.lr.ph.i
	movb	%sil, %cl
.LBB15_20:                              # %for.body.lr.ph.i
	movl	$8, %edi
	shll	%cl, %edi
	leal	3(%r10), %r11d
	leal	-1(%rdi,%rax,8), %edi
	xorl	%eax, %eax
	testb	$1, %bpl
	movl	$0, %ebx
	je	.LBB15_22
# BB#21:                                # %for.body.i.prol
	movl	(%r9), %eax
	imull	%r8d, %eax
	leal	(%rax,%rdi), %ebx
	movb	%r11b, %cl
	sarl	%cl, %ebx
	movb	%r10b, %cl
	shll	%cl, %ebx
	movl	$1, %eax
.LBB15_22:                              # %for.body.lr.ph.i.split
	cmpl	$1, %ebp
	je	.LBB15_25
# BB#23:                                # %for.body.lr.ph.i.split.split
	subl	%eax, %ebp
	leaq	(%rax,%rax,2), %rax
	leaq	(%r9,%rax,4), %rax
	.align	16, 0x90
.LBB15_24:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	imull	%r8d, %ecx
	leal	(%rcx,%rdi), %esi
	movb	%r11b, %cl
	sarl	%cl, %esi
	movb	%r10b, %cl
	shll	%cl, %esi
	addq	%rbx, %rsi
	movl	12(%rax), %ecx
	imull	%r8d, %ecx
	leal	(%rcx,%rdi), %ebx
	movb	%r11b, %cl
	sarl	%cl, %ebx
	movb	%r10b, %cl
	shll	%cl, %ebx
	addq	%rsi, %rbx
	addq	$24, %rax
	addl	$-2, %ebp
	jne	.LBB15_24
.LBB15_25:                              # %for.end.i
	xorl	%esi, %esi
	testl	%edx, %edx
	movl	%r15d, %ebp
	je	.LBB15_27
# BB#26:                                # %if.then.38.i
	movslq	%edx, %rsi
	movq	$-9, %rax
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rax, %rbx
	ja	.LBB15_30
.LBB15_27:                              # %if.end.44.i
	imulq	%rbx, %rsi
	addq	$7, %rsi
	andq	$-8, %rsi
	movl	844(%r12), %ecx
	cmpl	$4, %ecx
	jl	.LBB15_29
# BB#28:                                # %if.then.51.i
	movl	$1, %eax
	shll	%cl, %eax
	cltq
	addq	%rax, %rsi
.LBB15_29:                              # %if.end.56.i
	movq	%rsi, (%rsp)
	movq	%rsi, %r14
.LBB15_30:                              # %gdev_mem_bits_size.exit
	addq	1744(%r12), %r14
	movq	%r14, 2576(%r12)
.LBB15_31:                              # %if.end.50
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	movl	%eax, 1736(%r12)
	xorl	%esi, %esi
	cmpl	$0, 848(%r12)
	je	.LBB15_33
# BB#32:                                # %cond.true.i
	movl	100(%r12), %esi
.LBB15_33:                              # %cond.end.i.40
	movq	2576(%r12), %r14
	movq	1744(%r12), %rdx
	movl	844(%r12), %ecx
	cmpl	$4, %ecx
	movq	%rdx, %r15
	jl	.LBB15_35
# BB#34:                                # %if.then.11.i
	movl	$1, %edi
	shll	%cl, %edi
	movl	%edx, %ecx
	negl	%ecx
	decl	%edi
	andl	%ecx, %edi
	movslq	%edi, %rcx
	leaq	(%rcx,%rdx), %r15
.LBB15_35:                              # %if.end.16.i
	movl	$1, %r10d
	testl	%esi, %esi
	je	.LBB15_39
# BB#36:                                # %if.then.18.i
	testq	%rdx, %rdx
	je	.LBB15_38
# BB#37:                                # %land.lhs.true.i
	cmpl	$0, 2784(%r12)
	movl	$-15, %ecx
	je	.LBB15_48
.LBB15_38:                              # %if.end.24.i
	xorl	%ecx, %ecx
	testl	%esi, %esi
	movl	%esi, %r10d
	jle	.LBB15_48
.LBB15_39:                              # %for.body.lr.ph.i.47
	movslq	%ebp, %r13
	movslq	836(%r12), %r11
	cltq
	imulq	%rax, %r11
	movq	%r13, %r8
	negq	%r8
	movq	%r14, %r9
	notq	%r9
	xorl	%edi, %edi
	movq	%r14, %rbx
	.align	16, 0x90
.LBB15_40:                              # %for.body.i.48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_44 Depth 2
                                        #     Child Loop BB15_46 Depth 2
	movq	%rbx, %rcx
	movq	%r13, %rdx
	imulq	%rdi, %rdx
	leaq	(%r13,%rdx), %rsi
	leaq	(%r14,%rsi,8), %rsi
	leaq	8(%r14,%rdx,8), %rdx
	cmpq	%rdx, %rsi
	cmovaq	%rsi, %rdx
	leaq	(%rcx,%r13,8), %rbx
	testl	%ebp, %ebp
	jle	.LBB15_47
# BB#41:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB15_40 Depth=1
	movl	%ebp, %r12d
	movq	%rdi, %rsi
	imulq	%r8, %rsi
	leaq	(%rdx,%rsi,8), %rdx
	addq	%r9, %rdx
	movl	%edx, %esi
	shrl	$3, %esi
	incl	%esi
	testb	$7, %sil
	je	.LBB15_42
# BB#43:                                # %while.body.i.prol.preheader
                                        #   in Loop: Header=BB15_40 Depth=1
	movl	%edx, %ebp
	shrl	$3, %ebp
	incl	%ebp
	andl	$7, %ebp
	negq	%rbp
	movq	%r15, %rsi
	.align	16, 0x90
.LBB15_44:                              # %while.body.i.prol
                                        #   Parent Loop BB15_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, (%rcx)
	addq	$8, %rcx
	addq	%rax, %rsi
	incq	%rbp
	jne	.LBB15_44
	jmp	.LBB15_45
	.align	16, 0x90
.LBB15_42:                              #   in Loop: Header=BB15_40 Depth=1
	movq	%r15, %rsi
.LBB15_45:                              # %while.body.i.preheader.split
                                        #   in Loop: Header=BB15_40 Depth=1
	cmpq	$56, %rdx
	movl	%r12d, %ebp
	jb	.LBB15_47
	.align	16, 0x90
.LBB15_46:                              # %while.body.i
                                        #   Parent Loop BB15_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, (%rcx)
	addq	%rax, %rsi
	movq	%rsi, 8(%rcx)
	addq	%rax, %rsi
	movq	%rsi, 16(%rcx)
	addq	%rax, %rsi
	movq	%rsi, 24(%rcx)
	addq	%rax, %rsi
	movq	%rsi, 32(%rcx)
	addq	%rax, %rsi
	movq	%rsi, 40(%rcx)
	addq	%rax, %rsi
	movq	%rsi, 48(%rcx)
	addq	%rax, %rsi
	movq	%rsi, 56(%rcx)
	addq	$64, %rcx
	addq	%rax, %rsi
	cmpq	%rbx, %rcx
	jb	.LBB15_46
.LBB15_47:                              # %while.end.i
                                        #   in Loop: Header=BB15_40 Depth=1
	addq	%r11, %r15
	incq	%rdi
	xorl	%ecx, %ecx
	cmpl	%r10d, %edi
	jne	.LBB15_40
.LBB15_48:                              # %cleanup.53
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
	.size	gdev_mem_open_scan_lines, .Lfunc_end15-gdev_mem_open_scan_lines
	.cfi_endproc

	.globl	gdev_mem_set_line_ptrs
	.align	16, 0x90
	.type	gdev_mem_set_line_ptrs,@function
gdev_mem_set_line_ptrs:                 # @gdev_mem_set_line_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %rbx, -48
.Ltmp85:
	.cfi_offset %r12, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rcx, %r9
	xorl	%ebx, %ebx
	cmpl	$0, 848(%rdi)
	je	.LBB16_2
# BB#1:                                 # %cond.true
	movl	100(%rdi), %ebx
.LBB16_2:                               # %cond.end
	testq	%r9, %r9
	je	.LBB16_3
# BB#4:                                 # %if.then
	movq	%r9, 2576(%rdi)
	jmp	.LBB16_5
.LBB16_3:                               # %cond.end.if.end_crit_edge
	movq	2576(%rdi), %r9
.LBB16_5:                               # %if.end
	testq	%rsi, %rsi
	je	.LBB16_6
# BB#7:                                 # %if.else
	movq	%rsi, 1744(%rdi)
	movl	%edx, 1736(%rdi)
	jmp	.LBB16_8
.LBB16_6:                               # %if.then.4
	movq	1744(%rdi), %rsi
	movl	1736(%rdi), %edx
.LBB16_8:                               # %if.end.9
	movl	844(%rdi), %ecx
	cmpl	$4, %ecx
	movq	%rsi, %r10
	jl	.LBB16_10
# BB#9:                                 # %if.then.11
	movl	$1, %eax
	shll	%cl, %eax
	movl	%esi, %ecx
	negl	%ecx
	decl	%eax
	andl	%ecx, %eax
	cltq
	leaq	(%rax,%rsi), %r10
.LBB16_10:                              # %if.end.16
	movl	$1, %r14d
	testl	%ebx, %ebx
	je	.LBB16_14
# BB#11:                                # %if.then.18
	testq	%rsi, %rsi
	je	.LBB16_13
# BB#12:                                # %land.lhs.true
	movl	$-15, %eax
	cmpl	$0, 2784(%rdi)
	je	.LBB16_23
.LBB16_13:                              # %if.end.24
	xorl	%eax, %eax
	testl	%ebx, %ebx
	movl	%ebx, %r14d
	jle	.LBB16_23
.LBB16_14:                              # %for.body.lr.ph
	movslq	%r8d, %r12
	movslq	836(%rdi), %r15
	movslq	%edx, %rdx
	imulq	%rdx, %r15
	movq	%r12, %r8
	negq	%r8
	movq	%r9, %r11
	notq	%r11
	xorl	%ebx, %ebx
	movq	%r9, %rcx
	.align	16, 0x90
.LBB16_15:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_19 Depth 2
                                        #     Child Loop BB16_21 Depth 2
	movq	%rcx, %rax
	movq	%r12, %rcx
	imulq	%rbx, %rcx
	leaq	(%r12,%rcx), %rsi
	leaq	(%r9,%rsi,8), %rdi
	leaq	8(%r9,%rcx,8), %rsi
	cmpq	%rsi, %rdi
	cmovaq	%rdi, %rsi
	leaq	(%rax,%r12,8), %rcx
	testl	%r12d, %r12d
	jle	.LBB16_22
# BB#16:                                # %while.body.preheader
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	%rbx, %rdi
	imulq	%r8, %rdi
	leaq	(%rsi,%rdi,8), %rsi
	addq	%r11, %rsi
	movl	%esi, %edi
	shrl	$3, %edi
	incl	%edi
	testb	$7, %dil
	je	.LBB16_17
# BB#18:                                # %while.body.prol.preheader
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	%esi, %edi
	shrl	$3, %edi
	incl	%edi
	andl	$7, %edi
	negq	%rdi
	movq	%r10, %rbp
	.align	16, 0x90
.LBB16_19:                              # %while.body.prol
                                        #   Parent Loop BB16_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, (%rax)
	addq	$8, %rax
	addq	%rdx, %rbp
	incq	%rdi
	jne	.LBB16_19
	jmp	.LBB16_20
	.align	16, 0x90
.LBB16_17:                              #   in Loop: Header=BB16_15 Depth=1
	movq	%r10, %rbp
.LBB16_20:                              # %while.body.preheader.split
                                        #   in Loop: Header=BB16_15 Depth=1
	cmpq	$56, %rsi
	jb	.LBB16_22
	.align	16, 0x90
.LBB16_21:                              # %while.body
                                        #   Parent Loop BB16_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, (%rax)
	addq	%rdx, %rbp
	movq	%rbp, 8(%rax)
	addq	%rdx, %rbp
	movq	%rbp, 16(%rax)
	addq	%rdx, %rbp
	movq	%rbp, 24(%rax)
	addq	%rdx, %rbp
	movq	%rbp, 32(%rax)
	addq	%rdx, %rbp
	movq	%rbp, 40(%rax)
	addq	%rdx, %rbp
	movq	%rbp, 48(%rax)
	addq	%rdx, %rbp
	movq	%rbp, 56(%rax)
	addq	$64, %rax
	addq	%rdx, %rbp
	cmpq	%rcx, %rax
	jb	.LBB16_21
.LBB16_22:                              # %while.end
                                        #   in Loop: Header=BB16_15 Depth=1
	addq	%r15, %r10
	incq	%rbx
	xorl	%eax, %eax
	cmpl	%r14d, %ebx
	jne	.LBB16_15
.LBB16_23:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gdev_mem_set_line_ptrs, .Lfunc_end16-gdev_mem_set_line_ptrs
	.cfi_endproc

	.globl	mem_get_initial_matrix
	.align	16, 0x90
	.type	mem_get_initial_matrix,@function
mem_get_initial_matrix:                 # @mem_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movups	2548(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	movl	2564(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	2568(%rdi), %eax
	movl	%eax, 20(%rsi)
	retq
.Lfunc_end17:
	.size	mem_get_initial_matrix, .Lfunc_end17-mem_get_initial_matrix
	.cfi_endproc

	.globl	mem_close
	.align	16, 0x90
	.type	mem_close,@function
mem_close:                              # @mem_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1752(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	1744(%rbx), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	$0, 1744(%rbx)
	jmp	.LBB18_4
.LBB18_2:                               # %if.else
	movq	1768(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB18_4
# BB#3:                                 # %if.then.5
	movq	2576(%rbx), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	$0, 2576(%rbx)
.LBB18_4:                               # %if.end.11
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end18:
	.size	mem_close, .Lfunc_end18-mem_close
	.cfi_endproc

	.globl	mem_get_bits_rectangle
	.align	16, 0x90
	.type	mem_get_bits_rectangle,@function
mem_get_bits_rectangle:                 # @mem_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 56
	subq	$552, %rsp              # imm = 0x228
.Ltmp97:
	.cfi_def_cfa_offset 608
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	cmpq	$0, (%r15)
	je	.LBB19_1
# BB#2:                                 # %if.end
	movl	(%rsi), %r12d
	movl	8(%rsi), %ebx
	subl	%r12d, %ebx
	movslq	4(%rsi), %r13
	movl	12(%rsi), %ebp
	subl	%r13d, %ebp
	testl	%ebx, %ebx
	setle	%al
	testl	%ebp, %ebp
	setle	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	cmpl	$1, %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then.13
	orl	%ebx, %ebp
	sarl	$31, %ebp
	andl	$-15, %ebp
	movl	%ebp, %eax
	jmp	.LBB19_10
.LBB19_1:                               # %if.then
	movq	$2012282897, (%r15)     # imm = 0x77F10011
	movl	$-15, %eax
	jmp	.LBB19_10
.LBB19_4:                               # %if.end.19
	movl	$-15, %eax
	testl	%r12d, %r12d
	js	.LBB19_10
# BB#5:                                 # %lor.lhs.false
	testl	%r13d, %r13d
	js	.LBB19_10
# BB#6:                                 # %lor.lhs.false
	movl	832(%r14), %ecx
	movl	%ecx, %edx
	subl	%r12d, %edx
	cmpl	%edx, %ebx
	jg	.LBB19_10
# BB#7:                                 # %lor.lhs.false.28
	movl	836(%r14), %edx
	subl	%r13d, %edx
	cmpl	%edx, %ebp
	jg	.LBB19_10
# BB#8:                                 # %if.end.33
	shlq	$3, %r13
	addq	2576(%r14), %r13
	movl	1736(%r14), %eax
	movzwl	108(%r14), %edx
	imull	%ecx, %edx
	addl	$63, %edx
	sarl	$6, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	movl	$268501009, %ecx        # imm = 0x10010011
	movl	$536936465, %edx        # imm = 0x20010011
	cmoveq	%rcx, %rdx
	movq	%rdx, 16(%rsp)
	movl	%eax, 544(%rsp)
	leaq	16(%rsp), %r8
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movq	%r15, %rcx
	movq	%r13, %r9
	callq	gx_get_bits_return_pointer
	testl	%eax, %eax
	jns	.LBB19_10
# BB#9:                                 # %if.end.45
	movq	(%r13), %r13
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gx_device_raster
	movl	%eax, 8(%rsp)
	movq	%r13, (%rsp)
	leaq	16(%rsp), %r9
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	movl	%ebp, %ecx
	movq	%r15, %r8
	callq	gx_get_bits_copy
.LBB19_10:                              # %cleanup.50
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	mem_get_bits_rectangle, .Lfunc_end19-mem_get_bits_rectangle
	.cfi_endproc

	.globl	mem_swap_byte_rect
	.align	16, 0x90
	.type	mem_swap_byte_rect,@function
mem_swap_byte_rect:                     # @mem_swap_byte_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 32
.Ltmp107:
	.cfi_offset %rbx, -32
.Ltmp108:
	.cfi_offset %r14, -24
.Ltmp109:
	.cfi_offset %r15, -16
	movl	%edx, %eax
	andl	$31, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	$65, %ebx
	jl	.LBB20_7
# BB#1:                                 # %entry
	testl	%r9d, %r9d
	je	.LBB20_7
# BB#2:                                 # %if.then.1
	testl	%eax, %eax
	je	.LBB20_6
# BB#3:                                 # %if.then.1
	testl	%r8d, %r8d
	jle	.LBB20_6
# BB#4:                                 # %for.body.i.lr.ph
	movl	%edx, %eax
	sarl	$5, %eax
	shll	$2, %eax
	cltq
	leaq	(%rax,%rdi), %rax
	movl	%esi, %r9d
	leal	1(%r8), %r10d
	.align	16, 0x90
.LBB20_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ebx
	bswapl	%ebx
	movl	%ebx, (%rax)
	addq	%r9, %rax
	decl	%r10d
	cmpl	$1, %r10d
	jg	.LBB20_5
.LBB20_6:                               # %if.end
	leal	-1(%rdx,%rcx), %edx
	movl	%edx, %eax
	andl	$31, %eax
	movl	$1, %ecx
	cmpl	$31, %eax
	je	.LBB20_18
.LBB20_7:                               # %if.end.10
	testl	%r8d, %r8d
	jle	.LBB20_18
# BB#8:                                 # %for.body.lr.ph
	leal	31(%rax,%rcx), %r15d
	sarl	$5, %r15d
	sarl	$5, %edx
	shll	$2, %edx
	movslq	%edx, %rax
	addq	%rax, %rdi
	movl	%esi, %r14d
	leal	-1(%r15), %edx
	incq	%rdx
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rdx, %rsi
	leaq	-8(%rsi), %r9
	shrq	$3, %r9
	movl	%r15d, %r10d
	subl	%esi, %r10d
	movl	%r9d, %r11d
	andl	$1, %r11d
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB20_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_13 Depth 2
                                        #     Child Loop BB20_16 Depth 2
	testq	%rsi, %rsi
	movl	%r15d, %ecx
	movq	%rdi, %rbx
	movl	$0, %eax
	je	.LBB20_15
# BB#10:                                # %vector.body.preheader
                                        #   in Loop: Header=BB20_9 Depth=1
	testq	%r11, %r11
	movl	$0, %ecx
	jne	.LBB20_12
# BB#11:                                # %vector.body.prol
                                        #   in Loop: Header=BB20_9 Depth=1
	movdqu	(%rdi), %xmm1
	movdqu	16(%rdi), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, (%rdi)
	movdqu	%xmm2, 16(%rdi)
	movl	$8, %ecx
.LBB20_12:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB20_9 Depth=1
	leaq	(%rdi,%rsi,4), %rbx
	testq	%r9, %r9
	je	.LBB20_14
	.align	16, 0x90
.LBB20_13:                              # %vector.body
                                        #   Parent Loop BB20_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdi,%rcx,4), %xmm1
	movdqu	16(%rdi,%rcx,4), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, (%rdi,%rcx,4)
	movdqu	%xmm2, 16(%rdi,%rcx,4)
	movdqu	32(%rdi,%rcx,4), %xmm1
	movdqu	48(%rdi,%rcx,4), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, 32(%rdi,%rcx,4)
	movdqu	%xmm2, 48(%rdi,%rcx,4)
	addq	$16, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB20_13
.LBB20_14:                              #   in Loop: Header=BB20_9 Depth=1
	movl	%r10d, %ecx
	movq	%rsi, %rax
.LBB20_15:                              # %middle.block
                                        #   in Loop: Header=BB20_9 Depth=1
	cmpq	%rax, %rdx
	je	.LBB20_17
	.align	16, 0x90
.LBB20_16:                              # %do.body
                                        #   Parent Loop BB20_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	bswapl	%eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%ecx
	jne	.LBB20_16
.LBB20_17:                              # %do.end
                                        #   in Loop: Header=BB20_9 Depth=1
	addq	%r14, %rdi
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jg	.LBB20_9
.LBB20_18:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	mem_swap_byte_rect, .Lfunc_end20-mem_swap_byte_rect
	.cfi_endproc

	.globl	mem_word_get_bits_rectangle
	.align	16, 0x90
	.type	mem_word_get_bits_rectangle,@function
mem_word_get_bits_rectangle:            # @mem_word_get_bits_rectangle
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
	subq	$40, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 96
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
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movl	$1, %esi
	callq	gx_device_raster
	movl	(%rbp), %ecx
	movl	4(%rbp), %r8d
	movl	8(%rbp), %ebx
	movl	%ebx, %edi
	subl	%ecx, %edi
	movl	12(%rbp), %ebp
	movl	%ebp, %esi
	subl	%r8d, %esi
	movl	%r8d, %edx
	orl	%ecx, %edx
	jns	.LBB21_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovsl	%ebx, %edi
	cmovsl	%edx, %ecx
	testl	%r8d, %r8d
	cmovsl	%ebp, %esi
	cmovsl	%edx, %r8d
.LBB21_2:                               # %do.body.16
	movl	832(%r14), %ebp
	movl	836(%r14), %r12d
	subl	%ecx, %ebp
	cmpl	%ebp, %edi
	cmovlel	%edi, %ebp
	subl	%r8d, %r12d
	cmpl	%r12d, %esi
	cmovlel	%esi, %r12d
	testl	%ebp, %ebp
	setle	%dl
	testl	%r12d, %r12d
	setle	%bl
	xorl	%esi, %esi
	orb	%dl, %bl
	cmovnel	%esi, %r12d
	cmovnel	%esi, %ebp
	cmovnel	%esi, %ecx
	movzwl	108(%r14), %edx
	imull	%edx, %ecx
	imull	%edx, %ebp
	movl	%ecx, %esi
	andl	$31, %esi
	testl	%r12d, %r12d
	jle	.LBB21_24
# BB#3:                                 # %for.body.lr.ph.i
	leal	31(%rbp,%rsi), %r13d
	sarl	$5, %r13d
	movabsq	$8589934584, %r15       # imm = 0x1FFFFFFF8
	movq	2576(%r14), %rdx
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movslq	%r8d, %rsi
	xorl	%edi, %edi
	testb	$1, %bl
	cmoveq	%rsi, %rdi
	sarl	$5, %ecx
	shll	$2, %ecx
	movslq	%ecx, %r14
	addq	(%rdx,%rdi,8), %r14
	movl	%eax, %ebp
	leal	-1(%r13), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	1(%rax), %r11
	movq	%r11, %rcx
	andq	%r15, %rcx
	leaq	-8(%rcx), %r9
	shrq	$3, %r9
	movl	%r13d, %r8d
	subl	%ecx, %r8d
	movl	%r9d, %r10d
	andl	$1, %r10d
	pxor	%xmm0, %xmm0
	movl	%r12d, %ebx
	movq	%r14, %rdx
	.align	16, 0x90
.LBB21_4:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #     Child Loop BB21_11 Depth 2
	testq	%rcx, %rcx
	movl	%r13d, %edi
	movq	%rdx, %rsi
	movl	$0, %eax
	je	.LBB21_10
# BB#5:                                 # %vector.body.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	testq	%r10, %r10
	movl	$0, %edi
	jne	.LBB21_7
# BB#6:                                 # %vector.body.prol
                                        #   in Loop: Header=BB21_4 Depth=1
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, (%rdx)
	movdqu	%xmm2, 16(%rdx)
	movl	$8, %edi
.LBB21_7:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB21_4 Depth=1
	leaq	(%rdx,%rcx,4), %rsi
	testq	%r9, %r9
	je	.LBB21_9
	.align	16, 0x90
.LBB21_8:                               # %vector.body
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdx,%rdi,4), %xmm1
	movdqu	16(%rdx,%rdi,4), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, (%rdx,%rdi,4)
	movdqu	%xmm2, 16(%rdx,%rdi,4)
	movdqu	32(%rdx,%rdi,4), %xmm1
	movdqu	48(%rdx,%rdi,4), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, 32(%rdx,%rdi,4)
	movdqu	%xmm2, 48(%rdx,%rdi,4)
	addq	$16, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB21_8
.LBB21_9:                               #   in Loop: Header=BB21_4 Depth=1
	movl	%r8d, %edi
	movq	%rcx, %rax
.LBB21_10:                              # %middle.block
                                        #   in Loop: Header=BB21_4 Depth=1
	cmpq	%rax, %r11
	je	.LBB21_12
	.align	16, 0x90
.LBB21_11:                              # %do.body.i
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %eax
	bswapl	%eax
	movl	%eax, (%rsi)
	addq	$4, %rsi
	decl	%edi
	jne	.LBB21_11
.LBB21_12:                              # %do.end.i
                                        #   in Loop: Header=BB21_4 Depth=1
	addq	%rbp, %rdx
	cmpl	$1, %ebx
	leal	-1(%rbx), %eax
	movl	%eax, %ebx
	jg	.LBB21_4
# BB#13:                                # %for.body.lr.ph.i.59
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	mem_get_bits_rectangle
	movq	16(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	andq	%rcx, %r15
	leaq	-8(%r15), %r10
	shrq	$3, %r10
	movl	%r13d, %r8d
	subl	%r15d, %r8d
	movl	%r10d, %r9d
	andl	$1, %r9d
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB21_14:                              # %for.body.i.62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_18 Depth 2
                                        #     Child Loop BB21_21 Depth 2
	movq	%rbp, %rsi
	testq	%r15, %r15
	movl	%r13d, %edx
	movq	%r14, %rdi
	movl	$0, %ebp
	je	.LBB21_20
# BB#15:                                # %vector.body97.preheader
                                        #   in Loop: Header=BB21_14 Depth=1
	testq	%r9, %r9
	movl	$0, %ebx
	jne	.LBB21_17
# BB#16:                                # %vector.body97.prol
                                        #   in Loop: Header=BB21_14 Depth=1
	movdqu	(%r14), %xmm1
	movdqu	16(%r14), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, (%r14)
	movdqu	%xmm2, 16(%r14)
	movl	$8, %ebx
.LBB21_17:                              # %vector.body97.preheader.split
                                        #   in Loop: Header=BB21_14 Depth=1
	leaq	(%r14,%r15,4), %rdi
	testq	%r10, %r10
	je	.LBB21_19
	.align	16, 0x90
.LBB21_18:                              # %vector.body97
                                        #   Parent Loop BB21_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r14,%rbx,4), %xmm1
	movdqu	16(%r14,%rbx,4), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, (%r14,%rbx,4)
	movdqu	%xmm2, 16(%r14,%rbx,4)
	movdqu	32(%r14,%rbx,4), %xmm1
	movdqu	48(%r14,%rbx,4), %xmm2
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm1, 32(%r14,%rbx,4)
	movdqu	%xmm2, 48(%r14,%rbx,4)
	addq	$16, %rbx
	cmpq	%rbx, %r15
	jne	.LBB21_18
.LBB21_19:                              #   in Loop: Header=BB21_14 Depth=1
	movl	%r8d, %edx
	movq	%r15, %rbp
.LBB21_20:                              # %middle.block98
                                        #   in Loop: Header=BB21_14 Depth=1
	cmpq	%rbp, %rcx
	je	.LBB21_22
	.align	16, 0x90
.LBB21_21:                              # %do.body.i.69
                                        #   Parent Loop BB21_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ebp
	bswapl	%ebp
	movl	%ebp, (%rdi)
	addq	$4, %rdi
	decl	%edx
	jne	.LBB21_21
.LBB21_22:                              # %do.end.i.73
                                        #   in Loop: Header=BB21_14 Depth=1
	movq	%rsi, %rbp
	addq	%rbp, %r14
	cmpl	$1, %r12d
	leal	-1(%r12), %edx
	movl	%edx, %r12d
	jg	.LBB21_14
# BB#23:                                # %mem_swap_byte_rect.exit74
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_24:                              # %mem_swap_byte_rect.exit.thread
	movq	%r14, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mem_get_bits_rectangle  # TAILCALL
.Lfunc_end21:
	.size	mem_word_get_bits_rectangle, .Lfunc_end21-mem_word_get_bits_rectangle
	.cfi_endproc

	.globl	mem_mapped_map_rgb_color
	.align	16, 0x90
	.type	mem_mapped_map_rgb_color,@function
mem_mapped_map_rgb_color:               # @mem_mapped_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 24
.Ltmp125:
	.cfi_offset %rbx, -24
.Ltmp126:
	.cfi_offset %rbp, -16
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %r11d     # imm = 0xFF01
	addl	$8388608, %r11d         # imm = 0x800000
	shrl	$24, %r11d
	movq	2584(%rdi), %r8
	movl	2592(%rdi), %ecx
	cmpl	$1, 100(%rdi)
	jne	.LBB22_4
# BB#1:                                 # %while.cond.64.preheader
	addl	$-3, %ecx
	movl	$768, %edx              # imm = 0x300
	xorl	%eax, %eax
	movq	%r8, %rsi
	.align	16, 0x90
.LBB22_2:                               # %while.cond.64
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	js	.LBB22_10
# BB#3:                                 # %while.body.68
                                        #   in Loop: Header=BB22_2 Depth=1
	movzbl	(%rsi), %edi
	subl	%r11d, %edi
	movl	%edi, %ebp
	sarl	$31, %ebp
	addl	%ebp, %edi
	movl	%edi, %ebx
	xorl	%ebp, %ebx
	cmpl	%edx, %ebx
	cmovlq	%rsi, %rax
	cmovlel	%ebx, %edx
	addq	$3, %rsi
	addl	$-3, %ecx
	xorl	%ebp, %edi
	jne	.LBB22_2
	jmp	.LBB22_10
.LBB22_4:                               # %if.then
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %r10d     # imm = 0xFF01
	addl	$8388608, %r10d         # imm = 0x800000
	shrl	$24, %r10d
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %r9d      # imm = 0xFF01
	addl	$8388608, %r9d          # imm = 0x800000
	shrl	$24, %r9d
	addl	$-3, %ecx
	movl	$768, %esi              # imm = 0x300
	xorl	%eax, %eax
	movq	%r8, %rdi
	.align	16, 0x90
.LBB22_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	js	.LBB22_10
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB22_5 Depth=1
	movzbl	(%rdi), %ebx
	subl	%r11d, %ebx
	movl	%ebx, %edx
	negl	%edx
	cmovll	%ebx, %edx
	cmpl	%esi, %edx
	jge	.LBB22_9
# BB#7:                                 # %if.then.30
                                        #   in Loop: Header=BB22_5 Depth=1
	movzbl	1(%rdi), %ebx
	subl	%r10d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovll	%ebx, %ebp
	addl	%ebp, %edx
	cmpl	%esi, %edx
	jge	.LBB22_9
# BB#8:                                 # %if.then.43
                                        #   in Loop: Header=BB22_5 Depth=1
	movzbl	2(%rdi), %ebx
	subl	%r9d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovll	%ebx, %ebp
	addl	%ebp, %edx
	cmpl	%esi, %edx
	cmovlq	%rdi, %rax
	cmovlel	%edx, %esi
.LBB22_9:                               # %if.end.59
                                        #   in Loop: Header=BB22_5 Depth=1
	addq	$3, %rdi
	addl	$-3, %ecx
	testl	%edx, %edx
	jne	.LBB22_5
.LBB22_10:                              # %if.end.91
	subq	%r8, %rax
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	leaq	(%rax,%rdx), %rax
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	mem_mapped_map_rgb_color, .Lfunc_end22-mem_mapped_map_rgb_color
	.cfi_endproc

	.globl	mem_mapped_map_color_rgb
	.align	16, 0x90
	.type	mem_mapped_map_color_rgb,@function
mem_mapped_map_color_rgb:               # @mem_mapped_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	2584(%rdi), %rax
	shlq	$32, %rsi
	leaq	(%rsi,%rsi,2), %rcx
	sarq	$32, %rcx
	movzbl	(%rax,%rcx), %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movw	%si, (%rdx)
	movzbl	1(%rax,%rcx), %esi
	imull	$257, %esi, %esi        # imm = 0x101
	movw	%si, 2(%rdx)
	movzbl	2(%rax,%rcx), %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	mem_mapped_map_color_rgb, .Lfunc_end23-mem_mapped_map_color_rgb
	.cfi_endproc

	.globl	mem_draw_thin_line
	.align	16, 0x90
	.type	mem_draw_thin_line,@function
mem_draw_thin_line:                     # @mem_draw_thin_line
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_default_draw_thin_line # TAILCALL
.Lfunc_end24:
	.size	mem_draw_thin_line, .Lfunc_end24-mem_draw_thin_line
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_memory"
	.size	.L.str, 17

	.type	st_device_memory,@object # @st_device_memory
	.section	.rodata,"a",@progbits
	.globl	st_device_memory
	.align	8
st_device_memory:
	.long	2792                    # 0xae8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_memory_enum_ptrs
	.quad	device_memory_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_memory, 64

	.type	b_w_palette_string,@object # @b_w_palette_string
b_w_palette_string:
	.asciz	"\377\377\377\000\000"
	.size	b_w_palette_string, 6

	.type	mem_mono_b_w_palette,@object # @mem_mono_b_w_palette
	.globl	mem_mono_b_w_palette
	.align	8
mem_mono_b_w_palette:
	.quad	b_w_palette_string
	.long	6                       # 0x6
	.zero	4
	.size	mem_mono_b_w_palette, 16

	.type	w_b_palette_string,@object # @w_b_palette_string
w_b_palette_string:
	.ascii	"\000\000\000\377\377\377"
	.size	w_b_palette_string, 6

	.type	mem_mono_w_b_palette,@object # @mem_mono_w_b_palette
	.globl	mem_mono_w_b_palette
	.align	8
mem_mono_w_b_palette:
	.quad	w_b_palette_string
	.long	6                       # 0x6
	.zero	4
	.size	mem_mono_w_b_palette, 16

	.type	mem_devices,@object     # @mem_devices
	.align	16
mem_devices:
	.quad	0
	.quad	mem_mono_device
	.quad	mem_mapped2_device
	.quad	0
	.quad	mem_mapped4_device
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_mapped8_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true16_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true24_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true32_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true40_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true48_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true56_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true64_device
	.size	mem_devices, 520

	.type	mem_word_devices,@object # @mem_word_devices
	.align	16
mem_word_devices:
	.quad	0
	.quad	mem_mono_device
	.quad	mem_mapped2_word_device
	.quad	0
	.quad	mem_mapped4_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_mapped8_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true24_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true32_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true40_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true48_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true56_word_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	mem_true64_word_device
	.size	mem_word_devices, 520

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"mem_open"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gdev_mem_open_scan_lines"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"mem_close"
	.size	.L.str.3, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
