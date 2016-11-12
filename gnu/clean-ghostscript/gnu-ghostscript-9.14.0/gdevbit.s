	.text
	.file	"gdevbit.bc"
	.align	16, 0x90
	.type	bit_print_page,@function
bit_print_page:                         # @bit_print_page
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r13d
	movq	24(%r12), %rdi
	movl	$.L.str.16, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	13056(%r12), %rbp
	cmpq	$3, %rcx
	ja	.LBB0_8
# BB#1:                                 # %cond.true
	movzbl	(%rbp), %eax
	addl	$-110, %eax
	testq	%rcx, %rcx
	je	.LBB0_9
# BB#2:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB0_9
# BB#3:                                 # %if.then
	movzbl	13057(%r12), %eax
	addl	$-117, %eax
	cmpq	$2, %rcx
	jb	.LBB0_9
# BB#4:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB0_9
# BB#5:                                 # %if.then.21
	movzbl	13058(%r12), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB0_9
# BB#6:                                 # %if.then.21
	testl	%eax, %eax
	jne	.LBB0_9
# BB#7:                                 # %if.then.31
	movzbl	13059(%r12), %eax
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false
	movl	$.L.str.17, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB0_9:                                # %cond.end
	movb	$1, %r14b
	testl	%eax, %eax
	je	.LBB0_20
# BB#10:                                # %land.lhs.true.47
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB0_18
# BB#11:                                # %cond.true.51
	movzbl	(%rbp), %eax
	addl	$-47, %eax
	testq	%rcx, %rcx
	je	.LBB0_19
# BB#12:                                # %cond.true.51
	testl	%eax, %eax
	jne	.LBB0_19
# BB#13:                                # %if.then.67
	movzbl	13057(%r12), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB0_19
# BB#14:                                # %if.then.67
	testl	%eax, %eax
	jne	.LBB0_19
# BB#15:                                # %if.then.77
	movzbl	13058(%r12), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB0_19
# BB#16:                                # %if.then.77
	testl	%eax, %eax
	jne	.LBB0_19
# BB#17:                                # %if.then.87
	movzbl	13059(%r12), %eax
	addl	$-118, %eax
	jmp	.LBB0_19
.LBB0_18:                               # %cond.false.96
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB0_19:                               # %cond.end.100
	testl	%eax, %eax
	sete	%r14b
.LBB0_20:                               # %lor.end
	movl	18472(%r12), %ebp
	movl	836(%r12), %eax
	leal	-1(%rax), %ecx
	cmpl	%eax, %ebp
	cmovgel	%ecx, %ebp
	movl	18476(%r12), %edx
	cmpl	%eax, %edx
	cmovgel	%ecx, %edx
	movl	%edx, %esi
	subl	%ebp, %esi
	movl	$-1, %eax
	movl	$1, %r15d
	cmovll	%eax, %r15d
	movl	$-25, %eax
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	je	.LBB0_27
# BB#21:                                # %if.end.143
	movl	%r13d, %eax
	movl	%esi, %r13d
	negl	%r13d
	cmovll	%esi, %r13d
	orl	%ebp, %edx
	cmovel	%ecx, %r13d
	testl	%r13d, %r13d
	js	.LBB0_26
# BB#22:                                # %for.body.lr.ph
	cltq
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incl	%r13d
	leaq	32(%rsp), %rbx
	.align	16, 0x90
.LBB0_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	gdev_prn_get_bits
	testb	%r14b, %r14b
	jne	.LBB0_25
# BB#24:                                # %if.then.157
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	32(%rsp), %rdi
	movl	$1, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
.LBB0_25:                               # %for.inc
                                        #   in Loop: Header=BB0_23 Depth=1
	addl	%r15d, %ebp
	decl	%r13d
	jne	.LBB0_23
.LBB0_26:                               # %for.end
	movq	24(%r12), %rdi
	movl	$.L.str.16, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_27:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bit_print_page, .Lfunc_end0-bit_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	bittags_print_page,@function
bittags_print_page:                     # @bittags_print_page
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
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r12d
	movq	24(%r13), %rdi
	movl	$.L.str.16, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	13056(%r13), %rbp
	cmpq	$3, %rcx
	ja	.LBB1_8
# BB#1:                                 # %cond.true
	movzbl	(%rbp), %eax
	addl	$-110, %eax
	testq	%rcx, %rcx
	je	.LBB1_9
# BB#2:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB1_9
# BB#3:                                 # %if.then
	movzbl	13057(%r13), %eax
	addl	$-117, %eax
	cmpq	$2, %rcx
	jb	.LBB1_9
# BB#4:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB1_9
# BB#5:                                 # %if.then.21
	movzbl	13058(%r13), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB1_9
# BB#6:                                 # %if.then.21
	testl	%eax, %eax
	jne	.LBB1_9
# BB#7:                                 # %if.then.31
	movzbl	13059(%r13), %eax
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	movl	$.L.str.17, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB1_9:                                # %cond.end
	movb	$1, %r14b
	testl	%eax, %eax
	je	.LBB1_20
# BB#10:                                # %land.lhs.true.47
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_18
# BB#11:                                # %cond.true.51
	movzbl	(%rbp), %eax
	addl	$-47, %eax
	testq	%rcx, %rcx
	je	.LBB1_19
# BB#12:                                # %cond.true.51
	testl	%eax, %eax
	jne	.LBB1_19
# BB#13:                                # %if.then.67
	movzbl	13057(%r13), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB1_19
# BB#14:                                # %if.then.67
	testl	%eax, %eax
	jne	.LBB1_19
# BB#15:                                # %if.then.77
	movzbl	13058(%r13), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB1_19
# BB#16:                                # %if.then.77
	testl	%eax, %eax
	jne	.LBB1_19
# BB#17:                                # %if.then.87
	movzbl	13059(%r13), %eax
	addl	$-118, %eax
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.96
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB1_19:                               # %cond.end.100
	testl	%eax, %eax
	sete	%r14b
.LBB1_20:                               # %lor.end
	movl	18472(%r13), %ebp
	movl	836(%r13), %ecx
	leal	-1(%rcx), %ebx
	cmpl	%ecx, %ebp
	cmovgel	%ebx, %ebp
	movl	18476(%r13), %eax
	cmpl	%ecx, %eax
	cmovll	%eax, %ebx
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	$-1, %eax
	movl	$1, %r15d
	cmovll	%eax, %r15d
	movl	$-25, %eax
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	je	.LBB1_29
# BB#21:                                # %if.end.143
	movl	%r12d, 8(%rsp)          # 4-byte Spill
	movq	%r13, %r12
	movl	%edx, %r13d
	negl	%r13d
	cmovll	%edx, %r13d
	movl	832(%r12), %edx
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	orl	%ebp, %ebx
	jne	.LBB1_23
# BB#22:                                # %if.then.151
	movl	836(%r12), %r13d
	decl	%r13d
.LBB1_23:                               # %if.end.154
	testl	%r13d, %r13d
	js	.LBB1_28
# BB#24:                                # %for.body.lr.ph
	movslq	8(%rsp), %rax           # 4-byte Folded Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incl	%r13d
	leaq	32(%rsp), %rbx
	.align	16, 0x90
.LBB1_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	gdev_prn_get_bits
	testb	%r14b, %r14b
	jne	.LBB1_27
# BB#26:                                # %if.then.159
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	32(%rsp), %rdi
	movl	$1, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
.LBB1_27:                               # %for.inc
                                        #   in Loop: Header=BB1_25 Depth=1
	addl	%r15d, %ebp
	decl	%r13d
	jne	.LBB1_25
.LBB1_28:                               # %for.end
	movq	24(%r12), %rdi
	movl	$.L.str.16, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB1_29:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bittags_print_page, .Lfunc_end1-bittags_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	bit_mono_map_color,@function
bit_mono_map_color:                     # @bit_mono_map_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movzwl	(%rsi), %edx
	movl	%edx, %esi
	xorl	$65535, %esi            # imm = 0xFFFF
	cmpl	$1, %eax
	cmovnel	%edx, %esi
	shrl	%cl, %esi
	movslq	%esi, %rax
	retq
.Lfunc_end2:
	.size	bit_mono_map_color, .Lfunc_end2-bit_mono_map_color
	.cfi_endproc

	.align	16, 0x90
	.type	bit_map_color_rgb,@function
bit_map_color_rgb:                      # @bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %r9d
	movq	16(%rdi), %rax
	movzbl	3(%rax), %eax
	cmpl	$114, %eax
	sete	%cl
	cmpl	$99, %eax
	movzbl	%cl, %eax
	leal	1(%rax,%rax), %eax
	movl	$4, %edi
	cmovnel	%eax, %edi
	xorl	%edx, %edx
	movl	%r9d, %eax
	divl	%edi
	movl	%eax, %ecx
	movl	$1, %r11d
	shll	%cl, %r11d
	decl	%r11d
	cmpl	$4, %edi
	je	.LBB3_8
# BB#1:                                 # %entry
	cmpl	$3, %edi
	jne	.LBB3_2
# BB#7:                                 # %sw.bb.25
	movl	%r11d, %edi
	movq	%rdi, %rax
	andq	%rsi, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 4(%r8)
	shrq	%cl, %rsi
	movq	%rdi, %rax
	andq	%rsi, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 2(%r8)
	shrq	%cl, %rsi
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	xorl	%eax, %eax
	retq
.LBB3_8:                                # %sw.bb.46
	movl	%r11d, %r9d
	movl	%esi, %edx
	andl	%r11d, %edx
	shrq	%cl, %rsi
	movl	%esi, %r10d
	andl	%r11d, %r10d
	shrq	%cl, %rsi
	movl	%esi, %edi
	andl	%r11d, %edi
	shrq	%cl, %rsi
	movl	%r11d, %eax
	subl	%esi, %eax
	movl	%r11d, %ecx
	subl	%edx, %ecx
	imull	%ecx, %eax
	xorl	%edx, %edx
	divl	%r11d
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r9
	movw	%ax, (%r8)
	movl	%r11d, %eax
	subl	%edi, %eax
	imull	%ecx, %eax
	xorl	%edx, %edx
	divl	%r11d
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r9
	movw	%ax, 2(%r8)
	movl	%r11d, %eax
	subl	%r10d, %eax
	imull	%ecx, %eax
	xorl	%edx, %edx
	divl	%r11d
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%r9
	movw	%ax, 4(%r8)
	jmp	.LBB3_9
.LBB3_2:                                # %entry
	cmpl	$1, %edi
	jne	.LBB3_9
# BB#3:                                 # %sw.bb
	movzwl	%r9w, %eax
	cmpl	$1, %eax
	jne	.LBB3_5
# BB#4:                                 # %cond.true.12
	cmpq	$1, %rsi
	sbbw	%ax, %ax
	jmp	.LBB3_6
.LBB3_9:                                # %sw.epilog
	xorl	%eax, %eax
	retq
.LBB3_5:                                # %cond.false.14
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	movl	%r11d, %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB3_6:                                # %cond.end.19
	movw	%ax, 4(%r8)
	movw	%ax, 2(%r8)
	movw	%ax, (%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	bit_map_color_rgb, .Lfunc_end3-bit_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	bit_get_params,@function
bit_get_params:                         # @bit_get_params
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	16(%rbx), %rax
	movzbl	3(%rax), %eax
	cmpl	$114, %eax
	sete	%cl
	cmpl	$99, %eax
	movzbl	%cl, %eax
	leal	1(%rax,%rax), %eax
	movl	$4, %ecx
	cmovnel	%eax, %ecx
	movl	100(%rbx), %r15d
	cmpl	%ecx, %r15d
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 4(%rsp)
	movl	%ecx, 100(%rbx)
	callq	gdev_prn_get_params
	movl	%eax, %ebp
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sample_device_crd_get_params
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	4(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	18472(%rbx), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	18476(%rbx), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%r15d, 100(%rbx)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bit_get_params, .Lfunc_end4-bit_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	bit_put_params,@function
bit_put_params:                         # @bit_put_params
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
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp41:
	.cfi_def_cfa_offset 816
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	100(%r13), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	16(%r13), %rax
	movzbl	3(%rax), %eax
	cmpl	$114, %eax
	sete	%cl
	cmpl	$99, %eax
	movzbl	%cl, %eax
	leal	1(%rax,%rax), %eax
	movl	$4, %r15d
	cmovnel	%eax, %r15d
	movzwl	108(%r13), %eax
	xorl	%edx, %edx
	divl	%r15d
	movl	bit_put_params.real_bpc(,%rax,4), %ebx
	movl	18472(%r13), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	18476(%r13), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%r15d, 100(%r13)
	movl	$.L.str.12, %r12d
	leaq	48(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#1:                                 # %lor.lhs.false
	movl	$.L.str.13, %r12d
	leaq	48(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#2:                                 # %lor.lhs.false.20
	movl	$.L.str.14, %r12d
	leaq	48(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#3:                                 # %lor.lhs.false.24
	movl	$.L.str.15, %r12d
	leaq	48(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_read_int
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#4:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_5:                                # %if.then
	testl	%eax, %eax
	js	.LBB5_6
# BB#7:                                 # %if.else
	xorl	%ebp, %ebp
	movl	48(%rsp), %eax
	cmpl	$255, %eax
	jg	.LBB5_13
# BB#8:                                 # %if.else
	cmpl	$2, %eax
	je	.LBB5_9
# BB#10:                                # %if.else
	cmpl	$4, %eax
	jne	.LBB5_11
# BB#17:                                # %sw.bb.31
	movl	$2, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_6:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	%eax, %ebp
	jmp	.LBB5_21
.LBB5_13:                               # %if.else
	cmpl	$256, %eax              # imm = 0x100
	je	.LBB5_18
# BB#14:                                # %if.else
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB5_15
# BB#19:                                # %sw.bb.34
	movl	$12, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_9:
	movl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_11:                               # %if.else
	cmpl	$16, %eax
	jne	.LBB5_20
# BB#12:                                # %sw.bb.32
	movl	$4, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_18:                               # %sw.bb.33
	movl	$8, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_15:                               # %if.else
	cmpl	$65536, %eax            # imm = 0x10000
	jne	.LBB5_20
# BB#16:                                # %sw.bb.35
	movl	$16, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB5_21
.LBB5_20:                               # %sw.default
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$-15, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*56(%rax)
.LBB5_21:                               # %if.end.37
	leaq	48(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB5_23
# BB#22:
	movl	44(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB5_27
.LBB5_23:                               # %if.end.37
	testl	%ebx, %ebx
	jne	.LBB5_26
# BB#24:                                # %sw.bb.39
	movl	$1, %r12d
	movl	48(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB5_27
# BB#25:                                # %sw.bb.39
	movl	$-15, %ebx
	testl	%eax, %eax
	movl	%r15d, %r12d
	je	.LBB5_27
.LBB5_26:                               # %sw.default.49
	movq	(%r14), %rax
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	44(%rsp), %r12d         # 4-byte Reload
	movl	%ebx, %ebp
.LBB5_27:                               # %sw.epilog.53
	testl	%ebp, %ebp
	js	.LBB5_46
# BB#28:                                # %if.end.57
	leaq	48(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB5_32
# BB#29:                                # %if.end.57
	testl	%ebp, %ebp
	jne	.LBB5_31
# BB#30:                                # %sw.bb.59
	movl	48(%rsp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	jmp	.LBB5_32
.LBB5_31:                               # %sw.epilog.64
	movq	(%r14), %rax
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB5_46
.LBB5_32:                               # %if.end.68
	leaq	48(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB5_36
# BB#33:                                # %if.end.68
	testl	%ebp, %ebp
	jne	.LBB5_35
# BB#34:                                # %sw.bb.70
	movl	48(%rsp), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	jmp	.LBB5_36
.LBB5_35:                               # %sw.epilog.75
	movq	(%r14), %rax
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB5_46
.LBB5_36:                               # %if.end.79
	movl	%r12d, 44(%rsp)         # 4-byte Spill
	movq	96(%r13), %r12
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	104(%r13), %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	shrq	$32, %r12
	shrq	$32, %rbx
	leaq	110(%r13), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leaq	54(%rsp), %rdi
	movl	$706, %edx              # imm = 0x2C2
	callq	memcpy
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %eax
	cltq
	decl	%r15d
	movslq	%r15d, %rdx
	shlq	$4, %rdx
	movzbl	bit_put_params.depths(%rdx,%rax), %eax
	movw	%ax, 108(%r13)
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 124(%r13)
	movl	%eax, 120(%r13)
	decl	%eax
	movl	%eax, 116(%r13)
	movl	%eax, 112(%r13)
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_37
# BB#38:                                # %if.end.99
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 100(%r13)
	cmpl	%r12d, %eax
	jne	.LBB5_40
# BB#39:                                # %if.end.99
	movzwl	108(%r13), %eax
	movzwl	%bx, %ecx
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	je	.LBB5_41
.LBB5_40:                               # %if.then.115
	movq	%r13, %rdi
	callq	gs_closedevice
.LBB5_41:                               # %if.end.117
	movq	1264(%r13), %rax
	movl	$bit_map_cmyk_color, %ecx
	cmpq	%rcx, %rax
	je	.LBB5_44
# BB#42:                                # %if.end.117
	movl	$cmyk_1bit_map_cmyk_color, %ecx
	cmpq	%rcx, %rax
	je	.LBB5_44
# BB#43:                                # %if.end.117
	movl	$cmyk_8bit_map_cmyk_color, %ecx
	cmpq	%rcx, %rax
	jne	.LBB5_45
.LBB5_44:                               # %if.then.131
	movzwl	108(%r13), %eax
	cmpl	$32, %eax
	movl	$cmyk_8bit_map_cmyk_color, %ecx
	movl	$bit_map_cmyk_color, %edx
	cmoveq	%rcx, %rdx
	cmpl	$4, %eax
	movl	$cmyk_1bit_map_cmyk_color, %eax
	cmovneq	%rdx, %rax
	movq	%rax, 1264(%r13)
.LBB5_45:                               # %if.end.149
	movq	%r13, %rdi
	callq	set_linear_color_bits_mask_shift
	movl	$1, 136(%r13)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18472(%r13)
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18476(%r13)
	xorl	%ebp, %ebp
	jmp	.LBB5_46
.LBB5_37:                               # %if.then.97
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%eax, 96(%r13)
	movl	%r12d, 100(%r13)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, 104(%r13)
	movw	%bx, 108(%r13)
	leaq	54(%rsp), %rsi
	movl	$706, %edx              # imm = 0x2C2
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB5_46:                               # %cleanup
	movl	%ebp, %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bit_put_params, .Lfunc_end5-bit_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	bit_map_cmyk_color,@function
bit_map_cmyk_color:                     # @bit_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %edx
	shrl	$2, %edx
	movl	$16, %r8d
	subl	%edx, %r8d
	movzwl	(%rsi), %edi
	movb	%r8b, %cl
	shrq	%cl, %rdi
	movb	%dl, %cl
	shlq	%cl, %rdi
	movzwl	2(%rsi), %eax
	movb	%r8b, %cl
	shrl	%cl, %eax
	cltq
	addq	%rdi, %rax
	movb	%dl, %cl
	shlq	%cl, %rax
	movzwl	4(%rsi), %edi
	movb	%r8b, %cl
	shrl	%cl, %edi
	movslq	%edi, %rdi
	addq	%rax, %rdi
	movb	%dl, %cl
	shlq	%cl, %rdi
	movzwl	6(%rsi), %eax
	movb	%r8b, %cl
	shrl	%cl, %eax
	movslq	%eax, %rcx
	addq	%rdi, %rcx
	cmpq	$-1, %rcx
	sete	%al
	movzbl	%al, %eax
	xorq	%rcx, %rax
	retq
.Lfunc_end6:
	.size	bit_map_cmyk_color, .Lfunc_end6-bit_map_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	bittag_rgb_map_rgb_color,@function
bittag_rgb_map_rgb_color:               # @bittag_rgb_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	2(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$8, %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	movl	1112(%rdi), %eax
	andl	$-129, %eax
	shlq	$24, %rax
	orq	%rdx, %rax
	orq	%rcx, %rax
	retq
.Lfunc_end7:
	.size	bittag_rgb_map_rgb_color, .Lfunc_end7-bittag_rgb_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	bittag_map_color_rgb,@function
bittag_map_color_rgb:                   # @bittag_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzbl	%al, %ecx
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 4(%rdx)
	movzbl	%ah, %ecx  # NOREX
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 2(%rdx)
	shrl	$16, %eax
	movzbl	%al, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	bittag_map_color_rgb, .Lfunc_end8-bittag_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	bittag_put_params,@function
bittag_put_params:                      # @bittag_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	orb	$-128, 1112(%rdi)
	jmp	gdev_prn_put_params     # TAILCALL
.Lfunc_end9:
	.size	bittag_put_params, .Lfunc_end9-bittag_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	bittag_get_color_mapping_procs,@function
bittag_get_color_mapping_procs:         # @bittag_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$bittag_DeviceRGB_procs, %eax
	retq
.Lfunc_end10:
	.size	bittag_get_color_mapping_procs, .Lfunc_end10-bittag_get_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	bit_put_image,@function
bit_put_image:                          # @bit_put_image
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
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%r9, -8(%rsp)           # 8-byte Spill
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	movl	72(%rsp), %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB11_11
# BB#1:                                 # %entry
	movl	80(%rsp), %edi
	testl	%edi, %edi
	jne	.LBB11_11
# BB#2:                                 # %if.end.4
	cmpl	$3, %edx
	movl	$-1, %eax
	jne	.LBB11_11
# BB#3:                                 # %if.end.4
	movl	88(%rsp), %edi
	testl	%edi, %edi
	jle	.LBB11_11
# BB#4:                                 # %if.end.8
	movl	56(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB11_11
# BB#5:                                 # %for.body.lr.ph
	leal	(%rax,%r8), %r9d
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rcx), %r12d
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	1744(%rax), %rbx
	movslq	%ebp, %rdx
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdx), %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rdx,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	imull	%ebp, %edi
	movslq	%edi, %r11
	movl	%ecx, %ebp
	shll	$2, %ecx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB11_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_8 Depth 2
	movq	-8(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB11_9
# BB#7:                                 # %for.body.15.lr.ph
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	%r13d, %rsi
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi), %r10
	movq	-40(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	movq	-24(%rsp), %rdx         # 8-byte Reload
	leaq	(%rsi,%rdx), %r14
	movq	-16(%rsp), %rdx         # 8-byte Reload
	movl	1736(%rdx), %edi
	imull	%r8d, %edi
	addl	%ecx, %edi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB11_8:                               # %for.body.15
                                        #   Parent Loop BB11_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r11,%rsi), %r15
	movb	(%r14,%r15), %dl
	movslq	%edi, %rdi
	movb	%dl, (%rbx,%rdi)
	movb	(%r14,%rsi), %dl
	movb	%dl, 1(%rbx,%rdi)
	movb	(%r10,%rsi), %dl
	movb	%dl, 2(%rbx,%rdi)
	movb	(%rax,%rsi), %dl
	movb	%dl, 3(%rbx,%rdi)
	addl	$4, %edi
	incq	%rsi
	leal	(%rbp,%rsi), %edx
	cmpl	%r12d, %edx
	jl	.LBB11_8
.LBB11_9:                               # %for.inc.35
                                        #   in Loop: Header=BB11_6 Depth=1
	incl	%r8d
	addl	64(%rsp), %r13d
	cmpl	%r9d, %r8d
	jl	.LBB11_6
# BB#10:
	movl	56(%rsp), %eax
.LBB11_11:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bit_put_image, .Lfunc_end11-bit_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_rgb_cm,@function
gray_cs_to_rgb_cm:                      # @gray_cs_to_rgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	retq
.Lfunc_end12:
	.size	gray_cs_to_rgb_cm, .Lfunc_end12-gray_cs_to_rgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	private_rgb_cs_to_rgb_cm,@function
private_rgb_cs_to_rgb_cm:               # @private_rgb_cs_to_rgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%dx, (%r9)
	movw	%cx, 2(%r9)
	movw	%r8w, 4(%r9)
	retq
.Lfunc_end13:
	.size	private_rgb_cs_to_rgb_cm, .Lfunc_end13-private_rgb_cs_to_rgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_rgb_cm,@function
cmyk_cs_to_rgb_cm:                      # @cmyk_cs_to_rgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 16
	movl	%r8d, %eax
	movq	24(%rdi), %rdi
	movq	%rdi, (%rsp)
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_rgb
	popq	%rax
	retq
.Lfunc_end14:
	.size	cmyk_cs_to_rgb_cm, .Lfunc_end14-cmyk_cs_to_rgb_cm
	.cfi_endproc

	.type	bitmono_procs,@object   # @bitmono_procs
	.section	.rodata,"a",@progbits
	.align	8
bitmono_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	bit_mono_map_color
	.quad	bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bit_get_params
	.quad	bit_put_params
	.quad	bit_mono_map_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bit_mono_map_color
	.quad	bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bitmono_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bit"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_bit_device,@object   # @gs_bit_device
	.section	.rodata,"a",@progbits
	.globl	gs_bit_device
	.align	8
gs_bit_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	bitmono_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	bit_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_bit_device, 18480

	.type	bitrgb_procs,@object    # @bitrgb_procs
	.align	8
bitrgb_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bit_get_params
	.quad	bit_put_params
	.quad	gx_default_rgb_map_rgb_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_rgb_map_rgb_color
	.quad	bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bitrgb_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bitrgb"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceRGB"
	.size	.L.str.3, 10

	.type	gs_bitrgb_device,@object # @gs_bitrgb_device
	.section	.rodata,"a",@progbits
	.globl	gs_bitrgb_device
	.align	8
gs_bitrgb_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	bitrgb_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	4                       # 0x4
	.byte	255                     # 0xff
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	bit_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_bitrgb_device, 18480

	.type	bitcmyk_procs,@object   # @bitcmyk_procs
	.align	8
bitcmyk_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	bit_map_cmyk_color
	.quad	bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bit_get_params
	.quad	bit_put_params
	.quad	bit_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bit_map_cmyk_color
	.quad	bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bitcmyk_procs, 584

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"bitcmyk"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"DeviceCMYK"
	.size	.L.str.5, 11

	.type	gs_bitcmyk_device,@object # @gs_bitcmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_bitcmyk_device
	.align	8
gs_bitcmyk_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	bitcmyk_procs
	.quad	.L.str.4
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.5
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	bit_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_bitcmyk_device, 18480

	.type	bitrgbtags_procs,@object # @bitrgbtags_procs
	.align	8
bitrgbtags_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	bittag_rgb_map_rgb_color
	.quad	bittag_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	bittag_put_params
	.quad	bittag_rgb_map_rgb_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bittag_get_color_mapping_procs
	.quad	0
	.quad	bittag_rgb_map_rgb_color
	.quad	bittag_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bit_put_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bitrgbtags_procs, 584

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"bitrgbtags"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"DeviceRGBT"
	.size	.L.str.7, 11

	.type	gs_bitrgbtags_device,@object # @gs_bitrgbtags_device
	.section	.rodata,"a",@progbits
	.globl	gs_bitrgbtags_device
	.align	8
gs_bitrgbtags_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	bitrgbtags_procs
	.quad	.L.str.6
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	32                      # 0x20
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.asciz	"\020\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"\b\b\b\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	16711680                # 0xff0000
	.quad	65280                   # 0xff00
	.quad	255                     # 0xff
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.7
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	bittags_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_bitrgbtags_device, 18480

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"CRDDefault"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ForceMono"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"FirstLine"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"LastLine"
	.size	.L.str.11, 9

	.type	bit_put_params.depths,@object # @bit_put_params.depths
	.section	.rodata,"a",@progbits
	.align	16
bit_put_params.depths:
	.ascii	"\001\002\000\004\b\000\000\b\000\000\000\020\000\000\000\020"
	.zero	16
	.ascii	"\004\b\000\020\020\000\000\030\000\000\000(\000\000\0000"
	.ascii	"\004\b\000\020 \000\000 \000\000\0000\000\000\000@"
	.size	bit_put_params.depths, 64

	.type	bit_put_params.real_bpc,@object # @bit_put_params.real_bpc
	.align	16
bit_put_params.real_bpc:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	16                      # 0x10
	.size	bit_put_params.real_bpc, 68

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"GrayValues"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"RedValues"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GreenValues"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"BlueValues"
	.size	.L.str.15, 11

	.type	bittag_DeviceRGB_procs,@object # @bittag_DeviceRGB_procs
	.section	.rodata,"a",@progbits
	.align	8
bittag_DeviceRGB_procs:
	.quad	gray_cs_to_rgb_cm
	.quad	private_rgb_cs_to_rgb_cm
	.quad	cmyk_cs_to_rgb_cm
	.size	bittag_DeviceRGB_procs, 24

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"bit_print_page(in)"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"nul"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/dev/null"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"P6\n%d %d\n255\n"
	.size	.L.str.19, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
