	.text
	.file	"signame.bc"
	.globl	signame_init
	.align	16, 0x90
	.type	signame_init,@function
signame_init:                           # @signame_init
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
	movl	$1, %edi
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	callq	init_sig
	movl	$2, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	callq	init_sig
	movl	$3, %edi
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	callq	init_sig
	movl	$4, %edi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	callq	init_sig
	movl	$5, %edi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	callq	init_sig
	movl	$6, %edi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	callq	init_sig
	movl	$6, %edi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	callq	init_sig
	movl	$8, %edi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	callq	init_sig
	movl	$9, %edi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	callq	init_sig
	movl	$7, %edi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	callq	init_sig
	movl	$11, %edi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	callq	init_sig
	movl	$31, %edi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	callq	init_sig
	movl	$13, %edi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	callq	init_sig
	movl	$14, %edi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	callq	init_sig
	movl	$15, %edi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	callq	init_sig
	movl	$10, %edi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	callq	init_sig
	movl	$12, %edi
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	callq	init_sig
	movl	$17, %edi
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.35, %rdx
	callq	init_sig
	movl	$17, %edi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.35, %rdx
	callq	init_sig
	movl	$30, %edi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	callq	init_sig
	movl	$20, %edi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	callq	init_sig
	movl	$21, %edi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	callq	init_sig
	movl	$22, %edi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	callq	init_sig
	movl	$19, %edi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	callq	init_sig
	movl	$24, %edi
	movabsq	$.L.str.47, %rsi
	movabsq	$.L.str.48, %rdx
	callq	init_sig
	movl	$25, %edi
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	callq	init_sig
	movl	$26, %edi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	callq	init_sig
	movl	$27, %edi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	callq	init_sig
	movl	$28, %edi
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rdx
	callq	init_sig
	movl	$18, %edi
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	callq	init_sig
	movl	$23, %edi
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rdx
	callq	init_sig
	movl	$29, %edi
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rdx
	callq	init_sig
	movl	$29, %edi
	movabsq	$.L.str.63, %rsi
	movabsq	$.L.str.62, %rdx
	callq	init_sig
	popq	%rbp
	retq
.Lfunc_end0:
	.size	signame_init, .Lfunc_end0-signame_init
	.cfi_endproc

	.align	16, 0x90
	.type	init_sig,@function
init_sig:                               # @init_sig
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
	movabsq	$sig_table, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movslq	sig_table_nelts, %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%edi, (%rsi)
	movq	-16(%rbp), %rdx
	movl	sig_table_nelts, %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, sig_table_nelts
	movslq	%edi, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rdx, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	init_sig, .Lfunc_end1-init_sig
	.cfi_endproc

	.globl	sig_abbrev
	.align	16, 0x90
	.type	sig_abbrev,@function
sig_abbrev:                             # @sig_abbrev
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
	movl	%edi, -12(%rbp)
	cmpl	$0, sig_table_nelts
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	signame_init
.LBB2_2:                                # %if.end
	movl	$0, -16(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	sig_table_nelts, %eax
	jge	.LBB2_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movabsq	$sig_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	cmpl	-12(%rbp), %edx
	jne	.LBB2_6
# BB#5:                                 # %if.then.4
	movabsq	$sig_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_9
.LBB2_6:                                # %if.end.7
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_8:                                # %for.end
	movq	$0, -8(%rbp)
.LBB2_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sig_abbrev, .Lfunc_end2-sig_abbrev
	.cfi_endproc

	.globl	sig_number
	.align	16, 0x90
	.type	sig_number,@function
sig_number:                             # @sig_number
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
	movq	%rdi, -16(%rbp)
	cmpl	$0, sig_table_nelts
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	signame_init
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$83, %ecx
	jne	.LBB3_6
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$73, %ecx
	jne	.LBB3_6
# BB#4:                                 # %land.lhs.true.7
	movq	-16(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$71, %ecx
	jne	.LBB3_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -16(%rbp)
.LBB3_6:                                # %if.end.13
	movl	$0, -20(%rbp)
.LBB3_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	sig_table_nelts, %eax
	jge	.LBB3_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$sig_table, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edx
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB3_11
# BB#9:                                 # %land.lhs.true.24
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$sig_table, %rax
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_11
# BB#10:                                # %if.then.30
	movabsq	$sig_table, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.33
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_7
.LBB3_13:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB3_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sig_number, .Lfunc_end3-sig_number
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HUP"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Hangup"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"INT"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Interrupt"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"QUIT"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Quit"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ILL"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Illegal Instruction"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"TRAP"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Trace/breakpoint trap"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ABRT"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Aborted"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"IOT"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"IOT trap"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"FPE"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Floating point exception"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"KILL"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Killed"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"BUS"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Bus error"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"SEGV"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Segmentation fault"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"SYS"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Bad system call"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"PIPE"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Broken pipe"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ALRM"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Alarm clock"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"TERM"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Terminated"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"USR1"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"User defined signal 1"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"USR2"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"User defined signal 2"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"CHLD"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Child exited"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"CLD"
	.size	.L.str.36, 4

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"PWR"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Power failure"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"TSTP"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Stopped"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"TTIN"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Stopped (tty input)"
	.size	.L.str.42, 20

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"TTOU"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Stopped (tty output)"
	.size	.L.str.44, 21

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"STOP"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Stopped (signal)"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"XCPU"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"CPU time limit exceeded"
	.size	.L.str.48, 24

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"XFSZ"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"File size limit exceeded"
	.size	.L.str.50, 25

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"VTALRM"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Virtual timer expired"
	.size	.L.str.52, 22

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"PROF"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Profiling timer expired"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"WINCH"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Window changed"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"CONT"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Continued"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"URG"
	.size	.L.str.59, 4

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Urgent I/O condition"
	.size	.L.str.60, 21

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"IO"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"I/O possible"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"POLL"
	.size	.L.str.63, 5

	.type	sig_table_nelts,@object # @sig_table_nelts
	.local	sig_table_nelts
	.comm	sig_table_nelts,4,4
	.type	sig_table,@object       # @sig_table
	.local	sig_table
	.comm	sig_table,2080,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
