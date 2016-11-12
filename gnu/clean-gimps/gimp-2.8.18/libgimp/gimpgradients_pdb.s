	.text
	.file	"gimpgradients_pdb.bc"
	.globl	gimp_gradients_refresh
	.align	16, 0x90
	.type	gimp_gradients_refresh,@function
gimp_gradients_refresh:                 # @gimp_gradients_refresh
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
	.size	gimp_gradients_refresh, .Lfunc_end0-gimp_gradients_refresh
	.cfi_endproc

	.globl	gimp_gradients_get_list
	.align	16, 0x90
	.type	gimp_gradients_get_list,@function
gimp_gradients_get_list:                # @gimp_gradients_get_list
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
	.size	gimp_gradients_get_list, .Lfunc_end1-gimp_gradients_get_list
	.cfi_endproc

	.globl	gimp_gradients_sample_uniform
	.align	16, 0x90
	.type	gimp_gradients_sample_uniform,@function
gimp_gradients_sample_uniform:          # @gimp_gradients_sample_uniform
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
	subq	$64, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-20(%rbp), %rcx
	xorl	%edx, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %r9d
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movslq	-36(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_gradients_sample_uniform, .Lfunc_end2-gimp_gradients_sample_uniform
	.cfi_endproc

	.globl	gimp_gradients_sample_custom
	.align	16, 0x90
	.type	gimp_gradients_sample_custom,@function
gimp_gradients_sample_custom:           # @gimp_gradients_sample_custom
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
	subq	$112, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-36(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -48(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edi
	movl	%edi, -56(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	movl	-56(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rcx
	movslq	-52(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gradients_sample_custom, .Lfunc_end3-gimp_gradients_sample_custom
	.cfi_endproc

	.globl	gimp_gradients_get_gradient_data
	.align	16, 0x90
	.type	gimp_gradients_get_gradient_data,@function
gimp_gradients_get_gradient_data:       # @gimp_gradients_get_gradient_data
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
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
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movslq	(%rax), %rdi
	callq	g_malloc_n@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	-32(%rbp), %rdi
	movslq	(%rdi), %rdi
	shlq	$3, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB4_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-64(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gradients_get_gradient_data, .Lfunc_end4-gimp_gradients_get_gradient_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-gradients-refresh"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-gradients-get-list"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-gradients-sample-uniform"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-gradients-sample-custom"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-gradients-get-gradient-data"
	.size	.L.str.4, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
