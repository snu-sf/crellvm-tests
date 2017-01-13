	.text
	.file	"gdevmr8n.bc"
	.globl	mem_gray8_rgb24_strip_copy_rop
	.align	16, 0x90
	.type	mem_gray8_rgb24_strip_copy_rop,@function
mem_gray8_rgb24_strip_copy_rop:         # @mem_gray8_rgb24_strip_copy_rop
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
	subq	$200, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 256
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
	movq	%r9, %r10
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%r8, %r15
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	320(%rsp), %r12d
	movzbl	%r12b, %ebp
	movzwl	108(%rdi), %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	$1, %r13d
	shlq	%cl, %r13
	decq	%r13
	movl	%r12d, %ecx
	andl	$256, %ecx              # imm = 0x100
	movq	$-1, %r9
	cmovneq	%r13, %r9
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movl	%r12d, %ebx
	andl	$512, %ebx              # imm = 0x200
	movq	$-1, %rax
	cmovneq	%r13, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leal	(,%rbp,4), %eax
	xorl	%r12d, %eax
	testb	$-52, %al
	movl	312(%rsp), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	movl	304(%rsp), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	296(%rsp), %r8d
	movl	288(%rsp), %edx
	movl	280(%rsp), %r11d
	movl	272(%rsp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	264(%rsp), %r14
	movq	256(%rsp), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	1736(%rdi), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	je	.LBB0_1
# BB#2:                                 # %if.else
	testq	%r10, %r10
	je	.LBB0_3
# BB#4:                                 # %land.lhs.true
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%r15, 176(%rsp)         # 8-byte Spill
	movq	(%r10), %r15
	cmpq	8(%r10), %r15
	jne	.LBB0_5
# BB#6:                                 # %if.then.17
	movl	%r11d, 64(%rsp)         # 4-byte Spill
	movl	%r8d, 120(%rsp)         # 4-byte Spill
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	gx_device_black
	cmpq	%rax, %r15
	jne	.LBB0_8
# BB#7:                                 # %if.then.21
	movq	%r15, 104(%rsp)         # 8-byte Spill
	andl	$51, %r12d
	leal	(,%r12,4), %ebp
	orl	%r12d, %ebp
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdi
	jmp	.LBB0_11
.LBB0_1:
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%r15, 176(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB0_12
.LBB0_3:
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%r15, 176(%rsp)         # 8-byte Spill
	movq	$-1, 104(%rsp)          # 8-byte Folded Spill
	jmp	.LBB0_12
.LBB0_5:
	movq	$-1, 104(%rsp)          # 8-byte Folded Spill
	jmp	.LBB0_12
.LBB0_8:                                # %if.else.25
	movq	%rbx, %rdi
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	callq	gx_device_white
	cmpq	%rax, %r15
	jne	.LBB0_10
# BB#9:                                 # %if.then.29
	movl	%r12d, %eax
	shrl	$2, %eax
	andl	$51, %eax
	andl	$204, %r12d
	orl	%eax, %r12d
	movl	%r12d, %ebp
.LBB0_10:                               # %if.end.36
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
.LBB0_11:                               # %if.end.36
	movl	120(%rsp), %r8d         # 4-byte Reload
	movl	64(%rsp), %r11d         # 4-byte Reload
.LBB0_12:                               # %if.end.36
	shrl	$3, 116(%rsp)           # 4-byte Folded Spill
	movq	%rbp, %r15
	movl	%r15d, %ebx
	shll	$4, %ebx
	movl	%ebx, %eax
	xorl	%r15d, %eax
	testb	$-16, %al
	je	.LBB0_13
# BB#14:                                # %if.else.43
	testq	%r14, %r14
	je	.LBB0_15
# BB#16:                                # %land.lhs.true.46
	movq	(%r14), %rbp
	cmpq	8(%r14), %rbp
	jne	.LBB0_17
# BB#18:                                # %if.then.51
	movl	%r11d, 64(%rsp)         # 4-byte Spill
	movl	%r8d, 120(%rsp)         # 4-byte Spill
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	callq	gx_device_black
	cmpq	%rax, %rbp
	jne	.LBB0_20
# BB#19:                                # %if.then.56
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	andl	$240, %ebx
	andl	$15, %r15d
	orl	%ebx, %r15d
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%r12, %rdi
	jmp	.LBB0_23
.LBB0_13:
	xorl	%eax, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	jmp	.LBB0_24
.LBB0_15:
	movq	$-1, 152(%rsp)          # 8-byte Folded Spill
	jmp	.LBB0_24
.LBB0_17:
	movq	$-1, 152(%rsp)          # 8-byte Folded Spill
	jmp	.LBB0_24
.LBB0_20:                               # %if.else.61
	movq	%r12, %rdi
	movq	%r12, %rbx
	callq	gx_device_white
	cmpq	%rax, %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	jne	.LBB0_22
# BB#21:                                # %if.then.65
	movl	%r15d, %eax
	shrl	$4, %eax
	andl	$240, %r15d
	orl	%eax, %r15d
.LBB0_22:                               # %if.end.73
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdi
.LBB0_23:                               # %if.end.73
	movl	120(%rsp), %r8d         # 4-byte Reload
	movl	64(%rsp), %r11d         # 4-byte Reload
.LBB0_24:                               # %if.end.73
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_25
# BB#26:                                # %land.lhs.true.76
	cmpl	$1, 100(%rdi)
	jg	.LBB0_30
# BB#27:                                # %lor.lhs.false
	movzbl	110(%rdi), %eax
	cmpl	$255, %eax
	je	.LBB0_30
# BB#28:                                # %lor.lhs.false.84
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movl	%r8d, 120(%rsp)         # 4-byte Spill
	movl	%r11d, %r14d
	callq	gx_device_black
	movl	%r14d, %r11d
	movl	120(%rsp), %r8d         # 4-byte Reload
	movq	%rbx, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	184(%rsp), %r9          # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB0_30
# BB#29:                                # %lor.lhs.false.88
	movq	%r14, %rbp
	movq	%r10, %rbx
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	%r11d, %r14d
	callq	gx_device_white
	movl	%r14d, %r11d
	movl	120(%rsp), %r8d         # 4-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %r10
	movq	%rbp, %r14
	movq	184(%rsp), %r9          # 8-byte Reload
	cmpq	%r13, %rax
	jne	.LBB0_30
.LBB0_25:
	movq	%r15, %rcx
	movl	36(%rsp), %r13d         # 4-byte Reload
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
.LBB0_44:                               # %if.end.117
	movl	%r11d, %eax
	orl	%ebx, %eax
	cmpq	$-1, 104(%rsp)          # 8-byte Folded Reload
	je	.LBB0_45
# BB#49:                                # %do.body.165
	testl	%eax, %eax
	jns	.LBB0_46
# BB#50:                                # %if.then.169
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	movq	168(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	cmovsl	%ecx, %ebx
	movl	%r11d, %edx
	sarl	$31, %edx
	andl	%r11d, %edx
	addl	%edx, %r8d
	testl	%r11d, %r11d
	cmovsl	%ecx, %r11d
	movl	%eax, %edx
	jmp	.LBB0_51
.LBB0_30:                               # %if.then.92
	cmpl	$203, %r15d
	jle	.LBB0_31
# BB#34:                                # %if.then.92
	cmpl	$204, %r15d
	je	.LBB0_41
# BB#35:                                # %if.then.92
	cmpl	$240, %r15d
	jne	.LBB0_36
# BB#42:                                # %sw.bb.111
	movl	$240, %ecx
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	jmp	.LBB0_43
.LBB0_45:                               # %do.body.121
	testl	%eax, %eax
	js	.LBB0_47
.LBB0_46:
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movl	%r11d, %ebp
	movq	%rsi, %r9
	movq	168(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB0_52
.LBB0_31:                               # %if.then.92
	testl	%r15d, %r15d
	movl	36(%rsp), %r13d         # 4-byte Reload
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	jne	.LBB0_32
# BB#174:                               # %sw.bb
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%r10, %r14
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	%r8d, %ebp
	movl	%r11d, %r13d
	callq	gx_device_black
	jmp	.LBB0_38
.LBB0_47:                               # %if.then.125
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	movq	168(%rsp), %rdx         # 8-byte Reload
	leal	(%rdx,%rax), %edx
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebp, %ebx
	movq	16(%rsp), %rcx          # 8-byte Reload
	subl	%eax, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	testl	%r11d, %r11d
	js	.LBB0_48
.LBB0_51:                               # %do.body.183
	movl	%r11d, %ebp
	movq	%rsi, %r9
.LBB0_52:                               # %do.body.183
	movl	832(%rdi), %eax
	movl	836(%rdi), %ecx
	subl	%ebx, %eax
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	subl	%ebp, %ecx
	cmpl	%ecx, %r8d
	cmovlel	%r8d, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB0_173
# BB#53:                                # %do.body.183
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_173
# BB#54:                                # %if.end.216
	movslq	%ebp, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%ebx, %ecx
	imull	116(%rsp), %ecx         # 4-byte Folded Reload
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rdx         # 8-byte Reload
	cmpq	$-1, %rdx
	je	.LBB0_94
# BB#55:                                # %if.then.223
	cmpq	$-1, 104(%rsp)          # 8-byte Folded Reload
	je	.LBB0_56
# BB#65:                                # %for.cond.preheader
	movq	%rdx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB0_173
# BB#66:                                # %for.body.lr.ph
	movq	104(%rsp), %rbp         # 8-byte Reload
	movzbl	%bpl, %edx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rdi         # 8-byte Reload
	cmpq	%rdi, %rdx
	sete	%r8b
	movzbl	%sil, %ebx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rbx
	sete	%r15b
	cmpq	%rdi, %rbp
	sete	%bl
	cmpq	%rdx, %rsi
	sete	%r12b
	orb	%bl, %r12b
	orb	%r8b, %r15b
	leaq	2(%rcx,%rax), %r14
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_67:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_73 Depth 2
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_68
# BB#72:                                # %for.cond.232.preheader
                                        #   in Loop: Header=BB0_67 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	192(%rsp), %ebp         # 4-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
	jle	.LBB0_76
	.align	16, 0x90
.LBB0_73:                               # %do.end.238
                                        #   Parent Loop BB0_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r15b, %r15b
	jne	.LBB0_75
# BB#74:                                # %if.end.249
                                        #   in Loop: Header=BB0_73 Depth=2
	movzbl	(%rbx), %edi
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rax         # 8-byte Reload
	callq	*rop_proc_table(,%rax,8)
	movb	%al, (%rbx)
.LBB0_75:                               # %for.inc
                                        #   in Loop: Header=BB0_73 Depth=2
	incq	%rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_73
	jmp	.LBB0_76
	.align	16, 0x90
.LBB0_68:                               # %for.cond.261.preheader
                                        #   in Loop: Header=BB0_67 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	192(%rsp), %r13d        # 4-byte Reload
	movq	%r14, %rbp
	jle	.LBB0_76
	.align	16, 0x90
.LBB0_69:                               # %do.end.267
                                        #   Parent Loop BB0_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%r12b, %r12b
	jne	.LBB0_71
# BB#70:                                # %if.end.274
                                        #   in Loop: Header=BB0_69 Depth=2
	movzbl	-2(%rbp), %eax
	shlq	$16, %rax
	movzbl	-1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%rbp), %edi
	orq	%rcx, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rax         # 8-byte Reload
	callq	*rop_proc_table(,%rax,8)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, -2(%rbp)
	movb	%ah, -1(%rbp)  # NOREX
	movb	%al, (%rbp)
.LBB0_71:                               # %for.inc.297
                                        #   in Loop: Header=BB0_69 Depth=2
	addq	$3, %rbp
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB0_69
.LBB0_76:                               # %if.end.301
                                        #   in Loop: Header=BB0_67 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	addq	%rax, %r14
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jg	.LBB0_67
	jmp	.LBB0_173
.LBB0_94:                               # %if.else.548
	addl	160(%rsp), %ebp         # 4-byte Folded Reload
	cmpq	$-1, 104(%rsp)          # 8-byte Folded Reload
	movl	8(%r12), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	je	.LBB0_95
# BB#104:                               # %for.cond.554.preheader
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_173
# BB#105:                               # %for.body.558.lr.ph
	movq	104(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %r10d
	leaq	8(%r14), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_106:                              # %for.body.558
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_110 Depth 2
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_129 Depth 3
	movq	(%r12), %rcx
	movl	%ebp, %eax
	cltd
	idivl	16(%r12)
	imull	12(%rsp), %edx          # 4-byte Folded Reload
	movq	%rdx, %rdi
	cmpw	$0, 38(%r12)
	movl	%r13d, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	je	.LBB0_108
# BB#107:                               # %cond.false.568
                                        #   in Loop: Header=BB0_106 Depth=1
	movzwl	34(%r12), %esi
	movl	%ebp, %eax
	cltd
	idivl	%esi
	movzwl	36(%r12), %edx
	imull	%eax, %edx
	addl	%r13d, %edx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
.LBB0_108:                              # %cond.end.573
                                        #   in Loop: Header=BB0_106 Depth=1
	movl	%ebp, 32(%rsp)          # 4-byte Spill
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	104(%rsp), %r9          # 8-byte Reload
	movq	184(%rsp), %r11         # 8-byte Reload
	jle	.LBB0_141
# BB#109:                               # %for.body.578.preheader
                                        #   in Loop: Header=BB0_106 Depth=1
	leaq	2(%rcx,%rdi), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	addq	%rcx, %rdi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %edi
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	.align	16, 0x90
.LBB0_110:                              # %for.body.578
                                        #   Parent Loop BB0_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_136 Depth 3
                                        #       Child Loop BB0_129 Depth 3
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %eax
	movzwl	32(%r12), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movl	12(%r12), %eax
	movl	%eax, %ecx
	subl	%ebp, %ecx
	cmpl	%ecx, %edi
	cmovlel	%edi, %ecx
	testq	%r14, %r14
	je	.LBB0_126
# BB#111:                               # %if.then.596
                                        #   in Loop: Header=BB0_110 Depth=2
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_112
# BB#114:                               # %for.cond.600.preheader
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	jle	.LBB0_115
# BB#116:                               # %for.body.603.preheader
                                        #   in Loop: Header=BB0_110 Depth=2
	movl	%ebp, %ecx
	decl	%ecx
	subl	%eax, %ecx
	movl	%edi, 144(%rsp)         # 4-byte Spill
	movl	%edi, %ebx
	notl	%ebx
	cmpl	%ebx, %ecx
	cmovgel	%ecx, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB0_117:                              # %for.body.603
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r11, %r10
	je	.LBB0_120
# BB#118:                               # %lor.lhs.false.630
                                        #   in Loop: Header=BB0_117 Depth=3
	movl	%ebp, %eax
	sarl	$3, %eax
	cltq
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	movq	160(%rsp), %rax         # 8-byte Reload
	cmoveq	%r14, %rax
	movzbl	(%rax), %edx
	cmpq	192(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB0_120
# BB#119:                               # %if.end.635
                                        #   in Loop: Header=BB0_117 Depth=3
	movzbl	(%rsi), %edi
	movq	%rsi, %r13
	movq	%r10, %rsi
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r9, %r12
	movq	%r10, %r15
	callq	*rop_proc_table(,%rax,8)
	movq	%r15, %r10
	movq	%r13, %rsi
	movq	%r12, %r9
	movq	184(%rsp), %r11         # 8-byte Reload
	movb	%al, (%rsi)
.LBB0_120:                              # %cleanup.644
                                        #   in Loop: Header=BB0_117 Depth=3
	incq	%rsi
	incl	%ebp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_117
	jmp	.LBB0_140
	.align	16, 0x90
.LBB0_126:                              # %if.else.717
                                        #   in Loop: Header=BB0_110 Depth=2
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_133
# BB#127:                               # %if.then.720
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB0_134
# BB#128:                               # %for.body.726.lr.ph
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	168(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %r15
	decl	%ebp
	subl	%eax, %ebp
	movl	%edi, 144(%rsp)         # 4-byte Spill
	movl	%edi, %ebx
	notl	%ebx
	cmpl	%ebx, %ebp
	cmovgel	%ebp, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB0_129:                              # %for.body.726
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r11, %r10
	je	.LBB0_132
# BB#130:                               # %lor.lhs.false.735
                                        #   in Loop: Header=BB0_129 Depth=3
	movzbl	(%r15), %edx
	cmpq	192(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB0_132
# BB#131:                               # %if.end.740
                                        #   in Loop: Header=BB0_129 Depth=3
	movzbl	(%rsi), %edi
	movq	%rsi, %r13
	movq	%r10, %rsi
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r14, %rbp
	movq	%r9, %r12
	movq	%r10, %r14
	callq	*rop_proc_table(,%rax,8)
	movq	%r14, %r10
	movq	%r13, %rsi
	movq	%r12, %r9
	movq	%rbp, %r14
	movq	184(%rsp), %r11         # 8-byte Reload
	movb	%al, (%rsi)
.LBB0_132:                              # %cleanup.749
                                        #   in Loop: Header=BB0_129 Depth=3
	incq	%rsi
	incq	%r15
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_129
	jmp	.LBB0_140
	.align	16, 0x90
.LBB0_112:                              # %for.cond.653.preheader
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	jle	.LBB0_113
# BB#121:                               # %for.body.656.preheader
                                        #   in Loop: Header=BB0_110 Depth=2
	movl	%ebp, %ecx
	decl	%ecx
	subl	%eax, %ecx
	movl	%edi, 144(%rsp)         # 4-byte Spill
	movl	%edi, %ebx
	notl	%ebx
	cmpl	%ebx, %ecx
	cmovgel	%ecx, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB0_122:                              # %for.body.656
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r11, %r9
	je	.LBB0_125
# BB#123:                               # %lor.lhs.false.678
                                        #   in Loop: Header=BB0_122 Depth=3
	movl	%ebp, %eax
	sarl	$3, %eax
	cltq
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	movq	160(%rsp), %rax         # 8-byte Reload
	cmoveq	%r14, %rax
	movq	(%rax), %rdx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rdx
	cmpq	192(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB0_125
# BB#124:                               # %if.end.683
                                        #   in Loop: Header=BB0_122 Depth=3
	movzbl	(%rsi), %eax
	shlq	$16, %rax
	movzbl	1(%rsi), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rsi), %edi
	orq	%rcx, %rdi
	movq	%rsi, %r13
	movq	%r9, %rsi
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r9, %r12
	movq	%r10, %r15
	callq	*rop_proc_table(,%rax,8)
	movq	%r15, %r10
	movq	%r13, %rsi
	movq	%r12, %r9
	movq	184(%rsp), %r11         # 8-byte Reload
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rsi)
	movb	%ah, 1(%rsi)  # NOREX
	movb	%al, 2(%rsi)
.LBB0_125:                              # %cleanup.708
                                        #   in Loop: Header=BB0_122 Depth=3
	addq	$3, %rsi
	incl	%ebp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_122
	jmp	.LBB0_140
.LBB0_133:                              # %if.else.757
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB0_134
# BB#135:                               # %for.body.764.lr.ph
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leal	(%rbp,%rbp,2), %ecx
	movslq	%ecx, %rcx
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r15
	decl	%ebp
	subl	%eax, %ebp
	movl	%edi, 144(%rsp)         # 4-byte Spill
	movl	%edi, %ebx
	notl	%ebx
	cmpl	%ebx, %ebp
	cmovgel	%ebp, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB0_136:                              # %for.body.764
                                        #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r11, %r9
	je	.LBB0_139
# BB#137:                               # %lor.lhs.false.782
                                        #   in Loop: Header=BB0_136 Depth=3
	movzbl	-2(%r15), %eax
	shlq	$16, %rax
	movzbl	-1(%r15), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%r15), %edx
	orq	%rcx, %rdx
	cmpq	192(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB0_139
# BB#138:                               # %if.end.787
                                        #   in Loop: Header=BB0_136 Depth=3
	movzbl	(%rsi), %eax
	shlq	$16, %rax
	movzbl	1(%rsi), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rsi), %edi
	orq	%rcx, %rdi
	movq	%rsi, %r13
	movq	%r9, %rsi
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r14, %rbp
	movq	%r9, %r12
	movq	%r10, %r14
	callq	*rop_proc_table(,%rax,8)
	movq	%r14, %r10
	movq	%r13, %rsi
	movq	%r12, %r9
	movq	%rbp, %r14
	movq	184(%rsp), %r11         # 8-byte Reload
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rsi)
	movb	%ah, 1(%rsi)  # NOREX
	movb	%al, 2(%rsi)
.LBB0_139:                              # %cleanup.812
                                        #   in Loop: Header=BB0_136 Depth=3
	addq	$3, %rsi
	addq	$3, %r15
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_136
	jmp	.LBB0_140
.LBB0_134:                              #   in Loop: Header=BB0_110 Depth=2
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%edi, 144(%rsp)         # 4-byte Spill
	jmp	.LBB0_140
.LBB0_115:                              #   in Loop: Header=BB0_110 Depth=2
	movl	%edi, 144(%rsp)         # 4-byte Spill
	jmp	.LBB0_140
.LBB0_113:                              #   in Loop: Header=BB0_110 Depth=2
	movl	%edi, 144(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_140:                              # %if.end.821
                                        #   in Loop: Header=BB0_110 Depth=2
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %ebx
	movl	144(%rsp), %edi         # 4-byte Reload
	subl	%eax, %edi
	movq	136(%rsp), %r12         # 8-byte Reload
	jg	.LBB0_110
.LBB0_141:                              # %for.end.825
                                        #   in Loop: Header=BB0_106 Depth=1
	movq	%r11, 184(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	32(%rsp), %ebp          # 4-byte Reload
	incl	%ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	36(%rsp), %r13d         # 4-byte Reload
	jg	.LBB0_106
	jmp	.LBB0_173
.LBB0_41:                               # %sw.bb.106
	movl	$204, %ecx
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
.LBB0_43:                               # %sw.bb.111
	movl	36(%rsp), %r13d         # 4-byte Reload
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	jne	.LBB0_33
	jmp	.LBB0_44
.LBB0_36:                               # %if.then.92
	cmpl	$255, %r15d
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	jne	.LBB0_33
# BB#37:                                # %sw.bb.94
	movq	%r9, 184(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%r10, %r14
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	%r8d, %ebp
	movl	%r11d, %r13d
	callq	gx_device_white
.LBB0_38:                               # %bw
	movl	%r13d, %r11d
	movl	%ebp, %r8d
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %r10
	movl	36(%rsp), %r13d         # 4-byte Reload
	movq	%r15, %r14
	movq	184(%rsp), %r9          # 8-byte Reload
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movq	56(%rsp), %rdi          # 8-byte Reload
	je	.LBB0_44
# BB#39:                                # %bw
	cmpq	$255, %rax
	jne	.LBB0_33
# BB#40:                                # %if.then.102
	movl	$255, %ecx
	jmp	.LBB0_44
.LBB0_32:                               # %if.then.92
	cmpl	$170, %r15d
	movl	$170, %ecx
	je	.LBB0_44
.LBB0_33:                               # %cleanup
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	movq	%r10, %r9
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mem_default_strip_copy_rop # TAILCALL
.LBB0_56:                               # %for.cond.307.preheader
	movq	%rdx, %r8
	movq	56(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB0_173
# BB#57:                                # %for.body.311.lr.ph
	movzbl	%r8b, %edx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movl	128(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	leaq	8(%r10), %rdx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	leaq	2(%rcx,%rax), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leal	(%rcx,%rcx,2), %eax
	cltq
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_58:                               # %for.body.311
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_84 Depth 2
	testq	%r10, %r10
	je	.LBB0_82
# BB#59:                                # %if.then.315
                                        #   in Loop: Header=BB0_58 Depth=1
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_60
# BB#77:                                # %for.cond.319.preheader
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	92(%rsp), %ebx          # 4-byte Reload
	movl	$0, %ebp
	movq	184(%rsp), %r14         # 8-byte Reload
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_78:                               # %for.body.322
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rcx
	movl	%ecx, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r9,%rax), %eax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	movq	168(%rsp), %rax         # 8-byte Reload
	cmoveq	%r10, %rax
	movzbl	(%rax), %esi
	cmpq	%r14, %rsi
	je	.LBB0_81
# BB#79:                                # %for.body.322
                                        #   in Loop: Header=BB0_78 Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	cmpq	192(%rsp), %rax         # 8-byte Folded Reload
	je	.LBB0_81
# BB#80:                                # %if.end.354
                                        #   in Loop: Header=BB0_78 Depth=2
	movq	64(%rsp), %r13          # 8-byte Reload
	movzbl	(%r13,%rbp), %edi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r10, %r12
	movq	%r8, %r14
	movq	%r9, %r15
	callq	*rop_proc_table(,%rax,8)
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%r12, %r10
	movq	184(%rsp), %r14         # 8-byte Reload
	movb	%al, (%r13,%rbp)
.LBB0_81:                               # %cleanup.363
                                        #   in Loop: Header=BB0_78 Depth=2
	incq	%rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_78
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_82:                               # %if.else.435
                                        #   in Loop: Header=BB0_58 Depth=1
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_88
# BB#83:                                # %if.then.438
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	92(%rsp), %ebx          # 4-byte Reload
	movl	$0, %ebp
	movq	184(%rsp), %r14         # 8-byte Reload
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_84:                               # %for.body.444
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rax
	movzbl	(%r9,%rax), %esi
	cmpq	%r14, %rsi
	je	.LBB0_87
# BB#85:                                # %for.body.444
                                        #   in Loop: Header=BB0_84 Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	cmpq	192(%rsp), %rax         # 8-byte Folded Reload
	je	.LBB0_87
# BB#86:                                # %if.end.458
                                        #   in Loop: Header=BB0_84 Depth=2
	movq	64(%rsp), %r13          # 8-byte Reload
	movzbl	(%r13,%rbp), %edi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r10, %r12
	movq	%r8, %r14
	movq	%r9, %r15
	callq	*rop_proc_table(,%rax,8)
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%r12, %r10
	movq	184(%rsp), %r14         # 8-byte Reload
	movb	%al, (%r13,%rbp)
.LBB0_87:                               # %cleanup.467
                                        #   in Loop: Header=BB0_84 Depth=2
	incq	%rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_84
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_60:                               # %for.cond.371.preheader
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	92(%rsp), %ebx          # 4-byte Reload
	movq	136(%rsp), %rbp         # 8-byte Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	movq	184(%rsp), %r14         # 8-byte Reload
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_61:                               # %for.body.374
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r9,%rax), %eax
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	movq	168(%rsp), %rax         # 8-byte Reload
	cmoveq	%r10, %rax
	cmpq	192(%rsp), %r8          # 8-byte Folded Reload
	je	.LBB0_64
# BB#62:                                # %for.body.374
                                        #   in Loop: Header=BB0_61 Depth=2
	movq	(%rax), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rsi
	cmpq	%r14, %rsi
	je	.LBB0_64
# BB#63:                                # %if.end.401
                                        #   in Loop: Header=BB0_61 Depth=2
	movzbl	-2(%rbp), %eax
	shlq	$16, %rax
	movzbl	-1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%rbp), %edi
	orq	%rcx, %rdi
	movq	%r8, %rdx
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r10, %r12
	movq	%r8, %r14
	movq	%r9, %r15
	callq	*rop_proc_table(,%rax,8)
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%r12, %r10
	movq	184(%rsp), %r14         # 8-byte Reload
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, -2(%rbp)
	movb	%ah, -1(%rbp)  # NOREX
	movb	%al, (%rbp)
.LBB0_64:                               # %cleanup.426
                                        #   in Loop: Header=BB0_61 Depth=2
	incl	%r13d
	addq	$3, %rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_61
	jmp	.LBB0_93
.LBB0_88:                               # %if.else.475
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	92(%rsp), %ebx          # 4-byte Reload
	movl	$0, %ebp
	movq	184(%rsp), %r14         # 8-byte Reload
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_89:                               # %for.body.483
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rcx
	movzbl	(%r9,%rcx), %eax
	movzbl	1(%r9,%rcx), %esi
	movzbl	2(%r9,%rcx), %ecx
	cmpq	192(%rsp), %r8          # 8-byte Folded Reload
	je	.LBB0_92
# BB#90:                                # %for.body.483
                                        #   in Loop: Header=BB0_89 Depth=2
	shlq	$16, %rax
	shlq	$8, %rsi
	orq	%rax, %rsi
	orq	%rcx, %rsi
	cmpq	%r14, %rsi
	je	.LBB0_92
# BB#91:                                # %if.end.506
                                        #   in Loop: Header=BB0_89 Depth=2
	movq	136(%rsp), %rdx         # 8-byte Reload
	movzbl	-2(%rdx,%rbp), %eax
	shlq	$16, %rax
	movzbl	-1(%rdx,%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%rdx,%rbp), %edi
	orq	%rcx, %rdi
	movq	%r8, %rdx
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r10, %r12
	movq	%r8, %r13
	movq	%r9, %r15
	callq	*rop_proc_table(,%rax,8)
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%r12, %r10
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	136(%rsp), %rdx         # 8-byte Reload
	movb	%cl, -2(%rdx,%rbp)
	movb	%ah, -1(%rdx,%rbp)  # NOREX
	movb	%al, (%rdx,%rbp)
.LBB0_92:                               # %cleanup.531
                                        #   in Loop: Header=BB0_89 Depth=2
	addq	$3, %rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB0_89
	.align	16, 0x90
.LBB0_93:                               # %if.end.540
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	%r14, 184(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	addq	104(%rsp), %r9          # 8-byte Folded Reload
	addq	%rax, 136(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jg	.LBB0_58
	jmp	.LBB0_173
.LBB0_95:                               # %for.cond.837.preheader
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_173
# BB#96:                                # %for.body.841.lr.ph
	movl	128(%rsp), %eax         # 4-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	8(%r10), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_97:                               # %for.body.841
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_156 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	movq	%r14, %r11
	movq	%r9, 144(%rsp)          # 8-byte Spill
	movq	(%r12), %r8
	movl	%ebp, %eax
	cltd
	idivl	16(%r12)
	movl	%edx, %ecx
	cmpw	$0, 38(%r12)
	movl	%r13d, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	je	.LBB0_99
# BB#98:                                # %cond.false.861
                                        #   in Loop: Header=BB0_97 Depth=1
	movzwl	34(%r12), %esi
	movl	%ebp, %eax
	cltd
	idivl	%esi
	movzwl	36(%r12), %edx
	imull	%eax, %edx
	addl	%r13d, %edx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
.LBB0_99:                               # %cond.end.869
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, 32(%rsp)          # 4-byte Spill
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_172
# BB#100:                               # %for.body.874.preheader
                                        #   in Loop: Header=BB0_97 Depth=1
	imull	12(%rsp), %ecx          # 4-byte Folded Reload
	addq	%rcx, %r8
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	movq	16(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_101:                              # %for.body.874
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_156 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	(%rbx,%rax), %eax
	movq	136(%rsp), %rsi         # 8-byte Reload
	movzwl	32(%rsi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movl	12(%rsi), %eax
	movl	%eax, %edi
	subl	%r13d, %edi
	cmpl	%edi, %ebp
	cmovlel	%ebp, %edi
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_153
# BB#102:                               # %if.then.896
                                        #   in Loop: Header=BB0_101 Depth=2
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	testl	%edi, %edi
	jle	.LBB0_103
# BB#142:                               # %for.body.905.lr.ph
                                        #   in Loop: Header=BB0_101 Depth=2
	movslq	%r12d, %r12
	movslq	%r13d, %rbx
	decl	%r13d
	subl	%eax, %r13d
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	notl	%ebp
	cmpl	%ebp, %r13d
	cmovgel	%r13d, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_143:                              # %for.body.905
                                        #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r10, %r10
	je	.LBB0_145
# BB#144:                               # %cond.true.908
                                        #   in Loop: Header=BB0_143 Depth=3
	movl	%r12d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r9,%rax), %eax
	movb	%r12b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	movq	152(%rsp), %rax         # 8-byte Reload
	cmoveq	%r10, %rax
	movb	(%rax), %al
	jmp	.LBB0_146
	.align	16, 0x90
.LBB0_145:                              # %cond.false.927
                                        #   in Loop: Header=BB0_143 Depth=3
	movb	(%r9,%r12), %al
.LBB0_146:                              # %cond.end.929
                                        #   in Loop: Header=BB0_143 Depth=3
	testq	%r11, %r11
	je	.LBB0_148
# BB#147:                               # %cond.true.934
                                        #   in Loop: Header=BB0_143 Depth=3
	movl	%ebx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r8), %rcx
	movzbl	(%rbx,%rcx), %edx
	movb	%bl, %cl
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	testl	%esi, %edx
	movq	160(%rsp), %rcx         # 8-byte Reload
	cmoveq	%r11, %rcx
	movb	(%rcx), %cl
	jmp	.LBB0_149
	.align	16, 0x90
.LBB0_148:                              # %cond.false.953
                                        #   in Loop: Header=BB0_143 Depth=3
	movb	(%r8,%rbx), %cl
.LBB0_149:                              # %cond.end.955
                                        #   in Loop: Header=BB0_143 Depth=3
	movzbl	%al, %esi
	cmpq	184(%rsp), %rsi         # 8-byte Folded Reload
	je	.LBB0_152
# BB#150:                               # %lor.lhs.false.964
                                        #   in Loop: Header=BB0_143 Depth=3
	movzbl	%cl, %edx
	cmpq	192(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB0_152
# BB#151:                               # %if.end.969
                                        #   in Loop: Header=BB0_143 Depth=3
	movzbl	(%r14), %edi
	movq	%r11, %r13
	movq	%r10, %r15
	movq	176(%rsp), %rax         # 8-byte Reload
	callq	*rop_proc_table(,%rax,8)
	movq	144(%rsp), %r9          # 8-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	%r15, %r10
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %r11
	movb	%al, (%r14)
.LBB0_152:                              # %cleanup.977
                                        #   in Loop: Header=BB0_143 Depth=3
	incq	%r14
	incq	%r12
	incq	%rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_143
	jmp	.LBB0_171
	.align	16, 0x90
.LBB0_153:                              # %if.else.989
                                        #   in Loop: Header=BB0_101 Depth=2
	testl	%edi, %edi
	jle	.LBB0_154
# BB#155:                               # %for.body.1000.lr.ph
                                        #   in Loop: Header=BB0_101 Depth=2
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	leal	(%r12,%r12,2), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r9), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leal	(%r13,%r13,2), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r8), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	%r13d, %ecx
	decl	%ecx
	subl	%eax, %ecx
	movl	%ebp, %r15d
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	notl	%r15d
	cmpl	%r15d, %ecx
	cmovgel	%ecx, %r15d
	negl	%r15d
	xorl	%eax, %eax
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	%r11, %r8
	movq	184(%rsp), %r11         # 8-byte Reload
	.align	16, 0x90
.LBB0_156:                              # %for.body.1000
                                        #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rbx
	testq	%r10, %r10
	je	.LBB0_160
# BB#157:                               # %cond.true.1003
                                        #   in Loop: Header=BB0_156 Depth=3
	movl	%r12d, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%r9,%rax), %eax
	movb	%r12b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	je	.LBB0_159
# BB#158:                               # %cond.true.1012
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	jmp	.LBB0_161
	.align	16, 0x90
.LBB0_160:                              # %cond.false.1018
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	128(%rsp), %rdx         # 8-byte Reload
	movzbl	(%rdx,%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rdx,%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rdx,%rbx), %esi
	orq	%rcx, %rsi
	jmp	.LBB0_161
	.align	16, 0x90
.LBB0_159:                              # %cond.false.1014
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	(%r10), %rsi
.LBB0_161:                              # %cond.end.1029
                                        #   in Loop: Header=BB0_156 Depth=3
	testq	%r8, %r8
	je	.LBB0_165
# BB#162:                               # %cond.true.1034
                                        #   in Loop: Header=BB0_156 Depth=3
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%rbx), %rax
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	je	.LBB0_164
# BB#163:                               # %cond.true.1043
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	jmp	.LBB0_166
	.align	16, 0x90
.LBB0_165:                              # %cond.false.1049
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	168(%rsp), %rdx         # 8-byte Reload
	movzbl	(%rdx,%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rdx,%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rdx,%rbx), %edx
	orq	%rcx, %rdx
	jmp	.LBB0_166
	.align	16, 0x90
.LBB0_164:                              # %cond.false.1045
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	(%r8), %rdx
.LBB0_166:                              # %cond.end.1060
                                        #   in Loop: Header=BB0_156 Depth=3
	andq	%rdi, %rsi
	cmpq	%r11, %rsi
	je	.LBB0_169
# BB#167:                               # %lor.lhs.false.1069
                                        #   in Loop: Header=BB0_156 Depth=3
	andq	%rdi, %rdx
	cmpq	192(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB0_169
# BB#168:                               # %if.end.1074
                                        #   in Loop: Header=BB0_156 Depth=3
	movq	%r14, %rbp
	movzbl	(%rbp,%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rbp,%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbp,%rbx), %edi
	orq	%rcx, %rdi
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%r8, %r14
	callq	*rop_proc_table(,%rax,8)
	movq	144(%rsp), %r9          # 8-byte Reload
	movq	96(%rsp), %r10          # 8-byte Reload
	movq	%r14, %r8
	movq	184(%rsp), %r11         # 8-byte Reload
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbp,%rbx)
	movb	%ah, 1(%rbp,%rbx)  # NOREX
	movb	%al, 2(%rbp,%rbx)
	movq	%rbp, %r14
.LBB0_169:                              # %cleanup.1100
                                        #   in Loop: Header=BB0_156 Depth=3
	incl	%r12d
	incl	%r13d
	leaq	3(%rbx), %rax
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB0_156
# BB#170:                               #   in Loop: Header=BB0_101 Depth=2
	movq	%r11, 184(%rsp)         # 8-byte Spill
	movq	%r8, %r11
	leaq	3(%r14,%rbx), %r14
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	120(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB0_171
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=2
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	jmp	.LBB0_171
.LBB0_154:                              #   in Loop: Header=BB0_101 Depth=2
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB0_171:                              # %if.end.1112
                                        #   in Loop: Header=BB0_101 Depth=2
	movq	80(%rsp), %rbx          # 8-byte Reload
	leal	(%rbx,%rdi), %ebx
	movl	92(%rsp), %ebp          # 4-byte Reload
	subl	%edi, %ebp
	jg	.LBB0_101
.LBB0_172:                              # %for.end.1116
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 64(%rsp)          # 8-byte Spill
	addq	(%rsp), %r9             # 8-byte Folded Reload
	movl	32(%rsp), %ebp          # 4-byte Reload
	incl	%ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	36(%rsp), %r13d         # 4-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	movq	%r11, %r14
	jg	.LBB0_97
.LBB0_173:                              # %cleanup.1126
	xorl	%eax, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_48:                               # %if.then.133
	addl	%r11d, %r8d
	imull	128(%rsp), %r11d        # 4-byte Folded Reload
	movslq	%r11d, %rax
	movq	%rsi, %r9
	subq	%rax, %r9
	jmp	.LBB0_52
.Lfunc_end0:
	.size	mem_gray8_rgb24_strip_copy_rop, .Lfunc_end0-mem_gray8_rgb24_strip_copy_rop
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
