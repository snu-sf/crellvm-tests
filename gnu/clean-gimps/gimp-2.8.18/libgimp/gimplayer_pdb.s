	.text
	.file	"gimplayer_pdb.bc"
	.hidden	_gimp_layer_new
	.globl	_gimp_layer_new
	.align	16, 0x90
	.type	_gimp_layer_new,@function
_gimp_layer_new:                        # @_gimp_layer_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	leaq	.L.str(%rip), %rax
	leaq	-84(%rbp), %r10
	movl	$13, %r11d
	xorl	%ebx, %ebx
	movl	$4, %r14d
	movl	$3, %r15d
	movl	$22, %r12d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movl	$-1, -88(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movq	-56(%rbp), %r8
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movl	$0, (%rsp)
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$1, %al
	movl	%r12d, -116(%rbp)       # 4-byte Spill
	movl	%r15d, -120(%rbp)       # 4-byte Spill
	movl	%r14d, -124(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -88(%rbp)
.LBB0_2:                                # %if.end
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_layer_new, .Lfunc_end0-_gimp_layer_new
	.cfi_endproc

	.globl	gimp_layer_new_from_visible
	.align	16, 0x90
	.type	gimp_layer_new_from_visible,@function
gimp_layer_new_from_visible:            # @gimp_layer_new_from_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %r8d
	movl	$4, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_layer_new_from_visible, .Lfunc_end1-gimp_layer_new_from_visible
	.cfi_endproc

	.globl	gimp_layer_new_from_drawable
	.align	16, 0x90
	.type	gimp_layer_new_from_drawable,@function
gimp_layer_new_from_drawable:           # @gimp_layer_new_from_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	movl	$13, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_layer_new_from_drawable, .Lfunc_end2-gimp_layer_new_from_drawable
	.cfi_endproc

	.globl	gimp_layer_group_new
	.align	16, 0x90
	.type	gimp_layer_group_new,@function
gimp_layer_group_new:                   # @gimp_layer_group_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_layer_group_new, .Lfunc_end3-gimp_layer_group_new
	.cfi_endproc

	.hidden	_gimp_layer_copy
	.globl	_gimp_layer_copy
	.align	16, 0x90
	.type	_gimp_layer_copy,@function
_gimp_layer_copy:                       # @_gimp_layer_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_layer_copy, .Lfunc_end4-_gimp_layer_copy
	.cfi_endproc

	.globl	gimp_layer_add_alpha
	.align	16, 0x90
	.type	gimp_layer_add_alpha,@function
gimp_layer_add_alpha:                   # @gimp_layer_add_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_layer_add_alpha, .Lfunc_end5-gimp_layer_add_alpha
	.cfi_endproc

	.globl	gimp_layer_flatten
	.align	16, 0x90
	.type	gimp_layer_flatten,@function
gimp_layer_flatten:                     # @gimp_layer_flatten
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_layer_flatten, .Lfunc_end6-gimp_layer_flatten
	.cfi_endproc

	.globl	gimp_layer_scale
	.align	16, 0x90
	.type	gimp_layer_scale,@function
gimp_layer_scale:                       # @gimp_layer_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp28:
	.cfi_offset %rbx, -24
	leaq	.L.str.7(%rip), %rax
	leaq	-36(%rbp), %r8
	movl	$14, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_layer_scale, .Lfunc_end7-gimp_layer_scale
	.cfi_endproc

	.globl	gimp_layer_scale_full
	.align	16, 0x90
	.type	gimp_layer_scale_full,@function
gimp_layer_scale_full:                  # @gimp_layer_scale_full
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
	leaq	.L.str.8(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$14, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_layer_scale_full, .Lfunc_end8-gimp_layer_scale_full
	.cfi_endproc

	.globl	gimp_layer_resize
	.align	16, 0x90
	.type	gimp_layer_resize,@function
gimp_layer_resize:                      # @gimp_layer_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$14, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_layer_resize, .Lfunc_end9-gimp_layer_resize
	.cfi_endproc

	.globl	gimp_layer_resize_to_image_size
	.align	16, 0x90
	.type	gimp_layer_resize_to_image_size,@function
gimp_layer_resize_to_image_size:        # @gimp_layer_resize_to_image_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_layer_resize_to_image_size, .Lfunc_end10-gimp_layer_resize_to_image_size
	.cfi_endproc

	.globl	gimp_layer_translate
	.align	16, 0x90
	.type	gimp_layer_translate,@function
gimp_layer_translate:                   # @gimp_layer_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp45:
	.cfi_offset %rbx, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$14, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_layer_translate, .Lfunc_end11-gimp_layer_translate
	.cfi_endproc

	.globl	gimp_layer_set_offsets
	.align	16, 0x90
	.type	gimp_layer_set_offsets,@function
gimp_layer_set_offsets:                 # @gimp_layer_set_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp49:
	.cfi_offset %rbx, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$14, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_layer_set_offsets, .Lfunc_end12-gimp_layer_set_offsets
	.cfi_endproc

	.globl	gimp_layer_create_mask
	.align	16, 0x90
	.type	gimp_layer_create_mask,@function
gimp_layer_create_mask:                 # @gimp_layer_create_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.13(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_layer_create_mask, .Lfunc_end13-gimp_layer_create_mask
	.cfi_endproc

	.globl	gimp_layer_get_mask
	.align	16, 0x90
	.type	gimp_layer_get_mask,@function
gimp_layer_get_mask:                    # @gimp_layer_get_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.14(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_layer_get_mask, .Lfunc_end14-gimp_layer_get_mask
	.cfi_endproc

	.globl	gimp_layer_from_mask
	.align	16, 0x90
	.type	gimp_layer_from_mask,@function
gimp_layer_from_mask:                   # @gimp_layer_from_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.15(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$15, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_layer_from_mask, .Lfunc_end15-gimp_layer_from_mask
	.cfi_endproc

	.globl	gimp_layer_add_mask
	.align	16, 0x90
	.type	gimp_layer_add_mask,@function
gimp_layer_add_mask:                    # @gimp_layer_add_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	movl	$15, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_layer_add_mask, .Lfunc_end16-gimp_layer_add_mask
	.cfi_endproc

	.globl	gimp_layer_remove_mask
	.align	16, 0x90
	.type	gimp_layer_remove_mask,@function
gimp_layer_remove_mask:                 # @gimp_layer_remove_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.17(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_layer_remove_mask, .Lfunc_end17-gimp_layer_remove_mask
	.cfi_endproc

	.globl	gimp_layer_is_floating_sel
	.align	16, 0x90
	.type	gimp_layer_is_floating_sel,@function
gimp_layer_is_floating_sel:             # @gimp_layer_is_floating_sel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.18(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_layer_is_floating_sel, .Lfunc_end18-gimp_layer_is_floating_sel
	.cfi_endproc

	.globl	gimp_layer_get_lock_alpha
	.align	16, 0x90
	.type	gimp_layer_get_lock_alpha,@function
gimp_layer_get_lock_alpha:              # @gimp_layer_get_lock_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.19(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_layer_get_lock_alpha, .Lfunc_end19-gimp_layer_get_lock_alpha
	.cfi_endproc

	.globl	gimp_layer_set_lock_alpha
	.align	16, 0x90
	.type	gimp_layer_set_lock_alpha,@function
gimp_layer_set_lock_alpha:              # @gimp_layer_set_lock_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.20(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_layer_set_lock_alpha, .Lfunc_end20-gimp_layer_set_lock_alpha
	.cfi_endproc

	.globl	gimp_layer_get_apply_mask
	.align	16, 0x90
	.type	gimp_layer_get_apply_mask,@function
gimp_layer_get_apply_mask:              # @gimp_layer_get_apply_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.21(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_layer_get_apply_mask, .Lfunc_end21-gimp_layer_get_apply_mask
	.cfi_endproc

	.globl	gimp_layer_set_apply_mask
	.align	16, 0x90
	.type	gimp_layer_set_apply_mask,@function
gimp_layer_set_apply_mask:              # @gimp_layer_set_apply_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.22(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_layer_set_apply_mask, .Lfunc_end22-gimp_layer_set_apply_mask
	.cfi_endproc

	.globl	gimp_layer_get_show_mask
	.align	16, 0x90
	.type	gimp_layer_get_show_mask,@function
gimp_layer_get_show_mask:               # @gimp_layer_get_show_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.23(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_layer_get_show_mask, .Lfunc_end23-gimp_layer_get_show_mask
	.cfi_endproc

	.globl	gimp_layer_set_show_mask
	.align	16, 0x90
	.type	gimp_layer_set_show_mask,@function
gimp_layer_set_show_mask:               # @gimp_layer_set_show_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.24(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_layer_set_show_mask, .Lfunc_end24-gimp_layer_set_show_mask
	.cfi_endproc

	.globl	gimp_layer_get_edit_mask
	.align	16, 0x90
	.type	gimp_layer_get_edit_mask,@function
gimp_layer_get_edit_mask:               # @gimp_layer_get_edit_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.25(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_layer_get_edit_mask, .Lfunc_end25-gimp_layer_get_edit_mask
	.cfi_endproc

	.globl	gimp_layer_set_edit_mask
	.align	16, 0x90
	.type	gimp_layer_set_edit_mask,@function
gimp_layer_set_edit_mask:               # @gimp_layer_set_edit_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.26(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_layer_set_edit_mask, .Lfunc_end26-gimp_layer_set_edit_mask
	.cfi_endproc

	.globl	gimp_layer_get_opacity
	.align	16, 0x90
	.type	gimp_layer_get_opacity,@function
gimp_layer_get_opacity:                 # @gimp_layer_get_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.27(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB27_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_layer_get_opacity, .Lfunc_end27-gimp_layer_get_opacity
	.cfi_endproc

	.globl	gimp_layer_set_opacity
	.align	16, 0x90
	.type	gimp_layer_set_opacity,@function
gimp_layer_set_opacity:                 # @gimp_layer_set_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.28(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$14, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_layer_set_opacity, .Lfunc_end28-gimp_layer_set_opacity
	.cfi_endproc

	.globl	gimp_layer_get_mode
	.align	16, 0x90
	.type	gimp_layer_get_mode,@function
gimp_layer_get_mode:                    # @gimp_layer_get_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.29(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_layer_get_mode, .Lfunc_end29-gimp_layer_get_mode
	.cfi_endproc

	.globl	gimp_layer_set_mode
	.align	16, 0x90
	.type	gimp_layer_set_mode,@function
gimp_layer_set_mode:                    # @gimp_layer_set_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.30(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_layer_set_mode, .Lfunc_end30-gimp_layer_set_mode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-layer-new"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-layer-new-from-visible"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-layer-new-from-drawable"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-layer-group-new"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-layer-copy"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-layer-add-alpha"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-layer-flatten"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-layer-scale"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-layer-scale-full"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-layer-resize"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-layer-resize-to-image-size"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-layer-translate"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-layer-set-offsets"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-layer-create-mask"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-layer-get-mask"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-layer-from-mask"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-layer-add-mask"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-layer-remove-mask"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-layer-is-floating-sel"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-layer-get-lock-alpha"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-layer-set-lock-alpha"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-layer-get-apply-mask"
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-layer-set-apply-mask"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-layer-get-show-mask"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-layer-set-show-mask"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-layer-get-edit-mask"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-layer-set-edit-mask"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-layer-get-opacity"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-layer-set-opacity"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-layer-get-mode"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-layer-set-mode"
	.size	.L.str.30, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
