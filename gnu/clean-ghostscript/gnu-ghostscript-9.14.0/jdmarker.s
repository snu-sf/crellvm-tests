	.text
	.file	"jdmarker.bc"
	.globl	jpeg_resync_to_restart
	.align	16, 0x90
	.type	jpeg_resync_to_restart,@function
jpeg_resync_to_restart:                 # @jpeg_resync_to_restart
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
	movl	%esi, %r12d
	movq	%rdi, %r14
	movl	788(%r14), %ebp
	movq	(%r14), %rax
	movl	$124, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	%r12d, 48(%rax)
	movl	$-1, %esi
	callq	*8(%rax)
	leal	1(%r12), %edx
	andl	$7, %edx
	orl	$208, %edx
	movl	%edx, 4(%rsp)           # 4-byte Spill
	leal	2(%r12), %edi
	andl	$7, %edi
	orl	$208, %edi
	movl	%edi, (%rsp)            # 4-byte Spill
	leal	7(%r12), %r13d
	andl	$7, %r13d
	orl	$208, %r13d
	addl	$6, %r12d
	andl	$7, %r12d
	orl	$208, %r12d
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_8:                                # %if.end.48
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	788(%r14), %ebp
	movl	4(%rsp), %edx           # 4-byte Reload
	movl	(%rsp), %edi            # 4-byte Reload
.LBB0_1:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movl	$3, %r8d
	movl	$2, %r9d
	cmpl	$192, %ebp
	setl	%al
	movl	%ebp, %ecx
	andl	$-8, %ecx
	cmpl	%edx, %ebp
	sete	%dl
	cmpl	%r12d, %ebp
	sete	%sil
	cmpl	$208, %ecx
	setne	%bl
	orb	%al, %bl
	cmpl	$191, %ebp
	setg	%al
	movzbl	%al, %eax
	orl	$2, %eax
	movb	%bl, %cl
	orb	%dl, %cl
	cmovel	%r8d, %eax
	movzbl	%sil, %r15d
	incl	%r15d
	cmpl	%r13d, %ebp
	cmovel	%r9d, %r15d
	cmpl	%edi, %ebp
	cmovel	%eax, %r15d
	orb	%dl, %bl
	cmovnel	%eax, %r15d
.LBB0_2:                                # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rax
	movl	$99, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	%r15d, 48(%rax)
	movl	$4, %esi
	movq	%r14, %rdi
	callq	*8(%rax)
	movl	$1, %eax
	cmpl	$3, %r15d
	je	.LBB0_6
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=2
	cmpl	$2, %r15d
	je	.LBB0_7
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=2
	cmpl	$1, %r15d
	jne	.LBB0_2
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_7:                                # %sw.bb.46
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, %rdi
	callq	next_marker
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB0_8
	jmp	.LBB0_6
.LBB0_5:                                # %sw.bb
	movl	$0, 788(%r14)
.LBB0_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jpeg_resync_to_restart, .Lfunc_end0-jpeg_resync_to_restart
	.cfi_endproc

	.align	16, 0x90
	.type	next_marker,@function
next_marker:                            # @next_marker
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
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	40(%r14), %r15
	movq	(%r15), %r12
	movq	8(%r15), %rbx
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_12:                               # %do.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, (%r15)
	movq	%rbx, 8(%r15)
.LBB1_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	testq	%rbx, %rbx
	jne	.LBB1_4
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	callq	*24(%r15)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_16
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%r15), %r12
	movq	8(%r15), %rbx
.LBB1_4:                                # %while.cond.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	decq	%rbx
	movzbl	(%r12), %eax
	incq	%r12
	cmpl	$255, %eax
	je	.LBB1_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	832(%r14), %rax
	incl	36(%rax)
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_6:                                # %do.body.29
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB1_9
# BB#7:                                 # %if.then.32
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	%r14, %rdi
	callq	*24(%r15)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_16
# BB#8:                                 # %if.end.37
                                        #   in Loop: Header=BB1_6 Depth=2
	movq	(%r15), %r12
	movq	8(%r15), %rbx
.LBB1_9:                                # %if.end.40
                                        #   in Loop: Header=BB1_6 Depth=2
	decq	%rbx
	movzbl	(%r12), %ebp
	incq	%r12
	cmpl	$255, %ebp
	je	.LBB1_6
# BB#10:                                # %do.end.49
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	832(%r14), %rcx
	movl	36(%rcx), %eax
	testb	%bpl, %bpl
	jne	.LBB1_13
# BB#11:                                # %if.end.53
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	$2, %eax
	movl	%eax, 36(%rcx)
	jmp	.LBB1_12
.LBB1_13:                               # %for.end
	testl	%eax, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.62
	movq	(%r14), %rcx
	movl	$119, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	%ebp, 48(%rcx)
	movl	$-1, %esi
	movq	%r14, %rdi
	callq	*8(%rcx)
	movq	832(%r14), %rax
	movl	$0, 36(%rax)
.LBB1_15:                               # %if.end.73
	movl	%ebp, 788(%r14)
	movq	%r12, (%r15)
	movq	%rbx, 8(%r15)
	movl	$1, %eax
.LBB1_16:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	next_marker, .Lfunc_end1-next_marker
	.cfi_endproc

	.globl	jinit_marker_reader
	.align	16, 0x90
	.type	jinit_marker_reader,@function
jinit_marker_reader:                    # @jinit_marker_reader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	xorl	%esi, %esi
	movl	$264, %edx              # imm = 0x108
	callq	*(%rax)
	movq	%rax, 832(%rbx)
	movq	$reset_marker_reader, (%rax)
	movl	$read_restart_marker, %ecx
	movd	%rcx, %xmm0
	movl	$read_markers, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 8(%rax)
	movq	$skip_variable, 40(%rax)
	movl	$skip_variable, %ecx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm1       # xmm1 = xmm0[0,1,0,1]
	movdqu	%xmm1, 56(%rax)
	xorps	%xmm2, %xmm2
	movups	%xmm2, 176(%rax)
	movl	$0, 192(%rax)
	movdqu	%xmm1, 72(%rax)
	movl	$0, 196(%rax)
	movq	$skip_variable, 88(%rax)
	movl	$0, 200(%rax)
	movdqu	%xmm1, 96(%rax)
	movdqu	%xmm1, 112(%rax)
	movups	%xmm2, 204(%rax)
	movdqu	%xmm1, 128(%rax)
	movdqu	%xmm1, 144(%rax)
	movups	%xmm2, 220(%rax)
	movl	$0, 236(%rax)
	movl	$0, 240(%rax)
	movq	$get_interesting_appn, 48(%rax)
	movl	$get_interesting_appn, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 160(%rax)
	movq	832(%rbx), %rax
	movq	$0, 304(%rbx)
	movl	$0, 172(%rbx)
	movl	$0, 788(%rbx)
	movl	$0, 24(%rax)
	movl	$0, 28(%rax)
	movl	$0, 36(%rax)
	movq	$0, 248(%rax)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	jinit_marker_reader, .Lfunc_end2-jinit_marker_reader
	.cfi_endproc

	.align	16, 0x90
	.type	reset_marker_reader,@function
reset_marker_reader:                    # @reset_marker_reader
	.cfi_startproc
# BB#0:                                 # %entry
	movq	832(%rdi), %rax
	movq	$0, 304(%rdi)
	movl	$0, 172(%rdi)
	movl	$0, 788(%rdi)
	movl	$0, 24(%rax)
	movl	$0, 28(%rax)
	movl	$0, 36(%rax)
	movq	$0, 248(%rax)
	retq
.Lfunc_end3:
	.size	reset_marker_reader, .Lfunc_end3-reset_marker_reader
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.text
	.align	16, 0x90
	.type	read_markers,@function
read_markers:                           # @read_markers
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
	subq	$344, %rsp              # imm = 0x158
.Ltmp31:
	.cfi_def_cfa_offset 400
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
	movq	%rdi, %r15
	movl	788(%r15), %ebx
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_342:                              # %sw.epilog
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, 788(%r15)
	xorl	%ebx, %ebx
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_162 Depth 2
                                        #       Child Loop BB4_191 Depth 3
                                        #       Child Loop BB4_206 Depth 3
                                        #     Child Loop BB4_102 Depth 2
                                        #     Child Loop BB4_127 Depth 2
                                        #       Child Loop BB4_131 Depth 3
                                        #       Child Loop BB4_139 Depth 3
	testl	%ebx, %ebx
	jne	.LBB4_16
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	832(%r15), %rax
	cmpl	$0, 24(%rax)
	je	.LBB4_3
# BB#14:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	next_marker
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#15:                                # %if.else.if.end.9thread-pre-split_crit_edge
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	788(%r15), %ebx
	jmp	.LBB4_16
.LBB4_3:                                # %if.then.1
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%r15), %r14
	movq	8(%r14), %r13
	testq	%r13, %r13
	jne	.LBB4_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%r14), %r13
.LBB4_6:                                # %if.end.6.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbp
	decq	%r13
	movzbl	(%rbp), %r12d
	je	.LBB4_8
# BB#7:                                 #   in Loop: Header=BB4_1 Depth=1
	incq	%rbp
	jmp	.LBB4_10
.LBB4_8:                                # %if.then.10.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#9:                                 # %if.end.15.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbp
	movq	8(%r14), %r13
.LBB4_10:                               # %if.end.18.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%r13
	movb	(%rbp), %al
	incq	%rbp
	movzbl	%al, %ebx
	cmpl	$255, %r12d
	jne	.LBB4_12
# BB#11:                                # %if.end.18.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	%al, %eax
	cmpl	$216, %eax
	je	.LBB4_13
.LBB4_12:                               # %if.then.28.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$55, 40(%rax)
	movl	%r12d, 44(%rax)
	movl	%ebx, 48(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_13:                               # %first_marker.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%ebx, 788(%r15)
	movq	%rbp, (%r14)
	movq	%r13, 8(%r14)
	.align	16, 0x90
.LBB4_16:                               # %if.end.9
                                        #   in Loop: Header=BB4_1 Depth=1
	leal	-192(%rbx), %eax
	cmpl	$62, %eax
	jbe	.LBB4_19
# BB#17:                                # %if.end.9
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$1, %ebx
	je	.LBB4_18
.LBB4_340:                              # %sw.default
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$70, 40(%rax)
.LBB4_341:                              # %sw.epilog
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%ebx, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	jmp	.LBB4_342
	.align	16, 0x90
.LBB4_19:                               # %if.end.9
                                        #   in Loop: Header=BB4_1 Depth=1
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_335:                              # %sw.bb.80
                                        #   in Loop: Header=BB4_1 Depth=1
	addl	$-224, %ebx
	movslq	%ebx, %rax
	movq	832(%r15), %rcx
	movq	%r15, %rdi
	callq	*48(%rcx,%rax,8)
.LBB4_338:                              # %sw.bb.104
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB4_339
.LBB4_32:                               # %sw.bb.40
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$63, 40(%rax)
	jmp	.LBB4_341
.LBB4_18:                               # %sw.bb.94
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$94, 40(%rax)
	movl	%ebx, 44(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	jmp	.LBB4_342
.LBB4_23:                               # %sw.bb.15
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r13d, %r13d
	movl	$1, %esi
	jmp	.LBB4_24
.LBB4_27:                               # %sw.bb.20
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r13d, %r13d
	xorl	%esi, %esi
.LBB4_24:                               # %sw.bb.15
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%edx, %edx
	jmp	.LBB4_25
.LBB4_28:                               # %sw.bb.25
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$1, %edx
.LBB4_25:                               # %sw.bb.15
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB4_26
.LBB4_119:                              # %sw.bb.60
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%r15), %r14
	movq	8(%r14), %r12
	testq	%r12, %r12
	jne	.LBB4_122
# BB#120:                               # %if.then.i.121
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	testl	%eax, %eax
	je	.LBB4_346
# BB#121:                               # %if.end.i.122
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%r14), %r12
.LBB4_122:                              # %if.end.6.i.130
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbx
	movzbl	(%rbx), %ebp
	decq	%r12
	je	.LBB4_124
# BB#123:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%rbx
	jmp	.LBB4_126
.LBB4_29:                               # %sw.bb.30
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	jmp	.LBB4_26
.LBB4_31:                               # %sw.bb.35
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$1, %ecx
.LBB4_26:                               # %sw.bb.15
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	get_sof
.LBB4_339:                              # %sw.bb.104
                                        #   in Loop: Header=BB4_1 Depth=1
	testl	%eax, %eax
	jne	.LBB4_342
	jmp	.LBB4_344
.LBB4_93:                               # %sw.bb.55
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%r15), %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	8(%rbx), %r13
	testq	%r13, %r13
	jne	.LBB4_96
# BB#94:                                # %if.then.i.79
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#95:                                # %if.end.i.80
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%rbx), %r13
.LBB4_96:                               # %if.end.6.i.88
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%rbx), %rbp
	movzbl	(%rbp), %r14d
	decq	%r13
	je	.LBB4_98
# BB#97:                                #   in Loop: Header=BB4_1 Depth=1
	incq	%rbp
	jmp	.LBB4_100
.LBB4_20:                               # %sw.bb
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$104, 40(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	832(%r15), %rax
	cmpl	$0, 24(%rax)
	je	.LBB4_22
# BB#21:                                # %if.then.i.47
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$64, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	movq	832(%r15), %rax
.LBB4_22:                               # %get_soi.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	$0, 324(%r15)
	movb	$1, 340(%r15)
	movb	$5, 356(%r15)
	movb	$0, 325(%r15)
	movb	$1, 341(%r15)
	movb	$5, 357(%r15)
	movb	$0, 326(%r15)
	movb	$1, 342(%r15)
	movb	$5, 358(%r15)
	movb	$0, 327(%r15)
	movb	$1, 343(%r15)
	movb	$5, 359(%r15)
	movb	$0, 328(%r15)
	movb	$1, 344(%r15)
	movb	$5, 360(%r15)
	movb	$0, 329(%r15)
	movb	$1, 345(%r15)
	movb	$5, 361(%r15)
	movb	$0, 330(%r15)
	movb	$1, 346(%r15)
	movb	$5, 362(%r15)
	movb	$0, 331(%r15)
	movb	$1, 347(%r15)
	movb	$5, 363(%r15)
	movb	$0, 332(%r15)
	movb	$1, 348(%r15)
	movb	$5, 364(%r15)
	movb	$0, 333(%r15)
	movb	$1, 349(%r15)
	movb	$5, 365(%r15)
	movb	$0, 334(%r15)
	movb	$1, 350(%r15)
	movb	$5, 366(%r15)
	movb	$0, 335(%r15)
	movb	$1, 351(%r15)
	movb	$5, 367(%r15)
	movb	$0, 336(%r15)
	movb	$1, 352(%r15)
	movb	$5, 368(%r15)
	movb	$0, 337(%r15)
	movb	$1, 353(%r15)
	movb	$5, 369(%r15)
	movb	$0, 338(%r15)
	movb	$1, 354(%r15)
	movb	$5, 370(%r15)
	movb	$0, 339(%r15)
	movb	$1, 355(%r15)
	movb	$5, 371(%r15)
	movl	$0, 372(%r15)
	movl	$0, 60(%r15)
	movl	$0, 396(%r15)
	movl	$0, 400(%r15)
	movl	$0, 376(%r15)
	movb	$1, 380(%r15)
	movb	$1, 381(%r15)
	movb	$0, 382(%r15)
	movw	$1, 384(%r15)
	movw	$1, 386(%r15)
	movl	$0, 388(%r15)
	movb	$0, 392(%r15)
	movl	$1, 24(%rax)
	jmp	.LBB4_342
.LBB4_154:                              # %sw.bb.65
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%r15), %rbx
	movq	8(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.LBB4_157
# BB#155:                               # %if.then.i.189
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#156:                               # %if.end.i.190
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%rbx), %rbp
.LBB4_157:                              # %if.end.11.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%rbx), %r13
	movzbl	(%r13), %r14d
	decq	%rbp
	je	.LBB4_159
# BB#158:                               #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	incq	%r13
	jmp	.LBB4_161
.LBB4_337:                              # %sw.bb.104
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	skip_variable
	jmp	.LBB4_338
.LBB4_212:                              # %sw.bb.70
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%r15), %r14
	movq	8(%r14), %r13
	testq	%r13, %r13
	jne	.LBB4_215
# BB#213:                               # %if.then.i.235
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#214:                               # %if.end.i.236
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	8(%r14), %r13
.LBB4_215:                              # %if.end.9.i.243
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbx
	movzbl	(%rbx), %r12d
	decq	%r13
	je	.LBB4_217
# BB#216:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%rbx
	jmp	.LBB4_219
.LBB4_230:                              # %sw.bb.75
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%r15), %r12
	movq	(%r12), %r14
	movq	8(%r12), %rbx
	movq	832(%r15), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB4_232
# BB#231:                               # %if.then.i.280
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rdi
	movl	$60, 40(%rdi)
	addq	$44, %rdi
	movl	$.L.str.1, %esi
	movl	$80, %edx
	callq	strncpy
	movq	(%r15), %rax
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_232:                              # %if.end.i.283
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$3, 56(%r15)
	jl	.LBB4_333
# BB#233:                               # %do.body.i.285
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_236
# BB#234:                               # %if.then.12.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#235:                               # %if.end.16.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_236:                              # %if.end.19.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_238
# BB#237:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_240
.LBB4_336:                              # %sw.bb.88
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	832(%r15), %rax
	movq	%r15, %rdi
	callq	*40(%rax)
	jmp	.LBB4_338
.LBB4_124:                              # %if.then.10.i.134
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	testl	%eax, %eax
	je	.LBB4_346
# BB#125:                               # %if.end.15.i.135
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbx
	movq	8(%r14), %r12
.LBB4_126:                              # %if.end.18.i.143
                                        #   in Loop: Header=BB4_1 Depth=1
	shlq	$8, %rbp
	decq	%r12
	movzbl	(%rbx), %eax
	incq	%rbx
	orq	%rbp, %rax
	movq	%rax, %rbp
	addq	$-2, %rbp
	cmpq	$17, %rbp
	jl	.LBB4_151
.LBB4_127:                              # %do.body.24.i.148
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_131 Depth 3
                                        #       Child Loop BB4_139 Depth 3
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	jne	.LBB4_130
# BB#128:                               # %if.then.27.i.151
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	%r15, %rdi
	callq	*24(%r14)
	testl	%eax, %eax
	je	.LBB4_346
# BB#129:                               # %if.end.32.i.152
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	(%r14), %rbx
	movq	8(%r14), %r12
.LBB4_130:                              # %if.end.35.i.159
                                        #   in Loop: Header=BB4_127 Depth=2
	movzbl	(%rbx), %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	(%r15), %rax
	movl	$82, 40(%rax)
	movl	%ecx, 44(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movb	$0, 320(%rsp)
	incq	%rbx
	decq	%r12
	xorl	%r13d, %r13d
	movl	$1, %ebp
	.align	16, 0x90
.LBB4_131:                              # %do.body.47.i
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r12, %r12
	jne	.LBB4_134
# BB#132:                               # %if.then.50.i
                                        #   in Loop: Header=BB4_131 Depth=3
	movq	%r15, %rdi
	callq	*24(%r14)
	testl	%eax, %eax
	je	.LBB4_346
# BB#133:                               # %if.end.55.i
                                        #   in Loop: Header=BB4_131 Depth=3
	movq	(%r14), %rbx
	movq	8(%r14), %r12
.LBB4_134:                              # %if.end.58.i
                                        #   in Loop: Header=BB4_131 Depth=3
	movzbl	(%rbx), %eax
	movb	%al, 320(%rsp,%rbp)
	addl	%eax, %r13d
	incq	%rbp
	incq	%rbx
	decq	%r12
	cmpq	$17, %rbp
	jl	.LBB4_131
# BB#135:                               # %for.end.i.170
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	56(%rsp), %rbp          # 8-byte Reload
	addq	$-17, %rbp
	movq	(%r15), %rax
	movzbl	321(%rsp), %ecx
	movl	%ecx, 44(%rax)
	movzbl	322(%rsp), %ecx
	movl	%ecx, 48(%rax)
	movzbl	323(%rsp), %ecx
	movl	%ecx, 52(%rax)
	movzbl	324(%rsp), %ecx
	movl	%ecx, 56(%rax)
	movzbl	325(%rsp), %ecx
	movl	%ecx, 60(%rax)
	movzbl	326(%rsp), %ecx
	movl	%ecx, 64(%rax)
	movzbl	327(%rsp), %ecx
	movl	%ecx, 68(%rax)
	movzbl	328(%rsp), %ecx
	movl	%ecx, 72(%rax)
	movl	$88, 40(%rax)
	movl	$2, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	(%r15), %rax
	movzbl	329(%rsp), %ecx
	movl	%ecx, 44(%rax)
	movzbl	330(%rsp), %ecx
	movl	%ecx, 48(%rax)
	movzbl	331(%rsp), %ecx
	movl	%ecx, 52(%rax)
	movzbl	332(%rsp), %ecx
	movl	%ecx, 56(%rax)
	movzbl	333(%rsp), %ecx
	movl	%ecx, 60(%rax)
	movzbl	334(%rsp), %ecx
	movl	%ecx, 64(%rax)
	movzbl	335(%rsp), %ecx
	movl	%ecx, 68(%rax)
	movzbl	336(%rsp), %ecx
	movl	%ecx, 72(%rax)
	movl	$88, 40(%rax)
	movl	$2, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	cmpl	$256, %r13d             # imm = 0x100
	movslq	%r13d, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jg	.LBB4_137
# BB#136:                               # %for.end.i.170
                                        #   in Loop: Header=BB4_127 Depth=2
	cmpq	48(%rsp), %rbp          # 8-byte Folded Reload
	jge	.LBB4_138
.LBB4_137:                              # %if.then.144.i
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	(%r15), %rax
	movl	$9, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_138:                              # %if.end.148.i
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	leaq	64(%rsp), %rdi
	callq	memset
	testl	%r13d, %r13d
	movl	$0, %ebp
	movq	48(%rsp), %r13          # 8-byte Reload
	jle	.LBB4_143
	.align	16, 0x90
.LBB4_139:                              # %do.body.155.i
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r12, %r12
	jne	.LBB4_142
# BB#140:                               # %if.then.158.i
                                        #   in Loop: Header=BB4_139 Depth=3
	movq	%r15, %rdi
	callq	*24(%r14)
	testl	%eax, %eax
	je	.LBB4_346
# BB#141:                               # %if.end.163.i
                                        #   in Loop: Header=BB4_139 Depth=3
	movq	(%r14), %rbx
	movq	8(%r14), %r12
.LBB4_142:                              # %if.end.166.i
                                        #   in Loop: Header=BB4_139 Depth=3
	decq	%r12
	movb	(%rbx), %al
	incq	%rbx
	movb	%al, 64(%rsp,%rbp)
	incq	%rbp
	cmpq	%r13, %rbp
	jl	.LBB4_139
.LBB4_143:                              # %for.end.175.i
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	40(%rsp), %rcx          # 8-byte Reload
	testb	$16, %cl
	movq	56(%rsp), %rbp          # 8-byte Reload
	jne	.LBB4_144
# BB#145:                               # %if.else.i.175
                                        #   in Loop: Header=BB4_127 Depth=2
	leaq	232(%r15,%rcx,8), %r13
	jmp	.LBB4_146
.LBB4_144:                              # %if.then.179.i
                                        #   in Loop: Header=BB4_127 Depth=2
	leaq	136(%r15,%rcx,8), %r13
	leaq	-16(%rcx), %rcx
.LBB4_146:                              # %if.end.185.i.176
                                        #   in Loop: Header=BB4_127 Depth=2
	cmpl	$4, %ecx
	jb	.LBB4_148
# BB#147:                               # %if.then.191.i
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	(%r15), %rax
	movl	$31, 40(%rax)
	movl	%ecx, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_148:                              # %if.end.200.i
                                        #   in Loop: Header=BB4_127 Depth=2
	subq	48(%rsp), %rbp          # 8-byte Folded Reload
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	jne	.LBB4_150
# BB#149:                               # %if.then.203.i
                                        #   in Loop: Header=BB4_127 Depth=2
	movq	%r15, %rdi
	callq	jpeg_alloc_huff_table
	movq	%rax, %rdi
	movq	%rdi, (%r13)
.LBB4_150:                              # %if.end.205.i.178
                                        #   in Loop: Header=BB4_127 Depth=2
	movl	$17, %edx
	leaq	320(%rsp), %rsi
	callq	memcpy
	movq	(%r13), %rdi
	addq	$17, %rdi
	movl	$256, %edx              # imm = 0x100
	leaq	64(%rsp), %rsi
	callq	memcpy
	cmpq	$16, %rbp
	jg	.LBB4_127
.LBB4_151:                              # %while.end.i.182
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbp, %rbp
	je	.LBB4_153
# BB#152:                               # %if.then.216.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$12, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_153:                              # %get_dht.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, (%r14)
	movq	%r12, 8(%r14)
	jmp	.LBB4_342
.LBB4_98:                               # %if.then.10.i.92
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#99:                                # %if.end.15.i.93
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%rbx), %rbp
	movq	8(%rbx), %r13
.LBB4_100:                              # %if.end.18.i.100
                                        #   in Loop: Header=BB4_1 Depth=1
	shlq	$8, %r14
	decq	%r13
	movzbl	(%rbp), %eax
	incq	%rbp
	orq	%r14, %rax
	cmpq	$3, %rax
	jb	.LBB4_101
	.align	16, 0x90
.LBB4_102:                              # %do.body.24.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r13, %r13
	jne	.LBB4_105
# BB#103:                               # %if.then.27.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#104:                               # %if.end.32.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	(%rbx), %rbp
	movq	8(%rbx), %r13
	movq	%r14, %rax
.LBB4_105:                              # %if.end.35.i.104
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	%rax, 56(%rsp)          # 8-byte Spill
	decq	%r13
	movzbl	(%rbp), %r14d
	je	.LBB4_107
# BB#106:                               #   in Loop: Header=BB4_102 Depth=2
	incq	%rbp
	jmp	.LBB4_109
	.align	16, 0x90
.LBB4_107:                              # %if.then.44.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	%r15, %rdi
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#108:                               # %if.end.49.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	(%rbx), %rbp
	movq	8(%rbx), %r13
.LBB4_109:                              # %if.end.52.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movb	(%rbp), %bl
	movzbl	%bl, %r12d
	movq	(%r15), %rax
	movl	$81, 40(%rax)
	movl	%r14d, 44(%rax)
	movl	%r12d, 48(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	cmpl	$32, %r14d
	jb	.LBB4_111
# BB#110:                               # %if.end.77.thread.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	(%r15), %rax
	movl	$29, 40(%rax)
	movl	%r14d, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	movb	%bl, 340(%r14,%r15)
	jmp	.LBB4_114
	.align	16, 0x90
.LBB4_111:                              # %if.end.77.i.112
                                        #   in Loop: Header=BB4_102 Depth=2
	cmpl	$16, %r14d
	jb	.LBB4_113
# BB#112:                               # %if.then.80.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movb	%bl, 340(%r14,%r15)
	jmp	.LBB4_114
	.align	16, 0x90
.LBB4_113:                              # %if.else.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movb	%bl, %al
	andb	$15, %al
	movb	%al, 324(%r15,%r14)
	shrb	$4, %bl
	movb	%bl, 340(%r15,%r14)
	movzbl	%bl, %ecx
	movzbl	%al, %eax
	cmpl	%ecx, %eax
	jbe	.LBB4_114
# BB#345:                               # %if.then.100.i
                                        #   in Loop: Header=BB4_102 Depth=2
	movq	(%r15), %rax
	movl	$30, 40(%rax)
	movl	%r12d, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB4_114:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB4_102 Depth=2
	decq	%r13
	incq	%rbp
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	-2(%rcx), %rax
	cmpq	$2, %rax
	movq	48(%rsp), %rbx          # 8-byte Reload
	jg	.LBB4_102
# BB#115:                               #   in Loop: Header=BB4_1 Depth=1
	addq	$-4, %rcx
	movq	%rcx, %rax
	jmp	.LBB4_116
.LBB4_101:                              #   in Loop: Header=BB4_1 Depth=1
	addq	$-2, %rax
.LBB4_116:                              # %while.end.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rax, %rax
	je	.LBB4_118
# BB#117:                               # %if.then.113.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$12, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_118:                              # %get_dac.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbp, (%rbx)
	movq	%r13, 8(%rbx)
	jmp	.LBB4_342
.LBB4_159:                              # %if.then.15.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#160:                               # %if.end.20.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%rbx), %r13
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	8(%rbx), %rbp
.LBB4_161:                              # %if.end.23.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shlq	$8, %r14
	decq	%rbp
	movzbl	(%r13), %eax
	incq	%r13
	orq	%r14, %rax
	cmpq	$3, %rax
	leaq	-2(%rax), %r14
	jb	.LBB4_209
.LBB4_162:                              # %while.body.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_191 Depth 3
                                        #       Child Loop BB4_206 Depth 3
	testq	%rbp, %rbp
	jne	.LBB4_165
# BB#163:                               # %if.then.33.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%r15, %rdi
	movq	40(%rsp), %rbx          # 8-byte Reload
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#164:                               # %if.end.38.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	(%rbx), %r13
	movq	8(%rbx), %rbp
.LBB4_165:                              # %if.end.41.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movzbl	(%r13), %ebx
	movl	%ebx, %ecx
	shrl	$4, %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	andl	$15, %ebx
	movq	(%r15), %rax
	movl	$83, 40(%rax)
	movl	%ebx, 44(%rax)
	movl	%ecx, 48(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	cmpl	$4, %ebx
	jb	.LBB4_167
# BB#166:                               # %if.then.56.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	(%r15), %rax
	movl	$32, 40(%rax)
	movl	%ebx, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_167:                              # %if.end.64.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movl	%ebx, %ebx
	movq	200(%r15,%rbx,8), %r12
	testq	%r12, %r12
	jne	.LBB4_169
# BB#168:                               # %if.then.68.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%r15, %rdi
	callq	jpeg_alloc_quant_table
	movq	%rax, %r12
	movq	%r12, 200(%r15,%rbx,8)
.LBB4_169:                              # %if.end.73.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%r12, 32(%rsp)          # 8-byte Spill
	leaq	-1(%r14), %rax
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	je	.LBB4_172
# BB#170:                               # %if.then.78.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$128, %r14
	jg	.LBB4_188
# BB#171:                               # %vector.body
                                        #   in Loop: Header=BB4_162 Depth=2
	movdqa	.LCPI4_0(%rip), %xmm0   # xmm0 = [1,1,1,1,1,1,1,1]
	movdqu	%xmm0, (%r12)
	movdqu	%xmm0, 16(%r12)
	movdqu	%xmm0, 32(%r12)
	movdqu	%xmm0, 48(%r12)
	movdqu	%xmm0, 64(%r12)
	movdqu	%xmm0, 80(%r12)
	movdqu	%xmm0, 96(%r12)
	movdqu	%xmm0, 112(%r12)
	movq	%rax, %rcx
	sarq	%rcx
	jmp	.LBB4_174
.LBB4_172:                              # %if.else.87.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$64, %r14
	jg	.LBB4_188
# BB#173:                               # %vector.body373
                                        #   in Loop: Header=BB4_162 Depth=2
	movdqa	.LCPI4_0(%rip), %xmm0   # xmm0 = [1,1,1,1,1,1,1,1]
	movdqu	%xmm0, (%r12)
	movdqu	%xmm0, 16(%r12)
	movdqu	%xmm0, 32(%r12)
	movdqu	%xmm0, 48(%r12)
	movdqu	%xmm0, 64(%r12)
	movdqu	%xmm0, 80(%r12)
	movdqu	%xmm0, 96(%r12)
	movdqu	%xmm0, 112(%r12)
	movq	%rax, %rcx
.LBB4_174:                              # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$24, %rcx
	jg	.LBB4_179
# BB#175:                               # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpq	$4, %rcx
	movl	$4, %eax
	movl	$jpeg_natural_order2, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	je	.LBB4_187
# BB#176:                               # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$9, %rcx
	jne	.LBB4_177
# BB#183:                               # %sw.bb.103.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rcx, %rax
	movl	$jpeg_natural_order3, %ecx
	jmp	.LBB4_186
.LBB4_188:                              # %sw.epilog.thread177.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	incq	%r13
	decq	%rbp
	movl	$jpeg_natural_order, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$64, %ecx
	jmp	.LBB4_190
.LBB4_179:                              # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$25, %rcx
	je	.LBB4_184
# BB#180:                               # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpq	$36, %rcx
	jne	.LBB4_181
# BB#185:                               # %sw.bb.106.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rcx, %rax
	movl	$jpeg_natural_order6, %ecx
	jmp	.LBB4_186
.LBB4_177:                              # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$16, %rcx
	jne	.LBB4_189
# BB#178:                               # %sw.bb.104.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rcx, %rax
	movl	$jpeg_natural_order4, %ecx
	jmp	.LBB4_186
.LBB4_184:                              # %sw.bb.105.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movl	$jpeg_natural_order5, %ecx
	jmp	.LBB4_186
.LBB4_181:                              # %if.end.102.i
                                        #   in Loop: Header=BB4_162 Depth=2
	cmpq	$49, %rcx
	jne	.LBB4_189
# BB#182:                               # %sw.bb.107.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rcx, %rax
	movl	$jpeg_natural_order7, %ecx
.LBB4_186:                              # %sw.epilog.thread.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rcx, 48(%rsp)          # 8-byte Spill
.LBB4_187:                              # %sw.epilog.thread.i
                                        #   in Loop: Header=BB4_162 Depth=2
	incq	%r13
	decq	%rbp
	movq	%rax, %rcx
.LBB4_190:                              # %for.body.111.lr.ph.i
                                        #   in Loop: Header=BB4_162 Depth=2
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB4_191:                              # %for.body.111.i
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rdx
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	je	.LBB4_200
# BB#192:                               # %do.body.114.i
                                        #   in Loop: Header=BB4_191 Depth=3
	testq	%rbp, %rbp
	jne	.LBB4_195
# BB#193:                               # %if.then.117.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%r12, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%rbp, %rdi
	movq	40(%rsp), %rbx          # 8-byte Reload
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#194:                               # %if.end.122.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%rbp, %rdx
	movq	(%rbx), %r13
	movq	8(%rbx), %rbp
	movq	%r12, %rcx
	movq	%r15, %r12
.LBB4_195:                              # %if.end.125.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movzbl	(%r13), %ebx
	decq	%rbp
	je	.LBB4_197
# BB#196:                               #   in Loop: Header=BB4_191 Depth=3
	incq	%r13
	jmp	.LBB4_199
	.align	16, 0x90
.LBB4_200:                              # %do.body.148.i
                                        #   in Loop: Header=BB4_191 Depth=3
	testq	%rbp, %rbp
	jne	.LBB4_203
# BB#201:                               # %if.then.151.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%r12, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%rbp, %rdi
	movq	40(%rsp), %rbx          # 8-byte Reload
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#202:                               # %if.end.156.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%rbp, %rdx
	movq	(%rbx), %r13
	movq	8(%rbx), %rbp
	movq	%r12, %rcx
	movq	%r15, %r12
.LBB4_203:                              # %if.end.159.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movzbl	(%r13), %ebx
	jmp	.LBB4_204
	.align	16, 0x90
.LBB4_197:                              # %if.then.132.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%r15, %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	callq	*24(%rbp)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#198:                               # %if.end.137.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%r15, %rdx
	movq	(%rbp), %r13
	movq	8(%rbp), %rbp
	movq	%r12, %rcx
	movq	32(%rsp), %r12          # 8-byte Reload
.LBB4_199:                              # %if.end.140.i
                                        #   in Loop: Header=BB4_191 Depth=3
	shll	$8, %ebx
	movzbl	(%r13), %eax
	orl	%eax, %ebx
.LBB4_204:                              # %if.end.165.i
                                        #   in Loop: Header=BB4_191 Depth=3
	movq	%rdx, %r15
	movq	48(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%r14,4), %rax
	movw	%bx, (%r12,%rax,2)
	incq	%r14
	incq	%r13
	decq	%rbp
	cmpq	%rcx, %r14
	jl	.LBB4_191
	jmp	.LBB4_205
.LBB4_189:                              # %sw.epilog.i
                                        #   in Loop: Header=BB4_162 Depth=2
	incq	%r13
	decq	%rbp
	testq	%rcx, %rcx
	movl	$jpeg_natural_order, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jg	.LBB4_190
	.align	16, 0x90
.LBB4_205:                              # %for.end.173.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	%rcx, %r14
	movq	(%r15), %rax
	cmpl	$2, 124(%rax)
	movl	$8, %ebx
	jl	.LBB4_208
	jmp	.LBB4_206
	.align	16, 0x90
.LBB4_207:                              # %do.body.182.do.body.182_crit_edge.i
                                        #   in Loop: Header=BB4_206 Depth=3
	movq	(%r15), %rax
	addq	$8, %rbx
.LBB4_206:                              # %do.body.182.i
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-16(%r12,%rbx,2), %xmm0 # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 44(%rax)
	movq	-8(%r12,%rbx,2), %xmm0  # xmm0 = mem[0],zero
	punpcklwd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqu	%xmm0, 60(%rax)
	movl	$95, 40(%rax)
	movl	$2, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	cmpq	$63, %rbx
	jle	.LBB4_207
.LBB4_208:                              # %if.end.235.i
                                        #   in Loop: Header=BB4_162 Depth=2
	movq	24(%rsp), %rcx          # 8-byte Reload
	subq	%r14, %rcx
	negq	%r14
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	cmoveq	%rax, %r14
	addq	%rcx, %r14
	testq	%r14, %r14
	jg	.LBB4_162
.LBB4_209:                              # %while.end.i.228
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%r14, %r14
	je	.LBB4_211
# BB#210:                               # %if.then.243.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$12, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_211:                              # %get_dqt.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r13, (%rax)
	movq	%rbp, 8(%rax)
	jmp	.LBB4_342
.LBB4_217:                              # %if.then.13.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#218:                               # %if.end.18.i.244
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbx
	movq	8(%r14), %r13
.LBB4_219:                              # %if.end.21.i.249
                                        #   in Loop: Header=BB4_1 Depth=1
	shlq	$8, %r12
	decq	%r13
	movzbl	(%rbx), %eax
	orq	%r12, %rax
	cmpq	$4, %rax
	je	.LBB4_221
# BB#220:                               # %if.then.27.i.253
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$12, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_221:                              # %do.body.30.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%r13, %r13
	je	.LBB4_223
# BB#222:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%rbx
	jmp	.LBB4_225
.LBB4_223:                              # %if.then.33.i.258
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#224:                               # %if.end.38.i.259
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbx
	movq	8(%r14), %r13
.LBB4_225:                              # %if.end.41.i.263
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%rbx), %r12d
	decq	%r13
	je	.LBB4_227
# BB#226:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%rbx
	jmp	.LBB4_229
.LBB4_227:                              # %if.then.48.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r14)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#228:                               # %if.end.53.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r14), %rbx
	movq	8(%r14), %r13
.LBB4_229:                              # %get_dri.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %r12d
	decq	%r13
	movzbl	(%rbx), %ebp
	incq	%rbx
	orl	%r12d, %ebp
	movq	(%r15), %rax
	movl	$84, 40(%rax)
	movl	%ebp, 44(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movl	%ebp, 372(%r15)
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	jmp	.LBB4_342
.LBB4_238:                              # %if.then.23.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#239:                               # %if.end.28.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_240:                              # %if.end.31.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shlq	$8, %rbp
	decq	%rbx
	movzbl	(%r14), %eax
	orq	%rbp, %rax
	cmpq	$24, %rax
	je	.LBB4_242
# BB#241:                               # %if.then.37.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$12, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_242:                              # %do.body.43.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	je	.LBB4_244
# BB#243:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_246
.LBB4_244:                              # %if.then.46.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#245:                               # %if.end.51.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_246:                              # %if.end.54.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	movzbl	(%r14), %eax
	cmpl	$13, %eax
	je	.LBB4_248
# BB#247:                               # %if.then.62.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$70, 40(%rax)
	movl	788(%r15), %ecx
	movl	%ecx, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_248:                              # %do.body.70.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	je	.LBB4_250
# BB#249:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_252
.LBB4_250:                              # %if.then.73.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#251:                               # %if.end.78.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_252:                              # %if.end.81.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_254
# BB#253:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_256
.LBB4_254:                              # %if.then.88.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#255:                               # %if.end.93.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_256:                              # %if.end.96.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	cmpl	$255, %eax
	jne	.LBB4_333
# BB#257:                               # %do.body.107.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_260
# BB#258:                               # %if.then.110.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#259:                               # %if.end.115.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_260:                              # %if.end.118.i.308
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	cmpl	$3, %eax
	jne	.LBB4_333
# BB#261:                               # %do.body.128.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_264
# BB#262:                               # %if.then.131.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#263:                               # %if.end.136.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_264:                              # %if.end.139.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	movzbl	(%r14), %ecx
	incq	%r14
	movq	304(%r15), %rax
	cmpl	96(%rax), %ecx
	jne	.LBB4_333
# BB#265:                               # %do.body.150.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_268
# BB#266:                               # %if.then.153.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#267:                               # %if.end.158.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
	movq	304(%r15), %rax
.LBB4_268:                              # %if.end.161.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	movzbl	(%r14), %ecx
	incq	%r14
	cmpl	(%rax), %ecx
	jne	.LBB4_333
# BB#269:                               # %do.body.174.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_272
# BB#270:                               # %if.then.177.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#271:                               # %if.end.182.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
	movq	304(%r15), %rax
.LBB4_272:                              # %if.end.185.i.319
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	movzbl	(%r14), %ecx
	incq	%r14
	cmpl	192(%rax), %ecx
	jne	.LBB4_333
# BB#273:                               # %do.body.198.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_276
# BB#274:                               # %if.then.201.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#275:                               # %if.end.206.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_276:                              # %if.end.209.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	cmpl	$128, %eax
	jne	.LBB4_333
# BB#277:                               # %do.body.219.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_280
# BB#278:                               # %if.then.222.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#279:                               # %if.end.227.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_280:                              # %if.end.230.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_282
# BB#281:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_284
.LBB4_282:                              # %if.then.237.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#283:                               # %if.end.242.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_284:                              # %if.end.245.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	jne	.LBB4_333
# BB#285:                               # %do.body.256.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_288
# BB#286:                               # %if.then.259.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#287:                               # %if.end.264.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_288:                              # %if.end.267.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_290
# BB#289:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_292
.LBB4_290:                              # %if.then.274.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#291:                               # %if.end.279.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_292:                              # %if.end.282.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	jne	.LBB4_333
# BB#293:                               # %do.body.293.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_296
# BB#294:                               # %if.then.296.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#295:                               # %if.end.301.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_296:                              # %if.end.304.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	cmpb	$0, (%r14)
	leaq	1(%r14), %r14
	jne	.LBB4_333
# BB#297:                               # %do.body.314.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_300
# BB#298:                               # %if.then.317.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#299:                               # %if.end.322.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_300:                              # %if.end.325.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_302
# BB#301:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_304
.LBB4_302:                              # %if.then.332.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#303:                               # %if.end.337.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_304:                              # %if.end.340.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	cmpl	$1, %eax
	jne	.LBB4_333
# BB#305:                               # %do.body.351.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_308
# BB#306:                               # %if.then.354.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#307:                               # %if.end.359.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_308:                              # %if.end.362.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_310
# BB#309:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_312
.LBB4_310:                              # %if.then.369.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#311:                               # %if.end.374.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_312:                              # %if.end.377.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	jne	.LBB4_333
# BB#313:                               # %do.body.388.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_316
# BB#314:                               # %if.then.391.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#315:                               # %if.end.396.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_316:                              # %if.end.399.i
                                        #   in Loop: Header=BB4_1 Depth=1
	decq	%rbx
	cmpb	$0, (%r14)
	leaq	1(%r14), %r14
	jne	.LBB4_333
# BB#317:                               # %do.body.409.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_320
# BB#318:                               # %if.then.412.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#319:                               # %if.end.417.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_320:                              # %if.end.420.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_322
# BB#321:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_324
.LBB4_322:                              # %if.then.427.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#323:                               # %if.end.432.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_324:                              # %if.end.435.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	cmpl	$1, %eax
	jne	.LBB4_333
# BB#325:                               # %do.body.446.i
                                        #   in Loop: Header=BB4_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB4_328
# BB#326:                               # %if.then.449.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#327:                               # %if.end.454.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_328:                              # %if.end.457.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	(%r14), %ebp
	decq	%rbx
	je	.LBB4_330
# BB#329:                               #   in Loop: Header=BB4_1 Depth=1
	incq	%r14
	jmp	.LBB4_332
.LBB4_330:                              # %if.then.464.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#331:                               # %if.end.469.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%rbx, %r15
	movq	(%r12), %r14
	movq	8(%r12), %rbx
.LBB4_332:                              # %if.end.472.i
                                        #   in Loop: Header=BB4_1 Depth=1
	shll	$8, %ebp
	decq	%rbx
	movzbl	(%r14), %eax
	incq	%r14
	orl	%ebp, %eax
	je	.LBB4_334
.LBB4_333:                              # %bad.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	(%r15), %rax
	movl	$28, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_334:                              # %get_lse.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, 396(%r15)
	movq	%r14, (%r12)
	movq	%rbx, 8(%r12)
	jmp	.LBB4_342
.LBB4_346:                              # %get_dht.exit.thread
	xorl	%r13d, %r13d
	jmp	.LBB4_344
.LBB4_343:                              # %sw.bb.50
	movq	(%r15), %rax
	movl	$87, 40(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movl	$0, 788(%r15)
	movl	$2, %r13d
	jmp	.LBB4_344
.LBB4_33:                               # %sw.bb.44
	movq	40(%r15), %r13
	movq	(%r13), %rdx
	movq	8(%r13), %rbx
	movq	832(%r15), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB4_35
# BB#34:                                # %if.then.i.58
	movq	(%r15), %rdi
	movl	$60, 40(%rdi)
	addq	$44, %rdi
	movl	$.L.str, %esi
	movq	%rdx, %rbp
	movl	$80, %edx
	callq	strncpy
	movq	(%r15), %rax
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rbp, %rdx
.LBB4_35:                               # %do.body.i
	testq	%rbx, %rbx
	jne	.LBB4_38
# BB#36:                                # %if.then.5.i
	movq	%r15, %rdi
	callq	*24(%r13)
	movq	%r13, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#37:                                # %if.end.9.i
	movq	(%rcx), %rdx
	movq	8(%rcx), %rbx
	movq	%rcx, %r13
.LBB4_38:                               # %if.end.12.i
	movzbl	(%rdx), %r14d
	decq	%rbx
	je	.LBB4_40
# BB#39:
	incq	%rdx
	jmp	.LBB4_42
.LBB4_40:                               # %if.then.16.i
	movq	%r15, %rdi
	callq	*24(%r13)
	movq	%r13, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#41:                                # %if.end.21.i
	movq	(%rcx), %rdx
	movq	8(%rcx), %rbx
	movq	%rcx, %r13
.LBB4_42:                               # %if.end.24.i
	movzbl	(%rdx), %ebp
	decq	%rbx
	je	.LBB4_44
# BB#43:
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	incq	%rdx
	jmp	.LBB4_46
.LBB4_44:                               # %if.then.31.i
	movq	%r15, %rdi
	callq	*24(%r13)
	movq	%r13, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#45:                                # %if.end.36.i
	movq	(%rcx), %rdx
	movq	8(%rcx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rcx, %r13
.LBB4_46:                               # %if.end.39.i
	movzbl	(%rdx), %ebx
	movq	%rdx, %r12
	movq	(%r15), %rax
	movl	$105, 40(%rax)
	movl	%ebx, 44(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	cmpl	$4, %ebx
	ja	.LBB4_53
# BB#47:                                # %if.end.39.i
	shlq	$8, %r14
	orq	%r14, %rbp
	leaq	6(%rbx,%rbx), %rax
	cmpq	%rax, %rbp
	jne	.LBB4_53
# BB#48:                                # %lor.lhs.false.57.i
	testb	%bl, %bl
	je	.LBB4_50
# BB#49:                                # %if.end.66.thread200.i
	movl	%ebx, 448(%r15)
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	incq	%rdx
	movq	56(%rsp), %rbp          # 8-byte Reload
	decq	%rbp
	sete	%al
	jmp	.LBB4_54
.LBB4_50:                               # %land.lhs.true.i
	cmpl	$0, 316(%r15)
	je	.LBB4_53
# BB#51:                                # %if.end.66.thread.i
	movl	%ebx, 448(%r15)
	movq	56(%rsp), %rbp          # 8-byte Reload
	decq	%rbp
	movb	$1, %r14b
	je	.LBB4_80
# BB#52:
	movq	%r12, %rdx
	incq	%rdx
	jmp	.LBB4_82
.LBB4_53:                               # %if.end.66.i
	movq	(%r15), %rax
	movl	$12, 40(%rax)
	movq	%r15, %rdi
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	callq	*(%rax)
	movl	%ebx, 448(%r15)
	movq	%r12, %rdx
	incq	%rdx
	movq	56(%rsp), %rbp          # 8-byte Reload
	decq	%rbp
	sete	%al
	testb	%bl, %bl
	movb	$1, %r14b
	je	.LBB4_79
.LBB4_54:                               # %do.body.69.lr.ph.i
	movq	%r13, 40(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movb	$3, %r14b
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_55:                               # %do.body.69.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_61 Depth 2
                                        #     Child Loop BB4_64 Depth 2
                                        #     Child Loop BB4_67 Depth 2
                                        #     Child Loop BB4_70 Depth 2
	movzbl	%r14b, %r14d
	andl	$3, %r14d
	testb	$1, %al
	je	.LBB4_58
# BB#56:                                # %if.then.72.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	%r15, %rdi
	movq	40(%rsp), %rbx          # 8-byte Reload
	callq	*24(%rbx)
	movq	%rbx, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#57:                                # %if.end.77.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	(%rcx), %rdx
	movq	8(%rcx), %rbp
.LBB4_58:                               # %if.end.80.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movzbl	(%rdx), %eax
	movq	%rdx, %r13
	testq	%r12, %r12
	jle	.LBB4_69
# BB#59:                                #   in Loop: Header=BB4_55 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	leal	3(%rdx), %ecx
	leal	-2(%rdx), %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_61:                               # %for.body.89.i
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	456(%r15,%rsi,8), %rdi
	cmpl	(%rdi), %eax
	je	.LBB4_62
# BB#60:                                # %for.cond.86.i
                                        #   in Loop: Header=BB4_61 Depth=2
	incq	%rsi
	cmpq	%r12, %rsi
	jl	.LBB4_61
	jmp	.LBB4_69
.LBB4_62:                               # %if.then.93.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	456(%r15), %rax
	movl	(%rax), %eax
	cmpq	$2, %r12
	jl	.LBB4_68
# BB#63:                                # %for.body.100.i.preheader
                                        #   in Loop: Header=BB4_55 Depth=1
	testb	$3, %cl
	movl	$0, %esi
	movl	$1, %ecx
	je	.LBB4_66
	.align	16, 0x90
.LBB4_64:                               # %for.body.100.i.prol
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rcx
	movq	464(%r15,%rcx,8), %rsi
	movl	(%rsi), %esi
	cmpl	%eax, %esi
	cmovgel	%esi, %eax
	leaq	1(%rcx), %rsi
	cmpl	%esi, %r14d
	jne	.LBB4_64
# BB#65:                                #   in Loop: Header=BB4_55 Depth=1
	addq	$2, %rcx
.LBB4_66:                               # %for.body.100.i.preheader.split
                                        #   in Loop: Header=BB4_55 Depth=1
	cmpl	$3, %edx
	jb	.LBB4_68
	.align	16, 0x90
.LBB4_67:                               # %for.body.100.i
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	456(%r15,%rcx,8), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	movq	464(%r15,%rcx,8), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	movq	472(%r15,%rcx,8), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	movq	480(%r15,%rcx,8), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	addq	$4, %rcx
	cmpl	%ecx, %r12d
	jne	.LBB4_67
.LBB4_68:                               # %for.end.i
                                        #   in Loop: Header=BB4_55 Depth=1
	incl	%eax
.LBB4_69:                               # %for.end.114.i
                                        #   in Loop: Header=BB4_55 Depth=1
	decq	%rbp
	movq	304(%r15), %rbx
	movl	56(%r15), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jle	.LBB4_72
	.align	16, 0x90
.LBB4_70:                               # %for.body.118.i
                                        #   Parent Loop BB4_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	(%rbx), %eax
	je	.LBB4_73
# BB#71:                                # %for.inc.124.i
                                        #   in Loop: Header=BB4_70 Depth=2
	incl	%edx
	addq	$96, %rbx
	cmpl	%ecx, %edx
	jl	.LBB4_70
.LBB4_72:                               # %for.end.127.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	(%r15), %rcx
	movl	$4, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r15, %rdi
	callq	*(%rcx)
.LBB4_73:                               # %id_found.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	%rbx, 456(%r15,%r12,8)
	testq	%rbp, %rbp
	je	.LBB4_75
# BB#74:                                #   in Loop: Header=BB4_55 Depth=1
	incq	%r13
	jmp	.LBB4_77
.LBB4_75:                               # %if.then.142.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	%r15, %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	callq	*24(%rbp)
	movq	%rbp, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#76:                                # %if.end.147.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movq	(%rcx), %r13
	movq	8(%rcx), %rbp
.LBB4_77:                               # %if.end.150.i
                                        #   in Loop: Header=BB4_55 Depth=1
	movzbl	(%r13), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	movl	%ecx, 20(%rbx)
	andl	$15, %eax
	movl	%eax, 24(%rbx)
	movq	(%r15), %rax
	movl	(%rbx), %ecx
	movl	%ecx, 44(%rax)
	movl	20(%rbx), %ecx
	movl	%ecx, 48(%rax)
	movl	24(%rbx), %ecx
	movl	%ecx, 52(%rax)
	movl	$106, 40(%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	%r13, %rdx
	incq	%r12
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	incq	%rdx
	decq	%rbp
	sete	%al
	incb	%r14b
	cmpq	48(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB4_55
# BB#78:
	xorl	%r14d, %r14d
	movq	40(%rsp), %r13          # 8-byte Reload
.LBB4_79:                               # %do.body.177.i
	testb	%al, %al
	je	.LBB4_82
.LBB4_80:                               # %if.then.180.i
	movq	%r15, %rdi
	callq	*24(%r13)
	movq	%r13, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#81:                                # %if.end.185.i
	movq	(%rcx), %rdx
	movq	8(%rcx), %rbp
	movq	%rcx, %r13
.LBB4_82:                               # %if.end.188.i
	decq	%rbp
	movzbl	(%rdx), %eax
	movl	%eax, 756(%r15)
	je	.LBB4_84
# BB#83:
	incq	%rdx
	jmp	.LBB4_86
.LBB4_84:                               # %if.then.197.i
	movq	%r15, %rdi
	callq	*24(%r13)
	movq	%r13, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#85:                                # %if.end.202.i
	movq	(%rcx), %rdx
	movq	8(%rcx), %rbp
	movq	%rcx, %r13
.LBB4_86:                               # %if.end.205.i
	decq	%rbp
	movzbl	(%rdx), %eax
	movl	%eax, 760(%r15)
	je	.LBB4_88
# BB#87:
	movq	%r13, %rbx
	incq	%rdx
	jmp	.LBB4_90
.LBB4_88:                               # %if.then.214.i
	movq	%r15, %rdi
	callq	*24(%r13)
	movq	%r13, %rcx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB4_344
# BB#89:                                # %if.end.219.i
	movq	(%rcx), %rdx
	movq	8(%rcx), %rbp
	movq	%rcx, %rbx
.LBB4_90:                               # %if.end.222.i
	decq	%rbp
	movq	%rbp, %r12
	movzbl	(%rdx), %eax
	incq	%rdx
	movq	%rdx, %rbp
	movl	%eax, %ecx
	shrl	$4, %ecx
	movl	%ecx, 764(%r15)
	andl	$15, %eax
	movl	%eax, 768(%r15)
	movq	(%r15), %rax
	movl	756(%r15), %ecx
	movl	%ecx, 44(%rax)
	movl	760(%r15), %ecx
	movl	%ecx, 48(%rax)
	movl	764(%r15), %ecx
	movl	%ecx, 52(%rax)
	movl	768(%r15), %ecx
	movl	%ecx, 56(%rax)
	movl	$107, 40(%rax)
	movl	$1, %r13d
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*8(%rax)
	movq	832(%r15), %rax
	movl	$0, 32(%rax)
	testb	%r14b, %r14b
	jne	.LBB4_92
# BB#91:                                # %if.then.253.i
	incl	172(%r15)
.LBB4_92:                               # %if.end.48
	movq	%rbp, (%rbx)
	movq	%r12, 8(%rbx)
	movl	$0, 788(%r15)
.LBB4_344:                              # %return
	movl	%r13d, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	read_markers, .Lfunc_end4-read_markers
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_23
	.quad	.LBB4_27
	.quad	.LBB4_28
	.quad	.LBB4_32
	.quad	.LBB4_119
	.quad	.LBB4_32
	.quad	.LBB4_32
	.quad	.LBB4_32
	.quad	.LBB4_32
	.quad	.LBB4_29
	.quad	.LBB4_31
	.quad	.LBB4_32
	.quad	.LBB4_93
	.quad	.LBB4_32
	.quad	.LBB4_32
	.quad	.LBB4_32
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_18
	.quad	.LBB4_20
	.quad	.LBB4_343
	.quad	.LBB4_33
	.quad	.LBB4_154
	.quad	.LBB4_337
	.quad	.LBB4_212
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_335
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_230
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_340
	.quad	.LBB4_336

	.text
	.align	16, 0x90
	.type	read_restart_marker,@function
read_restart_marker:                    # @read_restart_marker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	788(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB5_3
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	next_marker
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB5_7
# BB#2:                                 # %if.then.if.end.2_crit_edge
	movl	788(%rbx), %eax
.LBB5_3:                                # %if.end.2
	movq	832(%rbx), %rcx
	movl	32(%rcx), %esi
	leal	208(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then.5
	movq	(%rbx), %rax
	movl	$100, 40(%rax)
	movl	%esi, 44(%rax)
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	movl	$0, 788(%rbx)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	callq	*40(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB5_7
.LBB5_6:                                # %if.end.18
	movq	832(%rbx), %rax
	movl	32(%rax), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 32(%rax)
	movl	$1, %eax
.LBB5_7:                                # %return
	popq	%rbx
	retq
.Lfunc_end5:
	.size	read_restart_marker, .Lfunc_end5-read_restart_marker
	.cfi_endproc

	.align	16, 0x90
	.type	skip_variable,@function
skip_variable:                          # @skip_variable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 64
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	40(%r12), %r13
	movq	8(%r13), %rbx
	testq	%rbx, %rbx
	jne	.LBB6_3
# BB#1:                                 # %if.then
	movq	%r12, %rdi
	callq	*24(%r13)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB6_10
# BB#2:                                 # %if.end
	movq	8(%r13), %rbx
.LBB6_3:                                # %if.end.6
	movq	(%r13), %rbp
	movzbl	(%rbp), %r14d
	decq	%rbx
	je	.LBB6_5
# BB#4:
	incq	%rbp
	jmp	.LBB6_7
.LBB6_5:                                # %if.then.10
	movq	%r12, %rdi
	callq	*24(%r13)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB6_10
# BB#6:                                 # %if.end.15
	movq	(%r13), %rbp
	movq	8(%r13), %rbx
.LBB6_7:                                # %if.end.18
	shlq	$8, %r14
	decq	%rbx
	movzbl	(%rbp), %r15d
	incq	%rbp
	orq	%r14, %r15
	leaq	-2(%r15), %r14
	movq	(%r12), %rax
	movl	$93, 40(%rax)
	movl	788(%r12), %ecx
	movl	%ecx, 44(%rax)
	movl	%r14d, 48(%rax)
	movl	$1, %esi
	movq	%r12, %rdi
	callq	*8(%rax)
	movq	%rbp, (%r13)
	movq	%rbx, 8(%r13)
	cmpq	$3, %r15
	jb	.LBB6_9
# BB#8:                                 # %if.then.33
	movq	40(%r12), %rax
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*32(%rax)
.LBB6_9:                                # %cleanup
	movl	$1, %ecx
.LBB6_10:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	skip_variable, .Lfunc_end6-skip_variable
	.cfi_endproc

	.align	16, 0x90
	.type	get_interesting_appn,@function
get_interesting_appn:                   # @get_interesting_appn
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
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 96
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	40(%rdi), %r13
	movq	8(%r13), %rbx
	testq	%rbx, %rbx
	jne	.LBB7_3
# BB#1:                                 # %if.then
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*24(%r13)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB7_28
# BB#2:                                 # %if.end
	movq	8(%r13), %rbx
.LBB7_3:                                # %if.end.6
	movq	(%r13), %rbp
	movzbl	(%rbp), %r14d
	decq	%rbx
	je	.LBB7_5
# BB#4:
	incq	%rbp
	jmp	.LBB7_7
.LBB7_5:                                # %if.then.10
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*24(%r13)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB7_28
# BB#6:                                 # %if.end.15
	movq	(%r13), %rbp
	movq	8(%r13), %rbx
.LBB7_7:                                # %if.end.18
	shlq	$8, %r14
	movzbl	(%rbp), %eax
	orq	%r14, %rax
	xorl	%r14d, %r14d
	cmpq	$2, %rax
	leaq	-2(%rax), %rcx
	movl	$0, %eax
	cmoval	%ecx, %eax
	cmpq	$13, %rcx
	movl	$14, %r12d
	cmovlel	%eax, %r12d
	incq	%rbp
	decq	%rbx
	testl	%r12d, %r12d
	je	.LBB7_14
# BB#8:                                 # %do.body.34.lr.ph
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%r12d, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB7_9:                                # %do.body.34
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	jne	.LBB7_12
# BB#10:                                # %if.then.37
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*24(%r13)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB7_28
# BB#11:                                # %if.end.42
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	(%r13), %rbp
	movq	8(%r13), %rbx
.LBB7_12:                               # %if.end.45
                                        #   in Loop: Header=BB7_9 Depth=1
	movb	(%rbp), %al
	movb	%al, 26(%rsp,%r15)
	incq	%r15
	incq	%rbp
	decq	%rbx
	cmpq	%r14, %r15
	jb	.LBB7_9
# BB#13:
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB7_14:                               # %for.end
	movq	%rcx, %r15
	subq	%r14, %r15
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	788(%rax), %eax
	cmpl	$238, %eax
	jne	.LBB7_15
# BB#17:                                # %sw.bb.52
	cmpl	$12, %r12d
	jb	.LBB7_24
# BB#18:                                # %sw.bb.52
	movzbl	26(%rsp), %eax
	cmpl	$65, %eax
	jne	.LBB7_24
# BB#19:                                # %land.lhs.true.3.i
	movzbl	27(%rsp), %eax
	cmpl	$100, %eax
	jne	.LBB7_24
# BB#20:                                # %land.lhs.true.8.i
	movzbl	28(%rsp), %eax
	cmpl	$111, %eax
	jne	.LBB7_24
# BB#21:                                # %land.lhs.true.13.i
	movzbl	29(%rsp), %eax
	cmpl	$98, %eax
	jne	.LBB7_24
# BB#22:                                # %land.lhs.true.18.i
	movzbl	30(%rsp), %eax
	cmpl	$101, %eax
	jne	.LBB7_24
# BB#23:                                # %if.then.i
	movzbl	31(%rsp), %eax
	shll	$8, %eax
	movzbl	32(%rsp), %ecx
	orl	%eax, %ecx
	movzbl	33(%rsp), %eax
	shll	$8, %eax
	movzbl	34(%rsp), %edx
	orl	%eax, %edx
	movzbl	35(%rsp), %eax
	shll	$8, %eax
	movzbl	36(%rsp), %esi
	orl	%eax, %esi
	movzbl	37(%rsp), %r14d
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	(%r12), %rax
	movl	%ecx, 44(%rax)
	movl	%edx, 48(%rax)
	movl	%esi, 52(%rax)
	movl	%r14d, 56(%rax)
	movl	$78, 40(%rax)
	movl	$1, %esi
	movq	%r12, %rdi
	callq	*8(%rax)
	movl	$1, 388(%r12)
	movb	%r14b, 392(%r12)
	jmp	.LBB7_26
.LBB7_15:                               # %for.end
	cmpl	$224, %eax
	jne	.LBB7_25
# BB#16:                                # %sw.bb
	leaq	26(%rsp), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %edx
	movq	%r15, %rcx
	callq	examine_app0
	jmp	.LBB7_26
.LBB7_24:                               # %if.else.i
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$80, 40(%rax)
	movl	%ecx, 44(%rax)
	movl	$1, %esi
	callq	*8(%rax)
	jmp	.LBB7_26
.LBB7_25:                               # %sw.default
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rcx
	movl	$70, 40(%rcx)
	movl	%eax, 44(%rcx)
	callq	*(%rcx)
.LBB7_26:                               # %sw.epilog
	movq	%rbp, (%r13)
	movq	%rbx, 8(%r13)
	movl	$1, %ebx
	testq	%r15, %r15
	jle	.LBB7_28
# BB#27:                                # %if.then.63
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	40(%rdi), %rax
	movq	%r15, %rsi
	callq	*32(%rax)
.LBB7_28:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_interesting_appn, .Lfunc_end7-get_interesting_appn
	.cfi_endproc

	.globl	jpeg_save_markers
	.align	16, 0x90
	.type	jpeg_save_markers,@function
jpeg_save_markers:                      # @jpeg_save_markers
	.cfi_startproc
# BB#0:                                 # %entry
	movq	832(%rdi), %r8
	movq	8(%rdi), %rax
	movq	96(%rax), %rax
	addq	$-32, %rax
	movl	%edx, %ecx
	cmpq	%rax, %rcx
	cmovlel	%edx, %eax
	testl	%eax, %eax
	je	.LBB8_4
# BB#1:                                 # %if.then.4
	movl	$save_marker, %ecx
	cmpl	$224, %esi
	jne	.LBB8_3
# BB#2:                                 # %if.then.4
	movl	$14, %edx
	cmpl	$14, %eax
	jb	.LBB8_5
.LBB8_3:                                # %if.else
	cmpl	$12, %eax
	movl	$12, %edx
	cmovael	%eax, %edx
	cmpl	$238, %esi
	cmovnel	%eax, %edx
	movl	$save_marker, %ecx
	jmp	.LBB8_5
.LBB8_4:                                # %if.else.18
	cmpl	$238, %esi
	movl	$get_interesting_appn, %eax
	movl	$skip_variable, %ecx
	cmoveq	%rax, %rcx
	cmpl	$224, %esi
	cmoveq	%rax, %rcx
	xorl	%edx, %edx
.LBB8_5:                                # %if.end.25
	cmpl	$254, %esi
	jne	.LBB8_7
# BB#6:                                 # %if.then.28
	movq	%rcx, 40(%r8)
	movl	%edx, 176(%r8)
	retq
.LBB8_7:                                # %if.else.29
	movl	%esi, %eax
	andl	$-16, %eax
	cmpl	$224, %eax
	jne	.LBB8_10
# BB#8:                                 # %if.then.35
	addl	$-224, %esi
	movslq	%esi, %rax
	movq	%rcx, 48(%r8,%rax,8)
	movl	%edx, 180(%r8,%rax,4)
	retq
.LBB8_10:                               # %if.else.40
	movq	(%rdi), %rax
	movl	$70, 40(%rax)
	movl	%esi, 44(%rax)
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end8:
	.size	jpeg_save_markers, .Lfunc_end8-jpeg_save_markers
	.cfi_endproc

	.align	16, 0x90
	.type	save_marker,@function
save_marker:                            # @save_marker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 96
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	832(%rbx), %r9
	movq	248(%r9), %rax
	movq	40(%rbx), %r8
	movq	(%r8), %r14
	movq	8(%r8), %r13
	testq	%rax, %rax
	je	.LBB9_1
# BB#14:                                # %if.else.54
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	256(%r9), %r12d
	movl	16(%rax), %edx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r12, %r15
	addq	24(%rax), %r15
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB9_15
.LBB9_1:                                # %do.body
	testq	%r13, %r13
	jne	.LBB9_4
# BB#2:                                 # %if.then.6
	movq	%r9, %r12
	movq	%rbx, %rdi
	movq	%r8, %r15
	callq	*24(%r15)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB9_48
# BB#3:                                 # %if.end
	movq	(%r15), %r14
	movq	8(%r15), %r13
	movq	%r15, %r8
	movq	%r12, %r9
.LBB9_4:                                # %if.end.10
	movzbl	(%r14), %r15d
	decq	%r13
	je	.LBB9_6
# BB#5:
	incq	%r14
	jmp	.LBB9_8
.LBB9_6:                                # %if.then.14
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r8, %r12
	callq	*24(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB9_48
# BB#7:                                 # %if.end.19
	movq	(%r12), %r14
	movq	8(%r12), %r13
	movq	%r12, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB9_8:                                # %if.end.22
	shlq	$8, %r15
	decq	%r13
	movzbl	(%r14), %r12d
	incq	%r14
	orq	%r15, %r12
	xorl	%edx, %edx
	addq	$-2, %r12
	js	.LBB9_9
# BB#10:                                # %if.then.28
	movslq	788(%rbx), %rax
	cmpq	$254, %rax
	jne	.LBB9_12
# BB#11:                                # %if.then.31
	movq	%r8, (%rsp)             # 8-byte Spill
	leaq	176(%r9), %rax
	jmp	.LBB9_13
.LBB9_9:
	xorl	%esi, %esi
	jmp	.LBB9_34
.LBB9_12:                               # %if.else
	movq	%r8, (%rsp)             # 8-byte Spill
	leaq	-716(%r9,%rax,4), %rax
.LBB9_13:                               # %if.end.34
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movl	(%rax), %ebp
	cmpl	%ebp, %r12d
	cmovbl	%r12d, %ebp
	movq	8(%rbx), %rax
	movl	%ebp, %edx
	addq	$32, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	movq	%rbp, %rdx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	$0, (%rax)
	movb	788(%rbx), %cl
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movb	%cl, 8(%rax)
	movl	%r12d, 12(%rax)
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	%edx, 16(%rax)
	leaq	32(%rax), %r15
	movq	%r15, 24(%rax)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, 248(%rcx)
	movl	$0, 256(%rcx)
	xorl	%r12d, %r12d
	movq	(%rsp), %r8             # 8-byte Reload
	movq	%rcx, %r9
.LBB9_15:                               # %while.cond.preheader
	cmpl	%edx, %r12d
	jb	.LBB9_20
# BB#16:
	movq	%r15, %rsi
	jmp	.LBB9_17
	.align	16, 0x90
.LBB9_20:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
	movq	%r14, (%r8)
	movq	%r13, 8(%r8)
	movl	%r12d, 256(%r9)
	testq	%r13, %r13
	movq	%r14, %rax
	jne	.LBB9_23
# BB#21:                                # %if.then.67
                                        #   in Loop: Header=BB9_20 Depth=1
	movq	%rdx, %r14
	movq	%r9, %rbp
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r8, %rbx
	callq	*24(%rbx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB9_48
# BB#22:                                # %if.end.72
                                        #   in Loop: Header=BB9_20 Depth=1
	movq	(%rbx), %rax
	movq	8(%rbx), %r13
	movq	%rbx, %r8
	movq	%rbp, %r9
	movq	%r14, %rdx
.LBB9_23:                               # %while.cond.76.preheader
                                        #   in Loop: Header=BB9_20 Depth=1
	cmpl	%edx, %r12d
	jae	.LBB9_24
# BB#25:                                # %while.cond.76.preheader
                                        #   in Loop: Header=BB9_20 Depth=1
	testq	%r13, %r13
	je	.LBB9_24
# BB#26:                                # %while.body.81.preheader
                                        #   in Loop: Header=BB9_20 Depth=1
	leaq	-1(%r13), %r10
	movl	%r12d, %ecx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB9_27:                               # %while.body.81
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rax,%rdi), %bl
	movb	%bl, (%r15,%rdi)
	decq	%r13
	leal	1(%rcx,%rdi), %ebp
	leaq	1(%rdi), %rbx
	leaq	1(%rax,%rdi), %r14
	leaq	1(%r15,%rdi), %rsi
	leal	(%rbx,%rcx), %r12d
	cmpl	%edx, %ebp
	jae	.LBB9_19
# BB#28:                                # %while.body.81
                                        #   in Loop: Header=BB9_27 Depth=2
	cmpq	%rdi, %r10
	movq	%rbx, %rdi
	jne	.LBB9_27
	jmp	.LBB9_19
	.align	16, 0x90
.LBB9_24:                               #   in Loop: Header=BB9_20 Depth=1
	movq	%rax, %r14
	movq	%r15, %rsi
.LBB9_19:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB9_20 Depth=1
	cmpl	%edx, %r12d
	movq	%rsi, %r15
	jb	.LBB9_20
.LBB9_17:                               # %while.end.85
	movq	24(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB9_18
# BB#29:                                # %if.then.88
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	408(%rbx), %rax
	testq	%rax, %rax
	je	.LBB9_30
	.align	16, 0x90
.LBB9_31:                               # %while.cond.95
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB9_31
# BB#32:                                # %while.end.101
	movq	%rdi, (%rcx)
	jmp	.LBB9_33
.LBB9_18:
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	jmp	.LBB9_34
.LBB9_30:                               # %if.then.91
	movq	%rdi, 408(%rbx)
.LBB9_33:                               # %if.end.103
	movq	24(%rdi), %rsi
	movl	12(%rdi), %r12d
	subl	%edx, %r12d
.LBB9_34:                               # %if.end.108
	movq	$0, 248(%r9)
	movl	788(%rbx), %eax
	movq	%r8, %rbp
	cmpl	$238, %eax
	jne	.LBB9_35
# BB#37:                                # %sw.bb.111
	cmpl	$12, %edx
	jb	.LBB9_44
# BB#38:                                # %land.lhs.true.i
	movzbl	(%rsi), %eax
	cmpl	$65, %eax
	jne	.LBB9_44
# BB#39:                                # %land.lhs.true.3.i
	movzbl	1(%rsi), %eax
	cmpl	$100, %eax
	jne	.LBB9_44
# BB#40:                                # %land.lhs.true.8.i
	movzbl	2(%rsi), %eax
	cmpl	$111, %eax
	jne	.LBB9_44
# BB#41:                                # %land.lhs.true.13.i
	movzbl	3(%rsi), %eax
	cmpl	$98, %eax
	jne	.LBB9_44
# BB#42:                                # %land.lhs.true.18.i
	movzbl	4(%rsi), %eax
	cmpl	$101, %eax
	jne	.LBB9_44
# BB#43:                                # %if.then.i
	movzbl	5(%rsi), %eax
	shll	$8, %eax
	movzbl	6(%rsi), %ecx
	orl	%eax, %ecx
	movzbl	7(%rsi), %eax
	shll	$8, %eax
	movzbl	8(%rsi), %edx
	orl	%eax, %edx
	movzbl	9(%rsi), %eax
	shll	$8, %eax
	movzbl	10(%rsi), %edi
	orl	%eax, %edi
	movzbl	11(%rsi), %r15d
	movq	(%rbx), %rax
	movl	%ecx, 44(%rax)
	movl	%edx, 48(%rax)
	movl	%edi, 52(%rax)
	movl	%r15d, 56(%rax)
	movl	$78, 40(%rax)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	movl	$1, 388(%rbx)
	movb	%r15b, 392(%rbx)
	jmp	.LBB9_46
.LBB9_35:                               # %if.end.108
	cmpl	$224, %eax
	jne	.LBB9_45
# BB#36:                                # %sw.bb
	movq	%rbx, %rdi
	movq	%r12, %rcx
	callq	examine_app0
	jmp	.LBB9_46
.LBB9_44:                               # %if.else.i
	movq	(%rbx), %rax
	movl	$80, 40(%rax)
	leal	(%rdx,%r12), %ecx
	movl	%ecx, 44(%rax)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	jmp	.LBB9_46
.LBB9_45:                               # %sw.default
	movq	(%rbx), %rcx
	movl	$93, 40(%rcx)
	movl	%eax, 44(%rcx)
	leal	(%rdx,%r12), %eax
	movl	%eax, 48(%rcx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*8(%rcx)
.LBB9_46:                               # %sw.epilog
	movq	%r14, (%rbp)
	movq	%r13, 8(%rbp)
	movl	$1, %r13d
	testq	%r12, %r12
	jle	.LBB9_48
# BB#47:                                # %if.then.127
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*32(%rax)
.LBB9_48:                               # %cleanup
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	save_marker, .Lfunc_end9-save_marker
	.cfi_endproc

	.globl	jpeg_set_marker_processor
	.align	16, 0x90
	.type	jpeg_set_marker_processor,@function
jpeg_set_marker_processor:              # @jpeg_set_marker_processor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	832(%rdi), %rax
	cmpl	$254, %esi
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	%rdx, 40(%rax)
	retq
.LBB10_2:                               # %if.else
	movl	%esi, %ecx
	andl	$-16, %ecx
	cmpl	$224, %ecx
	jne	.LBB10_5
# BB#3:                                 # %if.then.4
	addl	$-224, %esi
	movslq	%esi, %rcx
	movq	%rdx, 48(%rax,%rcx,8)
	retq
.LBB10_5:                               # %if.else.5
	movq	(%rdi), %rax
	movl	$70, 40(%rax)
	movl	%esi, 44(%rax)
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end10:
	.size	jpeg_set_marker_processor, .Lfunc_end10-jpeg_set_marker_processor
	.cfi_endproc

	.align	16, 0x90
	.type	get_sof,@function
get_sof:                                # @get_sof
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp85:
	.cfi_def_cfa_offset 64
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	40(%rdi), %rbp
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movl	%esi, 312(%rdi)
	movl	%edx, 316(%rdi)
	movl	%ecx, 320(%rdi)
	testq	%r13, %r13
	jne	.LBB11_3
# BB#1:                                 # %if.then
	movq	%rdi, %r14
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#2:                                 # %if.end
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r14, %rdi
.LBB11_3:                               # %if.end.7
	movzbl	(%rbx), %r14d
	decq	%r13
	je	.LBB11_5
# BB#4:
	incq	%rbx
	jmp	.LBB11_7
.LBB11_5:                               # %if.then.11
	movq	%rdi, %r15
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#6:                                 # %if.end.16
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r15, %rdi
.LBB11_7:                               # %if.end.19
	movzbl	(%rbx), %r15d
	decq	%r13
	je	.LBB11_9
# BB#8:
	incq	%rbx
	jmp	.LBB11_11
.LBB11_9:                               # %if.then.26
	movq	%rdi, %r12
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#10:                                # %if.end.31
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r12, %rdi
.LBB11_11:                              # %if.end.34
	decq	%r13
	movzbl	(%rbx), %eax
	movl	%eax, 296(%rdi)
	je	.LBB11_13
# BB#12:
	incq	%rbx
	jmp	.LBB11_15
.LBB11_13:                              # %if.then.43
	movq	%rdi, %r12
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#14:                                # %if.end.48
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r12, %rdi
.LBB11_15:                              # %if.end.51
	movzbl	(%rbx), %eax
	shll	$8, %eax
	decq	%r13
	movl	%eax, 52(%rdi)
	je	.LBB11_17
# BB#16:
	incq	%rbx
	jmp	.LBB11_19
.LBB11_17:                              # %if.then.58
	movq	%rdi, %r12
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#18:                                # %if.end.63
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r12, %rdi
	movl	52(%rdi), %eax
.LBB11_19:                              # %if.end.66
	movzbl	(%rbx), %ecx
	addl	%eax, %ecx
	decq	%r13
	movl	%ecx, 52(%rdi)
	je	.LBB11_21
# BB#20:
	incq	%rbx
	jmp	.LBB11_23
.LBB11_21:                              # %if.then.77
	movq	%rdi, %r12
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#22:                                # %if.end.82
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r12, %rdi
.LBB11_23:                              # %if.end.85
	movzbl	(%rbx), %eax
	shll	$8, %eax
	decq	%r13
	movl	%eax, 48(%rdi)
	je	.LBB11_25
# BB#24:
	incq	%rbx
	jmp	.LBB11_27
.LBB11_25:                              # %if.then.92
	movq	%rdi, %r12
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#26:                                # %if.end.97
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r12, %rdi
	movl	48(%rdi), %eax
.LBB11_27:                              # %if.end.100
	movzbl	(%rbx), %ecx
	addl	%eax, %ecx
	decq	%r13
	movl	%ecx, 48(%rdi)
	je	.LBB11_29
# BB#28:
	incq	%rbx
	jmp	.LBB11_31
.LBB11_29:                              # %if.then.111
	movq	%rdi, %r12
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#30:                                # %if.end.116
	movq	(%rbp), %rbx
	movq	8(%rbp), %r13
	movq	%r12, %rdi
.LBB11_31:                              # %if.end.119
	shlq	$8, %r14
	orq	%r14, %r15
	movzbl	(%rbx), %eax
	movq	%rbx, %r14
	movl	%eax, 56(%rdi)
	movq	(%rdi), %rax
	movl	788(%rdi), %ecx
	movl	%ecx, 44(%rax)
	movl	48(%rdi), %ecx
	movl	%ecx, 48(%rax)
	movl	52(%rdi), %ecx
	movl	%ecx, 52(%rax)
	movl	56(%rdi), %ecx
	movl	%ecx, 56(%rax)
	movl	$102, 40(%rax)
	movl	$1, %esi
	movq	%rdi, %rbx
	callq	*8(%rax)
	movq	%rbx, %rdi
	movq	832(%rdi), %rax
	cmpl	$0, 28(%rax)
	je	.LBB11_33
# BB#32:                                # %if.then.138
	movq	(%rdi), %rax
	movl	$61, 40(%rax)
	movq	%rdi, %rbx
	callq	*(%rax)
	movq	%rbx, %rdi
.LBB11_33:                              # %if.end.142
	addq	$-8, %r15
	cmpl	$0, 52(%rdi)
	je	.LBB11_36
# BB#34:                                # %lor.lhs.false
	cmpl	$0, 48(%rdi)
	je	.LBB11_36
# BB#35:                                # %lor.lhs.false.149
	movl	56(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB11_37
.LBB11_36:                              # %if.then.153
	movq	(%rdi), %rax
	movl	$33, 40(%rax)
	movq	%rdi, %rbx
	callq	*(%rax)
	movq	%rbx, %rdi
	movl	56(%rdi), %eax
.LBB11_37:                              # %if.end.158
	leal	(%rax,%rax,2), %eax
	cltq
	cmpq	%rax, %r15
	je	.LBB11_39
# BB#38:                                # %if.then.163
	movq	(%rdi), %rax
	movl	$12, 40(%rax)
	movq	%rdi, %rbx
	callq	*(%rax)
	movq	%rbx, %rdi
.LBB11_39:                              # %if.end.168
	cmpq	$0, 304(%rdi)
	jne	.LBB11_41
# BB#40:                                # %if.then.171
	movq	8(%rdi), %rax
	movslq	56(%rdi), %rcx
	shlq	$5, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movl	$1, %esi
	movq	%rdi, %rbx
	callq	*(%rax)
	movq	%rbx, %rdi
	movq	%rax, 304(%rdi)
.LBB11_41:                              # %for.cond.preheader
	movq	%r14, %r10
	incq	%r10
	decq	%r13
	cmpl	$0, 56(%rdi)
	jle	.LBB11_69
# BB#42:                                # %do.body.181.lr.ph
	movl	$-2, %eax
	xorl	%r12d, %r12d
	movb	$3, %r14b
	.align	16, 0x90
.LBB11_43:                              # %do.body.181
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_48 Depth 2
                                        #     Child Loop BB11_51 Depth 2
                                        #     Child Loop BB11_55 Depth 2
	movl	%eax, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%r13, %r13
	jne	.LBB11_46
# BB#44:                                # %if.then.184
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	%rdi, %rbx
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#45:                                # %if.end.189
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	(%rbp), %r10
	movq	8(%rbp), %r13
	movq	%rbx, %rdi
.LBB11_46:                              # %if.end.192
                                        #   in Loop: Header=BB11_43 Depth=1
	movzbl	%r14b, %r14d
	andl	$3, %r14d
	decq	%r13
	movzbl	(%r10), %eax
	movq	304(%rdi), %r15
	testl	%r12d, %r12d
	jle	.LBB11_60
# BB#47:                                #   in Loop: Header=BB11_43 Depth=1
	leal	3(%r12), %ebx
	leal	-2(%r12), %r8d
	xorl	%edx, %edx
	movq	%r15, %rcx
	.align	16, 0x90
.LBB11_48:                              # %for.body.202
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	(%rcx), %eax
	je	.LBB11_49
# BB#58:                                # %for.inc.222
                                        #   in Loop: Header=BB11_48 Depth=2
	incl	%edx
	addq	$96, %rcx
	cmpl	%r12d, %edx
	jl	.LBB11_48
	jmp	.LBB11_59
	.align	16, 0x90
.LBB11_49:                              # %if.then.205
                                        #   in Loop: Header=BB11_43 Depth=1
	movl	(%r15), %eax
	leaq	96(%r15), %rcx
	cmpl	$2, %r12d
	jl	.LBB11_57
# BB#50:                                # %for.body.212.lr.ph
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	%rbp, %r9
	xorl	%esi, %esi
	movl	$1, %edx
	testb	$3, %bl
	movq	%r15, %rbx
	je	.LBB11_53
	.align	16, 0x90
.LBB11_51:                              # %for.body.212.prol
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbx
	movl	%esi, %edx
	movl	(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	leaq	96(%rbx), %rcx
	leal	1(%rdx), %esi
	cmpl	%esi, %r14d
	jne	.LBB11_51
# BB#52:                                #   in Loop: Header=BB11_43 Depth=1
	addl	$2, %edx
.LBB11_53:                              # %for.body.212.lr.ph.split
                                        #   in Loop: Header=BB11_43 Depth=1
	addq	$192, %r15
	cmpl	$3, %r8d
	jb	.LBB11_56
# BB#54:                                # %for.body.212.lr.ph.split.split
                                        #   in Loop: Header=BB11_43 Depth=1
	leaq	288(%rcx), %rsi
	.align	16, 0x90
.LBB11_55:                              # %for.body.212
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	96(%rbx), %ebx
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	movl	-192(%rsi), %ebp
	movl	-96(%rsi), %ebx
	cmpl	%eax, %ebp
	cmovgel	%ebp, %eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	movl	(%rsi), %ebp
	cmpl	%eax, %ebp
	cmovgel	%ebp, %eax
	addl	$4, %edx
	leaq	288(%rcx), %rbx
	addq	$384, %rcx              # imm = 0x180
	addq	$384, %rsi              # imm = 0x180
	cmpl	%edx, %r12d
	jne	.LBB11_55
.LBB11_56:                              # %for.cond.209.for.end_crit_edge
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	addq	%rcx, %r15
	movq	%r15, %rcx
	movq	%r9, %rbp
.LBB11_57:                              # %for.end
                                        #   in Loop: Header=BB11_43 Depth=1
	incl	%eax
.LBB11_59:                              #   in Loop: Header=BB11_43 Depth=1
	movq	%rcx, %r15
.LBB11_60:                              # %for.end.225
                                        #   in Loop: Header=BB11_43 Depth=1
	movl	%eax, (%r15)
	movl	%r12d, 4(%r15)
	testq	%r13, %r13
	je	.LBB11_62
# BB#61:                                #   in Loop: Header=BB11_43 Depth=1
	incq	%r10
	jmp	.LBB11_64
	.align	16, 0x90
.LBB11_62:                              # %if.then.230
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	%rdi, %rbx
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#63:                                # %if.end.235
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	(%rbp), %r10
	movq	8(%rbp), %r13
	movq	%rbx, %rdi
.LBB11_64:                              # %if.end.238
                                        #   in Loop: Header=BB11_43 Depth=1
	movzbl	(%r10), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$15, %eax
	decq	%r13
	movl	%ecx, 8(%r15)
	movl	%eax, 12(%r15)
	je	.LBB11_66
# BB#65:                                #   in Loop: Header=BB11_43 Depth=1
	incq	%r10
	jmp	.LBB11_68
	.align	16, 0x90
.LBB11_66:                              # %if.then.248
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	%rdi, %rbx
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_70
# BB#67:                                # %if.end.253
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	(%rbp), %r10
	movq	8(%rbp), %r13
	movq	%rbx, %rdi
.LBB11_68:                              # %if.end.256
                                        #   in Loop: Header=BB11_43 Depth=1
	movzbl	(%r10), %eax
	movl	%eax, 16(%r15)
	movq	(%rdi), %rax
	movl	(%r15), %ecx
	movl	%ecx, 44(%rax)
	movl	8(%r15), %ecx
	movl	%ecx, 48(%rax)
	movl	12(%r15), %ecx
	movl	%ecx, 52(%rax)
	movl	16(%r15), %ecx
	movl	%ecx, 56(%rax)
	movl	$103, 40(%rax)
	movl	$1, %esi
	movq	%rdi, %rbx
	movq	%r10, %r15
	callq	*8(%rax)
	movq	%r15, %r10
	movq	%rbx, %rdi
	incl	%r12d
	incq	%r10
	decq	%r13
	movq	(%rsp), %rax            # 8-byte Reload
	incl	%eax
	incb	%r14b
	cmpl	56(%rdi), %r12d
	jl	.LBB11_43
.LBB11_69:                              # %for.end.284
	movq	832(%rdi), %rax
	movl	$1, 28(%rax)
	movq	%r10, (%rbp)
	movq	%r13, 8(%rbp)
	movl	$1, %eax
.LBB11_70:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	get_sof, .Lfunc_end11-get_sof
	.cfi_endproc

	.align	16, 0x90
	.type	examine_app0,@function
examine_app0:                           # @examine_app0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 32
.Ltmp95:
	.cfi_offset %rbx, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	%edx, %ebx
	addq	%rcx, %rbx
	cmpl	$14, %edx
	jb	.LBB12_14
# BB#1:                                 # %land.lhs.true
	movzbl	(%r15), %eax
	cmpl	$74, %eax
	jne	.LBB12_27
# BB#2:                                 # %land.lhs.true.5
	movzbl	1(%r15), %eax
	cmpl	$70, %eax
	jne	.LBB12_16
# BB#3:                                 # %land.lhs.true.10
	movzbl	2(%r15), %eax
	cmpl	$73, %eax
	jne	.LBB12_16
# BB#4:                                 # %land.lhs.true.15
	movzbl	3(%r15), %eax
	cmpl	$70, %eax
	jne	.LBB12_16
# BB#5:                                 # %land.lhs.true.20
	cmpb	$0, 4(%r15)
	jne	.LBB12_16
# BB#6:                                 # %if.then
	movl	$1, 376(%r14)
	movb	5(%r15), %cl
	movb	%cl, 380(%r14)
	movb	6(%r15), %al
	movb	%al, 381(%r14)
	movb	7(%r15), %r8b
	movb	%r8b, 382(%r14)
	movzbl	8(%r15), %edi
	shll	$8, %edi
	movzbl	9(%r15), %esi
	orl	%edi, %esi
	movw	%si, 384(%r14)
	movzbl	10(%r15), %edx
	shll	$8, %edx
	movzbl	11(%r15), %edi
	orl	%edx, %edi
	movw	%di, 386(%r14)
	movb	%cl, %dl
	decb	%dl
	movzbl	%dl, %edx
	cmpl	$1, %edx
	jbe	.LBB12_8
# BB#7:                                 # %if.then.50
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	movq	(%r14), %rdx
	movl	$122, 40(%rdx)
	movl	%ecx, 44(%rdx)
	movl	%eax, 48(%rdx)
	movl	$-1, %esi
	movq	%r14, %rdi
	callq	*8(%rdx)
	movb	380(%r14), %cl
	movb	381(%r14), %al
	movzwl	384(%r14), %esi
	movzwl	386(%r14), %edi
	movb	382(%r14), %r8b
.LBB12_8:                               # %do.body
	movq	(%r14), %rdx
	movzbl	%cl, %ecx
	movl	%ecx, 44(%rdx)
	movzbl	%al, %eax
	movl	%eax, 48(%rdx)
	movzwl	%si, %eax
	movl	%eax, 52(%rdx)
	movzwl	%di, %eax
	movl	%eax, 56(%rdx)
	movzbl	%r8b, %eax
	movl	%eax, 60(%rdx)
	movl	$89, 40(%rdx)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	*8(%rdx)
	movb	12(%r15), %cl
	movb	13(%r15), %al
	movb	%al, %dl
	orb	%cl, %dl
	je	.LBB12_10
# BB#9:                                 # %if.then.88
	movq	(%r14), %rax
	movl	$92, 40(%rax)
	movzbl	12(%r15), %ecx
	movl	%ecx, 44(%rax)
	movzbl	13(%r15), %ecx
	movl	%ecx, 48(%rax)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	*8(%rax)
	movb	12(%r15), %cl
	movb	13(%r15), %al
.LBB12_10:                              # %if.end.105
	addq	$-14, %rbx
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	imulq	%rcx, %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	%rax, %rbx
	jne	.LBB12_11
# BB#28:                                # %if.end.209
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB12_14:                              # %if.else
	cmpl	$6, %edx
	jb	.LBB12_27
# BB#15:                                # %land.lhs.true.126
	movzbl	(%r15), %eax
	cmpl	$74, %eax
	jne	.LBB12_27
.LBB12_16:                              # %land.lhs.true.131
	movzbl	1(%r15), %eax
	cmpl	$70, %eax
	jne	.LBB12_27
# BB#17:                                # %land.lhs.true.136
	movzbl	2(%r15), %eax
	cmpl	$88, %eax
	jne	.LBB12_27
# BB#18:                                # %land.lhs.true.141
	movzbl	3(%r15), %eax
	cmpl	$88, %eax
	jne	.LBB12_27
# BB#19:                                # %land.lhs.true.146
	cmpb	$0, 4(%r15)
	je	.LBB12_20
.LBB12_27:                              # %if.else.198
	movq	(%r14), %rax
	movl	$79, 40(%rax)
.LBB12_12:                              # %if.then.113
	movl	%ebx, 44(%rax)
.LBB12_13:                              # %if.then.113
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB12_20:                              # %if.then.151
	movzbl	5(%r15), %eax
	cmpl	$19, %eax
	je	.LBB12_25
# BB#21:                                # %if.then.151
	cmpl	$17, %eax
	jne	.LBB12_22
# BB#24:                                # %sw.bb.163
	movq	(%r14), %rax
	movl	$111, 40(%rax)
	jmp	.LBB12_12
.LBB12_11:                              # %if.then.113
	movq	(%r14), %rax
	movl	$90, 40(%rax)
	jmp	.LBB12_12
.LBB12_25:                              # %sw.bb.173
	movq	(%r14), %rax
	movl	$112, 40(%rax)
	jmp	.LBB12_12
.LBB12_22:                              # %if.then.151
	cmpl	$16, %eax
	jne	.LBB12_26
# BB#23:                                # %sw.bb
	movq	(%r14), %rax
	movl	$110, 40(%rax)
	jmp	.LBB12_12
.LBB12_26:                              # %sw.default
	movq	(%r14), %rax
	movl	$91, 40(%rax)
	movzbl	5(%r15), %ecx
	movl	%ecx, 44(%rax)
	movl	%ebx, 48(%rax)
	jmp	.LBB12_13
.Lfunc_end12:
	.size	examine_app0, .Lfunc_end12-examine_app0
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SOS"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LSE"
	.size	.L.str.1, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
