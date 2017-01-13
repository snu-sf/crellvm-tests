	.text
	.file	"gimpproceduraldb.bc"
	.globl	gimp_procedural_db_proc_info
	.align	16, 0x90
	.type	gimp_procedural_db_proc_info,@function
gimp_procedural_db_proc_info:           # @gimp_procedural_db_proc_info
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	$1, -120(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %r10
	movq	-96(%rbp), %r11
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	_gimp_procedural_db_proc_info
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_14
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movl	$24, %edx
	movl	%edx, %esi
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movslq	(%rax), %rdi
	callq	g_malloc_n@PLT
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -116(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-116(%rbp), %rax
	movq	-104(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	(%rcx), %rax
	movslq	-116(%rbp), %rcx
	movq	-104(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	addq	$8, %rcx
	movslq	-116(%rbp), %rdx
	movq	-104(%rbp), %r8
	imulq	$24, %rdx, %rdx
	addq	(%r8), %rdx
	addq	$16, %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gimp_procedural_db_proc_arg@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#4:                                 # %if.then.11
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$0, -20(%rbp)
	jmp	.LBB0_15
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_2
.LBB0_7:                                # %for.end
	movl	$0, -116(%rbp)
.LBB0_8:                                # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_13
# BB#9:                                 # %for.body.15
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-116(%rbp), %rax
	movq	-112(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	(%rcx), %rax
	movslq	-116(%rbp), %rcx
	movq	-112(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	(%rdx), %rcx
	addq	$8, %rcx
	movslq	-116(%rbp), %rdx
	movq	-112(%rbp), %r8
	imulq	$24, %rdx, %rdx
	addq	(%r8), %rdx
	addq	$16, %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %r8         # 8-byte Reload
	callq	gimp_procedural_db_proc_val@PLT
	cmpl	$0, %eax
	jne	.LBB0_11
# BB#10:                                # %if.then.27
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$0, -20(%rbp)
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.28
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %for.inc.29
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_8
.LBB0_13:                               # %for.end.31
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.32
	movl	-120(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_15:                               # %return
	movl	-20(%rbp), %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_procedural_db_proc_info, .Lfunc_end0-gimp_procedural_db_proc_info
	.cfi_endproc

	.globl	gimp_procedural_db_get_data
	.align	16, 0x90
	.type	gimp_procedural_db_get_data,@function
gimp_procedural_db_get_data:            # @gimp_procedural_db_get_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-20(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	_gimp_procedural_db_get_data
	movl	%eax, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-20(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB1_2:                                # %if.end
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_procedural_db_get_data, .Lfunc_end1-gimp_procedural_db_get_data
	.cfi_endproc

	.globl	gimp_procedural_db_set_data
	.align	16, 0x90
	.type	gimp_procedural_db_set_data,@function
gimp_procedural_db_set_data:            # @gimp_procedural_db_set_data
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	_gimp_procedural_db_set_data
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_procedural_db_set_data, .Lfunc_end2-gimp_procedural_db_set_data
	.cfi_endproc

	.hidden	_gimp_procedural_db_proc_info
	.hidden	_gimp_procedural_db_get_data
	.hidden	_gimp_procedural_db_set_data

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
