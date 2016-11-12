	.text
	.file	"tterm.bc"
	.globl	tterm_width_set
	.align	16, 0x90
	.type	tterm_width_set,@function
tterm_width_set:                        # @tterm_width_set
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movabsq	$tterm_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tterm_width_set, .Lfunc_end0-tterm_width_set
	.cfi_endproc

	.globl	tterm_width
	.align	16, 0x90
	.type	tterm_width,@function
tterm_width:                            # @tterm_width
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
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movabsq	$tterm_default, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tterm_width, .Lfunc_end1-tterm_width
	.cfi_endproc

	.globl	tterm_tabsize_set
	.align	16, 0x90
	.type	tterm_tabsize_set,@function
tterm_tabsize_set:                      # @tterm_tabsize_set
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movabsq	$tterm_default, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tterm_tabsize_set, .Lfunc_end2-tterm_tabsize_set
	.cfi_endproc

	.globl	tterm_tabsize
	.align	16, 0x90
	.type	tterm_tabsize,@function
tterm_tabsize:                          # @tterm_tabsize
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$tterm_default, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tterm_tabsize, .Lfunc_end3-tterm_tabsize
	.cfi_endproc

	.globl	tterm_initialize
	.align	16, 0x90
	.type	tterm_initialize,@function
tterm_initialize:                       # @tterm_initialize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movabsq	$tterm_default, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str, %rdi
	movq	%rax, -32(%rbp)
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB4_11
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_11
# BB#5:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	xstrtol
	cmpl	$0, %eax
	jne	.LBB4_9
# BB#6:                                 # %land.lhs.true.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jge	.LBB4_9
# BB#7:                                 # %land.lhs.true.8
	cmpq	$2147483647, -40(%rbp)  # imm = 0x7FFFFFFF
	jg	.LBB4_9
# BB#8:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	quotearg
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %rdx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB4_10:                               # %if.end
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.15
	movabsq	$.L.str.2, %rdi
	callq	getenv
	cmpq	$0, %rax
	jne	.LBB4_20
# BB#12:                                # %land.lhs.true.18
	movabsq	$.L.str.3, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB4_20
# BB#13:                                # %land.lhs.true.21
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_20
# BB#14:                                # %if.then.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	xstrtol
	cmpl	$0, %eax
	jne	.LBB4_18
# BB#15:                                # %land.lhs.true.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jg	.LBB4_18
# BB#16:                                # %land.lhs.true.31
	cmpq	$2147483647, -40(%rbp)  # imm = 0x7FFFFFFF
	jg	.LBB4_18
# BB#17:                                # %if.then.34
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.37
	movq	-24(%rbp), %rdi
	callq	quotearg
	xorl	%ecx, %ecx
	movabsq	$.L.str.4, %rdx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB4_19:                               # %if.end.39
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.40
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tterm_initialize, .Lfunc_end4-tterm_initialize
	.cfi_endproc

	.type	tterm_default,@object   # @tterm_default
	.data
	.align	8
tterm_default:
	.quad	8                       # 0x8
	.quad	80                      # 0x50
	.size	tterm_default, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"COLUMNS"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ignoring invalid width in environment variable COLUMNS: %s"
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"POSIXLY_CORRECT"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"TABSIZE"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ignoring invalid tab size in environment variable TABSIZE: %s"
	.size	.L.str.4, 62


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
