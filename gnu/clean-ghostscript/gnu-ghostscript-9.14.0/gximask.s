	.text
	.file	"gximask.bc"
	.globl	gx_image_fill_masked_start
	.align	16, 0x90
	.type	gx_image_fill_masked_start,@function
gx_image_fill_masked_start:             # @gx_image_fill_masked_start
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	%rbp, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	jne	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	%rbp, %rdi
	callq	gx_dc_is_pattern1_color_clist_based
	testl	%eax, %eax
	je	.LBB0_7
.LBB0_2:                                # %if.then
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB0_3
# BB#6:                                 # %if.else
	movq	%rbx, (%r14)
	jmp	.LBB0_8
.LBB0_3:                                # %if.then.5
	movl	$st_device_cpath_accum, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_5
# BB#4:                                 # %if.end
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_cpath_accum_begin
	leaq	8(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rsi, %r13
	callq	gx_cpath_outer_box
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gx_cpath_accum_set_cbox
	movq	%r12, 64(%rbp)
	movl	832(%rbx), %eax
	movl	%eax, 832(%rbp)
	movl	836(%rbx), %eax
	movl	%eax, 836(%rbp)
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gx_device_retain
	movq	%rbp, (%r14)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.14
	movq	%rbx, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB0_8
.LBB0_5:                                # %cleanup
	movl	$-25, %r15d
.LBB0_8:                                # %return
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_image_fill_masked_start, .Lfunc_end0-gx_image_fill_masked_start
	.cfi_endproc

	.globl	gx_image_fill_masked_end
	.align	16, 0x90
	.type	gx_image_fill_masked_end,@function
gx_image_fill_masked_end:               # @gx_image_fill_masked_end
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	subq	$2488, %rsp             # imm = 0x9B8
.Ltmp17:
	.cfi_def_cfa_offset 2528
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	2184(%rsp), %rbp
	movq	%rbp, 1872(%rsp)
	movq	24(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_cpath_init_local_shared
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_cpath_accum_end
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_1
# BB#2:                                 # %if.end
	leaq	1880(%rsp), %rdx
	leaq	1872(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_dc_pattern2_clip_with_bbox
	movl	%eax, %ebp
	movq	1872(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movq	%r15, %rdx
	callq	gx_make_clip_device_on_stack
	testl	%ebp, %ebp
	js	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movl	1752(%rbx), %esi
	movl	1760(%rbx), %ecx
	subl	%esi, %ecx
	jle	.LBB1_5
# BB#4:                                 # %if.then.7
	movq	(%r14), %rax
	movl	1756(%rbx), %edx
	movl	1764(%rbx), %r8d
	subl	%edx, %r8d
	movq	$0, 8(%rsp)
	movl	$252, (%rsp)
	leaq	16(%rsp), %r9
	movq	%r14, %rdi
	callq	*40(%rax)
	testl	%ebp, %ebp
	cmovel	%eax, %ebp
	jmp	.LBB1_5
.LBB1_1:                                # %if.end.thread
	leaq	16(%rsp), %rdi
	leaq	2184(%rsp), %rsi
	movq	%r15, %rdx
	callq	gx_make_clip_device_on_stack
.LBB1_5:                                # %if.end.30
	leaq	1880(%rsp), %rax
	cmpq	%rax, 1872(%rsp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.32
	leaq	1880(%rsp), %rdi
	movl	$.L.str.1, %esi
	callq	gx_cpath_free
.LBB1_7:                                # %if.end.33
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_retain
	leaq	2184(%rsp), %rdi
	movl	$.L.str.1, %esi
	callq	gx_cpath_free
	movl	%ebp, %eax
	addq	$2488, %rsp             # imm = 0x9B8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_image_fill_masked_end, .Lfunc_end1-gx_image_fill_masked_end
	.cfi_endproc

	.globl	gx_image_fill_masked
	.align	16, 0x90
	.type	gx_image_fill_masked,@function
gx_image_fill_masked:                   # @gx_image_fill_masked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 144
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	192(%rsp), %r12
	movq	168(%rsp), %r15
	movq	%rbx, 80(%rsp)
	movq	24(%rbx), %rcx
	leaq	80(%rsp), %r8
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	gx_image_fill_masked_start
	testl	%eax, %eax
	js	.LBB2_4
# BB#1:                                 # %if.end
	movl	184(%rsp), %eax
	movl	176(%rsp), %ecx
	movl	160(%rsp), %edx
	movl	152(%rsp), %esi
	movl	144(%rsp), %edi
	movl	%ebp, %r9d
	movq	%r15, %rbp
	movq	80(%rsp), %r15
	movq	%r12, 48(%rsp)
	movl	%eax, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movq	%rbp, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edi, (%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	callq	*1352(%r15)
	testl	%eax, %eax
	movq	%rbp, %rcx
	js	.LBB2_4
# BB#2:                                 # %if.end
	cmpq	%rbx, %r15
	movq	%rcx, %rdx
	je	.LBB2_4
# BB#3:                                 # %if.then.4
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gx_image_fill_masked_end
.LBB2_4:                                # %if.end.6
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_image_fill_masked, .Lfunc_end2-gx_image_fill_masked
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_image_fill_masked_start"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"s_image_cleanup"
	.size	.L.str.1, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
