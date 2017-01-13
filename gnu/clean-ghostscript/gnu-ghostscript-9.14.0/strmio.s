	.text
	.file	"strmio.bc"
	.globl	sfopen
	.align	16, 0x90
	.type	sfopen,@function
sfopen:                                 # @sfopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 96
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	strlen
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	callq	gs_parse_file_name
	testl	%eax, %eax
	js	.LBB0_1
# BB#2:                                 # %if.end
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
# BB#4:                                 # %if.end.12
	movq	40(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.15
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gs_getiodevice
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rsi
.LBB0_6:                                # %if.end.18
	movq	32(%rax), %r10
	movl	56(%rsp), %edx
	testq	%r10, %r10
	je	.LBB0_7
# BB#8:                                 # %if.else
	leaq	24(%rsp), %r8
	movq	%rax, %rdi
	movq	%r15, %rcx
	movq	%r14, %r9
	callq	*%r10
	jmp	.LBB0_9
.LBB0_1:                                # %if.then
	movl	$.L.str, %edi
	callq	strlen
	movl	$.L.str, %esi
	jmp	.LBB0_12
.LBB0_3:                                # %if.then.8
	movl	$.L.str.1, %edi
	callq	strlen
	movl	$.L.str.1, %esi
	jmp	.LBB0_12
.LBB0_7:                                # %if.then.23
	movq	40(%rax), %rcx
	movq	%r14, 8(%rsp)
	movq	%rcx, (%rsp)
	leaq	24(%rsp), %r8
	movl	$2048, %ecx             # imm = 0x800
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%r15, %rdx
	movq	%rax, %r9
	callq	file_open_stream
.LBB0_9:                                # %if.end.33
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB0_13
# BB#10:                                # %if.end.37
	movq	24(%rsp), %r15
	movq	$0, 176(%r15)
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	ssetfilename
	movl	%eax, %ecx
	movq	24(%rsp), %rax
	testl	%ecx, %ecx
	jns	.LBB0_13
# BB#11:                                # %if.then.43
	movq	%rax, %rdi
	callq	sclose
	movq	24(%rsp), %rsi
	movq	8(%rsi), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movl	$.L.str.3, %edi
	callq	strlen
	movl	$.L.str.3, %esi
.LBB0_12:                               # %cleanup
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	errwrite
	xorl	%eax, %eax
.LBB0_13:                               # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	sfopen, .Lfunc_end0-sfopen
	.cfi_endproc

	.globl	sfread
	.align	16, 0x90
	.type	sfread,@function
sfread:                                 # @sfread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	%rdi, %rax
	imull	%ebx, %edx
	leaq	12(%rsp), %r8
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r8, %rcx
	callq	sgets
	imull	12(%rsp), %ebx
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	sfread, .Lfunc_end1-sfread
	.cfi_endproc

	.globl	sfgetc
	.align	16, 0x90
	.type	sfgetc,@function
sfgetc:                                 # @sfgetc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 16
	movq	112(%rdi), %rax
	movq	120(%rdi), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB2_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%rdi)
	movzbl	1(%rax), %eax
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	$1, %esi
	callq	spgetcc
.LBB2_3:                                # %cond.end
	cmpl	$-2, %eax
	movl	$-1, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end2:
	.size	sfgetc, .Lfunc_end2-sfgetc
	.cfi_endproc

	.globl	sfseek
	.align	16, 0x90
	.type	sfseek,@function
sfseek:                                 # @sfseek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$2, %edx
	jne	.LBB3_1
# BB#3:                                 # %if.then.2
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	savailable
	testl	%eax, %eax
	movl	$-1, %eax
	js	.LBB3_8
# BB#4:
	movq	(%rsp), %rax
	subq	%r14, %rax
	movq	%rax, %r14
	jmp	.LBB3_5
.LBB3_1:                                # %entry
	cmpl	$1, %edx
	jne	.LBB3_5
# BB#2:                                 # %if.end.thread
	movq	%rbx, %rdi
	callq	stell
	addq	%rax, %r14
.LBB3_5:                                # %if.end.7
	testb	$4, 155(%rbx)
	jne	.LBB3_7
# BB#6:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	%rcx, %r14
	jne	.LBB3_8
.LBB3_7:                                # %if.then.13
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	spseek
.LBB3_8:                                # %cleanup.16
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	sfseek, .Lfunc_end3-sfseek
	.cfi_endproc

	.globl	srewind
	.align	16, 0x90
	.type	srewind,@function
srewind:                                # @srewind
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testb	$4, 155(%rbx)
	jne	.LBB4_3
# BB#1:                                 # %lor.lhs.false.i
	movq	%rbx, %rdi
	callq	stell
	testq	%rax, %rax
	je	.LBB4_3
# BB#2:                                 # %sfseek.exit
	movl	$-1, %eax
	popq	%rbx
	retq
.LBB4_3:                                # %if.then.13.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	spseek                  # TAILCALL
.Lfunc_end4:
	.size	srewind, .Lfunc_end4-srewind
	.cfi_endproc

	.globl	sftell
	.align	16, 0x90
	.type	sftell,@function
sftell:                                 # @sftell
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	stell                   # TAILCALL
.Lfunc_end5:
	.size	sftell, .Lfunc_end5-sftell
	.cfi_endproc

	.globl	sfeof
	.align	16, 0x90
	.type	sfeof,@function
sfeof:                                  # @sfeof
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	152(%rdi), %eax
	xorl	%ecx, %ecx
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$-1, %eax
	cmovnel	%ecx, %eax
	retq
.Lfunc_end6:
	.size	sfeof, .Lfunc_end6-sfeof
	.cfi_endproc

	.globl	sferror
	.align	16, 0x90
	.type	sferror,@function
sferror:                                # @sferror
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	152(%rdi), %eax
	xorl	%ecx, %ecx
	cmpl	$65534, %eax            # imm = 0xFFFE
	movl	$-1, %eax
	cmovnel	%ecx, %eax
	retq
.Lfunc_end7:
	.size	sferror, .Lfunc_end7-sferror
	.cfi_endproc

	.globl	sfclose
	.align	16, 0x90
	.type	sfclose,@function
sfclose:                                # @sfclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	callq	sclose
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	sfclose, .Lfunc_end8-sfclose
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sfopen: gs_parse_file_name failed.\n"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sfopen: not allowed with %device only.\n"
	.size	.L.str.1, 40

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sfopen: allocation error"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sfopen: allocation error setting path name into stream.\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"sfclose(stream)"
	.size	.L.str.4, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
