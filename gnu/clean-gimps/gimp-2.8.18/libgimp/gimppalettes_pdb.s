	.text
	.file	"gimppalettes_pdb.bc"
	.globl	gimp_palettes_refresh
	.align	16, 0x90
	.type	gimp_palettes_refresh,@function
gimp_palettes_refresh:                  # @gimp_palettes_refresh
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
	.size	gimp_palettes_refresh, .Lfunc_end0-gimp_palettes_refresh
	.cfi_endproc

	.globl	gimp_palettes_get_list
	.align	16, 0x90
	.type	gimp_palettes_get_list,@function
gimp_palettes_get_list:                 # @gimp_palettes_get_list
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
	.size	gimp_palettes_get_list, .Lfunc_end1-gimp_palettes_get_list
	.cfi_endproc

	.globl	gimp_palettes_get_palette
	.align	16, 0x90
	.type	gimp_palettes_get_palette,@function
gimp_palettes_get_palette:              # @gimp_palettes_get_palette
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
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palettes_get_palette, .Lfunc_end2-gimp_palettes_get_palette
	.cfi_endproc

	.globl	gimp_palettes_get_palette_entry
	.align	16, 0x90
	.type	gimp_palettes_get_palette_entry,@function
gimp_palettes_get_palette_entry:        # @gimp_palettes_get_palette_entry
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
	subq	$80, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %esi
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	128(%rdi), %rdx
	movq	%rdx, (%rax)
	movq	136(%rdi), %rdx
	movq	%rdx, 8(%rax)
	movq	144(%rdi), %rdx
	movq	%rdx, 16(%rax)
	movq	152(%rdi), %rdx
	movq	%rdx, 24(%rax)
.LBB3_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palettes_get_palette_entry, .Lfunc_end3-gimp_palettes_get_palette_entry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-palettes-refresh"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-palettes-get-list"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-palettes-get-palette"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-palettes-get-palette-entry"
	.size	.L.str.3, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
