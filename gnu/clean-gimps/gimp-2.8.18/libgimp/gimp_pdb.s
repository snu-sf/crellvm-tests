	.text
	.file	"gimp_pdb.bc"
	.globl	gimp_version
	.align	16, 0x90
	.type	gimp_version,@function
gimp_version:                           # @gimp_version
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
	leaq	.L.str(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_version, .Lfunc_end0-gimp_version
	.cfi_endproc

	.globl	gimp_getpid
	.align	16, 0x90
	.type	gimp_getpid,@function
gimp_getpid:                            # @gimp_getpid
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
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_getpid, .Lfunc_end1-gimp_getpid
	.cfi_endproc

	.globl	gimp_attach_parasite
	.align	16, 0x90
	.type	gimp_attach_parasite,@function
gimp_attach_parasite:                   # @gimp_attach_parasite
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
	movl	$20, %edx
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
.Lfunc_end2:
	.size	gimp_attach_parasite, .Lfunc_end2-gimp_attach_parasite
	.cfi_endproc

	.globl	gimp_detach_parasite
	.align	16, 0x90
	.type	gimp_detach_parasite,@function
gimp_detach_parasite:                   # @gimp_detach_parasite
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
	subq	$32, %rsp
	leaq	.L.str.3(%rip), %rax
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
.Lfunc_end3:
	.size	gimp_detach_parasite, .Lfunc_end3-gimp_detach_parasite
	.cfi_endproc

	.globl	gimp_get_parasite
	.align	16, 0x90
	.type	gimp_get_parasite,@function
gimp_get_parasite:                      # @gimp_get_parasite
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
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$40, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	gimp_parasite_copy@PLT
	movq	%rax, -32(%rbp)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_get_parasite, .Lfunc_end4-gimp_get_parasite
	.cfi_endproc

	.globl	gimp_get_parasite_list
	.align	16, 0x90
	.type	gimp_get_parasite_list,@function
gimp_get_parasite_list:                 # @gimp_get_parasite_list
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
	subq	$48, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_6
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup@PLT
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_get_parasite_list, .Lfunc_end5-gimp_get_parasite_list
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-version"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-getpid"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-attach-parasite"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-detach-parasite"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-get-parasite"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-get-parasite-list"
	.size	.L.str.5, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
