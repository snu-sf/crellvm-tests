	.text
	.file	"gimpchannel_pdb.bc"
	.hidden	_gimp_channel_new
	.globl	_gimp_channel_new
	.align	16, 0x90
	.type	_gimp_channel_new,@function
_gimp_channel_new:                      # @_gimp_channel_new
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	leaq	.L.str(%rip), %rax
	leaq	-92(%rbp), %r9
	movl	$13, %r10d
	xorl	%r11d, %r11d
	movl	$4, %ebx
	movl	$3, %r14d
	movl	$10, %r15d
	movl	$22, %r12d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	$-1, -96(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %r8
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %r13
	movq	%rax, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	-104(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$10, 40(%rsp)
	movq	%r13, 48(%rsp)
	movl	$22, 56(%rsp)
	movb	$1, %al
	movl	%r12d, -116(%rbp)       # 4-byte Spill
	movl	%ebx, -120(%rbp)        # 4-byte Spill
	movl	%r14d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB0_2:                                # %if.end
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_channel_new, .Lfunc_end0-_gimp_channel_new
	.cfi_endproc

	.globl	gimp_channel_new_from_component
	.align	16, 0x90
	.type	gimp_channel_new_from_component,@function
gimp_channel_new_from_component:        # @gimp_channel_new_from_component
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$4, %r10d
	movl	$22, %r11d
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
	movl	%r9d, %r8d
	movl	-36(%rbp), %r9d         # 4-byte Reload
	movl	$4, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	movl	%r11d, -56(%rbp)        # 4-byte Spill
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
	.size	gimp_channel_new_from_component, .Lfunc_end1-gimp_channel_new_from_component
	.cfi_endproc

	.globl	gimp_channel_copy
	.align	16, 0x90
	.type	gimp_channel_copy,@function
gimp_channel_copy:                      # @gimp_channel_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.2(%rip), %rax
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_channel_copy, .Lfunc_end2-gimp_channel_copy
	.cfi_endproc

	.globl	gimp_channel_combine_masks
	.align	16, 0x90
	.type	gimp_channel_combine_masks,@function
gimp_channel_combine_masks:             # @gimp_channel_combine_masks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$15, %r10d
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
	movl	%r10d, %r8d
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
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%ebx, -80(%rbp)         # 4-byte Spill
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
.Lfunc_end3:
	.size	gimp_channel_combine_masks, .Lfunc_end3-gimp_channel_combine_masks
	.cfi_endproc

	.globl	gimp_channel_get_show_masked
	.align	16, 0x90
	.type	gimp_channel_get_show_masked,@function
gimp_channel_get_show_masked:           # @gimp_channel_get_show_masked
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
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$15, %edx
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_channel_get_show_masked, .Lfunc_end4-gimp_channel_get_show_masked
	.cfi_endproc

	.globl	gimp_channel_set_show_masked
	.align	16, 0x90
	.type	gimp_channel_set_show_masked,@function
gimp_channel_set_show_masked:           # @gimp_channel_set_show_masked
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
	subq	$48, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$15, %edx
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
.Lfunc_end5:
	.size	gimp_channel_set_show_masked, .Lfunc_end5-gimp_channel_set_show_masked
	.cfi_endproc

	.globl	gimp_channel_get_opacity
	.align	16, 0x90
	.type	gimp_channel_get_opacity,@function
gimp_channel_get_opacity:               # @gimp_channel_get_opacity
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
	subq	$32, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$15, %edx
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
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_channel_get_opacity, .Lfunc_end6-gimp_channel_get_opacity
	.cfi_endproc

	.globl	gimp_channel_set_opacity
	.align	16, 0x90
	.type	gimp_channel_set_opacity,@function
gimp_channel_set_opacity:               # @gimp_channel_set_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$15, %edx
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
.Lfunc_end7:
	.size	gimp_channel_set_opacity, .Lfunc_end7-gimp_channel_set_opacity
	.cfi_endproc

	.globl	gimp_channel_get_color
	.align	16, 0x90
	.type	gimp_channel_get_color,@function
gimp_channel_get_color:                 # @gimp_channel_get_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$15, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_channel_get_color, .Lfunc_end8-gimp_channel_get_color
	.cfi_endproc

	.globl	gimp_channel_set_color
	.align	16, 0x90
	.type	gimp_channel_set_color,@function
gimp_channel_set_color:                 # @gimp_channel_set_color
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
	subq	$64, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$15, %edx
	movl	$10, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
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
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_channel_set_color, .Lfunc_end9-gimp_channel_set_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-channel-new"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-channel-new-from-component"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-channel-copy"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-channel-combine-masks"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-channel-get-show-masked"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-channel-set-show-masked"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-channel-get-opacity"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-channel-set-opacity"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-channel-get-color"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-channel-set-color"
	.size	.L.str.9, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
