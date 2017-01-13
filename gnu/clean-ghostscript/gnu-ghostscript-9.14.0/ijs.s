	.text
	.file	"ijs.bc"
	.globl	ijs_send_init
	.align	16, 0x90
	.type	ijs_send_init,@function
ijs_send_init:                          # @ijs_send_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, (%rdi)
	movl	$0, 4100(%rdi)
	retq
.Lfunc_end0:
	.size	ijs_send_init, .Lfunc_end0-ijs_send_init
	.cfi_endproc

	.globl	ijs_send_int
	.align	16, 0x90
	.type	ijs_send_int,@function
ijs_send_int:                           # @ijs_send_int
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	movslq	4100(%rdi), %rdx
	leal	4(%rdx), %esi
	movl	$-4, %eax
	cmpl	$4096, %esi             # imm = 0x1000
	jg	.LBB1_2
# BB#1:                                 # %if.end
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 4(%rdi,%rdx)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 5(%rdi,%rdx)
	movb	%ch, 6(%rdi,%rdx)  # NOREX
	movb	%cl, 7(%rdi,%rdx)
	addl	$4, 4100(%rdi)
	xorl	%eax, %eax
.LBB1_2:                                # %return
	retq
.Lfunc_end1:
	.size	ijs_send_int, .Lfunc_end1-ijs_send_int
	.cfi_endproc

	.globl	ijs_send_begin
	.align	16, 0x90
	.type	ijs_send_begin,@function
ijs_send_begin:                         # @ijs_send_begin
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	movl	$-5, %eax
	cmpl	$0, 4100(%rdi)
	jne	.LBB2_2
# BB#1:                                 # %ijs_send_int.exit
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 4(%rdi)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 5(%rdi)
	movb	%ch, 6(%rdi)  # NOREX
	movb	%cl, 7(%rdi)
	movl	$8, 4100(%rdi)
	xorl	%eax, %eax
.LBB2_2:                                # %return
	retq
.Lfunc_end2:
	.size	ijs_send_begin, .Lfunc_end2-ijs_send_begin
	.cfi_endproc

	.globl	ijs_send_block
	.align	16, 0x90
	.type	ijs_send_block,@function
ijs_send_block:                         # @ijs_send_block
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
	movq	%rdi, %rbx
	movslq	4100(%rbx), %rcx
	leal	(%rcx,%rdx), %edi
	movl	$-4, %eax
	cmpl	$4096, %edi             # imm = 0x1000
	jg	.LBB3_2
# BB#1:                                 # %if.end
	leaq	4(%rbx,%rcx), %rdi
	movslq	%edx, %r14
	movq	%r14, %rdx
	callq	memcpy
	addl	%r14d, 4100(%rbx)
	xorl	%eax, %eax
.LBB3_2:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	ijs_send_block, .Lfunc_end3-ijs_send_block
	.cfi_endproc

	.globl	ijs_send_buf
	.align	16, 0x90
	.type	ijs_send_buf,@function
ijs_send_buf:                           # @ijs_send_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	4(%rbx), %rsi
	movslq	4100(%rbx), %rdx
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 8(%rbx)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 9(%rbx)
	movb	%dh, 10(%rbx)  # NOREX
	movb	%dl, 11(%rbx)
	movl	(%rbx), %edi
	callq	write
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpl	4100(%rbx), %ecx
	je	.LBB4_2
# BB#1:                                 # %select.mid
	movl	$-2, %eax
.LBB4_2:                                # %select.end
	movl	$0, 4100(%rbx)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	ijs_send_buf, .Lfunc_end4-ijs_send_buf
	.cfi_endproc

	.globl	ijs_recv_init
	.align	16, 0x90
	.type	ijs_recv_init,@function
ijs_recv_init:                          # @ijs_recv_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, (%rdi)
	movl	$0, 4100(%rdi)
	retq
.Lfunc_end5:
	.size	ijs_recv_init, .Lfunc_end5-ijs_recv_init
	.cfi_endproc

	.globl	ijs_get_int
	.align	16, 0x90
	.type	ijs_get_int,@function
ijs_get_int:                            # @ijs_get_int
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shll	$24, %eax
	movzbl	1(%rdi), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	2(%rdi), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movzbl	3(%rdi), %eax
	orl	%edx, %eax
	retq
.Lfunc_end6:
	.size	ijs_get_int, .Lfunc_end6-ijs_get_int
	.cfi_endproc

	.globl	ijs_recv_read
	.align	16, 0x90
	.type	ijs_recv_read,@function
ijs_recv_read:                          # @ijs_recv_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r15), %edi
	movslq	%ebp, %rax
	leaq	(%r14,%rax), %rsi
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	callq	read
	testl	%eax, %eax
	js	.LBB7_5
# BB#2:                                 # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	je	.LBB7_3
# BB#4:                                 # %if.else.6
                                        #   in Loop: Header=BB7_1 Depth=1
	addl	%ebp, %eax
	cmpl	%ebx, %eax
	movl	%eax, %ebp
	jl	.LBB7_1
	jmp	.LBB7_5
.LBB7_3:
	movl	%ebp, %eax
.LBB7_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ijs_recv_read, .Lfunc_end7-ijs_recv_read
	.cfi_endproc

	.globl	ijs_recv_buf
	.align	16, 0x90
	.type	ijs_recv_buf,@function
ijs_recv_buf:                           # @ijs_recv_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_1:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movslq	%ebp, %rax
	leaq	4(%rbx,%rax), %rsi
	movl	$8, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	callq	read
	movq	%rax, %rcx
	movl	$-2, %eax
	testl	%ecx, %ecx
	jle	.LBB8_13
# BB#2:                                 # %if.else.6.i
                                        #   in Loop: Header=BB8_1 Depth=1
	addl	%ebp, %ecx
	cmpl	$8, %ecx
	movl	%ecx, %ebp
	jl	.LBB8_1
# BB#3:                                 # %ijs_recv_read.exit
	jne	.LBB8_13
# BB#4:                                 # %if.end
	movzbl	8(%rbx), %eax
	shll	$24, %eax
	movzbl	9(%rbx), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	10(%rbx), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movzbl	11(%rbx), %ecx
	orl	%eax, %ecx
	movl	%ecx, 4100(%rbx)
	leal	-8(%rcx), %r15d
	movl	$-4, %eax
	cmpl	$4088, %r15d            # imm = 0xFF8
	ja	.LBB8_13
# BB#5:                                 # %if.end.9
	cmpl	$9, %ecx
	jl	.LBB8_12
# BB#6:                                 # %if.then.12
	leaq	12(%rbx), %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_7:                                # %do.body.i.25
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movslq	%ebp, %rax
	leaq	(%r14,%rax), %rsi
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	callq	read
	testl	%eax, %eax
	js	.LBB8_11
# BB#8:                                 # %if.else.i.27
                                        #   in Loop: Header=BB8_7 Depth=1
	je	.LBB8_9
# BB#10:                                # %if.else.6.i.30
                                        #   in Loop: Header=BB8_7 Depth=1
	addl	%ebp, %eax
	cmpl	%r15d, %eax
	movl	%eax, %ebp
	jl	.LBB8_7
	jmp	.LBB8_11
.LBB8_9:
	movl	%ebp, %eax
.LBB8_11:                               # %ijs_recv_read.exit32
	cmpl	%r15d, %eax
	movl	$-2, %eax
	jne	.LBB8_13
.LBB8_12:                               # %if.end.20
	movl	$8, 4104(%rbx)
	xorl	%eax, %eax
.LBB8_13:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ijs_recv_buf, .Lfunc_end8-ijs_recv_buf
	.cfi_endproc

	.globl	ijs_recv_ack
	.align	16, 0x90
	.type	ijs_recv_ack,@function
ijs_recv_ack:                           # @ijs_recv_ack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	ijs_recv_buf
	testl	%eax, %eax
	jne	.LBB9_4
# BB#1:                                 # %if.then
	movzbl	4(%rbx), %eax
	shll	$24, %eax
	movzbl	5(%rbx), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	6(%rbx), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movzbl	7(%rbx), %ecx
	orl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB9_4
# BB#2:                                 # %if.then.3
	movl	$-3, %eax
	cmpl	$12, 4100(%rbx)
	jne	.LBB9_4
# BB#3:                                 # %if.else
	movzbl	12(%rbx), %eax
	shll	$24, %eax
	movzbl	13(%rbx), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	14(%rbx), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movzbl	15(%rbx), %eax
	orl	%edx, %eax
.LBB9_4:                                # %if.end.10
	popq	%rbx
	retq
.Lfunc_end9:
	.size	ijs_recv_ack, .Lfunc_end9-ijs_recv_ack
	.cfi_endproc

	.globl	ijs_recv_int
	.align	16, 0x90
	.type	ijs_recv_int,@function
ijs_recv_int:                           # @ijs_recv_int
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	4104(%rdi), %rcx
	leal	4(%rcx), %edx
	movl	$-3, %eax
	cmpl	4100(%rdi), %edx
	jg	.LBB10_2
# BB#1:                                 # %if.end
	movzbl	4(%rdi,%rcx), %eax
	shll	$24, %eax
	movzbl	5(%rdi,%rcx), %edx
	shll	$16, %edx
	orl	%eax, %edx
	movzbl	6(%rdi,%rcx), %eax
	shll	$8, %eax
	orl	%edx, %eax
	movzbl	7(%rdi,%rcx), %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rsi)
	addl	$4, 4104(%rdi)
	xorl	%eax, %eax
.LBB10_2:                               # %return
	retq
.Lfunc_end10:
	.size	ijs_recv_int, .Lfunc_end10-ijs_recv_int
	.cfi_endproc

	.globl	ijs_recv_block
	.align	16, 0x90
	.type	ijs_recv_block,@function
ijs_recv_block:                         # @ijs_recv_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -24
.Ltmp31:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movslq	4100(%r14), %rbx
	movslq	4104(%r14), %rcx
	subq	%rcx, %rbx
	movl	$-4, %eax
	cmpl	%edx, %ebx
	jg	.LBB11_2
# BB#1:                                 # %if.end
	leaq	4(%r14,%rcx), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	4100(%r14), %eax
	movl	%eax, 4104(%r14)
	movl	%ebx, %eax
.LBB11_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	ijs_recv_block, .Lfunc_end11-ijs_recv_block
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
