	.text
	.file	"gimppluginshm.bc"
	.globl	gimp_plug_in_shm_new
	.align	16, 0x90
	.type	gimp_plug_in_shm_new,@function
gimp_plug_in_shm_new:                   # @gimp_plug_in_shm_new
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
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	xorl	%edi, %edi
	movl	$16384, %ecx            # imm = 0x4000
	movl	%ecx, %esi
	movl	$896, %edx              # imm = 0x380
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	callq	shmget
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	cmpl	$-1, (%rsi)
	je	.LBB0_6
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	shmat
	movq	$-1, %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	cmpq	%rcx, 8(%rax)
	jne	.LBB0_3
# BB#2:                                 # %if.then.8
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	shmctl
	movq	-8(%rbp), %rdx
	movl	$-1, (%rdx)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB0_3:                                # %if.end
	movq	$-1, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB0_5
# BB#4:                                 # %if.then.16
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	shmctl
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB0_5:                                # %if.end.19
	jmp	.LBB0_7
.LBB0_6:                                # %if.else
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.1, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB0_7:                                # %if.end.22
	movq	-8(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB0_11
# BB#8:                                 # %if.then.25
	jmp	.LBB0_9
.LBB0_9:                                # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#10:                                # %do.end
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               # %if.else.26
	jmp	.LBB0_12
.LBB0_12:                               # %do.body.27
	movl	gimp_log_flags, %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.28
	movl	$4096, %edi             # imm = 0x1000
	movabsq	$.L__func__.gimp_plug_in_shm_new, %rsi
	movl	$241, %edx
	movabsq	$.L.str.2, %rcx
	movq	-8(%rbp), %rax
	movl	(%rax), %r8d
	movb	$0, %al
	callq	gimp_log
.LBB0_14:                               # %if.end.30
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.31
	jmp	.LBB0_16
.LBB0_16:                               # %if.end.32
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_shm_new, .Lfunc_end0-gimp_plug_in_shm_new
	.cfi_endproc

	.globl	gimp_plug_in_shm_free
	.align	16, 0x90
	.type	gimp_plug_in_shm_free,@function
gimp_plug_in_shm_free:                  # @gimp_plug_in_shm_free
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_shm_free, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpl	$-1, (%rax)
	je	.LBB1_11
# BB#6:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	shmdt
	movl	%eax, -12(%rbp)         # 4-byte Spill
# BB#7:                                 # %do.body.3
	movl	gimp_log_flags, %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB1_9
# BB#8:                                 # %if.then.4
	movl	$4096, %edi             # imm = 0x1000
	movabsq	$.L__func__.gimp_plug_in_shm_free, %rsi
	movl	$281, %edx              # imm = 0x119
	movabsq	$.L.str.5, %rcx
	movq	-8(%rbp), %rax
	movl	(%rax), %r8d
	movb	$0, %al
	callq	gimp_log
.LBB1_9:                                # %if.end.6
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.7
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.8
	jmp	.LBB1_12
.LBB1_12:                               # %do.body.9
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_13:                               # %do.end.10
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_shm_free, .Lfunc_end1-gimp_plug_in_shm_free
	.cfi_endproc

	.globl	gimp_plug_in_shm_get_ID
	.align	16, 0x90
	.type	gimp_plug_in_shm_get_ID,@function
gimp_plug_in_shm_get_ID:                # @gimp_plug_in_shm_get_ID
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_shm_get_ID, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB2_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_shm_get_ID, .Lfunc_end2-gimp_plug_in_shm_get_ID
	.cfi_endproc

	.globl	gimp_plug_in_shm_get_addr
	.align	16, 0x90
	.type	gimp_plug_in_shm_get_addr,@function
gimp_plug_in_shm_get_addr:              # @gimp_plug_in_shm_get_addr
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_shm_get_addr, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_shm_get_addr, .Lfunc_end3-gimp_plug_in_shm_get_addr
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"shmat() failed: %s\nDisabling shared memory tile transport"
	.size	.L.str, 58

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"shmget() failed: %s\nDisabling shared memory tile transport"
	.size	.L.str.1, 59

	.type	.L__func__.gimp_plug_in_shm_new,@object # @__func__.gimp_plug_in_shm_new
.L__func__.gimp_plug_in_shm_new:
	.asciz	"gimp_plug_in_shm_new"
	.size	.L__func__.gimp_plug_in_shm_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"attached shared memory segment ID = %d"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.3, 13

	.type	.L__func__.gimp_plug_in_shm_free,@object # @__func__.gimp_plug_in_shm_free
.L__func__.gimp_plug_in_shm_free:
	.asciz	"gimp_plug_in_shm_free"
	.size	.L__func__.gimp_plug_in_shm_free, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"shm != NULL"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"detached shared memory segment ID = %d"
	.size	.L.str.5, 39

	.type	.L__func__.gimp_plug_in_shm_get_ID,@object # @__func__.gimp_plug_in_shm_get_ID
.L__func__.gimp_plug_in_shm_get_ID:
	.asciz	"gimp_plug_in_shm_get_ID"
	.size	.L__func__.gimp_plug_in_shm_get_ID, 24

	.type	.L__func__.gimp_plug_in_shm_get_addr,@object # @__func__.gimp_plug_in_shm_get_addr
.L__func__.gimp_plug_in_shm_get_addr:
	.asciz	"gimp_plug_in_shm_get_addr"
	.size	.L__func__.gimp_plug_in_shm_get_addr, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
