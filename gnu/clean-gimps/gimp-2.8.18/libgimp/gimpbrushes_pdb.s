	.text
	.file	"gimpbrushes_pdb.bc"
	.globl	gimp_brushes_refresh
	.align	16, 0x90
	.type	gimp_brushes_refresh,@function
gimp_brushes_refresh:                   # @gimp_brushes_refresh
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
	.size	gimp_brushes_refresh, .Lfunc_end0-gimp_brushes_refresh
	.cfi_endproc

	.globl	gimp_brushes_get_list
	.align	16, 0x90
	.type	gimp_brushes_get_list,@function
gimp_brushes_get_list:                  # @gimp_brushes_get_list
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
	subq	$64, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_6
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup@PLT
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_2
.LBB1_5:                                # %for.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brushes_get_list, .Lfunc_end1-gimp_brushes_get_list
	.cfi_endproc

	.globl	gimp_brushes_get_brush
	.align	16, 0x90
	.type	gimp_brushes_get_brush,@function
gimp_brushes_get_brush:                 # @gimp_brushes_get_brush
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
	subq	$48, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	%r8d, %edx
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB2_2:                                # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brushes_get_brush, .Lfunc_end2-gimp_brushes_get_brush
	.cfi_endproc

	.globl	gimp_brushes_get_spacing
	.align	16, 0x90
	.type	gimp_brushes_get_spacing,@function
gimp_brushes_get_spacing:               # @gimp_brushes_get_spacing
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
	subq	$16, %rsp
	leaq	.L.str.3(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brushes_get_spacing, .Lfunc_end3-gimp_brushes_get_spacing
	.cfi_endproc

	.globl	gimp_brushes_set_spacing
	.align	16, 0x90
	.type	gimp_brushes_set_spacing,@function
gimp_brushes_set_spacing:               # @gimp_brushes_set_spacing
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
.Lfunc_end4:
	.size	gimp_brushes_set_spacing, .Lfunc_end4-gimp_brushes_set_spacing
	.cfi_endproc

	.globl	gimp_brushes_get_brush_data
	.align	16, 0x90
	.type	gimp_brushes_get_brush_data,@function
gimp_brushes_get_brush_data:            # @gimp_brushes_get_brush_data
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	leaq	.L.str.5(%rip), %r11
	leaq	-100(%rbp), %rbx
	movl	$4, %r14d
	movl	$22, %r15d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	$0, -112(%rbp)
	movq	-32(%rbp), %rcx
	movq	%r11, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movl	%r15d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-96(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-96(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-96(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-96(%rbp), %rax
	movl	248(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-96(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-80(%rbp), %rax
	movslq	(%rax), %rdi
	callq	g_malloc_n@PLT
	movq	-88(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	328(%rax), %rsi
	movq	-80(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB5_2:                                # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-112(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brushes_get_brush_data, .Lfunc_end5-gimp_brushes_get_brush_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brushes-refresh"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-brushes-get-list"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-brushes-get-brush"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-brushes-get-spacing"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-brushes-set-spacing"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-brushes-get-brush-data"
	.size	.L.str.5, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
