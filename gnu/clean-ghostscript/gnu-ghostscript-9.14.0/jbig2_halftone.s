	.text
	.file	"jbig2_halftone.bc"
	.globl	jbig2_hd_new
	.align	16, 0x90
	.type	jbig2_hd_new,@function
jbig2_hd_new:                           # @jbig2_hd_new
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
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r14
	movl	12(%rsi), %r12d
	movl	4(%rsi), %ebp
	movl	8(%rsi), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$24, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_11
# BB#1:                                 # %if.then
	incl	%r12d
	movq	(%r14), %rdi
	movslq	%r12d, %r13
	movl	$8, %edx
	movq	%r13, %rsi
	callq	jbig2_alloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %if.end
	movl	%r12d, (%rbx)
	movl	%ebp, 16(%rbx)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 20(%rbx)
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	jle	.LBB0_12
# BB#4:
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	20(%rsp), %edx          # 4-byte Reload
	callq	jbig2_image_new
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx,%r12,8)
	movq	8(%rbx), %rax
	movq	(%rax,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_6
# BB#10:                                # %if.end.31
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%r14, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%r15d, %ecx
	callq	jbig2_image_compose
	incq	%r12
	subl	%ebp, %r15d
	cmpq	%r13, %r12
	jl	.LBB0_5
	jmp	.LBB0_12
.LBB0_11:                               # %if.else
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB0_12
.LBB0_2:                                # %if.then.6
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	(%r14), %rdi
	jmp	.LBB0_9
.LBB0_6:                                # %if.then.20
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	(%r14), %rdi
	testl	%r12d, %r12d
	jle	.LBB0_9
# BB#7:                                 # %for.body.25.preheader
	movl	%r12d, %r15d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_8:                                # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rax
	movq	(%rax,%rbp,8), %rsi
	callq	jbig2_free
	incq	%rbp
	movq	(%r14), %rdi
	cmpl	%ebp, %r15d
	jne	.LBB0_8
.LBB0_9:                                # %for.end
	movq	%rbx, %rsi
	callq	jbig2_free
	xorl	%ebx, %ebx
.LBB0_12:                               # %cleanup
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_hd_new, .Lfunc_end0-jbig2_hd_new
	.cfi_endproc

	.globl	jbig2_hd_release
	.align	16, 0x90
	.type	jbig2_hd_release,@function
jbig2_hd_release:                       # @jbig2_hd_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r15, %r15
	je	.LBB1_6
# BB#1:                                 # %for.cond.preheader
	movl	(%r15), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB1_5
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rcx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB1_4
# BB#3:                                 # %if.then.2
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	callq	jbig2_image_release
	movl	(%r15), %eax
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB1_2
.LBB1_5:                                # %for.end
	movq	(%r14), %rdi
	movq	8(%r15), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_free              # TAILCALL
.LBB1_6:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	jbig2_hd_release, .Lfunc_end1-jbig2_hd_release
	.cfi_endproc

	.globl	jbig2_pattern_dictionary
	.align	16, 0x90
	.type	jbig2_pattern_dictionary,@function
jbig2_pattern_dictionary:               # @jbig2_pattern_dictionary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 176
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	cmpq	$6, 16(%rsi)
	ja	.LBB2_2
# BB#1:                                 # %if.then
	movl	(%rsi), %edx
	movl	$3, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	callq	jbig2_error
	movl	%eax, %ebx
	jmp	.LBB2_27
.LBB2_2:                                # %if.end
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movzbl	(%rdx), %r12d
	movl	%r12d, %r14d
	andl	$1, %r14d
	movl	%r14d, 60(%rsp)         # 4-byte Spill
	movl	%r14d, 72(%rsp)
	movl	%r12d, %r13d
	shrl	%r13d
	andl	$3, %r13d
	movl	%r13d, 88(%rsp)
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movzbl	1(%rdx), %ebx
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movl	%ebx, 76(%rsp)
	movzbl	2(%rdx), %r15d
	movl	%r15d, 32(%rsp)         # 4-byte Spill
	movl	%r15d, 80(%rsp)
	leaq	3(%rdx), %rdi
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	callq	jbig2_get_uint32
	movl	%eax, %ebp
	movl	%ebp, 84(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	incl	%ebp
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movl	%r15d, 8(%rsp)
	movl	%r13d, %r15d
	movl	%r12d, %r13d
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	%ebx, (%rsp)
	movq	48(%rsp), %rbx          # 8-byte Reload
	movl	$1, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r13d, %r8d
	movl	%ebp, %r9d
	callq	jbig2_error
	testl	%r14d, %r14d
	je	.LBB2_5
# BB#3:                                 # %if.end
	testl	%r15d, %r15d
	je	.LBB2_5
# BB#4:                                 # %if.then.18
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r15d, %r8d
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	jbig2_error
.LBB2_5:                                # %if.end.23
	testb	$-8, %r13b
	je	.LBB2_7
# BB#6:                                 # %if.then.27
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
.LBB2_7:                                # %if.end.30
	movq	%rbx, %r14
	xorl	%ebx, %ebx
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	jne	.LBB2_11
# BB#8:                                 # %if.then.33
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	jbig2_generic_stats_size
	movq	(%r14), %rdi
	movslq	%eax, %rbp
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_9
# BB#10:                                # %if.end.43
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
	movq	64(%rsp), %r12          # 8-byte Reload
.LBB2_11:                               # %if.end.46
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rbp
	movq	16(%rbp), %rbx
	movl	44(%rsp), %r13d         # 4-byte Reload
	movl	28(%rsp), %esi          # 4-byte Reload
	imull	%r13d, %esi
	movq	%r14, %rdi
	movl	32(%rsp), %edx          # 4-byte Reload
	callq	jbig2_image_new
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB2_12
# BB#13:                                # %if.end.i
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	16(%rsp), %rcx          # 8-byte Reload
	addq	$7, %rcx
	addq	$-7, %rbx
	negb	%r13b
	movl	60(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, 96(%rsp)
	movl	%r15d, 100(%rsp)
	movl	$0, 104(%rsp)
	movl	$0, 108(%rsp)
	movb	%r13b, 112(%rsp)
	movl	$50330880, 113(%rsp)    # imm = 0x2FFFD00
	movw	$-258, 117(%rsp)        # imm = 0xFFFFFFFFFFFFFEFE
	movb	$-2, 119(%rsp)
	jne	.LBB2_14
# BB#15:                                # %if.else.i
	movq	%r12, %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	callq	jbig2_word_stream_buf_new
	movq	%rax, %r15
	testq	%r15, %r15
	movq	48(%rsp), %r13          # 8-byte Reload
	je	.LBB2_20
# BB#16:                                # %if.then.25.i
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	jbig2_arith_new
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movq	32(%rsp), %r14          # 8-byte Reload
	je	.LBB2_18
# BB#17:                                # %if.then.29.i
	leaq	96(%rsp), %rdx
	movq	%r12, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r14, %r8
	movq	%r13, %r9
	callq	jbig2_decode_generic_region
	jmp	.LBB2_19
.LBB2_12:                               # %if.then.i
	movl	(%rbp), %edx
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.24, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %r12
	callq	jbig2_error
	movq	48(%rsp), %r13          # 8-byte Reload
	jmp	.LBB2_24
.LBB2_14:                               # %if.then.20.i
	leaq	96(%rsp), %rdx
	movq	%r12, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %r8
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %r9
	callq	jbig2_decode_generic_mmr
	movl	%eax, %ebp
	movq	48(%rsp), %r13          # 8-byte Reload
	jmp	.LBB2_21
.LBB2_9:                                # %if.then.40
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB2_27
.LBB2_20:                               # %if.else.35.i
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$2, %esi
	movl	$.L.str.26, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB2_21
.LBB2_18:                               # %if.else.31.i
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$2, %esi
	movl	$.L.str.25, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB2_19:                               # %if.end.34.i
	movl	%eax, %ebp
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	jbig2_word_stream_buf_free
.LBB2_21:                               # %if.end.39.i
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jne	.LBB2_23
# BB#22:                                # %if.then.42.i
	leaq	72(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	jbig2_hd_new
	movq	%rax, %rbx
.LBB2_23:                               # %if.end.44.i
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	jbig2_image_release
	movq	64(%rsp), %rbp          # 8-byte Reload
.LBB2_24:                               # %jbig2_decode_pattern_dict.exit
	movq	%rbx, 40(%rbp)
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	jne	.LBB2_26
# BB#25:                                # %if.then.53
	movq	(%r12), %rdi
	movq	%r13, %rsi
	callq	jbig2_free
	movq	40(%rbp), %rbx
.LBB2_26:                               # %if.end.55
	cmpq	$1, %rbx
	sbbl	%ebx, %ebx
.LBB2_27:                               # %cleanup.59
	movl	%ebx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jbig2_pattern_dictionary, .Lfunc_end2-jbig2_pattern_dictionary
	.cfi_endproc

	.globl	jbig2_decode_gray_scale_image
	.align	16, 0x90
	.type	jbig2_decode_gray_scale_image,@function
jbig2_decode_gray_scale_image:          # @jbig2_decode_gray_scale_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 128
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %ebx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movl	136(%rsp), %r12d
	movq	$0, 64(%rsp)
	movq	(%r13), %rdi
	movl	$8, %edx
	movq	%r12, %rsi
	callq	jbig2_alloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB3_56
# BB#1:                                 # %for.cond.preheader
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	je	.LBB3_8
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	128(%rsp), %edx
	callq	jbig2_image_new
	movq	%rax, (%r15,%rbp,8)
	testq	%rax, %rax
	je	.LBB3_3
# BB#7:                                 # %for.inc.21
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%rbp
	cmpl	%r12d, %ebp
	jb	.LBB3_2
.LBB3_8:                                # %for.end.22
	movl	160(%rsp), %eax
	movl	144(%rsp), %ecx
	movl	%ebx, 40(%rsp)
	movl	%eax, 44(%rsp)
	movl	$0, 48(%rsp)
	movl	%ecx, 52(%rsp)
	cmpl	$2, %eax
	setl	%al
	orb	$2, %al
	movb	%al, 56(%rsp)
	movl	$50331135, 57(%rsp)     # imm = 0x2FFFDFF
	movw	$-258, 61(%rsp)         # imm = 0xFFFFFFFFFFFFFEFE
	movb	$-2, 63(%rsp)
	testl	%ebx, %ebx
	je	.LBB3_10
# BB#9:                                 # %if.then.41
	leal	-1(%r12), %eax
	movq	(%r15,%rax,8), %r8
	leaq	40(%rsp), %rsi
	leaq	64(%rsp), %r9
	movq	%r13, %rdi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	jbig2_decode_halftone_mmr
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	jmp	.LBB3_15
.LBB3_56:                               # %if.then
	movl	(%rbp), %edx
	xorl	%ebp, %ebp
	movl	$3, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r12d, %r8d
	callq	jbig2_error
	jmp	.LBB3_55
.LBB3_3:                                # %if.then.10
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %r8d
	movl	128(%rsp), %r9d
	callq	jbig2_error
	testl	%ebp, %ebp
	jle	.LBB3_6
# BB#4:                                 # %for.body.16.lr.ph
	movslq	%ebp, %rbp
	incq	%rbp
	.align	16, 0x90
.LBB3_5:                                # %for.body.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%r15,%rbp,8), %rsi
	movq	%r13, %rdi
	callq	jbig2_image_release
	decq	%rbp
	cmpq	$1, %rbp
	jg	.LBB3_5
.LBB3_6:                                # %for.end
	movq	(%r13), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
	xorl	%ebp, %ebp
	jmp	.LBB3_55
.LBB3_10:                               # %if.else
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	jbig2_word_stream_buf_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_11
# BB#12:                                # %if.end.52
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	jbig2_arith_new
	testq	%rax, %rax
	je	.LBB3_13
# BB#14:                                # %if.end.59
	leal	-1(%r12), %ecx
	movq	(%r15,%rcx,8), %r8
	leaq	40(%rsp), %rdx
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	168(%rsp), %r9
	callq	jbig2_decode_generic_region
.LBB3_15:                               # %if.end.64
	testl	%eax, %eax
	je	.LBB3_17
# BB#16:                                # %if.then.67
	movq	%rbp, (%rsp)            # 8-byte Spill
.LBB3_23:                               # %if.then.87
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	movq	%r15, %rbx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	xorl	%ebp, %ebp
	movl	$3, %esi
	movl	$.L.str.12, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
.LBB3_49:                               # %cleanup
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	movq	%rbx, %r15
	movl	136(%rsp), %r12d
	jne	.LBB3_51
	jmp	.LBB3_50
.LBB3_17:                               # %if.end.70
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	%r12d, %eax
	addl	$-2, %eax
	movq	8(%rsp), %r12           # 8-byte Reload
	js	.LBB3_30
# BB#18:                                # %while.body.lr.ph
	movslq	%eax, %rbp
	.align	16, 0x90
.LBB3_19:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	movq	(%r15,%rbp,8), %r8
	testl	%ebx, %ebx
	je	.LBB3_21
# BB#20:                                # %if.then.75
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	64(%rsp), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	movq	32(%rsp), %rcx          # 8-byte Reload
	subq	%rax, %rcx
	movq	%r13, %rdi
	leaq	40(%rsp), %rsi
	leaq	64(%rsp), %r9
	callq	jbig2_decode_halftone_mmr
	jmp	.LBB3_22
	.align	16, 0x90
.LBB3_21:                               # %if.else.80
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	40(%rsp), %rdx
	movq	%r12, %rcx
	movq	168(%rsp), %r9
	callq	jbig2_decode_generic_region
.LBB3_22:                               # %if.end.84
                                        #   in Loop: Header=BB3_19 Depth=1
	testl	%eax, %eax
	jne	.LBB3_23
# BB#24:                                # %if.end.90
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	(%r15), %rax
	movl	8(%rax), %eax
	imull	128(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_29
# BB#25:                                # %for.body.96.lr.ph
                                        #   in Loop: Header=BB3_19 Depth=1
	testb	$1, %al
	movl	$0, %ecx
	je	.LBB3_27
# BB#26:                                # %for.body.96.prol
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	8(%r15,%rbp,8), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx), %cl
	movq	(%r15,%rbp,8), %rdx
	movq	16(%rdx), %rdx
	xorb	%cl, (%rdx)
	movl	$1, %ecx
.LBB3_27:                               # %for.body.96.lr.ph.split
                                        #   in Loop: Header=BB3_19 Depth=1
	cmpl	$1, %eax
	je	.LBB3_29
	.align	16, 0x90
.LBB3_28:                               # %for.body.96
                                        #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r15,%rbp,8), %rdx
	movq	16(%rdx), %rdx
	movb	(%rdx,%rcx), %dl
	movq	(%r15,%rbp,8), %rsi
	movq	16(%rsi), %rsi
	xorb	%dl, (%rsi,%rcx)
	movq	8(%r15,%rbp,8), %rdx
	movq	16(%rdx), %rdx
	movb	1(%rdx,%rcx), %dl
	movq	(%r15,%rbp,8), %rsi
	movq	16(%rsi), %rsi
	xorb	%dl, 1(%rsi,%rcx)
	addq	$2, %rcx
	cmpl	%ecx, %eax
	jne	.LBB3_28
.LBB3_29:                               # %for.end.112
                                        #   in Loop: Header=BB3_19 Depth=1
	testq	%rbp, %rbp
	leaq	-1(%rbp), %rbp
	jg	.LBB3_19
.LBB3_30:                               # %while.end
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	movq	%r15, %rbx
	movq	(%r13), %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	callq	jbig2_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_38
# BB#31:                                # %for.cond.123.preheader
	testl	%r14d, %r14d
	movl	%r14d, %eax
	je	.LBB3_49
# BB#32:                                # %for.body.126.lr.ph
	movl	128(%rsp), %r12d
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	.align	16, 0x90
.LBB3_33:                               # %for.body.126
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	callq	jbig2_alloc
	movq	%rax, (%rbp,%r14,8)
	testq	%rax, %rax
	je	.LBB3_34
# BB#39:                                # %for.inc.153
                                        #   in Loop: Header=BB3_33 Depth=1
	incq	%r14
	cmpl	%r15d, %r14d
	jb	.LBB3_33
# BB#40:                                # %for.cond.156.preheader
	testl	%r15d, %r15d
	movl	%r15d, 16(%rsp)         # 4-byte Spill
	je	.LBB3_49
# BB#41:                                # %for.cond.160.preheader.lr.ph
	movl	136(%rsp), %eax
	movl	%eax, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB3_42:                               # %for.cond.160.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_46 Depth 3
	movq	%r13, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 128(%rsp)
	je	.LBB3_48
# BB#43:                                # %for.body.163.lr.ph
                                        #   in Loop: Header=BB3_42 Depth=1
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB3_44:                               # %for.body.163
                                        #   Parent Loop BB3_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_46 Depth 3
	movl	136(%rsp), %eax
	testl	%eax, %eax
	movq	(%rbp,%r12,8), %rax
	movb	$0, (%rax,%r13)
	je	.LBB3_47
# BB#45:                                # %for.body.171.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_46:                               # %for.body.171
                                        #   Parent Loop BB3_42 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rbx,%r14,8), %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movb	%r14b, %cl
	shll	%cl, %eax
	movq	(%rbp,%r12,8), %rcx
	movzbl	(%rcx,%r13), %edx
	addl	%eax, %edx
	movb	%dl, (%rcx,%r13)
	incq	%r14
	cmpl	%r14d, %r15d
	jne	.LBB3_46
.LBB3_47:                               # %for.inc.185
                                        #   in Loop: Header=BB3_44 Depth=2
	incq	%r13
	cmpl	128(%rsp), %r13d
	jne	.LBB3_44
.LBB3_48:                               # %for.inc.188
                                        #   in Loop: Header=BB3_42 Depth=1
	incq	%r12
	cmpl	16(%rsp), %r12d         # 4-byte Folded Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	jne	.LBB3_42
	jmp	.LBB3_49
.LBB3_11:                               # %if.then.49
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.10, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	xorl	%eax, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB3_50
.LBB3_13:                               # %if.then.56
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	xorl	%ebp, %ebp
.LBB3_50:                               # %if.then.192
	movq	(%r13), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	jbig2_free
	movq	%r13, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	jbig2_word_stream_buf_free
.LBB3_51:                               # %for.cond.195.preheader
	testl	%r12d, %r12d
	je	.LBB3_54
# BB#52:
	movq	%r15, %rbx
	.align	16, 0x90
.LBB3_53:                               # %for.body.198
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movq	%r13, %rdi
	callq	jbig2_image_release
	addq	$8, %rbx
	decl	%r12d
	jne	.LBB3_53
.LBB3_54:                               # %for.end.203
	movq	(%r13), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
.LBB3_55:                               # %cleanup.205
	movq	%rbp, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_38:                               # %if.then.119
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %r8d
	callq	jbig2_error
	jmp	.LBB3_49
.LBB3_34:                               # %if.then.136
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	128(%rsp), %r8d
	imull	%r15d, %r8d
	movl	$3, %esi
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	movq	(%r13), %rdi
	testl	%r14d, %r14d
	jle	.LBB3_37
# BB#35:                                # %for.body.144.lr.ph
	movslq	%r14d, %r14
	incq	%r14
	.align	16, 0x90
.LBB3_36:                               # %for.body.144
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp,%r14,8), %rsi
	callq	jbig2_free
	movq	(%r13), %rdi
	decq	%r14
	cmpq	$1, %r14
	jg	.LBB3_36
.LBB3_37:                               # %for.end.150
	movq	%rbp, %rsi
	callq	jbig2_free
	xorl	%ebp, %ebp
	jmp	.LBB3_49
.Lfunc_end3:
	.size	jbig2_decode_gray_scale_image, .Lfunc_end3-jbig2_decode_gray_scale_image
	.cfi_endproc

	.globl	jbig2_decode_ht_region_get_hpats
	.align	16, 0x90
	.type	jbig2_decode_ht_region_get_hpats,@function
jbig2_decode_ht_region_get_hpats:       # @jbig2_decode_ht_region_get_hpats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -40
.Ltmp51:
	.cfi_offset %r12, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	xorl	%r14d, %r14d
	cmpl	$0, 24(%r12)
	jle	.LBB4_7
# BB#1:                                 # %while.body.lr.ph
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r12), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%r15, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB4_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movb	4(%rax), %cl
	andb	$63, %cl
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB4_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.LBB4_5
.LBB4_6:                                # %if.end.7
                                        #   in Loop: Header=BB4_2 Depth=1
	incq	%rbx
	movslq	24(%r12), %rax
	cmpq	%rbx, %rax
	jg	.LBB4_2
	jmp	.LBB4_7
.LBB4_5:                                # %if.then.5
	movq	%rax, %r14
.LBB4_7:                                # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	jbig2_decode_ht_region_get_hpats, .Lfunc_end4-jbig2_decode_ht_region_get_hpats
	.cfi_endproc

	.globl	jbig2_decode_halftone_region
	.align	16, 0x90
	.type	jbig2_decode_halftone_region,@function
jbig2_decode_halftone_region:           # @jbig2_decode_halftone_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 160
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	16(%r9), %rdi
	movl	40(%rbx), %esi
	movslq	4(%r9), %rax
	movslq	8(%r9), %rdx
	imulq	%rax, %rdx
	callq	memset
	cmpl	$1, 32(%rbx)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.14, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
.LBB5_2:                                # %if.end
	cmpl	$0, 24(%r14)
	jle	.LBB5_8
# BB#3:                                 # %while.body.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movl	(%rax,%rbp,4), %esi
	movq	%r13, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB5_7
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movb	4(%rax), %cl
	andb	$63, %cl
	movzbl	%cl, %ecx
	cmpl	$16, %ecx
	jne	.LBB5_7
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_10
.LBB5_7:                                # %if.end.7.i
                                        #   in Loop: Header=BB5_4 Depth=1
	incq	%rbp
	movslq	24(%r14), %rax
	cmpq	%rbp, %rax
	jg	.LBB5_4
.LBB5_8:                                # %if.then.5
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.15, %ecx
.LBB5_9:                                # %cleanup
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	movl	$-1, %r14d
.LBB5_29:                               # %cleanup
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_10:                               # %if.end.8
	movl	(%rax), %edx
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%eax, %edx
	ja	.LBB5_11
# BB#12:                                # %while.end
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	24(%rbx), %r8d
	movl	4(%rbx), %r9d
	movl	8(%rbx), %eax
	movl	32(%rbx), %edx
	movl	28(%rbx), %esi
	movq	160(%rsp), %rdi
	movq	%rdi, 40(%rsp)
	movl	%esi, 32(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	jbig2_decode_gray_scale_image
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB5_17
# BB#13:                                # %for.cond.preheader
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movl	8(%rbx), %ecx
	testl	%ecx, %ecx
	movq	72(%rsp), %rax          # 8-byte Reload
	je	.LBB5_14
# BB#18:                                # %for.cond.21.preheader.lr.ph
	leal	255(%rax), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	4(%rbx), %eax
	movl	%eax, %edx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_19:                               # %for.cond.21.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	testl	%edx, %edx
	movl	$0, %edx
	je	.LBB5_25
# BB#20:                                # %for.body.25.lr.ph
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	%r13d, %r14d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_21:                               # %for.body.25
                                        #   Parent Loop BB5_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	22(%rbx), %eax
	movl	%eax, %ecx
	imull	%r13d, %ecx
	addl	12(%rbx), %ecx
	movzwl	20(%rbx), %edx
	movl	%edx, %ebp
	imull	%r12d, %ebp
	addl	%ecx, %ebp
	shrl	$8, %ebp
	movl	16(%rbx), %r15d
	imull	%r13d, %edx
	imull	%r12d, %eax
	subl	%eax, %r15d
	addl	%edx, %r15d
	shrl	$8, %r15d
	movl	%r12d, %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movb	(%rax,%r14), %al
	movzbl	%al, %r8d
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r8d
	jb	.LBB5_23
# BB#22:                                # %if.then.44
                                        #   in Loop: Header=BB5_21 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	$2, %esi
	movl	$.L.str.17, %ecx
	xorl	%eax, %eax
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	jbig2_error
	movl	52(%rsp), %eax          # 4-byte Reload
.LBB5_23:                               # %if.end.50
                                        #   in Loop: Header=BB5_21 Depth=2
	movzbl	%al, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdx
	movl	36(%rbx), %r9d
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	callq	jbig2_image_compose
	incl	%r12d
	movl	4(%rbx), %eax
	cmpl	%eax, %r12d
	jb	.LBB5_21
# BB#24:                                # %for.cond.21.for.inc.55_crit_edge
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	8(%rbx), %ecx
	movl	%eax, %edx
.LBB5_25:                               # %for.inc.55
                                        #   in Loop: Header=BB5_19 Depth=1
	incl	%r13d
	cmpl	%ecx, %r13d
	jb	.LBB5_19
	jmp	.LBB5_15
.LBB5_17:                               # %if.then.14
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.16, %ecx
	jmp	.LBB5_9
.LBB5_14:                               # %for.cond.preheader.for.cond.58.preheader_crit_edge
	movl	4(%rbx), %eax
.LBB5_15:                               # %for.cond.58.preheader
	xorl	%r14d, %r14d
	testl	%eax, %eax
	movq	96(%rsp), %r15          # 8-byte Reload
	movq	(%r15), %rdi
	je	.LBB5_16
# BB#26:
	xorl	%ebp, %ebp
	movq	80(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB5_27:                               # %for.body.62
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbp,8), %rsi
	callq	jbig2_free
	incq	%rbp
	movq	(%r15), %rdi
	cmpl	4(%rbx), %ebp
	jb	.LBB5_27
	jmp	.LBB5_28
.LBB5_16:
	movq	80(%rsp), %r12          # 8-byte Reload
.LBB5_28:                               # %for.end.67
	movq	%r12, %rsi
	callq	jbig2_free
	jmp	.LBB5_29
.Lfunc_end5:
	.size	jbig2_decode_halftone_region, .Lfunc_end5-jbig2_decode_halftone_region
	.cfi_endproc

	.globl	jbig2_halftone_region
	.align	16, 0x90
	.type	jbig2_halftone_region,@function
jbig2_halftone_region:                  # @jbig2_halftone_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 208
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpq	$17, 16(%r12)
	jb	.LBB6_17
# BB#1:                                 # %if.end
	leaq	128(%rsp), %rdi
	movq	%r15, %rsi
	callq	jbig2_get_region_segment_info
	cmpq	$18, 16(%r12)
	jb	.LBB6_17
# BB#2:                                 # %if.end.4
	movzbl	17(%r15), %eax
	movb	%al, 80(%rsp)
	movl	%eax, %ebx
	andl	$1, %ebx
	movl	%ebx, 104(%rsp)
	movl	%eax, %r13d
	shrl	%r13d
	andl	$3, %r13d
	movl	%r13d, 108(%rsp)
	movl	%eax, %ebp
	shrl	$3, %ebp
	andl	$1, %ebp
	movl	%ebp, 112(%rsp)
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$7, %ecx
	movl	%ecx, 116(%rsp)
	movl	%eax, %ecx
	shrl	$7, %ecx
	movl	%ecx, 120(%rsp)
	movl	(%r12), %edx
	movl	128(%rsp), %r8d
	movl	132(%rsp), %r9d
	movl	136(%rsp), %ecx
	movl	140(%rsp), %esi
	movl	%eax, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	$1, %esi
	movl	$.L.str.18, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	testl	%ebx, %ebx
	je	.LBB6_7
# BB#3:                                 # %land.lhs.true
	testl	%r13d, %r13d
	je	.LBB6_5
# BB#4:                                 # %if.then.27
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.19, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r13d, %r8d
	movl	%ebx, %r9d
	callq	jbig2_error
.LBB6_5:                                # %land.lhs.true.35
	testl	%ebp, %ebp
	je	.LBB6_7
# BB#6:                                 # %if.then.38
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.20, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	jbig2_error
.LBB6_7:                                # %if.end.43
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	movq	16(%r12), %rax
	addq	$-18, %rax
	cmpq	$16, %rax
	jb	.LBB6_17
# BB#8:                                 # %if.end.49
	leaq	18(%r15), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	%eax, 84(%rsp)
	leaq	22(%r15), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	%eax, 88(%rsp)
	leaq	26(%r15), %rdi
	callq	jbig2_get_int32
	movl	%eax, %ebp
	movl	%ebp, 92(%rsp)
	leaq	30(%r15), %rdi
	callq	jbig2_get_int32
	movl	%eax, %ebx
	movl	%ebx, 96(%rsp)
	movq	16(%r12), %rax
	addq	$-34, %rax
	cmpq	$4, %rax
	jae	.LBB6_9
.LBB6_17:                               # %too_short
	movl	(%r12), %edx
	movl	$3, %esi
	movl	$.L.str.3, %ecx
.LBB6_18:                               # %cleanup.148
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebx
.LBB6_19:                               # %cleanup.148
	movl	%ebx, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_9:                                # %if.end.70
	leaq	34(%r15), %rdi
	callq	jbig2_get_uint16
	movw	%ax, 66(%rsp)           # 2-byte Spill
	movw	%ax, 100(%rsp)
	leaq	36(%r15), %rdi
	callq	jbig2_get_uint16
	movw	%ax, 102(%rsp)
	movl	(%r12), %edx
	movl	%ebp, %ecx
	sarl	$8, %ecx
	movzbl	%bpl, %r8d
	movl	%ebx, %edi
	sarl	$8, %edi
	movzbl	%bl, %r9d
	movzwl	66(%rsp), %esi          # 2-byte Folded Reload
	movzbl	%sil, %r10d
	shrl	$8, %esi
	movzwl	%ax, %eax
	movzbl	%al, %ebp
	shrl	$8, %eax
	movl	%ebp, 56(%rsp)
	movl	%eax, 48(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%esi, 32(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%edi, 16(%rsp)
	movl	%r8d, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.21, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	72(%rsp), %r8d          # 4-byte Reload
	movl	68(%rsp), %r9d          # 4-byte Reload
	callq	jbig2_error
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	jne	.LBB6_12
# BB#10:                                # %if.then.105
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	jbig2_generic_stats_size
	movq	(%r14), %rdi
	movslq	%eax, %rbp
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB6_20
# BB#11:                                # %cleanup.thread
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
.LBB6_12:                               # %if.end.118
	movl	128(%rsp), %esi
	movl	132(%rsp), %edx
	movq	%r14, %rdi
	callq	jbig2_image_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_13
# BB#14:                                # %if.end.128
	addq	$38, %r15
	movq	16(%r12), %r8
	addq	$-38, %r8
	movq	%rbx, (%rsp)
	leaq	80(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	movq	%rbp, %r9
	callq	jbig2_decode_halftone_region
	movq	%rbx, %rsi
	movl	%eax, %ebx
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	jne	.LBB6_16
# BB#15:                                # %if.then.137
	movq	(%r14), %rdi
	callq	jbig2_free
.LBB6_16:                               # %if.end.139
	movslq	96(%r14), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$4, %rsi
	addq	104(%r14), %rsi
	movl	136(%rsp), %ecx
	movl	140(%rsp), %r8d
	movl	144(%rsp), %r9d
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	jbig2_page_add_result
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	jbig2_image_release
	jmp	.LBB6_19
.LBB6_13:                               # %if.then.124
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	movl	(%r12), %edx
	movl	$2, %esi
	movl	$.L.str.23, %ecx
	jmp	.LBB6_18
.LBB6_20:                               # %cleanup
	movl	(%r12), %edx
	movl	$3, %esi
	movl	$.L.str.22, %ecx
	jmp	.LBB6_18
.Lfunc_end6:
	.size	jbig2_halftone_region, .Lfunc_end6-jbig2_halftone_region
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate pattern in collective bitmap dictionary"
	.size	.L.str, 59

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"failed to allocate pattern element image"
	.size	.L.str.1, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"failed to allocate collective bitmap dictionary"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Segment too short"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pattern dictionary, flags=%02x, %d grays (%dx%d cell)"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"HDTEMPLATE is %d when HDMMR is %d, contrary to spec"
	.size	.L.str.5, 52

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Reserved flag bits non-zero"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"failed to allocate GB_stats in pattern dictionary"
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"failed to allocate %d bytes for GSPLANES"
	.size	.L.str.8, 41

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"failed to allocate %dx%d image for GSPLANES"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"failed to allocate ws in jbig2_decode_gray_scale_image"
	.size	.L.str.10, 55

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"failed to allocate as in jbig2_decode_gray_scale_image"
	.size	.L.str.11, 55

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"error decoding GSPLANES for halftone image"
	.size	.L.str.12, 43

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"failed to allocate GSVALS: %d bytes"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unhandled option HENABLESKIP"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"no pattern dictionary found, skipping halftone image"
	.size	.L.str.15, 53

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"unable to acquire gray-scale image, skipping halftone image"
	.size	.L.str.16, 60

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gray-scale image uses value %d which larger than pattern dictionary"
	.size	.L.str.17, 68

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"halftone region: %d x %d @ (%x,%d) flags=%02x"
	.size	.L.str.18, 46

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"HTEMPLATE is %d when HMMR is %d, contrary to spec"
	.size	.L.str.19, 50

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"HENABLESKIP is %d when HMMR is %d, contrary to spec"
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	" grid %d x %d @ (%d.%d,%d.%d) vector (%d.%d,%d.%d)"
	.size	.L.str.21, 51

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"failed to allocate GB_stats in halftone region"
	.size	.L.str.22, 47

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unable to allocate halftone image"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"failed to allocate collective bitmap for halftone dict!"
	.size	.L.str.24, 56

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"failed to allocate storage for as in halftone dict!"
	.size	.L.str.25, 52

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"failed to allocate storage for ws in halftone dict!"
	.size	.L.str.26, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
