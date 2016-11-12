	.text
	.file	"jbig2_text.bc"
	.globl	jbig2_decode_text_region
	.align	16, 0x90
	.type	jbig2_decode_text_region,@function
jbig2_decode_text_region:               # @jbig2_decode_text_region
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
	subq	$648, %rsp              # imm = 0x288
.Ltmp6:
	.cfi_def_cfa_offset 704
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
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movl	%r8d, %ebx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%r15, 112(%rsp)         # 8-byte Spill
	movq	%rdi, %r12
	movl	$0, 620(%rsp)
	xorl	%r13d, %r13d
	testl	%ebx, %ebx
	je	.LBB0_7
# BB#1:                                 # %for.body.preheader
	leal	-1(%rbx), %eax
	xorl	%ebp, %ebp
	testb	$3, %bl
	movl	$0, %r13d
	je	.LBB0_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%ebx, %edx
	andl	$3, %edx
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rbp,8), %rsi
	addl	(%rsi), %r13d
	incq	%rbp
	cmpl	%ebp, %edx
	jne	.LBB0_3
.LBB0_4:                                # %for.body.preheader.split
	cmpl	$3, %eax
	jb	.LBB0_7
# BB#5:                                 # %for.body.preheader.split.split
	movl	%ebx, %eax
	subl	%ebp, %eax
	leaq	24(%rcx,%rbp,8), %rbp
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	addl	(%rdx), %r13d
	addl	(%rsi), %r13d
	movq	-8(%rbp), %rdx
	addl	(%rdx), %r13d
	movq	(%rbp), %rdx
	addl	(%rdx), %r13d
	addq	$32, %rbp
	addl	$-4, %eax
	jne	.LBB0_6
.LBB0_7:                                # %for.end
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	(%r15), %edx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %r8d
	movl	%ebx, %r9d
	callq	jbig2_error
	cmpl	$0, (%r14)
	je	.LBB0_8
# BB#9:                                 # %if.then
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movq	736(%rsp), %rbx
	movl	(%r15), %edx
	xorl	%esi, %esi
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	jbig2_huffman_new
	movq	%rax, 120(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_153
# BB#10:                                # %for.body.10.preheader
	movq	%r12, 104(%rsp)         # 8-byte Spill
	leaq	184(%rsp), %r14
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_11:                               # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	movl	%eax, %ebx
	movl	%ebx, -8(%r14)
	cmpl	$0, 620(%rsp)
	movl	$0, %r12d
	movl	$0, %r15d
	js	.LBB0_47
# BB#12:                                # %if.end.16
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$0, -4(%r14)
	movl	%ebp, (%r14)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	xorl	%esi, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	jbig2_error
	incq	%rbp
	addq	$12, %r14
	cmpq	$35, %rbp
	jb	.LBB0_11
# BB#13:                                # %for.end.28
	movl	$0, 600(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 608(%rsp)
	movl	$35, 604(%rsp)
	leaq	600(%rsp), %rsi
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB0_14
# BB#15:                                # %if.end.34
	movq	(%rbx), %rdi
	movl	%r13d, %esi
	movl	$12, %edx
	callq	jbig2_alloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_18
# BB#16:                                # %while.cond.preheader
	testl	%r13d, %r13d
	je	.LBB0_46
# BB#17:
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
                                        # implicit-def: R14D
	.align	16, 0x90
.LBB0_22:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_45 Depth 2
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	leaq	156(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, %ebp
	movl	%ebp, 620(%rsp)
	cmpl	$34, %ebp
	ja	.LBB0_24
# BB#23:                                # %while.body
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	156(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB0_24
# BB#25:                                # %if.end.56
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$32, %ebp
	jge	.LBB0_27
# BB#26:                                #   in Loop: Header=BB0_22 Depth=1
	movl	%ebp, %ebx
	movl	$1, %r14d
	jmp	.LBB0_38
	.align	16, 0x90
.LBB0_27:                               # %if.else
                                        #   in Loop: Header=BB0_22 Depth=1
	jne	.LBB0_31
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	80(%rsp), %r14          # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB0_29
# BB#30:                                # %if.end.73.thread
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	-1(%r14), %eax
	leaq	(%rax,%rax,2), %rax
	movl	(%r15,%rax,4), %ebx
	movl	$0, 156(%rsp)
	movl	$2, %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	156(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	addl	$3, %eax
	jmp	.LBB0_36
.LBB0_31:                               # %if.end.73
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$0, 156(%rsp)
	cmpl	$34, %ebp
	jne	.LBB0_32
# BB#34:                                # %if.then.88
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$7, %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	156(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	addl	$11, %eax
	jmp	.LBB0_35
.LBB0_32:                               # %if.end.73
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%ebx, %ebx
	cmpl	$33, %ebp
	jne	.LBB0_38
# BB#33:                                # %if.then.82
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$3, %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	156(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	addl	$3, %eax
.LBB0_35:                               # %if.end.93
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%ebx, %ebx
	movq	80(%rsp), %r14          # 8-byte Reload
.LBB0_36:                               # %if.end.93
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, 156(%rsp)
	js	.LBB0_47
# BB#37:                                # %if.end.93.if.end.98_crit_edge
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movl	620(%rsp), %ebp
	movq	%rax, %r14
.LBB0_38:                               # %if.end.98
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	%r14d, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$0, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %r8d
	movq	80(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %r9d
	callq	jbig2_error
	leal	(%r14,%rbp), %r8d
	subl	%r13d, %r8d
	jbe	.LBB0_40
# BB#39:                                # %if.then.104
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	$2, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_error
	movl	%r13d, %r14d
	subl	%ebp, %r14d
.LBB0_40:                               # %if.end.110
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%r14d, %r14d
	jle	.LBB0_21
# BB#41:                                # %for.body.114.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	testb	$1, %r14b
	movl	$0, %edx
	movl	%ebp, %ecx
	je	.LBB0_43
# BB#42:                                # %for.body.114.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%ebp, %eax
	leaq	(%rax,%rax,2), %rax
	movl	%ebx, (%r15,%rax,4)
	movl	$0, 4(%r15,%rax,4)
	movl	%ebp, 8(%r15,%rax,4)
	leal	1(%rbp), %ecx
	movl	$1, %edx
.LBB0_43:                               # %for.body.114.preheader.split
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$1, %r14d
	je	.LBB0_20
# BB#44:                                # %for.body.114.preheader.split.split
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%r14d, %eax
	subl	%edx, %eax
	leal	2(%rbp,%rdx), %esi
	leal	1(%rdx,%rbp), %edx
	.align	16, 0x90
.LBB0_45:                               # %for.body.114
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edi
	leaq	(%rdi,%rdi,2), %rdi
	movl	%ebx, (%r15,%rdi,4)
	movl	$0, 4(%r15,%rdi,4)
	movl	%ecx, 8(%r15,%rdi,4)
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%ebx, (%r15,%rcx,4)
	movl	$0, 4(%r15,%rcx,4)
	movl	%edx, 8(%r15,%rcx,4)
	movl	%esi, %ecx
	leal	2(%rsi), %esi
	addl	$2, %edx
	addl	$-2, %eax
	jne	.LBB0_45
.LBB0_20:                               # %for.cond.111.while.cond.loopexit_crit_edge
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	(%rbp,%r14), %ebp
.LBB0_21:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	%ebp, %r13d
	ja	.LBB0_22
.LBB0_46:                               # %if.end.137
	movl	$0, 160(%rsp)
	movq	%r15, 168(%rsp)
	movl	%r13d, 164(%rsp)
	movq	120(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_skip
	leaq	160(%rsp), %rsi
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_build_huffman_table
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB0_47
.LBB0_8:
	movq	%r15, 112(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%r12, %r15
	jmp	.LBB0_52
.LBB0_153:                              # %if.then.5
	movl	(%r15), %edx
	movq	%r15, 112(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	$-1, 80(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%r12, %r15
	jmp	.LBB0_51
.LBB0_14:                               # %if.then.31
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
	movl	$-1, 620(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB0_47
.LBB0_18:                               # %if.then.38
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
.LBB0_19:                               # %cleanup1
	callq	jbig2_error
	movl	$-1, 620(%rsp)
	jmp	.LBB0_47
.LBB0_24:                               # %if.then.52
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_error
	movl	156(%rsp), %eax
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	orl	%eax, %ecx
	movl	%ecx, 620(%rsp)
.LBB0_47:                               # %cleanup1
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%r15, %rsi
	movq	%rax, %r15
	callq	jbig2_free
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	jbig2_release_huffman_table
	movq	96(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB0_49
# BB#48:
	movb	$1, %al
                                        # implicit-def: ECX
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	jmp	.LBB0_50
.LBB0_49:                               # %if.then.145
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	xorl	%ebp, %ebp
	movl	$3, %esi
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	movq	%r15, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_huffman_free
	movl	620(%rsp), %eax
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	orl	%eax, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
.LBB0_50:                               # %cleanup
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB0_51:                               # %cleanup
	testb	%al, %al
	je	.LBB0_152
.LBB0_52:                               # %if.end.163
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rbp, %rbx
	movq	%rcx, %rbp
	movq	728(%rsp), %r12
	movl	8(%r14), %edx
	movq	%r15, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_image_clear
	cmpl	$0, (%r14)
	je	.LBB0_54
# BB#53:                                # %if.then.166
	movq	56(%r14), %rsi
	leaq	620(%rsp), %rdx
	movq	120(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_get
	movl	%eax, 640(%rsp)
	movl	620(%rsp), %eax
	jmp	.LBB0_55
.LBB0_54:                               # %if.else.168
	movq	104(%r14), %rdi
	leaq	640(%rsp), %rdx
	movq	%r12, %rsi
	callq	jbig2_arith_int_decode
	movl	%eax, 620(%rsp)
.LBB0_55:                               # %if.end.170
	testl	%eax, %eax
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	js	.LBB0_149
# BB#56:                                # %if.end.174
	xorl	%eax, %eax
	subl	36(%r14), %eax
	imull	640(%rsp), %eax
	movl	%eax, 640(%rsp)
	cmpl	$0, 28(%r14)
	je	.LBB0_149
# BB#57:                                # %while.body.179.lr.ph
	leaq	188(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
                                        # implicit-def: EAX
	movl	%eax, 56(%rsp)          # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	$0, 48(%rsp)            # 4-byte Folded Spill
                                        # implicit-def: EAX
	movq	%rax, 104(%rsp)         # 8-byte Spill
.LBB0_58:                               # %while.body.179
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_91 Depth 3
	cmpl	$0, (%r14)
	je	.LBB0_60
# BB#59:                                # %if.then.182
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	56(%r14), %rsi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 636(%rsp)
	movl	620(%rsp), %eax
	jmp	.LBB0_61
.LBB0_60:                               # %if.else.185
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	104(%r14), %rdi
	movq	728(%rsp), %rsi
	leaq	636(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 620(%rsp)
.LBB0_61:                               # %if.end.188
                                        #   in Loop: Header=BB0_58 Depth=1
	testl	%eax, %eax
	js	.LBB0_149
# BB#62:                                # %if.end.192
                                        #   in Loop: Header=BB0_58 Depth=1
	movl	636(%rsp), %eax
	imull	36(%r14), %eax
	movl	%eax, 636(%rsp)
	addl	%eax, 640(%rsp)
	xorl	%eax, %eax
	jmp	.LBB0_63
	.align	16, 0x90
.LBB0_147:                              # %if.end.471
                                        #   in Loop: Header=BB0_63 Depth=2
	incl	%r12d
	movq	%r15, %rdi
	callq	jbig2_image_release
	movb	$1, %al
.LBB0_63:                               # %for.cond.196
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_91 Depth 3
	testb	$1, %al
	je	.LBB0_64
# BB#69:                                # %if.else.211
                                        #   in Loop: Header=BB0_63 Depth=2
	cmpl	28(%r14), %r12d
	ja	.LBB0_70
# BB#72:                                # %if.end.218
                                        #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, (%r14)
	je	.LBB0_74
# BB#73:                                # %if.then.221
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	48(%r14), %rsi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 628(%rsp)
	movl	620(%rsp), %eax
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_64:                               # %if.then.198
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%r12d, 72(%rsp)         # 4-byte Spill
	cmpl	$0, (%r14)
	je	.LBB0_66
# BB#65:                                # %if.then.201
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	40(%r14), %rsi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 632(%rsp)
	movl	620(%rsp), %eax
	jmp	.LBB0_67
.LBB0_66:                               # %if.else.203
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	112(%r14), %rdi
	movq	728(%rsp), %rsi
	leaq	632(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 620(%rsp)
.LBB0_67:                               # %if.end.205
                                        #   in Loop: Header=BB0_63 Depth=2
	testl	%eax, %eax
	js	.LBB0_149
# BB#68:                                # %if.end.209
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	48(%rsp), %ecx          # 4-byte Reload
	addl	632(%rsp), %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	jmp	.LBB0_77
.LBB0_74:                               # %if.else.223
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	120(%r14), %rdi
	movq	728(%rsp), %rsi
	leaq	628(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 620(%rsp)
.LBB0_75:                               # %if.end.225
                                        #   in Loop: Header=BB0_63 Depth=2
	testl	%eax, %eax
	jne	.LBB0_71
# BB#76:                                # %if.end.228
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%r12d, 72(%rsp)         # 4-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	addl	628(%rsp), %eax
	addl	24(%r14), %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
.LBB0_77:                               # %if.end.231
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	728(%rsp), %rsi
	xorl	%ecx, %ecx
	cmpl	$1, 36(%r14)
	je	.LBB0_80
# BB#78:                                # %if.else.236
                                        #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, (%r14)
	je	.LBB0_154
# BB#79:                                # %if.then.239
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	32(%r14), %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	movl	%eax, %ecx
	movl	620(%rsp), %eax
.LBB0_80:                               # %if.end.244thread-pre-split
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%ecx, 624(%rsp)
	jmp	.LBB0_81
.LBB0_154:                              # %if.else.241
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	128(%r14), %rdi
	leaq	624(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 620(%rsp)
	.align	16, 0x90
.LBB0_81:                               # %if.end.244
                                        #   in Loop: Header=BB0_63 Depth=2
	testl	%eax, %eax
	js	.LBB0_149
# BB#82:                                # %if.end.248
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rbp, %r12
	movl	624(%rsp), %eax
	addl	640(%rsp), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	cmpl	$0, (%r14)
	je	.LBB0_84
# BB#83:                                # %if.then.252
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 644(%rsp)
	movl	620(%rsp), %eax
	jmp	.LBB0_85
	.align	16, 0x90
.LBB0_84:                               # %if.else.254
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	136(%r14), %rdi
	movq	728(%rsp), %rsi
	leaq	644(%rsp), %rdx
	callq	jbig2_arith_iaid_decode
	movl	%eax, 620(%rsp)
.LBB0_85:                               # %if.end.256
                                        #   in Loop: Header=BB0_63 Depth=2
	testl	%eax, %eax
	js	.LBB0_149
# BB#86:                                # %if.end.260
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	644(%rsp), %ebx
	cmpl	%r13d, %ebx
	jae	.LBB0_88
# BB#87:                                # %while.cond.267.preheader
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	(%r12), %rax
	movl	(%rax), %ecx
	xorl	%ebp, %ebp
	jmp	.LBB0_91
	.align	16, 0x90
.LBB0_90:                               # %while.body.273
                                        #   in Loop: Header=BB0_91 Depth=3
	incl	%ebp
	subl	%ecx, %ebx
	movq	(%r12,%rbp,8), %rax
	movl	(%rax), %ecx
.LBB0_91:                               # %while.body.273
                                        #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ecx, %ebx
	jae	.LBB0_90
# BB#92:                                # %while.end.279
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%ebx, %ecx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	%r15, %rdi
	callq	jbig2_image_clone
	movq	%rax, %rdx
	testq	%rdx, %rdx
	je	.LBB0_93
# BB#94:                                # %cleanup.cont.292
                                        #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, 4(%r14)
	movq	%r12, %rdi
	je	.LBB0_118
# BB#95:                                # %if.then.294
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	cmpl	$0, (%r14)
	je	.LBB0_97
# BB#96:                                # %if.then.297
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	$1, %esi
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	620(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	movl	%eax, 616(%rsp)
	movl	620(%rsp), %eax
	jmp	.LBB0_98
	.align	16, 0x90
.LBB0_118:                              # %if.end.307.thread
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	$0, 616(%rsp)
	jmp	.LBB0_119
.LBB0_97:                               # %if.else.299
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	144(%r14), %rdi
	movq	728(%rsp), %rsi
	leaq	616(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 620(%rsp)
.LBB0_98:                               # %if.end.301
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	112(%rsp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	js	.LBB0_149
# BB#99:                                # %if.end.307
                                        #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, 616(%rsp)
	je	.LBB0_100
# BB#101:                               # %if.then.309
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdx, %rbx
	movl	$0, 148(%rsp)
	movl	$0, 144(%rsp)
	movl	$0, 140(%rsp)
	movl	$0, 136(%rsp)
	movl	$0, 132(%rsp)
	cmpl	$0, (%r14)
	je	.LBB0_102
# BB#103:                               # %if.else.317
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	64(%r14), %rsi
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	leaq	148(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 600(%rsp)
	movq	72(%r14), %rsi
	movq	%rbp, %rdi
	leaq	144(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 160(%rsp)
	movq	80(%r14), %rsi
	movq	%rbp, %rdi
	leaq	140(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 156(%rsp)
	movq	88(%r14), %rsi
	movq	%rbp, %rdi
	leaq	136(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 152(%rsp)
	movq	96(%r14), %rsi
	movq	%rbp, %rdi
	leaq	132(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, %r12d
	movq	%rbp, %rdi
	callq	jbig2_huffman_skip
	movl	136(%rsp), %eax
	jmp	.LBB0_104
.LBB0_100:                              #   in Loop: Header=BB0_63 Depth=2
	movq	%rcx, 112(%rsp)         # 8-byte Spill
.LBB0_119:                              # %if.end.385
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	72(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB0_120
.LBB0_102:                              # %if.then.312
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	152(%r14), %rdi
	movq	728(%rsp), %rbp
	movq	%rbp, %rsi
	leaq	600(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 148(%rsp)
	movq	160(%r14), %rdi
	movq	%rbp, %rsi
	leaq	160(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 144(%rsp)
	movq	168(%r14), %rdi
	movq	%rbp, %rsi
	leaq	156(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 140(%rsp)
	movq	176(%r14), %rdi
	movq	%rbp, %rsi
	leaq	152(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 136(%rsp)
	xorl	%r12d, %r12d
.LBB0_104:                              # %if.end.323
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	144(%rsp), %ecx
	orl	148(%rsp), %ecx
	orl	140(%rsp), %ecx
	orl	%eax, %ecx
	orl	132(%rsp), %ecx
	js	.LBB0_105
# BB#106:                               # %if.end.341
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%r12d, 40(%rsp)         # 4-byte Spill
	movl	600(%rsp), %esi
	addl	(%rbx), %esi
	movl	160(%rsp), %edx
	addl	4(%rbx), %edx
	movq	%r15, %rdi
	movq	%rbx, %r12
	callq	jbig2_image_new
	movq	%r15, %rbp
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_107
# BB#110:                               # %if.end.354
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	184(%r14), %eax
	movl	%eax, 176(%rsp)
	movq	%r12, 184(%rsp)
	movl	600(%rsp), %eax
	sarl	%eax
	addl	156(%rsp), %eax
	movl	%eax, 192(%rsp)
	movl	160(%rsp), %eax
	sarl	%eax
	addl	152(%rsp), %eax
	movl	%eax, 196(%rsp)
	movl	$0, 200(%rsp)
	movl	$4, %edx
	leaq	204(%rsp), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	%rbp, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	leaq	176(%rsp), %rdx
	movq	728(%rsp), %rcx
	movq	%r15, %r8
	movq	720(%rsp), %r9
	callq	jbig2_decode_refinement_region
	movl	%eax, 620(%rsp)
	testl	%eax, %eax
	js	.LBB0_111
# BB#113:                               # %if.end.365
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rbp, %rdi
	movq	%r14, %rbx
	movq	%rbp, %r14
	movq	%r12, %rsi
	callq	jbig2_image_release
	xorl	%ebp, %ebp
	cmpl	$0, (%rbx)
	movq	%rbx, %r12
	je	.LBB0_115
# BB#114:                               # %if.then.368
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	callq	jbig2_huffman_advance
.LBB0_115:                              # %cleanup.370
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%r15, 40(%rsp)          # 8-byte Spill
	jmp	.LBB0_116
.LBB0_105:                              # %if.then.338
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.15, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r15, %r14
	callq	jbig2_error
	movl	%eax, 620(%rsp)
	movl	$14, %ebp
	jmp	.LBB0_116
.LBB0_107:                              # %if.then.347
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r12, 40(%rsp)          # 8-byte Spill
	callq	jbig2_image_release
	cmpl	$0, (%r14)
	movq	%r14, %r12
	movq	%rbp, %r14
	je	.LBB0_109
# BB#108:                               # %if.then.350
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%r14, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_release_huffman_table
.LBB0_109:                              # %if.end.351
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.16, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	$1, %ebp
	jmp	.LBB0_116
.LBB0_111:                              # %if.then.364
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	%rbp, %rdi
	movq	%rbp, %r14
	movq	%r15, %rsi
	callq	jbig2_image_release
	movl	$14, %ebp
	.align	16, 0x90
.LBB0_116:                              # %cleanup.370
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	64(%rsp), %rdi          # 8-byte Reload
	testl	%ebp, %ebp
	jne	.LBB0_148
# BB#117:                               #   in Loop: Header=BB0_63 Depth=2
	movq	%r14, %r15
	movq	%r12, %r14
	movl	72(%rsp), %r12d         # 4-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB0_120:                              # %if.end.385
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	20(%r14), %eax
	cmpl	$0, 16(%r14)
	je	.LBB0_121
# BB#125:                               # %land.lhs.true.396
                                        #   in Loop: Header=BB0_63 Depth=2
	testb	$1, %al
	jne	.LBB0_127
# BB#126:                               # %if.then.399
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	4(%rdx), %ecx
	movq	104(%rsp), %rsi         # 8-byte Reload
	leal	-1(%rsi,%rcx), %esi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
.LBB0_127:                              # %if.else.424
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%eax, %ecx
	cmpl	$3, %eax
	ja	.LBB0_128
# BB#133:                               # %if.else.424
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdi, %rbp
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_137:                              # %sw.bb.431
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %r8d
	subl	4(%rdx), %r8d
	movl	52(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB0_139
	.align	16, 0x90
.LBB0_121:                              # %land.lhs.true
                                        #   in Loop: Header=BB0_63 Depth=2
	cmpl	$1, %eax
	jbe	.LBB0_123
# BB#122:                               # %if.end.404
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	(%rdx), %ecx
	movq	104(%rsp), %rsi         # 8-byte Reload
	leal	-1(%rsi,%rcx), %esi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
.LBB0_123:                              # %if.then.407
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%eax, %ecx
	cmpl	$3, %eax
	jbe	.LBB0_124
.LBB0_128:                              #   in Loop: Header=BB0_63 Depth=2
	movq	%rdi, %rbp
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	56(%rsp), %r8d          # 4-byte Reload
	jmp	.LBB0_139
.LBB0_124:                              # %if.then.407
                                        #   in Loop: Header=BB0_63 Depth=2
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_131:                              # %sw.bb.413
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdi, %rbp
	movl	52(%rsp), %esi          # 4-byte Reload
	incl	%esi
	subl	4(%rdx), %esi
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%esi, %r8d
	jmp	.LBB0_139
.LBB0_134:                              # %sw.bb.426
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	52(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB0_135
.LBB0_138:                              # %sw.bb.435
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	52(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	subl	(%rdx), %ecx
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %r8d
	subl	4(%rdx), %r8d
	jmp	.LBB0_139
.LBB0_136:                              # %sw.bb.427
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	52(%rsp), %eax          # 4-byte Reload
	incl	%eax
	subl	(%rdx), %eax
	movl	%eax, %ecx
.LBB0_135:                              # %if.end.443
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	jmp	.LBB0_139
.LBB0_129:                              # %sw.bb
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdi, %rbp
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	52(%rsp), %r8d          # 4-byte Reload
	jmp	.LBB0_139
.LBB0_132:                              # %sw.bb.417
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdi, %rbp
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %ecx
	subl	(%rdx), %ecx
	movl	52(%rsp), %eax          # 4-byte Reload
	incl	%eax
	subl	4(%rdx), %eax
	movl	%eax, %r8d
	jmp	.LBB0_139
.LBB0_130:                              # %sw.bb.409
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rdi, %rbp
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %ecx
	subl	(%rdx), %ecx
	movl	52(%rsp), %r8d          # 4-byte Reload
	.align	16, 0x90
.LBB0_139:                              # %if.end.443
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	%r8d, 56(%rsp)          # 4-byte Spill
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	12(%r14), %r9d
	movq	%r15, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, %rbx
	callq	jbig2_image_compose
	movl	%eax, 620(%rsp)
	testl	%eax, %eax
	js	.LBB0_140
# BB#141:                               # %if.end.448
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	20(%r14), %eax
	cmpl	$0, 16(%r14)
	je	.LBB0_142
# BB#144:                               # %land.lhs.true.462
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rbx, %rsi
	testb	$1, %al
	je	.LBB0_147
# BB#145:                               # %if.then.466
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	4(%rsi), %eax
	jmp	.LBB0_146
	.align	16, 0x90
.LBB0_142:                              # %land.lhs.true.451
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	%rbx, %rsi
	cmpl	$1, %eax
	ja	.LBB0_147
# BB#143:                               # %if.then.455
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	(%rsi), %eax
.LBB0_146:                              # %if.end.471
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx,%rax), %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	jmp	.LBB0_147
.LBB0_70:                               # %if.then.215
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.12, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r12d, %r8d
	callq	jbig2_error
	movl	%eax, 620(%rsp)
.LBB0_71:                               # %while.cond.176.backedge
                                        #   in Loop: Header=BB0_58 Depth=1
	cmpl	28(%r14), %r12d
	jb	.LBB0_58
	jmp	.LBB0_149
.LBB0_88:                               # %if.then.263
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebx, %r8d
	movl	%r13d, %r9d
	jmp	.LBB0_89
.LBB0_93:                               # %cleanup.290
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movl	$3, %esi
	movl	$.L.str.14, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %r8d
	movl	%ebx, %r9d
.LBB0_89:                               # %cleanup2
	callq	jbig2_error
	movl	%eax, 620(%rsp)
	jmp	.LBB0_149
.LBB0_140:                              # %if.then.447
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	jbig2_image_release
.LBB0_149:                              # %cleanup2
	cmpl	$0, (%r14)
	je	.LBB0_151
# BB#150:                               # %if.then.477
	movq	%r15, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_release_huffman_table
.LBB0_151:                              # %if.end.478
	movq	%r15, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_huffman_free
	movl	620(%rsp), %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
.LBB0_152:                              # %cleanup.479
	movl	80(%rsp), %eax          # 4-byte Reload
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_148:                              # %cleanup.370
	cmpl	$14, %ebp
	movq	%r14, %r15
	movq	%r12, %r14
	jne	.LBB0_152
	jmp	.LBB0_149
.LBB0_29:                               # %if.then.65
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB0_19
.Lfunc_end0:
	.size	jbig2_decode_text_region, .Lfunc_end0-jbig2_decode_text_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_137
	.quad	.LBB0_134
	.quad	.LBB0_138
	.quad	.LBB0_136
.LJTI0_1:
	.quad	.LBB0_131
	.quad	.LBB0_129
	.quad	.LBB0_132
	.quad	.LBB0_130

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	2                       # 0x2
	.long	512                     # 0x200
	.long	3                       # 0x3
	.long	64                      # 0x40
	.text
	.globl	jbig2_text_region
	.align	16, 0x90
	.type	jbig2_text_region,@function
jbig2_text_region:                      # @jbig2_text_region
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp19:
	.cfi_def_cfa_offset 352
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
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	$17, 16(%rbx)
	jae	.LBB1_1
# BB#166:                               # %too_short
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.54, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %r12d
	jmp	.LBB1_167
.LBB1_1:                                # %if.end
	leaq	272(%rsp), %rdi
	movq	%r12, %rsi
	callq	jbig2_get_region_segment_info
	leaq	17(%r12), %rdi
	callq	jbig2_get_uint16
	movl	(%rbx), %edx
	movzwl	%ax, %ebp
	xorl	%esi, %esi
	movl	$.L.str.17, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	callq	jbig2_error
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	movl	$192, %edx
	callq	memset
	movl	%ebp, %eax
	andl	$1, %eax
	movl	%eax, 80(%rsp)
	movl	%ebp, %ecx
	shrl	$2, %ecx
	andl	$3, %ecx
	movl	%ecx, 112(%rsp)
	movl	$1, %edx
	shll	%cl, %edx
	movl	%edx, 116(%rsp)
	movl	%ebp, %ecx
	shrl	$4, %ecx
	andl	$3, %ecx
	movl	%ecx, 100(%rsp)
	movl	%ebp, %ecx
	shrl	$7, %ecx
	movd	%ebp, %xmm0
	movd	%ecx, %xmm1
	pshufd	$80, %xmm0, %xmm2       # xmm2 = xmm0[0,0,1,1]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pand	.LCPI1_0(%rip), %xmm0
	movdqu	%xmm0, 84(%rsp)
	movl	%ebp, %r8d
	shrl	$10, %r8d
	movl	%r8d, %ecx
	andl	$31, %ecx
	orl	$-32, %r8d
	cmpl	$15, %ecx
	cmovbel	%ecx, %r8d
	movl	%r8d, 104(%rsp)
	andl	$32768, %ebp            # imm = 0x8000
	movl	%ebp, 264(%rsp)
	testl	%r8d, %r8d
	je	.LBB1_2
# BB#3:                                 # %if.then.32
	movl	(%rbx), %edx
	xorl	%esi, %esi
	movl	$.L.str.18, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	jmp	.LBB1_4
.LBB1_2:
	movd	%xmm0, %ecx
.LBB1_4:                                # %if.end.36
	testl	%eax, %eax
	je	.LBB1_7
# BB#5:                                 # %if.then.39
	leaq	19(%r12), %rdi
	callq	jbig2_get_uint16
	movw	%ax, %bp
	movl	$21, %r15d
	testw	%bp, %bp
	jns	.LBB1_10
# BB#6:                                 # %if.then.47
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.19, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB1_10
.LBB1_7:                                # %if.else
	movl	$19, %r15d
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	je	.LBB1_10
# BB#8:                                 # %if.else
	movl	264(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.55
	movb	19(%r12), %al
	movb	%al, 268(%rsp)
	movb	20(%r12), %al
	movb	%al, 269(%rsp)
	movb	21(%r12), %al
	movb	%al, 270(%rsp)
	movb	22(%r12), %al
	movb	%al, 271(%rsp)
	movl	$23, %r15d
	xorl	%ebp, %ebp
.LBB1_10:                               # %if.end.74
	movl	%r15d, %eax
	leaq	(%rax,%r12), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 108(%rsp)
	cmpl	$0, 80(%rsp)
	je	.LBB1_109
# BB#11:                                # %if.then.81
	movzwl	%bp, %ecx
	movl	%ecx, %eax
	movl	%ecx, %ebp
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB1_17
# BB#12:                                # %if.then.81
	cmpl	$1, %eax
	jne	.LBB1_13
# BB#16:                                # %sw.bb.85
	movl	$jbig2_huffman_params_G, %esi
	jmp	.LBB1_15
.LBB1_17:                               # %sw.bb.88
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_18
# BB#20:                                # %if.end.95
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 120(%rsp)
	movl	$1, %r13d
	jmp	.LBB1_21
.LBB1_13:                               # %if.then.81
	testl	%eax, %eax
	jne	.LBB1_19
# BB#14:                                # %sw.bb
	movl	$jbig2_huffman_params_F, %esi
.LBB1_15:                               # %sw.epilog
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 120(%rsp)
	xorl	%r13d, %r13d
.LBB1_21:                               # %sw.epilog
	testq	%rax, %rax
	je	.LBB1_22
# BB#23:                                # %if.end.107
	movl	%ebp, %eax
	shrl	$2, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jbe	.LBB1_24
# BB#25:                                # %if.end.107.sw.epilog.130_crit_edge
	movq	128(%rsp), %rax
	jmp	.LBB1_35
.LBB1_22:                               # %if.then.104
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.22, %ecx
	jmp	.LBB1_122
.LBB1_24:                               # %if.end.107
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_26:                               # %sw.bb.111
	movl	$jbig2_huffman_params_H, %esi
	jmp	.LBB1_27
.LBB1_19:                               # %sw.default
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.21, %ecx
	jmp	.LBB1_122
.LBB1_18:                               # %if.then.92
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.20, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	.LBB1_33
.LBB1_28:                               # %sw.bb.113
	movl	$jbig2_huffman_params_I, %esi
	jmp	.LBB1_27
.LBB1_29:                               # %sw.bb.116
	movl	$jbig2_huffman_params_J, %esi
.LBB1_27:                               # %sw.epilog.130
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 128(%rsp)
	jmp	.LBB1_35
.LBB1_30:                               # %sw.bb.119
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_31
# BB#34:                                # %if.end.126
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 128(%rsp)
	incl	%r13d
.LBB1_35:                               # %sw.epilog.130
	testq	%rax, %rax
	je	.LBB1_36
# BB#37:                                # %if.end.137
	movl	%ebp, %eax
	shrl	$4, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jbe	.LBB1_38
# BB#39:                                # %if.end.137.sw.epilog.160_crit_edge
	movq	136(%rsp), %rax
	jmp	.LBB1_47
.LBB1_36:                               # %if.then.134
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.24, %ecx
	jmp	.LBB1_122
.LBB1_38:                               # %if.end.137
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_40:                               # %sw.bb.141
	movl	$jbig2_huffman_params_K, %esi
	jmp	.LBB1_41
.LBB1_42:                               # %sw.bb.143
	movl	$jbig2_huffman_params_L, %esi
	jmp	.LBB1_41
.LBB1_43:                               # %sw.bb.146
	movl	$jbig2_huffman_params_M, %esi
.LBB1_41:                               # %sw.epilog.160
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 136(%rsp)
	jmp	.LBB1_47
.LBB1_44:                               # %sw.bb.149
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_45
# BB#46:                                # %if.end.156
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 136(%rsp)
	incl	%r13d
.LBB1_47:                               # %sw.epilog.160
	testq	%rax, %rax
	je	.LBB1_48
# BB#49:                                # %if.end.167
	movl	%ebp, %eax
	shrl	$6, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB1_55
# BB#50:                                # %if.end.167
	cmpl	$1, %eax
	jne	.LBB1_51
# BB#54:                                # %sw.bb.173
	movl	$jbig2_huffman_params_O, %esi
	jmp	.LBB1_53
.LBB1_48:                               # %if.then.164
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.26, %ecx
	jmp	.LBB1_122
.LBB1_55:                               # %sw.bb.176
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_56
# BB#58:                                # %if.end.183
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 144(%rsp)
	incl	%r13d
	jmp	.LBB1_59
.LBB1_51:                               # %if.end.167
	testl	%eax, %eax
	jne	.LBB1_57
# BB#52:                                # %sw.bb.171
	movl	$jbig2_huffman_params_N, %esi
.LBB1_53:                               # %sw.epilog.191
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 144(%rsp)
.LBB1_59:                               # %sw.epilog.191
	testq	%rax, %rax
	je	.LBB1_60
# BB#61:                                # %if.end.198
	movl	%ebp, %eax
	shrl	$8, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB1_67
# BB#62:                                # %if.end.198
	cmpl	$1, %eax
	jne	.LBB1_63
# BB#66:                                # %sw.bb.204
	movl	$jbig2_huffman_params_O, %esi
	jmp	.LBB1_65
.LBB1_60:                               # %if.then.195
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.29, %ecx
	jmp	.LBB1_122
.LBB1_57:                               # %sw.default.188
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.28, %ecx
	jmp	.LBB1_122
.LBB1_67:                               # %sw.bb.207
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_68
# BB#70:                                # %if.end.214
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 152(%rsp)
	incl	%r13d
	jmp	.LBB1_71
.LBB1_63:                               # %if.end.198
	testl	%eax, %eax
	jne	.LBB1_69
# BB#64:                                # %sw.bb.202
	movl	$jbig2_huffman_params_N, %esi
.LBB1_65:                               # %sw.epilog.222
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 152(%rsp)
.LBB1_71:                               # %sw.epilog.222
	testq	%rax, %rax
	je	.LBB1_72
# BB#73:                                # %if.end.229
	movl	%ebp, %eax
	shrl	$10, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB1_79
# BB#74:                                # %if.end.229
	cmpl	$1, %eax
	jne	.LBB1_75
# BB#78:                                # %sw.bb.235
	movl	$jbig2_huffman_params_O, %esi
	jmp	.LBB1_77
.LBB1_31:                               # %if.then.123
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.23, %ecx
	jmp	.LBB1_32
.LBB1_56:                               # %if.then.180
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.27, %ecx
	jmp	.LBB1_32
.LBB1_72:                               # %if.then.226
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.32, %ecx
	jmp	.LBB1_122
.LBB1_45:                               # %if.then.153
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.25, %ecx
	jmp	.LBB1_32
.LBB1_69:                               # %sw.default.219
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.31, %ecx
	jmp	.LBB1_122
.LBB1_79:                               # %sw.bb.238
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_80
# BB#82:                                # %if.end.245
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 160(%rsp)
	incl	%r13d
	jmp	.LBB1_83
.LBB1_75:                               # %if.end.229
	testl	%eax, %eax
	jne	.LBB1_81
# BB#76:                                # %sw.bb.233
	movl	$jbig2_huffman_params_N, %esi
.LBB1_77:                               # %sw.epilog.253
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 160(%rsp)
.LBB1_83:                               # %sw.epilog.253
	testq	%rax, %rax
	je	.LBB1_84
# BB#85:                                # %if.end.260
	movl	%ebp, %eax
	shrl	$12, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB1_91
# BB#86:                                # %if.end.260
	cmpl	$1, %eax
	jne	.LBB1_87
# BB#90:                                # %sw.bb.266
	movl	$jbig2_huffman_params_O, %esi
	jmp	.LBB1_89
.LBB1_68:                               # %if.then.211
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.30, %ecx
	jmp	.LBB1_32
.LBB1_84:                               # %if.then.257
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.35, %ecx
	jmp	.LBB1_122
.LBB1_81:                               # %sw.default.250
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.34, %ecx
	jmp	.LBB1_122
.LBB1_91:                               # %sw.bb.269
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_92
# BB#94:                                # %if.end.276
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 168(%rsp)
	incl	%r13d
	jmp	.LBB1_95
.LBB1_87:                               # %if.end.260
	testl	%eax, %eax
	jne	.LBB1_93
# BB#88:                                # %sw.bb.264
	movl	$jbig2_huffman_params_N, %esi
.LBB1_89:                               # %sw.epilog.284
	movq	%r14, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 168(%rsp)
.LBB1_95:                               # %sw.epilog.284
	testq	%rax, %rax
	je	.LBB1_96
# BB#97:                                # %if.end.291
	movl	%ebp, %eax
	shrl	$14, %eax
	andl	$1, %eax
	jne	.LBB1_98
# BB#100:                               # %sw.bb.295
	movl	$jbig2_huffman_params_A, %esi
	movq	%r14, %rdi
	jmp	.LBB1_104
.LBB1_80:                               # %if.then.242
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.33, %ecx
	jmp	.LBB1_32
.LBB1_96:                               # %if.then.288
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.38, %ecx
	jmp	.LBB1_122
.LBB1_98:                               # %if.end.291
	cmpl	$1, %eax
	jne	.LBB1_99
# BB#101:                               # %sw.bb.297
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB1_102
# BB#103:                               # %if.end.304
	movq	%r14, %rdi
	movq	%rax, %rsi
.LBB1_104:                              # %sw.epilog.308
	callq	jbig2_build_huffman_table
	movq	%rax, 176(%rsp)
	jmp	.LBB1_105
.LBB1_93:                               # %sw.default.281
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.37, %ecx
	jmp	.LBB1_122
.LBB1_92:                               # %if.then.273
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.36, %ecx
	jmp	.LBB1_32
.LBB1_99:                               # %if.end.291.sw.epilog.308_crit_edge
	movq	176(%rsp), %rax
.LBB1_105:                              # %sw.epilog.308
	testq	%rax, %rax
	je	.LBB1_106
# BB#107:                               # %if.end.315
	movl	%ebp, %eax
	testb	$-128, %ah
	je	.LBB1_109
# BB#108:                               # %if.then.319
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.41, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB1_109:                              # %if.end.323
	movl	(%rbx), %edx
	movl	272(%rsp), %r8d
	movl	276(%rsp), %r9d
	movl	280(%rsp), %eax
	movl	284(%rsp), %ecx
	movl	108(%rsp), %esi
	movl	%esi, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %esi
	movl	$.L.str.42, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	jbig2_sd_count_referred
	movl	%eax, %r13d
	testl	%r13d, %r13d
	je	.LBB1_168
# BB#110:                               # %if.then.330
	movl	%r15d, 72(%rsp)         # 4-byte Spill
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	jbig2_sd_list_referred
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB1_111
# BB#112:                               # %if.else.341
	cmpq	$0, (%r15)
	je	.LBB1_121
# BB#113:                               # %for.cond.preheader
	movl	$1, %ebp
	cmpl	$2, %r13d
	jl	.LBB1_117
	.align	16, 0x90
.LBB1_114:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%r15,%rbp,8)
	jne	.LBB1_116
# BB#115:                               # %if.then.355
                                        #   in Loop: Header=BB1_114 Depth=1
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.46, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%ebp, %r13d
.LBB1_116:                              # %for.inc
                                        #   in Loop: Header=BB1_114 Depth=1
	incq	%rbp
	movslq	%r13d, %rax
	cmpq	%rax, %rbp
	jl	.LBB1_114
.LBB1_117:                              # %if.end.360
	cmpl	$0, 264(%rsp)
	movq	(%r14), %rdi
	movl	$1024, %ebp             # imm = 0x400
	jne	.LBB1_119
# BB#118:                               # %select.mid
	movl	$8192, %ebp             # imm = 0x2000
.LBB1_119:                              # %select.end
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	testq	%rax, %rax
	je	.LBB1_120
# BB#123:                               # %cleanup.cont.375
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rbp, %rdx
	callq	memset
	movl	272(%rsp), %esi
	movl	276(%rsp), %edx
	movq	%r14, %rdi
	callq	jbig2_image_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_124
# BB#126:                               # %if.end.384
	movl	72(%rsp), %eax          # 4-byte Reload
	addl	$4, %eax
	movl	%eax, %eax
	addq	%rax, %r12
	movq	16(%rbx), %rdx
	subq	%rax, %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	jbig2_word_stream_buf_new
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB1_127
# BB#128:                               # %if.end.396
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	jbig2_arith_new
	testq	%rax, %rax
	je	.LBB1_129
# BB#130:                               # %if.end.403
	cmpl	$0, 80(%rsp)
	jne	.LBB1_152
# BB#131:                               # %for.cond.408.preheader
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jle	.LBB1_138
# BB#132:                               # %for.body.411.preheader
	leal	-1(%r13), %eax
	xorl	%ecx, %ecx
	testb	$3, %r13b
	movl	$0, %ebp
	je	.LBB1_135
# BB#133:                               # %for.body.411.prol.preheader
	movl	%r13d, %edx
	andl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
.LBB1_134:                              # %for.body.411.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rsi
	addl	(%rsi), %ebp
	incq	%rcx
	cmpl	%ecx, %edx
	jne	.LBB1_134
.LBB1_135:                              # %for.body.411.preheader.split
	cmpl	$3, %eax
	jb	.LBB1_138
# BB#136:                               # %for.body.411.preheader.split.split
	movl	%r13d, %eax
	subl	%ecx, %eax
	leaq	24(%r15,%rcx,8), %rcx
.LBB1_137:                              # %for.body.411
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx), %rdx
	movq	-16(%rcx), %rsi
	addl	(%rdx), %ebp
	addl	(%rsi), %ebp
	movq	-8(%rcx), %rdx
	addl	(%rdx), %ebp
	movq	(%rcx), %rdx
	addl	(%rdx), %ebp
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB1_137
.LBB1_138:                              # %for.end.417
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 184(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 192(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 200(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 208(%rsp)
	testq	%rax, %rax
	je	.LBB1_151
# BB#139:                               # %for.end.417
	movq	184(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_151
# BB#140:                               # %for.end.417
	movq	192(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_151
# BB#141:                               # %for.end.417
	movq	200(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_151
# BB#142:
	movl	$-1, %ecx
.LBB1_143:                              # %for.cond.440
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	%ebp, %eax
	jl	.LBB1_143
# BB#144:                               # %for.end.447
	movq	%r14, %rdi
	movl	%ecx, %esi
	callq	jbig2_arith_iaid_ctx_new
	movq	%rax, 216(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 224(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 232(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 240(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 248(%rsp)
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 256(%rsp)
	testq	%rax, %rax
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	72(%rsp), %rax          # 8-byte Reload
	je	.LBB1_150
# BB#145:                               # %for.end.447
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_150
# BB#146:                               # %for.end.447
	movq	224(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_150
# BB#147:                               # %for.end.447
	movq	232(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_150
# BB#148:                               # %for.end.447
	movq	240(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_150
# BB#149:                               # %for.end.447
	movq	248(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_150
.LBB1_152:                              # %if.end.486
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r12, 32(%rsp)
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	leaq	80(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movl	%r13d, %r8d
	movq	%rbp, %r9
	callq	jbig2_decode_text_region
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_153
# BB#154:                               # %if.end.498
	movb	4(%rbx), %al
	andb	$63, %al
	movzbl	%al, %eax
	cmpl	$4, %eax
	jne	.LBB1_156
# BB#155:                               # %if.then.504
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	jbig2_image_clone
	movq	%rax, 40(%rbx)
	jmp	.LBB1_157
.LBB1_168:                              # %if.else.332
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.43, %ecx
	jmp	.LBB1_122
.LBB1_111:                              # %if.then.338
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.44, %ecx
	jmp	.LBB1_122
.LBB1_121:                              # %cleanup
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.45, %ecx
	jmp	.LBB1_122
.LBB1_120:                              # %cleanup.373
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.47, %ecx
.LBB1_122:                              # %cleanup1
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %r12d
.LBB1_163:                              # %cleanup1
	cmpl	$0, 80(%rsp)
	je	.LBB1_165
# BB#164:                               # %if.then.541
	movq	120(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	128(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	136(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	160(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	168(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	144(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	152(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
	movq	176(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_release_huffman_table
.LBB1_165:                              # %if.end.550
	movq	(%r14), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
.LBB1_167:                              # %cleanup.554
	movl	%r12d, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_124:                              # %if.then.381
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.48, %ecx
	jmp	.LBB1_125
.LBB1_127:                              # %if.then.393
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.49, %ecx
	jmp	.LBB1_125
.LBB1_129:                              # %if.then.400
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.50, %ecx
.LBB1_125:                              # %cleanup2
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %r12d
	jmp	.LBB1_162
.LBB1_153:                              # %if.then.495
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.52, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB1_157
.LBB1_156:                              # %if.else.506
	movl	(%rbx), %edx
	movl	272(%rsp), %r8d
	movl	276(%rsp), %r9d
	movl	280(%rsp), %eax
	movl	284(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%esi, %esi
	movl	$.L.str.53, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movslq	96(%r14), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$4, %rsi
	addq	104(%r14), %rsi
	movl	280(%rsp), %ecx
	movl	284(%rsp), %r8d
	movl	288(%rsp), %r9d
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	jbig2_page_add_result
	jmp	.LBB1_157
.LBB1_151:                              # %cleanup.481
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.51, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %r12d
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_159
.LBB1_150:                              # %cleanup.481.thread310
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movl	(%rbx), %edx
	movl	$3, %esi
	movl	$.L.str.51, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movl	%eax, %r12d
.LBB1_157:                              # %cleanup4
	cmpl	$0, 80(%rsp)
	jne	.LBB1_161
# BB#158:                               # %if.then.521
	movq	216(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_iaid_ctx_free
	movq	224(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	232(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	240(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	248(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	256(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
.LBB1_159:                              # %cleanup3
	cmpl	$0, 80(%rsp)
	jne	.LBB1_161
# BB#160:                               # %if.then.531
	movq	184(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	192(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	200(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	208(%rsp), %rsi
	movq	%r14, %rdi
	callq	jbig2_arith_int_ctx_free
.LBB1_161:                              # %if.end.536
	movq	(%r14), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_free
	movq	%r14, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_word_stream_buf_free
.LBB1_162:                              # %cleanup2
	movq	(%r14), %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_free
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	jbig2_image_release
	jmp	.LBB1_163
.LBB1_106:                              # %if.then.312
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.40, %ecx
	jmp	.LBB1_122
.LBB1_102:                              # %if.then.301
	movl	(%rbx), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.39, %ecx
.LBB1_32:                               # %cleanup1
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r13d, %r8d
.LBB1_33:                               # %cleanup1
	callq	jbig2_error
	movl	%eax, %r12d
	jmp	.LBB1_163
.Lfunc_end1:
	.size	jbig2_text_region, .Lfunc_end1-jbig2_text_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_26
	.quad	.LBB1_28
	.quad	.LBB1_29
	.quad	.LBB1_30
.LJTI1_1:
	.quad	.LBB1_40
	.quad	.LBB1_42
	.quad	.LBB1_43
	.quad	.LBB1_44

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"symbol list contains %d glyphs in %d dictionaries"
	.size	.L.str, 50

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"huffman coded text region"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"failed to allocate storage for text region"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"  read runcode%d length %d"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error constructing symbol id runcode table!"
	.size	.L.str.4, 44

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"memory allocation failure reading symbol ID huffman table!"
	.size	.L.str.5, 59

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"error reading symbol ID huffman table!"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"error decoding symbol id table: run length with no antecedent!"
	.size	.L.str.7, 63

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"  read runcode%d at index %d (length %d range %d)"
	.size	.L.str.8, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"runlength extends %d entries beyond the end of symbol id table!"
	.size	.L.str.9, 64

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"could not construct Symbol ID huffman table!"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"too many NINSTANCES (%d) decoded"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"symbol id out of range! (%d/%d)"
	.size	.L.str.13, 32

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"missing glyph %d/%d!"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"failed to decode data"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"couldn't allocate reference image"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"text region header flags 0x%04x"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"text region has SBDSOFFSET %d"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"reserved bit 15 of text region huffman flags is not zero"
	.size	.L.str.19, 57

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Custom FS huffman table not found (%d)"
	.size	.L.str.20, 39

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"text region specified invalid FS huffman table"
	.size	.L.str.21, 47

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"failed to allocate text region specified FS huffman table"
	.size	.L.str.22, 58

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Custom DS huffman table not found (%d)"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"failed to allocate text region specified DS huffman table"
	.size	.L.str.24, 58

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Custom DT huffman table not found (%d)"
	.size	.L.str.25, 39

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"failed to allocate text region specified DT huffman table"
	.size	.L.str.26, 58

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Custom RDW huffman table not found (%d)"
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"text region specified invalid RDW huffman table"
	.size	.L.str.28, 48

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"failed to allocate text region specified RDW huffman table"
	.size	.L.str.29, 59

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Custom RDH huffman table not found (%d)"
	.size	.L.str.30, 40

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"text region specified invalid RDH huffman table"
	.size	.L.str.31, 48

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"failed to allocate text region specified RDH huffman table"
	.size	.L.str.32, 59

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Custom RDX huffman table not found (%d)"
	.size	.L.str.33, 40

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"text region specified invalid RDX huffman table"
	.size	.L.str.34, 48

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"failed to allocate text region specified RDX huffman table"
	.size	.L.str.35, 59

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Custom RDY huffman table not found (%d)"
	.size	.L.str.36, 40

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"text region specified invalid RDY huffman table"
	.size	.L.str.37, 48

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"failed to allocate text region specified RDY huffman table"
	.size	.L.str.38, 59

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Custom RSIZE huffman table not found (%d)"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"failed to allocate text region specified RSIZE huffman table"
	.size	.L.str.40, 61

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"text region huffman flags bit 15 is set, contrary to spec"
	.size	.L.str.41, 58

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"text region: %d x %d @ (%d,%d) %d symbols"
	.size	.L.str.42, 42

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"text region refers to no symbol dictionaries!"
	.size	.L.str.43, 46

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"unable to retrive symbol dictionaries! previous parsing error?"
	.size	.L.str.44, 63

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"unable to find first referenced symbol dictionary!"
	.size	.L.str.45, 51

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"unable to find all referenced symbol dictionaries!"
	.size	.L.str.46, 51

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"could not allocate GR_stats"
	.size	.L.str.47, 28

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"couldn't allocate text region image"
	.size	.L.str.48, 36

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"couldn't allocate ws in text region image"
	.size	.L.str.49, 42

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"couldn't allocate as in text region image"
	.size	.L.str.50, 42

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"couldn't allocate text region image data"
	.size	.L.str.51, 41

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"failed to decode text region image data"
	.size	.L.str.52, 40

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"composing %dx%d decoded text region onto page at (%d, %d)"
	.size	.L.str.53, 58

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Segment too short"
	.size	.L.str.54, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
