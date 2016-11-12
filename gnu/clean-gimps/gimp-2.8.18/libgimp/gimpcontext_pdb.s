	.text
	.file	"gimpcontext_pdb.bc"
	.globl	gimp_context_push
	.align	16, 0x90
	.type	gimp_context_push,@function
gimp_context_push:                      # @gimp_context_push
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
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_context_push, .Lfunc_end0-gimp_context_push
	.cfi_endproc

	.globl	gimp_context_pop
	.align	16, 0x90
	.type	gimp_context_pop,@function
gimp_context_pop:                       # @gimp_context_pop
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
	subq	$16, %rsp
	leaq	.L.str.1(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_context_pop, .Lfunc_end1-gimp_context_pop
	.cfi_endproc

	.globl	gimp_context_set_defaults
	.align	16, 0x90
	.type	gimp_context_set_defaults,@function
gimp_context_set_defaults:              # @gimp_context_set_defaults
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
	subq	$16, %rsp
	leaq	.L.str.2(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_context_set_defaults, .Lfunc_end2-gimp_context_set_defaults
	.cfi_endproc

	.globl	gimp_context_list_paint_methods
	.align	16, 0x90
	.type	gimp_context_list_paint_methods,@function
gimp_context_list_paint_methods:        # @gimp_context_list_paint_methods
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
	subq	$48, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_6
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -36(%rbp)
.LBB3_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup@PLT
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_2
.LBB3_5:                                # %for.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_context_list_paint_methods, .Lfunc_end3-gimp_context_list_paint_methods
	.cfi_endproc

	.globl	gimp_context_get_paint_method
	.align	16, 0x90
	.type	gimp_context_get_paint_method,@function
gimp_context_get_paint_method:          # @gimp_context_get_paint_method
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
	leaq	.L.str.4(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_context_get_paint_method, .Lfunc_end4-gimp_context_get_paint_method
	.cfi_endproc

	.globl	gimp_context_set_paint_method
	.align	16, 0x90
	.type	gimp_context_set_paint_method,@function
gimp_context_set_paint_method:          # @gimp_context_set_paint_method
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
.Lfunc_end5:
	.size	gimp_context_set_paint_method, .Lfunc_end5-gimp_context_set_paint_method
	.cfi_endproc

	.globl	gimp_context_get_foreground
	.align	16, 0x90
	.type	gimp_context_get_foreground,@function
gimp_context_get_foreground:            # @gimp_context_get_foreground
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
	subq	$32, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_context_get_foreground, .Lfunc_end6-gimp_context_get_foreground
	.cfi_endproc

	.globl	gimp_context_set_foreground
	.align	16, 0x90
	.type	gimp_context_set_foreground,@function
gimp_context_set_foreground:            # @gimp_context_set_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$10, %edx
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
.Lfunc_end7:
	.size	gimp_context_set_foreground, .Lfunc_end7-gimp_context_set_foreground
	.cfi_endproc

	.globl	gimp_context_get_background
	.align	16, 0x90
	.type	gimp_context_get_background,@function
gimp_context_get_background:            # @gimp_context_get_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_context_get_background, .Lfunc_end8-gimp_context_get_background
	.cfi_endproc

	.globl	gimp_context_set_background
	.align	16, 0x90
	.type	gimp_context_set_background,@function
gimp_context_set_background:            # @gimp_context_set_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$10, %edx
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
.Lfunc_end9:
	.size	gimp_context_set_background, .Lfunc_end9-gimp_context_set_background
	.cfi_endproc

	.globl	gimp_context_set_default_colors
	.align	16, 0x90
	.type	gimp_context_set_default_colors,@function
gimp_context_set_default_colors:        # @gimp_context_set_default_colors
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
	subq	$16, %rsp
	leaq	.L.str.10(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_context_set_default_colors, .Lfunc_end10-gimp_context_set_default_colors
	.cfi_endproc

	.globl	gimp_context_swap_colors
	.align	16, 0x90
	.type	gimp_context_swap_colors,@function
gimp_context_swap_colors:               # @gimp_context_swap_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.11(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_context_swap_colors, .Lfunc_end11-gimp_context_swap_colors
	.cfi_endproc

	.globl	gimp_context_get_opacity
	.align	16, 0x90
	.type	gimp_context_get_opacity,@function
gimp_context_get_opacity:               # @gimp_context_get_opacity
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
	subq	$32, %rsp
	leaq	.L.str.12(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_context_get_opacity, .Lfunc_end12-gimp_context_get_opacity
	.cfi_endproc

	.globl	gimp_context_set_opacity
	.align	16, 0x90
	.type	gimp_context_set_opacity,@function
gimp_context_set_opacity:               # @gimp_context_set_opacity
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
	leaq	.L.str.13(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_context_set_opacity, .Lfunc_end13-gimp_context_set_opacity
	.cfi_endproc

	.globl	gimp_context_get_paint_mode
	.align	16, 0x90
	.type	gimp_context_get_paint_mode,@function
gimp_context_get_paint_mode:            # @gimp_context_get_paint_mode
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
	subq	$16, %rsp
	leaq	.L.str.14(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_context_get_paint_mode, .Lfunc_end14-gimp_context_get_paint_mode
	.cfi_endproc

	.globl	gimp_context_set_paint_mode
	.align	16, 0x90
	.type	gimp_context_set_paint_mode,@function
gimp_context_set_paint_mode:            # @gimp_context_set_paint_mode
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
	subq	$32, %rsp
	leaq	.L.str.15(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end15:
	.size	gimp_context_set_paint_mode, .Lfunc_end15-gimp_context_set_paint_mode
	.cfi_endproc

	.globl	gimp_context_get_brush
	.align	16, 0x90
	.type	gimp_context_get_brush,@function
gimp_context_get_brush:                 # @gimp_context_get_brush
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
	subq	$32, %rsp
	leaq	.L.str.16(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_context_get_brush, .Lfunc_end16-gimp_context_get_brush
	.cfi_endproc

	.globl	gimp_context_set_brush
	.align	16, 0x90
	.type	gimp_context_set_brush,@function
gimp_context_set_brush:                 # @gimp_context_set_brush
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
	subq	$32, %rsp
	leaq	.L.str.17(%rip), %rax
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
.Lfunc_end17:
	.size	gimp_context_set_brush, .Lfunc_end17-gimp_context_set_brush
	.cfi_endproc

	.globl	gimp_context_get_brush_size
	.align	16, 0x90
	.type	gimp_context_get_brush_size,@function
gimp_context_get_brush_size:            # @gimp_context_get_brush_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.18(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_context_get_brush_size, .Lfunc_end18-gimp_context_get_brush_size
	.cfi_endproc

	.globl	gimp_context_set_brush_size
	.align	16, 0x90
	.type	gimp_context_set_brush_size,@function
gimp_context_set_brush_size:            # @gimp_context_set_brush_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.19(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_context_set_brush_size, .Lfunc_end19-gimp_context_set_brush_size
	.cfi_endproc

	.globl	gimp_context_set_brush_default_size
	.align	16, 0x90
	.type	gimp_context_set_brush_default_size,@function
gimp_context_set_brush_default_size:    # @gimp_context_set_brush_default_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.20(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_context_set_brush_default_size, .Lfunc_end20-gimp_context_set_brush_default_size
	.cfi_endproc

	.globl	gimp_context_get_brush_aspect_ratio
	.align	16, 0x90
	.type	gimp_context_get_brush_aspect_ratio,@function
gimp_context_get_brush_aspect_ratio:    # @gimp_context_get_brush_aspect_ratio
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
	subq	$32, %rsp
	leaq	.L.str.21(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB21_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_context_get_brush_aspect_ratio, .Lfunc_end21-gimp_context_get_brush_aspect_ratio
	.cfi_endproc

	.globl	gimp_context_set_brush_aspect_ratio
	.align	16, 0x90
	.type	gimp_context_set_brush_aspect_ratio,@function
gimp_context_set_brush_aspect_ratio:    # @gimp_context_set_brush_aspect_ratio
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
	subq	$32, %rsp
	leaq	.L.str.22(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_context_set_brush_aspect_ratio, .Lfunc_end22-gimp_context_set_brush_aspect_ratio
	.cfi_endproc

	.globl	gimp_context_get_brush_angle
	.align	16, 0x90
	.type	gimp_context_get_brush_angle,@function
gimp_context_get_brush_angle:           # @gimp_context_get_brush_angle
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
	subq	$32, %rsp
	leaq	.L.str.23(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_context_get_brush_angle, .Lfunc_end23-gimp_context_get_brush_angle
	.cfi_endproc

	.globl	gimp_context_set_brush_angle
	.align	16, 0x90
	.type	gimp_context_set_brush_angle,@function
gimp_context_set_brush_angle:           # @gimp_context_set_brush_angle
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
	subq	$32, %rsp
	leaq	.L.str.24(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_context_set_brush_angle, .Lfunc_end24-gimp_context_set_brush_angle
	.cfi_endproc

	.globl	gimp_context_get_dynamics
	.align	16, 0x90
	.type	gimp_context_get_dynamics,@function
gimp_context_get_dynamics:              # @gimp_context_get_dynamics
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
	subq	$32, %rsp
	leaq	.L.str.25(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_context_get_dynamics, .Lfunc_end25-gimp_context_get_dynamics
	.cfi_endproc

	.globl	gimp_context_set_dynamics
	.align	16, 0x90
	.type	gimp_context_set_dynamics,@function
gimp_context_set_dynamics:              # @gimp_context_set_dynamics
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
	subq	$32, %rsp
	leaq	.L.str.26(%rip), %rax
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
.Lfunc_end26:
	.size	gimp_context_set_dynamics, .Lfunc_end26-gimp_context_set_dynamics
	.cfi_endproc

	.globl	gimp_context_get_pattern
	.align	16, 0x90
	.type	gimp_context_get_pattern,@function
gimp_context_get_pattern:               # @gimp_context_get_pattern
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
	subq	$32, %rsp
	leaq	.L.str.27(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_context_get_pattern, .Lfunc_end27-gimp_context_get_pattern
	.cfi_endproc

	.globl	gimp_context_set_pattern
	.align	16, 0x90
	.type	gimp_context_set_pattern,@function
gimp_context_set_pattern:               # @gimp_context_set_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.28(%rip), %rax
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
.Lfunc_end28:
	.size	gimp_context_set_pattern, .Lfunc_end28-gimp_context_set_pattern
	.cfi_endproc

	.globl	gimp_context_get_gradient
	.align	16, 0x90
	.type	gimp_context_get_gradient,@function
gimp_context_get_gradient:              # @gimp_context_get_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.29(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB29_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_context_get_gradient, .Lfunc_end29-gimp_context_get_gradient
	.cfi_endproc

	.globl	gimp_context_set_gradient
	.align	16, 0x90
	.type	gimp_context_set_gradient,@function
gimp_context_set_gradient:              # @gimp_context_set_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.30(%rip), %rax
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
.Lfunc_end30:
	.size	gimp_context_set_gradient, .Lfunc_end30-gimp_context_set_gradient
	.cfi_endproc

	.globl	gimp_context_get_palette
	.align	16, 0x90
	.type	gimp_context_get_palette,@function
gimp_context_get_palette:               # @gimp_context_get_palette
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
	subq	$32, %rsp
	leaq	.L.str.31(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_context_get_palette, .Lfunc_end31-gimp_context_get_palette
	.cfi_endproc

	.globl	gimp_context_set_palette
	.align	16, 0x90
	.type	gimp_context_set_palette,@function
gimp_context_set_palette:               # @gimp_context_set_palette
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.32(%rip), %rax
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
.Lfunc_end32:
	.size	gimp_context_set_palette, .Lfunc_end32-gimp_context_set_palette
	.cfi_endproc

	.globl	gimp_context_get_font
	.align	16, 0x90
	.type	gimp_context_get_font,@function
gimp_context_get_font:                  # @gimp_context_get_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.33(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB33_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_context_get_font, .Lfunc_end33-gimp_context_get_font
	.cfi_endproc

	.globl	gimp_context_set_font
	.align	16, 0x90
	.type	gimp_context_set_font,@function
gimp_context_set_font:                  # @gimp_context_set_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.34(%rip), %rax
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
.Lfunc_end34:
	.size	gimp_context_set_font, .Lfunc_end34-gimp_context_set_font
	.cfi_endproc

	.globl	gimp_context_get_antialias
	.align	16, 0x90
	.type	gimp_context_get_antialias,@function
gimp_context_get_antialias:             # @gimp_context_get_antialias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.35(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB35_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_context_get_antialias, .Lfunc_end35-gimp_context_get_antialias
	.cfi_endproc

	.globl	gimp_context_set_antialias
	.align	16, 0x90
	.type	gimp_context_set_antialias,@function
gimp_context_set_antialias:             # @gimp_context_set_antialias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.36(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end36:
	.size	gimp_context_set_antialias, .Lfunc_end36-gimp_context_set_antialias
	.cfi_endproc

	.globl	gimp_context_get_feather
	.align	16, 0x90
	.type	gimp_context_get_feather,@function
gimp_context_get_feather:               # @gimp_context_get_feather
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
	subq	$16, %rsp
	leaq	.L.str.37(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB37_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_context_get_feather, .Lfunc_end37-gimp_context_get_feather
	.cfi_endproc

	.globl	gimp_context_set_feather
	.align	16, 0x90
	.type	gimp_context_set_feather,@function
gimp_context_set_feather:               # @gimp_context_set_feather
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.38(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end38:
	.size	gimp_context_set_feather, .Lfunc_end38-gimp_context_set_feather
	.cfi_endproc

	.globl	gimp_context_get_feather_radius
	.align	16, 0x90
	.type	gimp_context_get_feather_radius,@function
gimp_context_get_feather_radius:        # @gimp_context_get_feather_radius
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.39(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB39_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB39_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_context_get_feather_radius, .Lfunc_end39-gimp_context_get_feather_radius
	.cfi_endproc

	.globl	gimp_context_set_feather_radius
	.align	16, 0x90
	.type	gimp_context_set_feather_radius,@function
gimp_context_set_feather_radius:        # @gimp_context_set_feather_radius
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.40(%rip), %rdi
	leaq	-28(%rbp), %rsi
	movl	$3, %eax
	movl	$22, %r8d
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	$1, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, %edx
	movl	%eax, %ecx
	movb	$2, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_context_set_feather_radius, .Lfunc_end40-gimp_context_set_feather_radius
	.cfi_endproc

	.globl	gimp_context_get_sample_merged
	.align	16, 0x90
	.type	gimp_context_get_sample_merged,@function
gimp_context_get_sample_merged:         # @gimp_context_get_sample_merged
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.41(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB41_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_context_get_sample_merged, .Lfunc_end41-gimp_context_get_sample_merged
	.cfi_endproc

	.globl	gimp_context_set_sample_merged
	.align	16, 0x90
	.type	gimp_context_set_sample_merged,@function
gimp_context_set_sample_merged:         # @gimp_context_set_sample_merged
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.42(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end42:
	.size	gimp_context_set_sample_merged, .Lfunc_end42-gimp_context_set_sample_merged
	.cfi_endproc

	.globl	gimp_context_get_sample_criterion
	.align	16, 0x90
	.type	gimp_context_get_sample_criterion,@function
gimp_context_get_sample_criterion:      # @gimp_context_get_sample_criterion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.43(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB43_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB43_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_context_get_sample_criterion, .Lfunc_end43-gimp_context_get_sample_criterion
	.cfi_endproc

	.globl	gimp_context_set_sample_criterion
	.align	16, 0x90
	.type	gimp_context_set_sample_criterion,@function
gimp_context_set_sample_criterion:      # @gimp_context_set_sample_criterion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.44(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end44:
	.size	gimp_context_set_sample_criterion, .Lfunc_end44-gimp_context_set_sample_criterion
	.cfi_endproc

	.globl	gimp_context_get_sample_threshold
	.align	16, 0x90
	.type	gimp_context_get_sample_threshold,@function
gimp_context_get_sample_threshold:      # @gimp_context_get_sample_threshold
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.45(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB45_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_context_get_sample_threshold, .Lfunc_end45-gimp_context_get_sample_threshold
	.cfi_endproc

	.globl	gimp_context_set_sample_threshold
	.align	16, 0x90
	.type	gimp_context_set_sample_threshold,@function
gimp_context_set_sample_threshold:      # @gimp_context_set_sample_threshold
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.46(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_context_set_sample_threshold, .Lfunc_end46-gimp_context_set_sample_threshold
	.cfi_endproc

	.globl	gimp_context_get_sample_threshold_int
	.align	16, 0x90
	.type	gimp_context_get_sample_threshold_int,@function
gimp_context_get_sample_threshold_int:  # @gimp_context_get_sample_threshold_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.47(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB47_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_context_get_sample_threshold_int, .Lfunc_end47-gimp_context_get_sample_threshold_int
	.cfi_endproc

	.globl	gimp_context_set_sample_threshold_int
	.align	16, 0x90
	.type	gimp_context_set_sample_threshold_int,@function
gimp_context_set_sample_threshold_int:  # @gimp_context_set_sample_threshold_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.48(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end48:
	.size	gimp_context_set_sample_threshold_int, .Lfunc_end48-gimp_context_set_sample_threshold_int
	.cfi_endproc

	.globl	gimp_context_get_sample_transparent
	.align	16, 0x90
	.type	gimp_context_get_sample_transparent,@function
gimp_context_get_sample_transparent:    # @gimp_context_get_sample_transparent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.49(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB49_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_context_get_sample_transparent, .Lfunc_end49-gimp_context_get_sample_transparent
	.cfi_endproc

	.globl	gimp_context_set_sample_transparent
	.align	16, 0x90
	.type	gimp_context_set_sample_transparent,@function
gimp_context_set_sample_transparent:    # @gimp_context_set_sample_transparent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.50(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end50:
	.size	gimp_context_set_sample_transparent, .Lfunc_end50-gimp_context_set_sample_transparent
	.cfi_endproc

	.globl	gimp_context_get_interpolation
	.align	16, 0x90
	.type	gimp_context_get_interpolation,@function
gimp_context_get_interpolation:         # @gimp_context_get_interpolation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.51(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB51_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB51_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_context_get_interpolation, .Lfunc_end51-gimp_context_get_interpolation
	.cfi_endproc

	.globl	gimp_context_set_interpolation
	.align	16, 0x90
	.type	gimp_context_set_interpolation,@function
gimp_context_set_interpolation:         # @gimp_context_set_interpolation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.52(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end52:
	.size	gimp_context_set_interpolation, .Lfunc_end52-gimp_context_set_interpolation
	.cfi_endproc

	.globl	gimp_context_get_transform_direction
	.align	16, 0x90
	.type	gimp_context_get_transform_direction,@function
gimp_context_get_transform_direction:   # @gimp_context_get_transform_direction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.53(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB53_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB53_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_context_get_transform_direction, .Lfunc_end53-gimp_context_get_transform_direction
	.cfi_endproc

	.globl	gimp_context_set_transform_direction
	.align	16, 0x90
	.type	gimp_context_set_transform_direction,@function
gimp_context_set_transform_direction:   # @gimp_context_set_transform_direction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.54(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end54:
	.size	gimp_context_set_transform_direction, .Lfunc_end54-gimp_context_set_transform_direction
	.cfi_endproc

	.globl	gimp_context_get_transform_resize
	.align	16, 0x90
	.type	gimp_context_get_transform_resize,@function
gimp_context_get_transform_resize:      # @gimp_context_get_transform_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.55(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB55_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB55_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_context_get_transform_resize, .Lfunc_end55-gimp_context_get_transform_resize
	.cfi_endproc

	.globl	gimp_context_set_transform_resize
	.align	16, 0x90
	.type	gimp_context_set_transform_resize,@function
gimp_context_set_transform_resize:      # @gimp_context_set_transform_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.56(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end56:
	.size	gimp_context_set_transform_resize, .Lfunc_end56-gimp_context_set_transform_resize
	.cfi_endproc

	.globl	gimp_context_get_transform_recursion
	.align	16, 0x90
	.type	gimp_context_get_transform_recursion,@function
gimp_context_get_transform_recursion:   # @gimp_context_get_transform_recursion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.57(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB57_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_context_get_transform_recursion, .Lfunc_end57-gimp_context_get_transform_recursion
	.cfi_endproc

	.globl	gimp_context_set_transform_recursion
	.align	16, 0x90
	.type	gimp_context_set_transform_recursion,@function
gimp_context_set_transform_recursion:   # @gimp_context_set_transform_recursion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.58(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end58:
	.size	gimp_context_set_transform_recursion, .Lfunc_end58-gimp_context_set_transform_recursion
	.cfi_endproc

	.globl	gimp_context_get_ink_size
	.align	16, 0x90
	.type	gimp_context_get_ink_size,@function
gimp_context_get_ink_size:              # @gimp_context_get_ink_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.59(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB59_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB59_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_context_get_ink_size, .Lfunc_end59-gimp_context_get_ink_size
	.cfi_endproc

	.globl	gimp_context_set_ink_size
	.align	16, 0x90
	.type	gimp_context_set_ink_size,@function
gimp_context_set_ink_size:              # @gimp_context_set_ink_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.60(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_context_set_ink_size, .Lfunc_end60-gimp_context_set_ink_size
	.cfi_endproc

	.globl	gimp_context_get_ink_angle
	.align	16, 0x90
	.type	gimp_context_get_ink_angle,@function
gimp_context_get_ink_angle:             # @gimp_context_get_ink_angle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.61(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB61_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_context_get_ink_angle, .Lfunc_end61-gimp_context_get_ink_angle
	.cfi_endproc

	.globl	gimp_context_set_ink_angle
	.align	16, 0x90
	.type	gimp_context_set_ink_angle,@function
gimp_context_set_ink_angle:             # @gimp_context_set_ink_angle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.62(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_context_set_ink_angle, .Lfunc_end62-gimp_context_set_ink_angle
	.cfi_endproc

	.globl	gimp_context_get_ink_size_sensitivity
	.align	16, 0x90
	.type	gimp_context_get_ink_size_sensitivity,@function
gimp_context_get_ink_size_sensitivity:  # @gimp_context_get_ink_size_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.63(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB63_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB63_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_context_get_ink_size_sensitivity, .Lfunc_end63-gimp_context_get_ink_size_sensitivity
	.cfi_endproc

	.globl	gimp_context_set_ink_size_sensitivity
	.align	16, 0x90
	.type	gimp_context_set_ink_size_sensitivity,@function
gimp_context_set_ink_size_sensitivity:  # @gimp_context_set_ink_size_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.64(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_context_set_ink_size_sensitivity, .Lfunc_end64-gimp_context_set_ink_size_sensitivity
	.cfi_endproc

	.globl	gimp_context_get_ink_tilt_sensitivity
	.align	16, 0x90
	.type	gimp_context_get_ink_tilt_sensitivity,@function
gimp_context_get_ink_tilt_sensitivity:  # @gimp_context_get_ink_tilt_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.65(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB65_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_context_get_ink_tilt_sensitivity, .Lfunc_end65-gimp_context_get_ink_tilt_sensitivity
	.cfi_endproc

	.globl	gimp_context_set_ink_tilt_sensitivity
	.align	16, 0x90
	.type	gimp_context_set_ink_tilt_sensitivity,@function
gimp_context_set_ink_tilt_sensitivity:  # @gimp_context_set_ink_tilt_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.66(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_context_set_ink_tilt_sensitivity, .Lfunc_end66-gimp_context_set_ink_tilt_sensitivity
	.cfi_endproc

	.globl	gimp_context_get_ink_speed_sensitivity
	.align	16, 0x90
	.type	gimp_context_get_ink_speed_sensitivity,@function
gimp_context_get_ink_speed_sensitivity: # @gimp_context_get_ink_speed_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.67(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB67_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB67_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_context_get_ink_speed_sensitivity, .Lfunc_end67-gimp_context_get_ink_speed_sensitivity
	.cfi_endproc

	.globl	gimp_context_set_ink_speed_sensitivity
	.align	16, 0x90
	.type	gimp_context_set_ink_speed_sensitivity,@function
gimp_context_set_ink_speed_sensitivity: # @gimp_context_set_ink_speed_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.68(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_context_set_ink_speed_sensitivity, .Lfunc_end68-gimp_context_set_ink_speed_sensitivity
	.cfi_endproc

	.globl	gimp_context_get_ink_blob_type
	.align	16, 0x90
	.type	gimp_context_get_ink_blob_type,@function
gimp_context_get_ink_blob_type:         # @gimp_context_get_ink_blob_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	.L.str.69(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB69_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB69_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_context_get_ink_blob_type, .Lfunc_end69-gimp_context_get_ink_blob_type
	.cfi_endproc

	.globl	gimp_context_set_ink_blob_type
	.align	16, 0x90
	.type	gimp_context_set_ink_blob_type,@function
gimp_context_set_ink_blob_type:         # @gimp_context_set_ink_blob_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.70(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
.Lfunc_end70:
	.size	gimp_context_set_ink_blob_type, .Lfunc_end70-gimp_context_set_ink_blob_type
	.cfi_endproc

	.globl	gimp_context_get_ink_blob_aspect_ratio
	.align	16, 0x90
	.type	gimp_context_get_ink_blob_aspect_ratio,@function
gimp_context_get_ink_blob_aspect_ratio: # @gimp_context_get_ink_blob_aspect_ratio
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.71(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB71_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB71_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_context_get_ink_blob_aspect_ratio, .Lfunc_end71-gimp_context_get_ink_blob_aspect_ratio
	.cfi_endproc

	.globl	gimp_context_set_ink_blob_aspect_ratio
	.align	16, 0x90
	.type	gimp_context_set_ink_blob_aspect_ratio,@function
gimp_context_set_ink_blob_aspect_ratio: # @gimp_context_set_ink_blob_aspect_ratio
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.72(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_context_set_ink_blob_aspect_ratio, .Lfunc_end72-gimp_context_set_ink_blob_aspect_ratio
	.cfi_endproc

	.globl	gimp_context_get_ink_blob_angle
	.align	16, 0x90
	.type	gimp_context_get_ink_blob_angle,@function
gimp_context_get_ink_blob_angle:        # @gimp_context_get_ink_blob_angle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.73(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB73_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB73_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_context_get_ink_blob_angle, .Lfunc_end73-gimp_context_get_ink_blob_angle
	.cfi_endproc

	.globl	gimp_context_set_ink_blob_angle
	.align	16, 0x90
	.type	gimp_context_set_ink_blob_angle,@function
gimp_context_set_ink_blob_angle:        # @gimp_context_set_ink_blob_angle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.74(%rip), %rdi
	leaq	-20(%rbp), %rsi
	movl	$3, %edx
	movl	$22, %ecx
	movsd	%xmm0, -8(%rbp)
	movl	$1, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_context_set_ink_blob_angle, .Lfunc_end74-gimp_context_set_ink_blob_angle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-context-push"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-context-pop"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-context-set-defaults"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-context-list-paint-methods"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-context-get-paint-method"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-context-set-paint-method"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-context-get-foreground"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-context-set-foreground"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-context-get-background"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-context-set-background"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-context-set-default-colors"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-context-swap-colors"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-context-get-opacity"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-context-set-opacity"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-context-get-paint-mode"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-context-set-paint-mode"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-context-get-brush"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-context-set-brush"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-context-get-brush-size"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-context-set-brush-size"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-context-set-brush-default-size"
	.size	.L.str.20, 36

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-context-get-brush-aspect-ratio"
	.size	.L.str.21, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-context-set-brush-aspect-ratio"
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-context-get-brush-angle"
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-context-set-brush-angle"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-context-get-dynamics"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-context-set-dynamics"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-context-get-pattern"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-context-set-pattern"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-context-get-gradient"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-context-set-gradient"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-context-get-palette"
	.size	.L.str.31, 25

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-context-set-palette"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-context-get-font"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-context-set-font"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-context-get-antialias"
	.size	.L.str.35, 27

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-context-set-antialias"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-context-get-feather"
	.size	.L.str.37, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-context-set-feather"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-context-get-feather-radius"
	.size	.L.str.39, 32

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-context-set-feather-radius"
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-context-get-sample-merged"
	.size	.L.str.41, 31

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-context-set-sample-merged"
	.size	.L.str.42, 31

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-context-get-sample-criterion"
	.size	.L.str.43, 34

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-context-set-sample-criterion"
	.size	.L.str.44, 34

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-context-get-sample-threshold"
	.size	.L.str.45, 34

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-context-set-sample-threshold"
	.size	.L.str.46, 34

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-context-get-sample-threshold-int"
	.size	.L.str.47, 38

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-context-set-sample-threshold-int"
	.size	.L.str.48, 38

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-context-get-sample-transparent"
	.size	.L.str.49, 36

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-context-set-sample-transparent"
	.size	.L.str.50, 36

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-context-get-interpolation"
	.size	.L.str.51, 31

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-context-set-interpolation"
	.size	.L.str.52, 31

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-context-get-transform-direction"
	.size	.L.str.53, 37

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-context-set-transform-direction"
	.size	.L.str.54, 37

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-context-get-transform-resize"
	.size	.L.str.55, 34

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-context-set-transform-resize"
	.size	.L.str.56, 34

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-context-get-transform-recursion"
	.size	.L.str.57, 37

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-context-set-transform-recursion"
	.size	.L.str.58, 37

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-context-get-ink-size"
	.size	.L.str.59, 26

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-context-set-ink-size"
	.size	.L.str.60, 26

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-context-get-ink-angle"
	.size	.L.str.61, 27

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-context-set-ink-angle"
	.size	.L.str.62, 27

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-context-get-ink-size-sensitivity"
	.size	.L.str.63, 38

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-context-set-ink-size-sensitivity"
	.size	.L.str.64, 38

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-context-get-ink-tilt-sensitivity"
	.size	.L.str.65, 38

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-context-set-ink-tilt-sensitivity"
	.size	.L.str.66, 38

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-context-get-ink-speed-sensitivity"
	.size	.L.str.67, 39

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-context-set-ink-speed-sensitivity"
	.size	.L.str.68, 39

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-context-get-ink-blob-type"
	.size	.L.str.69, 31

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-context-set-ink-blob-type"
	.size	.L.str.70, 31

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-context-get-ink-blob-aspect-ratio"
	.size	.L.str.71, 39

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-context-set-ink-blob-aspect-ratio"
	.size	.L.str.72, 39

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-context-get-ink-blob-angle"
	.size	.L.str.73, 32

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-context-set-ink-blob-angle"
	.size	.L.str.74, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
