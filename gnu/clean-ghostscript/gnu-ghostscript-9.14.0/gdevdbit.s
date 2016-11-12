	.text
	.file	"gdevdbit.bc"
	.globl	gx_default_tile_rectangle
	.align	16, 0x90
	.type	gx_default_tile_rectangle,@function
gx_default_tile_rectangle:              # @gx_default_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 112
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	112(%rsp), %r10
	movq	120(%rsp), %r11
	movl	128(%rsp), %ebp
	movl	136(%rsp), %ebx
	movq	32(%rsi), %rax
	movq	%rax, 64(%rsp)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movaps	%xmm1, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movw	$0, 68(%rsp)
	movw	$0, 70(%rsp)
	movl	$1, 72(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	leaq	32(%rsp), %rsi
	callq	*1416(%rdi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_default_tile_rectangle, .Lfunc_end0-gx_default_tile_rectangle
	.cfi_endproc

	.globl	gx_default_copy_mono
	.align	16, 0x90
	.type	gx_default_copy_mono,@function
gx_default_copy_mono:                   # @gx_default_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp11:
	.cfi_def_cfa_offset 784
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%r8, %r11
	movl	%ecx, %r8d
	movl	%edx, %r10d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.LBB1_1
# BB#3:                                 # %do.body.2
	movl	800(%rsp), %eax
	movl	792(%rsp), %ecx
	movl	784(%rsp), %edx
	movl	%edx, %esi
	orl	%r9d, %esi
	js	.LBB1_5
# BB#4:
	movl	%r9d, %r13d
	movl	%edx, %r14d
	jmp	.LBB1_8
.LBB1_1:                                # %if.then
	movl	$-1, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.gx_default_copy_mono, %edi
	movl	$.L.str, %esi
	movl	$58, %edx
	jmp	.LBB1_2
.LBB1_5:                                # %if.then.3
	movl	%r9d, %esi
	sarl	$31, %esi
	xorl	%r14d, %r14d
	testl	%r9d, %r9d
	movl	%r9d, %r13d
	cmovsl	%r14d, %r13d
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	subl	%esi, %r10d
	testl	%edx, %edx
	js	.LBB1_7
# BB#6:
	movl	%edx, %r14d
	jmp	.LBB1_8
.LBB1_7:                                # %if.then.8
	addl	%edx, %eax
	imull	%r8d, %edx
	movslq	%edx, %rdx
	subq	%rdx, %rbx
	xorl	%r11d, %r11d
.LBB1_8:                                # %if.end.11
	movl	832(%rbp), %r15d
	movl	836(%rbp), %r12d
	subl	%r13d, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r14d, %r12d
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB1_18
# BB#9:                                 # %if.end.11
	testl	%r12d, %r12d
	jle	.LBB1_18
# BB#10:                                # %do.end.29
	testq	%rbx, %rbx
	je	.LBB1_11
# BB#12:                                # %if.end.34
	movq	808(%rsp), %r9
	movl	$1, %ecx
	cmpq	$-1, 816(%rsp)
	je	.LBB1_13
# BB#14:                                # %if.then.36
	xorl	%ecx, %ecx
	cmpq	$-1, %r9
	je	.LBB1_15
# BB#16:                                # %if.then.38
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%r8d, 68(%rsp)          # 4-byte Spill
	movl	%r12d, %r8d
	movl	%r10d, 64(%rsp)         # 4-byte Spill
	movq	%r11, 56(%rsp)          # 8-byte Spill
	callq	*1200(%rbp)
	xorl	%ecx, %ecx
	movq	56(%rsp), %r11          # 8-byte Reload
	movl	64(%rsp), %r10d         # 4-byte Reload
	movl	68(%rsp), %r8d          # 4-byte Reload
	testl	%eax, %eax
	movq	816(%rsp), %rdx
	jns	.LBB1_17
	jmp	.LBB1_18
.LBB1_11:                               # %if.then.31
	movl	$-1, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.gx_default_copy_mono, %edi
	movl	$.L.str, %esi
	movl	$61, %edx
.LBB1_2:                                # %cleanup.56
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB1_18
.LBB1_13:
	movq	%r9, %rdx
	jmp	.LBB1_17
.LBB1_15:
	movq	816(%rsp), %rdx
.LBB1_17:                               # %if.end.49
	movq	%rdx, 80(%rsp)
	movq	$gx_dc_type_data_pure, 72(%rsp)
	movl	$0, 432(%rsp)
	movl	%ecx, 40(%rsp)
	movq	%rbp, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r14d, (%rsp)
	movl	$240, 32(%rsp)
	leaq	72(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r10d, %edx
	movl	%r8d, %ecx
	movq	%r11, %r8
	movl	%r13d, %r9d
	callq	gx_dc_default_fill_masked
.LBB1_18:                               # %cleanup.56
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_default_copy_mono, .Lfunc_end1-gx_default_copy_mono
	.cfi_endproc

	.globl	gx_default_copy_color
	.align	16, 0x90
	.type	gx_default_copy_color,@function
gx_default_copy_color:                  # @gx_default_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 192
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%ecx, %r10d
	movl	208(%rsp), %r11d
	movl	200(%rsp), %eax
	movl	192(%rsp), %ecx
	movzwl	108(%rdi), %ebp
	cmpl	$1, %ebp
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	%r11d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, %ecx
	callq	*1216(%rdi)
	jmp	.LBB2_43
.LBB2_2:                                # %do.body.3
	movl	%ecx, %ebx
	orl	%r9d, %ebx
	js	.LBB2_4
# BB#3:
	movl	%ecx, %r8d
	jmp	.LBB2_7
.LBB2_4:                                # %if.then.6
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	leal	(%rax,%rbx), %eax
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	cmovsl	%r8d, %r9d
	subl	%ebx, %edx
	testl	%ecx, %ecx
	js	.LBB2_6
# BB#5:
	movl	%ecx, %r8d
	jmp	.LBB2_7
.LBB2_6:                                # %if.then.13
	addl	%ecx, %r11d
	imull	%r10d, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rsi
.LBB2_7:                                # %if.end.16
	movl	832(%rdi), %ebx
	movl	836(%rdi), %ecx
	subl	%r9d, %ebx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	subl	%r8d, %ecx
	cmpl	%ecx, %r11d
	cmovlel	%r11d, %ecx
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	testl	%ebx, %ebx
	jle	.LBB2_42
# BB#8:                                 # %if.end.16
	testl	%ecx, %ecx
	jle	.LBB2_42
# BB#9:                                 # %do.end.38
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movl	%r9d, 108(%rsp)         # 4-byte Spill
	jle	.LBB2_42
# BB#10:                                # %for.body.lr.ph
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	1200(%rcx), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movb	%bpl, %cl
	shll	%cl, %edx
	addl	$255, %edx
	movl	%eax, %ecx
	imull	%ebp, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movslq	%r10d, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movzbl	%dl, %ecx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	notl	%eax
	imull	%ebp, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	.align	16, 0x90
.LBB2_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	testl	%ebx, %ebx
	jle	.LBB2_41
# BB#12:                                # %for.body.50.lr.ph
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r14
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	leal	(%rdx,%rcx), %ecx
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	movq	$-1, %r9
	xorl	%esi, %esi
	movl	52(%rsp), %r13d         # 4-byte Reload
	movl	%eax, 132(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB2_13
.LBB2_24:                               #   in Loop: Header=BB2_13 Depth=2
	movq	%rax, %r14
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_13:                               # %for.body.50
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r12d
	cmpl	$8, %ebp
	jb	.LBB2_32
# BB#14:                                # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	leaq	1(%r14), %rax
	movzbl	(%r14), %r15d
	cmpl	$39, %ebp
	jle	.LBB2_15
# BB#18:                                # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$55, %ebp
	jg	.LBB2_21
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$40, %ebp
	je	.LBB2_28
# BB#20:                                # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$48, %ebp
	movq	%r14, %rcx
	movq	%rax, %r14
	je	.LBB2_27
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_32:                               # %if.else
                                        #   in Loop: Header=BB2_13 Depth=2
	movzbl	(%r14), %r15d
	leaq	1(%r14), %rax
	movl	%r13d, %ecx
	andl	$7, %ecx
	cmoveq	%rax, %r14
	shrl	%cl, %r15d
	andl	128(%rsp), %r15d        # 4-byte Folded Reload
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_15:                               # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$16, %ebp
	je	.LBB2_31
# BB#16:                                # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$24, %ebp
	je	.LBB2_30
# BB#17:                                # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$32, %ebp
	movq	%r14, %rcx
	movq	%rax, %r14
	je	.LBB2_29
	jmp	.LBB2_33
.LBB2_21:                               # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$56, %ebp
	jne	.LBB2_23
# BB#22:                                #   in Loop: Header=BB2_13 Depth=2
	movl	$1, %edx
	jmp	.LBB2_26
.LBB2_23:                               # %if.then.53
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpl	$64, %ebp
	jne	.LBB2_24
# BB#25:                                # %sw.bb
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	leaq	2(%r14), %rax
	movzbl	1(%r14), %ecx
	orq	%rcx, %r15
	movl	$2, %edx
.LBB2_26:                               # %sw.bb.59
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	movzbl	(%rax), %edi
	movq	%rax, %rcx
	leaq	1(%r14,%rdx), %rax
	orq	%rdi, %r15
.LBB2_27:                               # %sw.bb.64
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	addq	$2, %rcx
	movzbl	(%rax), %edx
	orq	%rdx, %r15
	movq	%rax, %r14
	movq	%rcx, %rax
.LBB2_28:                               # %sw.bb.69
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	addq	$2, %r14
	movzbl	(%rax), %ecx
	orq	%rcx, %r15
	movq	%rax, %rcx
	movq	%r14, %rax
.LBB2_29:                               # %sw.bb.74
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	addq	$2, %rcx
	movzbl	(%rax), %edx
	orq	%rdx, %r15
	movq	%rax, %r14
	movq	%rcx, %rax
.LBB2_30:                               # %sw.bb.79
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	movq	%r14, %rcx
	addq	$2, %rcx
	movzbl	(%rax), %edx
	orq	%rdx, %r15
	movq	%rax, %r14
	movq	%rcx, %rax
.LBB2_31:                               # %sw.bb.84
                                        #   in Loop: Header=BB2_13 Depth=2
	shlq	$8, %r15
	addq	$2, %r14
	movzbl	(%rax), %eax
	orq	%rax, %r15
.LBB2_33:                               # %if.end.103
                                        #   in Loop: Header=BB2_13 Depth=2
	cmpq	%r9, %r15
	je	.LBB2_37
# BB#34:                                # %if.then.106
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	%r12d, %ecx
	subl	%esi, %ecx
	jle	.LBB2_35
# BB#36:                                # %if.then.109
                                        #   in Loop: Header=BB2_13 Depth=2
	addl	108(%rsp), %esi         # 4-byte Folded Reload
	movl	$1, %r8d
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	callq	*96(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	movl	132(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movq	%r15, %r9
	movl	%r12d, %esi
	jns	.LBB2_37
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_35:                               #   in Loop: Header=BB2_13 Depth=2
	movq	%r15, %r9
	movl	%r12d, %esi
.LBB2_37:                               # %for.inc
                                        #   in Loop: Header=BB2_13 Depth=2
	leal	1(%r12), %ecx
	subl	%ebp, %r13d
	cmpl	%ebx, %ecx
	jl	.LBB2_13
# BB#38:                                # %for.end
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpl	%esi, %r12d
	jge	.LBB2_40
# BB#39:                                #   in Loop: Header=BB2_11 Depth=1
	movl	132(%rsp), %eax         # 4-byte Reload
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_40:                               # %if.then.125
                                        #   in Loop: Header=BB2_11 Depth=1
	subl	%esi, %ecx
	addl	108(%rsp), %esi         # 4-byte Folded Reload
	movl	$1, %r8d
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	callq	*96(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	movl	132(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	js	.LBB2_42
.LBB2_41:                               # %for.inc.145
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 80(%rsp)          # 8-byte Folded Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	cmpl	76(%rsp), %ecx          # 4-byte Folded Reload
	jl	.LBB2_11
.LBB2_42:                               # %cleanup.150
	movl	132(%rsp), %eax         # 4-byte Reload
.LBB2_43:                               # %cleanup.150
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_default_copy_color, .Lfunc_end2-gx_default_copy_color
	.cfi_endproc

	.globl	gx_no_copy_alpha
	.align	16, 0x90
	.type	gx_no_copy_alpha,@function
gx_no_copy_alpha:                       # @gx_no_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end3:
	.size	gx_no_copy_alpha, .Lfunc_end3-gx_no_copy_alpha
	.cfi_endproc

	.globl	gx_default_copy_alpha_hl_color
	.align	16, 0x90
	.type	gx_default_copy_alpha_hl_color,@function
gx_default_copy_alpha_hl_color:         # @gx_default_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$1560, %rsp             # imm = 0x618
.Ltmp37:
	.cfi_def_cfa_offset 1616
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%ecx, %r11d
	movl	%edx, %r10d
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movl	1632(%rsp), %esi
	movl	1624(%rsp), %ebx
	movl	1616(%rsp), %ebp
	movq	24(%rdi), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movzwl	108(%rdi), %eax
	movl	100(%rdi), %r8d
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	idivl	%r8d
	movl	%eax, %r13d
	movl	$1, %r14d
	movb	%r13b, %cl
	shlq	%cl, %r14
	movl	%ebp, %eax
	orl	%r9d, %eax
	js	.LBB4_2
# BB#1:
	movl	%ebp, %r15d
	jmp	.LBB4_5
.LBB4_2:                                # %if.then
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	%r9d, %eax
	leal	(%rbx,%rax), %ebx
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	cmovsl	%ecx, %r9d
	subl	%eax, %r10d
	testl	%ebp, %ebp
	js	.LBB4_4
# BB#3:
	movl	%ebp, %r15d
	jmp	.LBB4_5
.LBB4_4:                                # %if.then.12
	addl	%ebp, %esi
	imull	%r11d, %ebp
	movslq	%ebp, %rax
	subq	%rax, 184(%rsp)         # 8-byte Folded Spill
	xorl	%r15d, %r15d
.LBB4_5:                                # %if.end.15
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	movl	832(%rdi), %eax
	movl	836(%rdi), %ecx
	subl	%r9d, %eax
	cmpl	%eax, %ebx
	cmovlel	%ebx, %eax
	subl	%r15d, %ecx
	cmpl	%ecx, %esi
	cmovlel	%esi, %ecx
	testl	%eax, %eax
	jle	.LBB4_62
# BB#6:                                 # %if.end.15
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	movl	%r11d, 216(%rsp)        # 4-byte Spill
	testl	%ecx, %ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	jle	.LBB4_62
# BB#7:                                 # %do.end.39
	movl	%eax, %esi
	imull	%r13d, %esi
	addl	$63, %esi
	sarl	$6, %esi
	shll	$3, %esi
	movl	%esi, 196(%rsp)         # 4-byte Spill
	imull	%r8d, %esi
	movq	%rax, %r12
	movl	$.L.str.2, %edx
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r8, %rbx
	callq	*64(%rbp)
	movq	%r12, %rcx
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB4_62
# BB#8:                                 # %for.cond.preheader
	movq	%rcx, %r11
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	testl	%ebx, %ebx
	jle	.LBB4_19
# BB#9:                                 # %for.body.lr.ph
	movq	1640(%rsp), %r8
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %rcx
	xorl	%edi, %edi
	movq	%rcx, %rsi
	andq	%r12, %rsi
	je	.LBB4_16
# BB#10:                                # %vector.body.preheader
	movq	%rbp, %r9
	leaq	1(%rdx), %rdi
	andq	%r12, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rax
	shrq	$4, %rax
	xorl	%ebp, %ebp
	btq	$4, %rdi
	jb	.LBB4_12
# BB#11:                                # %vector.body.prol
	movups	8(%r8), %xmm0
	movups	24(%r8), %xmm1
	movaps	%xmm0, 1424(%rsp)
	movaps	%xmm1, 1440(%rsp)
	movl	$16, %ebp
.LBB4_12:                               # %vector.body.preheader.split
	testq	%rax, %rax
	je	.LBB4_15
# BB#13:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r12, %rdx
	subq	%rbp, %rdx
	leaq	56(%r8,%rbp,2), %rdi
	leaq	1472(%rsp,%rbp,2), %rbp
	.align	16, 0x90
.LBB4_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm1, -32(%rbp)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movaps	%xmm0, -16(%rbp)
	movaps	%xmm1, (%rbp)
	addq	$64, %rdi
	addq	$64, %rbp
	addq	$-32, %rdx
	jne	.LBB4_14
.LBB4_15:
	movq	%rsi, %rdi
	movq	%r9, %rbp
.LBB4_16:                               # %middle.block
	cmpq	%rdi, %rcx
	je	.LBB4_19
# BB#17:                                # %for.body.preheader
	leaq	8(%r8,%rdi,2), %rax
	leaq	1424(%rsp,%rdi,2), %rcx
	movl	%ebx, %edx
	subl	%edi, %edx
	.align	16, 0x90
.LBB4_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %si
	movw	%si, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB4_18
.LBB4_19:                               # %for.end
	movq	%r12, %rcx
	movq	$291127057, 760(%rsp)   # imm = 0x115A3F11
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, 224(%rsp)
	leal	(%r11,%rax), %eax
	movl	%eax, 232(%rsp)
	xorl	%r12d, %r12d
	movl	84(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	jle	.LBB4_60
# BB#20:                                # %for.body.63.lr.ph
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	$16, %edx
	decq	%r14
	subl	%r13d, %edx
	movl	%edx, 220(%rsp)         # 4-byte Spill
	sarl	$3, %r13d
	addl	%r15d, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	176(%rsp), %rdx         # 8-byte Reload
	leal	(%r11,%rdx), %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movq	%r11, 48(%rsp)          # 8-byte Spill
	movslq	216(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leal	-1(%rbx), %eax
	incq	%rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	addq	$12, %rcx
	andq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	leaq	-4(%rcx), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	shrl	$2, %ecx
	incl	%ecx
	andl	$3, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rax, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leal	-4(%rcx), %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
.LBB4_21:                               # %for.body.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
                                        #       Child Loop BB4_24 Depth 3
                                        #       Child Loop BB4_27 Depth 3
                                        #       Child Loop BB4_31 Depth 3
                                        #     Child Loop BB4_35 Depth 2
                                        #       Child Loop BB4_42 Depth 3
                                        #       Child Loop BB4_50 Depth 3
	movq	%r15, 64(%rsp)          # 8-byte Spill
	leal	1(%r15), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	movl	%r15d, 228(%rsp)
	movl	%eax, 236(%rsp)
	movl	$0, %r15d
	xorps	%xmm0, %xmm0
	jle	.LBB4_34
	.align	16, 0x90
.LBB4_22:                               # %overflow.checked224
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_24 Depth 3
                                        #       Child Loop BB4_27 Depth 3
                                        #       Child Loop BB4_31 Depth 3
	movq	160(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	movl	$0, %edx
	je	.LBB4_29
# BB#23:                                # %vector.body220.preheader
                                        #   in Loop: Header=BB4_22 Depth=2
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	$0, %eax
	je	.LBB4_25
	.align	16, 0x90
.LBB4_24:                               # %vector.body220.prol
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, 768(%rsp,%rax,8)
	movups	%xmm0, 784(%rsp,%rax,8)
	addq	$4, %rax
	incq	%rcx
	jne	.LBB4_24
.LBB4_25:                               # %vector.body220.preheader.split
                                        #   in Loop: Header=BB4_22 Depth=2
	cmpq	$12, 136(%rsp)          # 8-byte Folded Reload
	movq	%rsi, %rdx
	jb	.LBB4_29
# BB#26:                                # %vector.body220.preheader.split.split
                                        #   in Loop: Header=BB4_22 Depth=2
	movq	96(%rsp), %rcx          # 8-byte Reload
	subq	%rax, %rcx
	leaq	880(%rsp), %rdx
	leaq	(%rdx,%rax,8), %rax
	.align	16, 0x90
.LBB4_27:                               # %vector.body220
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, -112(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-16, %rcx
	jne	.LBB4_27
# BB#28:                                #   in Loop: Header=BB4_22 Depth=2
	movq	%rsi, %rdx
.LBB4_29:                               # %middle.block221
                                        #   in Loop: Header=BB4_22 Depth=2
	cmpq	%rdx, 152(%rsp)         # 8-byte Folded Reload
	je	.LBB4_32
# BB#30:                                # %for.body.76.preheader
                                        #   in Loop: Header=BB4_22 Depth=2
	leaq	768(%rsp), %rax
	leaq	(%rax,%rdx,8), %rax
	movl	%ebx, %ecx
	subl	%edx, %ecx
	.align	16, 0x90
.LBB4_31:                               # %for.body.76
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	$0, (%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB4_31
.LBB4_32:                               # %for.end.82
                                        #   in Loop: Header=BB4_22 Depth=2
	movq	%rbx, %rbp
	movl	%r15d, %eax
	imull	196(%rsp), %eax         # 4-byte Folded Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%r15, %rbx
	shlq	$32, %rbx
	sarq	$29, %rbx
	movq	%rax, 768(%rsp,%rbx)
	xorl	%ecx, %ecx
	movq	208(%rsp), %rdi         # 8-byte Reload
	leaq	224(%rsp), %rsi
	leaq	760(%rsp), %rdx
	callq	*1448(%rdi)
	movl	%eax, %r12d
	movq	768(%rsp,%rbx), %rax
	movq	%rax, 240(%rsp,%rbx)
	testl	%r12d, %r12d
	js	.LBB4_64
# BB#33:                                # %for.cond.69
                                        #   in Loop: Header=BB4_22 Depth=2
	incq	%r15
	movq	%rbp, %rbx
	cmpl	%ebx, %r15d
	xorps	%xmm0, %xmm0
	jl	.LBB4_22
.LBB4_34:                               # %for.cond.104.preheader
                                        #   in Loop: Header=BB4_21 Depth=1
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	movl	$0, %eax
	movl	%ecx, %r9d
	movq	64(%rsp), %rbp          # 8-byte Reload
	jle	.LBB4_58
	.align	16, 0x90
.LBB4_35:                               # %for.body.108
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_42 Depth 3
                                        #       Child Loop BB4_50 Depth 3
	cmpl	$2, 1648(%rsp)
	jne	.LBB4_37
# BB#36:                                # %if.then.112
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	%edx, 216(%rsp)         # 4-byte Spill
	movl	%r15d, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movzbl	(%rdx,%rcx), %edx
	leal	(%r15,%r15), %ecx
	notl	%ecx
	andb	$6, %cl
	shrl	%cl, %edx
	andl	$3, %edx
	leal	(%rdx,%rdx,4), %ecx
	jmp	.LBB4_38
	.align	16, 0x90
.LBB4_37:                               # %if.else
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	%edx, 216(%rsp)         # 4-byte Spill
	movl	%r15d, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movzbl	(%rdx,%rcx), %ecx
	movl	%ecx, %edx
	andl	$15, %edx
	shrl	$4, %ecx
	testb	$1, %r15b
	cmovnel	%edx, %ecx
.LBB4_38:                               # %if.end.129
                                        #   in Loop: Header=BB4_35 Depth=2
	leal	1(%rax), %r12d
	testl	%ecx, %ecx
	jne	.LBB4_39
# BB#63:                                # %if.then.132
                                        #   in Loop: Header=BB4_35 Depth=2
	movq	176(%rsp), %rbx         # 8-byte Reload
	movslq	%ebx, %rbx
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rbx), %rsi
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	196(%rsp), %ecx         # 4-byte Reload
	callq	*1672(%rdi)
	addl	%r12d, %ebx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movl	216(%rsp), %edx         # 4-byte Reload
	incl	%edx
	movl	%edx, %r9d
	xorl	%r12d, %r12d
	jmp	.LBB4_57
	.align	16, 0x90
.LBB4_39:                               # %if.end.129
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	movq	%rbp, %r9
	cmpl	$15, %ecx
	leaq	1424(%rsp), %r8
	movq	144(%rsp), %r11         # 8-byte Reload
	je	.LBB4_48
# BB#40:                                # %for.cond.146.preheader
                                        #   in Loop: Header=BB4_35 Depth=2
	testl	%r11d, %r11d
	jle	.LBB4_56
# BB#41:                                # %for.body.149.lr.ph
                                        #   in Loop: Header=BB4_35 Depth=2
	movq	%r15, %rsi
	subq	112(%rsp), %rsi         # 8-byte Folded Reload
	imulq	104(%rsp), %rsi         # 8-byte Folded Reload
	movslq	%ecx, %r8
	xorl	%ebp, %ebp
	movabsq	$-8608480567731124087, %rdi # imm = 0x8888888888888889
	.align	16, 0x90
.LBB4_42:                               # %for.body.149
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	240(%rsp,%rbp,8), %rax
	cmpl	$1, %r13d
	jne	.LBB4_43
# BB#45:                                # %sw.bb.171
                                        #   in Loop: Header=BB4_42 Depth=3
	movzbl	(%rax,%rsi), %eax
	imulq	$257, %rax, %rbx        # imm = 0x101
	jmp	.LBB4_46
	.align	16, 0x90
.LBB4_43:                               # %for.body.149
                                        #   in Loop: Header=BB4_42 Depth=3
	cmpl	$2, %r13d
	movl	$0, %ebx
	jne	.LBB4_46
# BB#44:                                # %sw.bb
                                        #   in Loop: Header=BB4_42 Depth=3
	movzbl	(%rax,%rsi), %ecx
	shlq	$8, %rcx
	movzbl	1(%rax,%rsi), %ebx
	orq	%rcx, %rbx
.LBB4_46:                               # %sw.epilog
                                        #   in Loop: Header=BB4_42 Depth=3
	movzwl	%bx, %eax
	movzwl	1424(%rsp,%rbp,2), %ecx
	subq	%rax, %rcx
	imulq	%r8, %rcx
	movq	%rcx, %rax
	imulq	%rdi
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrl	$3, %edx
	addl	%eax, %edx
	addl	%edx, %ebx
	movw	%bx, 1296(%rsp,%rbp,2)
	incq	%rbp
	cmpl	%ebp, %r11d
	jne	.LBB4_42
# BB#47:                                #   in Loop: Header=BB4_35 Depth=2
	leaq	1296(%rsp), %r8
.LBB4_48:                               # %if.end.208
                                        #   in Loop: Header=BB4_35 Depth=2
	testl	%r11d, %r11d
	jle	.LBB4_56
# BB#49:                                # %for.body.212.lr.ph
                                        #   in Loop: Header=BB4_35 Depth=2
	movq	%r15, %r10
	subq	112(%rsp), %r10         # 8-byte Folded Reload
	imulq	104(%rsp), %r10         # 8-byte Folded Reload
	movl	%r11d, %esi
	leaq	240(%rsp), %rdi
	movq	%r8, %rbp
	xorl	%eax, %eax
	.align	16, 0x90
.LBB4_50:                               # %for.body.212
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rdi), %rbx
	addq	%r10, %rbx
	cmpl	$2, %r13d
	jne	.LBB4_51
# BB#53:                                # %sw.bb.220
                                        #   in Loop: Header=BB4_50 Depth=3
	movzwl	(%rbp), %ecx
	movl	%r14d, %edx
	andl	%ecx, %edx
	movb	%dl, (%rbx)
	incq	%rbx
	movq	%rbp, %rcx
	jmp	.LBB4_54
	.align	16, 0x90
.LBB4_51:                               # %for.body.212
                                        #   in Loop: Header=BB4_50 Depth=3
	cmpl	$1, %r13d
	jne	.LBB4_55
# BB#52:                                # %for.body.212.sw.bb.227_crit_edge
                                        #   in Loop: Header=BB4_50 Depth=3
	leaq	(%r8,%rax,2), %rcx
.LBB4_54:                               # %sw.bb.227
                                        #   in Loop: Header=BB4_50 Depth=3
	movzwl	(%rcx), %edx
	movl	220(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	movl	%r14d, %ecx
	andl	%edx, %ecx
	movb	%cl, (%rbx)
.LBB4_55:                               # %sw.epilog.236
                                        #   in Loop: Header=BB4_50 Depth=3
	incq	%rax
	addq	$2, %rbp
	addq	$8, %rdi
	decl	%esi
	jne	.LBB4_50
.LBB4_56:                               # %if.end.240.loopexit
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	216(%rsp), %edx         # 4-byte Reload
	incl	%edx
	movq	%r9, %rbp
	movl	168(%rsp), %r9d         # 4-byte Reload
.LBB4_57:                               # %if.end.240
                                        #   in Loop: Header=BB4_35 Depth=2
	incq	%r15
	cmpl	172(%rsp), %r15d        # 4-byte Folded Reload
	movl	%r12d, %eax
	jl	.LBB4_35
.LBB4_58:                               # %for.inc.251
                                        #   in Loop: Header=BB4_21 Depth=1
	movq	176(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movq	200(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rsi
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	196(%rsp), %ecx         # 4-byte Reload
	callq	*1672(%rdi)
	movl	%eax, %r12d
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, 184(%rsp)         # 8-byte Folded Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	movl	%ecx, %r15d
	movq	144(%rsp), %rbx         # 8-byte Reload
	jl	.LBB4_21
# BB#59:
	movq	88(%rsp), %rbp          # 8-byte Reload
.LBB4_60:                               # %for.end.255
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	jmp	.LBB4_61
.LBB4_64:                               # %cleanup
	movl	$.L.str.3, %edx
	movq	88(%rsp), %rdi          # 8-byte Reload
.LBB4_61:                               # %cleanup.258
	movq	200(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
.LBB4_62:                               # %cleanup.258
	movl	%r12d, %eax
	addq	$1560, %rsp             # imm = 0x618
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_default_copy_alpha_hl_color, .Lfunc_end4-gx_default_copy_alpha_hl_color
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	2290649225              # 0x88888889
	.long	2290649225              # 0x88888889
	.long	2290649225              # 0x88888889
	.long	2290649225              # 0x88888889
	.text
	.globl	gx_default_copy_alpha
	.align	16, 0x90
	.type	gx_default_copy_alpha,@function
gx_default_copy_alpha:                  # @gx_default_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$616, %rsp              # imm = 0x268
.Ltmp50:
	.cfi_def_cfa_offset 672
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	696(%rsp), %rax
	movl	688(%rsp), %r12d
	movl	680(%rsp), %r13d
	movl	672(%rsp), %ebx
	cmpl	$1, 704(%rsp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	%rax, 32(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	$-1, 24(%rsp)
	movl	%ebp, %r9d
	callq	*1216(%rdi)
	jmp	.LBB5_82
.LBB5_2:                                # %if.end
	movl	%ecx, 280(%rsp)         # 4-byte Spill
	movq	%rsi, 296(%rsp)         # 8-byte Spill
	movq	%rdx, 312(%rsp)         # 8-byte Spill
	movq	24(%rdi), %rax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	movzwl	108(%rdi), %eax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movl	100(%rdi), %eax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rdi, %r15
	callq	gx_device_raster
	movl	%ebx, %ecx
	orl	%ebp, %ecx
	js	.LBB5_4
# BB#3:
	movl	%ebp, 324(%rsp)         # 4-byte Spill
	movl	%ebx, %esi
	jmp	.LBB5_7
.LBB5_4:                                # %if.then.7
	movl	%ebp, %ecx
	sarl	$31, %ecx
	andl	%ebp, %ecx
	leal	(%r13,%rcx), %r13d
	xorl	%esi, %esi
	testl	%ebp, %ebp
	cmovsl	%esi, %ebp
	movl	%ebp, 324(%rsp)         # 4-byte Spill
	movq	312(%rsp), %rdx         # 8-byte Reload
	subl	%ecx, %edx
	movq	%rdx, 312(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	js	.LBB5_6
# BB#5:
	movl	%ebx, %esi
	jmp	.LBB5_7
.LBB5_6:                                # %if.then.14
	addl	%ebx, %r12d
	imull	280(%rsp), %ebx         # 4-byte Folded Reload
	movslq	%ebx, %rcx
	subq	%rcx, 296(%rsp)         # 8-byte Folded Spill
.LBB5_7:                                # %if.end.17
	movl	832(%r15), %edx
	movl	836(%r15), %ecx
	subl	324(%rsp), %edx         # 4-byte Folded Reload
	cmpl	%edx, %r13d
	cmovlel	%r13d, %edx
	subl	%esi, %ecx
	cmpl	%ecx, %r12d
	cmovlel	%r12d, %ecx
	testl	%edx, %edx
	jle	.LBB5_81
# BB#8:                                 # %if.end.17
	testl	%ecx, %ecx
	jle	.LBB5_81
# BB#9:                                 # %do.end.41
	movl	%ecx, 252(%rsp)         # 4-byte Spill
	movl	%esi, 236(%rsp)         # 4-byte Spill
	movl	%edx, %ebx
	movq	%rdx, %r14
	movq	328(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %ebx
	addl	$63, %ebx
	sarl	$6, %ebx
	shll	$3, %ebx
	movl	$.L.str.4, %edx
	movq	288(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	*64(%rbp)
	movq	%rax, %r13
	movq	%r13, 224(%rsp)         # 8-byte Spill
	movl	$.L.str.5, %edx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	*64(%rbp)
	movq	%rax, %r12
	movq	%r12, 240(%rsp)         # 8-byte Spill
	testq	%r13, %r13
	movl	$-25, %eax
	je	.LBB5_80
# BB#10:                                # %do.end.41
	movl	%ebx, 92(%rsp)          # 4-byte Spill
	testq	%r12, %r12
	movq	%r14, 200(%rsp)         # 8-byte Spill
	je	.LBB5_80
# BB#11:                                # %if.end.55
	leaq	480(%rsp), %rdx
	movq	%r15, %rdi
	movq	696(%rsp), %rsi
	callq	*1560(%r15)
	xorl	%eax, %eax
	cmpl	$0, 252(%rsp)           # 4-byte Folded Reload
	jle	.LBB5_80
# BB#12:                                # %for.body.lr.ph
	movl	252(%rsp), %eax         # 4-byte Reload
	addl	236(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 252(%rsp)         # 4-byte Spill
	movq	312(%rsp), %rax         # 8-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movslq	280(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$8, %eax
	movq	328(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, 212(%rsp)         # 4-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	shrl	$3, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movl	%ecx, %ebp
	shrl	$2, %ebp
	movslq	324(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	incq	%rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rax, %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	-4(%rcx), %rax
	shrq	$2, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	472(%rsp), %rcx
	leaq	336(%rsp), %r13
	movdqa	.LCPI5_0(%rip), %xmm0   # xmm0 = [2290649225,2290649225,2290649225,2290649225]
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	movdqa	%xmm1, 144(%rsp)        # 16-byte Spill
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	movdqa	%xmm0, 128(%rsp)        # 16-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 68(%rsp)          # 4-byte Spill
.LBB5_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_19 Depth 3
                                        #         Child Loop BB5_47 Depth 4
                                        #         Child Loop BB5_51 Depth 4
	movq	%r15, %rdi
	movl	236(%rsp), %esi         # 4-byte Reload
	movq	224(%rsp), %rdx         # 8-byte Reload
	callq	*1240(%r15)
	testl	%eax, %eax
	js	.LBB5_80
# BB#14:                                # %for.cond.72.preheader
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	%r15, %r11
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	$0, 124(%rsp)           # 4-byte Folded Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	324(%rsp), %eax         # 4-byte Reload
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	$0, 184(%rsp)           # 4-byte Folded Spill
	movq	%r12, %rdx
	movq	312(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edi
	jg	.LBB5_15
	jmp	.LBB5_79
.LBB5_59:                               # %if.else.266
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	$8, %ecx
	subl	%esi, %ecx
	movl	%esi, 184(%rsp)         # 4-byte Spill
	shlq	%cl, %rax
	movl	124(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movl	%eax, 124(%rsp)         # 4-byte Spill
	jmp	.LBB5_74
.LBB5_61:                               # %if.then.277
                                        #   in Loop: Header=BB5_15 Depth=2
	shlq	$4, %rax
	movl	%r8d, 184(%rsp)         # 4-byte Spill
	movl	%eax, 124(%rsp)         # 4-byte Spill
	jmp	.LBB5_74
.LBB5_64:                               # %if.then.291
                                        #   in Loop: Header=BB5_15 Depth=2
	shrq	$4, %rdx
	movb	%dl, (%r8)
	movq	%r8, %rdx
	incq	%rdx
	shlq	$4, %rax
	movl	%r9d, 184(%rsp)         # 4-byte Spill
	movl	%eax, 124(%rsp)         # 4-byte Spill
	jmp	.LBB5_74
.LBB5_22:                               # %if.then.103
                                        #   in Loop: Header=BB5_15 Depth=2
	movslq	84(%rsp), %rax          # 4-byte Folded Reload
	cmpq	%rax, %rbx
	jle	.LBB5_23
# BB#24:                                # %if.then.106
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%r10, 280(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movl	184(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movq	240(%rsp), %r12         # 8-byte Reload
	je	.LBB5_26
# BB#25:                                # %if.then.110
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	124(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	movq	%rdx, %rdi
	movzbl	(%rdi), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rdi)
.LBB5_26:                               # %if.end.117
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	84(%rsp), %r9d          # 4-byte Reload
	movl	%r9d, %edx
	subl	%r9d, %edx
	movl	%ebx, %eax
	subl	%r9d, %eax
	movl	236(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	92(%rsp), %ecx          # 4-byte Reload
	callq	*1224(%r15)
	movq	%r15, %r11
	testl	%eax, %eax
	movl	68(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	movq	280(%rsp), %r10         # 8-byte Reload
	jns	.LBB5_27
	jmp	.LBB5_84
.LBB5_23:                               #   in Loop: Header=BB5_15 Depth=2
	movq	240(%rsp), %r12         # 8-byte Reload
.LBB5_27:                               # %cond.end.135
                                        #   in Loop: Header=BB5_15 Depth=2
	leal	1(%r10), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	$0, 184(%rsp)           # 4-byte Folded Spill
	movq	%r12, %rdx
	movl	$0, 124(%rsp)           # 4-byte Folded Spill
	jmp	.LBB5_74
	.align	16, 0x90
.LBB5_15:                               # %for.body.76
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_19 Depth 3
                                        #         Child Loop BB5_47 Depth 4
                                        #         Child Loop BB5_51 Depth 4
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	movq	%rdi, 264(%rsp)         # 8-byte Spill
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	movl	%eax, %r10d
	movq	%r10, 280(%rsp)         # 8-byte Spill
	movl	%edi, %eax
	cmpl	$2, 704(%rsp)
	jne	.LBB5_17
# BB#16:                                # %if.then.79
                                        #   in Loop: Header=BB5_15 Depth=2
	sarl	$2, %eax
	cltq
	movq	296(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leal	(%rdi,%rdi), %ecx
	notl	%ecx
	andb	$6, %cl
	shrl	%cl, %eax
	andl	$3, %eax
	leal	(%rax,%rax,4), %r14d
	jmp	.LBB5_18
.LBB5_17:                               # %if.else
                                        #   in Loop: Header=BB5_15 Depth=2
	sarl	%eax
	cltq
	movq	296(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %r14d
	movl	%r14d, %eax
	andl	$15, %eax
	shrl	$4, %r14d
	testb	$1, %dil
	cmovnel	%eax, %r14d
.LBB5_18:                               # %blend.preheader
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rbx, %rax
	imulq	328(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, %r12
	shrq	$3, %r12
	andl	$536870911, %r12d       # imm = 0x1FFFFFFF
	andl	$7, %eax
	movl	212(%rsp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movq	%rbx, %rax
	imulq	216(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	$-1, %r15
	jmp	.LBB5_19
	.align	16, 0x90
.LBB5_83:                               # %cleanup.248
                                        #   in Loop: Header=BB5_19 Depth=3
	cmpl	$7, %r14d
	sete	%al
	movzbl	%al, %eax
	addl	%r14d, %eax
	movl	%eax, %ecx
	andl	$8, %ecx
	sarl	%eax
	orl	%ecx, %eax
	movl	%eax, %r14d
	movq	272(%rsp), %rbx         # 8-byte Reload
	movq	264(%rsp), %rdi         # 8-byte Reload
	movq	280(%rsp), %r10         # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
.LBB5_19:                               # %blend
                                        #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_47 Depth 4
                                        #         Child Loop BB5_51 Depth 4
	cmpl	$15, %r14d
	je	.LBB5_20
# BB#21:                                # %blend
                                        #   in Loop: Header=BB5_19 Depth=3
	testl	%r14d, %r14d
	je	.LBB5_22
# BB#28:                                # %if.else.144
                                        #   in Loop: Header=BB5_19 Depth=3
	cmpq	$-1, %r15
	movq	%r11, %rbx
	jne	.LBB5_41
# BB#29:                                # %if.then.147
                                        #   in Loop: Header=BB5_19 Depth=3
	movq	472(%rsp), %rax
	movq	328(%rsp), %rcx         # 8-byte Reload
	cmpl	$7, %ecx
	ja	.LBB5_31
# BB#30:                                # %if.then.150
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax,%r12), %eax
	movl	208(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %eax
	andl	80(%rsp), %eax          # 4-byte Folded Reload
	movslq	%eax, %r15
	jmp	.LBB5_41
.LBB5_31:                               # %if.else.164
                                        #   in Loop: Header=BB5_19 Depth=3
	xorl	%r15d, %r15d
	movq	216(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %ecx
	cmpl	$7, %ecx
	ja	.LBB5_41
# BB#32:                                # %if.else.164
                                        #   in Loop: Header=BB5_19 Depth=3
	addq	192(%rsp), %rax         # 8-byte Folded Reload
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_33:                               # %sw.bb
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %r15d
	incq	%rax
	shlq	$56, %r15
.LBB5_34:                               # %sw.bb.174
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %ecx
	incq	%rax
	shlq	$48, %rcx
	orq	%rcx, %r15
.LBB5_35:                               # %sw.bb.179
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %ecx
	incq	%rax
	shlq	$40, %rcx
	addq	%rcx, %r15
.LBB5_36:                               # %sw.bb.184
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %ecx
	incq	%rax
	shlq	$32, %rcx
	addq	%rcx, %r15
.LBB5_37:                               # %sw.bb.189
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %ecx
	incq	%rax
	shlq	$24, %rcx
	addq	%rcx, %r15
.LBB5_38:                               # %sw.bb.194
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %ecx
	incq	%rax
	shlq	$16, %rcx
	addq	%rcx, %r15
.LBB5_39:                               # %sw.bb.199
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %ecx
	incq	%rax
	shlq	$8, %rcx
	addq	%rcx, %r15
.LBB5_40:                               # %sw.bb.204
                                        #   in Loop: Header=BB5_19 Depth=3
	movzbl	(%rax), %eax
	addq	%rax, %r15
	.align	16, 0x90
.LBB5_41:                               # %if.end.209
                                        #   in Loop: Header=BB5_19 Depth=3
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*1560(%rbx)
	movq	%rbx, %r8
	movq	304(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_52
# BB#42:                                # %overflow.checked
                                        #   in Loop: Header=BB5_19 Depth=3
	movq	168(%rsp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	movl	$0, %esi
	pxor	%xmm8, %xmm8
	movdqa	.LCPI5_0(%rip), %xmm7   # xmm7 = [2290649225,2290649225,2290649225,2290649225]
	movdqa	144(%rsp), %xmm9        # 16-byte Reload
	movdqa	128(%rsp), %xmm10       # 16-byte Reload
	je	.LBB5_49
# BB#43:                                # %vector.ph
                                        #   in Loop: Header=BB5_19 Depth=3
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB5_45
# BB#44:                                # %vector.body.prol
                                        #   in Loop: Header=BB5_19 Depth=3
	movq	336(%rsp), %xmm1        # xmm1 = mem[0],zero
	punpcklwd	%xmm8, %xmm1    # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movq	480(%rsp), %xmm2        # xmm2 = mem[0],zero
	punpcklwd	%xmm8, %xmm2    # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	psubd	%xmm1, %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movdqa	%xmm9, %xmm3
	pand	%xmm2, %xmm3
	movdqa	%xmm2, %xmm4
	psrad	$31, %xmm4
	pand	%xmm7, %xmm4
	paddd	%xmm3, %xmm4
	movdqa	%xmm2, %xmm3
	pmuludq	%xmm7, %xmm3
	pshufd	$237, %xmm3, %xmm3      # xmm3 = xmm3[1,3,2,3]
	pshufd	$245, %xmm2, %xmm5      # xmm5 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm5
	pshufd	$237, %xmm5, %xmm5      # xmm5 = xmm5[1,3,2,3]
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	psubd	%xmm4, %xmm3
	paddd	%xmm2, %xmm3
	movdqa	%xmm3, %xmm2
	psrld	$31, %xmm2
	psrad	$3, %xmm3
	paddd	%xmm2, %xmm3
	paddw	%xmm1, %xmm3
	pshuflw	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, 336(%rsp)
	movl	$4, %edx
.LBB5_45:                               # %vector.ph.split
                                        #   in Loop: Header=BB5_19 Depth=3
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	movq	%rdi, %rsi
	je	.LBB5_49
# BB#46:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB5_19 Depth=3
	movq	%rdi, %rax
	subq	%rdx, %rax
	leaq	344(%rsp), %rcx
	leaq	(%rcx,%rdx,2), %rcx
	leaq	488(%rsp), %rsi
	leaq	(%rsi,%rdx,2), %rdx
	.align	16, 0x90
.LBB5_47:                               # %vector.body
                                        #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        #       Parent Loop BB5_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-8(%rcx), %xmm2         # xmm2 = mem[0],zero
	punpcklwd	%xmm8, %xmm2    # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movq	-8(%rdx), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm8, %xmm1    # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	psubd	%xmm2, %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm4      # xmm4 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm1      # xmm1 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movdqa	%xmm9, %xmm3
	pand	%xmm4, %xmm3
	movdqa	%xmm4, %xmm5
	psrad	$31, %xmm5
	pand	%xmm7, %xmm5
	paddd	%xmm3, %xmm5
	movdqa	%xmm4, %xmm3
	pmuludq	%xmm7, %xmm3
	pshufd	$237, %xmm3, %xmm3      # xmm3 = xmm3[1,3,2,3]
	pshufd	$245, %xmm4, %xmm6      # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm10, %xmm6
	pshufd	$237, %xmm6, %xmm6      # xmm6 = xmm6[1,3,2,3]
	punpckldq	%xmm6, %xmm3    # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1]
	psubd	%xmm5, %xmm3
	paddd	%xmm4, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$31, %xmm4
	psrad	$3, %xmm3
	paddd	%xmm4, %xmm3
	paddw	%xmm2, %xmm3
	pshuflw	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, -8(%rcx)
	movq	(%rcx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm8, %xmm2    # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movq	(%rdx), %xmm3           # xmm3 = mem[0],zero
	punpcklwd	%xmm8, %xmm3    # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	psubd	%xmm2, %xmm3
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm1      # xmm1 = xmm4[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	movdqa	%xmm9, %xmm1
	pand	%xmm3, %xmm1
	movdqa	%xmm3, %xmm4
	psrad	$31, %xmm4
	pand	%xmm7, %xmm4
	paddd	%xmm1, %xmm4
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm7, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	pshufd	$245, %xmm3, %xmm5      # xmm5 = xmm3[1,1,3,3]
	pmuludq	%xmm10, %xmm5
	pshufd	$237, %xmm5, %xmm5      # xmm5 = xmm5[1,3,2,3]
	punpckldq	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	psubd	%xmm4, %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	psrld	$31, %xmm3
	psrad	$3, %xmm1
	paddd	%xmm3, %xmm1
	paddw	%xmm2, %xmm1
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rcx)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$-8, %rax
	jne	.LBB5_47
# BB#48:                                #   in Loop: Header=BB5_19 Depth=3
	movq	%rdi, %rsi
.LBB5_49:                               # %middle.block
                                        #   in Loop: Header=BB5_19 Depth=3
	cmpq	%rsi, 176(%rsp)         # 8-byte Folded Reload
	je	.LBB5_52
# BB#50:                                # %for.body.217.preheader
                                        #   in Loop: Header=BB5_19 Depth=3
	leaq	336(%rsp,%rsi,2), %rax
	leaq	480(%rsp,%rsi,2), %rcx
	movq	304(%rsp), %rdx         # 8-byte Reload
	subl	%esi, %edx
	.align	16, 0x90
.LBB5_51:                               # %for.body.217
                                        #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        #       Parent Loop BB5_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzwl	(%rax), %esi
	movzwl	(%rcx), %edi
	subl	%esi, %edi
	imull	%r14d, %edi
	movslq	%edi, %rdi
	imulq	$-2004318071, %rdi, %rbx # imm = 0xFFFFFFFF88888889
	shrq	$32, %rbx
	addl	%ebx, %edi
	movl	%edi, %ebx
	shrl	$31, %ebx
	shrl	$3, %edi
	addl	%ebx, %edi
	addl	%esi, %edi
	movw	%di, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB5_51
.LBB5_52:                               # %for.end
                                        #   in Loop: Header=BB5_19 Depth=3
	movq	%r8, %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*1552(%rbx)
	movq	%rbx, %r11
	cmpq	$-1, %rax
	je	.LBB5_83
# BB#53:                                # %cleanup.248.thread
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	240(%rsp), %r12         # 8-byte Reload
	movq	272(%rsp), %rbx         # 8-byte Reload
	movq	264(%rsp), %rdi         # 8-byte Reload
	movq	280(%rsp), %r10         # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB5_54
	.align	16, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_15 Depth=2
	movq	696(%rsp), %rax
	movq	240(%rsp), %r12         # 8-byte Reload
.LBB5_54:                               # %do.body.253
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	%ebp, %ecx
	cmpl	$16, %ebp
	ja	.LBB5_56
# BB#55:                                # %do.body.253
                                        #   in Loop: Header=BB5_15 Depth=2
	jmpq	*.LJTI5_1(,%rcx,8)
.LBB5_57:                               # %sw.bb.255
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	328(%rsp), %rcx         # 8-byte Reload
	movl	184(%rsp), %esi         # 4-byte Reload
	addl	%ecx, %esi
	cmpl	$8, %esi
	jne	.LBB5_59
# BB#58:                                # %if.then.259
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	124(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movb	%al, (%rdx)
	incq	%rdx
	movl	$0, 184(%rsp)           # 4-byte Folded Spill
	movl	$0, 124(%rsp)           # 4-byte Folded Spill
	jmp	.LBB5_74
.LBB5_60:                               # %sw.bb.275
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	184(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %r8d
	xorl	$4, %r8d
	cmpl	$4, %ecx
	jne	.LBB5_61
# BB#62:                                # %if.else.280
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	124(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movb	%al, (%rdx)
	incq	%rdx
	movl	%r8d, 184(%rsp)         # 4-byte Spill
	jmp	.LBB5_74
.LBB5_63:                               # %sw.bb.288
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rdx, %r8
	movl	184(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %r9d
	xorl	$4, %r9d
	movq	%rax, %rdx
	cmpl	$4, %ecx
	jne	.LBB5_64
# BB#65:                                # %if.else.297
                                        #   in Loop: Header=BB5_15 Depth=2
	shrq	$8, %rdx
	movl	124(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %dl
	movb	%dl, (%r8)
	movq	%r8, %rdx
	movb	%al, 1(%rdx)
	addq	$2, %rdx
	movl	%r9d, 184(%rsp)         # 4-byte Spill
	jmp	.LBB5_74
.LBB5_66:                               # %sw.bb.308
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rax, %rcx
	shrq	$56, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB5_67:                               # %sw.bb.312
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rax, %rcx
	shrq	$48, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB5_68:                               # %sw.bb.316
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rax, %rcx
	shrq	$40, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB5_69:                               # %sw.bb.320
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB5_70:                               # %sw.bb.324
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB5_71:                               # %sw.bb.328
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB5_72:                               # %sw.bb.332
                                        #   in Loop: Header=BB5_15 Depth=2
	movb	%ah, (%rdx)  # NOREX
	incq	%rdx
.LBB5_73:                               # %sw.bb.336
                                        #   in Loop: Header=BB5_15 Depth=2
	movb	%al, (%rdx)
	incq	%rdx
.LBB5_74:                               # %for.inc.349
                                        #   in Loop: Header=BB5_15 Depth=2
	incl	%edi
	leal	1(%r10), %eax
	incq	%rbx
	cmpl	188(%rsp), %edi         # 4-byte Folded Reload
	jl	.LBB5_15
# BB#75:                                # %for.end.352
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	84(%rsp), %r10d         # 4-byte Folded Reload
	jl	.LBB5_79
# BB#76:                                # %if.then.355
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	%rdx, %rcx
	movl	184(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	je	.LBB5_78
# BB#77:                                # %if.then.359
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	124(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	movq	%rcx, %rbx
	movl	%esi, %ecx
	movzbl	(%rbx), %esi
	movl	$255, %edi
	shrl	%cl, %edi
	andl	%esi, %edi
	orl	%edx, %edi
	movb	%dil, (%rbx)
.LBB5_78:                               # %if.end.366
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	84(%rsp), %r9d          # 4-byte Reload
	movl	%r9d, %edx
	subl	%r9d, %edx
	subl	%r9d, %eax
	movl	%eax, 8(%rsp)
	movl	236(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	92(%rsp), %ecx          # 4-byte Reload
	callq	*1224(%rbx)
	movq	%rbx, %r11
	testl	%eax, %eax
	movl	68(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	js	.LBB5_84
.LBB5_79:                               # %cleanup.380.thread
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	%rax, 296(%rsp)         # 8-byte Folded Spill
	movl	236(%rsp), %eax         # 4-byte Reload
	incl	%eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	cmpl	252(%rsp), %eax         # 4-byte Folded Reload
	movl	88(%rsp), %eax          # 4-byte Reload
	leaq	472(%rsp), %rcx
	movq	%r11, %r15
	jl	.LBB5_13
.LBB5_80:                               # %out
	movl	%eax, %r14d
	movl	$.L.str.5, %edx
	movq	288(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	224(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rbx)
	jmp	.LBB5_81
.LBB5_56:                               # %cleanup.380.thread241
	movl	$-15, %r14d
.LBB5_81:                               # %return
	movl	%r14d, %eax
.LBB5_82:                               # %return
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_84:                               # %cleanup.380
	movl	68(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB5_81
.Lfunc_end5:
	.size	gx_default_copy_alpha, .Lfunc_end5-gx_default_copy_alpha
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_40
	.quad	.LBB5_39
	.quad	.LBB5_38
	.quad	.LBB5_37
	.quad	.LBB5_36
	.quad	.LBB5_35
	.quad	.LBB5_34
	.quad	.LBB5_33
.LJTI5_1:
	.quad	.LBB5_57
	.quad	.LBB5_60
	.quad	.LBB5_73
	.quad	.LBB5_63
	.quad	.LBB5_72
	.quad	.LBB5_56
	.quad	.LBB5_71
	.quad	.LBB5_56
	.quad	.LBB5_70
	.quad	.LBB5_56
	.quad	.LBB5_69
	.quad	.LBB5_56
	.quad	.LBB5_68
	.quad	.LBB5_56
	.quad	.LBB5_67
	.quad	.LBB5_56
	.quad	.LBB5_66

	.text
	.globl	gx_no_copy_rop
	.align	16, 0x90
	.type	gx_no_copy_rop,@function
gx_no_copy_rop:                         # @gx_no_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end6:
	.size	gx_no_copy_rop, .Lfunc_end6-gx_no_copy_rop
	.cfi_endproc

	.globl	gx_default_fill_mask
	.align	16, 0x90
	.type	gx_default_fill_mask,@function
gx_default_fill_mask:                   # @gx_default_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$1960, %rsp             # imm = 0x7A8
.Ltmp63:
	.cfi_def_cfa_offset 2016
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rdi, %r10
	movl	2024(%rsp), %r15d
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	je	.LBB7_13
# BB#1:                                 # %entry
	movl	2032(%rsp), %r12d
	testl	%r12d, %r12d
	je	.LBB7_13
# BB#2:                                 # %if.end
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movq	2064(%rsp), %rsi
	movl	2016(%rsp), %r13d
	testq	%rsi, %rsi
	je	.LBB7_3
# BB#4:                                 # %if.then.3
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	leal	(%r15,%rbx), %eax
	leal	(%r12,%r13), %ecx
	movd	%ecx, %xmm0
	movd	%r13d, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%eax, %xmm0
	movd	%ebx, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pslld	$8, %xmm2
	movdqa	%xmm2, 80(%rsp)
	leaq	104(%rsp), %rdi
	leaq	80(%rsp), %rcx
	movq	%r10, %rdx
	callq	gx_make_clip_device_on_stack_if_needed
	movq	%rax, %r10
	testq	%r10, %r10
	je	.LBB7_13
# BB#5:                                 # %if.end.16
	movl	80(%rsp), %r9d
	movl	84(%rsp), %eax
	sarl	$8, %r9d
	xorl	%edx, %edx
	movl	%r9d, %ebp
	subl	%ebx, %ebp
	cmovll	%ebx, %r9d
	cmovlel	%edx, %ebp
	movl	88(%rsp), %edx
	sarl	$8, %edx
	leal	(%r9,%r15), %ecx
	movl	%edx, %edi
	subl	%r9d, %edi
	cmpl	%ecx, %edx
	cmovll	%edi, %r15d
	sarl	$8, %eax
	movl	%eax, %edi
	subl	%r13d, %edi
	movq	56(%rsp), %r8           # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	jle	.LBB7_6
# BB#7:                                 # %if.then.35
	movl	76(%rsp), %ecx          # 4-byte Reload
	imull	%ecx, %edi
	movslq	%edi, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	addq	%rdi, %rsi
	jmp	.LBB7_8
.LBB7_3:
	movl	%ebx, %r9d
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB7_9
.LBB7_6:
	movl	%r13d, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB7_8:                                # %cleanup.thread
	addl	%ebp, %edx
	movl	92(%rsp), %edi
	sarl	$8, %edi
	leal	(%rax,%r12), %ebp
	movl	%edi, %ebx
	subl	%eax, %ebx
	cmpl	%ebp, %edi
	cmovll	%ebx, %r12d
	movl	%eax, %r13d
.LBB7_9:                                # %if.end.47
	movl	2048(%rsp), %eax
	movq	2040(%rsp), %rdi
	cmpl	$2, %eax
	jl	.LBB7_11
# BB#10:                                # %if.then.49
	movq	8(%rdi), %rdi
	movl	%eax, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r13d, (%rsp)
	movq	%r10, %rdi
	callq	*1312(%r10)
	jmp	.LBB7_12
.LBB7_11:                               # %if.else
	movl	2056(%rsp), %eax
	movq	(%rdi), %rbx
	movl	%eax, 32(%rsp)
	movq	%r10, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$0, 40(%rsp)
	callq	*48(%rbx)
.LBB7_12:                               # %cleanup.52
	movl	%eax, %r14d
.LBB7_13:                               # %cleanup.52
	movl	%r14d, %eax
	addq	$1960, %rsp             # imm = 0x7A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_default_fill_mask, .Lfunc_end7-gx_default_fill_mask
	.cfi_endproc

	.globl	gx_default_strip_tile_rect_devn
	.align	16, 0x90
	.type	gx_default_strip_tile_rect_devn,@function
gx_default_strip_tile_rect_devn:        # @gx_default_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	retq
.Lfunc_end8:
	.size	gx_default_strip_tile_rect_devn, .Lfunc_end8-gx_default_strip_tile_rect_devn
	.cfi_endproc

	.globl	gx_default_strip_tile_rectangle
	.align	16, 0x90
	.type	gx_default_strip_tile_rectangle,@function
gx_default_strip_tile_rectangle:        # @gx_default_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 224
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%rsi, %r14
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movzwl	32(%r14), %r9d
	testl	%r9d, %r9d
	movl	$-28, %eax
	je	.LBB9_78
# BB#1:                                 # %entry
	movq	%rdx, %rsi
	movw	34(%r14), %dx
	testw	%dx, %dx
	je	.LBB9_78
# BB#2:                                 # %do.body
	movl	8(%r14), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movl	12(%r14), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movl	16(%r14), %edi
	movzwl	38(%r14), %ebp
	movq	24(%r14), %r13
	movl	%ecx, %eax
	movq	%rsi, %r11
	orl	%r11d, %eax
	js	.LBB9_4
# BB#3:
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %if.then.13
	movl	%r11d, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%r8d, %eax
	xorl	%r8d, %r8d
	testl	%r11d, %r11d
	cmovsl	%r8d, %r11d
	movl	%ecx, %esi
	sarl	$31, %esi
	andl	%ecx, %esi
	addl	%ebx, %esi
	testl	%ecx, %ecx
	cmovsl	%r8d, %ecx
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movl	%eax, %r8d
.LBB9_5:                                # %do.end
	movl	248(%rsp), %r15d
	movl	240(%rsp), %r12d
	movq	232(%rsp), %rsi
	movq	224(%rsp), %r10
	testw	%bp, %bp
	jne	.LBB9_8
# BB#6:                                 # %do.end
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	1208(%rax), %rbx
	movl	$gx_default_tile_rectangle, %eax
	cmpq	%rax, %rbx
	je	.LBB9_8
# BB#7:                                 # %if.then.30
	movq	160(%rsp), %rbp         # 8-byte Reload
	movq	$gx_default_tile_rectangle, 1208(%rbp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%r10, (%rsp)
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r11d, %edx
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	*%rbx
	movq	%rbx, 1208(%rbp)
	jmp	.LBB9_78
.LBB9_8:                                # %if.end.41
	movzwl	%dx, %esi
	testw	%bp, %bp
	je	.LBB9_9
# BB#10:                                # %cond.false
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	leal	(%rcx,%r15), %eax
	cltd
	idivl	%esi
	movzwl	36(%r14), %edx
	imull	%eax, %edx
	addl	%edx, %r12d
	jmp	.LBB9_11
.LBB9_9:
	movl	%ebp, 76(%rsp)          # 4-byte Spill
.LBB9_11:                               # %cond.end
	movq	%r8, %rbp
	leal	-1(%r9), %eax
	addl	%r11d, %r12d
	testl	%r9d, %eax
	je	.LBB9_12
# BB#13:                                # %cond.false.53
	movl	%r12d, %eax
	cltd
	idivl	%r9d
	movl	%edx, %r12d
	jmp	.LBB9_14
.LBB9_12:                               # %cond.true.49
	andl	%eax, %r12d
.LBB9_14:                               # %cond.end.55
	leal	-1(%rsi), %eax
	leal	(%r15,%rcx), %edx
	testl	%esi, %eax
	je	.LBB9_15
# BB#16:                                # %cond.false.65
	movl	%edx, %eax
	cltd
	idivl	%esi
	jmp	.LBB9_17
.LBB9_15:                               # %cond.true.61
	andl	%eax, %edx
.LBB9_17:                               # %cond.end.68
	movl	%edi, %r15d
	subl	%edx, %r15d
	movl	%edx, %eax
	imull	152(%rsp), %eax         # 4-byte Folded Reload
	cltq
	addq	(%r14), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rax
	andq	%r10, %rax
	cmpq	$-1, %rax
	je	.LBB9_18
# BB#22:                                # %if.else.85
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	1216(%rax), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB9_23
.LBB9_18:                               # %if.then.78
	movq	%r13, 80(%rsp)          # 8-byte Spill
	cmpl	$2, 40(%r14)
	jl	.LBB9_21
# BB#19:                                # %if.then.81
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	1672(%rax), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB9_20
.LBB9_21:                               # %if.else
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	1224(%rax), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
.LBB9_20:                               # %if.end.87
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB9_23:                               # %if.end.87
	movl	156(%rsp), %r13d        # 4-byte Reload
	subl	%r12d, %r13d
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r15d
	jge	.LBB9_24
# BB#54:                                # %if.else.250
	movl	76(%rsp), %eax          # 4-byte Reload
	testw	%ax, %ax
	jne	.LBB9_70
# BB#55:                                # %if.else.250
	cmpl	%ebp, %r13d
	jl	.LBB9_70
# BB#56:                                # %if.then.256
	xorl	%r13d, %r13d
	cmpl	156(%rsp), %ebp         # 4-byte Folded Reload
	cmoveq	80(%rsp), %r13          # 8-byte Folded Reload
	cmpl	$2, 40(%r14)
	jl	.LBB9_58
# BB#57:                                # %cond.true.273
	xorl	%r8d, %r8d
	testl	%edx, %edx
	cmoveq	%r13, %r8
	movl	%edi, 24(%rsp)
	movq	%rbp, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	%edi, %ebp
	movl	%r15d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r11d, %r9d
	movq	%r11, 96(%rsp)          # 8-byte Spill
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_61
.LBB9_24:                               # %if.then.90
	cmpl	%ebp, %r13d
	jl	.LBB9_33
# BB#25:                                # %do.end.96
	cmpl	$2, 40(%r14)
	jl	.LBB9_27
# BB#26:                                # %cond.true.100
	xorl	%eax, %eax
	cmpl	156(%rsp), %ebp         # 4-byte Folded Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	cmovneq	%rax, %r8
	movq	112(%rsp), %rdx         # 8-byte Reload
	cmpl	%edi, %edx
	cmovneq	%rax, %r8
	movl	%edi, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r11d, %r9d
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_31
.LBB9_70:                               # %if.else.375
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	leal	(%r11,%rbp), %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	%r11, 96(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	subl	156(%rsp), %edx         # 4-byte Folded Reload
	movl	%edx, 112(%rsp)         # 4-byte Spill
	subl	%edi, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	jmp	.LBB9_71
	.align	16, 0x90
.LBB9_102:                              # %cleanup.554.thread530
                                        #   in Loop: Header=BB9_71 Depth=1
	cmpl	56(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ebx, %edi
	cmovlel	%edi, %r15d
	movl	124(%rsp), %edx         # 4-byte Reload
	addl	76(%rsp), %edx          # 4-byte Folded Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	cmpl	%r9d, %edx
	movl	%r9d, %eax
	movl	$0, %esi
	cmovll	%esi, %eax
	subl	%eax, %edx
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	156(%rsp), %r13d        # 4-byte Reload
	subl	%edx, %r13d
	movq	(%r14), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB9_71:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_86 Depth 2
	cmpl	%edi, %r15d
	movl	$0, %r12d
	cmoveq	80(%rsp), %r12          # 8-byte Folded Reload
	cmpl	%ebp, %r13d
	movl	40(%r14), %eax
	jge	.LBB9_72
# BB#79:                                # %do.end.443
                                        #   in Loop: Header=BB9_71 Depth=1
	cmpl	$2, %eax
	jl	.LBB9_81
# BB#80:                                # %cond.true.447
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%edi, 24(%rsp)
	movl	%edi, %ebx
	movl	%r15d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_84
.LBB9_72:                               # %do.end.398
                                        #   in Loop: Header=BB9_71 Depth=1
	cmpl	156(%rsp), %ebp         # 4-byte Folded Reload
	movl	$0, %edx
	cmovneq	%rdx, %r12
	cmpl	$2, %eax
	jl	.LBB9_74
# BB#73:                                # %cond.true.402
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movl	%edi, 24(%rsp)
	movl	%edi, %ebx
	movl	%r15d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_77
.LBB9_81:                               # %cond.false.449
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%edi, %ebx
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_83
# BB#82:                                # %cond.true.452
                                        #   in Loop: Header=BB9_71 Depth=1
	movl	%r15d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*%rax
	jmp	.LBB9_84
.LBB9_74:                               # %cond.false.410
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movl	%edi, %ebx
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_76
# BB#75:                                # %cond.true.413
                                        #   in Loop: Header=BB9_71 Depth=1
	movl	%r15d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*%rax
	jmp	.LBB9_77
.LBB9_83:                               # %cond.false.454
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB9_84:                               # %cond.end.458
                                        #   in Loop: Header=BB9_71 Depth=1
	testl	%eax, %eax
	movq	%rbp, %rcx
	js	.LBB9_78
# BB#85:                                # %do.end.466
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r13d
	jmp	.LBB9_86
	.align	16, 0x90
.LBB9_93:                               # %do.end.497
                                        #   in Loop: Header=BB9_86 Depth=2
	addl	156(%rsp), %r13d        # 4-byte Folded Reload
.LBB9_86:                               # %do.end.466
                                        #   Parent Loop BB9_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	112(%rsp), %r13d        # 4-byte Folded Reload
	jg	.LBB9_94
# BB#87:                                # %do.end.474
                                        #   in Loop: Header=BB9_86 Depth=2
	cmpl	$2, 40(%r14)
	jl	.LBB9_89
# BB#88:                                # %cond.true.478
                                        #   in Loop: Header=BB9_86 Depth=2
	movl	%ebx, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	xorl	%edx, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movl	%r13d, %r9d
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_92
	.align	16, 0x90
.LBB9_89:                               # %cond.false.480
                                        #   in Loop: Header=BB9_86 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_91
# BB#90:                                # %cond.true.483
                                        #   in Loop: Header=BB9_86 Depth=2
	movl	%r15d, 16(%rsp)
	movl	156(%rsp), %edx         # 4-byte Reload
	movl	%edx, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	xorl	%edx, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movl	%r13d, %r9d
	callq	*%rax
	jmp	.LBB9_92
.LBB9_91:                               # %cond.false.485
                                        #   in Loop: Header=BB9_86 Depth=2
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	xorl	%edx, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movl	%r13d, %r9d
	callq	*88(%rsp)               # 8-byte Folded Reload
	.align	16, 0x90
.LBB9_92:                               # %cond.end.489
                                        #   in Loop: Header=BB9_86 Depth=2
	testl	%eax, %eax
	movq	%rbp, %rcx
	jns	.LBB9_93
	jmp	.LBB9_78
.LBB9_94:                               # %while.end.499
                                        #   in Loop: Header=BB9_71 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	subl	%r13d, %eax
	jle	.LBB9_101
# BB#95:                                # %do.end.505
                                        #   in Loop: Header=BB9_71 Depth=1
	cmpl	$2, 40(%r14)
	jl	.LBB9_97
# BB#96:                                # %cond.true.509
                                        #   in Loop: Header=BB9_71 Depth=1
	movl	%ebx, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %r12
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_100
.LBB9_76:                               # %cond.false.421
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%ecx, (%rsp)
	movq	%rcx, %rbp
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB9_77:                               # %cond.end.431
                                        #   in Loop: Header=BB9_71 Depth=1
	testl	%eax, %eax
	movq	%rbp, %rcx
	jns	.LBB9_101
	jmp	.LBB9_78
.LBB9_97:                               # %cond.false.512
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	136(%rsp), %rbp         # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB9_99
# BB#98:                                # %cond.true.515
                                        #   in Loop: Header=BB9_71 Depth=1
	movl	%r15d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %r12
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
	callq	*%rbp
	jmp	.LBB9_100
.LBB9_99:                               # %cond.false.518
                                        #   in Loop: Header=BB9_71 Depth=1
	movq	232(%rsp), %rdx
	movq	%rdx, 32(%rsp)
	movq	224(%rsp), %rdx
	movq	%rdx, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %r12
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB9_100:                              # %cond.end.523
                                        #   in Loop: Header=BB9_71 Depth=1
	testl	%eax, %eax
	movq	%r12, %rcx
	js	.LBB9_78
.LBB9_101:                              # %if.end.533
                                        #   in Loop: Header=BB9_71 Depth=1
	addl	%r15d, %ecx
	movl	60(%rsp), %r15d         # 4-byte Reload
	subl	%ecx, %r15d
	jg	.LBB9_102
	jmp	.LBB9_32
.LBB9_33:                               # %if.else.147
	movl	%r12d, %edx
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	%r11, %rbp
	xorl	%r12d, %r12d
	movq	112(%rsp), %r15         # 8-byte Reload
	cmpl	%edi, %r15d
	cmoveq	80(%rsp), %r12          # 8-byte Folded Reload
	cmpl	$2, 40(%r14)
	jl	.LBB9_35
# BB#34:                                # %cond.true.164
	movl	%edi, 24(%rsp)
	movl	%edi, 124(%rsp)         # 4-byte Spill
	movl	%r15d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ebp, %r9d
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_38
.LBB9_58:                               # %cond.false.281
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%edi, %ebp
	xorl	%r8d, %r8d
	testl	%edx, %edx
	cmoveq	%r13, %r8
	movq	136(%rsp), %r10         # 8-byte Reload
	testq	%r10, %r10
	je	.LBB9_60
# BB#59:                                # %cond.true.284
	movl	%r15d, 16(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r11d, %r9d
	movq	%r11, 96(%rsp)          # 8-byte Spill
	callq	*%r10
	jmp	.LBB9_61
.LBB9_27:                               # %cond.false.111
	xorl	%eax, %eax
	cmpl	156(%rsp), %ebp         # 4-byte Folded Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	cmovneq	%rax, %r8
	movq	112(%rsp), %rdx         # 8-byte Reload
	cmpl	%edi, %edx
	cmovneq	%rax, %r8
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_29
# BB#28:                                # %cond.end.122
	movl	%edx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r11d, %r9d
	callq	*%rax
	jmp	.LBB9_31
.LBB9_35:                               # %cond.false.166
	movl	%edi, 124(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_37
# BB#36:                                # %cond.true.169
	movl	%r15d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ebp, %r9d
	callq	*%rax
	jmp	.LBB9_38
.LBB9_60:                               # %cond.false.292
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r11d, %r9d
	movq	%r11, 96(%rsp)          # 8-byte Spill
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB9_61:                               # %cond.end.302
	movq	112(%rsp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB9_78
# BB#62:                                # %do.end.310
	leal	(%rcx,%rbx), %r12d
	movl	%r12d, %eax
	subl	%ebp, %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	addl	%ebx, %r15d
	movq	(%r14), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB9_63:                               # %do.body.312
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ebx
	subl	%r15d, %ebx
	cmpl	156(%rsp), %r15d        # 4-byte Folded Reload
	cmovlel	%ebp, %ebx
	cmpl	%ebp, %ebx
	movl	$0, %r8d
	cmoveq	%r13, %r8
	cmpl	$2, 40(%r14)
	jl	.LBB9_65
# BB#64:                                # %cond.true.326
                                        #   in Loop: Header=BB9_63 Depth=1
	movl	%ebp, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_68
	.align	16, 0x90
.LBB9_65:                               # %cond.false.334
                                        #   in Loop: Header=BB9_63 Depth=1
	movq	136(%rsp), %r10         # 8-byte Reload
	testq	%r10, %r10
	je	.LBB9_67
# BB#66:                                # %cond.true.337
                                        #   in Loop: Header=BB9_63 Depth=1
	movl	%ebx, 16(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*%r10
	jmp	.LBB9_68
.LBB9_67:                               # %cond.false.345
                                        #   in Loop: Header=BB9_63 Depth=1
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*88(%rsp)               # 8-byte Folded Reload
	.align	16, 0x90
.LBB9_68:                               # %cond.end.355
                                        #   in Loop: Header=BB9_63 Depth=1
	testl	%eax, %eax
	js	.LBB9_78
# BB#69:                                # %do.cond.364
                                        #   in Loop: Header=BB9_63 Depth=1
	addl	%ebx, %r15d
	cmpl	%r12d, %r15d
	jl	.LBB9_63
	jmp	.LBB9_32
.LBB9_29:                               # %cond.end.133
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%r10, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r11d, %r9d
	jmp	.LBB9_30
.LBB9_37:                               # %cond.false.171
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%r10, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %rbx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ebp, %r9d
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB9_38:                               # %cond.end.175
	testl	%eax, %eax
	movq	%rbx, %rcx
	js	.LBB9_78
# BB#39:                                # %while.cond.preheader
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %ebx
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	subl	156(%rsp), %ebx         # 4-byte Folded Reload
	addl	%ebp, %r13d
	jmp	.LBB9_40
	.align	16, 0x90
.LBB9_47:                               # %do.end.211
                                        #   in Loop: Header=BB9_40 Depth=1
	addl	156(%rsp), %r13d        # 4-byte Folded Reload
.LBB9_40:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, %r13d
	jg	.LBB9_48
# BB#41:                                # %do.end.188
                                        #   in Loop: Header=BB9_40 Depth=1
	cmpl	$2, 40(%r14)
	jl	.LBB9_43
# BB#42:                                # %cond.true.192
                                        #   in Loop: Header=BB9_40 Depth=1
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movq	%r15, %rbp
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %r15
	xorl	%edx, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movl	%r13d, %r9d
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_46
.LBB9_43:                               # %cond.false.194
                                        #   in Loop: Header=BB9_40 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_45
# BB#44:                                # %cond.true.197
                                        #   in Loop: Header=BB9_40 Depth=1
	movl	%r15d, 16(%rsp)
	movq	%r15, %rbp
	movl	156(%rsp), %edx         # 4-byte Reload
	movl	%edx, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %r15
	xorl	%edx, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movl	%r13d, %r9d
	callq	*%rax
	jmp	.LBB9_46
.LBB9_45:                               # %cond.false.199
                                        #   in Loop: Header=BB9_40 Depth=1
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movq	%r15, %rbp
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rcx, %r15
	xorl	%edx, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %r8
	movl	%r13d, %r9d
	callq	*88(%rsp)               # 8-byte Folded Reload
	.align	16, 0x90
.LBB9_46:                               # %cond.end.203
                                        #   in Loop: Header=BB9_40 Depth=1
	testl	%eax, %eax
	movq	%r15, %rcx
	movq	%rbp, %r15
	jns	.LBB9_47
	jmp	.LBB9_78
.LBB9_48:                               # %while.end
	subl	%r13d, 112(%rsp)        # 4-byte Folded Spill
	jle	.LBB9_32
# BB#49:                                # %do.end.218
	cmpl	$2, 40(%r14)
	jl	.LBB9_51
# BB#50:                                # %cond.true.222
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	112(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
	callq	*128(%rsp)              # 8-byte Folded Reload
	jmp	.LBB9_31
.LBB9_51:                               # %cond.false.225
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_53
# BB#52:                                # %cond.true.228
	movl	%r15d, 16(%rsp)
	movl	112(%rsp), %edx         # 4-byte Reload
	movl	%edx, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
	callq	*%rax
	jmp	.LBB9_31
.LBB9_53:                               # %cond.false.231
	movq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	112(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
.LBB9_30:                               # %cond.end.138
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB9_31:                               # %cond.end.138
	testl	%eax, %eax
	js	.LBB9_78
.LBB9_32:                               # %if.end.566
	xorl	%eax, %eax
.LBB9_78:                               # %cleanup.567
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gx_default_strip_tile_rectangle, .Lfunc_end9-gx_default_strip_tile_rectangle
	.cfi_endproc

	.globl	gx_no_strip_copy_rop
	.align	16, 0x90
	.type	gx_no_strip_copy_rop,@function
gx_no_strip_copy_rop:                   # @gx_no_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end10:
	.size	gx_no_strip_copy_rop, .Lfunc_end10-gx_no_strip_copy_rop
	.cfi_endproc

	.globl	gx_copy_mono_unaligned
	.align	16, 0x90
	.type	gx_copy_mono_unaligned,@function
gx_copy_mono_unaligned:                 # @gx_copy_mono_unaligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 176
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movq	1216(%rdi), %r11
	movl	%esi, %eax
	andl	$7, %eax
	subq	%rax, %rsi
	movl	%ecx, %ebp
	andl	$7, %ebp
	leal	(%rdx,%rax,8), %r14d
	je	.LBB11_6
# BB#1:                                 # %for.cond.preheader
	movl	192(%rsp), %ebx
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB11_5
# BB#2:                                 # %for.body.lr.ph
	movq	208(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	200(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	184(%rsp), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	176(%rsp), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	subl	%ebp, %eax
	cltq
	movq	%rax, 48(%rsp)          # 8-byte Spill
	shll	$3, %ebp
	movl	%ebp, 60(%rsp)          # 4-byte Spill
	movl	$1, %ebx
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax,%rbx), %eax
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 32(%rsp)
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 24(%rsp)
	movl	76(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	%rsi, %rbp
	movl	%r14d, %edx
	movl	%ecx, %r12d
	movl	%r9d, %r15d
	movq	%r11, %r13
	callq	*%r13
	testl	%eax, %eax
	js	.LBB11_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	addq	48(%rsp), %rbp          # 8-byte Folded Reload
	addl	60(%rsp), %r14d         # 4-byte Folded Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpl	100(%rsp), %ecx         # 4-byte Folded Reload
	leal	1(%rcx), %ecx
	movl	%ecx, %ebx
	movl	%r15d, %r9d
	movl	%r12d, %ecx
	movq	%r13, %r11
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	jl	.LBB11_3
.LBB11_5:                               # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_6:                               # %if.then
	movl	%r14d, %edx
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r11                   # TAILCALL
.Lfunc_end11:
	.size	gx_copy_mono_unaligned, .Lfunc_end11-gx_copy_mono_unaligned
	.cfi_endproc

	.globl	gx_copy_color_unaligned
	.align	16, 0x90
	.type	gx_copy_color_unaligned,@function
gx_copy_color_unaligned:                # @gx_copy_color_unaligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 128
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%r9d, 60(%rsp)          # 4-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, %r9d
	movq	%rsi, %rbx
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	144(%rsp), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	136(%rsp), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	128(%rsp), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	1224(%rdi), %r12
	movzwl	108(%rdi), %edi
	movl	%ebx, %eax
	andl	$7, %eax
	movl	%ecx, %esi
	andl	$7, %esi
	cmpl	$24, %edi
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	%eax, %edx
	movl	$2863311531, %ebp       # imm = 0xAAAAAAAB
	imulq	%rdx, %rbp
	shrq	$33, %rbp
	leal	(%rbp,%rbp,2), %edx
	movl	%eax, %ebp
	subl	%edx, %ebp
	shll	$3, %ebp
	orl	%ebp, %eax
.LBB12_2:                               # %if.end
	movl	%eax, %edx
	subq	%rdx, %rbx
	shll	$3, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebp
	addl	%r9d, %ebp
	testl	%esi, %esi
	je	.LBB12_8
# BB#3:                                 # %if.end.8
	leal	(,%rsi,8), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %r13d
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	jle	.LBB12_7
# BB#4:                                 # %for.body.lr.ph
	movl	68(%rsp), %eax          # 4-byte Reload
	subl	%esi, %eax
	movslq	%eax, %r14
	movl	$1, %r15d
	.align	16, 0x90
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax,%r15), %eax
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	*%r12
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB12_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	addq	%r14, %rbx
	addl	%r13d, %ebp
	cmpl	64(%rsp), %r15d         # 4-byte Folded Reload
	leal	1(%r15), %eax
	movl	%eax, %r15d
	jl	.LBB12_5
.LBB12_7:                               # %cleanup
	movl	%ecx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_8:                               # %if.then.7
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	60(%rsp), %r9d          # 4-byte Reload
	movq	%r12, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	gx_copy_color_unaligned, .Lfunc_end12-gx_copy_color_unaligned
	.cfi_endproc

	.globl	gx_copy_alpha_unaligned
	.align	16, 0x90
	.type	gx_copy_alpha_unaligned,@function
gx_copy_alpha_unaligned:                # @gx_copy_alpha_unaligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 160
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r10d
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	192(%rsp), %ebp
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	movq	1312(%rdi), %r11
	movl	%esi, %eax
	andl	$7, %eax
	subq	%rax, %rsi
	shll	$3, %eax
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r12d
	addl	%r10d, %r12d
	movl	%r15d, %r10d
	andl	$7, %r10d
	je	.LBB13_6
# BB#1:                                 # %if.end
	movl	176(%rsp), %r8d
	movl	%r8d, 76(%rsp)          # 4-byte Spill
	leal	(,%r10,8), %eax
	cltd
	idivl	%ebp
	movl	%eax, 72(%rsp)          # 4-byte Spill
	testl	%r8d, %r8d
	jle	.LBB13_5
# BB#2:                                 # %for.body.lr.ph
	movq	184(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	168(%rsp), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	160(%rsp), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r15d, %eax
	subl	%r10d, %eax
	cltq
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1, %ebx
	.align	16, 0x90
.LBB13_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax,%rbx), %eax
	movl	%ebp, 32(%rsp)
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 24(%rsp)
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r9d
	movq	%rsi, %rbp
	movq	%r11, %r13
	callq	*%r13
	movq	%r13, %rdx
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB13_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	addq	40(%rsp), %rbp          # 8-byte Folded Reload
	addl	72(%rsp), %r12d         # 4-byte Folded Reload
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	76(%rsp), %eax          # 4-byte Folded Reload
	leal	1(%rax), %eax
	movl	%eax, %ebx
	movq	%rdx, %r11
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	movl	92(%rsp), %ebp          # 4-byte Reload
	jl	.LBB13_3
.LBB13_5:                               # %cleanup
	movl	%r13d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_6:                               # %if.then
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r9d
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r11                   # TAILCALL
.Lfunc_end13:
	.size	gx_copy_alpha_unaligned, .Lfunc_end13-gx_copy_alpha_unaligned
	.cfi_endproc

	.type	.L__func__.gx_default_copy_mono,@object # @__func__.gx_default_copy_mono
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gx_default_copy_mono:
	.asciz	"gx_default_copy_mono"
	.size	.L__func__.gx_default_copy_mono, 21

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"./base/gdevdbit.c"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"copy_alpha_hl_color(gb_buff)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"copy_alpha_hl_color"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"copy_alpha(lin)"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"copy_alpha(lout)"
	.size	.L.str.5, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
