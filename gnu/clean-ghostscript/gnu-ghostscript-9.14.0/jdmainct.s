	.text
	.file	"jdmainct.bc"
	.globl	jinit_d_main_controller
	.align	16, 0x90
	.type	jinit_d_main_controller,@function
jinit_d_main_controller:                # @jinit_d_main_controller
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movl	%esi, %ebp
	movq	%rdi, %r13
	movq	8(%r13), %rax
	movl	$1, %esi
	movl	$136, %edx
	callq	*(%rax)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rax, 800(%r13)
	movq	$start_pass_main, (%rax)
	testl	%ebp, %ebp
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%r13), %rax
	movl	$3, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB0_2:                                # %if.end
	movq	856(%r13), %rax
	movl	428(%r13), %r15d
	cmpl	$0, 16(%rax)
	je	.LBB0_3
# BB#4:                                 # %if.then.4
	cmpl	$1, %r15d
	jg	.LBB0_6
# BB#5:                                 # %if.then.5
	movq	(%r13), %rax
	movl	$48, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	movl	428(%r13), %r15d
.LBB0_6:                                # %if.end.10
	movq	800(%r13), %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	8(%r13), %rax
	movslq	56(%r13), %rdx
	shlq	$4, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*(%rax)
	movq	%rax, 104(%rbp)
	movslq	56(%r13), %rcx
	testq	%rcx, %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 112(%rbp)
	jle	.LBB0_9
# BB#7:                                 # %for.body.lr.ph.i
	movq	304(%r13), %rbx
	addl	$4, %r15d
	addq	$40, %rbx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	imull	-28(%rbx), %eax
	cltd
	idivl	428(%r13)
	movl	%eax, %ebp
	movq	8(%r13), %rax
	movl	%ebp, %r12d
	imull	%r15d, %r12d
	leal	(%r12,%r12), %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*(%rax)
	movslq	%ebp, %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	(%rax,%rcx,8), %rax
	movq	104(%rdx), %rcx
	movq	%rax, (%rcx,%r14,8)
	movslq	%r12d, %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	112(%rdx), %rcx
	movq	%rax, (%rcx,%r14,8)
	incq	%r14
	movslq	56(%r13), %rcx
	addq	$96, %rbx
	cmpq	%rcx, %r14
	jl	.LBB0_8
.LBB0_9:                                # %alloc_funny_pointers.exit
	movl	428(%r13), %r15d
	leal	2(%r15), %r14d
	jmp	.LBB0_10
.LBB0_3:                                # %if.end.if.end.13_crit_edge
	movl	56(%r13), %ecx
	movl	%r15d, %r14d
.LBB0_10:                               # %if.end.13
	testl	%ecx, %ecx
	jle	.LBB0_14
# BB#11:                                # %for.body.lr.ph
	movq	304(%r13), %rbx
	addq	$40, %rbx
	movl	$1, %r12d
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_13:                               # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	428(%r13), %r15d
	incq	%r12
	addq	$96, %rbx
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %ecx
	movl	(%rbx), %eax
	imull	-28(%rbx), %eax
	cltd
	idivl	%r15d
	movq	8(%r13), %rbp
	imull	-12(%rbx), %ecx
	imull	%r14d, %eax
	movl	$1, %esi
	movq	%r13, %rdi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	*16(%rbp)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx,%r12,8)
	movslq	56(%r13), %rax
	cmpq	%rax, %r12
	jl	.LBB0_13
.LBB0_14:                               # %for.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jinit_d_main_controller, .Lfunc_end0-jinit_d_main_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_main,@function
start_pass_main:                        # @start_pass_main
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
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	testl	%esi, %esi
	je	.LBB1_1
# BB#21:                                # %sw.default
	movq	(%rdi), %rax
	movl	$3, 40(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.LBB1_1:                                # %sw.bb
	movq	800(%rdi), %r14
	movq	856(%rdi), %rax
	cmpl	$0, 16(%rax)
	je	.LBB1_22
# BB#2:                                 # %if.then
	movq	$process_data_context_main, 8(%r14)
	movslq	56(%rdi), %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB1_20
# BB#3:                                 # %for.body.lr.ph.i
	movl	428(%rdi), %r11d
	movq	304(%rdi), %r13
	leal	2(%r11), %eax
	movl	%eax, -12(%rsp)         # 4-byte Spill
	leal	-2(%r11), %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB1_4:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_18 Depth 2
	movl	40(%r13), %eax
	imull	12(%r13), %eax
	cltd
	idivl	%r11d
	movq	104(%r14), %rcx
	movq	112(%r14), %rdx
	movq	(%rcx,%r10,8), %r9
	movq	(%rdx,%r10,8), %r12
	movq	16(%r14,%r10,8), %r15
	movl	%eax, %ebp
	imull	-12(%rsp), %ebp         # 4-byte Folded Reload
	testl	%ebp, %ebp
	jle	.LBB1_10
# BB#5:                                 # %for.body.12.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	testb	$1, %bpl
	movl	$0, %esi
	je	.LBB1_7
# BB#6:                                 # %for.body.12.i.prol
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%r15), %rcx
	movq	%rcx, (%r12)
	movq	%rcx, (%r9)
	movl	$1, %esi
.LBB1_7:                                # %for.body.12.i.preheader.split
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$1, %ebp
	je	.LBB1_10
# BB#8:                                 # %for.body.12.i.preheader.split.split
                                        #   in Loop: Header=BB1_4 Depth=1
	subl	%esi, %ebp
	leaq	8(%r9,%rsi,8), %rcx
	leaq	8(%r12,%rsi,8), %rbx
	leaq	8(%r15,%rsi,8), %rdi
	.align	16, 0x90
.LBB1_9:                                # %for.body.12.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdi), %rdx
	movq	%rdx, -8(%rbx)
	movq	%rdx, -8(%rcx)
	movq	(%rdi), %rdx
	movq	%rdx, (%rbx)
	movq	%rdx, (%rcx)
	addq	$16, %rcx
	addq	$16, %rbx
	addq	$16, %rdi
	addl	$-2, %ebp
	jne	.LBB1_9
.LBB1_10:                               # %for.cond.19.preheader.i
                                        #   in Loop: Header=BB1_4 Depth=1
	testl	%eax, %eax
	jle	.LBB1_19
# BB#11:                                # %for.body.22.lr.ph.i
                                        #   in Loop: Header=BB1_4 Depth=1
	leal	(%rax,%rax), %ecx
	movslq	%ecx, %r8
	movl	-16(%rsp), %edx         # 4-byte Reload
	imull	%eax, %edx
	movslq	%edx, %rdx
	leaq	(%r15,%rdx,8), %rdi
	leaq	(%r12,%rdx,8), %rbx
	movl	%r11d, %edx
	imull	%eax, %edx
	movslq	%edx, %rdx
	leaq	(%r12,%rdx,8), %rbp
	leaq	(%r15,%rdx,8), %rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_12:                               # %for.body.22.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rbx,%rdx,8)
	movq	(%rdi,%rdx,8), %rcx
	movq	%rcx, (%rbp,%rdx,8)
	incq	%rdx
	cmpq	%r8, %rdx
	jl	.LBB1_12
# BB#13:                                # %for.body.45.lr.ph.i
                                        #   in Loop: Header=BB1_4 Depth=1
	leal	-1(%rax), %ecx
	testb	$3, %al
	movl	$0, %edi
	je	.LBB1_16
# BB#14:                                # %for.body.45.i.prol.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%r9, %rbx
	subq	%rdx, %rbx
	movl	%eax, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB1_15:                               # %for.body.45.i.prol
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9), %rdx
	movq	%rdx, (%rbx,%rdi,8)
	incq	%rdi
	cmpl	%edi, %ebp
	jne	.LBB1_15
.LBB1_16:                               # %for.body.45.lr.ph.i.split
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$3, %ecx
	jb	.LBB1_19
# BB#17:                                # %for.body.45.lr.ph.i.split.split
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	%eax, %rcx
	subl	%edi, %eax
	subq	%rcx, %rdi
	leaq	24(%r9,%rdi,8), %rcx
	.align	16, 0x90
.LBB1_18:                               # %for.body.45.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9), %rdx
	movq	%rdx, -24(%rcx)
	movq	(%r9), %rdx
	movq	%rdx, -16(%rcx)
	movq	(%r9), %rdx
	movq	%rdx, -8(%rcx)
	movq	(%r9), %rdx
	movq	%rdx, (%rcx)
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB1_18
.LBB1_19:                               # %for.inc.53.i
                                        #   in Loop: Header=BB1_4 Depth=1
	incq	%r10
	addq	$96, %r13
	cmpq	-8(%rsp), %r10          # 8-byte Folded Reload
	jne	.LBB1_4
.LBB1_20:                               # %make_funny_pointers.exit
	movq	$0, 120(%r14)
	movl	$0, 132(%r14)
	jmp	.LBB1_23
.LBB1_22:                               # %if.else
	movq	$process_data_simple_main, 8(%r14)
.LBB1_23:                               # %sw.epilog
	movq	$0, 96(%r14)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	start_pass_main, .Lfunc_end1-start_pass_main
	.cfi_endproc

	.align	16, 0x90
	.type	process_data_context_main,@function
process_data_context_main:              # @process_data_context_main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 96
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	800(%r15), %r12
	cmpl	$0, 96(%r12)
	jne	.LBB2_3
# BB#1:                                 # %if.then
	movq	808(%r15), %rax
	movslq	120(%r12), %rcx
	movq	104(%r12,%rcx,8), %rsi
	movq	%r15, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB2_30
# BB#2:                                 # %if.end
	movl	$1, 96(%r12)
	incl	132(%r12)
.LBB2_3:                                # %if.end.4
	movl	124(%r12), %eax
	cmpl	$2, %eax
	je	.LBB2_8
# BB#4:                                 # %if.end.4
	cmpl	$1, %eax
	jne	.LBB2_5
# BB#7:                                 # %if.end.4.sw.bb.25_crit_edge
	leaq	100(%r12), %rdx
	jmp	.LBB2_20
.LBB2_8:                                # %sw.bb
	movq	816(%r15), %rax
	movslq	120(%r12), %rcx
	movq	104(%r12,%rcx,8), %rsi
	leaq	100(%r12), %rbp
	movl	128(%r12), %ecx
	movl	%r13d, (%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	*8(%rax)
	movl	100(%r12), %eax
	cmpl	128(%r12), %eax
	jb	.LBB2_30
# BB#9:                                 # %if.end.12
	movl	$0, 124(%r12)
	cmpl	%r13d, (%r14)
	jae	.LBB2_30
	jmp	.LBB2_10
.LBB2_5:                                # %if.end.4
	testl	%eax, %eax
	jne	.LBB2_30
# BB#6:                                 # %if.end.4.sw.bb.17_crit_edge
	leaq	100(%r12), %rbp
.LBB2_10:                               # %sw.bb.17
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	$0, 100(%r12)
	movl	428(%r15), %r8d
	leal	-1(%r8), %eax
	movl	%eax, 128(%r12)
	movl	132(%r12), %eax
	cmpl	432(%r15), %eax
	jne	.LBB2_19
# BB#11:                                # %if.then.22
	movslq	56(%r15), %r9
	testq	%r9, %r9
	jle	.LBB2_19
# BB#12:                                # %for.body.lr.ph.i
	movq	800(%r15), %r10
	movq	304(%r15), %rbx
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB2_13:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	movl	40(%rbx), %ecx
	movl	48(%rbx), %edi
	imull	12(%rbx), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r8d
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	%edi, %eax
	divl	%ecx
	testl	%edx, %edx
	cmovnel	%edx, %ecx
	testl	%r11d, %r11d
	jne	.LBB2_15
# BB#14:                                # %if.then.3.i
                                        #   in Loop: Header=BB2_13 Depth=1
	leal	-1(%rcx), %eax
	cltd
	idivl	%esi
	incl	%eax
	movl	%eax, 128(%r10)
.LBB2_15:                               # %if.end.5.i
                                        #   in Loop: Header=BB2_13 Depth=1
	testl	%esi, %esi
	jle	.LBB2_18
# BB#16:                                # %for.body.11.lr.ph.i
                                        #   in Loop: Header=BB2_13 Depth=1
	movslq	120(%r10), %rax
	movq	104(%r10,%rax,8), %rax
	movq	(%rax,%r11,8), %rax
	addl	%esi, %esi
	leal	-1(%rcx), %edx
	movslq	%edx, %rdx
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,8), %rcx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB2_17:                               # %for.body.11.i
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx,8), %rbp
	movq	%rbp, (%rcx,%rdi,8)
	incq	%rdi
	cmpq	%rsi, %rdi
	jl	.LBB2_17
.LBB2_18:                               # %for.inc.18.i
                                        #   in Loop: Header=BB2_13 Depth=1
	incq	%r11
	addq	$96, %rbx
	cmpq	%r9, %r11
	jne	.LBB2_13
.LBB2_19:                               # %if.end.23
	movl	$1, 124(%r12)
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
.LBB2_20:                               # %sw.bb.25
	movq	816(%r15), %rax
	movslq	120(%r12), %rcx
	movq	104(%r12,%rcx,8), %rsi
	movl	128(%r12), %ecx
	movl	%r13d, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	*8(%rax)
	movl	100(%r12), %eax
	cmpl	128(%r12), %eax
	jb	.LBB2_30
# BB#21:                                # %if.end.38
	cmpl	$1, 132(%r12)
	movq	%r12, 8(%rsp)           # 8-byte Spill
	jne	.LBB2_22
# BB#23:                                # %if.then.41
	movl	428(%r15), %r12d
	movslq	56(%r15), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	jle	.LBB2_29
# BB#24:                                # %for.body.lr.ph.i.53
	movq	800(%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	304(%r15), %r15
	leal	1(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leal	2(%r12), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_25:                               # %for.body.i.58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_27 Depth 2
	movl	40(%r15), %eax
	imull	12(%r15), %eax
	cltd
	idivl	%r12d
	testl	%eax, %eax
	jle	.LBB2_28
# BB#26:                                # %for.body.9.lr.ph.i
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	104(%rdx), %rcx
	movq	112(%rdx), %rdx
	movq	(%rcx,%r13,8), %r9
	movq	(%rdx,%r13,8), %rsi
	movl	16(%rsp), %ecx          # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %rdx
	leaq	(%rsi,%rdx,8), %r14
	leaq	(%r9,%rdx,8), %rdi
	movl	20(%rsp), %edx          # 4-byte Reload
	imull	%eax, %edx
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,8), %rbp
	leaq	(%r9,%rdx,8), %rbx
	movl	%eax, %r8d
	movslq	%eax, %r10
	shlq	$3, %r10
	movq	%rsi, %rax
	subq	%r10, %rax
	movq	%r9, %rdx
	subq	%r10, %rdx
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB2_27:                               # %for.body.9.i
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%r10,8), %r11
	movq	%r11, (%rdx,%r10,8)
	movq	(%rbp,%r10,8), %rcx
	movq	%rcx, (%rax,%r10,8)
	movq	(%r9,%r10,8), %rcx
	movq	%rcx, (%rdi,%r10,8)
	movq	(%rsi,%r10,8), %rcx
	movq	%rcx, (%r14,%r10,8)
	incq	%r10
	cmpl	%r10d, %r8d
	jne	.LBB2_27
.LBB2_28:                               # %for.inc.38.i
                                        #   in Loop: Header=BB2_25 Depth=1
	incq	%r13
	addq	$96, %r15
	cmpq	32(%rsp), %r13          # 8-byte Folded Reload
	jne	.LBB2_25
	jmp	.LBB2_29
.LBB2_22:                               # %if.end.38.if.end.42_crit_edge
	movl	428(%r15), %r12d
.LBB2_29:                               # %if.end.42
	movq	8(%rsp), %rcx           # 8-byte Reload
	xorb	$1, 120(%rcx)
	movl	$0, 96(%rcx)
	leal	1(%r12), %eax
	movl	%eax, 100(%rcx)
	addl	$2, %r12d
	movl	%r12d, 128(%rcx)
	movl	$2, 124(%rcx)
.LBB2_30:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	process_data_context_main, .Lfunc_end2-process_data_context_main
	.cfi_endproc

	.align	16, 0x90
	.type	process_data_simple_main,@function
process_data_simple_main:               # @process_data_simple_main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 64
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %rax
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	800(%rbx), %r14
	cmpl	$0, 96(%r14)
	je	.LBB3_2
# BB#1:                                 # %entry.if.end.4_crit_edge
	leaq	16(%r14), %r13
	jmp	.LBB3_4
.LBB3_2:                                # %if.then
	movq	%rax, %rbp
	movq	808(%rbx), %rax
	leaq	16(%r14), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB3_6
# BB#3:                                 # %if.end
	movl	$1, 96(%r14)
	movq	%rbp, %rax
.LBB3_4:                                # %if.end.4
	movl	428(%rbx), %ebp
	movq	816(%rbx), %r10
	leaq	100(%r14), %rdx
	movl	%r12d, (%rsp)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%ebp, %ecx
	movq	%r15, %r8
	movq	%rax, %r9
	callq	*8(%r10)
	cmpl	%ebp, 100(%r14)
	jb	.LBB3_6
# BB#5:                                 # %if.then.8
	movq	$0, 96(%r14)
.LBB3_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	process_data_simple_main, .Lfunc_end3-process_data_simple_main
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
