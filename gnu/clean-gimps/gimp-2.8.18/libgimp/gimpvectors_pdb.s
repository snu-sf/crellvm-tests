	.text
	.file	"gimpvectors_pdb.bc"
	.globl	gimp_vectors_new
	.align	16, 0x90
	.type	gimp_vectors_new,@function
gimp_vectors_new:                       # @gimp_vectors_new
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
	subq	$64, %rsp
	leaq	.L.str(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -32(%rbp)
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
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_new, .Lfunc_end0-gimp_vectors_new
	.cfi_endproc

	.globl	gimp_vectors_new_from_text_layer
	.align	16, 0x90
	.type	gimp_vectors_new_from_text_layer,@function
gimp_vectors_new_from_text_layer:       # @gimp_vectors_new_from_text_layer
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
	subq	$48, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$14, %r8d
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
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_new_from_text_layer, .Lfunc_end1-gimp_vectors_new_from_text_layer
	.cfi_endproc

	.globl	gimp_vectors_copy
	.align	16, 0x90
	.type	gimp_vectors_copy,@function
gimp_vectors_copy:                      # @gimp_vectors_copy
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
	movl	$19, %edx
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
	.size	gimp_vectors_copy, .Lfunc_end2-gimp_vectors_copy
	.cfi_endproc

	.globl	gimp_vectors_get_strokes
	.align	16, 0x90
	.type	gimp_vectors_get_strokes,@function
gimp_vectors_get_strokes:               # @gimp_vectors_get_strokes
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
	movl	$19, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vectors_get_strokes, .Lfunc_end3-gimp_vectors_get_strokes
	.cfi_endproc

	.globl	gimp_vectors_stroke_get_length
	.align	16, 0x90
	.type	gimp_vectors_stroke_get_length,@function
gimp_vectors_stroke_get_length:         # @gimp_vectors_stroke_get_length
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
	subq	$80, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	xorps	%xmm1, %xmm1
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_vectors_stroke_get_length, .Lfunc_end4-gimp_vectors_stroke_get_length
	.cfi_endproc

	.globl	gimp_vectors_stroke_get_point_at_dist
	.align	16, 0x90
	.type	gimp_vectors_stroke_get_point_at_dist,@function
gimp_vectors_stroke_get_point_at_dist:  # @gimp_vectors_stroke_get_point_at_dist
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	leaq	.L.str.5(%rip), %rax
	leaq	-100(%rbp), %r10
	movl	$19, %r11d
	xorl	%ebx, %ebx
	movl	$3, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	$1, -104(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r9d
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movq	%r10, %rsi
	movl	%r11d, %edx
	movl	%ebx, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$2, %al
	movl	%r15d, -108(%rbp)       # 4-byte Spill
	movl	%r14d, -112(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-96(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-96(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-96(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, (%rax)
.LBB5_2:                                # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vectors_stroke_get_point_at_dist, .Lfunc_end5-gimp_vectors_stroke_get_point_at_dist
	.cfi_endproc

	.globl	gimp_vectors_remove_stroke
	.align	16, 0x90
	.type	gimp_vectors_remove_stroke,@function
gimp_vectors_remove_stroke:             # @gimp_vectors_remove_stroke
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
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$19, %edx
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
.Lfunc_end6:
	.size	gimp_vectors_remove_stroke, .Lfunc_end6-gimp_vectors_remove_stroke
	.cfi_endproc

	.globl	gimp_vectors_stroke_close
	.align	16, 0x90
	.type	gimp_vectors_stroke_close,@function
gimp_vectors_stroke_close:              # @gimp_vectors_stroke_close
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
	subq	$48, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$19, %edx
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
.Lfunc_end7:
	.size	gimp_vectors_stroke_close, .Lfunc_end7-gimp_vectors_stroke_close
	.cfi_endproc

	.globl	gimp_vectors_stroke_translate
	.align	16, 0x90
	.type	gimp_vectors_stroke_translate,@function
gimp_vectors_stroke_translate:          # @gimp_vectors_stroke_translate
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp31:
	.cfi_offset %rbx, -24
	leaq	.L.str.8(%rip), %rax
	leaq	-36(%rbp), %r8
	movl	$19, %r9d
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
.Lfunc_end8:
	.size	gimp_vectors_stroke_translate, .Lfunc_end8-gimp_vectors_stroke_translate
	.cfi_endproc

	.globl	gimp_vectors_stroke_scale
	.align	16, 0x90
	.type	gimp_vectors_stroke_scale,@function
gimp_vectors_stroke_scale:              # @gimp_vectors_stroke_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp35:
	.cfi_offset %rbx, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$2, %al
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_vectors_stroke_scale, .Lfunc_end9-gimp_vectors_stroke_scale
	.cfi_endproc

	.globl	gimp_vectors_stroke_rotate
	.align	16, 0x90
	.type	gimp_vectors_stroke_rotate,@function
gimp_vectors_stroke_rotate:             # @gimp_vectors_stroke_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp39:
	.cfi_offset %rbx, -24
	leaq	.L.str.10(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movl	$1, -56(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	-60(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$3, %al
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_vectors_stroke_rotate, .Lfunc_end10-gimp_vectors_stroke_rotate
	.cfi_endproc

	.globl	gimp_vectors_stroke_flip
	.align	16, 0x90
	.type	gimp_vectors_stroke_flip,@function
gimp_vectors_stroke_flip:               # @gimp_vectors_stroke_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$19, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	movl	%r10d, -76(%rbp)        # 4-byte Spill
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
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_vectors_stroke_flip, .Lfunc_end11-gimp_vectors_stroke_flip
	.cfi_endproc

	.globl	gimp_vectors_stroke_flip_free
	.align	16, 0x90
	.type	gimp_vectors_stroke_flip_free,@function
gimp_vectors_stroke_flip_free:          # @gimp_vectors_stroke_flip_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp48:
	.cfi_offset %rbx, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	-68(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$4, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_vectors_stroke_flip_free, .Lfunc_end12-gimp_vectors_stroke_flip_free
	.cfi_endproc

	.globl	gimp_vectors_stroke_get_points
	.align	16, 0x90
	.type	gimp_vectors_stroke_get_points,@function
gimp_vectors_stroke_get_points:         # @gimp_vectors_stroke_get_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp52:
	.cfi_offset %rbx, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$19, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	-24(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
	movq	-48(%rbp), %rax
	movl	168(%rax), %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, (%rax)
.LBB13_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_vectors_stroke_get_points, .Lfunc_end13-gimp_vectors_stroke_get_points
	.cfi_endproc

	.globl	gimp_vectors_stroke_new_from_points
	.align	16, 0x90
	.type	gimp_vectors_stroke_new_from_points,@function
gimp_vectors_stroke_new_from_points:    # @gimp_vectors_stroke_new_from_points
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp56:
	.cfi_offset %rbx, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
	leaq	.L.str.14(%rip), %rax
	leaq	-68(%rbp), %r9
	movl	$19, %r10d
	xorl	%r11d, %r11d
	movl	$8, %ebx
	movl	$22, %r14d
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	$0, -72(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %r15
	movl	-52(%rbp), %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-80(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$8, 16(%rsp)
	movq	%r15, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB14_2:                               # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_vectors_stroke_new_from_points, .Lfunc_end14-gimp_vectors_stroke_new_from_points
	.cfi_endproc

	.globl	gimp_vectors_stroke_interpolate
	.align	16, 0x90
	.type	gimp_vectors_stroke_interpolate,@function
gimp_vectors_stroke_interpolate:        # @gimp_vectors_stroke_interpolate
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp62:
	.cfi_offset %rbx, -24
	leaq	.L.str.15(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$19, %r9d
	xorl	%r10d, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
	movq	-48(%rbp), %rax
	movl	128(%rax), %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, (%rax)
.LBB15_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-64(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_vectors_stroke_interpolate, .Lfunc_end15-gimp_vectors_stroke_interpolate
	.cfi_endproc

	.globl	gimp_vectors_bezier_stroke_new_moveto
	.align	16, 0x90
	.type	gimp_vectors_bezier_stroke_new_moveto,@function
gimp_vectors_bezier_stroke_new_moveto:  # @gimp_vectors_bezier_stroke_new_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-36(%rbp), %rsi
	movl	$19, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$2, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_vectors_bezier_stroke_new_moveto, .Lfunc_end16-gimp_vectors_bezier_stroke_new_moveto
	.cfi_endproc

	.globl	gimp_vectors_bezier_stroke_lineto
	.align	16, 0x90
	.type	gimp_vectors_bezier_stroke_lineto,@function
gimp_vectors_bezier_stroke_lineto:      # @gimp_vectors_bezier_stroke_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp69:
	.cfi_offset %rbx, -24
	leaq	.L.str.17(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$2, %al
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_vectors_bezier_stroke_lineto, .Lfunc_end17-gimp_vectors_bezier_stroke_lineto
	.cfi_endproc

	.globl	gimp_vectors_bezier_stroke_conicto
	.align	16, 0x90
	.type	gimp_vectors_bezier_stroke_conicto,@function
gimp_vectors_bezier_stroke_conicto:     # @gimp_vectors_bezier_stroke_conicto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp73:
	.cfi_offset %rbx, -24
	leaq	.L.str.18(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	-68(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$4, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_vectors_bezier_stroke_conicto, .Lfunc_end18-gimp_vectors_bezier_stroke_conicto
	.cfi_endproc

	.globl	gimp_vectors_bezier_stroke_cubicto
	.align	16, 0x90
	.type	gimp_vectors_bezier_stroke_cubicto,@function
gimp_vectors_bezier_stroke_cubicto:     # @gimp_vectors_bezier_stroke_cubicto
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp77:
	.cfi_offset %rbx, -24
	leaq	.L.str.19(%rip), %rax
	leaq	-76(%rbp), %rcx
	movl	$19, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movl	$1, -80(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -88(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$6, %al
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_vectors_bezier_stroke_cubicto, .Lfunc_end19-gimp_vectors_bezier_stroke_cubicto
	.cfi_endproc

	.globl	gimp_vectors_bezier_stroke_new_ellipse
	.align	16, 0x90
	.type	gimp_vectors_bezier_stroke_new_ellipse,@function
gimp_vectors_bezier_stroke_new_ellipse: # @gimp_vectors_bezier_stroke_new_ellipse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	.L.str.20(%rip), %rax
	leaq	-60(%rbp), %rsi
	movl	$19, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movl	$0, -64(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$5, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB20_2:                               # %if.end
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_vectors_bezier_stroke_new_ellipse, .Lfunc_end20-gimp_vectors_bezier_stroke_new_ellipse
	.cfi_endproc

	.globl	gimp_vectors_to_selection
	.align	16, 0x90
	.type	gimp_vectors_to_selection,@function
gimp_vectors_to_selection:              # @gimp_vectors_to_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
	leaq	.L.str.21(%rip), %rax
	leaq	-60(%rbp), %r8
	movl	$19, %r9d
	xorl	%r10d, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$2, %al
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_vectors_to_selection, .Lfunc_end21-gimp_vectors_to_selection
	.cfi_endproc

	.globl	gimp_vectors_import_from_file
	.align	16, 0x90
	.type	gimp_vectors_import_from_file,@function
gimp_vectors_import_from_file:          # @gimp_vectors_import_from_file
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp89:
	.cfi_offset %rbx, -48
.Ltmp90:
	.cfi_offset %r12, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
	leaq	.L.str.22(%rip), %rax
	leaq	-84(%rbp), %r10
	movl	$13, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %r9
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%r10, %rsi
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	movl	%ebx, %r8d
	movl	$0, (%rsp)
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	movl	%r15d, -104(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-64(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-64(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	memcpy@PLT
.LBB22_2:                               # %if.end
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_vectors_import_from_file, .Lfunc_end22-gimp_vectors_import_from_file
	.cfi_endproc

	.globl	gimp_vectors_import_from_string
	.align	16, 0x90
	.type	gimp_vectors_import_from_string,@function
gimp_vectors_import_from_string:        # @gimp_vectors_import_from_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	leaq	.L.str.23(%rip), %r10
	leaq	-100(%rbp), %r11
	movl	$13, %ebx
	movl	$4, %r14d
	xorl	%r15d, %r15d
	movl	$22, %r12d
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	$1, -104(%rbp)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %r9
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %r8d
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movq	%r11, %rsi
	movl	%edx, -112(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$0, (%rsp)
	movl	-112(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-108(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-116(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%r12d, -120(%rbp)       # 4-byte Spill
	movl	%r15d, -124(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-80(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-80(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy@PLT
.LBB23_2:                               # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_vectors_import_from_string, .Lfunc_end23-gimp_vectors_import_from_string
	.cfi_endproc

	.globl	gimp_vectors_export_to_file
	.align	16, 0x90
	.type	gimp_vectors_export_to_file,@function
gimp_vectors_export_to_file:            # @gimp_vectors_export_to_file
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp104:
	.cfi_offset %rbx, -32
.Ltmp105:
	.cfi_offset %r14, -24
	leaq	.L.str.24(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$13, %r8d
	movl	$4, %r9d
	movl	$19, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$19, (%rsp)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	movl	%r11d, -84(%rbp)        # 4-byte Spill
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
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_vectors_export_to_file, .Lfunc_end24-gimp_vectors_export_to_file
	.cfi_endproc

	.globl	gimp_vectors_export_to_string
	.align	16, 0x90
	.type	gimp_vectors_export_to_string,@function
gimp_vectors_export_to_string:          # @gimp_vectors_export_to_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.25(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$19, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	-36(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_vectors_export_to_string, .Lfunc_end25-gimp_vectors_export_to_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-vectors-new"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-vectors-new-from-text-layer"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-vectors-copy"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-vectors-get-strokes"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-vectors-stroke-get-length"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-vectors-stroke-get-point-at-dist"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-vectors-remove-stroke"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-vectors-stroke-close"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-vectors-stroke-translate"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-vectors-stroke-scale"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-vectors-stroke-rotate"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-vectors-stroke-flip"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-vectors-stroke-flip-free"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-vectors-stroke-get-points"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-vectors-stroke-new-from-points"
	.size	.L.str.14, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-vectors-stroke-interpolate"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-vectors-bezier-stroke-new-moveto"
	.size	.L.str.16, 38

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-vectors-bezier-stroke-lineto"
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-vectors-bezier-stroke-conicto"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-vectors-bezier-stroke-cubicto"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-vectors-bezier-stroke-new-ellipse"
	.size	.L.str.20, 39

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-vectors-to-selection"
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-vectors-import-from-file"
	.size	.L.str.22, 30

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-vectors-import-from-string"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-vectors-export-to-file"
	.size	.L.str.24, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-vectors-export-to-string"
	.size	.L.str.25, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
