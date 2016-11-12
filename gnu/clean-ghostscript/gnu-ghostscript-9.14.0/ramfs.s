	.text
	.file	"ramfs.bc"
	.globl	ramfs_new
	.align	16, 0x90
	.type	ramfs_new,@function
ramfs_new:                              # @ramfs_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	$st_ramfs, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movl	%ebp, 24(%rax)
	movl	$0, 28(%rax)
	movq	%rbx, 16(%rax)
	movq	%rax, %rcx
.LBB0_2:                                # %cleanup
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ramfs_new, .Lfunc_end0-ramfs_new
	.cfi_endproc

	.globl	ramfs_destroy
	.align	16, 0x90
	.type	ramfs_destroy,@function
ramfs_destroy:                          # @ramfs_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r13, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r14, %r14
	je	.LBB1_8
# BB#1:                                 # %if.end
	movq	(%r14), %r12
	testq	%r12, %r12
	movq	24(%r15), %rax
	je	.LBB1_7
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	(%r12), %rsi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*%rax
	movq	8(%r12), %r13
	decl	8(%r13)
	jne	.LBB1_6
# BB#3:                                 # %for.cond.preheader.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r13), %rax
	xorl	%ebx, %ebx
	cmpl	$0, 16(%r13)
	jle	.LBB1_5
	.align	16, 0x90
.LBB1_4:                                # %for.body.i
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rdi
	movq	24(%r13), %rax
	movq	(%rax,%rbx,8), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	incq	%rbx
	movslq	16(%r13), %rcx
	movq	(%r13), %rax
	cmpq	%rcx, %rbx
	jl	.LBB1_4
.LBB1_5:                                # %for.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	%ebx, 24(%rax)
	movq	16(%rax), %rdi
	movq	24(%r13), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	(%r13), %rax
	movq	16(%rax), %rdi
	movl	$.L.str.21, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB1_6:                                # %unlink_node.exit
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	16(%r12), %rbx
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*24(%r15)
	movq	24(%r15), %rax
	testq	%rbx, %rbx
	movq	%rbx, %r12
	jne	.LBB1_2
.LBB1_7:                                # %while.end
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB1_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	ramfs_destroy, .Lfunc_end1-ramfs_destroy
	.cfi_endproc

	.globl	ramfs_error
	.align	16, 0x90
	.type	ramfs_error,@function
ramfs_error:                            # @ramfs_error
	.cfi_startproc
# BB#0:                                 # %entry
	movl	28(%rdi), %eax
	retq
.Lfunc_end2:
	.size	ramfs_error, .Lfunc_end2-ramfs_error
	.cfi_endproc

	.globl	ramfs_open
	.align	16, 0x90
	.type	ramfs_open,@function
ramfs_open:                             # @ramfs_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 80
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	%ecx, %ebp
	orl	$4, %ebp
	testb	$18, %cl
	cmovel	%ecx, %ebp
	movq	(%r14), %rbx
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_3:                                # %if.end.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rbx), %rbx
.LBB3_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB3_4
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_3
# BB#11:                                # %if.end.46.loopexit
	leaq	16(%r14), %r13
	jmp	.LBB3_12
.LBB3_4:                                # %if.then.2
	testb	$2, %bpl
	jne	.LBB3_6
# BB#5:                                 # %if.then.5
	movl	$2, 28(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB3_16
.LBB3_6:                                # %if.end.6
	movq	16(%r14), %rax
	movq	(%rax), %rdi
	movl	$st_ramdirent, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movq	16(%r14), %rax
	movq	(%rax), %rdi
	movl	$st_ramfile, %esi
	movl	$.L.str.5, %edx
	callq	*72(%rdi)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	16(%r14), %rax
	movq	(%rax), %r13
	movq	64(%r13), %r12
	movq	%r15, %rdi
	callq	strlen
	leal	1(%rax), %esi
	movl	$.L.str.6, %edx
	movq	%r13, %rdi
	callq	*%r12
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%rax, %r13
	testq	%rbx, %rbx
	je	.LBB3_9
# BB#7:                                 # %if.end.6
	testq	%r12, %r12
	je	.LBB3_9
# BB#8:                                 # %if.end.6
	testq	%r13, %r13
	je	.LBB3_9
# BB#10:                                # %cleanup
	movq	%r13, %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	16(%r14), %r13
	movq	%r15, %rsi
	callq	strcpy
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, (%rbx)
	movl	$1, %eax
	movd	%eax, %xmm0
	movups	%xmm0, 8(%r12)
	movq	$0, 24(%r12)
	movq	%r14, (%r12)
	movq	%r12, 8(%rbx)
	movq	(%r14), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r14)
.LBB3_12:                               # %if.end.46
	movq	8(%rbx), %r15
	incl	8(%r15)
	movq	(%r13), %rax
	movq	(%rax), %rdi
	movl	$st_ramhandle, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_13
# BB#14:                                # %if.end.59
	movq	%r15, (%rbx)
	movl	$0, 12(%rbx)
	movl	%ebp, 16(%rbx)
	testb	$8, %bpl
	je	.LBB3_16
# BB#15:                                # %if.then.64
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	resize
	jmp	.LBB3_16
.LBB3_9:                                # %if.then.28
	movq	16(%r14), %rdi
	movl	$.L.str.7, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	16(%r14), %rdi
	movl	$.L.str.8, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	16(%r14), %rdi
	movl	$.L.str.9, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB3_13:                               # %if.then.57
	movl	$6, 28(%r14)
	xorl	%ebx, %ebx
.LBB3_16:                               # %cleanup.67
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ramfs_open, .Lfunc_end3-ramfs_open
	.cfi_endproc

	.align	16, 0x90
	.type	resize,@function
resize:                                 # @resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r13, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movl	%esi, %r14d
	movq	%rdi, %r13
	leal	1023(%r14), %eax
	sarl	$31, %eax
	shrl	$22, %eax
	leal	1023(%r14,%rax), %r12d
	sarl	$10, %r12d
	movl	16(%r13), %edx
	movl	%r12d, %esi
	subl	%edx, %esi
	jle	.LBB4_13
# BB#1:                                 # %if.then
	movq	(%r13), %rcx
	movl	$-7, %eax
	cmpl	24(%rcx), %esi
	jg	.LBB4_18
# BB#2:                                 # %if.end
	movl	20(%r13), %eax
	cmpl	%r12d, %eax
	jge	.LBB4_9
# BB#3:                                 # %if.then.6
	cmpl	$129, %eax
	jl	.LBB4_5
# BB#4:                                 # %if.then.9
	leal	127(%r12), %eax
	sarl	$31, %eax
	shrl	$25, %eax
	leal	127(%r12,%rax), %ebx
	andl	$-128, %ebx
	jmp	.LBB4_7
.LBB4_13:                               # %if.else.65
	jge	.LBB4_17
# BB#14:                                # %while.body.79.lr.ph
	movslq	%edx, %rax
	subl	%r12d, %edx
	movq	(%r13), %rcx
	addl	%edx, 24(%rcx)
	movq	16(%rcx), %rdi
	movq	24(%rdi), %rcx
	leaq	-1(%rax), %rdx
	movl	%edx, 16(%r13)
	movq	24(%r13), %rdx
	movq	-8(%rdx,%rax,8), %rsi
	jmp	.LBB4_16
	.align	16, 0x90
.LBB4_15:                               # %while.body.79.while.body.79_crit_edge
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	(%r13), %rcx
	movq	16(%rcx), %rdi
	movq	24(%rdi), %rcx
	decl	%eax
	movl	%eax, 16(%r13)
	cltq
	movq	24(%r13), %rdx
	movq	(%rdx,%rax,8), %rsi
.LBB4_16:                               # %while.body.79.while.body.79_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.19, %edx
	callq	*%rcx
	movl	16(%r13), %eax
	cmpl	%r12d, %eax
	jg	.LBB4_15
	jmp	.LBB4_17
.LBB4_5:                                # %if.else
	testl	%eax, %eax
	movl	$1, %edx
	cmovnel	%eax, %edx
	.align	16, 0x90
.LBB4_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebx
	leal	(%rbx,%rbx), %edx
	cmpl	%r12d, %ebx
	jl	.LBB4_6
.LBB4_7:                                # %if.end.17
	movq	16(%rcx), %rax
	movq	(%rax), %rdi
	leal	(,%rbx,8), %esi
	movl	$.L.str.19, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB4_18
# BB#8:                                 # %if.end.26
	movq	24(%r13), %rsi
	movslq	20(%r13), %rdx
	movq	%r15, %rdi
	callq	memcpy
	movq	(%r13), %rax
	movq	24(%r13), %rsi
	movq	16(%rax), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movq	%r15, 24(%r13)
	movl	%ebx, 20(%r13)
	movl	16(%r13), %edx
.LBB4_9:                                # %while.cond.39.preheader
	cmpl	%r12d, %edx
	jge	.LBB4_17
# BB#10:                                # %while.body.43.lr.ph
	movq	(%r13), %rax
	.align	16, 0x90
.LBB4_11:                               # %while.body.43
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.19, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movslq	16(%r13), %rdx
	movq	24(%r13), %rax
	movq	%rcx, (%rax,%rdx,8)
	movl	$-6, %eax
	testq	%rcx, %rcx
	je	.LBB4_18
# BB#12:                                # %cleanup.61.thread
                                        #   in Loop: Header=BB4_11 Depth=1
	incl	%edx
	movl	%edx, 16(%r13)
	movq	(%r13), %rax
	decl	24(%rax)
	cmpl	%r12d, %edx
	jl	.LBB4_11
.LBB4_17:                               # %if.end.93
	movl	%r14d, 12(%r13)
	xorl	%eax, %eax
.LBB4_18:                               # %cleanup.95
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	resize, .Lfunc_end4-resize
	.cfi_endproc

	.globl	ramfs_blocksize
	.align	16, 0x90
	.type	ramfs_blocksize,@function
ramfs_blocksize:                        # @ramfs_blocksize
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1024, %eax             # imm = 0x400
	retq
.Lfunc_end5:
	.size	ramfs_blocksize, .Lfunc_end5-ramfs_blocksize
	.cfi_endproc

	.globl	ramfs_blocksfree
	.align	16, 0x90
	.type	ramfs_blocksfree,@function
ramfs_blocksfree:                       # @ramfs_blocksfree
	.cfi_startproc
# BB#0:                                 # %entry
	movl	24(%rdi), %eax
	retq
.Lfunc_end6:
	.size	ramfs_blocksfree, .Lfunc_end6-ramfs_blocksfree
	.cfi_endproc

	.globl	ramfile_error
	.align	16, 0x90
	.type	ramfile_error,@function
ramfile_error:                          # @ramfile_error
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %eax
	retq
.Lfunc_end7:
	.size	ramfile_error, .Lfunc_end7-ramfile_error
	.cfi_endproc

	.globl	ramfs_unlink
	.align	16, 0x90
	.type	ramfs_unlink,@function
ramfs_unlink:                           # @ramfs_unlink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -48
.Ltmp44:
	.cfi_offset %r12, -40
.Ltmp45:
	.cfi_offset %r13, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r14), %r12
	testq	%r12, %r12
	je	.LBB8_4
# BB#1:
	movq	%r14, %rbx
	.align	16, 0x90
.LBB8_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_5
# BB#3:                                 # %if.end.3
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%r12, %rbx
	movq	16(%r12), %r12
	addq	$16, %rbx
	testq	%r12, %r12
	jne	.LBB8_2
.LBB8_4:                                # %if.then
	movl	$2, 28(%r14)
	movl	$-1, %eax
	jmp	.LBB8_15
.LBB8_5:                                # %while.end
	movq	8(%r12), %r15
	decl	8(%r15)
	jne	.LBB8_9
# BB#6:                                 # %for.cond.preheader.i
	movq	(%r15), %rax
	xorl	%r13d, %r13d
	cmpl	$0, 16(%r15)
	jle	.LBB8_8
	.align	16, 0x90
.LBB8_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	movq	24(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	incq	%r13
	movslq	16(%r15), %rcx
	movq	(%r15), %rax
	cmpq	%rcx, %r13
	jl	.LBB8_7
.LBB8_8:                                # %for.end.i
	addl	%r13d, 24(%rax)
	movq	16(%rax), %rdi
	movq	24(%r15), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	(%r15), %rax
	movq	16(%rax), %rdi
	movl	$.L.str.21, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB8_9:                                # %unlink_node.exit
	movq	16(%r14), %rdi
	movq	(%r12), %rsi
	movl	$.L.str.10, %edx
	callq	*24(%rdi)
	movq	16(%r12), %rax
	movq	%rax, (%rbx)
	movq	8(%r14), %rax
	jmp	.LBB8_10
	.align	16, 0x90
.LBB8_13:                               # %if.end.14
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	16(%rax), %rax
.LBB8_10:                               # %unlink_node.exit
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB8_14
# BB#11:                                # %while.body.9
                                        #   in Loop: Header=BB8_10 Depth=1
	cmpq	%r12, 8(%rax)
	jne	.LBB8_13
# BB#12:                                # %if.then.11
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	16(%r12), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB8_13
.LBB8_14:                               # %while.end.16
	movq	16(%r14), %rdi
	movl	$.L.str.10, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB8_15:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	ramfs_unlink, .Lfunc_end8-ramfs_unlink
	.cfi_endproc

	.globl	ramfs_rename
	.align	16, 0x90
	.type	ramfs_rename,@function
ramfs_rename:                           # @ramfs_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	(%r12), %rbx
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_3:                                # %if.end.i
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	16(%rbx), %rbx
.LBB9_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB9_4
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB9_3
# BB#5:                                 # %if.end
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	strcmp
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB9_9
# BB#6:                                 # %if.end.3
	movq	16(%r12), %rax
	movq	(%rax), %r15
	movq	64(%r15), %r13
	movq	%r14, %rdi
	callq	strlen
	leal	1(%rax), %esi
	movl	$.L.str.11, %edx
	movq	%r15, %rdi
	callq	*%r13
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB9_7
# BB#8:                                 # %if.end.11
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	ramfs_unlink
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	16(%r12), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	%r15, (%rbx)
	jmp	.LBB9_9
.LBB9_4:                                # %if.then
	movl	$2, 28(%r12)
	movl	$-1, %ebp
.LBB9_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_7:                                # %if.then.9
	movl	$6, 28(%r12)
	movl	$-1, %ebp
	jmp	.LBB9_9
.Lfunc_end9:
	.size	ramfs_rename, .Lfunc_end9-ramfs_rename
	.cfi_endproc

	.globl	ramfs_enum_new
	.align	16, 0x90
	.type	ramfs_enum_new,@function
ramfs_enum_new:                         # @ramfs_enum_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	16(%rbx), %rax
	movq	(%rax), %rdi
	movl	$st_ramfs_enum, %esi
	movl	$.L.str.12, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB10_1
# BB#2:                                 # %if.end
	movups	(%rbx), %xmm0
	movups	%xmm0, 8(%rax)
	movq	%rbx, (%rax)
	movq	%rax, 8(%rbx)
	popq	%rbx
	retq
.LBB10_1:                               # %if.then
	movl	$6, 28(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end10:
	.size	ramfs_enum_new, .Lfunc_end10-ramfs_enum_new
	.cfi_endproc

	.globl	ramfs_enum_next
	.align	16, 0x90
	.type	ramfs_enum_next,@function
ramfs_enum_next:                        # @ramfs_enum_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	(%rcx), %rax
	movq	16(%rcx), %rcx
	movq	%rcx, 8(%rdi)
.LBB11_2:                               # %if.end
	retq
.Lfunc_end11:
	.size	ramfs_enum_next, .Lfunc_end11-ramfs_enum_next
	.cfi_endproc

	.globl	ramfs_enum_end
	.align	16, 0x90
	.type	ramfs_enum_end,@function
ramfs_enum_end:                         # @ramfs_enum_end
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	(%rax), %rcx
	leaq	8(%rcx), %rdi
	leaq	16(%rax), %rdx
	.align	16, 0x90
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rsi
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB12_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	%rax, %rdi
	movq	%rdx, %rdi
	jne	.LBB12_1
# BB#3:                                 # %if.then
	movq	16(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	(%rax), %rcx
.LBB12_4:                               # %while.end
	movq	16(%rcx), %rdi
	movq	24(%rdi), %rcx
	movl	$.L.str.13, %edx
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end12:
	.size	ramfs_enum_end, .Lfunc_end12-ramfs_enum_end
	.cfi_endproc

	.globl	ramfile_read
	.align	16, 0x90
	.type	ramfile_read,@function
ramfile_read:                           # @ramfile_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 64
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r14), %r13
	movl	12(%r13), %r12d
	movl	12(%r14), %ecx
	subl	%ecx, %r12d
	cmpl	%edx, %r12d
	cmovgl	%edx, %r12d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB13_4
# BB#1:                                 # %while.body.lr.ph
	movl	%r12d, %ebp
	.align	16, 0x90
.LBB13_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$22, %eax
	leal	(%rax,%rcx), %eax
	movl	%eax, %edx
	andl	$-1024, %edx            # imm = 0xFFFFFFFFFFFFFC00
	sarl	$10, %eax
	cltq
	movq	24(%r13), %rsi
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	(%rsi,%rax,8), %rsi
	addq	%rcx, %rsi
	movl	$1024, %eax             # imm = 0x400
	subl	%ecx, %eax
	cmpl	%ebp, %eax
	cmovgl	%ebp, %eax
	movslq	%eax, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movl	12(%r14), %ecx
	addl	%ebx, %ecx
	movl	%ecx, 12(%r14)
	addq	%rbx, %r15
	subl	%ebx, %ebp
	jne	.LBB13_2
# BB#3:
	movl	%r12d, %eax
.LBB13_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ramfile_read, .Lfunc_end13-ramfile_read
	.cfi_endproc

	.globl	ramfile_write
	.align	16, 0x90
	.type	ramfile_write,@function
ramfile_write:                          # @ramfile_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp82:
	.cfi_def_cfa_offset 64
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	(%r13), %r12
	testb	$16, 16(%r13)
	movl	12(%r12), %ebp
	jne	.LBB14_1
# BB#2:                                 # %if.end.7
	movl	12(%r13), %esi
	cmpl	%esi, %ebp
	jge	.LBB14_3
# BB#4:                                 # %if.then.10
	movq	%r12, %rdi
	callq	resize
	testl	%eax, %eax
	jne	.LBB14_13
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_5:                               # %while.body.i
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	%ebp, %ecx
	sarl	$31, %ecx
	shrl	$22, %ecx
	leal	(%rcx,%rbp), %ecx
	movl	%ecx, %edx
	andl	$-1024, %edx            # imm = 0xFFFFFFFFFFFFFC00
	sarl	$10, %ecx
	movslq	%ecx, %rcx
	movq	24(%r12), %rsi
	movl	%ebp, %edi
	subl	%edx, %edi
	movslq	%edi, %rdx
	movq	(%rsi,%rcx,8), %rdi
	addq	%rdx, %rdi
	movl	$1024, %ecx             # imm = 0x400
	subl	%edx, %ecx
	subl	%ebp, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	leal	(%rbp,%rax), %ebp
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB14_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%r12), %eax
	cmpl	%ebp, %eax
	jg	.LBB14_5
	jmp	.LBB14_7
.LBB14_1:                               # %if.end.7.thread
	movl	%ebp, 12(%r13)
	movl	%ebp, %eax
	jmp	.LBB14_7
.LBB14_3:
	movl	%ebp, %eax
.LBB14_7:                               # %if.end.15
	movl	12(%r13), %esi
	addl	%r14d, %esi
	cmpl	%esi, %eax
	jge	.LBB14_8
# BB#12:                                # %if.then.19
	movq	%r12, %rdi
	callq	resize
	testl	%eax, %eax
	je	.LBB14_8
.LBB14_13:                              # %ramfile_truncate.exit
	negl	%eax
	movl	%eax, 8(%r13)
	movl	$-1, %eax
	jmp	.LBB14_14
.LBB14_8:                               # %while.cond.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	je	.LBB14_14
# BB#9:                                 # %while.body.lr.ph
	movl	12(%r13), %eax
	movl	%r14d, %ebx
	.align	16, 0x90
.LBB14_10:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$22, %ecx
	leal	(%rcx,%rax), %ecx
	movl	%ecx, %edx
	andl	$-1024, %edx            # imm = 0xFFFFFFFFFFFFFC00
	sarl	$10, %ecx
	movslq	%ecx, %rcx
	movq	24(%r12), %rsi
	subl	%edx, %eax
	cltq
	movq	(%rsi,%rcx,8), %rdi
	addq	%rax, %rdi
	movl	$1024, %ecx             # imm = 0x400
	subl	%eax, %ecx
	cmpl	%ebx, %ecx
	cmovgl	%ebx, %ecx
	movslq	%ecx, %rbp
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movl	12(%r13), %eax
	addl	%ebp, %eax
	movl	%eax, 12(%r13)
	subl	%ebp, %ebx
	jne	.LBB14_10
# BB#11:
	movl	%r14d, %eax
.LBB14_14:                              # %cleanup.44
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ramfile_write, .Lfunc_end14-ramfile_write
	.cfi_endproc

	.globl	ramfile_seek
	.align	16, 0x90
	.type	ramfile_seek,@function
ramfile_seek:                           # @ramfile_seek
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, %edx
	jne	.LBB15_1
# BB#3:                                 # %if.then.2
	movq	(%rdi), %rax
	addl	12(%rax), %esi
	jmp	.LBB15_4
.LBB15_1:                               # %entry
	cmpl	$1, %edx
	jne	.LBB15_4
# BB#2:                                 # %if.then
	addl	%esi, 12(%rdi)
	xorl	%eax, %eax
	retq
.LBB15_4:                               # %if.else.5
	movl	%esi, 12(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	ramfile_seek, .Lfunc_end15-ramfile_seek
	.cfi_endproc

	.globl	ramfile_size
	.align	16, 0x90
	.type	ramfile_size,@function
ramfile_size:                           # @ramfile_size
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	12(%rax), %eax
	retq
.Lfunc_end16:
	.size	ramfile_size, .Lfunc_end16-ramfile_size
	.cfi_endproc

	.globl	ramfile_close
	.align	16, 0x90
	.type	ramfile_close,@function
ramfile_close:                          # @ramfile_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 32
.Ltmp92:
	.cfi_offset %rbx, -32
.Ltmp93:
	.cfi_offset %r14, -24
.Ltmp94:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%r14), %r15
	decl	8(%r15)
	jne	.LBB17_4
# BB#1:                                 # %for.cond.preheader.i
	movq	(%r15), %rax
	xorl	%ebx, %ebx
	cmpl	$0, 16(%r15)
	jle	.LBB17_3
	.align	16, 0x90
.LBB17_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	movq	24(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	incq	%rbx
	movslq	16(%r15), %rcx
	movq	(%r15), %rax
	cmpq	%rcx, %rbx
	jl	.LBB17_2
.LBB17_3:                               # %for.end.i
	addl	%ebx, 24(%rax)
	movq	16(%rax), %rdi
	movq	24(%r15), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	(%r15), %rax
	movq	16(%rax), %rdi
	movl	$.L.str.21, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	(%r14), %r15
.LBB17_4:                               # %unlink_node.exit
	movq	(%r15), %rax
	movq	16(%rax), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.14, %edx
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end17:
	.size	ramfile_close, .Lfunc_end17-ramfile_close
	.cfi_endproc

	.globl	ramfile_tell
	.align	16, 0x90
	.type	ramfile_tell,@function
ramfile_tell:                           # @ramfile_tell
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rdi), %eax
	retq
.Lfunc_end18:
	.size	ramfile_tell, .Lfunc_end18-ramfile_tell
	.cfi_endproc

	.globl	ramfile_eof
	.align	16, 0x90
	.type	ramfile_eof,@function
ramfile_eof:                            # @ramfile_eof
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rdi), %eax
	movq	(%rdi), %rcx
	cmpl	12(%rcx), %eax
	setge	%al
	movzbl	%al, %eax
	retq
.Lfunc_end19:
	.size	ramfile_eof, .Lfunc_end19-ramfile_eof
	.cfi_endproc

	.type	st_ramfs,@object        # @st_ramfs
	.section	.rodata,"a",@progbits
	.align	8
st_ramfs:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	_ramfs_reloc_ptrs
	.size	st_ramfs, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ramfs_new"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ramfs_destroy, filename"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ramfs_destroy, entry"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ramfs_destroy"
	.size	.L.str.3, 14

	.type	st_ramdirent,@object    # @st_ramdirent
	.section	.rodata,"a",@progbits
	.align	8
st_ramdirent:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	_ramdirent_reloc_ptrs
	.size	st_ramdirent, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"new ram directory entry"
	.size	.L.str.4, 24

	.type	st_ramfile,@object      # @st_ramfile
	.section	.rodata,"a",@progbits
	.align	8
st_ramfile:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	_ramfile_reloc_ptrs
	.size	st_ramfile, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"new ram file"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ramfs filename"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"error, cleanup directory entry"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"error, cleanup ram file"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"error, cleanup ram filename"
	.size	.L.str.9, 28

	.type	st_ramhandle,@object    # @st_ramhandle
	.section	.rodata,"a",@progbits
	.align	8
st_ramhandle:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	_ramhandle_reloc_ptrs
	.size	st_ramhandle, 64

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"unlink"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ramfs rename"
	.size	.L.str.11, 13

	.type	st_ramfs_enum,@object   # @st_ramfs_enum
	.section	.rodata,"a",@progbits
	.align	8
st_ramfs_enum:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	_ramfs_enum_reloc_ptrs
	.size	st_ramfs_enum, 64

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"new ramfs enumerator"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"free ramfs enumerator"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ramfs close"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gsram_ramfs"
	.size	.L.str.15, 12

	.type	_ramfs_reloc_ptrs,@object # @_ramfs_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
_ramfs_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	_ramfs_enum_ptrs
	.size	_ramfs_reloc_ptrs, 24

	.type	_ramfs_enum_ptrs,@object # @_ramfs_enum_ptrs
	.align	2
_ramfs_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	_ramfs_enum_ptrs, 12

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"gsram_ramdirent"
	.size	.L.str.16, 16

	.type	_ramdirent_reloc_ptrs,@object # @_ramdirent_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
_ramdirent_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	_ramdirent_enum_ptrs
	.size	_ramdirent_reloc_ptrs, 24

	.type	_ramdirent_enum_ptrs,@object # @_ramdirent_enum_ptrs
	.align	2
_ramdirent_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	_ramdirent_enum_ptrs, 12

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"gsram_ramfile"
	.size	.L.str.17, 14

	.type	_ramfile_reloc_ptrs,@object # @_ramfile_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
_ramfile_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	_ramfile_enum_ptrs
	.size	_ramfile_reloc_ptrs, 24

	.type	_ramfile_enum_ptrs,@object # @_ramfile_enum_ptrs
	.align	2
_ramfile_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	_ramfile_enum_ptrs, 8

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"gsram_ramhandle"
	.size	.L.str.18, 16

	.type	_ramhandle_reloc_ptrs,@object # @_ramhandle_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
_ramhandle_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	_ramhandle_enum_ptrs
	.size	_ramhandle_reloc_ptrs, 24

	.type	_ramhandle_enum_ptrs,@object # @_ramhandle_enum_ptrs
	.align	2
_ramhandle_enum_ptrs:
	.zero	4
	.size	_ramhandle_enum_ptrs, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"ramfs resize"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ramfs resize, free buffer"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"unlink node"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gsram_ramfs_enum"
	.size	.L.str.22, 17

	.type	_ramfs_enum_reloc_ptrs,@object # @_ramfs_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
_ramfs_enum_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	_ramfs_enum_enum_ptrs
	.size	_ramfs_enum_reloc_ptrs, 24

	.type	_ramfs_enum_enum_ptrs,@object # @_ramfs_enum_enum_ptrs
	.align	2
_ramfs_enum_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	_ramfs_enum_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
