	.text
	.file	"sig2str.bc"
	.globl	str2sig
	.align	16, 0x90
	.type	str2sig,@function
str2sig:                                # @str2sig
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	str2signum
	xorl	%ecx, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	cmovll	%edx, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	str2sig, .Lfunc_end0-str2sig
	.cfi_endproc

	.align	16, 0x90
	.type	str2signum,@function
str2signum:                             # @str2signum
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	(%rdi), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.LBB1_5
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rsi
	movl	$10, %edx
	movq	-16(%rbp), %rdi
	callq	strtol
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_4
# BB#2:                                 # %land.lhs.true
	cmpq	$64, -32(%rbp)
	jg	.LBB1_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_28
.LBB1_4:                                # %if.end
	jmp	.LBB1_27
.LBB1_5:                                # %if.else
	movl	$0, -36(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$35, %rcx
	jae	.LBB1_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movabsq	$numname_table, %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.12
	movabsq	$numname_table, %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_28
.LBB1_9:                                # %if.end.15
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_10
.LBB1_10:                               # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_6
.LBB1_11:                               # %for.end
	callq	__libc_current_sigrtmin
	movl	%eax, -52(%rbp)
	callq	__libc_current_sigrtmax
	xorl	%ecx, %ecx
	movl	%eax, -56(%rbp)
	cmpl	-52(%rbp), %ecx
	jge	.LBB1_18
# BB#12:                                # %land.lhs.true.21
	movabsq	$.L.str, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#13:                                # %if.then.25
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	callq	strtol
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_17
# BB#14:                                # %land.lhs.true.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jg	.LBB1_17
# BB#15:                                # %land.lhs.true.32
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jg	.LBB1_17
# BB#16:                                # %if.then.37
	movslq	-52(%rbp), %rax
	addq	-64(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_28
.LBB1_17:                               # %if.end.40
	jmp	.LBB1_26
.LBB1_18:                               # %if.else.41
	xorl	%eax, %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB1_25
# BB#19:                                # %land.lhs.true.44
	movabsq	$.L.str.1, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB1_25
# BB#20:                                # %if.then.48
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	callq	strtol
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_24
# BB#21:                                # %land.lhs.true.53
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	movslq	%eax, %rcx
	cmpq	-72(%rbp), %rcx
	jg	.LBB1_24
# BB#22:                                # %land.lhs.true.58
	cmpq	$0, -72(%rbp)
	jg	.LBB1_24
# BB#23:                                # %if.then.61
	movslq	-56(%rbp), %rax
	addq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_28
.LBB1_24:                               # %if.end.65
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.66
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.67
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.68
	movl	$-1, -4(%rbp)
.LBB1_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	str2signum, .Lfunc_end1-str2signum
	.cfi_endproc

	.globl	sig2str
	.align	16, 0x90
	.type	sig2str,@function
sig2str:                                # @sig2str
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
	subq	$80, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$35, %rcx
	jae	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$numname_table, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movabsq	$numname_table, %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	callq	strcpy
	movl	$0, -4(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_15
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	callq	__libc_current_sigrtmin
	movl	%eax, -24(%rbp)
	callq	__libc_current_sigrtmax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB2_8
# BB#7:                                 # %land.lhs.true
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB2_9
.LBB2_8:                                # %if.then.12
	movl	$-1, -4(%rbp)
	jmp	.LBB2_15
.LBB2_9:                                # %if.end.13
	movl	$2, %eax
	movl	-8(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	subl	-24(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-56(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jg	.LBB2_11
# BB#10:                                # %if.then.16
	movq	-16(%rbp), %rdi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	-24(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	-28(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB2_12:                               # %if.end.19
	movl	-8(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.23
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_14:                               # %if.end.25
	movl	$0, -4(%rbp)
.LBB2_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sig2str, .Lfunc_end2-sig2str
	.cfi_endproc

	.type	numname_table,@object   # @numname_table
	.data
	.align	16
numname_table:
	.long	1                       # 0x1
	.asciz	"HUP\000\000\000\000"
	.long	2                       # 0x2
	.asciz	"INT\000\000\000\000"
	.long	3                       # 0x3
	.asciz	"QUIT\000\000\000"
	.long	4                       # 0x4
	.asciz	"ILL\000\000\000\000"
	.long	5                       # 0x5
	.asciz	"TRAP\000\000\000"
	.long	6                       # 0x6
	.asciz	"ABRT\000\000\000"
	.long	8                       # 0x8
	.asciz	"FPE\000\000\000\000"
	.long	9                       # 0x9
	.asciz	"KILL\000\000\000"
	.long	11                      # 0xb
	.asciz	"SEGV\000\000\000"
	.long	7                       # 0x7
	.asciz	"BUS\000\000\000\000"
	.long	13                      # 0xd
	.asciz	"PIPE\000\000\000"
	.long	14                      # 0xe
	.asciz	"ALRM\000\000\000"
	.long	15                      # 0xf
	.asciz	"TERM\000\000\000"
	.long	10                      # 0xa
	.asciz	"USR1\000\000\000"
	.long	12                      # 0xc
	.asciz	"USR2\000\000\000"
	.long	17                      # 0x11
	.asciz	"CHLD\000\000\000"
	.long	23                      # 0x17
	.asciz	"URG\000\000\000\000"
	.long	19                      # 0x13
	.asciz	"STOP\000\000\000"
	.long	20                      # 0x14
	.asciz	"TSTP\000\000\000"
	.long	18                      # 0x12
	.asciz	"CONT\000\000\000"
	.long	21                      # 0x15
	.asciz	"TTIN\000\000\000"
	.long	22                      # 0x16
	.asciz	"TTOU\000\000\000"
	.long	31                      # 0x1f
	.asciz	"SYS\000\000\000\000"
	.long	29                      # 0x1d
	.asciz	"POLL\000\000\000"
	.long	26                      # 0x1a
	.asciz	"VTALRM\000"
	.long	27                      # 0x1b
	.asciz	"PROF\000\000\000"
	.long	24                      # 0x18
	.asciz	"XCPU\000\000\000"
	.long	25                      # 0x19
	.asciz	"XFSZ\000\000\000"
	.long	6                       # 0x6
	.asciz	"IOT\000\000\000\000"
	.long	17                      # 0x11
	.asciz	"CLD\000\000\000\000"
	.long	30                      # 0x1e
	.asciz	"PWR\000\000\000\000"
	.long	28                      # 0x1c
	.asciz	"WINCH\000\000"
	.long	29                      # 0x1d
	.asciz	"IO\000\000\000\000\000"
	.long	16                      # 0x10
	.asciz	"STKFLT\000"
	.long	0                       # 0x0
	.asciz	"EXIT\000\000\000"
	.size	numname_table, 420

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RTMIN"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"RTMAX"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%+d"
	.size	.L.str.2, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
