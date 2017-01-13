	.text
	.file	"spprint.bc"
	.globl	stream_write
	.align	16, 0x90
	.type	stream_write,@function
stream_write:                           # @stream_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rcx
	callq	sputs
	movl	4(%rsp), %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	stream_write, .Lfunc_end0-stream_write
	.cfi_endproc

	.globl	stream_puts
	.align	16, 0x90
	.type	stream_puts,@function
stream_puts:                            # @stream_puts
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	leaq	12(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	sputs
	cmpl	%r15d, 12(%rsp)
	setne	%cl
	testl	%eax, %eax
	sets	%al
	orb	%cl, %al
	movzbl	%al, %eax
	shll	$31, %eax
	sarl	$31, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	stream_puts, .Lfunc_end1-stream_puts
	.cfi_endproc

	.globl	pprintd1
	.align	16, 0x90
	.type	pprintd1,@function
pprintd1:                               # @pprintd1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_10:                               # %cond.true.i
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%rbx), %al
	movb	%al, 1(%rcx)
	incq	%rbx
.LBB2_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB2_2
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB2_3
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	incq	%rbx
	movb	$37, %al
.LBB2_9:                                # %if.end.9.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB2_10
# BB#11:                                # %cond.false.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbx
	jmp	.LBB2_1
.LBB2_2:                                # %for.cond.i
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	jne	.LBB2_9
.LBB2_3:                                # %pprintf_scan.exit
	leaq	(%rsp), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	gs_sprintf
	movb	(%rsp), %al
	testb	%al, %al
	je	.LBB2_14
# BB#4:                                 # %for.body.i.preheader
	leaq	1(%rsp), %rbp
	.align	16, 0x90
.LBB2_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jae	.LBB2_12
# BB#6:                                 # %cond.true.i.4
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	-1(%rbp), %al
	movb	%al, 1(%rcx)
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_12:                               # %cond.false.i.6
                                        #   in Loop: Header=BB2_5 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB2_13:                               # %for.inc.i.7
                                        #   in Loop: Header=BB2_5 Depth=1
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB2_5
.LBB2_14:                               # %pputs_short.exit
	addq	$2, %rbx
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_21:                               # %cond.true.i.17
                                        #   in Loop: Header=BB2_15 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%rbx), %al
	movb	%al, 1(%rcx)
	incq	%rbx
.LBB2_15:                               # %for.cond.i.9
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB2_16
# BB#18:                                # %if.then.i.12
                                        #   in Loop: Header=BB2_15 Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB2_17
# BB#19:                                #   in Loop: Header=BB2_15 Depth=1
	incq	%rbx
	movb	$37, %al
.LBB2_20:                               # %if.end.9.i.15
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB2_21
# BB#22:                                # %cond.false.i.19
                                        #   in Loop: Header=BB2_15 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbx
	jmp	.LBB2_15
.LBB2_16:                               # %for.cond.i.9
                                        #   in Loop: Header=BB2_15 Depth=1
	testb	%al, %al
	jne	.LBB2_20
.LBB2_17:                               # %pprintf_scan.exit22
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pprintd1, .Lfunc_end2-pprintd1
	.cfi_endproc

	.globl	pprintd2
	.align	16, 0x90
	.type	pprintd2,@function
pprintd2:                               # @pprintd2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdi, %rbx
	callq	pprintd1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	pprintd1                # TAILCALL
.Lfunc_end3:
	.size	pprintd2, .Lfunc_end3-pprintd2
	.cfi_endproc

	.globl	pprintd3
	.align	16, 0x90
	.type	pprintd3,@function
pprintd3:                               # @pprintd3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	movq	%rdi, %rbx
	callq	pprintd1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	callq	pprintd1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pprintd1                # TAILCALL
.Lfunc_end4:
	.size	pprintd3, .Lfunc_end4-pprintd3
	.cfi_endproc

	.globl	pprintd4
	.align	16, 0x90
	.type	pprintd4,@function
pprintd4:                               # @pprintd4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r15d
	movl	%ecx, %ebx
	movq	%rdi, %rbp
	callq	pprintd1
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movl	%ebx, %edx
	callq	pprintd1
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movl	%r15d, %edx
	callq	pprintd1
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pprintd1                # TAILCALL
.Lfunc_end5:
	.size	pprintd4, .Lfunc_end5-pprintd4
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4609434218613702656     # double 1.5
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pprintg1
	.align	16, 0x90
	.type	pprintg1,@function
pprintg1:                               # @pprintg1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 208
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_15:                               # %cond.true.i
                                        #   in Loop: Header=BB6_1 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%rbx), %al
	movb	%al, 1(%rcx)
	incq	%rbx
.LBB6_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB6_2
# BB#12:                                # %if.then.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB6_3
# BB#13:                                #   in Loop: Header=BB6_1 Depth=1
	incq	%rbx
	movb	$37, %al
.LBB6_14:                               # %if.end.9.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB6_15
# BB#16:                                # %cond.false.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbx
	jmp	.LBB6_1
.LBB6_2:                                # %for.cond.i
                                        #   in Loop: Header=BB6_1 Depth=1
	testb	%al, %al
	jne	.LBB6_14
.LBB6_3:                                # %pprintf_scan.exit
	leaq	16(%rsp), %rbp
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$.L.str.1, %esi
	movb	$1, %al
	movq	%rbp, %rdi
	callq	gs_sprintf
	movsbl	17(%rsp), %r15d
	movl	$.L.str.2, %esi
	movb	$1, %al
	movq	%rbp, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gs_sprintf
	movl	$101, %esi
	movq	%rbp, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB6_5
# BB#4:                                 # %if.then
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	ucomisd	.LCPI6_1(%rip), %xmm0
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %esi
	cmovaq	%rax, %rsi
	leaq	16(%rsp), %rdi
	movb	$1, %al
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gs_sprintf
.LBB6_5:                                # %if.end
	movzbl	%r15b, %eax
	cmpl	$46, %eax
	je	.LBB6_8
# BB#6:                                 # %if.then.14
	leaq	16(%rsp), %rdi
	movl	%r15d, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB6_8
# BB#7:                                 # %if.then.19
	movb	$46, (%rax)
.LBB6_8:                                # %if.end.21
	movb	16(%rsp), %al
	testb	%al, %al
	je	.LBB6_19
# BB#9:                                 # %for.body.i.preheader
	leaq	17(%rsp), %rbp
	.align	16, 0x90
.LBB6_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jae	.LBB6_17
# BB#11:                                # %cond.true.i.9
                                        #   in Loop: Header=BB6_10 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	-1(%rbp), %al
	movb	%al, 1(%rcx)
	jmp	.LBB6_18
	.align	16, 0x90
.LBB6_17:                               # %cond.false.i.11
                                        #   in Loop: Header=BB6_10 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB6_18:                               # %for.inc.i.12
                                        #   in Loop: Header=BB6_10 Depth=1
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB6_10
.LBB6_19:                               # %pputs_short.exit
	addq	$2, %rbx
	jmp	.LBB6_20
	.align	16, 0x90
.LBB6_26:                               # %cond.true.i.22
                                        #   in Loop: Header=BB6_20 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%rbx), %al
	movb	%al, 1(%rcx)
	incq	%rbx
.LBB6_20:                               # %for.cond.i.14
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB6_21
# BB#23:                                # %if.then.i.17
                                        #   in Loop: Header=BB6_20 Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB6_22
# BB#24:                                #   in Loop: Header=BB6_20 Depth=1
	incq	%rbx
	movb	$37, %al
.LBB6_25:                               # %if.end.9.i.20
                                        #   in Loop: Header=BB6_20 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB6_26
# BB#27:                                # %cond.false.i.24
                                        #   in Loop: Header=BB6_20 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbx
	jmp	.LBB6_20
.LBB6_21:                               # %for.cond.i.14
                                        #   in Loop: Header=BB6_20 Depth=1
	testb	%al, %al
	jne	.LBB6_25
.LBB6_22:                               # %pprintf_scan.exit27
	movq	%rbx, %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pprintg1, .Lfunc_end6-pprintg1
	.cfi_endproc

	.globl	pprintg2
	.align	16, 0x90
	.type	pprintg2,@function
pprintg2:                               # @pprintg2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 32
.Ltmp46:
	.cfi_offset %rbx, -16
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	jmp	pprintg1                # TAILCALL
.Lfunc_end7:
	.size	pprintg2, .Lfunc_end7-pprintg2
	.cfi_endproc

	.globl	pprintg3
	.align	16, 0x90
	.type	pprintg3,@function
pprintg3:                               # @pprintg3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -16
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbx
	jmp	pprintg1                # TAILCALL
.Lfunc_end8:
	.size	pprintg3, .Lfunc_end8-pprintg3
	.cfi_endproc

	.globl	pprintg4
	.align	16, 0x90
	.type	pprintg4,@function
pprintg4:                               # @pprintg4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 48
.Ltmp52:
	.cfi_offset %rbx, -16
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbx
	jmp	pprintg1                # TAILCALL
.Lfunc_end9:
	.size	pprintg4, .Lfunc_end9-pprintg4
	.cfi_endproc

	.globl	pprintg6
	.align	16, 0x90
	.type	pprintg6,@function
pprintg6:                               # @pprintg6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -16
	movsd	%xmm5, 40(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbx
	jmp	pprintg1                # TAILCALL
.Lfunc_end10:
	.size	pprintg6, .Lfunc_end10-pprintg6
	.cfi_endproc

	.globl	pprintld1
	.align	16, 0x90
	.type	pprintld1,@function
pprintld1:                              # @pprintld1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 80
.Ltmp61:
	.cfi_offset %rbx, -40
.Ltmp62:
	.cfi_offset %r12, -32
.Ltmp63:
	.cfi_offset %r14, -24
.Ltmp64:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_10:                              # %cond.true.i
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%r12), %al
	movb	%al, 1(%rcx)
	incq	%r12
.LBB11_1:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB11_2
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB11_1 Depth=1
	movzbl	1(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB11_3
# BB#8:                                 #   in Loop: Header=BB11_1 Depth=1
	incq	%r12
	movb	$37, %al
.LBB11_9:                               # %if.end.9.i
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB11_10
# BB#11:                                # %cond.false.i
                                        #   in Loop: Header=BB11_1 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%r12
	jmp	.LBB11_1
.LBB11_2:                               # %for.cond.i
                                        #   in Loop: Header=BB11_1 Depth=1
	testb	%al, %al
	jne	.LBB11_9
.LBB11_3:                               # %pprintf_scan.exit
	leaq	(%rsp), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	gs_sprintf
	movb	(%rsp), %al
	testb	%al, %al
	je	.LBB11_14
# BB#4:                                 # %for.body.i.preheader
	leaq	1(%rsp), %rbx
	.align	16, 0x90
.LBB11_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jae	.LBB11_12
# BB#6:                                 # %cond.true.i.4
                                        #   in Loop: Header=BB11_5 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	-1(%rbx), %al
	movb	%al, 1(%rcx)
	jmp	.LBB11_13
	.align	16, 0x90
.LBB11_12:                              # %cond.false.i.6
                                        #   in Loop: Header=BB11_5 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB11_13:                              # %for.inc.i.7
                                        #   in Loop: Header=BB11_5 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	testb	%al, %al
	jne	.LBB11_5
.LBB11_14:                              # %pputs_short.exit
	addq	$3, %r12
	jmp	.LBB11_15
	.align	16, 0x90
.LBB11_21:                              # %cond.true.i.17
                                        #   in Loop: Header=BB11_15 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%r12), %al
	movb	%al, 1(%rcx)
	incq	%r12
.LBB11_15:                              # %for.cond.i.9
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB11_16
# BB#18:                                # %if.then.i.12
                                        #   in Loop: Header=BB11_15 Depth=1
	movzbl	1(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB11_17
# BB#19:                                #   in Loop: Header=BB11_15 Depth=1
	incq	%r12
	movb	$37, %al
.LBB11_20:                              # %if.end.9.i.15
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB11_21
# BB#22:                                # %cond.false.i.19
                                        #   in Loop: Header=BB11_15 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%r12
	jmp	.LBB11_15
.LBB11_16:                              # %for.cond.i.9
                                        #   in Loop: Header=BB11_15 Depth=1
	testb	%al, %al
	jne	.LBB11_20
.LBB11_17:                              # %pprintf_scan.exit22
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	pprintld1, .Lfunc_end11-pprintld1
	.cfi_endproc

	.globl	pprintld2
	.align	16, 0x90
	.type	pprintld2,@function
pprintld2:                              # @pprintld2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 32
.Ltmp68:
	.cfi_offset %rbx, -24
.Ltmp69:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	callq	pprintld1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pprintld1               # TAILCALL
.Lfunc_end12:
	.size	pprintld2, .Lfunc_end12-pprintld2
	.cfi_endproc

	.globl	pprintld3
	.align	16, 0x90
	.type	pprintld3,@function
pprintld3:                              # @pprintld3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 32
.Ltmp73:
	.cfi_offset %rbx, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdi, %rbx
	callq	pprintld1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	pprintld1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	pprintld1               # TAILCALL
.Lfunc_end13:
	.size	pprintld3, .Lfunc_end13-pprintld3
	.cfi_endproc

	.globl	pprints1
	.align	16, 0x90
	.type	pprints1,@function
pprints1:                               # @pprints1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 32
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
	.cfi_offset %r14, -24
.Ltmp81:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_10:                              # %cond.true.i
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%rbx), %al
	movb	%al, 1(%rcx)
	incq	%rbx
.LBB14_1:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB14_2
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB14_3
# BB#8:                                 #   in Loop: Header=BB14_1 Depth=1
	incq	%rbx
	movb	$37, %al
.LBB14_9:                               # %if.end.9.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB14_10
# BB#11:                                # %cond.false.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbx
	jmp	.LBB14_1
.LBB14_2:                               # %for.cond.i
                                        #   in Loop: Header=BB14_1 Depth=1
	testb	%al, %al
	jne	.LBB14_9
.LBB14_3:                               # %pprintf_scan.exit
	movb	(%r15), %al
	testb	%al, %al
	je	.LBB14_14
# BB#4:                                 # %for.body.i.preheader
	incq	%r15
	.align	16, 0x90
.LBB14_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jae	.LBB14_12
# BB#6:                                 # %cond.true.i.4
                                        #   in Loop: Header=BB14_5 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	-1(%r15), %al
	movb	%al, 1(%rcx)
	jmp	.LBB14_13
	.align	16, 0x90
.LBB14_12:                              # %cond.false.i.6
                                        #   in Loop: Header=BB14_5 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB14_13:                              # %for.inc.i.7
                                        #   in Loop: Header=BB14_5 Depth=1
	movb	(%r15), %al
	incq	%r15
	testb	%al, %al
	jne	.LBB14_5
.LBB14_14:                              # %pputs_short.exit
	addq	$2, %rbx
	jmp	.LBB14_15
	.align	16, 0x90
.LBB14_21:                              # %cond.true.i.17
                                        #   in Loop: Header=BB14_15 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, 120(%r14)
	movb	(%rbx), %al
	movb	%al, 1(%rcx)
	incq	%rbx
.LBB14_15:                              # %for.cond.i.9
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB14_16
# BB#18:                                # %if.then.i.12
                                        #   in Loop: Header=BB14_15 Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$37, %eax
	jne	.LBB14_17
# BB#19:                                #   in Loop: Header=BB14_15 Depth=1
	incq	%rbx
	movb	$37, %al
.LBB14_20:                              # %if.end.9.i.15
                                        #   in Loop: Header=BB14_15 Depth=1
	movq	120(%r14), %rcx
	cmpq	128(%r14), %rcx
	jb	.LBB14_21
# BB#22:                                # %cond.false.i.19
                                        #   in Loop: Header=BB14_15 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbx
	jmp	.LBB14_15
.LBB14_16:                              # %for.cond.i.9
                                        #   in Loop: Header=BB14_15 Depth=1
	testb	%al, %al
	jne	.LBB14_20
.LBB14_17:                              # %pprintf_scan.exit22
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	pprints1, .Lfunc_end14-pprints1
	.cfi_endproc

	.globl	pprints2
	.align	16, 0x90
	.type	pprints2,@function
pprints2:                               # @pprints2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 32
.Ltmp85:
	.cfi_offset %rbx, -24
.Ltmp86:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	callq	pprints1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pprints1                # TAILCALL
.Lfunc_end15:
	.size	pprints2, .Lfunc_end15-pprints2
	.cfi_endproc

	.globl	pprints3
	.align	16, 0x90
	.type	pprints3,@function
pprints3:                               # @pprints3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -32
.Ltmp91:
	.cfi_offset %r14, -24
.Ltmp92:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdi, %rbx
	callq	pprints1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	pprints1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	pprints1                # TAILCALL
.Lfunc_end16:
	.size	pprints3, .Lfunc_end16-pprints3
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%f"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%g"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%1.1f"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%1.8f"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%ld"
	.size	.L.str.5, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
