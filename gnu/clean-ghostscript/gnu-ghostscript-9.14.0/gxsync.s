	.text
	.file	"gxsync.bc"
	.globl	gx_semaphore_alloc
	.align	16, 0x90
	.type	gx_semaphore_alloc,@function
gx_semaphore_alloc:                     # @gx_semaphore_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	gp_semaphore_sizeof
	movl	%eax, %ebx
	addl	$8, %ebx
	xorl	%edi, %edi
	callq	gp_semaphore_open
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	testl	%eax, %eax
	je	.LBB0_1
# BB#2:                                 # %if.else
	callq	*8(%r14)
	jmp	.LBB0_3
.LBB0_1:                                # %if.then
	callq	*64(%r14)
.LBB0_3:                                # %if.end
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_6
# BB#4:                                 # %if.end.10
	movq	%r14, (%rbx)
	leaq	8(%rbx), %rdi
	callq	gp_semaphore_open
	testl	%eax, %eax
	movq	%rbx, %rax
	jns	.LBB0_6
# BB#5:                                 # %if.then.15
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
.LBB0_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gx_semaphore_alloc, .Lfunc_end0-gx_semaphore_alloc
	.cfi_endproc

	.globl	gx_semaphore_free
	.align	16, 0x90
	.type	gx_semaphore_free,@function
gx_semaphore_free:                      # @gx_semaphore_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB1_1
# BB#2:                                 # %if.then
	leaq	8(%rbx), %rdi
	callq	gp_semaphore_close
	movq	(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB1_1:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gx_semaphore_free, .Lfunc_end1-gx_semaphore_free
	.cfi_endproc

	.globl	gx_monitor_alloc
	.align	16, 0x90
	.type	gx_monitor_alloc,@function
gx_monitor_alloc:                       # @gx_monitor_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	gp_monitor_sizeof
	movl	%eax, %ebx
	addl	$8, %ebx
	xorl	%edi, %edi
	callq	gp_monitor_open
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	testl	%eax, %eax
	je	.LBB2_1
# BB#2:                                 # %if.else
	callq	*8(%r14)
	jmp	.LBB2_3
.LBB2_1:                                # %if.then
	callq	*64(%r14)
.LBB2_3:                                # %if.end
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB2_6
# BB#4:                                 # %if.end.10
	movq	%r14, (%rbx)
	leaq	8(%rbx), %rdi
	callq	gp_monitor_open
	testl	%eax, %eax
	movq	%rbx, %rax
	jns	.LBB2_6
# BB#5:                                 # %if.then.15
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
.LBB2_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gx_monitor_alloc, .Lfunc_end2-gx_monitor_alloc
	.cfi_endproc

	.globl	gx_monitor_free
	.align	16, 0x90
	.type	gx_monitor_free,@function
gx_monitor_free:                        # @gx_monitor_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB3_1
# BB#2:                                 # %if.then
	leaq	8(%rbx), %rdi
	callq	gp_monitor_close
	movq	(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB3_1:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end3:
	.size	gx_monitor_free, .Lfunc_end3-gx_monitor_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_semaphore (create)"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_semaphore (alloc)"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_semaphore (free)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_monitor (create)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_monitor (alloc)"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_monitor (free)"
	.size	.L.str.5, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
