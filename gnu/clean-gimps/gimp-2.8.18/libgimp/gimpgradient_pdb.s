	.text
	.file	"gimpgradient_pdb.bc"
	.globl	gimp_gradient_new
	.align	16, 0x90
	.type	gimp_gradient_new,@function
gimp_gradient_new:                      # @gimp_gradient_new
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
	subq	$32, %rsp
	leaq	.L.str(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradient_new, .Lfunc_end0-gimp_gradient_new
	.cfi_endproc

	.globl	gimp_gradient_duplicate
	.align	16, 0x90
	.type	gimp_gradient_duplicate,@function
gimp_gradient_duplicate:                # @gimp_gradient_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradient_duplicate, .Lfunc_end1-gimp_gradient_duplicate
	.cfi_endproc

	.globl	gimp_gradient_is_editable
	.align	16, 0x90
	.type	gimp_gradient_is_editable,@function
gimp_gradient_is_editable:              # @gimp_gradient_is_editable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rcx
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
	.size	gimp_gradient_is_editable, .Lfunc_end2-gimp_gradient_is_editable
	.cfi_endproc

	.globl	gimp_gradient_rename
	.align	16, 0x90
	.type	gimp_gradient_rename,@function
gimp_gradient_rename:                   # @gimp_gradient_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r9
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -40(%rbp)
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gradient_rename, .Lfunc_end3-gimp_gradient_rename
	.cfi_endproc

	.globl	gimp_gradient_delete
	.align	16, 0x90
	.type	gimp_gradient_delete,@function
gimp_gradient_delete:                   # @gimp_gradient_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gradient_delete, .Lfunc_end4-gimp_gradient_delete
	.cfi_endproc

	.globl	gimp_gradient_get_number_of_segments
	.align	16, 0x90
	.type	gimp_gradient_get_number_of_segments,@function
gimp_gradient_get_number_of_segments:   # @gimp_gradient_get_number_of_segments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_gradient_get_number_of_segments, .Lfunc_end5-gimp_gradient_get_number_of_segments
	.cfi_endproc

	.globl	gimp_gradient_get_uniform_samples
	.align	16, 0x90
	.type	gimp_gradient_get_uniform_samples,@function
gimp_gradient_get_uniform_samples:      # @gimp_gradient_get_uniform_samples
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	leaq	.L.str.6(%rip), %rax
	leaq	-60(%rbp), %r9
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$1, -64(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_gradient_get_uniform_samples, .Lfunc_end6-gimp_gradient_get_uniform_samples
	.cfi_endproc

	.globl	gimp_gradient_get_custom_samples
	.align	16, 0x90
	.type	gimp_gradient_get_custom_samples,@function
gimp_gradient_get_custom_samples:       # @gimp_gradient_get_custom_samples
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	leaq	.L.str.7(%rip), %rax
	leaq	-92(%rbp), %r10
	movl	$4, %r11d
	xorl	%ebx, %ebx
	movl	$8, %r14d
	movl	$22, %r15d
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$1, -96(%rbp)
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r9d
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movl	%ebx, %r8d
	movl	$8, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r14d, -116(%rbp)       # 4-byte Spill
	movl	%r15d, -120(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %edx
	movl	%edx, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-72(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	memcpy@PLT
.LBB7_2:                                # %if.end
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_gradient_get_custom_samples, .Lfunc_end7-gimp_gradient_get_custom_samples
	.cfi_endproc

	.globl	gimp_gradient_segment_get_left_color
	.align	16, 0x90
	.type	gimp_gradient_segment_get_left_color,@function
gimp_gradient_segment_get_left_color:   # @gimp_gradient_segment_get_left_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	leaq	.L.str.8(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-48(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB8_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_gradient_segment_get_left_color, .Lfunc_end8-gimp_gradient_segment_get_left_color
	.cfi_endproc

	.globl	gimp_gradient_segment_set_left_color
	.align	16, 0x90
	.type	gimp_gradient_segment_set_left_color,@function
gimp_gradient_segment_set_left_color:   # @gimp_gradient_segment_set_left_color
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
	leaq	-60(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$10, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$1, -64(%rbp)
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$10, (%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	movl	%r11d, -96(%rbp)        # 4-byte Spill
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_gradient_segment_set_left_color, .Lfunc_end9-gimp_gradient_segment_set_left_color
	.cfi_endproc

	.globl	gimp_gradient_segment_get_right_color
	.align	16, 0x90
	.type	gimp_gradient_segment_get_right_color,@function
gimp_gradient_segment_get_right_color:  # @gimp_gradient_segment_get_right_color
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp42:
	.cfi_offset %rbx, -24
	leaq	.L.str.10(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-48(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_gradient_segment_get_right_color, .Lfunc_end10-gimp_gradient_segment_get_right_color
	.cfi_endproc

	.globl	gimp_gradient_segment_set_right_color
	.align	16, 0x90
	.type	gimp_gradient_segment_set_right_color,@function
gimp_gradient_segment_set_right_color:  # @gimp_gradient_segment_set_right_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$10, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$1, -64(%rbp)
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$10, (%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	movl	%r11d, -96(%rbp)        # 4-byte Spill
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_gradient_segment_set_right_color, .Lfunc_end11-gimp_gradient_segment_set_right_color
	.cfi_endproc

	.globl	gimp_gradient_segment_get_left_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_get_left_pos,@function
gimp_gradient_segment_get_left_pos:     # @gimp_gradient_segment_get_left_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.12(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB12_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_gradient_segment_get_left_pos, .Lfunc_end12-gimp_gradient_segment_get_left_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_set_left_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_set_left_pos,@function
gimp_gradient_segment_set_left_pos:     # @gimp_gradient_segment_set_left_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp54:
	.cfi_offset %rbx, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB13_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_gradient_segment_set_left_pos, .Lfunc_end13-gimp_gradient_segment_set_left_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_get_middle_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_get_middle_pos,@function
gimp_gradient_segment_get_middle_pos:   # @gimp_gradient_segment_get_middle_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.14(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_gradient_segment_get_middle_pos, .Lfunc_end14-gimp_gradient_segment_get_middle_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_set_middle_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_set_middle_pos,@function
gimp_gradient_segment_set_middle_pos:   # @gimp_gradient_segment_set_middle_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp61:
	.cfi_offset %rbx, -24
	leaq	.L.str.15(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_gradient_segment_set_middle_pos, .Lfunc_end15-gimp_gradient_segment_set_middle_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_get_right_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_get_right_pos,@function
gimp_gradient_segment_get_right_pos:    # @gimp_gradient_segment_get_right_pos
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
	subq	$80, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_gradient_segment_get_right_pos, .Lfunc_end16-gimp_gradient_segment_get_right_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_set_right_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_set_right_pos,@function
gimp_gradient_segment_set_right_pos:    # @gimp_gradient_segment_set_right_pos
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp68:
	.cfi_offset %rbx, -24
	leaq	.L.str.17(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB17_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_gradient_segment_set_right_pos, .Lfunc_end17-gimp_gradient_segment_set_right_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_get_blending_function
	.align	16, 0x90
	.type	gimp_gradient_segment_get_blending_function,@function
gimp_gradient_segment_get_blending_function: # @gimp_gradient_segment_get_blending_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.18(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB18_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_gradient_segment_get_blending_function, .Lfunc_end18-gimp_gradient_segment_get_blending_function
	.cfi_endproc

	.globl	gimp_gradient_segment_get_coloring_type
	.align	16, 0x90
	.type	gimp_gradient_segment_get_coloring_type,@function
gimp_gradient_segment_get_coloring_type: # @gimp_gradient_segment_get_coloring_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.19(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB19_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_gradient_segment_get_coloring_type, .Lfunc_end19-gimp_gradient_segment_get_coloring_type
	.cfi_endproc

	.globl	gimp_gradient_segment_range_set_blending_function
	.align	16, 0x90
	.type	gimp_gradient_segment_range_set_blending_function,@function
gimp_gradient_segment_range_set_blending_function: # @gimp_gradient_segment_range_set_blending_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp78:
	.cfi_offset %rbx, -32
.Ltmp79:
	.cfi_offset %r14, -24
	leaq	.L.str.20(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %ebx
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_gradient_segment_range_set_blending_function, .Lfunc_end20-gimp_gradient_segment_range_set_blending_function
	.cfi_endproc

	.globl	gimp_gradient_segment_range_set_coloring_type
	.align	16, 0x90
	.type	gimp_gradient_segment_range_set_coloring_type,@function
gimp_gradient_segment_range_set_coloring_type: # @gimp_gradient_segment_range_set_coloring_type
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp83:
	.cfi_offset %rbx, -32
.Ltmp84:
	.cfi_offset %r14, -24
	leaq	.L.str.21(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %ebx
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_gradient_segment_range_set_coloring_type, .Lfunc_end21-gimp_gradient_segment_range_set_coloring_type
	.cfi_endproc

	.globl	gimp_gradient_segment_range_flip
	.align	16, 0x90
	.type	gimp_gradient_segment_range_flip,@function
gimp_gradient_segment_range_flip:       # @gimp_gradient_segment_range_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp88:
	.cfi_offset %rbx, -24
	leaq	.L.str.22(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_gradient_segment_range_flip, .Lfunc_end22-gimp_gradient_segment_range_flip
	.cfi_endproc

	.globl	gimp_gradient_segment_range_replicate
	.align	16, 0x90
	.type	gimp_gradient_segment_range_replicate,@function
gimp_gradient_segment_range_replicate:  # @gimp_gradient_segment_range_replicate
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp92:
	.cfi_offset %rbx, -32
.Ltmp93:
	.cfi_offset %r14, -24
	leaq	.L.str.23(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %ebx
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_gradient_segment_range_replicate, .Lfunc_end23-gimp_gradient_segment_range_replicate
	.cfi_endproc

	.globl	gimp_gradient_segment_range_split_midpoint
	.align	16, 0x90
	.type	gimp_gradient_segment_range_split_midpoint,@function
gimp_gradient_segment_range_split_midpoint: # @gimp_gradient_segment_range_split_midpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp97:
	.cfi_offset %rbx, -24
	leaq	.L.str.24(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_gradient_segment_range_split_midpoint, .Lfunc_end24-gimp_gradient_segment_range_split_midpoint
	.cfi_endproc

	.globl	gimp_gradient_segment_range_split_uniform
	.align	16, 0x90
	.type	gimp_gradient_segment_range_split_uniform,@function
gimp_gradient_segment_range_split_uniform: # @gimp_gradient_segment_range_split_uniform
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp101:
	.cfi_offset %rbx, -32
.Ltmp102:
	.cfi_offset %r14, -24
	leaq	.L.str.25(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %ebx
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_gradient_segment_range_split_uniform, .Lfunc_end25-gimp_gradient_segment_range_split_uniform
	.cfi_endproc

	.globl	gimp_gradient_segment_range_delete
	.align	16, 0x90
	.type	gimp_gradient_segment_range_delete,@function
gimp_gradient_segment_range_delete:     # @gimp_gradient_segment_range_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp106:
	.cfi_offset %rbx, -24
	leaq	.L.str.26(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_gradient_segment_range_delete, .Lfunc_end26-gimp_gradient_segment_range_delete
	.cfi_endproc

	.globl	gimp_gradient_segment_range_redistribute_handles
	.align	16, 0x90
	.type	gimp_gradient_segment_range_redistribute_handles,@function
gimp_gradient_segment_range_redistribute_handles: # @gimp_gradient_segment_range_redistribute_handles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp110:
	.cfi_offset %rbx, -24
	leaq	.L.str.27(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_gradient_segment_range_redistribute_handles, .Lfunc_end27-gimp_gradient_segment_range_redistribute_handles
	.cfi_endproc

	.globl	gimp_gradient_segment_range_blend_colors
	.align	16, 0x90
	.type	gimp_gradient_segment_range_blend_colors,@function
gimp_gradient_segment_range_blend_colors: # @gimp_gradient_segment_range_blend_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp114:
	.cfi_offset %rbx, -24
	leaq	.L.str.28(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_gradient_segment_range_blend_colors, .Lfunc_end28-gimp_gradient_segment_range_blend_colors
	.cfi_endproc

	.globl	gimp_gradient_segment_range_blend_opacity
	.align	16, 0x90
	.type	gimp_gradient_segment_range_blend_opacity,@function
gimp_gradient_segment_range_blend_opacity: # @gimp_gradient_segment_range_blend_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp118:
	.cfi_offset %rbx, -24
	leaq	.L.str.29(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_gradient_segment_range_blend_opacity, .Lfunc_end29-gimp_gradient_segment_range_blend_opacity
	.cfi_endproc

	.globl	gimp_gradient_segment_range_move
	.align	16, 0x90
	.type	gimp_gradient_segment_range_move,@function
gimp_gradient_segment_range_move:       # @gimp_gradient_segment_range_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp122:
	.cfi_offset %rbx, -32
.Ltmp123:
	.cfi_offset %r14, -24
	leaq	.L.str.30(%rip), %rax
	leaq	-60(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	xorps	%xmm1, %xmm1
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movsd	%xmm1, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %r14d
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$1, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB30_2:                               # %if.end
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_gradient_segment_range_move, .Lfunc_end30-gimp_gradient_segment_range_move
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-gradient-new"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-gradient-duplicate"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-gradient-is-editable"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-gradient-rename"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-gradient-delete"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-gradient-get-number-of-segments"
	.size	.L.str.5, 37

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-gradient-get-uniform-samples"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-gradient-get-custom-samples"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-gradient-segment-get-left-color"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-gradient-segment-set-left-color"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-gradient-segment-get-right-color"
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-gradient-segment-set-right-color"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-gradient-segment-get-left-pos"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-gradient-segment-set-left-pos"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-gradient-segment-get-middle-pos"
	.size	.L.str.14, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-gradient-segment-set-middle-pos"
	.size	.L.str.15, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-gradient-segment-get-right-pos"
	.size	.L.str.16, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-gradient-segment-set-right-pos"
	.size	.L.str.17, 36

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-gradient-segment-get-blending-function"
	.size	.L.str.18, 44

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-gradient-segment-get-coloring-type"
	.size	.L.str.19, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-gradient-segment-range-set-blending-function"
	.size	.L.str.20, 50

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-gradient-segment-range-set-coloring-type"
	.size	.L.str.21, 46

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-gradient-segment-range-flip"
	.size	.L.str.22, 33

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-gradient-segment-range-replicate"
	.size	.L.str.23, 38

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-gradient-segment-range-split-midpoint"
	.size	.L.str.24, 43

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-gradient-segment-range-split-uniform"
	.size	.L.str.25, 42

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-gradient-segment-range-delete"
	.size	.L.str.26, 35

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-gradient-segment-range-redistribute-handles"
	.size	.L.str.27, 49

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-gradient-segment-range-blend-colors"
	.size	.L.str.28, 41

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-gradient-segment-range-blend-opacity"
	.size	.L.str.29, 42

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-gradient-segment-range-move"
	.size	.L.str.30, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
