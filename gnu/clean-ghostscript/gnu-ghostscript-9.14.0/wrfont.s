	.text
	.file	"wrfont.bc"
	.globl	WRF_init
	.align	16, 0x90
	.type	WRF_init,@function
WRF_init:                               # @WRF_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	movw	$-9871, 28(%rdi)        # imm = 0xFFFFFFFFFFFFD971
	retq
.Lfunc_end0:
	.size	WRF_init, .Lfunc_end0-WRF_init
	.cfi_endproc

	.globl	WRF_wbyte
	.align	16, 0x90
	.type	WRF_wbyte,@function
WRF_wbyte:                              # @WRF_wbyte
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	cmpq	8(%rdi), %rax
	jge	.LBB1_4
# BB#1:                                 # %if.then
	cmpl	$0, 24(%rdi)
	je	.LBB1_3
# BB#2:                                 # %if.then.1
	movzwl	28(%rdi), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	movzbl	%sil, %esi
	xorl	%ecx, %esi
	movl	%esi, %ecx
	addl	%eax, %ecx
	imull	$52845, %ecx, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, 28(%rdi)
.LBB1_3:                                # %if.end
	movq	(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rdi)
	movb	%sil, (%rax)
	movq	16(%rdi), %rax
.LBB1_4:                                # %if.end.10
	incq	%rax
	movq	%rax, 16(%rdi)
	retq
.Lfunc_end1:
	.size	WRF_wbyte, .Lfunc_end1-WRF_wbyte
	.cfi_endproc

	.globl	WRF_wtext
	.align	16, 0x90
	.type	WRF_wtext,@function
WRF_wtext:                              # @WRF_wtext
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdx, %rdx
	jle	.LBB2_7
# BB#1:                                 # %while.body.lr.ph
	movq	16(%rdi), %rax
	incq	%rdx
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	8(%rdi), %rax
	jge	.LBB2_6
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movb	(%rsi), %cl
	cmpl	$0, 24(%rdi)
	je	.LBB2_5
# BB#4:                                 # %if.then.1.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	%cl, %r8d
	movzwl	28(%rdi), %r9d
	movl	%r9d, %ecx
	shrl	$8, %ecx
	xorl	%r8d, %ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, 28(%rdi)
.LBB2_5:                                # %if.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%rdi), %r8
	leaq	1(%r8), %rax
	movq	%rax, (%rdi)
	movb	%cl, (%r8)
	movq	16(%rdi), %rax
.LBB2_6:                                # %WRF_wbyte.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	incq	%rsi
	incq	%rax
	movq	%rax, 16(%rdi)
	decq	%rdx
	cmpq	$1, %rdx
	jg	.LBB2_2
.LBB2_7:                                # %while.end
	retq
.Lfunc_end2:
	.size	WRF_wtext, .Lfunc_end2-WRF_wtext
	.cfi_endproc

	.globl	WRF_wstring
	.align	16, 0x90
	.type	WRF_wstring,@function
WRF_wstring:                            # @WRF_wstring
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rsi), %al
	testb	%al, %al
	je	.LBB3_7
# BB#1:                                 # %while.body.lr.ph
	movq	16(%rdi), %rcx
	incq	%rsi
	.align	16, 0x90
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	8(%rdi), %rcx
	jge	.LBB3_6
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$0, 24(%rdi)
	je	.LBB3_5
# BB#4:                                 # %if.then.1.i
                                        #   in Loop: Header=BB3_2 Depth=1
	movzwl	28(%rdi), %ecx
	movl	%ecx, %edx
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	addl	%ecx, %edx
	imull	$52845, %edx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movw	%cx, 28(%rdi)
.LBB3_5:                                # %if.end.i
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%rdi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rdi)
	movb	%al, (%rcx)
	movq	16(%rdi), %rcx
.LBB3_6:                                # %WRF_wbyte.exit
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%rcx
	movq	%rcx, 16(%rdi)
	movb	(%rsi), %al
	incq	%rsi
	testb	%al, %al
	jne	.LBB3_2
.LBB3_7:                                # %while.end
	retq
.Lfunc_end3:
	.size	WRF_wstring, .Lfunc_end3-WRF_wstring
	.cfi_endproc

	.globl	WRF_wfloat
	.align	16, 0x90
	.type	WRF_wfloat,@function
WRF_wfloat:                             # @WRF_wfloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 48
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	movl	$.L.str, %esi
	movb	$1, %al
	callq	gs_sprintf
	movb	(%rsp), %cl
	testb	%cl, %cl
	je	.LBB4_7
# BB#1:                                 # %while.body.lr.ph.i
	movq	16(%rbx), %rdx
	leaq	1(%rsp), %rax
	.align	16, 0x90
.LBB4_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	8(%rbx), %rdx
	jge	.LBB4_6
# BB#3:                                 # %if.then.i.i
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$0, 24(%rbx)
	je	.LBB4_5
# BB#4:                                 # %if.then.1.i.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movzwl	28(%rbx), %edx
	movl	%edx, %esi
	shrl	$8, %esi
	movzbl	%cl, %ecx
	xorl	%esi, %ecx
	movl	%ecx, %esi
	addl	%edx, %esi
	imull	$52845, %esi, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movw	%dx, 28(%rbx)
.LBB4_5:                                # %if.end.i.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rbx)
	movb	%cl, (%rdx)
	movq	16(%rbx), %rdx
.LBB4_6:                                # %WRF_wbyte.exit.i
                                        #   in Loop: Header=BB4_2 Depth=1
	incq	%rdx
	movq	%rdx, 16(%rbx)
	movb	(%rax), %cl
	incq	%rax
	testb	%cl, %cl
	jne	.LBB4_2
.LBB4_7:                                # %WRF_wstring.exit
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	WRF_wfloat, .Lfunc_end4-WRF_wfloat
	.cfi_endproc

	.globl	WRF_wint
	.align	16, 0x90
	.type	WRF_wint,@function
WRF_wint:                               # @WRF_wint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	gs_sprintf
	movb	(%rsp), %cl
	testb	%cl, %cl
	je	.LBB5_7
# BB#1:                                 # %while.body.lr.ph.i
	movq	16(%rbx), %rdx
	leaq	1(%rsp), %rax
	.align	16, 0x90
.LBB5_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	8(%rbx), %rdx
	jge	.LBB5_6
# BB#3:                                 # %if.then.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, 24(%rbx)
	je	.LBB5_5
# BB#4:                                 # %if.then.1.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movzwl	28(%rbx), %edx
	movl	%edx, %esi
	shrl	$8, %esi
	movzbl	%cl, %ecx
	xorl	%esi, %ecx
	movl	%ecx, %esi
	addl	%edx, %esi
	imull	$52845, %esi, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movw	%dx, 28(%rbx)
.LBB5_5:                                # %if.end.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%rbx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rbx)
	movb	%cl, (%rdx)
	movq	16(%rbx), %rdx
.LBB5_6:                                # %WRF_wbyte.exit.i
                                        #   in Loop: Header=BB5_2 Depth=1
	incq	%rdx
	movq	%rdx, 16(%rbx)
	movb	(%rax), %cl
	incq	%rax
	testb	%cl, %cl
	jne	.LBB5_2
.LBB5_7:                                # %WRF_wstring.exit
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	WRF_wint, .Lfunc_end5-WRF_wint
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%ld"
	.size	.L.str.1, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
