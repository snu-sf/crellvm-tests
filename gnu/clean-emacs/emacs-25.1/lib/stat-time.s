	.text
	.file	"stat-time.bc"
	.globl	get_stat_atime_ns
	.align	16, 0x90
	.type	get_stat_atime_ns,@function
get_stat_atime_ns:                      # @get_stat_atime_ns
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_stat_atime_ns, .Lfunc_end0-get_stat_atime_ns
	.cfi_endproc

	.globl	get_stat_ctime_ns
	.align	16, 0x90
	.type	get_stat_ctime_ns,@function
get_stat_ctime_ns:                      # @get_stat_ctime_ns
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	112(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_stat_ctime_ns, .Lfunc_end1-get_stat_ctime_ns
	.cfi_endproc

	.globl	get_stat_mtime_ns
	.align	16, 0x90
	.type	get_stat_mtime_ns,@function
get_stat_mtime_ns:                      # @get_stat_mtime_ns
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_stat_mtime_ns, .Lfunc_end2-get_stat_mtime_ns
	.cfi_endproc

	.globl	get_stat_birthtime_ns
	.align	16, 0x90
	.type	get_stat_birthtime_ns,@function
get_stat_birthtime_ns:                  # @get_stat_birthtime_ns
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_stat_birthtime_ns, .Lfunc_end3-get_stat_birthtime_ns
	.cfi_endproc

	.globl	get_stat_atime
	.align	16, 0x90
	.type	get_stat_atime,@function
get_stat_atime:                         # @get_stat_atime
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
	movq	%rdi, -24(%rbp)
	movups	72(%rdi), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	get_stat_atime, .Lfunc_end4-get_stat_atime
	.cfi_endproc

	.globl	get_stat_ctime
	.align	16, 0x90
	.type	get_stat_ctime,@function
get_stat_ctime:                         # @get_stat_ctime
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
	movq	%rdi, -24(%rbp)
	movups	104(%rdi), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_stat_ctime, .Lfunc_end5-get_stat_ctime
	.cfi_endproc

	.globl	get_stat_mtime
	.align	16, 0x90
	.type	get_stat_mtime,@function
get_stat_mtime:                         # @get_stat_mtime
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
	movq	%rdi, -24(%rbp)
	movups	88(%rdi), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_stat_mtime, .Lfunc_end6-get_stat_mtime
	.cfi_endproc

	.globl	get_stat_birthtime
	.align	16, 0x90
	.type	get_stat_birthtime,@function
get_stat_birthtime:                     # @get_stat_birthtime
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
	movq	%rdi, -24(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -32(%rbp)
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_stat_birthtime, .Lfunc_end7-get_stat_birthtime
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
