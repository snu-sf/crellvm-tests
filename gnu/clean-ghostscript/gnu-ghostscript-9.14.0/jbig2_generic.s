	.text
	.file	"jbig2_generic.bc"
	.globl	jbig2_generic_stats_size
	.align	16, 0x90
	.type	jbig2_generic_stats_size,@function
jbig2_generic_stats_size:               # @jbig2_generic_stats_size
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, %esi
	movl	$16384, %eax            # imm = 0x4000
	movl	$1024, %ecx             # imm = 0x400
	cmovel	%eax, %ecx
	testl	%esi, %esi
	movl	$65536, %eax            # imm = 0x10000
	cmovnel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	jbig2_generic_stats_size, .Lfunc_end0-jbig2_generic_stats_size
	.cfi_endproc

	.globl	jbig2_decode_generic_region
	.align	16, 0x90
	.type	jbig2_decode_generic_region,@function
jbig2_decode_generic_region:            # @jbig2_decode_generic_region
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
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
	movq	%r9, 120(%rsp)          # 8-byte Spill
	movq	%r8, %r12
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movslq	8(%r12), %r14
	movl	4(%r12), %edx
	movl	%edx, %r9d
	imull	%r14d, %r9d
	cmpl	$16777217, %r9d         # imm = 0x1000001
	jl	.LBB1_2
# BB#1:                                 # %land.lhs.true
	movq	16(%rbx), %r8
	movl	%r9d, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%r9), %eax
	sarl	$8, %eax
	cltq
	cmpq	%rax, %r8
	jae	.LBB1_2
# BB#184:                               # %if.then
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.LBB1_2:                                # %if.end
	cmpl	$0, (%r13)
	jne	.LBB1_3
# BB#4:                                 # %land.lhs.true.11
	cmpl	$0, 8(%r13)
	movl	4(%r13), %eax
	movl	%eax, %ecx
	je	.LBB1_67
# BB#5:                                 # %if.then.13
	cmpl	$3, %eax
	jbe	.LBB1_7
# BB#6:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_67:                               # %land.lhs.true.18
	cmpl	$3, %eax
	jbe	.LBB1_68
.LBB1_3:                                # %for.cond.preheader
	movl	(%rbx), %edx
	movsbl	16(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	17(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$1, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	18(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$2, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	19(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$3, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	20(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$4, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	21(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$5, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	22(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$6, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movsbl	23(%r13), %r9d
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	movl	$7, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	(%rbx), %edx
	movl	(%r13), %r8d
	movl	4(%r13), %r9d
	movl	$2, %esi
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movl	$-1, %eax
.LBB1_66:                               # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_7:                                # %if.then.13
	movq	%r13, 104(%rsp)         # 8-byte Spill
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_8:                                # %sw.bb.i
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#9:                                 # %for.body.lr.ph.i.i
	movl	(%r12), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	39717(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
.LBB1_10:                               # %for.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_11
# BB#12:                                # %if.end.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	%eax, %ebx
	movl	%eax, 24(%rsp)          # 4-byte Spill
	jne	.LBB1_18
# BB#13:                                # %for.cond.3.preheader.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	movq	%r12, %r15
	jle	.LBB1_22
# BB#14:                                # %for.body.5.lr.ph.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	leal	-1(%rbp), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	leal	-2(%rbp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	$2, %r13d
	.align	16, 0x90
.LBB1_15:                               # %for.body.5.i.i
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r13), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	leal	-3(%r13), %esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	leal	-4(%r13), %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	addl	%ebp, %ebp
	orl	%ebx, %ebp
	leal	-5(%r13), %esi
	movq	%r15, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$2, %ebx
	orl	%ebp, %ebx
	leal	-6(%r13), %esi
	movq	%r15, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$3, %ebp
	orl	%ebx, %ebp
	movq	104(%rsp), %r12         # 8-byte Reload
	movsbl	17(%r12), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movsbl	16(%r12), %eax
	leal	-2(%r13,%rax), %esi
	movq	%r15, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	48(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$5, %ebp
	orl	%ebx, %ebp
	leal	-1(%r13), %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$6, %ebx
	orl	%ebp, %ebx
	movq	%r15, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$7, %ebp
	orl	%ebx, %ebp
	movq	%r15, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movq	%r15, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$9, %ebp
	orl	%ebx, %ebp
	movsbl	19(%r12), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movsbl	18(%r12), %eax
	leal	-2(%r13,%rax), %esi
	movq	%r15, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$10, %ebx
	orl	%ebp, %ebx
	movsbl	21(%r12), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movsbl	20(%r12), %eax
	leal	-2(%r13,%rax), %esi
	movq	%r15, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$11, %ebp
	orl	%ebx, %ebp
	movq	%r15, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	movl	40(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$12, %ebx
	orl	%ebp, %ebx
	movq	%r15, %rdi
	movl	88(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$13, %ebp
	orl	%ebx, %ebp
	movq	%r15, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$14, %ebx
	orl	%ebp, %ebx
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	movsbl	23(%rax), %edx
	addl	%ebp, %edx
	movsbl	22(%rax), %eax
	leal	-2(%r13,%rax), %esi
	movq	%r15, %rdi
	callq	jbig2_image_get_pixel
	shll	$15, %eax
	orl	%ebx, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_16
# BB#17:                                # %if.end.101.i.i
                                        #   in Loop: Header=BB1_15 Depth=2
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	incl	%r13d
	movl	80(%rsp), %eax          # 4-byte Reload
	cmpl	56(%rsp), %eax          # 4-byte Folded Reload
	jl	.LBB1_15
	jmp	.LBB1_22
.LBB1_18:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	movq	16(%r12), %rax
	movslq	8(%r12), %rdx
	testl	%ebp, %ebp
	je	.LBB1_19
# BB#20:                                # %if.else.i.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	leal	-1(%rbp), %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	leaq	(%rax,%rdx), %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB1_21
.LBB1_19:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB1_21:                               # %for.inc.104.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	%r12, %r15
.LBB1_22:                               # %for.inc.104.i.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	32(%rsp), %ebx          # 4-byte Reload
	xorl	24(%rsp), %ebx          # 4-byte Folded Reload
	incl	%ebp
	xorl	%eax, %eax
	cmpl	68(%rsp), %ebp          # 4-byte Folded Reload
	movq	%r15, %r12
	jl	.LBB1_10
	jmp	.LBB1_66
.LBB1_68:                               # %land.lhs.true.18
	jmpq	*.LJTI1_1(,%rcx,8)
.LBB1_69:                               # %if.then.21
	movzbl	16(%r13), %eax
	cmpl	$3, %eax
	jne	.LBB1_100
# BB#70:                                # %land.lhs.true.25
	movzbl	17(%r13), %eax
	cmpl	$255, %eax
	jne	.LBB1_100
# BB#71:                                # %land.lhs.true.30
	movzbl	18(%r13), %eax
	cmpl	$253, %eax
	jne	.LBB1_100
# BB#72:                                # %land.lhs.true.35
	movzbl	19(%r13), %eax
	cmpl	$255, %eax
	jne	.LBB1_100
# BB#73:                                # %land.lhs.true.40
	movzbl	20(%r13), %eax
	cmpl	$2, %eax
	jne	.LBB1_100
# BB#74:                                # %land.lhs.true.45
	movzbl	21(%r13), %eax
	cmpl	$254, %eax
	jne	.LBB1_100
# BB#75:                                # %land.lhs.true.50
	movzbl	22(%r13), %eax
	cmpl	$254, %eax
	jne	.LBB1_100
# BB#76:                                # %land.lhs.true.55
	movzbl	23(%r13), %eax
	cmpl	$254, %eax
	jne	.LBB1_100
# BB#77:                                # %if.then.60
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movl	(%r12), %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB1_66
# BB#78:                                # %if.then.60
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movq	%r12, %rcx
	jle	.LBB1_66
# BB#79:                                # %for.body.lr.ph.i
	movl	%r14d, %eax
	negl	%eax
	movq	16(%rcx), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	leal	7(%rcx), %ecx
	andl	$-8, %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	cltq
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	(%r14,%r14), %eax
	movl	$1, %ecx
	subl	%eax, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	negl	%eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %eax
	subl	%r14d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
.LBB1_80:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_86 Depth 2
                                        #       Child Loop BB1_95 Depth 3
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	jle	.LBB1_84
# BB#81:                                # %cond.end.i
                                        #   in Loop: Header=BB1_80 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	cmpl	$2, 80(%rsp)            # 4-byte Folded Reload
	jl	.LBB1_82
# BB#83:                                # %cond.true.5.i
                                        #   in Loop: Header=BB1_80 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	shll	$6, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movb	$1, %al
	movl	%eax, 56(%rsp)          # 4-byte Spill
	jmp	.LBB1_84
.LBB1_82:                               #   in Loop: Header=BB1_80 Depth=1
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
.LBB1_84:                               # %cond.end.12.i
                                        #   in Loop: Header=BB1_80 Depth=1
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_99
# BB#85:                                # %for.body.19.lr.ph.i
                                        #   in Loop: Header=BB1_80 Depth=1
	movl	104(%rsp), %eax         # 4-byte Reload
	andl	$63488, %eax            # imm = 0xF800
	movl	112(%rsp), %r15d        # 4-byte Reload
	andl	$240, %r15d
	orl	%eax, %r15d
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
.LBB1_86:                               # %for.body.19.i
                                        #   Parent Loop BB1_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_95 Depth 3
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	movq	96(%rsp), %rax          # 8-byte Reload
	subl	%eax, %ebp
	cmpl	$8, %ebp
	movl	$8, %eax
	cmovgl	%eax, %ebp
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_90
# BB#87:                                # %if.then.30.i
                                        #   in Loop: Header=BB1_86 Depth=2
	shll	$8, 112(%rsp)           # 4-byte Folded Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	8(%rax), %ecx
	xorl	%eax, %eax
	movq	88(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB1_89
# BB#88:                                # %cond.true.35.i
                                        #   in Loop: Header=BB1_86 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	sarl	$3, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movq	72(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
.LBB1_89:                               # %cond.end.43.i
                                        #   in Loop: Header=BB1_86 Depth=2
	orl	%eax, 112(%rsp)         # 4-byte Folded Spill
.LBB1_90:                               # %if.end.46.i
                                        #   in Loop: Header=BB1_86 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	je	.LBB1_94
# BB#91:                                # %if.then.49.i
                                        #   in Loop: Header=BB1_86 Depth=2
	shll	$8, 104(%rsp)           # 4-byte Folded Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	8(%rax), %ecx
	xorl	%eax, %eax
	movq	88(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB1_93
# BB#92:                                # %cond.true.54.i
                                        #   in Loop: Header=BB1_86 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	sarl	$3, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movq	72(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	shll	$6, %eax
.LBB1_93:                               # %cond.end.65.i
                                        #   in Loop: Header=BB1_86 Depth=2
	orl	%eax, 104(%rsp)         # 4-byte Folded Spill
.LBB1_94:                               # %if.end.68.i
                                        #   in Loop: Header=BB1_86 Depth=2
	xorl	%r13d, %r13d
	movl	$7, %ebx
	testl	%ebp, %ebp
	movl	$0, %r12d
	jle	.LBB1_98
.LBB1_95:                               # %for.body.72.i
                                        #   Parent Loop BB1_80 Depth=1
                                        #     Parent Loop BB1_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r15d, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	%eax, %edx
	movl	$-1, %eax
	testl	%edx, %edx
	js	.LBB1_66
# BB#96:                                # %for.inc.i
                                        #   in Loop: Header=BB1_95 Depth=3
	movl	%edx, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movzbl	%r12b, %r12d
	orl	%eax, %r12d
	addl	%r15d, %r15d
	movl	%r15d, %eax
	andl	$63470, %eax            # imm = 0xF7EE
	movl	112(%rsp), %esi         # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %esi
	andl	$16, %esi
	movl	104(%rsp), %r15d        # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %r15d
	andl	$2048, %r15d            # imm = 0x800
	orl	%esi, %r15d
	orl	%edx, %r15d
	orl	%eax, %r15d
	incl	%r13d
	decl	%ebx
	cmpl	%ebp, %r13d
	jl	.LBB1_95
# BB#97:                                # %for.cond.69.for.inc.103_crit_edge.i
                                        #   in Loop: Header=BB1_86 Depth=2
	movb	%r12b, %r13b
.LBB1_98:                               # %for.inc.103.i
                                        #   in Loop: Header=BB1_86 Depth=2
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	%r13b, (%rcx,%rax)
	addl	$8, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	cmpl	48(%rsp), %edx          # 4-byte Folded Reload
	jl	.LBB1_86
.LBB1_99:                               # %for.inc.112.i
                                        #   in Loop: Header=BB1_80 Depth=1
	addq	%r14, 72(%rsp)          # 8-byte Folded Spill
	movl	80(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	cmpl	68(%rsp), %ecx          # 4-byte Folded Reload
	jl	.LBB1_80
	jmp	.LBB1_66
.LBB1_23:                               # %sw.bb.1.i
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#24:                                # %for.body.lr.ph.i.7.i
	movl	(%r12), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	1941(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB1_25:                               # %for.body.i.12.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_26
# BB#27:                                # %if.end.i.15.i
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	%eax, %ebx
	movl	%eax, 32(%rsp)          # 4-byte Spill
	jne	.LBB1_33
# BB#28:                                # %for.cond.3.preheader.i.16.i
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_36
# BB#29:                                # %for.body.5.lr.ph.i.17.i
                                        #   in Loop: Header=BB1_25 Depth=1
	leal	-1(%r15), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	leal	-2(%r15), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_30:                               # %for.body.5.i.36.i
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%r14), %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	leal	-2(%r14), %esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	addl	%ebx, %ebx
	orl	%ebp, %ebx
	leal	-3(%r14), %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$2, %ebp
	orl	%ebx, %ebp
	movq	104(%rsp), %rax         # 8-byte Reload
	movsbl	17(%rax), %edx
	addl	%r15d, %edx
	movsbl	16(%rax), %eax
	leal	(%rax,%r14), %esi
	movq	%r12, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$3, %ebx
	orl	%ebp, %ebx
	leal	2(%r14), %esi
	movl	%esi, 88(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	56(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$4, %ebp
	orl	%ebx, %ebp
	leal	1(%r14), %r13d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$5, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$6, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	112(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$7, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$8, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$9, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$10, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$11, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	112(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	shll	$12, %eax
	orl	%ebx, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_31
# BB#32:                                # %if.end.69.i.i
                                        #   in Loop: Header=BB1_30 Depth=2
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	cmpl	72(%rsp), %r13d         # 4-byte Folded Reload
	movl	%r13d, %r14d
	movq	%rbx, %r15
	jl	.LBB1_30
	jmp	.LBB1_36
.LBB1_33:                               # %if.else.i.39.i
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	16(%r12), %rax
	movslq	8(%r12), %rdx
	testl	%r15d, %r15d
	je	.LBB1_34
# BB#35:                                # %if.else.i.i.50.i
                                        #   in Loop: Header=BB1_25 Depth=1
	leal	-1(%r15), %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	leaq	(%rax,%rdx), %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB1_36
.LBB1_34:                               # %if.then.i.i.42.i
                                        #   in Loop: Header=BB1_25 Depth=1
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB1_36:                               # %for.inc.72.i.i
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	40(%rsp), %ebx          # 4-byte Reload
	xorl	32(%rsp), %ebx          # 4-byte Folded Reload
	incl	%r15d
	xorl	%eax, %eax
	cmpl	68(%rsp), %r15d         # 4-byte Folded Reload
	jl	.LBB1_25
	jmp	.LBB1_66
.LBB1_37:                               # %sw.bb.3.i
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#38:                                # %for.body.lr.ph.i.59.i
	movl	(%r12), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	229(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
.LBB1_39:                               # %for.body.i.64.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_40
# BB#41:                                # %if.end.i.67.i
                                        #   in Loop: Header=BB1_39 Depth=1
	cmpl	%eax, %ebp
	movl	%eax, 32(%rsp)          # 4-byte Spill
	jne	.LBB1_47
# BB#42:                                # %for.cond.3.preheader.i.68.i
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	movq	%r12, %r13
	jle	.LBB1_51
# BB#43:                                # %for.body.5.lr.ph.i.69.i
                                        #   in Loop: Header=BB1_39 Depth=1
	leal	-1(%rbx), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	leal	-2(%rbx), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_44:                               # %for.body.5.i.97.i
                                        #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%r14), %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r15d
	leal	-2(%r14), %esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	addl	%ebp, %ebp
	orl	%r15d, %ebp
	movq	104(%rsp), %rax         # 8-byte Reload
	movsbl	17(%rax), %edx
	addl	%ebx, %edx
	movsbl	16(%rax), %eax
	leal	(%rax,%r14), %esi
	movq	%r13, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %r15d
	shll	$2, %r15d
	orl	%ebp, %r15d
	leal	1(%r14), %esi
	movl	%esi, 88(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	movl	48(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$3, %ebp
	orl	%r15d, %ebp
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	112(%rsp), %esi         # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$5, %ebp
	orl	%ebx, %ebp
	movq	%r13, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$6, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	88(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	movl	56(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$7, %ebp
	orl	%ebx, %ebp
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	112(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	shll	$9, %eax
	orl	%ebx, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_45
# BB#46:                                # %if.end.55.i.i
                                        #   in Loop: Header=BB1_44 Depth=2
	movq	%r13, %rdi
	movl	%r14d, %esi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %edx
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	cmpl	72(%rsp), %r12d         # 4-byte Folded Reload
	movl	%r12d, %r14d
	jl	.LBB1_44
	jmp	.LBB1_51
.LBB1_47:                               # %if.else.i.101.i
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	movq	16(%r12), %rax
	movslq	8(%r12), %rdx
	testl	%ebx, %ebx
	je	.LBB1_48
# BB#49:                                # %if.else.i.i.112.i
                                        #   in Loop: Header=BB1_39 Depth=1
	leal	-1(%rbx), %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	leaq	(%rax,%rdx), %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB1_50
.LBB1_48:                               # %if.then.i.i.104.i
                                        #   in Loop: Header=BB1_39 Depth=1
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB1_50:                               # %for.inc.58.i.i
                                        #   in Loop: Header=BB1_39 Depth=1
	movq	%r12, %r13
.LBB1_51:                               # %for.inc.58.i.i
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	40(%rsp), %ebp          # 4-byte Reload
	xorl	32(%rsp), %ebp          # 4-byte Folded Reload
	incl	%ebx
	xorl	%eax, %eax
	cmpl	68(%rsp), %ebx          # 4-byte Folded Reload
	movq	%r13, %r12
	jl	.LBB1_39
	jmp	.LBB1_66
.LBB1_52:                               # %sw.bb.5.i
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#53:                                # %for.body.lr.ph.i.123.i
	movl	(%r12), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	405(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
.LBB1_54:                               # %for.body.i.128.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_59 Depth 2
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_55
# BB#56:                                # %if.end.i.131.i
                                        #   in Loop: Header=BB1_54 Depth=1
	cmpl	%eax, %ebx
	movl	%eax, 40(%rsp)          # 4-byte Spill
	jne	.LBB1_62
# BB#57:                                # %for.cond.3.preheader.i.132.i
                                        #   in Loop: Header=BB1_54 Depth=1
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_65
# BB#58:                                # %for.body.5.lr.ph.i.134.i
                                        #   in Loop: Header=BB1_54 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %r15d
	movl	$-4, %ebx
	.align	16, 0x90
.LBB1_59:                               # %for.body.5.i.171.i
                                        #   Parent Loop BB1_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %r14d
	leal	4(%r14), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	leal	3(%r14), %esi
	movl	%esi, 88(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	leal	2(%r14), %esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %r13d
	addl	%r13d, %r13d
	orl	%ebp, %r13d
	leal	1(%r14), %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$2, %ebp
	orl	%r13d, %ebp
	movq	%rbx, %r13
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$3, %ebx
	orl	%ebp, %ebx
	movq	104(%rsp), %rax         # 8-byte Reload
	movsbl	17(%rax), %edx
	addl	%r13d, %edx
	movsbl	16(%rax), %eax
	leal	4(%r14,%rax), %esi
	movq	%r12, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$4, %ebp
	orl	%ebx, %ebp
	addl	$5, %r14d
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$5, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	72(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$6, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$7, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$8, %ebp
	orl	%ebx, %ebp
	movl	80(%rsp), %ebx          # 4-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	shll	$9, %eax
	orl	%ebp, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	testl	%eax, %eax
	js	.LBB1_60
# BB#61:                                # %if.end.54.i.i
                                        #   in Loop: Header=BB1_59 Depth=2
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	112(%rsp), %rdx         # 8-byte Reload
	movl	%eax, %ecx
	callq	jbig2_image_set_pixel
	cmpl	56(%rsp), %r14d         # 4-byte Folded Reload
	jl	.LBB1_59
	jmp	.LBB1_65
.LBB1_62:                               # %if.else.i.174.i
                                        #   in Loop: Header=BB1_54 Depth=1
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	movq	16(%r12), %rax
	movslq	8(%r12), %rdx
	movq	112(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_63
# BB#64:                                # %if.else.i.i.185.i
                                        #   in Loop: Header=BB1_54 Depth=1
	movq	112(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	leaq	(%rax,%rdx), %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB1_65
.LBB1_63:                               # %if.then.i.i.177.i
                                        #   in Loop: Header=BB1_54 Depth=1
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB1_65:                               # %for.inc.57.i.i
                                        #   in Loop: Header=BB1_54 Depth=1
	movl	48(%rsp), %ebx          # 4-byte Reload
	xorl	40(%rsp), %ebx          # 4-byte Folded Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	incl	%ecx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpl	68(%rsp), %ecx          # 4-byte Folded Reload
	jl	.LBB1_54
	jmp	.LBB1_66
.LBB1_107:                              # %if.then.70
	movl	(%r12), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB1_66
# BB#108:                               # %if.then.70
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#109:                               # %for.body.lr.ph.i.116
	movl	%r14d, %eax
	negl	%eax
	movq	16(%r12), %rsi
	leal	7(%rcx), %edx
	andl	$-8, %edx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	cltq
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	(%r14,%r14), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	negl	%eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %eax
	subl	%r14d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
.LBB1_110:                              # %for.body.i.120
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_116 Depth 2
                                        #       Child Loop BB1_126 Depth 3
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movl	$0, %edi
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	jle	.LBB1_114
# BB#111:                               # %cond.end.i.124
                                        #   in Loop: Header=BB1_110 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movzbl	(%rsi,%rax), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	xorl	%edi, %edi
	cmpl	$2, 96(%rsp)            # 4-byte Folded Reload
	jl	.LBB1_112
# BB#113:                               # %cond.true.5.i.128
                                        #   in Loop: Header=BB1_110 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	(%rsi,%rax), %eax
	shll	$5, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movb	$1, %dil
	jmp	.LBB1_114
.LBB1_112:                              #   in Loop: Header=BB1_110 Depth=1
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
.LBB1_114:                              # %cond.end.12.i.132
                                        #   in Loop: Header=BB1_110 Depth=1
	movl	%edi, 56(%rsp)          # 4-byte Spill
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	movq	%rcx, %rdx
	jle	.LBB1_130
# BB#115:                               # %for.body.20.lr.ph.i
                                        #   in Loop: Header=BB1_110 Depth=1
	movl	104(%rsp), %eax         # 4-byte Reload
	shrl	%eax
	andl	$7680, %eax             # imm = 0x1E00
	movl	112(%rsp), %r15d        # 4-byte Reload
	shrl	%r15d
	andl	$120, %r15d
	orl	%eax, %r15d
	xorl	%ebx, %ebx
.LBB1_116:                              # %for.body.20.i
                                        #   Parent Loop BB1_110 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_126 Depth 3
	movl	%edx, %ebp
	subl	%ebx, %ebp
	cmpl	$8, %ebp
	movl	$8, %eax
	cmovgl	%eax, %ebp
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_120
# BB#117:                               # %if.then.31.i
                                        #   in Loop: Header=BB1_116 Depth=2
	shll	$8, 112(%rsp)           # 4-byte Folded Spill
	leal	8(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB1_119
# BB#118:                               # %cond.true.36.i
                                        #   in Loop: Header=BB1_116 Depth=2
	movl	%ebx, %eax
	sarl	$3, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movzbl	(%rsi,%rax), %eax
.LBB1_119:                              # %cond.end.45.i
                                        #   in Loop: Header=BB1_116 Depth=2
	orl	%eax, 112(%rsp)         # 4-byte Folded Spill
.LBB1_120:                              # %if.end.48.i
                                        #   in Loop: Header=BB1_116 Depth=2
	testb	%dil, %dil
	je	.LBB1_121
# BB#122:                               # %if.then.51.i
                                        #   in Loop: Header=BB1_116 Depth=2
	shll	$8, 104(%rsp)           # 4-byte Folded Spill
	leal	8(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB1_124
# BB#123:                               # %cond.true.56.i
                                        #   in Loop: Header=BB1_116 Depth=2
	movl	%ebx, %eax
	sarl	$3, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movzbl	(%rsi,%rax), %eax
	shll	$5, %eax
.LBB1_124:                              # %cond.end.67.i
                                        #   in Loop: Header=BB1_116 Depth=2
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	orl	%eax, 104(%rsp)         # 4-byte Folded Spill
	jmp	.LBB1_125
.LBB1_121:                              #   in Loop: Header=BB1_116 Depth=2
	movq	%rbx, 88(%rsp)          # 8-byte Spill
.LBB1_125:                              # %if.end.70.i
                                        #   in Loop: Header=BB1_116 Depth=2
	xorl	%r13d, %r13d
	movl	$8, %ebx
	testl	%ebp, %ebp
	movl	$0, %r12d
	jle	.LBB1_129
	.align	16, 0x90
.LBB1_126:                              # %for.body.74.i
                                        #   Parent Loop BB1_110 Depth=1
                                        #     Parent Loop BB1_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r15d, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	%eax, %edx
	movl	$-1, %eax
	testl	%edx, %edx
	js	.LBB1_66
# BB#127:                               # %for.inc.i.151
                                        #   in Loop: Header=BB1_126 Depth=3
	leal	-1(%rbx), %eax
	movl	%edx, %esi
	movb	%al, %cl
	shll	%cl, %esi
	movzbl	%r12b, %r12d
	orl	%esi, %r12d
	addl	%r15d, %r15d
	movl	%r15d, %esi
	andl	$7670, %esi             # imm = 0x1DF6
	movl	112(%rsp), %edi         # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %edi
	andl	$8, %edi
	movl	104(%rsp), %r15d        # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %r15d
	andl	$512, %r15d             # imm = 0x200
	orl	%edi, %r15d
	orl	%edx, %r15d
	orl	%esi, %r15d
	incl	%r13d
	cmpl	%ebp, %r13d
	movl	%eax, %ebx
	jl	.LBB1_126
# BB#128:                               # %for.cond.71.for.inc.105_crit_edge.i
                                        #   in Loop: Header=BB1_116 Depth=2
	movb	%r12b, %r13b
.LBB1_129:                              # %for.inc.105.i
                                        #   in Loop: Header=BB1_116 Depth=2
	movq	88(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %eax
	sarl	$3, %eax
	cltq
	movq	72(%rsp), %rsi          # 8-byte Reload
	movb	%r13b, (%rsi,%rax)
	addl	$8, %ebx
	cmpl	80(%rsp), %ebx          # 4-byte Folded Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	56(%rsp), %edi          # 4-byte Reload
	jl	.LBB1_116
.LBB1_130:                              # %for.inc.114.i
                                        #   in Loop: Header=BB1_110 Depth=1
	movq	%rdx, %rcx
	addq	%r14, %rsi
	movl	96(%rsp), %edx          # 4-byte Reload
	incl	%edx
	movl	%edx, 96(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	cmpl	68(%rsp), %edx          # 4-byte Folded Reload
	jl	.LBB1_110
	jmp	.LBB1_66
.LBB1_131:                              # %if.then.79
	movzbl	16(%r13), %eax
	cmpl	$3, %eax
	jne	.LBB1_157
# BB#132:                               # %land.lhs.true.84
	movzbl	17(%r13), %eax
	cmpl	$255, %eax
	je	.LBB1_133
.LBB1_157:                              # %if.else.91
	movl	(%r12), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB1_66
# BB#158:                               # %if.else.91
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#159:                               # %for.body.lr.ph.i.238
	movl	%r14d, %eax
	negl	%eax
	movq	16(%r12), %rsi
	leal	7(%rcx), %edx
	andl	$-8, %edx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	cltq
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	(%r14,%r14), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	negl	%eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %eax
	subl	%r14d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
.LBB1_160:                              # %for.body.i.242
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_166 Depth 2
                                        #       Child Loop BB1_176 Depth 3
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movl	$0, %edi
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	jle	.LBB1_164
# BB#161:                               # %cond.end.i.246
                                        #   in Loop: Header=BB1_160 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movzbl	(%rsi,%rax), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	xorl	%edi, %edi
	cmpl	$2, 96(%rsp)            # 4-byte Folded Reload
	jl	.LBB1_162
# BB#163:                               # %cond.true.5.i.250
                                        #   in Loop: Header=BB1_160 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	(%rsi,%rax), %eax
	shll	$4, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movb	$1, %dil
	jmp	.LBB1_164
.LBB1_162:                              #   in Loop: Header=BB1_160 Depth=1
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
.LBB1_164:                              # %cond.end.12.i.254
                                        #   in Loop: Header=BB1_160 Depth=1
	movl	%edi, 56(%rsp)          # 4-byte Spill
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	movq	%rcx, %rdx
	jle	.LBB1_180
# BB#165:                               # %for.body.20.lr.ph.i.260
                                        #   in Loop: Header=BB1_160 Depth=1
	movl	104(%rsp), %eax         # 4-byte Reload
	shrl	$3, %eax
	andl	$896, %eax              # imm = 0x380
	movl	112(%rsp), %r15d        # 4-byte Reload
	shrl	$3, %r15d
	andl	$28, %r15d
	orl	%eax, %r15d
	xorl	%ebx, %ebx
.LBB1_166:                              # %for.body.20.i.268
                                        #   Parent Loop BB1_160 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_176 Depth 3
	movl	%edx, %ebp
	subl	%ebx, %ebp
	cmpl	$8, %ebp
	movl	$8, %eax
	cmovgl	%eax, %ebp
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_170
# BB#167:                               # %if.then.31.i.272
                                        #   in Loop: Header=BB1_166 Depth=2
	shll	$8, 112(%rsp)           # 4-byte Folded Spill
	leal	8(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB1_169
# BB#168:                               # %cond.true.36.i.278
                                        #   in Loop: Header=BB1_166 Depth=2
	movl	%ebx, %eax
	sarl	$3, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movzbl	(%rsi,%rax), %eax
.LBB1_169:                              # %cond.end.45.i.281
                                        #   in Loop: Header=BB1_166 Depth=2
	orl	%eax, 112(%rsp)         # 4-byte Folded Spill
.LBB1_170:                              # %if.end.48.i.283
                                        #   in Loop: Header=BB1_166 Depth=2
	testb	%dil, %dil
	je	.LBB1_171
# BB#172:                               # %if.then.51.i.287
                                        #   in Loop: Header=BB1_166 Depth=2
	shll	$8, 104(%rsp)           # 4-byte Folded Spill
	leal	8(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB1_174
# BB#173:                               # %cond.true.56.i.294
                                        #   in Loop: Header=BB1_166 Depth=2
	movl	%ebx, %eax
	sarl	$3, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movzbl	(%rsi,%rax), %eax
	shll	$4, %eax
.LBB1_174:                              # %cond.end.67.i.297
                                        #   in Loop: Header=BB1_166 Depth=2
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	orl	%eax, 104(%rsp)         # 4-byte Folded Spill
	jmp	.LBB1_175
.LBB1_171:                              #   in Loop: Header=BB1_166 Depth=2
	movq	%rbx, 88(%rsp)          # 8-byte Spill
.LBB1_175:                              # %if.end.70.i.300
                                        #   in Loop: Header=BB1_166 Depth=2
	xorl	%r13d, %r13d
	movl	$10, %ebx
	testl	%ebp, %ebp
	movl	$0, %r12d
	jle	.LBB1_179
.LBB1_176:                              # %for.body.74.i.308
                                        #   Parent Loop BB1_160 Depth=1
                                        #     Parent Loop BB1_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r15d, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	%eax, %edx
	movl	$-1, %eax
	testl	%edx, %edx
	js	.LBB1_66
# BB#177:                               # %for.inc.i.325
                                        #   in Loop: Header=BB1_176 Depth=3
	leal	-3(%rbx), %ecx
	movl	%edx, %eax
	shll	%cl, %eax
	movzbl	%r12b, %r12d
	orl	%eax, %r12d
	addl	%r15d, %r15d
	movl	%r15d, %eax
	andl	$890, %eax              # imm = 0x37A
	movl	112(%rsp), %esi         # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %esi
	andl	$4, %esi
	movl	104(%rsp), %r15d        # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %r15d
	andl	$128, %r15d
	orl	%esi, %r15d
	orl	%edx, %r15d
	orl	%eax, %r15d
	incl	%r13d
	decl	%ebx
	cmpl	%ebp, %r13d
	jl	.LBB1_176
# BB#178:                               # %for.cond.71.for.inc.105_crit_edge.i.327
                                        #   in Loop: Header=BB1_166 Depth=2
	movb	%r12b, %r13b
.LBB1_179:                              # %for.inc.105.i.335
                                        #   in Loop: Header=BB1_166 Depth=2
	movq	88(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %eax
	sarl	$3, %eax
	cltq
	movq	72(%rsp), %rsi          # 8-byte Reload
	movb	%r13b, (%rsi,%rax)
	addl	$8, %ebx
	cmpl	80(%rsp), %ebx          # 4-byte Folded Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	56(%rsp), %edi          # 4-byte Reload
	jl	.LBB1_166
.LBB1_180:                              # %for.inc.114.i.339
                                        #   in Loop: Header=BB1_160 Depth=1
	movq	%rdx, %rcx
	addq	%r14, %rsi
	movl	96(%rsp), %edx          # 4-byte Reload
	incl	%edx
	movl	%edx, 96(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	cmpl	68(%rsp), %edx          # 4-byte Folded Reload
	jl	.LBB1_160
	jmp	.LBB1_66
.LBB1_181:                              # %if.then.100
	movzbl	16(%r13), %eax
	cmpl	$2, %eax
	jne	.LBB1_183
# BB#182:                               # %land.lhs.true.105
	movzbl	17(%r13), %eax
	cmpl	$255, %eax
.LBB1_183:                              # %if.else.112
	movq	%r13, %rdi
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	120(%rsp), %rcx         # 8-byte Reload
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_decode_generic_template3_unopt # TAILCALL
.LBB1_100:                              # %if.else
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#101:                               # %for.cond.1.preheader.lr.ph.i
	movl	(%r12), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
.LBB1_102:                              # %for.cond.1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_104 Depth 2
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_106
# BB#103:                               # %for.body.3.lr.ph.i
                                        #   in Loop: Header=BB1_102 Depth=1
	leal	-1(%rbp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	leal	-2(%rbp), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	$2, %r14d
	.align	16, 0x90
.LBB1_104:                              # %for.body.3.i
                                        #   Parent Loop BB1_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%r14), %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	leal	-3(%r14), %esi
	movl	%esi, 88(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	leal	-4(%r14), %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	addl	%ebp, %ebp
	orl	%ebx, %ebp
	leal	-5(%r14), %esi
	movq	%r12, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$2, %ebx
	orl	%ebp, %ebx
	leal	-6(%r14), %esi
	movq	%r12, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$3, %ebp
	orl	%ebx, %ebp
	movsbl	17(%r13), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movsbl	16(%r13), %eax
	leal	-2(%r14,%rax), %esi
	movq	%r12, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$4, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	40(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$5, %ebp
	orl	%ebx, %ebp
	leal	-1(%r14), %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$6, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$7, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$9, %ebp
	orl	%ebx, %ebp
	movsbl	19(%r13), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movsbl	18(%r13), %eax
	leal	-2(%r14,%rax), %esi
	movq	%r12, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$10, %ebx
	orl	%ebp, %ebx
	movsbl	21(%r13), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movsbl	20(%r13), %eax
	leal	-2(%r14,%rax), %esi
	movq	%r12, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$11, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %r15d         # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$12, %ebx
	orl	%ebp, %ebx
	movq	%r12, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$13, %ebp
	orl	%ebx, %ebp
	movq	%r12, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$14, %ebx
	orl	%ebp, %ebx
	movq	112(%rsp), %rbp         # 8-byte Reload
	movsbl	23(%r13), %edx
	addl	%ebp, %edx
	movsbl	22(%r13), %eax
	leal	-2(%r14,%rax), %esi
	movq	%r12, %rdi
	callq	jbig2_image_get_pixel
	shll	$15, %eax
	orl	%ebx, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB1_66
# BB#105:                               # %if.end.i
                                        #   in Loop: Header=BB1_104 Depth=2
	movq	%r12, %rdi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%ebp, %edx
	callq	jbig2_image_set_pixel
	incl	%r14d
	movl	80(%rsp), %eax          # 4-byte Reload
	cmpl	56(%rsp), %eax          # 4-byte Folded Reload
	jl	.LBB1_104
.LBB1_106:                              # %for.inc.101.i
                                        #   in Loop: Header=BB1_102 Depth=1
	incl	%ebp
	xorl	%eax, %eax
	cmpl	68(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB1_102
	jmp	.LBB1_66
.LBB1_16:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_31:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_45:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_60:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_133:                              # %if.then.89
	movl	(%r12), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB1_66
# BB#134:                               # %if.then.89
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	jle	.LBB1_66
# BB#135:                               # %for.body.lr.ph.i.172
	movl	%r14d, %eax
	negl	%eax
	movq	16(%r12), %rsi
	leal	7(%rcx), %edx
	andl	$-8, %edx
	movl	%edx, 72(%rsp)          # 4-byte Spill
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	(%r14,%r14), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	negl	%eax
	cltq
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %eax
	subl	%r14d, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
.LBB1_136:                              # %for.body.i.176
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_142 Depth 2
                                        #       Child Loop BB1_152 Depth 3
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	movl	$0, %ebp
	movl	$0, %edi
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	jle	.LBB1_140
# BB#137:                               # %cond.end.i.180
                                        #   in Loop: Header=BB1_136 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	(%rsi,%rax), %edi
	xorl	%ebp, %ebp
	cmpl	$2, 88(%rsp)            # 4-byte Folded Reload
	jl	.LBB1_138
# BB#139:                               # %cond.true.5.i.184
                                        #   in Loop: Header=BB1_136 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movzbl	(%rsi,%rax), %eax
	shll	$4, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movb	$1, %bpl
	jmp	.LBB1_140
.LBB1_138:                              #   in Loop: Header=BB1_136 Depth=1
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
.LBB1_140:                              # %cond.end.12.i.188
                                        #   in Loop: Header=BB1_136 Depth=1
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	movq	%rcx, %rdx
	jle	.LBB1_156
# BB#141:                               # %for.body.23.lr.ph.i
                                        #   in Loop: Header=BB1_136 Depth=1
	movl	%edi, 96(%rsp)          # 4-byte Spill
	movl	%edi, %eax
	shrl	$3, %eax
	andl	$24, %eax
	movl	%edi, %ecx
	shrl	$2, %ecx
	andl	$4, %ecx
	orl	%eax, %ecx
	movl	112(%rsp), %r12d        # 4-byte Reload
	shrl	$3, %r12d
	andl	$896, %r12d             # imm = 0x380
	orl	%ecx, %r12d
	xorl	%edi, %edi
.LBB1_142:                              # %for.body.23.i
                                        #   Parent Loop BB1_136 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_152 Depth 3
	movl	%edx, %ecx
	subl	%edi, %ecx
	cmpl	$8, %ecx
	movl	$8, %eax
	cmovgl	%eax, %ecx
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_146
# BB#143:                               # %if.then.34.i
                                        #   in Loop: Header=BB1_142 Depth=2
	shll	$8, 96(%rsp)            # 4-byte Folded Spill
	leal	8(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB1_145
# BB#144:                               # %cond.true.39.i
                                        #   in Loop: Header=BB1_142 Depth=2
	movl	%edi, %eax
	sarl	$3, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movzbl	(%rsi,%rax), %eax
.LBB1_145:                              # %cond.end.48.i
                                        #   in Loop: Header=BB1_142 Depth=2
	orl	%eax, 96(%rsp)          # 4-byte Folded Spill
.LBB1_146:                              # %if.end.51.i
                                        #   in Loop: Header=BB1_142 Depth=2
	testb	%bpl, %bpl
	je	.LBB1_147
# BB#148:                               # %if.then.54.i
                                        #   in Loop: Header=BB1_142 Depth=2
	shll	$8, 112(%rsp)           # 4-byte Folded Spill
	leal	8(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB1_150
# BB#149:                               # %cond.true.59.i
                                        #   in Loop: Header=BB1_142 Depth=2
	movl	%edi, %eax
	sarl	$3, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltq
	movzbl	(%rsi,%rax), %eax
	shll	$4, %eax
.LBB1_150:                              # %cond.end.70.i
                                        #   in Loop: Header=BB1_142 Depth=2
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	orl	%eax, 112(%rsp)         # 4-byte Folded Spill
	jmp	.LBB1_151
.LBB1_147:                              #   in Loop: Header=BB1_142 Depth=2
	movq	%rdi, 80(%rsp)          # 8-byte Spill
.LBB1_151:                              # %if.end.73.i
                                        #   in Loop: Header=BB1_142 Depth=2
	xorl	%r13d, %r13d
	movl	$10, %ebx
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movl	$0, %r15d
	jle	.LBB1_155
.LBB1_152:                              # %for.body.77.i
                                        #   Parent Loop BB1_136 Depth=1
                                        #     Parent Loop BB1_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r12d, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_decode
	movl	%eax, %edx
	movl	$-1, %eax
	testl	%edx, %edx
	js	.LBB1_66
# BB#153:                               # %for.inc.i.212
                                        #   in Loop: Header=BB1_152 Depth=3
	leal	-3(%rbx), %ecx
	movl	%edx, %eax
	shll	%cl, %eax
	movzbl	%r15b, %r15d
	orl	%eax, %r15d
	addl	%r12d, %r12d
	movl	%r12d, %esi
	andl	$882, %esi              # imm = 0x372
	movl	96(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %edi
	movb	%bl, %cl
	shrl	%cl, %edi
	andl	$8, %edi
	movl	%ebx, %eax
	decl	%eax
	movb	%al, %cl
	shrl	%cl, %r12d
	andl	$4, %r12d
	movl	112(%rsp), %ebp         # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %ebp
	andl	$128, %ebp
	orl	%edi, %r12d
	orl	%ebp, %r12d
	orl	%edx, %r12d
	orl	%esi, %r12d
	incl	%r13d
	cmpl	104(%rsp), %r13d        # 4-byte Folded Reload
	movl	%eax, %ebx
	jl	.LBB1_152
# BB#154:                               # %for.cond.74.for.inc.112_crit_edge.i
                                        #   in Loop: Header=BB1_142 Depth=2
	movb	%r15b, %r13b
.LBB1_155:                              # %for.inc.112.i.216
                                        #   in Loop: Header=BB1_142 Depth=2
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%edi, %eax
	sarl	$3, %eax
	cltq
	movq	56(%rsp), %rsi          # 8-byte Reload
	movb	%r13b, (%rsi,%rax)
	addl	$8, %edi
	cmpl	72(%rsp), %edi          # 4-byte Folded Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	48(%rsp), %ebp          # 4-byte Reload
	jl	.LBB1_142
.LBB1_156:                              # %for.inc.121.i
                                        #   in Loop: Header=BB1_136 Depth=1
	movq	%rdx, %rcx
	addq	%r14, %rsi
	movl	88(%rsp), %edx          # 4-byte Reload
	incl	%edx
	movl	%edx, 88(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	cmpl	68(%rsp), %edx          # 4-byte Folded Reload
	jl	.LBB1_136
	jmp	.LBB1_66
.LBB1_11:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_26:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_40:
	movl	$-1, %eax
	jmp	.LBB1_66
.LBB1_55:
	movl	$-1, %eax
	jmp	.LBB1_66
.Lfunc_end1:
	.size	jbig2_decode_generic_region, .Lfunc_end1-jbig2_decode_generic_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_8
	.quad	.LBB1_23
	.quad	.LBB1_37
	.quad	.LBB1_52
.LJTI1_1:
	.quad	.LBB1_69
	.quad	.LBB1_107
	.quad	.LBB1_131
	.quad	.LBB1_181

	.text
	.align	16, 0x90
	.type	jbig2_decode_generic_template3_unopt,@function
jbig2_decode_generic_template3_unopt:   # @jbig2_decode_generic_template3_unopt
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
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 112
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
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	4(%r13), %ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB2_7
# BB#1:                                 # %for.cond.1.preheader.lr.ph
	movl	(%r13), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
.LBB2_2:                                # %for.cond.1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jle	.LBB2_6
# BB#3:                                 # %for.body.3.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%r15), %r12d
	movl	$-4, %ebx
	.align	16, 0x90
.LBB2_4:                                # %for.body.3
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %r14d
	leal	4(%r14), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leal	3(%r14), %esi
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	leal	2(%r14), %esi
	movl	%esi, 48(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movq	%r15, %rbx
	movl	%eax, %r15d
	addl	%r15d, %r15d
	orl	%ebp, %r15d
	leal	1(%r14), %esi
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$2, %ebp
	orl	%r15d, %ebp
	movq	%rbx, %r15
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$3, %ebx
	orl	%ebp, %ebx
	movq	8(%rsp), %rax           # 8-byte Reload
	movsbl	17(%rax), %edx
	addl	%r15d, %edx
	movsbl	16(%rax), %eax
	leal	4(%r14,%rax), %esi
	movq	%r13, %rdi
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$4, %ebp
	orl	%ebx, %ebp
	addl	$5, %r14d
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$5, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$6, %ebp
	orl	%ebx, %ebp
	movq	%r13, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebx
	shll	$7, %ebx
	orl	%ebp, %ebx
	movq	%r13, %rdi
	movl	48(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	movl	%eax, %ebp
	shll	$8, %ebp
	orl	%ebx, %ebp
	movl	40(%rsp), %ebx          # 4-byte Reload
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	callq	jbig2_image_get_pixel
	shll	$9, %eax
	orl	%ebp, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	jbig2_arith_decode
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB2_7
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	%r13, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	jbig2_image_set_pixel
	cmpl	36(%rsp), %r14d         # 4-byte Folded Reload
	jl	.LBB2_4
.LBB2_6:                                # %for.inc.53
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	%r15d
	xorl	%eax, %eax
	cmpl	4(%rsp), %r15d          # 4-byte Folded Reload
	jl	.LBB2_2
.LBB2_7:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jbig2_decode_generic_template3_unopt, .Lfunc_end2-jbig2_decode_generic_template3_unopt
	.cfi_endproc

	.globl	jbig2_immediate_generic_region
	.align	16, 0x90
	.type	jbig2_immediate_generic_region,@function
jbig2_immediate_generic_region:         # @jbig2_immediate_generic_region
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
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 160
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$17, 16(%r15)
	jbe	.LBB3_1
# BB#2:                                 # %if.end
	leaq	80(%rsp), %rdi
	movq	%rbx, %rsi
	callq	jbig2_get_region_segment_info
	movl	(%r15), %edx
	movl	80(%rsp), %r8d
	movl	84(%rsp), %r9d
	movl	88(%rsp), %eax
	movl	92(%rsp), %ecx
	movzbl	100(%rsp), %esi
	movl	%esi, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r13d, %r13d
	movl	$1, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	(%r15), %edx
	movzbl	17(%rbx), %ebp
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$1, %esi
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	callq	jbig2_error
	movl	%ebp, %ebx
	andl	$1, %ebx
	sete	%al
	movl	%ebp, %r12d
	andl	$6, %r12d
	je	.LBB3_5
# BB#3:                                 # %if.end
	testb	%al, %al
	jne	.LBB3_5
# BB#4:                                 # %if.then.10
	movl	(%r15), %edx
	movl	$2, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB3_5:                                # %if.end.13
	testl	%ebx, %ebx
	jne	.LBB3_8
# BB#6:                                 # %if.then.17
	testl	%r12d, %r12d
	movl	$2, %eax
	movl	$8, %r13d
	cmovnel	%eax, %r13d
	leal	18(%r13), %eax
	cmpq	16(%r15), %rax
	jbe	.LBB3_7
.LBB3_1:                                # %if.then
	movl	(%r15), %edx
	movl	$3, %esi
	movl	$.L.str.3, %ecx
	jmp	.LBB3_10
.LBB3_7:                                # %if.end.28
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	18(%rax), %rsi
	movl	%r13d, %edx
	leaq	72(%rsp), %rdi
	callq	memcpy
	movl	(%r15), %edx
	movsbl	72(%rsp), %r8d
	movsbl	73(%rsp), %r9d
	movl	$1, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB3_8:                                # %if.end.37
	movl	%ebx, 48(%rsp)
	movl	%ebp, %eax
	shrl	%eax
	andl	$3, %eax
	movl	%eax, 52(%rsp)
	shrl	$3, %ebp
	andl	$1, %ebp
	movl	%ebp, 56(%rsp)
	movl	$0, 60(%rsp)
	leaq	64(%rsp), %rdi
	movl	%r13d, %edx
	leaq	72(%rsp), %rsi
	callq	memcpy
	movl	80(%rsp), %esi
	movl	84(%rsp), %edx
	movq	%r14, %rdi
	callq	jbig2_image_new
	movq	%rax, %r12
	movl	(%r15), %edx
	testq	%r12, %r12
	je	.LBB3_9
# BB#11:                                # %if.end.59
	addl	$18, %r13d
	movl	80(%rsp), %r8d
	movl	84(%rsp), %r9d
	xorl	%esi, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	cmpl	$0, 48(%rsp)
	je	.LBB3_13
# BB#12:                                # %if.then.66
	movl	%r13d, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	16(%r15), %r8
	subq	%rax, %r8
	leaq	48(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %r9
	callq	jbig2_decode_generic_mmr
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
.LBB3_20:                               # %if.end.103
	testl	%ebp, %ebp
	js	.LBB3_22
# BB#21:                                # %if.then.106
	movslq	96(%r14), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$4, %rsi
	addq	104(%r14), %rsi
	movl	88(%rsp), %ecx
	movl	92(%rsp), %r8d
	movl	96(%rsp), %r9d
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	jbig2_page_add_result
	jmp	.LBB3_23
.LBB3_9:                                # %if.then.56
	movl	$3, %esi
	movl	$.L.str.8, %ecx
.LBB3_10:                               # %cleanup.118
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	jmp	.LBB3_25
.LBB3_13:                               # %if.else
	movl	52(%rsp), %eax
	cmpl	$1, %eax
	movl	$16384, %ecx            # imm = 0x4000
	movl	$1024, %edx             # imm = 0x400
	cmoveq	%rcx, %rdx
	testl	%eax, %eax
	movq	(%r14), %rdi
	movl	$65536, %ebp            # imm = 0x10000
	cmovneq	%rdx, %rbp
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	testq	%rax, %rax
	je	.LBB3_14
# BB#15:                                # %if.end.80
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rbp, %rdx
	callq	memset
	movl	%r13d, %eax
	movq	40(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	movq	16(%r15), %rdx
	subq	%rax, %rdx
	movq	%r14, %rdi
	callq	jbig2_word_stream_buf_new
	testq	%rax, %rax
	je	.LBB3_16
# BB#17:                                # %if.end.94
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rax, %rbx
	callq	jbig2_arith_new
	testq	%rax, %rax
	je	.LBB3_18
# BB#19:                                # %cleanup
	leaq	48(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r12, %r8
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	%r13, %r9
	callq	jbig2_decode_generic_region
	movl	%eax, %ebp
	jmp	.LBB3_20
.LBB3_22:                               # %if.else.111
	movl	(%r15), %edx
	movl	$3, %esi
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB3_23:                               # %cleanup.115
	movq	40(%rsp), %r15          # 8-byte Reload
	jmp	.LBB3_24
.LBB3_14:                               # %if.then.77
	movl	(%r15), %edx
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$.L.str.10, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB3_24
.LBB3_16:                               # %if.then.91
	movl	(%r15), %edx
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB3_24
.LBB3_18:                               # %if.then.98
	movl	(%r15), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.12, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB3_24:                               # %cleanup.115
	movq	(%r14), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	jbig2_word_stream_buf_free
	movq	(%r14), %rdi
	movq	%r13, %rsi
	callq	jbig2_free
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	jbig2_image_release
.LBB3_25:                               # %cleanup.118
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jbig2_immediate_generic_region, .Lfunc_end3-jbig2_immediate_generic_region
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"region is far larger than data provided (%d << %d), aborting to prevent DOS"
	.size	.L.str, 76

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gbat[%d] = %d"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"decode_generic_region: MMR=%d, GBTEMPLATE=%d NYI"
	.size	.L.str.2, 49

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Segment too short"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"generic region: %d x %d @ (%d, %d), flags = %02x"
	.size	.L.str.4, 49

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"segment flags = %02x"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"MMR is 1, but GBTEMPLATE is not 0"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gbat: %d, %d"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"unable to allocate generic image"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"allocated %d x %d image buffer for region decode results"
	.size	.L.str.9, 57

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"unable to allocate GB_stats in jbig2_immediate_generic_region"
	.size	.L.str.10, 62

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unable to allocate ws in jbig2_immediate_generic_region"
	.size	.L.str.11, 56

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"unable to allocate as in jbig2_immediate_generic_region"
	.size	.L.str.12, 56

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"error while decoding immediate_generic_region"
	.size	.L.str.13, 46


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
