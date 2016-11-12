	.text
	.file	"gxclbits.bc"
	.globl	clist_bitmap_bytes
	.align	16, 0x90
	.type	clist_bitmap_bytes,@function
clist_bitmap_bytes:                     # @clist_bitmap_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	leal	63(%rdi), %r9d
	shrl	$3, %r9d
	andl	$536870904, %r9d        # imm = 0x1FFFFFF8
	movl	%r9d, (%r8)
	testb	$14, %dl
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	%r9d, (%rcx)
	movl	%r9d, %r8d
	jmp	.LBB0_7
.LBB0_2:                                # %if.else
	addl	$7, %edi
	movl	%edi, %r8d
	shrl	$3, %r8d
	cmpl	$2, %esi
	jb	.LBB0_5
# BB#3:                                 # %if.else
	cmpl	$56, %edi
	jb	.LBB0_5
# BB#4:                                 # %if.else
	andl	$512, %edx              # imm = 0x200
	jne	.LBB0_5
# BB#6:                                 # %if.else.8
	movl	%r9d, (%rcx)
	jmp	.LBB0_7
.LBB0_5:                                # %if.then.7
	movl	%r8d, (%rcx)
	movl	%r8d, %r9d
.LBB0_7:                                # %if.end.9
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB0_9
# BB#8:                                 # %cond.false
	decl	%esi
	imull	%esi, %r9d
	addl	%r8d, %r9d
	movl	%r9d, %eax
.LBB0_9:                                # %cond.end
	retq
.Lfunc_end0:
	.size	clist_bitmap_bytes, .Lfunc_end0-clist_bitmap_bytes
	.cfi_endproc

	.globl	cmd_put_bits
	.align	16, 0x90
	.type	cmd_put_bits,@function
cmd_put_bits:                           # @cmd_put_bits
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
	subq	$376, %rsp              # imm = 0x178
.Ltmp6:
	.cfi_def_cfa_offset 432
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
	movl	%r8d, %r13d
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r8
	movl	440(%rsp), %ebx
	leal	63(%rcx), %eax
	shrl	$3, %eax
	andl	$536870904, %eax        # imm = 0x1FFFFFF8
	addl	$7, %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	testb	$2, %bh
	movl	%edx, %r15d
	cmovel	%eax, %r15d
	cmpl	$55, %ecx
	cmovbel	%edx, %r15d
	cmpl	$1, %r13d
	cmovbel	%edx, %r15d
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %r14d
	je	.LBB1_2
# BB#1:                                 # %cond.false.i
	leal	-1(%r13), %r14d
	imull	%r15d, %r14d
	addl	%edx, %r14d
.LBB1_2:                                # %clist_bitmap_bytes.exit
	movl	432(%rsp), %esi
	movl	%ebx, %ecx
	movl	%ebx, %edi
	andl	$14, %ecx
	movl	%eax, %ebx
	cmovel	%r15d, %ebx
	testl	%r13d, %r13d
	je	.LBB1_4
# BB#3:                                 # %cond.false.i.150
	testl	%ecx, %ecx
	cmovel	%edx, %eax
	leal	-1(%r13), %r12d
	imull	%ebx, %r12d
	addl	%eax, %r12d
.LBB1_4:                                # %clist_bitmap_bytes.exit152
	movq	456(%rsp), %rdx
	movl	$4096, %ecx             # imm = 0x1000
	subl	%esi, %ecx
	movl	%edi, %eax
	testb	$6, %al
	je	.LBB1_38
# BB#5:                                 # %clist_bitmap_bytes.exit152
	cmpl	$50, %r14d
	jb	.LBB1_38
# BB#6:                                 # %land.lhs.true.4
	movq	24(%r8), %rdi
	testb	$1, %ah
	jne	.LBB1_8
# BB#7:                                 # %land.lhs.true.4
	cmpl	%ecx, %r12d
	jbe	.LBB1_8
.LBB1_38:                               # %if.else.129
	movl	$-13, %r10d
	cmpl	%ecx, %r12d
	ja	.LBB1_50
# BB#39:                                # %if.else.133
	movl	%r9d, 108(%rsp)         # 4-byte Spill
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	addl	%esi, %r14d
	movl	%r14d, (%rdx)
	testq	%rbp, %rbp
	je	.LBB1_43
# BB#40:                                # %cond.true.137
	leaq	1760(%rbp), %rsi
	movq	%rbp, %r12
	movq	%r8, %rdi
	movl	%r14d, %edx
	movq	%r8, %rbx
	callq	cmd_put_list_op
	jmp	.LBB1_41
.LBB1_8:                                # %if.then
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%r9d, 108(%rsp)         # 4-byte Spill
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	cmpl	%ecx, %r12d
	movl	%ecx, %eax
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	cmovbl	%r12d, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	(%rax,%rsi), %eax
	movl	%eax, (%rdx)
	movq	%rdx, %rbx
	testq	%rbp, %rbp
	je	.LBB1_12
# BB#9:                                 # %cond.true.10
	leaq	1760(%rbp), %rsi
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %edx
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	callq	cmd_put_list_op
	jmp	.LBB1_10
.LBB1_43:                               # %cond.false.147
	movq	%rbp, %r12
	movl	10144(%r8), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%r8, %rdi
	movl	%r14d, %ecx
	movq	%r8, %rbx
	callq	cmd_put_range_op
.LBB1_41:                               # %cond.true.137
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_44
# BB#42:                                # %cond.false.144
	movb	$0, (%rbp)
	movl	432(%rsp), %edi
	movl	440(%rsp), %esi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %r8
	movq	%r12, %r9
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	456(%rsp), %r11
	jmp	.LBB1_45
.LBB1_44:                               # %cond.end.158
	movl	10192(%rbx), %r10d
	xorl	%ebp, %ebp
	testl	%r10d, %r10d
	movl	432(%rsp), %edi
	movl	440(%rsp), %esi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %r8
	movq	%r12, %r9
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	456(%rsp), %r11
	jns	.LBB1_45
	jmp	.LBB1_50
.LBB1_12:                               # %cond.false.17
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movl	10144(%r8), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%r8, %rdi
	movl	%eax, %ecx
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	callq	cmd_put_range_op
.LBB1_10:                               # %cond.true.10
	testq	%rax, %rax
	je	.LBB1_13
# BB#11:                                # %cond.false.14
	movb	$0, (%rax)
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	440(%rsp), %esi
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%rbx, %r11
	jmp	.LBB1_14
.LBB1_13:                               # %cond.end.26
	movl	10192(%rbp), %r10d
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	testl	%r10d, %r10d
	movl	440(%rsp), %esi
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%rbx, %r11
	js	.LBB1_50
.LBB1_14:                               # %do.end
	testb	$4, %sil
	jne	.LBB1_15
# BB#16:                                # %if.else
	testb	$2, %sil
	movl	432(%rsp), %edi
	movq	%rbp, %r8
	movq	64(%rsp), %r9           # 8-byte Reload
	je	.LBB1_32
# BB#17:                                # %if.then.34
	movq	%r8, %rbp
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r13, 80(%rsp)          # 8-byte Spill
	leaq	136(%rsp), %rdi
	callq	clist_rle_init
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(,%rax,8), %r13d
	movl	$1, %esi
	jmp	.LBB1_18
.LBB1_15:                               # %if.then.31
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(,%rax,8), %r13d
	leaq	136(%rsp), %rdi
	movl	%r13d, %esi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	clist_cfe_init
	movl	$2, %esi
.LBB1_18:                               # %if.then.38
	movl	432(%rsp), %eax
	leal	-1(%rax), %eax
	cltq
	movq	72(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%rdi, 120(%rsp)
	movl	%r14d, %eax
	shrl	%eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	cmovbl	%ecx, %eax
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	movq	%rax, 128(%rsp)
	addl	$63, %r13d
	shrl	$3, %r13d
	andl	$536870904, %r13d       # imm = 0x1FFFFFF8
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	-1(%rax), %rax
	movq	%rax, 352(%rsp)
	movl	108(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %r13d
	movq	%rbp, %rdx
	jne	.LBB1_19
# BB#21:                                # %if.then.i
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, 360(%rsp)
	movq	136(%rsp), %rax
	leaq	136(%rsp), %rdi
	leaq	352(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movl	$1, %ecx
	callq	*16(%rax)
	jmp	.LBB1_27
.LBB1_19:                               # %for.cond.preheader.i
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movl	%r13d, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, 360(%rsp)
	movq	136(%rsp), %rax
	movq	16(%rax), %rbp
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	jb	.LBB1_20
# BB#22:                                # %for.body.lr.ph.i
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	108(%rsp), %eax         # 4-byte Reload
	subl	%r13d, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$1, %ebx
	.align	16, 0x90
.LBB1_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	leaq	136(%rsp), %rdi
	leaq	352(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	*%rbp
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jne	.LBB1_28
# BB#24:                                # %if.end.i
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	352(%rsp), %rax
	movl	$-1, %r13d
	cmpq	360(%rsp), %rax
	jne	.LBB1_28
# BB#25:                                # %if.end.16.i
                                        #   in Loop: Header=BB1_23 Depth=1
	addq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 352(%rsp)
	incl	%ebx
	addq	56(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 360(%rsp)
	movq	136(%rsp), %rax
	movq	16(%rax), %rbp
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebx
	jb	.LBB1_23
	jmp	.LBB1_26
.LBB1_20:
	movq	%rdx, 24(%rsp)          # 8-byte Spill
.LBB1_26:                               # %if.then.21.i
	leaq	136(%rsp), %rdi
	leaq	352(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movl	$1, %ecx
	callq	*%rbp
.LBB1_27:                               # %if.end.26.i
	movl	%eax, %r13d
.LBB1_28:                               # %if.end.26.i
	movq	136(%rsp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_30
# BB#29:                                # %if.then.29.i
	leaq	136(%rsp), %rdi
	callq	*%rax
.LBB1_30:                               # %cmd_compress_bitmap.exit
	testl	%r13d, %r13d
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	456(%rsp), %rbx
	movq	%rbx, %r11
	je	.LBB1_37
# BB#31:                                # %cleanup.thread
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %r13          # 8-byte Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	movl	432(%rsp), %edi
	movl	440(%rsp), %edx
	movl	%edx, %esi
.LBB1_32:                               # %if.end.77
	cmpl	36(%rsp), %r12d         # 4-byte Folded Reload
	jbe	.LBB1_34
# BB#33:                                # %do.end.83
	leaq	1760(%r9), %rax
	leaq	10240(%r8), %rcx
	testq	%r9, %r9
	cmovneq	%rax, %rcx
	movq	8(%rcx), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, 8(%rax)
	movslq	%ecx, %rax
	subq	%rax, 10216(%r8)
	movl	$-13, %r10d
	jmp	.LBB1_50
.LBB1_34:                               # %if.end.98
	cmpl	%r14d, %r12d
	je	.LBB1_36
# BB#35:                                # %do.end.104
	addl	%edi, %r14d
	movq	40(%rsp), %rdx          # 8-byte Reload
	subl	%r14d, %edx
	leaq	1760(%r9), %rax
	leaq	10240(%r8), %rbp
	testq	%r9, %r9
	cmovneq	%rax, %rbp
	movq	8(%rbp), %rax
	subl	%edx, 8(%rax)
	subq	%rdx, 10216(%r8)
	movl	%r14d, (%r11)
.LBB1_36:                               # %cleanup.125.thread170
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
.LBB1_45:                               # %if.end.168
	testb	$8, %sil
	je	.LBB1_48
# BB#46:                                # %land.lhs.true.171
	shll	$3, %edx
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ecx, %esi
	movl	%r13d, %ecx
	movq	%r8, %rbx
	movq	%r9, %r12
	movq	%r11, %r14
	callq	bytes_rectangle_is_const
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%r12, %rdx
	movl	432(%rsp), %edi
	testl	%eax, %eax
	js	.LBB1_48
# BB#47:                                # %if.then.176
	leal	1(%rdi), %ecx
	leaq	1760(%rdx), %r8
	leaq	10240(%rbx), %rsi
	testq	%rdx, %rdx
	cmovneq	%r8, %rsi
	movq	8(%rsi), %rdx
	movl	%ecx, %esi
	subl	(%r14), %esi
	addl	%esi, 8(%rdx)
	movl	(%r14), %edx
	subl	%ecx, %edx
	subq	%rdx, 10216(%rbx)
	movl	%ecx, (%r14)
	movslq	%edi, %rcx
	movb	%al, (%rbp,%rcx)
	movl	$3, %r10d
	jmp	.LBB1_49
.LBB1_48:                               # %if.else.197
	movslq	%edi, %rax
	leaq	(%rax,%rbp), %rdi
	movl	%r15d, %esi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %r8d
	movl	%r13d, %r9d
	callq	bytes_copy_rectangle
	xorl	%r10d, %r10d
	jmp	.LBB1_49
.LBB1_37:                               # %cleanup.125
	movl	120(%rsp), %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	subl	%ecx, %eax
	movl	432(%rsp), %ecx
	addl	%ecx, %eax
	movq	40(%rsp), %rsi          # 8-byte Reload
	subl	%eax, %esi
	leaq	10240(%r8), %rcx
	movq	64(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	leaq	1760(%rdx), %rdx
	cmoveq	%rcx, %rdx
	movq	8(%rdx), %rcx
	subl	%esi, 8(%rcx)
	subq	%rsi, 10216(%r8)
	movl	%eax, (%r11)
	movq	72(%rsp), %rbp          # 8-byte Reload
	movl	20(%rsp), %r10d         # 4-byte Reload
.LBB1_49:                               # %out
	movq	448(%rsp), %rax
	movq	%rbp, (%rax)
.LBB1_50:                               # %cleanup.201
	movl	%r10d, %eax
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmd_put_bits, .Lfunc_end1-cmd_put_bits
	.cfi_endproc

	.globl	cmd_put_color_map
	.align	16, 0x90
	.type	cmd_put_color_map,@function
cmd_put_color_map:                      # @cmd_put_color_map
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
	movq	%r8, %r12
	movq	%rcx, %rbp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testq	%rbp, %rbp
	je	.LBB2_1
# BB#8:                                 # %if.else
	testq	%r12, %r12
	je	.LBB2_10
# BB#9:                                 # %land.lhs.true.13
	movq	48(%rbp), %rcx
	xorl	%eax, %eax
	cmpq	(%r12), %rcx
	je	.LBB2_21
.LBB2_10:                               # %if.end.17
	movl	$gs_identity_transfer, %eax
	movl	10144(%rbx), %edx
	decl	%edx
	cmpq	%rax, 24(%rbp)
	je	.LBB2_11
# BB#15:                                # %if.else.41
	xorl	%esi, %esi
	movl	$515, %ecx              # imm = 0x203
	movq	%rbx, %rdi
	callq	cmd_put_range_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB2_17
# BB#16:                                # %cond.end.50.thread
	movb	$6, (%rcx)
	jmp	.LBB2_18
.LBB2_1:                                # %if.then
	testq	%r12, %r12
	je	.LBB2_3
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	cmpq	$0, (%r12)
	je	.LBB2_21
.LBB2_3:                                # %if.end
	movl	10144(%rbx), %edx
	decl	%edx
	xorl	%esi, %esi
	movl	$3, %ecx
	movq	%rbx, %rdi
	callq	cmd_put_range_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB2_5
# BB#4:                                 # %cond.end.thread
	movb	$6, (%rcx)
	jmp	.LBB2_6
.LBB2_11:                               # %if.then.21
	xorl	%esi, %esi
	movl	$3, %ecx
	movq	%rbx, %rdi
	callq	cmd_put_range_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB2_13
# BB#12:                                # %cond.end.30.thread
	movb	$6, (%rcx)
	jmp	.LBB2_14
.LBB2_5:                                # %cond.end
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	js	.LBB2_21
.LBB2_6:                                # %if.end.6
	subl	$-128, %r15d
	movb	%r15b, 1(%rcx)
	movb	%r14b, 2(%rcx)
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB2_21
# BB#7:                                 # %if.then.10
	movq	$0, (%r12)
	jmp	.LBB2_21
.LBB2_17:                               # %cond.end.50
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	js	.LBB2_21
.LBB2_18:                               # %if.end.55
	addl	$160, %r15d
	movb	%r15b, 1(%rcx)
	movb	%r14b, 2(%rcx)
	addq	$3, %rcx
	leaq	56(%rbp), %rsi
	movl	$512, %edx              # imm = 0x200
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB2_19
.LBB2_13:                               # %cond.end.30
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	js	.LBB2_21
.LBB2_14:                               # %if.end.35
	addl	$144, %r15d
	movb	%r15b, 1(%rcx)
	movb	%r14b, 2(%rcx)
.LBB2_19:                               # %if.end.62
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB2_21
# BB#20:                                # %if.then.64
	movq	48(%rbp), %rcx
	movq	%rcx, (%r12)
.LBB2_21:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmd_put_color_map, .Lfunc_end2-cmd_put_color_map
	.cfi_endproc

	.globl	clist_change_tile
	.align	16, 0x90
	.type	clist_change_tile,@function
clist_change_tile:                      # @clist_change_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 208
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	leaq	10272(%r12), %r15
.LBB3_1:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #     Child Loop BB3_12 Depth 2
	movq	24(%r14), %rax
	movq	1872(%r12), %rcx
	movl	1864(%r12), %edx
	movl	%edx, %ebp
	andl	%eax, %ebp
	movq	(%rcx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.LBB3_5
# BB#2:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	1776(%r12), %rbx
	.align	16, 0x90
.LBB3_3:                                # %for.body.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, 16(%rbx,%rsi)
	je	.LBB3_18
# BB#4:                                 # %for.inc.i
                                        #   in Loop: Header=BB3_3 Depth=2
	addl	$413, %ebp              # imm = 0x19D
	andl	%edx, %ebp
	movq	(%rcx,%rbp,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_3
.LBB3_5:                                # %if.end.141
                                        #   in Loop: Header=BB3_1 Depth=1
	movzwl	32(%r14), %r11d
	movzwl	34(%r14), %r8d
	movzwl	10304(%r12), %ecx
	cmpl	%ecx, %r11d
	jne	.LBB3_9
# BB#6:                                 # %lor.lhs.false.149
                                        #   in Loop: Header=BB3_1 Depth=1
	movzwl	10306(%r12), %edx
	cmpl	%edx, %r8d
	jne	.LBB3_9
# BB#7:                                 # %lor.lhs.false.157
                                        #   in Loop: Header=BB3_1 Depth=1
	movzwl	10308(%r12), %esi
	movzwl	36(%r14), %edx
	cmpl	%esi, %edx
	jne	.LBB3_9
# BB#8:                                 # %lor.lhs.false.165
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	%r13d, 10320(%r12)
	jne	.LBB3_9
# BB#81:                                # %if.else.170
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, 10296(%r12)
	movq	(%r14), %rax
	movq	%rax, 10272(%r12)
	movq	%r15, %rsi
	jmp	.LBB3_82
	.align	16, 0x90
.LBB3_9:                                # %if.then.169
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	1868(%r12), %ebx
	addl	$40, %ebx
	movl	40(%r14), %r9d
	cmpl	$1, %r9d
	movl	%r13d, %r10d
	je	.LBB3_11
# BB#10:                                # %if.then.i.144
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%r13d, %eax
	cltd
	idivl	%r9d
	movl	%eax, %r10d
.LBB3_11:                               # %if.end.i.147
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	%r10d, %esi
	imull	%r11d, %esi
	movl	1832(%r12), %eax
	movl	%esi, %edi
	imull	%r8d, %edi
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebp
	cmpl	%ebx, %ebp
	cmovbl	%ebp, %ebx
	subl	%ebx, %ebp
	cmpl	$256, %ebp              # imm = 0x100
	movl	$256, %edi              # imm = 0x100
	cmoval	%edi, %ebp
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	leal	(,%rbp,8), %eax
	xorl	%edx, %edx
	divl	%r8d
	cmpl	$256, %eax              # imm = 0x100
	cmovael	%edi, %eax
	xorl	%edx, %edx
	divl	%esi
	.align	16, 0x90
.LBB3_12:                               # %while.cond.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edi
	shrl	%eax
	cmpl	$255, %edi
	ja	.LBB3_12
# BB#13:                                # %while.end.i
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$1, %edi
	movl	$1, %edx
	cmovbel	%edx, %edi
	imull	%r11d, %edi
	movl	%edi, 108(%rsp)
	imull	%r10d, %edi
	addl	$63, %edi
	sarl	$6, %edi
	shll	$3, %edi
	movl	%edi, 104(%rsp)
	cmpl	$1, %r9d
	setne	%al
	cmpw	$0, 38(%r14)
	jne	.LBB3_17
# BB#14:                                # %while.end.i
                                        #   in Loop: Header=BB3_1 Depth=1
	testb	%al, %al
	jne	.LBB3_17
# BB#15:                                # %if.else.i.150
                                        #   in Loop: Header=BB3_1 Depth=1
	imull	%r8d, %edi
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%edi
	movl	$4, %edx
	cmpl	$4, %eax
	ja	.LBB3_17
# BB#16:                                # %if.else.53.i
                                        #   in Loop: Header=BB3_1 Depth=1
	testl	%eax, %eax
	movl	$1, %edx
	cmovel	%edx, %eax
	movl	%eax, %edx
.LBB3_17:                               # %clist_new_tile_params.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	imull	%r8d, %edx
	movl	%edx, 112(%rsp)
	leaq	96(%rsp), %rsi
.LBB3_82:                               # %if.end.178
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	8(%r14), %edx
	movq	%r12, %rdi
	movl	%r13d, %ecx
	callq	clist_add_tile
	testl	%eax, %eax
	jns	.LBB3_1
	jmp	.LBB3_83
.LBB3_18:                               # %if.then
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	addq	%rsi, %rbx
	movq	88(%rsp), %rax          # 8-byte Reload
	subq	10200(%r12), %rax
	sarq	$4, %rax
	movabsq	$-7999030616033345391, %r15 # imm = 0x90FDBC090FDBC091
	imulq	%rax, %r15
	movl	%r15d, %eax
	sarl	$3, %eax
	movq	%r12, %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movb	%r15b, %r12b
	andb	$7, %r12b
	movl	$1, %r14d
	movb	%r12b, %cl
	shll	%cl, %r14d
	callq	gx_device_is_pattern_clist
	movq	80(%rsp), %rcx          # 8-byte Reload
	movzbl	40(%rbx,%rcx), %edx
	movq	%rbx, %r11
	movzbl	%r12b, %ecx
	btl	%ecx, %edx
	jae	.LBB3_28
# BB#19:                                # %if.then.8
	xorl	%eax, %eax
	movl	%ebp, %ebx
	movq	88(%rsp), %rcx          # 8-byte Reload
	subl	360(%rcx), %ebx
	movq	%rcx, %r13
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	%r11, %r14
	je	.LBB3_83
# BB#20:                                # %if.end
	movq	%r13, %rcx
	leaq	360(%rcx), %r15
	leal	8(%rbx), %eax
	leaq	1760(%rcx), %rsi
	cmpl	$15, %eax
	jbe	.LBB3_21
# BB#24:                                # %if.else.i
	movl	$2, %edx
	movq	%r12, %rdi
	callq	cmd_put_list_op
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB3_26
# BB#25:                                # %cond.end.14.thread.i
	movl	%ebp, %eax
	shrl	$8, %eax
	addl	$192, %eax
	movb	%al, (%rcx)
	movb	%bpl, 1(%rcx)
	jmp	.LBB3_80
.LBB3_28:                               # %if.else
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movl	%r14d, 44(%rsp)         # 4-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	movzwl	32(%rcx), %r9d
	movzwl	34(%rcx), %r8d
	movq	72(%rsp), %rdx          # 8-byte Reload
	movzwl	10304(%rdx), %eax
	cmpl	%eax, %r9d
	movq	%rdx, %r12
	movq	%rcx, %rsi
	jne	.LBB3_33
# BB#29:                                # %lor.lhs.false
	movzwl	10306(%r12), %eax
	cmpl	%eax, %r8d
	jne	.LBB3_33
# BB#30:                                # %lor.lhs.false.28
	movzwl	10308(%r12), %eax
	movzwl	36(%rsi), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_33
# BB#31:                                # %lor.lhs.false.35
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	jne	.LBB3_33
# BB#32:                                # %lor.lhs.false.35
	cmpl	%r13d, 10320(%r12)
	je	.LBB3_45
.LBB3_33:                               # %if.then.40
	movl	1868(%r12), %ebx
	addl	$40, %ebx
	movl	40(%rsi), %ecx
	cmpl	$1, %ecx
	movl	%r13d, %r14d
	je	.LBB3_35
# BB#34:                                # %if.then.i.161
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r14d
.LBB3_35:                               # %if.end.i.177
	movl	%r14d, %edi
	imull	%r9d, %edi
	movl	1832(%r12), %eax
	movl	%edi, %ecx
	imull	%r8d, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
	cmpl	%ebx, %ecx
	cmovbl	%ecx, %ebx
	subl	%ebx, %ecx
	cmpl	$256, %ecx              # imm = 0x100
	movl	$256, %ebx              # imm = 0x100
	cmoval	%ebx, %ecx
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movq	56(%rsp), %rax          # 8-byte Reload
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	leal	(,%rcx,8), %eax
	xorl	%edx, %edx
	divl	%r8d
	cmpl	$256, %eax              # imm = 0x100
	cmovael	%ebx, %eax
	xorl	%edx, %edx
	divl	%edi
	.align	16, 0x90
.LBB3_36:                               # %while.cond.i.181
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edi
	shrl	%eax
	cmpl	$255, %edi
	ja	.LBB3_36
# BB#37:                                # %while.end.i.193
	cmpl	$1, %edi
	movl	$1, %edx
	cmovbel	%edx, %edi
	imull	%r9d, %edi
	movl	%edi, 10284(%r12)
	imull	%r14d, %edi
	addl	$63, %edi
	sarl	$6, %edi
	shll	$3, %edi
	movl	%edi, 10280(%r12)
	cmpw	$0, 38(%rsi)
	jne	.LBB3_41
# BB#38:                                # %lor.lhs.false.i.195
	cmpl	$1, 40(%rsi)
	jne	.LBB3_41
# BB#39:                                # %if.else.i.199
	imull	%r8d, %edi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	$4, %edx
	cmpl	$4, %eax
	ja	.LBB3_41
# BB#40:                                # %if.else.53.i.202
	testl	%eax, %eax
	movl	$1, %edx
	cmovnel	%eax, %edx
.LBB3_41:                               # %clist_new_tile_params.exit206
	imull	%r8d, %edx
	movl	%edx, 10288(%r12)
	movl	%r13d, 10320(%r12)
	movslq	10324(%r12), %rax
	movslq	10328(%r12), %rcx
	cmpl	%ecx, %eax
	jg	.LBB3_44
# BB#42:                                # %for.body.lr.ph
	movq	10200(%r12), %rdx
	imulq	$1808, %rax, %rsi       # imm = 0x710
	decq	%rax
	leaq	1752(%rdx,%rsi), %rdx
	.align	16, 0x90
.LBB3_43:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	andb	$127, 1(%rdx)
	incq	%rax
	addq	$1808, %rdx             # imm = 0x710
	cmpq	%rcx, %rax
	jl	.LBB3_43
.LBB3_44:                               # %for.end
	movl	10144(%r12), %eax
	movl	%eax, 10324(%r12)
	movl	$-1, 10328(%r12)
.LBB3_45:                               # %if.end.49
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	movq	88(%rsp), %rax          # 8-byte Reload
	testb	$-128, 1753(%rax)
	movq	%r11, %r14
	jne	.LBB3_55
# BB#46:                                # %if.then.53
	movl	$2, %r13d
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	je	.LBB3_48
# BB#47:                                # %cond.true.i
	movl	10296(%r12), %edi
	callq	cmd_size_w
	movl	%eax, %r13d
	addl	$2, %r13d
.LBB3_48:                               # %cond.end.i.111
	movzwl	10304(%r12), %edi
	callq	cmd_size_w
	movl	%eax, %ebx
	addl	%r13d, %ebx
	movzwl	10306(%r12), %edi
	callq	cmd_size_w
	movl	%eax, %r13d
	addl	%ebx, %r13d
	movzwl	10304(%r12), %esi
	movl	10284(%r12), %ecx
	xorl	%ebx, %ebx
	cmpl	%ecx, %esi
	movl	$0, %eax
	je	.LBB3_50
# BB#49:                                # %cond.false.11.i
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, %edi
	callq	cmd_size_w
.LBB3_50:                               # %cond.end.17.i
	addl	%eax, %r13d
	movzwl	10306(%r12), %ecx
	movl	10288(%r12), %eax
	cmpl	%eax, %ecx
	je	.LBB3_52
# BB#51:                                # %cond.false.26.i
	cltd
	idivl	%ecx
	movl	%eax, %edi
	callq	cmd_size_w
	movl	%eax, %ebx
.LBB3_52:                               # %cond.end.33.i
	addl	%ebx, %r13d
	movzwl	10308(%r12), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.LBB3_54
# BB#53:                                # %cond.false.40.i
	callq	cmd_size_w
.LBB3_54:                               # %cmd_size_tile_params.exit
	addl	%eax, %r13d
	cmpl	$1, 10312(%r12)
	setne	%al
	movzbl	%al, %r15d
	addl	%r13d, %r15d
.LBB3_55:                               # %if.end.56
	movq	%r15, 56(%rsp)          # 8-byte Spill
	leaq	40(%r14), %r13
	movl	1824(%r12), %eax
	movl	%r14d, %ebx
	subl	%eax, %ebx
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movl	%ebp, %edi
	callq	cmd_size_w
	leal	(%rax,%r15), %r15d
	movl	%ebx, %edi
	callq	cmd_size_w
	movl	%eax, %esi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movl	40(%rbx), %edi
	cmpl	$1, %edi
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	je	.LBB3_57
# BB#56:                                # %if.then.70
	cltd
	idivl	%edi
	movl	%eax, %ecx
.LBB3_57:                               # %if.end.72
	leal	1(%rsi,%r15), %eax
	movl	1868(%r12), %edx
	addq	%rdx, %r13
	movzwl	32(%rbx), %esi
	imull	%esi, %ecx
	movzwl	34(%rbx), %r8d
	imull	%edi, %r8d
	movzwl	14(%r14), %r9d
	movl	$768, %edx              # imm = 0x300
	cmpl	%esi, 10284(%r12)
	jg	.LBB3_59
# BB#58:                                # %select.mid
	movl	$256, %edx              # imm = 0x100
.LBB3_59:                               # %select.end
	leaq	148(%rsp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	96(%rsp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r12, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	callq	cmd_put_bits
	testl	%eax, %eax
	movq	56(%rsp), %rdx          # 8-byte Reload
	js	.LBB3_83
# BB#60:                                # %if.end.94
	testl	%edx, %edx
	movq	96(%rsp), %r13
	je	.LBB3_79
# BB#61:                                # %if.then.96
	movl	52(%rsp), %eax          # 4-byte Reload
	cmpl	$9, %eax
	jl	.LBB3_63
# BB#62:                                # %cond.true.i.117
	addl	$-5, %eax
	sarl	$3, %eax
	orl	$8, %eax
	jmp	.LBB3_64
.LBB3_21:                               # %if.then.i.105
	movl	$1, %edx
	movq	%r12, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB3_23
# BB#22:                                # %cond.end.thread.i
	addl	$184, %ebx
	movb	%bl, (%rax)
	jmp	.LBB3_80
.LBB3_63:                               # %cond.false.i
	decl	%eax
.LBB3_64:                               # %cond.end.i.120
	movl	48(%rsp), %ecx          # 4-byte Reload
	movq	%rdx, %rbx
	leaq	2(%r13), %rsi
	movb	$1, (%r13)
	movl	%eax, %r15d
	testl	%ecx, %ecx
	je	.LBB3_66
# BB#65:                                # %if.then.i.123
	movl	10296(%r12), %edi
	callq	cmd_put_w
	movq	%rax, %rsi
.LBB3_66:                               # %if.end.i
	movzwl	10304(%r12), %edi
	callq	cmd_put_w
	movzwl	10306(%r12), %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rax, %rcx
	movzwl	10304(%r12), %esi
	movl	10284(%r12), %eax
	cmpl	%eax, %esi
	je	.LBB3_68
# BB#67:                                # %if.then.11.i
	cltd
	idivl	%esi
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	cmd_put_w
	movq	%rax, %rcx
	orl	$32, %r15d
.LBB3_68:                               # %if.end.20.i
	movzwl	10306(%r12), %esi
	movl	10288(%r12), %eax
	cmpl	%eax, %esi
	je	.LBB3_70
# BB#69:                                # %if.then.26.i
	cltd
	idivl	%esi
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	cmd_put_w
	movq	%rax, %rcx
	orb	$64, %r15b
.LBB3_70:                               # %if.end.36.i
	movzwl	10308(%r12), %edi
	testl	%edi, %edi
	je	.LBB3_72
# BB#71:                                # %if.then.40.i
	movq	%rcx, %rsi
	callq	cmd_put_w
	movq	%rax, %rcx
	orb	$-128, %r15b
.LBB3_72:                               # %if.end.47.i
	movl	10312(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB3_74
# BB#73:
	movq	%r13, %rax
	jmp	.LBB3_75
.LBB3_74:                               # %if.then.50.i
	movb	%al, (%rcx)
	orb	$16, %r15b
	movq	96(%rsp), %rax
.LBB3_75:                               # %cmd_store_tile_params.exit
	movq	32(%rsp), %rcx          # 8-byte Reload
	movb	%r15b, 1(%r13)
	movl	%ebx, %r13d
	addq	%rax, %r13
	movq	%r13, 96(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	orb	$-128, 1753(%rax)
	cmpl	10324(%r12), %ecx
	jge	.LBB3_77
# BB#76:                                # %if.then.104
	movl	%ecx, 10324(%r12)
.LBB3_77:                               # %if.end.106
	cmpl	10328(%r12), %ecx
	jle	.LBB3_79
# BB#78:                                # %if.then.110
	movl	%ecx, 10328(%r12)
.LBB3_79:                               # %cleanup.thread
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	44(%rsp), %r15d         # 4-byte Reload
	movl	40(%rsp), %r12d         # 4-byte Reload
	movb	$3, (%r13)
	incq	%r13
	movl	%ebp, %edi
	movq	%r13, %rsi
	callq	cmd_put_w
	movl	%r12d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movzbl	40(%r14,%rbx), %eax
	orl	%r15d, %eax
	movb	%al, 40(%r14,%rbx)
	incw	30(%r14)
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	360(%rax), %r15
	movq	%rax, %r13
.LBB3_80:                               # %if.end.132
	movl	%ebp, (%r15)
	movq	16(%r14), %rax
	movq	%rax, 368(%r13)
	xorl	%eax, %eax
.LBB3_83:                               # %cleanup.189
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_26:                               # %cond.end.14.i
	movl	10192(%r12), %eax
	testl	%eax, %eax
	js	.LBB3_83
# BB#27:                                # %if.end.19.i
	movb	%bpl, 1(%rcx)
	jmp	.LBB3_80
.LBB3_23:                               # %cond.end.i
	movl	10192(%r12), %eax
	testl	%eax, %eax
	jns	.LBB3_80
	jmp	.LBB3_83
.Lfunc_end3:
	.size	clist_change_tile, .Lfunc_end3-clist_change_tile
	.cfi_endproc

	.align	16, 0x90
	.type	clist_add_tile,@function
clist_add_tile:                         # @clist_add_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 80
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	8(%r14), %ecx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	16(%r14), %eax
	imull	%ecx, %eax
	imull	40(%r14), %eax
	movl	1868(%rbx), %ecx
	leal	40(%rcx,%rax), %r15d
	leaq	1840(%rbx), %rbp
	movl	1856(%rbx), %eax
	cmpl	10268(%rbx), %eax
	jne	.LBB4_4
# BB#1:                                 # %if.then
	movl	1832(%rbx), %esi
	leaq	16(%rsp), %rdx
	movq	%rbp, %rdi
	callq	gx_bits_cache_alloc
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB4_3
# BB#2:                                 # %if.then.12
	movl	$0, 1848(%rbx)
	movl	1832(%rbx), %esi
	leaq	16(%rsp), %rdx
	movq	%rbp, %rdi
	callq	gx_bits_cache_alloc
	movq	16(%rsp), %rsi
.LBB4_3:                                # %if.end
	movq	%rbx, %rdi
	callq	clist_delete_tile
.LBB4_4:                                # %while.cond.preheader
	movl	%r15d, %r15d
	leaq	16(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gx_bits_cache_alloc
	testl	%eax, %eax
	jns	.LBB4_11
# BB#5:                                 # %while.body.lr.ph
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB4_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_7
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%rbx, %rdi
	callq	clist_delete_tile
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_7:                                # %if.then.27
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$-13, %eax
	cmpl	$0, 1848(%rbx)
	je	.LBB4_19
# BB#8:                                 # %if.end.33
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$0, 1848(%rbx)
.LBB4_10:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	gx_bits_cache_alloc
	testl	%eax, %eax
	js	.LBB4_6
.LBB4_11:                               # %while.end
	movq	16(%rsp), %rdi
	movl	%r13d, 4(%rdi)
	movl	8(%rsp), %ebp           # 4-byte Reload
	movw	%bp, 14(%rdi)
	movw	32(%r14), %ax
	movw	%ax, 8(%rdi)
	movw	34(%r14), %ax
	movw	%ax, 10(%rdi)
	movw	36(%r14), %ax
	movw	%ax, 26(%rdi)
	movw	%ax, 12(%rdi)
	movw	$257, 24(%rdi)          # imm = 0x101
	movq	24(%r14), %rax
	movq	%rax, 16(%rdi)
	movl	40(%r14), %eax
	movb	%al, 32(%rdi)
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB4_13
# BB#12:                                # %if.then.49
	movzbl	%al, %ecx
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r13d
.LBB4_13:                               # %if.end.52
	addq	$40, %rdi
	movl	1868(%rbx), %edx
	xorl	%esi, %esi
	callq	memset
	movq	16(%rsp), %rax
	movl	1868(%rbx), %ecx
	leaq	40(%rax,%rcx), %rdi
	movq	(%r14), %rdx
	movzwl	32(%r14), %r8d
	imull	%r13d, %r8d
	addl	$7, %r8d
	sarl	$3, %r8d
	movzwl	34(%r14), %ecx
	movzbl	32(%rax), %r9d
	imull	%ecx, %r9d
	movl	%ebp, %esi
	movl	12(%rsp), %ecx          # 4-byte Reload
	callq	bytes_copy_rectangle_zero_padding
	movq	24(%r14), %rsi
	movq	1872(%rbx), %rax
	movl	1864(%rbx), %edi
	movl	%edi, %ecx
	andl	%esi, %ecx
	movq	(%rax,%rcx,8), %rbp
	testq	%rbp, %rbp
	je	.LBB4_14
# BB#15:                                # %for.body.lr.ph.i
	movq	1776(%rbx), %rdx
	.align	16, 0x90
.LBB4_16:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, 16(%rdx,%rbp)
	je	.LBB4_18
# BB#17:                                # %for.inc.i
                                        #   in Loop: Header=BB4_16 Depth=1
	addl	$413, %ecx              # imm = 0x19D
	andl	%edi, %ecx
	movq	(%rax,%rcx,8), %rbp
	testq	%rbp, %rbp
	jne	.LBB4_16
	jmp	.LBB4_18
.LBB4_14:                               # %if.end.52.clist_find_bits.exit_crit_edge
	movq	1776(%rbx), %rdx
.LBB4_18:                               # %clist_find_bits.exit
	movq	16(%rsp), %rsi
	movw	%cx, 28(%rsi)
	movq	%rsi, %rdi
	subq	%rdx, %rdi
	movl	%ecx, %ecx
	movq	%rdi, (%rax,%rcx,8)
	movw	$0, 30(%rsi)
	xorl	%eax, %eax
.LBB4_19:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	clist_add_tile, .Lfunc_end4-clist_add_tile
	.cfi_endproc

	.globl	clist_change_bits
	.align	16, 0x90
	.type	clist_change_bits,@function
clist_change_bits:                      # @clist_change_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 144
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r15
.LBB5_1:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movq	24(%rbp), %rax
	movq	1872(%r15), %rcx
	movl	1864(%r15), %edx
	movl	%edx, %ebx
	andl	%eax, %ebx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB5_5
# BB#2:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	1776(%r15), %r12
	.align	16, 0x90
.LBB5_3:                                # %for.body.i
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, 16(%r12,%rsi)
	je	.LBB5_6
# BB#4:                                 # %for.inc.i
                                        #   in Loop: Header=BB5_3 Depth=2
	addl	$413, %ebx              # imm = 0x19D
	andl	%edx, %ebx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB5_3
.LBB5_5:                                # %if.end.114
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	8(%rbp), %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %ecx
	callq	clist_add_tile
	testl	%eax, %eax
	jns	.LBB5_1
	jmp	.LBB5_27
.LBB5_6:                                # %if.then
	movq	%r13, 64(%rsp)          # 8-byte Spill
	addq	%rsi, %r12
	movq	%r14, %rax
	subq	10200(%r15), %rax
	sarq	$4, %rax
	movabsq	$-7999030616033345391, %rcx # imm = 0x90FDBC090FDBC091
	imulq	%rax, %rcx
	movq	%rcx, %rsi
	shrq	$3, %rsi
	andl	$536870911, %esi        # imm = 0x1FFFFFFF
	andb	$7, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movzbl	40(%r12,%rsi), %eax
	movzbl	%cl, %ecx
	btl	%ecx, %eax
	jae	.LBB5_15
# BB#7:                                 # %if.then.7
	xorl	%eax, %eax
	movl	%ebx, %ebp
	subl	360(%r14), %ebp
	je	.LBB5_27
# BB#8:                                 # %if.end
	movq	%r14, %rcx
	leaq	360(%rcx), %r14
	leal	8(%rbp), %eax
	leaq	1760(%rcx), %rsi
	movq	%rcx, %r13
	cmpl	$15, %eax
	jbe	.LBB5_9
# BB#11:                                # %if.else.i
	movl	$2, %edx
	movq	%r15, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB5_13
# BB#12:                                # %cond.end.14.thread.i
	movl	%ebx, %ecx
	shrl	$8, %ecx
	addl	$192, %ecx
	movb	%cl, (%rax)
	movb	%bl, 1(%rax)
	jmp	.LBB5_26
.LBB5_15:                               # %if.else
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	1824(%r15), %eax
	movl	%r12d, %r13d
	subl	%eax, %r13d
	movl	%r13d, 48(%rsp)         # 4-byte Spill
	movzwl	8(%r12), %edi
	callq	cmd_size_w
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movzwl	10(%r12), %edi
	callq	cmd_size_w
	movl	%eax, %r14d
	addl	52(%rsp), %r14d         # 4-byte Folded Reload
	movl	%ebx, %edi
	callq	cmd_size_w
	addl	%r14d, %eax
	movq	%rax, %r14
	movl	%r13d, %edi
	callq	cmd_size_w
	movl	%eax, %ecx
	cmpl	$1, 40(%rbp)
	movzbl	32(%r12), %esi
	movq	64(%rsp), %rax          # 8-byte Reload
	je	.LBB5_17
# BB#16:                                # %if.then.32
	movq	64(%rsp), %rax          # 8-byte Reload
	cltd
	idivl	%esi
.LBB5_17:                               # %if.end.36
	leaq	40(%r12), %r13
	movzwl	30(%r12), %edx
	xorl	%ebp, %ebp
	cmpl	$65535, %edx            # imm = 0xFFFF
	movq	56(%rsp), %rdx          # 8-byte Reload
	je	.LBB5_19
# BB#18:                                # %select.mid
	movq	%rdx, %rbp
.LBB5_19:                               # %select.end
	leal	2(%rcx,%r14), %edi
	movl	1868(%r15), %ecx
	leaq	(%rcx,%r13), %rdx
	movzwl	8(%r12), %ecx
	imull	%eax, %ecx
	movzwl	10(%r12), %eax
	movzbl	%sil, %r8d
	imull	%eax, %r8d
	movzwl	14(%r12), %r9d
	movq	1728(%r15), %rsi
	movl	$260, %eax              # imm = 0x104
	cmpl	$0, 17152(%rsi)
	jne	.LBB5_21
# BB#20:                                # %select.mid124
	movl	$256, %eax              # imm = 0x100
.LBB5_21:                               # %select.end123
	leaq	76(%rsp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	80(%rsp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%edi, (%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_bits
	testl	%eax, %eax
	js	.LBB5_27
# BB#22:                                # %if.end.64
	movq	80(%rsp), %rsi
	movb	$4, (%rsi)
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx,4), %eax
	movb	%al, 1(%rsi)
	addq	$2, %rsi
	movzwl	8(%r12), %edi
	callq	cmd_put_w
	movzwl	10(%r12), %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rax, 80(%rsp)
	movl	48(%rsp), %edi          # 4-byte Reload
	movq	%rax, %rsi
	callq	cmd_put_w
	testq	%rbp, %rbp
	je	.LBB5_23
# BB#24:                                # %if.else.92
	movq	32(%rsp), %rcx          # 8-byte Reload
	movzbl	40(%rcx,%r12), %eax
	orl	44(%rsp), %eax          # 4-byte Folded Reload
	movb	%al, 40(%rcx,%r12)
	movzwl	30(%r12), %eax
	incl	%eax
	jmp	.LBB5_25
.LBB5_9:                                # %if.then.i.40
	movl	$1, %edx
	movq	%r15, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB5_26
# BB#10:                                # %cond.end.thread.i
	addl	$184, %ebp
	movb	%bpl, (%rax)
	jmp	.LBB5_26
.LBB5_23:                               # %if.then.83
	movl	1868(%r15), %edx
	movl	$255, %esi
	movq	%r13, %rdi
	callq	memset
	movzwl	10144(%r15), %eax
.LBB5_25:                               # %cleanup
	movq	56(%rsp), %r13          # 8-byte Reload
	movw	%ax, 30(%r12)
	leaq	360(%r13), %r14
.LBB5_26:                               # %if.end.106
	movl	%ebx, (%r14)
	movq	16(%r12), %rax
	movq	%rax, 368(%r13)
	xorl	%eax, %eax
.LBB5_27:                               # %cleanup.121
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_13:                               # %cond.end.14.i
	cmpl	$0, 10192(%r15)
	js	.LBB5_26
# BB#14:                                # %if.end.19.i
	movb	%bl, 1(%rax)
	jmp	.LBB5_26
.Lfunc_end5:
	.size	clist_change_bits, .Lfunc_end5-clist_change_bits
	.cfi_endproc

	.align	16, 0x90
	.type	clist_delete_tile,@function
clist_delete_tile:                      # @clist_delete_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 80
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	1872(%r15), %r12
	movl	1864(%r15), %r13d
	movzwl	28(%rsi), %ebx
	leaq	1840(%r15), %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leaq	1816(%r15), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	callq	gx_bits_cache_free
	movq	$0, (%r12,%rbx,8)
	leal	413(%rbx), %ebp
	andl	%r13d, %ebp
	movq	(%r12,%rbp,8), %r8
	testq	%r8, %r8
	je	.LBB6_8
# BB#1:                                 # %while.body.lr.ph
	leaq	(%r12,%rbp,8), %r14
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movq	1776(%r15), %rsi
	movq	16(%rsi,%r8), %rcx
	movq	1872(%r15), %rdx
	movl	1864(%r15), %edi
	movl	%edi, %ebx
	andl	%ecx, %ebx
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_5:                                # %for.inc.i
                                        #   in Loop: Header=BB6_3 Depth=2
	addl	$413, %ebx              # imm = 0x19D
	andl	%edi, %ebx
.LBB6_3:                                # %while.body
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB6_6
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpq	%rcx, 16(%rsi,%rax)
	jne	.LBB6_5
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_6:                                # %do.end.9
                                        #   in Loop: Header=BB6_2 Depth=1
	addq	%r8, %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	gx_bits_cache_free
	movq	$0, (%r14)
.LBB6_7:                                # %while.cond.backedge
                                        #   in Loop: Header=BB6_2 Depth=1
	addl	$413, %ebp              # imm = 0x19D
	andl	%r13d, %ebp
	leaq	(%r12,%rbp,8), %r14
	movq	(%r12,%rbp,8), %r8
	testq	%r8, %r8
	jne	.LBB6_2
.LBB6_8:                                # %while.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	clist_delete_tile, .Lfunc_end6-clist_delete_tile
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
