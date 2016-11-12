	.text
	.file	"sfxstdio.bc"
	.globl	sread_file
	.align	16, 0x90
	.type	sread_file,@function
sread_file:                             # @sread_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	ferror
	movl	%eax, %r13d
	movq	%r14, %rdi
	callq	gp_ftell_64
	movl	$1, %ebp
	cmpq	$-1, %rax
	je	.LBB0_2
# BB#1:                                 # %land.rhs
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	gp_fseek_64
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leal	1(,%rax,4), %ebp
.LBB0_2:                                # %land.end
	testl	%r13d, %r13d
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movq	%r14, %rdi
	callq	clearerr
.LBB0_4:                                # %if.end
	movl	$sread_file.p, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movl	%ebp, %r8d
	callq	s_std_init
	movq	%r14, 304(%rbx)
	movzbl	155(%rbx), %eax
	movl	%eax, 328(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sread_file, .Lfunc_end0-sread_file
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_available,@function
s_file_available:                       # @s_file_available
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	344(%rbx), %rbp
	callq	stell
	subq	%rax, %rbp
	movq	120(%rbx), %r15
	subq	112(%rbx), %r15
	cmpq	%r15, %rbp
	movq	%r15, %rax
	cmovleq	%rbp, %rax
	movq	%rax, (%r14)
	testb	$4, 155(%rbx)
	jne	.LBB1_1
# BB#4:                                 # %if.else
	xorl	%r13d, %r13d
	testq	%rax, %rax
	jne	.LBB1_7
# BB#5:                                 # %land.lhs.true
	movq	304(%rbx), %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then.33
	movq	$-1, (%r14)
	jmp	.LBB1_7
.LBB1_1:                                # %if.then
	movq	304(%rbx), %rdi
	callq	gp_ftell_64
	movq	%rax, %r12
	movq	304(%rbx), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	gp_fseek_64
	movl	$-2, %r13d
	testl	%eax, %eax
	jne	.LBB1_7
# BB#2:                                 # %if.end
	movq	304(%rbx), %rdi
	callq	gp_ftell_64
	movq	%r12, %rsi
	movq	%rax, %r12
	movq	304(%rbx), %rdi
	xorl	%edx, %edx
	movq	%rsi, %rbx
	callq	gp_fseek_64
	testl	%eax, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.end.15
	subq	%rbx, %r12
	addq	%r15, %r12
	cmpq	%r12, %rbp
	cmovleq	%rbp, %r12
	cmpq	$1, %r12
	sbbq	%rax, %rax
	orq	%r12, %rax
	movq	%rax, (%r14)
	xorl	%r13d, %r13d
.LBB1_7:                                # %cleanup.36
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_file_available, .Lfunc_end1-s_file_available
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_read_seek,@function
s_file_read_seek:                       # @s_file_read_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rax
	subq	176(%rbx), %rax
	js	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	136(%rbx), %rcx
	movl	$1, %edx
	subq	%rcx, %rdx
	addq	120(%rbx), %rdx
	cmpq	%rdx, %rax
	jle	.LBB2_2
.LBB2_3:                                # %if.end
	movl	$-2, %ebp
	testq	%r14, %r14
	js	.LBB2_8
# BB#4:                                 # %lor.lhs.false
	cmpq	%r14, 344(%rbx)
	jl	.LBB2_8
# BB#5:                                 # %lor.lhs.false.8
	movq	304(%rbx), %rdi
	movq	336(%rbx), %rsi
	addq	%r14, %rsi
	xorl	%edx, %edx
	callq	gp_fseek_64
	testl	%eax, %eax
	jne	.LBB2_8
# BB#6:                                 # %if.end.12
	movq	136(%rbx), %rax
	decq	%rax
	movq	%rax, 120(%rbx)
	movq	%rax, 112(%rbx)
	movw	$0, 152(%rbx)
	movq	%r14, 176(%rbx)
	jmp	.LBB2_7
.LBB2_2:                                # %if.then
	leaq	-1(%rcx,%rax), %rax
	movq	%rax, 112(%rbx)
.LBB2_7:                                # %cleanup
	xorl	%ebp, %ebp
.LBB2_8:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	s_file_read_seek, .Lfunc_end2-s_file_read_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_read_close,@function
s_file_read_close:                      # @s_file_read_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rcx
	movq	304(%rcx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, 304(%rcx)
	callq	fclose
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-2, %eax
	cmovel	%ecx, %eax
.LBB3_2:                                # %cleanup
	popq	%rdx
	retq
.Lfunc_end3:
	.size	s_file_read_close, .Lfunc_end3-s_file_read_close
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_read_process,@function
s_file_read_process:                    # @s_file_read_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rax
	movq	304(%rax), %r14
	movq	344(%rax), %rbp
	movq	8(%r15), %rdi
	movq	16(%r15), %rbx
	subq	%rdi, %rbx
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rcx, %rbp
	movl	$1, %r12d
	je	.LBB4_2
# BB#1:                                 # %if.then
	addq	336(%rax), %rbp
	movq	%r14, %rdi
	callq	gp_ftell_64
	subq	%rax, %rbp
	cmpq	%rbp, %rbx
	movl	$-1, %eax
	movl	$1, %r12d
	cmovgl	%eax, %r12d
	cmovgq	%rbp, %rbx
	movq	8(%r15), %rdi
.LBB4_2:                                # %if.end.5
	incq	%rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	fread
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cltq
	cmovnsq	%rax, %rcx
	addq	%rcx, 8(%r15)
	movq	%r14, %rdi
	callq	ferror
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	jne	.LBB4_4
# BB#3:                                 # %cond.false
	movq	%r14, %rdi
	callq	feof
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB4_4:                                # %cond.end.19
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	s_file_read_process, .Lfunc_end4-s_file_read_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_switch,@function
s_file_switch:                          # @s_file_switch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	328(%rbx), %r12d
	movq	304(%rbx), %r14
	movl	$-2, %ebp
	testl	%esi, %esi
	je	.LBB5_8
# BB#1:                                 # %if.then
	testb	$2, %r12b
	je	.LBB5_12
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r15
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gp_fseek_64
	movl	%r12d, %ebp
	andl	$8, %ebp
	movq	136(%rbx), %rsi
	movl	148(%rbx), %edx
	movl	$2, %r8d
	cmpq	%r14, stdout(%rip)
	je	.LBB5_4
# BB#3:                                 # %select.mid
	movl	$6, %r8d
.LBB5_4:                                # %select.end
	movl	$swrite_file.p, %ecx
	movq	%rbx, %rdi
	callq	s_std_init
	testl	%ebp, %ebp
	movq	%r14, 304(%rbx)
	jne	.LBB5_5
# BB#6:                                 # %if.else
	movzbl	155(%rbx), %eax
	movl	%eax, 328(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	jmp	.LBB5_7
.LBB5_8:                                # %if.else.13
	testb	$1, %r12b
	je	.LBB5_12
# BB#9:                                 # %if.end.18
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	*208(%rbx)
	testl	%eax, %eax
	js	.LBB5_12
# BB#10:                                # %if.end.26
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	gp_fseek_64
	movq	136(%rbx), %rdx
	movl	148(%rbx), %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sread_file
	movl	%r12d, %eax
	andl	$8, %eax
	movzbl	155(%rbx), %ecx
	orl	%eax, %ecx
	movb	%cl, 155(%rbx)
	movq	%r15, 176(%rbx)
	jmp	.LBB5_11
.LBB5_5:                                # %if.then.8
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	movb	$10, 155(%rbx)
	movl	$10, 328(%rbx)
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	gp_fseek_64
	movq	%r14, %rdi
	callq	gp_ftell_64
	movq	%rax, %r15
.LBB5_7:                                # %if.end.11
	movq	%r15, 176(%rbx)
	movb	%r12b, 155(%rbx)
.LBB5_11:                               # %if.end.35
	movl	%r12d, 328(%rbx)
	xorl	%ebp, %ebp
.LBB5_12:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	s_file_switch, .Lfunc_end5-s_file_switch
	.cfi_endproc

	.globl	sread_subfile
	.align	16, 0x90
	.type	sread_subfile,@function
sread_subfile:                          # @sread_subfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 48
.Ltmp58:
	.cfi_offset %rbx, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$-2, %ebp
	cmpq	$0, 304(%rbx)
	je	.LBB6_9
# BB#1:                                 # %lor.lhs.false
	movzbl	155(%rbx), %eax
	cmpl	$5, %eax
	jne	.LBB6_9
# BB#2:                                 # %lor.lhs.false.3
	cmpq	$0, 336(%rbx)
	jne	.LBB6_9
# BB#3:                                 # %lor.lhs.false.6
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, 344(%rbx)
	jne	.LBB6_9
# BB#4:                                 # %lor.lhs.false.9
	movq	176(%rbx), %rax
	cmpq	%r15, %rax
	jl	.LBB6_6
# BB#5:                                 # %lor.lhs.false.9
	leaq	(%r14,%r15), %rcx
	cmpq	%rcx, %rax
	jle	.LBB6_8
.LBB6_6:                                # %land.lhs.true
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	spseek
	testl	%eax, %eax
	js	.LBB6_9
# BB#7:                                 # %land.lhs.true.if.end_crit_edge
	movq	176(%rbx), %rax
.LBB6_8:                                # %if.end
	subq	%r15, %rax
	movq	%rax, 176(%rbx)
	movq	%r15, 336(%rbx)
	movq	%r14, 344(%rbx)
	xorl	%ebp, %ebp
.LBB6_9:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sread_subfile, .Lfunc_end6-sread_subfile
	.cfi_endproc

	.globl	swrite_file
	.align	16, 0x90
	.type	swrite_file,@function
swrite_file:                            # @swrite_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %r14, -16
	movl	%ecx, %eax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$2, %r8d
	cmpq	%r14, stdout(%rip)
	je	.LBB7_2
# BB#1:                                 # %select.mid
	movl	$6, %r8d
.LBB7_2:                                # %select.end
	movl	$swrite_file.p, %ecx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movl	%eax, %edx
	callq	s_std_init
	movq	%r14, 304(%rbx)
	movzbl	155(%rbx), %eax
	movl	%eax, 328(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	swrite_file, .Lfunc_end7-swrite_file
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_write_seek,@function
s_file_write_seek:                      # @s_file_write_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 32
.Ltmp70:
	.cfi_offset %rbx, -24
.Ltmp71:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*208(%rbx)
	testl	%eax, %eax
	js	.LBB8_3
# BB#1:                                 # %if.end
	movq	304(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	callq	gp_fseek_64
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	jne	.LBB8_3
# BB#2:                                 # %if.end.4
	movq	%r14, 176(%rbx)
	xorl	%eax, %eax
.LBB8_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	s_file_write_seek, .Lfunc_end8-s_file_write_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_write_flush,@function
s_file_write_flush:                     # @s_file_write_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	s_process_write_buf
	movl	%eax, %ebp
	movq	304(%rbx), %rdi
	callq	fflush
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	s_file_write_flush, .Lfunc_end9-s_file_write_flush
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_write_close,@function
s_file_write_close:                     # @s_file_write_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	s_process_write_buf
	movq	304(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB10_2
# BB#1:                                 # %if.then.i
	movq	$0, 304(%rbx)
	callq	fclose
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-2, %eax
	cmovel	%ecx, %eax
.LBB10_2:                               # %s_file_read_close.exit
	popq	%rbx
	retq
.Lfunc_end10:
	.size	s_file_write_close, .Lfunc_end10-s_file_write_close
	.cfi_endproc

	.align	16, 0x90
	.type	s_file_write_process,@function
s_file_write_process:                   # @s_file_write_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 32
.Ltmp82:
	.cfi_offset %rbx, -24
.Ltmp83:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %rcx
	movq	(%rbx), %rdi
	movq	8(%rbx), %rdx
	subq	%rdi, %rdx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	304(%rcx), %r14
	incq	%rdi
	movl	%edx, %edx
	movl	$1, %esi
	movq	%r14, %rcx
	callq	fwrite
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cltq
	cmovnsq	%rax, %rcx
	addq	%rcx, (%rbx)
	movq	%r14, %rdi
	callq	ferror
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-2, %eax
	cmovel	%ecx, %eax
.LBB11_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	s_file_write_process, .Lfunc_end11-s_file_write_process
	.cfi_endproc

	.globl	sappend_file
	.align	16, 0x90
	.type	sappend_file,@function
sappend_file:                           # @sappend_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 32
.Ltmp87:
	.cfi_offset %rbx, -24
.Ltmp88:
	.cfi_offset %r14, -16
	movl	%ecx, %eax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$2, %r8d
	cmpq	%r14, stdout(%rip)
	je	.LBB12_2
# BB#1:                                 # %select.mid
	movl	$6, %r8d
.LBB12_2:                               # %select.end
	movl	$swrite_file.p, %ecx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movl	%eax, %edx
	callq	s_std_init
	movq	%r14, 304(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	movb	$10, 155(%rbx)
	movl	$10, 328(%rbx)
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	gp_fseek_64
	movq	%r14, %rdi
	callq	gp_ftell_64
	movq	%rax, 176(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	sappend_file, .Lfunc_end12-sappend_file
	.cfi_endproc

	.type	sread_file.p,@object    # @sread_file.p
	.section	.rodata,"a",@progbits
	.align	8
sread_file.p:
	.quad	s_file_available
	.quad	s_file_read_seek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_file_read_close
	.quad	s_file_read_process
	.quad	s_file_switch
	.size	sread_file.p, 56

	.type	swrite_file.p,@object   # @swrite_file.p
	.align	8
swrite_file.p:
	.quad	s_std_noavailable
	.quad	s_file_write_seek
	.quad	s_std_write_reset
	.quad	s_file_write_flush
	.quad	s_file_write_close
	.quad	s_file_write_process
	.quad	s_file_switch
	.size	swrite_file.p, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
