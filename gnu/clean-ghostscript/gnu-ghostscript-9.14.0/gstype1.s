	.text
	.file	"gstype1.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_type1_check_float
	.align	16, 0x90
	.type	gs_type1_check_float,@function
gs_type1_check_float:                   # @gs_type1_check_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rdx, %r9
	movq	(%r9), %rbx
	movzbl	(%rbx), %edx
	testl	%esi, %esi
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movzwl	(%rdi), %ebp
	movl	%ebp, %eax
	shrl	$8, %eax
	xorl	%edx, %eax
	addl	%edx, %ebp
	imull	$52845, %ebp, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movw	%dx, (%rdi)
	movl	%eax, %edx
.LBB0_2:                                # %cond.end
	cmpl	$32, %edx
	jge	.LBB0_4
# BB#3:
	movl	$-15, %eax
	jmp	.LBB0_29
.LBB0_4:                                # %if.end
	cmpl	$246, %edx
	jg	.LBB0_8
# BB#5:                                 # %if.then.9
	leaq	1(%rbx), %r10
	addl	$-139, %edx
	movslq	%edx, %r11
	jmp	.LBB0_6
.LBB0_8:                                # %if.else
	cmpl	$254, %edx
	jg	.LBB0_20
# BB#9:                                 # %do.body
	movzbl	1(%rbx), %r14d
	testl	%esi, %esi
	movl	%r14d, %eax
	je	.LBB0_11
# BB#10:                                # %cond.true.19
	movzwl	(%rdi), %eax
	shrl	$8, %eax
	xorl	%r14d, %eax
.LBB0_11:                               # %cond.end.24
	movl	%edx, %ebp
	shll	$8, %ebp
	cmpl	$250, %edx
	jg	.LBB0_13
# BB#12:                                # %cond.true.28
	addl	$2304, %ebp             # imm = 0x900
	andl	$65280, %ebp            # imm = 0xFF00
	leal	108(%rax,%rbp), %eax
	jmp	.LBB0_14
.LBB0_20:                               # %if.else.58
	movl	$-10, %eax
	cmpl	$255, %edx
	jne	.LBB0_29
# BB#21:                                # %for.cond.preheader
	testl	%esi, %esi
	movzbl	1(%rbx), %eax
	je	.LBB0_22
# BB#30:                                # %cond.true.66.3
	movzwl	(%rdi), %edx
	movl	%edx, %ebp
	shrl	$8, %ebp
	xorl	%eax, %ebp
	addl	%eax, %edx
	imull	$52845, %edx, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, (%rdi)
	movzbl	2(%rbx), %r10d
	movzwl	%ax, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	xorl	%r10d, %edx
	addl	%r10d, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, (%rdi)
	shlq	$8, %rbp
	orq	%rbp, %rdx
	movzbl	3(%rbx), %r10d
	movzwl	(%rdi), %ebp
	movl	%ebp, %eax
	shrl	$8, %eax
	xorl	%r10d, %eax
	addl	%r10d, %ebp
	imull	$52845, %ebp, %ebp      # imm = 0xCE6D
	addl	$22719, %ebp            # imm = 0x58BF
	movw	%bp, (%rdi)
	shlq	$8, %rdx
	orq	%rdx, %rax
	movzbl	4(%rbx), %r10d
	movzwl	(%rdi), %ebp
	movl	%ebp, %edx
	shrl	$8, %edx
	xorl	%r10d, %edx
	addl	%r10d, %ebp
	imull	$52845, %ebp, %ebp      # imm = 0xCE6D
	addl	$22719, %ebp            # imm = 0x58BF
	movw	%bp, (%rdi)
	jmp	.LBB0_31
.LBB0_13:                               # %cond.false.35
	addl	$1280, %ebp             # imm = 0x500
	andl	$65280, %ebp            # imm = 0xFF00
	leal	108(%rax,%rbp), %eax
	negl	%eax
.LBB0_14:                               # %cond.end.44
	leaq	2(%rbx), %r10
	testl	%esi, %esi
	movslq	%eax, %r11
	je	.LBB0_15
# BB#18:                                # %if.end.93.thread
	movzwl	(%rdi), %eax
	addl	%r14d, %eax
	imull	$52845, %eax, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movw	%dx, (%rdi)
	movzbl	2(%rbx), %eax
	addq	$3, %rbx
	jmp	.LBB0_19
.LBB0_15:                               # %if.end.93.thread70
	movzbl	2(%rbx), %eax
	addq	$3, %rbx
	jmp	.LBB0_16
.LBB0_22:                               # %cond.end.80.2
	shlq	$8, %rax
	movzbl	2(%rbx), %edx
	orq	%rax, %rdx
	shlq	$8, %rdx
	movzbl	3(%rbx), %eax
	orq	%rdx, %rax
	movzbl	4(%rbx), %edx
.LBB0_31:                               # %cond.end.80.3
	shlq	$8, %rax
	orq	%rax, %rdx
	leaq	5(%rbx), %r10
	addq	$4, %rbx
	movl	$2147483648, %r11d      # imm = 0x80000000
	xorq	%rdx, %r11
	addq	$-2147483648, %r11      # imm = 0xFFFFFFFF80000000
.LBB0_6:                                # %if.end.93
	addq	$2, %rbx
	movzbl	(%r10), %eax
	testl	%esi, %esi
	je	.LBB0_16
# BB#7:                                 # %if.end.93.cond.true.97_crit_edge
	movzwl	(%rdi), %edx
.LBB0_19:                               # %cond.true.97
	movzwl	%dx, %edx
	movl	%edx, %ebp
	shrl	$8, %ebp
	xorl	%eax, %ebp
	addl	%eax, %edx
	imull	$52845, %edx, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, (%rdi)
	movl	%ebp, %eax
.LBB0_16:                               # %cond.end.108
	cmpl	$12, %eax
	jne	.LBB0_17
# BB#23:                                # %if.end.113
	movzbl	(%rbx), %eax
	testl	%esi, %esi
	je	.LBB0_25
# BB#24:                                # %cond.true.117
	movzwl	(%rdi), %edx
	movl	%edx, %esi
	shrl	$8, %esi
	xorl	%eax, %esi
	addl	%eax, %edx
	imull	$52845, %edx, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, (%rdi)
	movl	%esi, %eax
.LBB0_25:                               # %cond.end.128
	cmpl	$12, %eax
	jne	.LBB0_26
# BB#27:                                # %if.end.133
	movq	%r8, %rax
	cqto
	idivq	%r11
	movq	%rax, %rdx
	negq	%rdx
	cmovlq	%rax, %rdx
	cmpq	$8388607, %rdx          # imm = 0x7FFFFF
	movl	$-15, %eax
	jg	.LBB0_29
# BB#28:                                # %if.end.146
	addq	$2, %r10
	cvtsi2sdq	%r8, %xmm0
	cvtsi2sdq	%r11, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%rcx)
	movq	%r10, (%r9)
	xorl	%eax, %eax
	jmp	.LBB0_29
.LBB0_17:
	movl	$-15, %eax
	jmp	.LBB0_29
.LBB0_26:
	movl	$-15, %eax
.LBB0_29:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_type1_check_float, .Lfunc_end0-gs_type1_check_float
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_type1_interpret
	.align	16, 0x90
	.type	gs_type1_interpret,@function
gs_type1_interpret:                     # @gs_type1_interpret
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp12:
	.cfi_def_cfa_offset 368
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	9856(%r15), %rbp
	movl	512(%rbp), %ecx
	movslq	10976(%r15), %rbx
	movl	10980(%r15), %eax
	testl	%eax, %eax
	jne	.LBB1_1
# BB#3:                                 # %sw.bb.4
	movq	%r15, %rdi
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	callq	gs_type1_finish_init
	movl	$132, %eax
	addq	9864(%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	80(%rbp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	24(%rbp), %rdi
	movq	64(%rbp), %r12
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	addq	$80, %r12
	movl	9956(%r15), %r14d
	movl	9968(%r15), %r13d
	movl	%r14d, %ebp
	subl	9972(%r15), %ebp
	subl	9976(%r15), %r13d
	movl	9980(%r15), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	9984(%r15), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	callq	gs_currentaligntopixels
	movl	%eax, 32(%rsp)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	%r15, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %rcx
	movl	%r14d, %r8d
	movl	%r14d, %r9d
	callq	t1_hinter__set_mapping
	movl	96(%rsp), %ebp          # 4-byte Reload
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#4:                                 # %if.end
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	448(%rax), %rdx
	movl	9880(%r15), %ecx
	movq	9856(%r15), %rax
	movl	32(%rax), %r8d
	movl	$1, %esi
	movq	%r15, %rdi
	callq	t1_hinter__set_font_data
	movl	%ebp, %ecx
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB1_5
	jmp	.LBB1_133
.LBB1_1:                                # %entry
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	cmpl	$-1, %eax
	jne	.LBB1_5
# BB#2:                                 # %sw.bb
	movq	9872(%r15), %rsi
	movq	%r15, %rdi
	movl	%ecx, %ebp
	callq	t1_hinter__init
	movl	%ebp, %ecx
.LBB1_5:                                # %do.body
	decq	%rbx
	leaq	(%rbx,%rbx,8), %rbx
	movslq	10180(%r15), %rdx
	movl	%ecx, %ebp
	testq	%rdx, %rdx
	je	.LBB1_6
# BB#7:                                 # %if.else
	leaq	9988(%r15), %rsi
	shlq	$2, %rdx
	leaq	112(%rsp), %rdi
	callq	memcpy
	movslq	10180(%r15), %rax
	leaq	108(%rsp,%rax,4), %r14
	jmp	.LBB1_8
.LBB1_6:                                # %if.then.40
	leaq	108(%rsp), %r14
.LBB1_8:                                # %do.end
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	10184(%r15), %rax
	leaq	10184(%r15,%rbx,8), %r13
	testq	%rcx, %rcx
	je	.LBB1_16
# BB#9:                                 # %if.end.54
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 10240(%r15,%rbx,8)
	movups	%xmm1, 10224(%r15,%rbx,8)
	movups	%xmm0, 10208(%r15,%rbx,8)
	movq	(%rcx), %rbx
	movq	%rbx, 104(%rsp)
	movl	$-10, %r12d
	testq	%rbx, %rbx
                                        # implicit-def: EAX
	movl	%eax, 96(%rsp)          # 4-byte Spill
	je	.LBB1_133
.LBB1_10:                               # %call.60
	movw	$4330, 102(%rsp)        # imm = 0x10EA
	testl	%ebp, %ebp
	movq	80(%rsp), %rax          # 8-byte Reload
	js	.LBB1_19
# BB#11:                                # %if.then.61
	movl	512(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_19
# BB#12:                                # %for.body.preheader
	incl	%eax
	movw	$4330, %cx              # imm = 0x10EA
	.align	16, 0x90
.LBB1_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	addl	%edx, %ecx
	imull	$-12691, %ecx, %ecx     # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	incq	%rbx
	movq	%rbx, 104(%rsp)
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB1_13
# BB#14:                                # %for.cond.for.cond.80.loopexit_crit_edge
	movw	%cx, 102(%rsp)
	jmp	.LBB1_19
.LBB1_15:                               # %cleanup.735.thread323
	movq	56(%rsp), %r13          # 8-byte Reload
	leaq	24(%r13), %rdi
	movl	$.L.str, %esi
	callq	gs_glyph_data_free
	addq	$-72, %r13
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	96(%rsp), %ecx          # 4-byte Reload
.LBB1_16:                               # %cont
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$-10, %r12d
	cmpq	%rax, %r13
	jb	.LBB1_133
# BB#17:                                # %lor.lhs.false
	movq	(%r13), %rbx
	movq	%r13, 56(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB1_133
# BB#18:                                # %if.end.78
	movq	%rbx, 104(%rsp)
	movq	56(%rsp), %rax          # 8-byte Reload
	movw	16(%rax), %ax
	movw	%ax, 102(%rsp)
.LBB1_19:                               # %for.cond.80.preheader
	movl	%ebp, %eax
	shrl	$31, %eax
	xorl	$1, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	leaq	300(%rsp), %r13
	leaq	108(%rsp), %r9
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_26:                               # %do.end.105
                                        #   in Loop: Header=BB1_20 Depth=1
	shll	$8, %edx
	addl	$-35584, %edx           # imm = 0xFFFFFFFFFFFF7500
	movl	%edx, 4(%r14)
	addq	$4, %r14
.LBB1_20:                               # %for.cond.80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	movq	%r14, %rcx
	jmp	.LBB1_21
.LBB1_35:                               # %cond.true.166
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %edx
	addl	%eax, %edx
	imull	$52845, %edx, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movw	%ax, 102(%rsp)
	.align	16, 0x90
.LBB1_21:                               # %for.cond.80
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r14
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movq	%rbx, 104(%rsp)
	movzbl	(%rax), %edx
	testl	%ebp, %ebp
	js	.LBB1_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %ecx
	movl	%ecx, %esi
	shrl	$8, %esi
	xorl	%edx, %esi
	addl	%edx, %ecx
	imull	$52845, %ecx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movw	%cx, 102(%rsp)
	movl	%esi, %edx
.LBB1_23:                               # %cond.end
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpl	$32, %edx
	jl	.LBB1_42
# BB#24:                                # %if.then.93
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpl	$246, %edx
	jle	.LBB1_25
# BB#27:                                # %if.else.112
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpl	$254, %edx
	jg	.LBB1_36
# BB#28:                                # %do.body.116
                                        #   in Loop: Header=BB1_21 Depth=2
	leaq	2(%rax), %rbx
	movq	%rbx, 104(%rsp)
	movl	$-10, %r12d
	cmpq	%r13, %r14
	jae	.LBB1_133
# BB#29:                                # %do.end.126
                                        #   in Loop: Header=BB1_21 Depth=2
	movzbl	1(%rax), %eax
	testl	%ebp, %ebp
	movl	%eax, %ecx
	js	.LBB1_31
# BB#30:                                # %cond.true.128
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %ecx
	shrl	$8, %ecx
	xorl	%eax, %ecx
.LBB1_31:                               # %cond.end.133
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	%edx, %esi
	shll	$8, %esi
	cmpl	$250, %edx
	jg	.LBB1_33
# BB#32:                                # %do.end.140
                                        #   in Loop: Header=BB1_21 Depth=2
	addl	$2304, %esi             # imm = 0x900
	andl	$65280, %esi            # imm = 0xFF00
	leal	108(%rcx,%rsi), %ecx
	jmp	.LBB1_34
	.align	16, 0x90
.LBB1_42:                               # %if.end.247
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	$-10, %r12d
	decl	%edx
	cmpl	$30, %edx
	ja	.LBB1_133
# BB#43:                                # %if.end.247
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %rcx
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_46:                               # %sw.bb.272
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	112(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__hstem
	jmp	.LBB1_94
.LBB1_36:                               # %if.else.179
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	$-10, %r12d
	cmpl	$255, %edx
	jne	.LBB1_133
# BB#37:                                # %for.cond.184.preheader
                                        #   in Loop: Header=BB1_21 Depth=2
	testl	%ebp, %ebp
	movzbl	(%rbx), %edx
	js	.LBB1_38
# BB#134:                               # %cond.true.190.1
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %ecx
	movl	%ecx, %esi
	shrl	$8, %esi
	xorl	%edx, %esi
	addl	%edx, %ecx
	imull	$52845, %ecx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movw	%cx, 102(%rsp)
	leaq	2(%rax), %rdx
	movq	%rdx, 104(%rsp)
	movzbl	2(%rax), %edx
	movzwl	%cx, %edi
	movl	%edi, %ecx
	shrl	$8, %ecx
	xorl	%edx, %ecx
	addl	%edx, %edi
	imull	$52845, %edi, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movw	%dx, 102(%rsp)
	movq	%rsi, %rdx
	jmp	.LBB1_135
.LBB1_33:                               # %do.end.153
                                        #   in Loop: Header=BB1_21 Depth=2
	addl	$1280, %esi             # imm = 0x500
	andl	$65280, %esi            # imm = 0xFF00
	leal	108(%rcx,%rsi), %ecx
	negl	%ecx
.LBB1_34:                               # %if.end.164
                                        #   in Loop: Header=BB1_21 Depth=2
	shll	$8, %ecx
	movl	%ecx, 4(%r14)
	addq	$4, %r14
	movq	%r14, %rcx
	testl	%ebp, %ebp
	js	.LBB1_21
	jmp	.LBB1_35
.LBB1_38:                               # %cond.end.204
                                        #   in Loop: Header=BB1_21 Depth=2
	leaq	2(%rax), %rcx
	movq	%rcx, 104(%rsp)
	movzbl	2(%rax), %ecx
.LBB1_135:                              # %cond.end.204.1
                                        #   in Loop: Header=BB1_21 Depth=2
	leaq	3(%rax), %rsi
	movq	%rsi, 104(%rsp)
	movzbl	3(%rax), %esi
	testl	%ebp, %ebp
	js	.LBB1_137
# BB#136:                               # %cond.true.190.2
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %ebx
	movl	%ebx, %edi
	shrl	$8, %edi
	xorl	%esi, %edi
	addl	%esi, %ebx
	imull	$52845, %ebx, %esi      # imm = 0xCE6D
	addl	$22719, %esi            # imm = 0x58BF
	movw	%si, 102(%rsp)
	movl	%edi, %esi
.LBB1_137:                              # %cond.end.204.2
                                        #   in Loop: Header=BB1_21 Depth=2
	leaq	4(%rax), %rdi
	movq	%rdi, 104(%rsp)
	movzbl	4(%rax), %r8d
	testl	%ebp, %ebp
	js	.LBB1_139
# BB#138:                               # %cond.true.190.3
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %ebx
	movl	%ebx, %edi
	shrl	$8, %edi
	xorl	%r8d, %edi
	addl	%r8d, %ebx
	imull	$52845, %ebx, %ebx      # imm = 0xCE6D
	addl	$22719, %ebx            # imm = 0x58BF
	movw	%bx, 102(%rsp)
	movl	%edi, %r8d
.LBB1_139:                              # %cond.end.204.3
                                        #   in Loop: Header=BB1_21 Depth=2
	addq	$5, %rax
	movq	%rax, 104(%rsp)
	cmpq	%r13, %r14
	jae	.LBB1_133
# BB#39:                                # %do.end.222
                                        #   in Loop: Header=BB1_21 Depth=2
	shlq	$8, %rdx
	orq	%rdx, %rcx
	shlq	$8, %rcx
	orq	%rcx, %rsi
	shlq	$8, %rsi
	orq	%rsi, %r8
	movl	$2147483648, %ecx       # imm = 0x80000000
	xorq	%rcx, %r8
	addq	$-2147483648, %r8       # imm = 0xFFFFFFFF80000000
	movl	%r8d, %ecx
	shll	$8, %ecx
	movl	%ecx, 4(%r14)
	addq	$4, %r14
	movq	%r8, %rcx
	shlq	$40, %rcx
	sarq	$40, %rcx
	cmpq	%rcx, %r8
	movq	%rax, %rbx
	movq	%r14, %rcx
	je	.LBB1_21
	jmp	.LBB1_40
.LBB1_47:                               # %sw.bb.282
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	112(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__vstem
.LBB1_94:                               # %cleanup.735
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r12, %r9
	testl	%eax, %eax
	jmp	.LBB1_53
.LBB1_48:                               # %sw.bb.292
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	112(%rsp), %eax
	movl	%eax, 116(%rsp)
	movl	$0, 112(%rsp)
	jmp	.LBB1_49
.LBB1_50:                               # %sw.bb.309
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	$0, 116(%rsp)
	jmp	.LBB1_51
.LBB1_54:                               # %sw.bb.311
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	112(%rsp), %eax
	movl	%eax, 116(%rsp)
	movl	$0, 112(%rsp)
.LBB1_51:                               # %line
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %r12
	movq	112(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%r15, %rdi
	callq	t1_hinter__rlineto
	jmp	.LBB1_52
.LBB1_55:                               # %sw.bb.315
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %r12
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rcx
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	128(%rsp), %r9
	movq	%r9, %rax
	shrq	$32, %rax
	movl	%eax, (%rsp)
	jmp	.LBB1_70
.LBB1_72:                               # %sw.bb.387
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %r12
	movq	%r15, %rdi
	callq	t1_hinter__closepath
	jmp	.LBB1_52
.LBB1_87:                               # %sw.bb.460
                                        #   in Loop: Header=BB1_21 Depth=2
	movzbl	(%rbx), %edx
	testl	%ebp, %ebp
	js	.LBB1_89
# BB#88:                                # %cond.true.462
                                        #   in Loop: Header=BB1_21 Depth=2
	movzwl	102(%rsp), %ecx
	movl	%ecx, %esi
	shrl	$8, %esi
	xorl	%edx, %esi
	addl	%edx, %ecx
	imull	$52845, %ecx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movw	%cx, 102(%rsp)
	movl	%esi, %edx
.LBB1_89:                               # %cond.end.476
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%rax, %rbx
	addq	$2, %rbx
	movq	%rbx, 104(%rsp)
	cmpl	$17, %edx
	jbe	.LBB1_92
# BB#90:                                # %cond.end.476
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpl	$33, %edx
	jne	.LBB1_133
# BB#91:                                # %sw.bb.713
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	11060(%r15), %eax
	addl	11044(%r15), %eax
	movq	112(%rsp), %rdx
	movl	%edx, %esi
	addl	%eax, %esi
	movl	%esi, 112(%rsp)
	movl	11064(%r15), %eax
	addl	11048(%r15), %eax
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, 116(%rsp)
	movq	%r15, %rdi
	movq	%r9, %r14
	callq	t1_hinter__setcurrentpoint
	movq	%r14, %r9
	movq	%r9, %rcx
	jmp	.LBB1_21
.LBB1_68:                               # %sw.bb.373
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	$0, 116(%rsp)
.LBB1_49:                               # %move
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %r12
	movq	112(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%r15, %rdi
	callq	t1_hinter__rmoveto
	jmp	.LBB1_52
.LBB1_69:                               # %sw.bb.375
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %r12
	movq	112(%rsp), %rdx
	movq	120(%rsp), %r8
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movq	%r8, %r9
	shrq	$32, %r9
	movl	$0, (%rsp)
	xorl	%esi, %esi
	jmp	.LBB1_70
.LBB1_71:                               # %sw.bb.381
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %r12
	movq	112(%rsp), %rsi
	movq	120(%rsp), %r8
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movq	%r8, %rax
	shrq	$32, %rax
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
.LBB1_70:                               # %cc
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r15, %rdi
	callq	t1_hinter__rcurveto
.LBB1_52:                               # %cc
                                        #   in Loop: Header=BB1_21 Depth=2
	testl	%eax, %eax
	movq	%r12, %r9
.LBB1_53:                               # %cleanup.735
                                        #   in Loop: Header=BB1_21 Depth=2
	cmovnsq	%r9, %r14
	movl	96(%rsp), %r12d         # 4-byte Reload
	cmovsl	%eax, %r12d
	movq	%r14, %rcx
.LBB1_115:                              # %cleanup.735
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	%r12d, 96(%rsp)         # 4-byte Spill
	sarl	$31, %eax
	testl	$-9, %eax
	je	.LBB1_21
	jmp	.LBB1_133
.LBB1_92:                               # %cond.end.476
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r9, %rcx
	jmpq	*.LJTI1_1(,%rdx,8)
.LBB1_93:                               # %sw.bb.479
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__dotsection
	jmp	.LBB1_94
.LBB1_95:                               # %sw.bb.487
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rcx
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	%r9, %r12
	movq	128(%rsp), %r9
	movq	%r9, %rax
	shrq	$32, %rax
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	callq	t1_hinter__vstem3
	jmp	.LBB1_94
.LBB1_96:                               # %sw.bb.501
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rcx
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	%r9, %r12
	movq	128(%rsp), %r9
	movq	%r9, %rax
	shrq	$32, %rax
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	callq	t1_hinter__hstem3
	jmp	.LBB1_94
.LBB1_105:                              # %sw.bb.560
                                        #   in Loop: Header=BB1_21 Depth=2
	leaq	-4(%r14), %rcx
	cvtsi2sdl	-4(%r14), %xmm0
	cvtsi2sdl	(%r14), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%r14)
	jmp	.LBB1_21
.LBB1_106:                              # %sw.bb.571
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	(%r14), %eax
	sarl	$8, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	cmpl	$18, %eax
	ja	.LBB1_123
# BB#107:                               # %sw.bb.571
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	$1, %edx
	movq	%r9, %rcx
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_112:                              # %sw.bb.594
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpl	$7, 11068(%r15)
	jg	.LBB1_133
# BB#113:                               # %if.end.599
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__flex_point
	jmp	.LBB1_114
.LBB1_129:                              # %sw.bb.689
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	11072(%r15), %eax
	testl	%eax, %eax
	jne	.LBB1_130
# BB#131:                               # %do.body.697
                                        #   in Loop: Header=BB1_21 Depth=2
	cmpq	%r13, %r14
	jae	.LBB1_133
# BB#132:                               # %do.end.704
                                        #   in Loop: Header=BB1_21 Depth=2
	addq	$4, %r14
	movq	9888(%r15), %rdi
	movq	%r14, %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%r9, %r12
	callq	*480(%rax)
	movq	%r12, %r9
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movq	%r14, %rcx
	jns	.LBB1_21
	jmp	.LBB1_133
.LBB1_116:                              # %sw.bb.606
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	$1, 11072(%r15)
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__drop_hints
.LBB1_114:                              # %cleanup.735
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	%r12, %r9
	leaq	-8(%r14), %rcx
	testl	%eax, %eax
	cmovsq	%r14, %rcx
	movl	96(%rsp), %r12d         # 4-byte Reload
	cmovsl	%eax, %r12d
	jmp	.LBB1_115
	.align	16, 0x90
.LBB1_25:                               # %do.body.98
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$-10, %r12d
	cmpq	%r13, %r14
	jb	.LBB1_26
	jmp	.LBB1_133
.LBB1_40:                               # %if.then.230
                                        #   in Loop: Header=BB1_20 Depth=1
	leaq	102(%rsp), %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	leaq	104(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r9, %rbx
	callq	gs_type1_check_float
	movq	%rbx, %r9
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#41:                                # %if.then.230.for.cond.80.backedge_crit_edge
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	104(%rsp), %rbx
	jmp	.LBB1_20
.LBB1_130:                              # %if.then.693
                                        #   in Loop: Header=BB1_20 Depth=1
	decl	%eax
	movl	%eax, 11072(%r15)
	jmp	.LBB1_20
.LBB1_108:                              # %sw.bb.573
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	-16(%r14), %esi
	movl	$2, 11072(%r15)
	movl	-12(%r14), %eax
	subl	11040(%r15), %eax
	movl	%eax, -16(%r14)
	movl	-8(%r14), %eax
	movl	%eax, -12(%r14)
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__flex_end
	movq	%r12, %r9
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#109:                               # %if.end.585
                                        #   in Loop: Header=BB1_20 Depth=1
	addq	$-12, %r14
	movl	$8, 11068(%r15)
	jmp	.LBB1_20
.LBB1_110:                              # %sw.bb.586
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	%r15, %rdi
	movq	%r9, %r12
	callq	t1_hinter__flex_beg
	movq	%r12, %r9
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#111:                               # %if.end.591
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$1, 11068(%r15)
	addq	$-8, %r14
	jmp	.LBB1_20
.LBB1_117:                              # %sw.bb.624
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$2, %edx
	jmp	.LBB1_118
.LBB1_120:                              # %sw.bb.625
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$3, %edx
	jmp	.LBB1_118
.LBB1_121:                              # %sw.bb.626
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$4, %edx
	jmp	.LBB1_118
.LBB1_122:                              # %sw.bb.627
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$6, %edx
.LBB1_118:                              # %blend
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %r12
	callq	gs_type1_blend
	movq	%r12, %r9
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#119:                               # %if.end.622
                                        #   in Loop: Header=BB1_20 Depth=1
	movslq	%r12d, %rax
	shlq	$2, %rax
	subq	%rax, %r14
	jmp	.LBB1_20
.LBB1_44:                               # %sw.bb.249
	movl	(%r14), %esi
	sarl	$8, %esi
	movq	80(%rsp), %rdi          # 8-byte Reload
	addl	516(%rdi), %esi
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	96(%rax), %rcx
	xorl	%edx, %edx
	callq	*456(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#45:                                # %if.end.258
	addq	$-4, %r14
	movq	104(%rsp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movw	102(%rsp), %ax
	movw	%ax, 16(%rcx)
	movq	96(%rcx), %rbx
	addq	$72, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 104(%rsp)
	jmp	.LBB1_10
.LBB1_73:                               # %sw.bb.389
	movq	112(%rsp), %rsi
	cmpl	$0, 10992(%r15)
	je	.LBB1_74
# BB#82:                                # %if.else.425
	movl	11024(%r15), %eax
	addl	%esi, %eax
	addl	11044(%r15), %eax
	subl	11020(%r15), %eax
	subl	11052(%r15), %eax
	movl	11048(%r15), %edx
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	t1_hinter__sbw_seac
	jmp	.LBB1_83
.LBB1_56:                               # %sw.bb.323
	cmpl	$0, 11016(%r15)
	js	.LBB1_57
# BB#64:                                # %if.else.352
	movq	%r15, %rdi
	callq	t1_hinter__end_subglyph
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#65:                                # %if.end.357
	movl	$1, 10992(%r15)
	jmp	.LBB1_66
.LBB1_74:                               # %if.then.392
	movq	%rsi, %rcx
	shrq	$32, %rcx
	cmpl	$0, 11016(%r15)
	js	.LBB1_75
# BB#80:                                # %if.else.422
	movl	%esi, 11052(%r15)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB1_81
.LBB1_57:                               # %if.then.326
	cmpl	$0, 10984(%r15)
	jne	.LBB1_62
# BB#58:                                # %land.lhs.true
	cmpl	$0, 10988(%r15)
	je	.LBB1_59
.LBB1_62:                               # %if.end.339
	movq	%r15, %rdi
	callq	t1_hinter__endglyph
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#63:                                # %if.end.344
	movq	9864(%r15), %rdi
	movq	9872(%r15), %rsi
	callq	gx_setcurrentpoint_from_path
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
.LBB1_66:                               # %if.end.358
	movq	%r15, %rdi
	callq	gs_type1_endchar
	movl	%eax, %r12d
	cmpl	$1, %r12d
	jne	.LBB1_133
# BB#67:                                # %if.then.362
	movslq	10976(%r15), %rax
	leaq	(%rax,%rax,8), %rax
	leaq	10112(%r15,%rax,8), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	10136(%r15,%rax,8), %rbx
	movq	%rbx, 104(%rsp)
	jmp	.LBB1_10
.LBB1_75:                               # %if.then.398
	xorl	%r8d, %r8d
	cmpl	$0, 10984(%r15)
	je	.LBB1_76
# BB#77:                                # %if.then.401
	movl	11000(%r15), %eax
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, 11060(%r15)
	movl	11004(%r15), %edx
	movl	%edx, 11064(%r15)
	movl	%eax, %esi
	jmp	.LBB1_78
.LBB1_123:                              # %cleanup.cont.631
	leaq	112(%rsp), %rcx
	movq	%r14, %rax
	subq	%rcx, %rax
	movq	%rax, %rbx
	shrq	$2, %rbx
	testl	%ebx, %ebx
	jle	.LBB1_133
# BB#124:                               # %lor.lhs.false.640
	movl	-4(%r14), %edx
	testl	%edx, %edx
	js	.LBB1_133
# BB#125:                               # %lor.lhs.false.644
	shlq	$6, %rax
	addl	$-256, %eax
	cmpl	%eax, %edx
	jg	.LBB1_133
# BB#126:                               # %if.end.651
	sarl	$8, %edx
	movq	9888(%r15), %rdi
	leal	1(%rdx), %ebp
	movslq	%ebp, %rax
	shlq	$2, %rax
	subq	%rax, %r14
	movq	%r14, %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	callq	*472(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#127:                               # %if.end.663
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rax
	subq	48(%rsp), %rax          # 8-byte Folded Reload
	shrq	$3, %rax
	imull	$954437177, %eax, %eax  # imm = 0x38E38E39
	incl	%eax
	subl	%ebp, %ebx
	movq	104(%rsp), %rcx
	movq	%rcx, (%r13)
	movw	102(%rsp), %cx
	movw	%cx, 16(%r13)
	movl	%ebx, 10180(%r15)
	movl	%eax, 10976(%r15)
	movl	$2, %r12d
	je	.LBB1_133
# BB#128:                               # %if.then.679
	addq	$9988, %r15             # imm = 0x2704
	movslq	%ebx, %rdx
	shlq	$2, %rdx
	leaq	112(%rsp), %rsi
	movq	%r15, %rdi
	callq	memcpy
	jmp	.LBB1_133
.LBB1_59:                               # %if.then.329
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)
	movq	9872(%r15), %rsi
	movq	%r15, %rdi
	callq	t1_hinter__init
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	t1_hinter__sbw
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#60:                                # %if.end.337
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB1_61
.LBB1_76:
	xorl	%edx, %edx
.LBB1_78:                               # %if.end.414
	cmpl	$0, 10988(%r15)
	je	.LBB1_81
# BB#79:                                # %if.then.417
	movl	11008(%r15), %ecx
	movl	11012(%r15), %r8d
.LBB1_81:                               # %if.end.423
	movq	%r15, %rdi
	callq	t1_hinter__sbw
.LBB1_83:                               # %if.end.437
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#84:                                # %if.end.441
	movq	112(%rsp), %rsi
	movq	%rsi, %rcx
	shrq	$32, %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	gs_type1_sbw
	movl	$0, 116(%rsp)
.LBB1_85:                               # %rsbw
	movl	$0, 10180(%r15)
	movq	104(%rsp), %rax
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	%rax, (%r13)
	movw	102(%rsp), %ax
	movw	%ax, 16(%r13)
	subq	48(%rsp), %r13          # 8-byte Folded Reload
	shrq	$3, %r13
	imull	$954437177, %r13d, %eax # imm = 0x38E38E39
	incl	%eax
	movl	%eax, 10976(%r15)
	movl	$1, %r12d
	cmpl	$0, 10980(%r15)
	jns	.LBB1_133
# BB#86:                                # %if.then.457
	movl	$0, 10980(%r15)
.LBB1_133:                              # %cleanup.737
	movl	%r12d, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_97:                               # %sw.bb.515
	movq	%r9, %r14
	movl	112(%rsp), %edx
	movq	%r15, %rdi
	leaq	116(%rsp), %rsi
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	gs_type1_seac
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB1_99
# BB#98:                                # %if.then.522
	movl	124(%rsp), %eax
	sarl	$8, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB1_133
.LBB1_100:                              # %sw.bb.531
	movq	112(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	cmpl	$0, 10992(%r15)
	je	.LBB1_101
# BB#102:                               # %if.else.540
	movl	11044(%r15), %eax
	addl	%esi, %eax
	addl	11048(%r15), %edx
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	t1_hinter__sbw_seac
	jmp	.LBB1_103
.LBB1_99:                               # %if.end.525
	movq	24(%rbx), %rbx
	movq	%rbx, 104(%rsp)
	jmp	.LBB1_10
.LBB1_101:                              # %if.then.534
	movq	120(%rsp), %rcx
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	%r15, %rdi
	callq	t1_hinter__sbw
.LBB1_103:                              # %if.end.550
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_133
# BB#104:                               # %if.end.554
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rcx
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rcx, %r8
	shrq	$32, %r8
.LBB1_61:                               # %rsbw
	movq	%r15, %rdi
	callq	gs_type1_sbw
	jmp	.LBB1_85
.Lfunc_end1:
	.size	gs_type1_interpret, .Lfunc_end1-gs_type1_interpret
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_46
	.quad	.LBB1_133
	.quad	.LBB1_47
	.quad	.LBB1_48
	.quad	.LBB1_51
	.quad	.LBB1_50
	.quad	.LBB1_54
	.quad	.LBB1_55
	.quad	.LBB1_72
	.quad	.LBB1_44
	.quad	.LBB1_15
	.quad	.LBB1_87
	.quad	.LBB1_73
	.quad	.LBB1_56
	.quad	.LBB1_21
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_49
	.quad	.LBB1_68
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_69
	.quad	.LBB1_71
.LJTI1_1:
	.quad	.LBB1_93
	.quad	.LBB1_95
	.quad	.LBB1_96
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_97
	.quad	.LBB1_100
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_105
	.quad	.LBB1_133
	.quad	.LBB1_133
	.quad	.LBB1_21
	.quad	.LBB1_106
	.quad	.LBB1_129
.LJTI1_2:
	.quad	.LBB1_108
	.quad	.LBB1_110
	.quad	.LBB1_112
	.quad	.LBB1_116
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_123
	.quad	.LBB1_21
	.quad	.LBB1_21
	.quad	.LBB1_118
	.quad	.LBB1_117
	.quad	.LBB1_120
	.quad	.LBB1_121
	.quad	.LBB1_122

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_type1_interpret"
	.size	.L.str, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
