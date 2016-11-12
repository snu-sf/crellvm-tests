	.text
	.file	"gimpbrush_pdb.bc"
	.globl	gimp_brush_new
	.align	16, 0x90
	.type	gimp_brush_new,@function
gimp_brush_new:                         # @gimp_brush_new
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
	.size	gimp_brush_new, .Lfunc_end0-gimp_brush_new
	.cfi_endproc

	.globl	gimp_brush_duplicate
	.align	16, 0x90
	.type	gimp_brush_duplicate,@function
gimp_brush_duplicate:                   # @gimp_brush_duplicate
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
	.size	gimp_brush_duplicate, .Lfunc_end1-gimp_brush_duplicate
	.cfi_endproc

	.globl	gimp_brush_is_generated
	.align	16, 0x90
	.type	gimp_brush_is_generated,@function
gimp_brush_is_generated:                # @gimp_brush_is_generated
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
	.size	gimp_brush_is_generated, .Lfunc_end2-gimp_brush_is_generated
	.cfi_endproc

	.globl	gimp_brush_rename
	.align	16, 0x90
	.type	gimp_brush_rename,@function
gimp_brush_rename:                      # @gimp_brush_rename
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
	.size	gimp_brush_rename, .Lfunc_end3-gimp_brush_rename
	.cfi_endproc

	.globl	gimp_brush_delete
	.align	16, 0x90
	.type	gimp_brush_delete,@function
gimp_brush_delete:                      # @gimp_brush_delete
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
	.size	gimp_brush_delete, .Lfunc_end4-gimp_brush_delete
	.cfi_endproc

	.globl	gimp_brush_is_editable
	.align	16, 0x90
	.type	gimp_brush_is_editable,@function
gimp_brush_is_editable:                 # @gimp_brush_is_editable
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
	.size	gimp_brush_is_editable, .Lfunc_end5-gimp_brush_is_editable
	.cfi_endproc

	.globl	gimp_brush_get_info
	.align	16, 0x90
	.type	gimp_brush_get_info,@function
gimp_brush_get_info:                    # @gimp_brush_get_info
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	leaq	.L.str.6(%rip), %rax
	leaq	-60(%rbp), %r9
	movl	$4, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$1, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%r9, %rsi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_get_info, .Lfunc_end6-gimp_brush_get_info
	.cfi_endproc

	.globl	gimp_brush_get_pixels
	.align	16, 0x90
	.type	gimp_brush_get_pixels,@function
gimp_brush_get_pixels:                  # @gimp_brush_get_pixels
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
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
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	leaq	.L.str.7(%rip), %rbx
	leaq	-124(%rbp), %r14
	movl	$4, %r15d
	movl	$22, %r12d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	$1, -128(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	movl	%r12d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	movq	-120(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %edx
	movl	%edx, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-80(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movl	$1, %edx
	movl	%edx, %esi
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	movq	-80(%rbp), %rcx
	movslq	(%rcx), %rcx
	shlq	$0, %rcx
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	memcpy@PLT
	movq	-120(%rbp), %rax
	movl	248(%rax), %r8d
	movq	-96(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-120(%rbp), %rax
	movl	288(%rax), %r8d
	movq	-104(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-104(%rbp), %rax
	movslq	(%rax), %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n@PLT
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	328(%rax), %rsi
	movq	-104(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB7_2:                                # %if.end
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-128(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_get_pixels, .Lfunc_end7-gimp_brush_get_pixels
	.cfi_endproc

	.globl	gimp_brush_get_spacing
	.align	16, 0x90
	.type	gimp_brush_get_spacing,@function
gimp_brush_get_spacing:                 # @gimp_brush_get_spacing
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
	subq	$48, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_get_spacing, .Lfunc_end8-gimp_brush_get_spacing
	.cfi_endproc

	.globl	gimp_brush_set_spacing
	.align	16, 0x90
	.type	gimp_brush_set_spacing,@function
gimp_brush_set_spacing:                 # @gimp_brush_set_spacing
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
	subq	$64, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_set_spacing, .Lfunc_end9-gimp_brush_set_spacing
	.cfi_endproc

	.globl	gimp_brush_get_shape
	.align	16, 0x90
	.type	gimp_brush_get_shape,@function
gimp_brush_get_shape:                   # @gimp_brush_get_shape
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
	leaq	.L.str.10(%rip), %rax
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
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_get_shape, .Lfunc_end10-gimp_brush_get_shape
	.cfi_endproc

	.globl	gimp_brush_set_shape
	.align	16, 0x90
	.type	gimp_brush_set_shape,@function
gimp_brush_set_shape:                   # @gimp_brush_set_shape
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
	subq	$64, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_set_shape, .Lfunc_end11-gimp_brush_set_shape
	.cfi_endproc

	.globl	gimp_brush_get_radius
	.align	16, 0x90
	.type	gimp_brush_get_radius,@function
gimp_brush_get_radius:                  # @gimp_brush_get_radius
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
	subq	$32, %rsp
	leaq	.L.str.12(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_get_radius, .Lfunc_end12-gimp_brush_get_radius
	.cfi_endproc

	.globl	gimp_brush_set_radius
	.align	16, 0x90
	.type	gimp_brush_set_radius,@function
gimp_brush_set_radius:                  # @gimp_brush_set_radius
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
	subq	$48, %rsp
	leaq	.L.str.13(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$4, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_set_radius, .Lfunc_end13-gimp_brush_set_radius
	.cfi_endproc

	.globl	gimp_brush_get_spikes
	.align	16, 0x90
	.type	gimp_brush_get_spikes,@function
gimp_brush_get_spikes:                  # @gimp_brush_get_spikes
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
	leaq	.L.str.14(%rip), %rax
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
	.size	gimp_brush_get_spikes, .Lfunc_end14-gimp_brush_get_spikes
	.cfi_endproc

	.globl	gimp_brush_set_spikes
	.align	16, 0x90
	.type	gimp_brush_set_spikes,@function
gimp_brush_set_spikes:                  # @gimp_brush_set_spikes
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
	subq	$64, %rsp
	leaq	.L.str.15(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_brush_set_spikes, .Lfunc_end15-gimp_brush_set_spikes
	.cfi_endproc

	.globl	gimp_brush_get_hardness
	.align	16, 0x90
	.type	gimp_brush_get_hardness,@function
gimp_brush_get_hardness:                # @gimp_brush_get_hardness
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
	leaq	.L.str.16(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_brush_get_hardness, .Lfunc_end16-gimp_brush_get_hardness
	.cfi_endproc

	.globl	gimp_brush_set_hardness
	.align	16, 0x90
	.type	gimp_brush_set_hardness,@function
gimp_brush_set_hardness:                # @gimp_brush_set_hardness
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
	subq	$48, %rsp
	leaq	.L.str.17(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$4, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_brush_set_hardness, .Lfunc_end17-gimp_brush_set_hardness
	.cfi_endproc

	.globl	gimp_brush_get_aspect_ratio
	.align	16, 0x90
	.type	gimp_brush_get_aspect_ratio,@function
gimp_brush_get_aspect_ratio:            # @gimp_brush_get_aspect_ratio
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
	subq	$32, %rsp
	leaq	.L.str.18(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_brush_get_aspect_ratio, .Lfunc_end18-gimp_brush_get_aspect_ratio
	.cfi_endproc

	.globl	gimp_brush_set_aspect_ratio
	.align	16, 0x90
	.type	gimp_brush_set_aspect_ratio,@function
gimp_brush_set_aspect_ratio:            # @gimp_brush_set_aspect_ratio
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
	subq	$48, %rsp
	leaq	.L.str.19(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$4, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_brush_set_aspect_ratio, .Lfunc_end19-gimp_brush_set_aspect_ratio
	.cfi_endproc

	.globl	gimp_brush_get_angle
	.align	16, 0x90
	.type	gimp_brush_get_angle,@function
gimp_brush_get_angle:                   # @gimp_brush_get_angle
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
	leaq	.L.str.20(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_brush_get_angle, .Lfunc_end20-gimp_brush_get_angle
	.cfi_endproc

	.globl	gimp_brush_set_angle
	.align	16, 0x90
	.type	gimp_brush_set_angle,@function
gimp_brush_set_angle:                   # @gimp_brush_set_angle
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
	subq	$48, %rsp
	leaq	.L.str.21(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$4, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_brush_set_angle, .Lfunc_end21-gimp_brush_set_angle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brush-new"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-brush-duplicate"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-brush-is-generated"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-brush-rename"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-brush-delete"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-brush-is-editable"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-brush-get-info"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-brush-get-pixels"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-brush-get-spacing"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-brush-set-spacing"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-brush-get-shape"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-brush-set-shape"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-brush-get-radius"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-brush-set-radius"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-brush-get-spikes"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-brush-set-spikes"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-brush-get-hardness"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-brush-set-hardness"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-brush-get-aspect-ratio"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-brush-set-aspect-ratio"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-brush-get-angle"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-brush-set-angle"
	.size	.L.str.21, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
