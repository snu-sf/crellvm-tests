	.text
	.file	"gdevdrop.bc"
	.globl	gx_default_strip_copy_rop
	.align	16, 0x90
	.type	gx_default_strip_copy_rop,@function
gx_default_strip_copy_rop:              # @gx_default_strip_copy_rop
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 128
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	128(%rsp), %r8
	movq	136(%rsp), %r10
	movl	144(%rsp), %r11d
	movl	152(%rsp), %r14d
	movl	160(%rsp), %r15d
	movl	168(%rsp), %r12d
	movl	176(%rsp), %eax
	movl	184(%rsp), %ebx
	movl	192(%rsp), %ebp
	movl	%ebp, 64(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%eax, 48(%rsp)
	movl	%r12d, 40(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%r10, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 72(%rsp)
	callq	gx_default_strip_copy_rop2
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_default_strip_copy_rop, .Lfunc_end0-gx_default_strip_copy_rop
	.cfi_endproc

	.globl	gx_default_strip_copy_rop2
	.align	16, 0x90
	.type	gx_default_strip_copy_rop2,@function
gx_default_strip_copy_rop2:             # @gx_default_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$1000, %rsp             # imm = 0x3E8
.Ltmp17:
	.cfi_def_cfa_offset 1056
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%r9, 160(%rsp)          # 8-byte Spill
	movl	%ecx, 172(%rsp)         # 4-byte Spill
	movl	%edx, 188(%rsp)         # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r13
	movzwl	108(%r13), %ebx
	movq	24(%r13), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	%ebx, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, %r8
	movl	$-15, %esi
	testq	%r8, %r8
	je	.LBB1_61
# BB#1:                                 # %if.end
	movl	1096(%rsp), %eax
	movl	1088(%rsp), %ecx
	movl	1080(%rsp), %ebp
	movl	1072(%rsp), %edx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movl	%ebp, %edi
	orl	%edx, %edi
	testq	%r15, %r15
	je	.LBB1_2
# BB#7:                                 # %do.body.53
	testl	%edi, %edi
	jns	.LBB1_8
# BB#9:                                 # %if.then.57
	movl	1072(%rsp), %edx
	movq	%rdx, %rdi
	sarl	$31, %edx
	andl	%edi, %edx
	leal	(%rcx,%rdx), %ecx
	xorl	%r9d, %r9d
	testl	%edi, %edi
	cmovsl	%r9d, %edi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	subl	%edx, 188(%rsp)         # 4-byte Folded Spill
	testl	%ebp, %ebp
	js	.LBB1_10
.LBB1_8:
	movl	%ebp, %edx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
.LBB1_11:                               # %if.end.69
	movl	832(%r13), %edx
	movl	836(%r13), %edi
	movq	152(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movq	176(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edi
	cmpl	%edi, %eax
	cmovlel	%eax, %edi
	xorl	%esi, %esi
	testl	%edx, %edx
	movq	%rdx, %rax
	jle	.LBB1_61
# BB#12:                                # %if.end.69
	testl	%edi, %edi
	jg	.LBB1_13
	jmp	.LBB1_61
.LBB1_2:                                # %do.body.7
	testl	%edi, %edi
	jns	.LBB1_4
# BB#3:                                 # %if.then.10
	movl	1072(%rsp), %edx
	movl	%edx, %edi
	sarl	$31, %edi
	andl	%edx, %edi
	addl	%ecx, %edi
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovsl	%ecx, %edx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%ebp, %edx
	addl	%edx, %eax
	testl	%ebp, %ebp
	cmovsl	%ecx, %ebp
	movl	%edi, %ecx
.LBB1_4:                                # %do.body.21
	movl	%ebp, %edx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movl	832(%r13), %edx
	movl	836(%r13), %edi
	movq	152(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movq	176(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edi
	cmpl	%edi, %eax
	cmovlel	%eax, %edi
	xorl	%r15d, %r15d
	testl	%edx, %edx
	movq	%rdx, %rax
	jle	.LBB1_5
# BB#6:                                 # %do.body.21
	testl	%edi, %edi
	movl	$0, %esi
	jle	.LBB1_61
.LBB1_13:                               # %if.end.97
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movl	1128(%rsp), %ecx
	leaq	96(%r13), %r12
	movq	%rax, %r15
	imull	%r15d, %ebx
	addl	$63, %ebx
	sarl	$6, %ebx
	shll	$3, %ebx
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	divl	%ebx
	testl	%eax, %eax
	movl	$1, %r14d
	cmovnel	%eax, %r14d
	cmpl	%r14d, %edi
	cmovlel	%edi, %r14d
	testl	%ecx, %ecx
	cmovnel	%ecx, %r14d
	movq	%r14, 200(%rsp)         # 8-byte Spill
	leaq	992(%rsp), %rdi
	movl	$-1, %ecx
	movq	%r8, %rsi
	movq	136(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r13, %r8
	callq	gs_make_mem_device_with_copydevice
	movq	992(%rsp), %rax
	movl	%r15d, 832(%rax)
	movl	%r14d, 836(%rax)
	movq	%rbp, 1752(%rax)
	movq	992(%rsp), %r15
	leaq	96(%r15), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r12, %rsi
	callq	memcpy
	cmpl	$0, 848(%r13)
	je	.LBB1_14
# BB#15:                                # %if.then.116
	movl	100(%r13), %esi
	movzwl	108(%r13), %eax
	xorl	%edx, %edx
	idivl	%esi
	testl	%esi, %esi
                                        # implicit-def: EBX
	jle	.LBB1_22
# BB#16:                                # %for.body.lr.ph
	leal	-1(%rsi), %r8d
	xorl	%edx, %edx
	testb	$1, %sil
	je	.LBB1_18
# BB#17:                                # %for.body.prol
	movl	%r8d, %ecx
	imull	%eax, %ecx
	movl	%ecx, 212(%rsp)
	movl	%eax, 208(%rsp)
	movl	$0, 216(%rsp)
	movl	$1, %edx
.LBB1_18:                               # %for.body.lr.ph.split
	testl	%r8d, %r8d
	je	.LBB1_21
# BB#19:                                # %for.body.lr.ph.split.split
	movl	%r8d, %r10d
	subl	%edx, %r10d
	imull	%eax, %r10d
	leal	(%rax,%rax), %r9d
	leaq	1(%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rbp
	leaq	216(%rsp,%rbp,4), %rbp
	subl	%ecx, %r8d
	imull	%eax, %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rcx), %ebx
	movl	%ebx, -16(%rbp)
	movl	%eax, -20(%rbp)
	movl	%edx, -12(%rbp)
	leal	1(%rdx), %ebx
	leal	(%r8,%rcx), %edi
	movl	%edi, -4(%rbp)
	movl	%eax, -8(%rbp)
	movl	%ebx, (%rbp)
	addq	$2, %rdx
	subl	%r9d, %ecx
	addq	$24, %rbp
	cmpl	%esi, %edx
	jne	.LBB1_20
.LBB1_21:                               # %for.cond.for.end_crit_edge
	movl	208(%rsp), %ebx
.LBB1_22:                               # %for.end
	leaq	208(%rsp), %rdx
	movq	%r15, %rdi
	callq	gdev_mem_set_planar
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB1_61
# BB#23:                                # %for.end.if.end.145_crit_edge
	shrl	$31, %esi
	xorl	$1, %esi
	movq	192(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ebx
	addl	$63, %ebx
	sarl	$6, %ebx
	shll	$3, %ebx
	movq	992(%rsp), %r15
	movl	%esi, 132(%rsp)         # 4-byte Spill
	jmp	.LBB1_24
.LBB1_14:
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
.LBB1_24:                               # %if.end.145
	movl	%ebx, 148(%rsp)         # 4-byte Spill
	movq	%r15, %rdi
	callq	*1144(%r15)
	movl	%eax, %esi
	movq	992(%rsp), %rax
	movl	$1, 84(%rax)
	testl	%esi, %esi
	js	.LBB1_61
# BB#25:                                # %if.end.150
	movl	1120(%rsp), %eax
	movzbl	%al, %r8d
	movl	%eax, %edi
	andl	$256, %edi              # imm = 0x100
	je	.LBB1_30
# BB#26:                                # %land.lhs.true.i
	leal	(,%r8,4), %edx
	xorl	%eax, %edx
	andl	$204, %edx
	je	.LBB1_30
# BB#27:                                # %cond.true.i
	movl	$51, %ecx
	testb	$2, %ah
	je	.LBB1_29
# BB#28:                                # %land.rhs.i
	movl	%r8d, %ecx
	shll	$4, %ecx
	xorl	%eax, %ecx
	testb	$-16, %cl
	movl	$3, %edi
	movl	$51, %ecx
	cmovnel	%edi, %ecx
.LBB1_29:                               # %gs_transparent_rop.exit.thread
	movl	%ecx, %edi
	andl	%eax, %edi
	andl	$32, %ecx
	xorl	$168, %ecx
	orl	%edi, %ecx
	addl	%ecx, %ecx
	jmp	.LBB1_34
.LBB1_30:                               # %cond.false.i
	movl	%eax, %ebp
	andl	$512, %ebp              # imm = 0x200
	movl	$255, %ecx
	je	.LBB1_32
# BB#31:                                # %land.rhs.11.i
	movl	%r8d, %ecx
	shll	$4, %ecx
	xorl	%eax, %ecx
	testb	$-16, %cl
	movl	$207, %edx
	movl	$255, %ecx
	cmovnel	%edx, %ecx
.LBB1_32:                               # %gs_transparent_rop.exit
	movl	%ecx, %edx
	andl	%eax, %edx
	notl	%ecx
	andl	$32, %ecx
	orl	%edx, %ecx
	addl	%ecx, %ecx
	testl	%edi, %edi
	je	.LBB1_38
# BB#33:                                # %gs_transparent_rop.exit.land.lhs.true.i.175_crit_edge
	leal	(,%r8,4), %edx
	xorl	%eax, %edx
	andl	$204, %edx
.LBB1_34:                               # %land.lhs.true.i.175
	movl	%eax, %ebp
	andl	$512, %ebp              # imm = 0x200
	testl	%edx, %edx
	je	.LBB1_38
# BB#35:                                # %cond.true.i.178
	movl	%esi, %r12d
	movq	%r13, %r15
	movl	$51, %edx
	testl	%ebp, %ebp
	jne	.LBB1_37
# BB#36:
	movl	%eax, %esi
	jmp	.LBB1_42
.LBB1_38:                               # %cond.false.i.187
	movl	%esi, %r12d
	movq	%r13, %r15
	movl	$255, %edx
	testl	%ebp, %ebp
	je	.LBB1_39
# BB#40:                                # %land.rhs.11.i.193
	shll	$4, %r8d
	movl	%eax, %esi
	xorl	%esi, %r8d
	testb	$-16, %r8b
	movl	$207, %eax
	movl	$255, %edx
	jmp	.LBB1_41
.LBB1_5:
	xorl	%esi, %esi
	jmp	.LBB1_61
.LBB1_10:                               # %if.then.66
	addl	%ebp, %eax
	imull	172(%rsp), %ebp         # 4-byte Folded Reload
	movslq	%ebp, %rdx
	subq	%rdx, %r15
	jmp	.LBB1_11
.LBB1_39:
	movl	%eax, %esi
	jmp	.LBB1_42
.LBB1_37:                               # %land.rhs.i.184
	shll	$4, %r8d
	movl	%eax, %esi
	xorl	%esi, %r8d
	testb	$-16, %r8b
	movl	$3, %eax
	movl	$51, %edx
.LBB1_41:                               # %gs_transparent_rop.exit197
	cmovnel	%eax, %edx
.LBB1_42:                               # %gs_transparent_rop.exit197
	movl	%edx, %eax
	andl	%esi, %eax
	notl	%edx
	andl	$168, %edx
	orl	%eax, %edx
	xorl	%ecx, %edx
	xorl	%eax, %eax
	testb	$-86, %dl
	je	.LBB1_44
# BB#43:                                # %if.then.156
	movq	200(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ebx
	movl	$.L.str, %edx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	callq	*64(%rdi)
	movl	$-25, %ebp
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB1_60
.LBB1_44:                               # %if.end.164
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	1104(%rsp), %eax
	movq	152(%rsp), %rdx         # 8-byte Reload
	movl	%edx, 976(%rsp)
	movq	192(%rsp), %rcx         # 8-byte Reload
	leal	(%rdx,%rcx), %ecx
	movl	%ecx, 984(%rsp)
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	leal	(%rsi,%rcx), %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	leal	(%rax,%rdx), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movq	%rdx, %r14
	movl	%ecx, %ebx
	movq	%rcx, %r13
	movq	%r15, %rbp
	movq	96(%rsp), %r15          # 8-byte Reload
	movl	%r12d, %eax
	.align	16, 0x90
.LBB1_45:                               # %for.cond.168
                                        # =>This Inner Loop Header: Depth=1
	movl	112(%rsp), %edx         # 4-byte Reload
	subl	%ebx, %edx
	jle	.LBB1_59
# BB#46:                                # %for.body.172
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	200(%rsp), %rcx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovgl	%edx, %ecx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leal	(%rcx,%rbx), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movq	120(%rsp), %r12         # 8-byte Reload
	testq	%r12, %r12
	movl	%ebx, 980(%rsp)
	movl	%eax, 988(%rsp)
	je	.LBB1_50
# BB#47:                                # %if.then.187
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	%r15, %r13
	movq	%r14, %r15
	movq	$359743249, 208(%rsp)   # imm = 0x15713F11
	movq	%r12, 216(%rsp)
	movl	$0, 728(%rsp)
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	leaq	976(%rsp), %rsi
	leaq	208(%rsp), %rdx
	callq	*1448(%rbp)
	movq	%rbp, %r14
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_48
# BB#49:                                # %cleanup.204
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	992(%rsp), %rdi
	movq	216(%rsp), %rsi
	movl	728(%rsp), %edx
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	148(%rsp), %ecx         # 4-byte Reload
	callq	*1224(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	movq	%r14, %rbp
	movq	%r15, %r14
	movq	%r13, %r15
	movq	176(%rsp), %r13         # 8-byte Reload
	js	.LBB1_61
.LBB1_50:                               # %if.end.207
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	%rbp, %r12
	movq	992(%rsp), %rdi
	movl	1128(%rsp), %edx
	movl	%ebx, %eax
	subl	%r13d, %eax
	testl	%edx, %edx
	je	.LBB1_51
# BB#52:                                # %if.else.220
                                        #   in Loop: Header=BB1_45 Depth=1
	movl	172(%rsp), %ecx         # 4-byte Reload
	imull	%ecx, %eax
	leaq	(%rax,%r15), %rsi
	movl	1112(%rsp), %eax
	leal	(%rbx,%rax), %eax
	movl	%edx, 72(%rsp)
	movl	1120(%rsp), %edx
	movl	%edx, 64(%rsp)
	movl	%eax, 56(%rsp)
	movl	108(%rsp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 40(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 32(%rsp)
	movq	1064(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	1056(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	xorl	%r8d, %r8d
	movl	188(%rsp), %edx         # 4-byte Reload
	movq	160(%rsp), %r9          # 8-byte Reload
	callq	*1696(%rdi)
	jmp	.LBB1_53
	.align	16, 0x90
.LBB1_51:                               # %if.then.210
                                        #   in Loop: Header=BB1_45 Depth=1
	movl	172(%rsp), %ecx         # 4-byte Reload
	imull	%ecx, %eax
	leaq	(%rax,%r15), %rsi
	movl	1112(%rsp), %eax
	leal	(%rbx,%rax), %eax
	movl	1120(%rsp), %edx
	movl	%edx, 64(%rsp)
	movl	%eax, 56(%rsp)
	movl	108(%rsp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 40(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 32(%rsp)
	movq	1064(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	1056(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	xorl	%r8d, %r8d
	movl	188(%rsp), %edx         # 4-byte Reload
	movq	160(%rsp), %r9          # 8-byte Reload
	callq	*1424(%rdi)
.LBB1_53:                               # %if.end.229
                                        #   in Loop: Header=BB1_45 Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	132(%rsp), %eax         # 4-byte Reload
	js	.LBB1_54
# BB#55:                                # %if.end.233
                                        #   in Loop: Header=BB1_45 Depth=1
	testl	%eax, %eax
	je	.LBB1_57
# BB#56:                                # %if.then.235
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	992(%rsp), %rax
	movq	2576(%rax), %rax
	movq	(%rax), %rsi
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r12, %rbp
	movq	%rbp, %rdi
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%r14d, %r9d
	callq	*1672(%rbp)
	jmp	.LBB1_58
	.align	16, 0x90
.LBB1_57:                               # %if.else.239
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	992(%rsp), %rax
	movq	2576(%rax), %rax
	movq	(%rax), %rsi
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r12, %rbp
	movq	%rbp, %rdi
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%r14d, %r9d
	callq	*1224(%rbp)
.LBB1_58:                               # %if.end.245
                                        #   in Loop: Header=BB1_45 Depth=1
	testl	%eax, %eax
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %ebx
	jns	.LBB1_45
.LBB1_59:
	movq	120(%rsp), %rsi         # 8-byte Reload
	movl	%eax, %ebp
	jmp	.LBB1_60
.LBB1_54:
	movq	120(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_60
.LBB1_48:                               # %cleanup.204.thread
	movq	%r12, %rsi
.LBB1_60:                               # %out
	movl	$.L.str, %edx
	movq	136(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
	movq	992(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_device_retain
	movl	%ebp, %esi
.LBB1_61:                               # %cleanup.254
	movl	%esi, %eax
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_default_strip_copy_rop2, .Lfunc_end1-gx_default_strip_copy_rop2
	.cfi_endproc

	.globl	gs_transparent_rop
	.align	16, 0x90
	.type	gs_transparent_rop,@function
gs_transparent_rop:                     # @gs_transparent_rop
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %ecx
	movzbl	%cl, %edx
	testb	$1, %ch
	je	.LBB2_4
# BB#1:                                 # %land.lhs.true
	leal	(,%rdx,4), %eax
	xorl	%ecx, %eax
	testb	$-52, %al
	je	.LBB2_4
# BB#2:                                 # %cond.true
	movl	$51, %eax
	testb	$2, %ch
	je	.LBB2_7
# BB#3:                                 # %land.rhs
	shll	$4, %edx
	xorl	%ecx, %edx
	testb	$-16, %dl
	movl	$3, %edx
	movl	$51, %eax
	jmp	.LBB2_6
.LBB2_4:                                # %cond.false
	movl	$255, %eax
	testb	$2, %ch
	je	.LBB2_7
# BB#5:                                 # %land.rhs.11
	shll	$4, %edx
	xorl	%ecx, %edx
	testb	$-16, %dl
	movl	$207, %edx
	movl	$255, %eax
.LBB2_6:                                # %cond.end
	cmovnel	%edx, %eax
.LBB2_7:                                # %cond.end
	andl	%eax, %ecx
	notl	%eax
	andl	$168, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end2:
	.size	gs_transparent_rop, .Lfunc_end2-gs_transparent_rop
	.cfi_endproc

	.globl	mem_default_strip_copy_rop2
	.align	16, 0x90
	.type	mem_default_strip_copy_rop2,@function
mem_default_strip_copy_rop2:            # @mem_default_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movl	$.L.str.1, %esi
	movl	$606, %edx              # imm = 0x25E
	callq	dmprintf_file_and_line
	movq	24(%rbx), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-100, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	mem_default_strip_copy_rop2, .Lfunc_end3-mem_default_strip_copy_rop2
	.cfi_endproc

	.globl	mem_default_strip_copy_rop
	.align	16, 0x90
	.type	mem_default_strip_copy_rop,@function
mem_default_strip_copy_rop:             # @mem_default_strip_copy_rop
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
	subq	$5880, %rsp             # imm = 0x16F8
.Ltmp32:
	.cfi_def_cfa_offset 5936
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
	movq	%r9, 240(%rsp)          # 8-byte Spill
	movl	%ecx, 252(%rsp)         # 4-byte Spill
	movl	%edx, 216(%rsp)         # 4-byte Spill
	movq	%rsi, 256(%rsp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	5936(%rsp), %rcx
	movzwl	108(%r12), %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movb	$1, %r15b
	cmpl	$1, 100(%r12)
	jg	.LBB4_2
# BB#1:                                 # %lor.rhs
	movzbl	110(%r12), %eax
	cmpl	$255, %eax
	sete	%r15b
.LBB4_2:                                # %lor.end
	movl	6000(%rsp), %ebp
	testb	%r15b, %r15b
	movl	$24, %eax
	movl	$8, %ebx
	cmovnel	%eax, %ebx
	movl	%ebp, %r13d
	testq	%rcx, %rcx
	je	.LBB4_3
# BB#4:                                 # %land.rhs
	cmpl	$1, 40(%rcx)
	setg	%al
	jmp	.LBB4_5
.LBB4_3:
	xorl	%eax, %eax
.LBB4_5:                                # %land.end
	testb	%al, %al
	movl	$359808785, %eax        # imm = 0x15723F11
	movl	$359743249, %r14d       # imm = 0x15713F11
	cmovneq	%rax, %r14
	movzbl	%r15b, %ebp
	movq	24(%r12), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	%ebx, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, %r10
	movl	%r13d, %edx
	movzbl	%dl, %eax
	testb	$1, %dh
	je	.LBB4_9
# BB#6:                                 # %land.lhs.true.i
	leal	(,%rax,4), %ecx
	xorl	%edx, %ecx
	testb	$-52, %cl
	je	.LBB4_9
# BB#7:                                 # %cond.true.i
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movl	$51, %r9d
	testb	$2, %dh
	je	.LBB4_12
# BB#8:                                 # %land.rhs.i
	shll	$4, %eax
	xorl	%edx, %eax
	testb	$-16, %al
	movl	$3, %eax
	movl	$51, %r9d
	jmp	.LBB4_11
.LBB4_9:                                # %cond.false.i
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movl	$255, %r9d
	testb	$2, %dh
	je	.LBB4_12
# BB#10:                                # %land.rhs.11.i
	shll	$4, %eax
	xorl	%edx, %eax
	testb	$-16, %al
	movl	$207, %eax
	movl	$255, %r9d
.LBB4_11:                               # %gs_transparent_rop.exit
	cmovnel	%eax, %r9d
.LBB4_12:                               # %gs_transparent_rop.exit
	movl	%ebx, 276(%rsp)         # 4-byte Spill
	movl	%edx, %r13d
	cmpl	$0, 848(%r12)
	je	.LBB4_14
# BB#13:                                # %lor.lhs.false
	movl	$pack_planar_from_standard, %r8d
	cmpl	$1, 100(%r12)
	jg	.LBB4_17
.LBB4_14:                               # %if.then
	testb	%r15b, %r15b
	je	.LBB4_16
# BB#15:                                # %land.lhs.true
	movl	$8, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	%r9d, %ebx
	movq	%r10, %rbp
	callq	*1664(%r12)
	movq	%rbp, %r10
	movl	%ebx, %r9d
	movl	$pack_cmyk_1bit_from_standard, %r8d
	testl	%eax, %eax
	jg	.LBB4_17
.LBB4_16:                               # %if.else
	movl	$pack_from_standard, %r8d
.LBB4_17:                               # %if.end.47
	movl	$-15, %eax
	testq	%r10, %r10
	je	.LBB4_89
# BB#18:                                # %if.end.51
	movl	5968(%rsp), %edi
	movl	5976(%rsp), %eax
	movl	5960(%rsp), %ecx
	movl	5952(%rsp), %ebp
	movl	%ecx, %edx
	orl	%ebp, %edx
	cmpq	$0, 256(%rsp)           # 8-byte Folded Reload
	je	.LBB4_19
# BB#25:                                # %do.body.106
	testl	%edx, %edx
	js	.LBB4_27
# BB#26:
	movl	%edi, %edx
	movl	%ecx, %edi
	jmp	.LBB4_30
.LBB4_19:                               # %do.body.56
	testl	%edx, %edx
	js	.LBB4_21
# BB#20:
	movl	%edi, %edx
	jmp	.LBB4_22
.LBB4_27:                               # %if.then.110
	movl	%ebp, %esi
	sarl	$31, %esi
	andl	%ebp, %esi
	leal	(%rsi,%rdi), %edx
	xorl	%edi, %edi
	testl	%ebp, %ebp
	cmovsl	%edi, %ebp
	subl	%esi, 216(%rsp)         # 4-byte Folded Spill
	testl	%ecx, %ecx
	js	.LBB4_29
# BB#28:
	movl	%ecx, %edi
	jmp	.LBB4_30
.LBB4_21:                               # %if.then.60
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%ebp, %edx
	addl	%edi, %edx
	xorl	%esi, %esi
	testl	%ebp, %ebp
	cmovsl	%esi, %ebp
	movl	%ecx, %edi
	sarl	$31, %edi
	andl	%ecx, %edi
	addl	%edi, %eax
	testl	%ecx, %ecx
	cmovsl	%esi, %ecx
.LBB4_22:                               # %do.body.72
	movl	%ecx, %edi
	movl	832(%r12), %ebx
	movl	836(%r12), %r15d
	subl	%ebp, %ebx
	cmpl	%ebx, %edx
	cmovlel	%edx, %ebx
	subl	%edi, %r15d
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	xorl	%eax, %eax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB4_23
# BB#24:                                # %do.body.72
	movq	%rbp, 264(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	movl	$0, %eax
	jg	.LBB4_32
	jmp	.LBB4_89
.LBB4_23:
	xorl	%eax, %eax
	jmp	.LBB4_89
.LBB4_29:                               # %if.then.119
	addl	%ecx, %eax
	imull	252(%rsp), %ecx         # 4-byte Folded Reload
	movslq	%ecx, %rcx
	subq	%rcx, 256(%rsp)         # 8-byte Folded Spill
.LBB4_30:                               # %if.end.123
	movl	832(%r12), %ebx
	movl	836(%r12), %r15d
	subl	%ebp, %ebx
	cmpl	%ebx, %edx
	cmovlel	%edx, %ebx
	subl	%edi, %r15d
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB4_89
# BB#31:                                # %if.end.123
	movq	%rbp, 264(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	jle	.LBB4_89
.LBB4_32:                               # %if.end.151
	movl	%r9d, %eax
	notl	%eax
	movl	%r13d, %ebp
	andl	%ebp, %r9d
	andl	$168, %eax
	orl	%r9d, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leal	(,%rax,4), %r13d
	movl	%eax, %ecx
	shll	$4, %ecx
	xorl	%eax, %r13d
	xorl	%eax, %ecx
	andl	$204, %r13d
	andl	$240, %ecx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	setne	%cl
	testl	%r13d, %r13d
	setne	224(%rsp)               # 1-byte Folded Spill
	movl	%ebx, %esi
	imull	276(%rsp), %esi         # 4-byte Folded Reload
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	divl	%esi
	movq	5944(%rsp), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	$1, %ebp
	cmovnel	%eax, %ebp
	cmpl	%ebp, %r15d
	cmovlel	%r15d, %ebp
	cmpq	$0, 240(%rsp)           # 8-byte Folded Reload
	sete	182(%rsp)               # 1-byte Folded Spill
	testq	%rdx, %rdx
	sete	%al
	andb	%cl, %al
	movb	%al, 183(%rsp)          # 1-byte Spill
	movq	$359743249, 824(%rsp)   # imm = 0x15713F11
	movq	%r14, 288(%rsp)
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB4_33
# BB#34:                                # %if.then.173
	movl	%r9d, 132(%rsp)         # 4-byte Spill
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movq	%r8, 144(%rsp)          # 8-byte Spill
	movq	5936(%rsp), %rax
	movl	16(%rax), %eax
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	jmp	.LBB4_35
.LBB4_33:
	movl	%r9d, 132(%rsp)         # 4-byte Spill
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movq	%r8, 144(%rsp)          # 8-byte Spill
.LBB4_35:                               # %if.end.181
	leaq	3088(%rsp), %r14
	movl	$-1, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r10, %rsi
	movq	200(%rsp), %rdx         # 8-byte Reload
	callq	gs_make_mem_device
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gx_device_retain
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movl	%ebx, 3920(%rsp)
	movl	%ebp, 3924(%rsp)
	movl	276(%rsp), %eax         # 4-byte Reload
	shrl	$3, %eax
	movl	%eax, 3188(%rsp)
	leaq	2920(%rsp), %rcx
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	movq	%rbp, %r14
	callq	gdev_mem_data_size
	testl	%eax, %eax
	js	.LBB4_39
# BB#36:                                # %if.end.181
	cmpq	$160, 2920(%rsp)
	ja	.LBB4_39
# BB#37:                                # %if.then.193
	leaq	2928(%rsp), %rax
	movq	%rax, 4832(%rsp)
	movq	3920(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	leaq	3088(%rsp), %rdi
	leaq	2920(%rsp), %rcx
	callq	gdev_mem_bits_size
	testl	%eax, %eax
	js	.LBB4_89
# BB#38:                                # %if.end.200
	movq	4832(%rsp), %rax
	addq	2920(%rsp), %rax
	movq	%rax, 5664(%rsp)
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.203
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	%rax, 4840(%rsp)
.LBB4_40:                               # %if.end.204
	movl	220(%rsp), %ebp         # 4-byte Reload
	leaq	3088(%rsp), %rdi
	callq	*4232(%rsp)
	testl	%eax, %eax
	js	.LBB4_89
# BB#41:                                # %do.body.211
	movl	5968(%rsp), %esi
	imull	%ebp, %esi
	addl	$63, %esi
	sarl	$6, %esi
	shll	$3, %esi
	imull	%r14d, %esi
	cmpl	$129, %esi
	jae	.LBB4_43
# BB#42:
	movl	%eax, 196(%rsp)         # 4-byte Spill
	leaq	2784(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jmp	.LBB4_44
.LBB4_43:                               # %if.else.218
	movl	%eax, 196(%rsp)         # 4-byte Spill
	movl	$.L.str, %edx
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*64(%rdi)
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB4_88
.LBB4_44:                               # %do.end.227
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movb	224(%rsp), %al          # 1-byte Reload
	andb	%al, 182(%rsp)          # 1-byte Folded Spill
	je	.LBB4_48
# BB#45:                                # %if.then.229
	movl	124(%rsp), %eax         # 4-byte Reload
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	%r14d, %esi
	movq	%r14, %rbx
	imull	%eax, %esi
	cmpl	$129, %esi
	jae	.LBB4_47
# BB#46:
	leaq	2656(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rbx, %r14
	jmp	.LBB4_48
.LBB4_47:                               # %if.else.242
	movl	$.L.str.3, %edx
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*64(%rdi)
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	movq	%rbx, %r14
	je	.LBB4_85
.LBB4_48:                               # %if.end.256
	cmpq	$0, 240(%rsp)           # 8-byte Folded Reload
	je	.LBB4_49
# BB#50:                                # %if.end.256
	testl	%r13d, %r13d
	je	.LBB4_49
# BB#51:                                # %if.then.260
	movq	%r14, 208(%rsp)         # 8-byte Spill
	leaq	2512(%rsp), %rbx
	movq	%r12, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	240(%rsp), %rdx         # 8-byte Reload
	movl	276(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %ecx
	callq	unpack_colors_to_standard
	movq	%rbx, 240(%rsp)         # 8-byte Spill
	movq	5936(%rsp), %r12
	jmp	.LBB4_52
.LBB4_49:
	movq	%r14, 208(%rsp)         # 8-byte Spill
	movq	%r12, %r13
	movq	5936(%rsp), %r12
	movl	276(%rsp), %r14d        # 4-byte Reload
.LBB4_52:                               # %if.end.263
	xorl	%ecx, %ecx
	cmpb	$0, 183(%rsp)           # 1-byte Folded Reload
	movq	%r12, 136(%rsp)         # 8-byte Spill
	je	.LBB4_59
# BB#53:                                # %if.then.265
	movzwl	32(%r12), %ebx
	imull	%r14d, %ebx
	addl	$63, %ebx
	shrl	$3, %ebx
	andl	$536870904, %ebx        # imm = 0x1FFFFFF8
	movl	%ebx, %esi
	movq	208(%rsp), %rax         # 8-byte Reload
	imull	%eax, %esi
	cmpl	$129, %esi
	jae	.LBB4_55
# BB#54:
	leaq	2528(%rsp), %rax
	jmp	.LBB4_56
.LBB4_55:                               # %if.else.279
	movl	$.L.str.4, %edx
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*64(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB4_82
.LBB4_56:                               # %do.end.292
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movaps	%xmm2, 2480(%rsp)
	movaps	%xmm1, 2464(%rsp)
	movaps	%xmm0, 2448(%rsp)
	movq	%rax, 2448(%rsp)
	movq	%rax, %rdx
	movl	%ebx, 2456(%rsp)
	movl	2480(%rsp), %eax
	movzwl	%ax, %ecx
	movl	%ecx, 2460(%rsp)
	movq	$0, 2472(%rsp)
	shrl	$16, %eax
	leaq	2448(%rsp), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	cmpl	%eax, 2464(%rsp)
	jle	.LBB4_58
# BB#57:                                # %if.then.303
	movl	%eax, 2464(%rsp)
.LBB4_58:                               # %if.end.309
	movq	%rdx, %rcx
.LBB4_59:                               # %if.end.309
	movq	232(%rsp), %rax         # 8-byte Reload
	leaq	290523154(%rax,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cmpq	$0, 5944(%rsp)
	je	.LBB4_60
# BB#61:                                # %if.end.309
	cmpl	$0, 128(%rsp)           # 4-byte Folded Reload
	je	.LBB4_60
# BB#62:                                # %if.then.313
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	2496(%rsp), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	5944(%rsp), %rdx
	movl	%r14d, %ecx
	callq	unpack_colors_to_standard
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	jmp	.LBB4_63
.LBB4_60:
	movq	%rcx, 96(%rsp)          # 8-byte Spill
.LBB4_63:                               # %if.end.316
	movq	264(%rsp), %rdx         # 8-byte Reload
	movl	132(%rsp), %ecx         # 4-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1360(%rsp)
	movl	$0, 1880(%rsp)
	movl	%edx, 2432(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %eax
	movl	%eax, 2440(%rsp)
	testl	%r15d, %r15d
	jle	.LBB4_78
# BB#64:                                # %for.body.lr.ph
	addl	%ecx, %ecx
	movq	184(%rsp), %rax         # 8-byte Reload
	xorl	%ecx, %eax
	andl	$170, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	160(%rsp), %rax         # 8-byte Reload
	leal	(%r15,%rax), %edx
	movl	%edx, 128(%rsp)         # 4-byte Spill
	movl	5984(%rsp), %ecx
	movq	264(%rsp), %rsi         # 8-byte Reload
	addl	%esi, %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movl	%eax, %r15d
	.align	16, 0x90
.LBB4_65:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_76 Depth 2
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, %ebx
	movq	160(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %ebx
	imull	252(%rsp), %ebx         # 4-byte Folded Reload
	movl	%edx, %esi
	subl	%r15d, %esi
	cmpl	%esi, %eax
	cmovlel	%eax, %esi
	movl	%r15d, 2436(%rsp)
	cmpb	$0, 183(%rsp)           # 1-byte Folded Reload
	je	.LBB4_67
# BB#66:                                # %if.then.339
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	5992(%rsp), %eax
	leal	(%r15,%rax), %eax
	movzwl	2482(%rsp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r14d
	movl	2464(%rsp), %r12d
	subl	%r14d, %r12d
	cmpl	%r12d, %esi
	cmovlel	%esi, %r12d
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	leal	(%r12,%r15), %eax
	movl	%eax, 2444(%rsp)
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 1368(%rsp)
	movq	5936(%rsp), %rax
	movq	%rax, %rsi
	movzwl	32(%rsi), %edx
	movl	8(%rsi), %eax
	movl	%eax, %ecx
	imull	%r14d, %ecx
	movslq	%ecx, %rcx
	addq	(%rsi), %rcx
	movl	%eax, 8(%rsp)
	movq	%rcx, (%rsp)
	movl	$0, %esi
	movq	%r13, %rdi
	movl	%r12d, %ecx
	leaq	1360(%rsp), %r8
	leaq	288(%rsp), %r9
	callq	gx_get_bits_copy
	movslq	2456(%rsp), %rax
	movslq	%r14d, %rcx
	movq	%r12, %r14
	imulq	%rax, %rcx
	movq	%rbp, %rax
	subq	%rcx, %rax
	movq	%rax, 2448(%rsp)
	jmp	.LBB4_68
	.align	16, 0x90
.LBB4_67:                               # %if.else.374
                                        #   in Loop: Header=BB4_65 Depth=1
	leal	(%rsi,%r15), %eax
	movl	%eax, 2444(%rsp)
	movl	%esi, %r14d
	movq	%rsi, 208(%rsp)         # 8-byte Spill
.LBB4_68:                               # %if.end.378
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	184(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB4_70
# BB#69:                                # %if.then.380
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1896(%rsp)
	movq	5664(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 1904(%rsp)
	movl	$0, 2416(%rsp)
	movl	4824(%rsp), %eax
	movl	%eax, 2424(%rsp)
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	leaq	2432(%rsp), %rsi
	leaq	1896(%rsp), %rdx
	callq	*1448(%r13)
	movl	%eax, 196(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	js	.LBB4_78
.LBB4_70:                               # %if.end.395
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	256(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rsi
	cmpb	$0, 182(%rsp)           # 1-byte Folded Reload
	je	.LBB4_71
# BB#72:                                # %if.then.397
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rbp
	movq	%rbp, 1368(%rsp)
	movl	252(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	%r13, %rdi
	movl	216(%rsp), %esi         # 4-byte Reload
	movq	168(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %edx
	movl	%r14d, %ecx
	leaq	1360(%rsp), %r8
	leaq	824(%rsp), %r9
	callq	gx_get_bits_copy
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movl	124(%rsp), %ecx         # 4-byte Reload
	movl	220(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB4_73
	.align	16, 0x90
.LBB4_71:                               #   in Loop: Header=BB4_65 Depth=1
	movl	216(%rsp), %edx         # 4-byte Reload
	movl	252(%rsp), %ecx         # 4-byte Reload
	movl	220(%rsp), %r12d        # 4-byte Reload
	movq	168(%rsp), %rbx         # 8-byte Reload
.LBB4_73:                               # %if.end.401
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	5992(%rsp), %eax
	leal	(%r15,%rax), %eax
	movl	6000(%rsp), %edi
	movl	%edi, 64(%rsp)
	movl	%eax, 56(%rsp)
	movl	132(%rsp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movl	%r14d, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	xorl	%r8d, %r8d
	leaq	3088(%rsp), %rdi
	movq	240(%rsp), %r9          # 8-byte Reload
	callq	*4512(%rsp)
	movl	%eax, 196(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	js	.LBB4_78
# BB#74:                                # %if.end.410
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	%r15, 232(%rsp)         # 8-byte Spill
	testl	%r14d, %r14d
	movq	%r14, 224(%rsp)         # 8-byte Spill
	movq	%r13, %rsi
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	movq	%rbx, %rbp
	movl	276(%rsp), %ecx         # 4-byte Reload
	movl	%r12d, %r9d
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	264(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdx
	jle	.LBB4_77
# BB#75:                                # %for.body.416.lr.ph
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	5664(%rsp), %rax
	movq	(%rax), %r14
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r12d
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	.align	16, 0x90
.LBB4_76:                               # %for.body.416
                                        #   Parent Loop BB4_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, (%rsp)
	movq	280(%rsp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	movq	%r14, %rcx
	movq	%rbp, %r13
	movl	%r13d, %r8d
	movl	%r9d, %ebp
	callq	*%r15
	movq	264(%rsp), %rdx         # 8-byte Reload
	movl	%ebp, %r9d
	movl	276(%rsp), %ecx         # 4-byte Reload
	movq	%r13, %rbp
	movq	280(%rsp), %rsi         # 8-byte Reload
	movl	4824(%rsp), %eax
	addq	%rax, %r14
	incl	%r12d
	decl	%ebx
	jne	.LBB4_76
.LBB4_77:                               # %for.inc.426
                                        #   in Loop: Header=BB4_65 Depth=1
	movq	%rsi, %r13
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	addl	%eax, %ecx
	movl	128(%rsp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	movl	%ecx, %r15d
	jg	.LBB4_65
.LBB4_78:                               # %out
	movq	96(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB4_81
# BB#79:                                # %out
	leaq	2528(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB4_81
# BB#80:                                # %if.then.435
	movl	$.L.str.4, %edx
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
.LBB4_81:                               # %if.end.437
	movl	196(%rsp), %ebp         # 4-byte Reload
.LBB4_82:                               # %if.end.437
	movq	104(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB4_85
# BB#83:                                # %if.end.437
	leaq	2656(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB4_85
# BB#84:                                # %if.then.444
	movl	$.L.str.3, %edx
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
.LBB4_85:                               # %if.end.447
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB4_88
# BB#86:                                # %if.end.447
	leaq	2784(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB4_88
# BB#87:                                # %if.then.454
	movl	$.L.str, %edx
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
.LBB4_88:                               # %if.end.457
	leaq	3088(%rsp), %rdi
	callq	*4264(%rsp)
	movl	%ebp, %eax
.LBB4_89:                               # %cleanup.460
	addq	$5880, %rsp             # imm = 0x16F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mem_default_strip_copy_rop, .Lfunc_end4-mem_default_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	pack_cmyk_1bit_from_standard,@function
pack_cmyk_1bit_from_standard:           # @pack_cmyk_1bit_from_standard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movslq	%esi, %rax
	movq	2576(%rdi), %rsi
	movl	%edx, %edi
	sarl	%edi
	movslq	%edi, %r10
	addq	(%rsi,%rax,8), %r10
	xorl	%r9d, %r9d
	andl	$1, %edx
	movl	$0, %edi
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movb	(%r10), %r9b
	andb	$-16, %r9b
	movl	%edx, %edi
.LBB5_2:                                # %for.cond.preheader
	testl	%r8d, %r8d
	jle	.LBB5_13
# BB#3:                                 # %for.body.preheader
	leal	1(%r8), %r14d
	.align	16, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r11d
	movzbl	(%rcx), %esi
	movzbl	1(%rcx), %edi
	movl	%edi, %ebp
	orl	%esi, %ebp
	movzbl	2(%rcx), %eax
	movl	$1, %ebx
	movb	%al, %dl
	orb	%bpl, %dl
	je	.LBB5_6
# BB#5:                                 # %cond.true.14
                                        #   in Loop: Header=BB5_4 Depth=1
	shrl	$4, %esi
	andl	$8, %esi
	shrl	$5, %edi
	andl	$4, %edi
	orl	%esi, %edi
	shrl	$6, %eax
	andl	$2, %eax
	orl	%edi, %eax
	xorl	$14, %eax
	movl	%eax, %ebx
.LBB5_6:                                # %cond.end.27
                                        #   in Loop: Header=BB5_4 Depth=1
	testl	%r11d, %r11d
	je	.LBB5_7
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	movzbl	%r9b, %eax
	orl	%eax, %ebx
	movb	%bl, (%r10)
	incq	%r10
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_7:                                # %if.then
                                        #   in Loop: Header=BB5_4 Depth=1
	shll	$4, %ebx
	movb	%bl, %r9b
.LBB5_9:                                # %if.end
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	%r11d, %edi
	xorl	$1, %edi
	decl	%r14d
	addq	$3, %rcx
	cmpl	$1, %r14d
	jg	.LBB5_4
# BB#10:                                # %for.end
	testl	%r8d, %r8d
	jle	.LBB5_13
# BB#11:                                # %for.end
	cmpl	$1, %r11d
	je	.LBB5_13
# BB#12:                                # %if.then.41
	movb	(%r10), %al
	andb	$15, %al
	orb	%r9b, %al
	movb	%al, (%r10)
.LBB5_13:                               # %if.end.47
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pack_cmyk_1bit_from_standard, .Lfunc_end5-pack_cmyk_1bit_from_standard
	.cfi_endproc

	.align	16, 0x90
	.type	pack_from_standard,@function
pack_from_standard:                     # @pack_from_standard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 144
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movq	%rcx, %r10
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movslq	%esi, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %rbp
	movl	$map_rgb_to_color_via_cmyk, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	$4, 100(%rdi)
	je	.LBB6_2
# BB#1:                                 # %cond.false
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	1184(%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB6_2:                                # %cond.end
	imull	%r9d, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %rbp
	movl	%edx, %eax
	andl	$7, %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	andl	$7, %edx
	je	.LBB6_3
# BB#4:                                 # %cond.false.3
	movzbl	(%rbp), %eax
	movl	$65280, %edx            # imm = 0xFF00
	shrl	%cl, %edx
	andl	%eax, %edx
	movl	%edx, 16(%rsp)          # 4-byte Spill
	jmp	.LBB6_5
.LBB6_3:
	movl	$0, 16(%rsp)            # 4-byte Folded Spill
.LBB6_5:                                # %for.cond.preheader
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jle	.LBB6_32
# BB#6:                                 # %for.body.lr.ph.lr.ph
	movl	12(%rsp), %r8d          # 4-byte Reload
.LBB6_7:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #       Child Loop BB6_12 Depth 3
	movl	%r8d, %eax
	.align	16, 0x90
.LBB6_8:                                # %for.body
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_12 Depth 3
	movb	(%r10), %r15b
	movzbl	%r15b, %edx
	cmpl	$9, 144(%rsp)
	jl	.LBB6_9
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movb	1(%r10), %bpl
	movb	2(%r10), %cl
	addq	$3, %r10
	movq	%r10, 40(%rsp)          # 8-byte Spill
	jmp	.LBB6_11
	.align	16, 0x90
.LBB6_9:                                #   in Loop: Header=BB6_8 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	incq	%r10
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movb	%r15b, %bpl
	movb	%r15b, %cl
.LBB6_11:                               # %for.cond.15.preheader
                                        #   in Loop: Header=BB6_8 Depth=2
	imull	$257, %edx, %eax        # imm = 0x101
	movw	%ax, 82(%rsp)
	movzbl	%bpl, %r13d
	imull	$257, %r13d, %eax       # imm = 0x101
	movw	%ax, 84(%rsp)
	movzbl	%cl, %r14d
	imull	$257, %r14d, %eax       # imm = 0x101
	movw	%ax, 86(%rsp)
	movb	%cl, %bl
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%edx, 76(%rsp)          # 4-byte Spill
	leaq	82(%rsp), %rsi
	callq	*56(%rsp)               # 8-byte Folded Reload
	movb	$1, %r12b
	cmpq	$-1, %rax
	jne	.LBB6_19
	.align	16, 0x90
.LBB6_12:                               # %cleanup.thread
                                        #   Parent Loop BB6_7 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	%r12b, %eax
	movb	%r12b, %dl
	orb	%r15b, %dl
	notl	%eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	andl	%eax, %ecx
	testb	%r15b, %r15b
	movzbl	%dl, %esi
	cmovnsl	%ecx, %esi
	js	.LBB6_14
# BB#13:                                # %cleanup.thread
                                        #   in Loop: Header=BB6_12 Depth=3
	movb	%cl, %dl
.LBB6_14:                               # %cleanup.thread
                                        #   in Loop: Header=BB6_12 Depth=3
	movb	%dl, 75(%rsp)           # 1-byte Spill
	movb	%r12b, %cl
	orb	%bpl, %cl
	andl	%eax, %r13d
	testb	%bpl, %bpl
	movzbl	%cl, %r15d
	cmovnsl	%r13d, %r15d
	js	.LBB6_16
# BB#15:                                # %cleanup.thread
                                        #   in Loop: Header=BB6_12 Depth=3
	movb	%r13b, %cl
.LBB6_16:                               # %cleanup.thread
                                        #   in Loop: Header=BB6_12 Depth=3
	movb	%cl, 74(%rsp)           # 1-byte Spill
	movb	%r12b, %bpl
	orb	%bl, %bpl
	andl	%eax, %r14d
	testb	%bl, %bl
	movzbl	%bpl, %ebx
	cmovnsl	%r14d, %ebx
	js	.LBB6_18
# BB#17:                                # %cleanup.thread
                                        #   in Loop: Header=BB6_12 Depth=3
	movb	%r14b, %bpl
.LBB6_18:                               # %cleanup.thread
                                        #   in Loop: Header=BB6_12 Depth=3
	addb	%r12b, %r12b
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, 82(%rsp)
	imull	$257, %r15d, %eax       # imm = 0x101
	movw	%ax, 84(%rsp)
	imull	$257, %ebx, %eax        # imm = 0x101
	movw	%ax, 86(%rsp)
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%esi, 76(%rsp)          # 4-byte Spill
	leaq	82(%rsp), %rsi
	callq	*56(%rsp)               # 8-byte Folded Reload
	cmpq	$-1, %rax
	movl	%ebx, %r14d
	movl	%r15d, %r13d
	movb	%bpl, %bl
	movb	75(%rsp), %r15b         # 1-byte Reload
	movb	74(%rsp), %bpl          # 1-byte Reload
	je	.LBB6_12
.LBB6_19:                               # %for.end
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	24(%rsp), %rdx          # 8-byte Reload
	leal	-1(%rdx), %r8d
	movl	20(%rsp), %esi          # 4-byte Reload
	movl	36(%rsp), %ecx          # 4-byte Reload
	subl	%esi, %ecx
	movq	40(%rsp), %r10          # 8-byte Reload
	jns	.LBB6_20
# BB#27:                                # %if.else.96
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpl	$16, %esi
	movq	48(%rsp), %rbp          # 8-byte Reload
	je	.LBB6_31
# BB#28:                                # %if.else.96
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpl	$32, %esi
	jne	.LBB6_29
# BB#30:                                # %sw.bb
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rbp)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 1(%rbp)
	addq	$2, %rbp
.LBB6_31:                               # %sw.bb.108
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	%ah, (%rbp)  # NOREX
	movb	%al, 1(%rbp)
	addq	$2, %rbp
	xorl	%ecx, %ecx
	cmpl	$1, %edx
	movl	%r8d, %eax
	jg	.LBB6_8
	jmp	.LBB6_32
	.align	16, 0x90
.LBB6_20:                               # %if.then.89
                                        #   in Loop: Header=BB6_7 Depth=1
	shlq	%cl, %rax
	movl	16(%rsp), %edi          # 4-byte Reload
	addb	%dil, %al
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB6_21
	.align	16, 0x90
.LBB6_29:                               # %sw.default
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	16(%rsp), %edi          # 4-byte Reload
	movb	%dil, (%rbp)
	incq	%rbp
	addl	$8, %ecx
	shlq	%cl, %rax
	movl	%eax, 16(%rsp)          # 4-byte Spill
.LBB6_21:                               # %for.cond.outer.backedge
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$1, %edx
	jg	.LBB6_7
# BB#22:                                # %for.end.115
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jle	.LBB6_32
# BB#23:                                # %for.end.115
	cmpl	$8, %esi
	jg	.LBB6_32
# BB#24:                                # %if.then.120
	testl	%ecx, %ecx
	movl	16(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %eax
	je	.LBB6_26
# BB#25:                                # %cond.false.125
	movzbl	(%rbp), %edx
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	andl	%edx, %esi
	addl	%esi, %eax
.LBB6_26:                               # %cond.end.132
	movb	%al, (%rbp)
.LBB6_32:                               # %if.end.135
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pack_from_standard, .Lfunc_end6-pack_from_standard
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.align	16, 0x90
	.type	pack_planar_from_standard,@function
pack_planar_from_standard:              # @pack_planar_from_standard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp64:
	.cfi_def_cfa_offset 736
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	movq	%rcx, %r13
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movslq	100(%rdi), %r9
	cmpq	$4, %r9
	movl	$map_rgb_to_color_via_cmyk, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	je	.LBB7_2
# BB#1:                                 # %cond.false
	movq	1184(%rdi), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB7_2:                                # %cond.end
	movl	2784(%rdi), %r14d
	movl	%r14d, 32(%rsp)         # 4-byte Spill
	cmpl	$4, %r9d
	setne	%al
	cmpl	$1, %r14d
	jne	.LBB7_4
# BB#3:                                 # %cond.end
	testb	%al, %al
	jne	.LBB7_4
# BB#13:                                # %if.then
	movq	2576(%rdi), %r15
	movl	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %r11
	movl	%edx, %ecx
	andl	$7, %ecx
	movl	$65280, %ebx            # imm = 0xFF00
	shrl	%cl, %ebx
	movslq	%esi, %rcx
	movq	(%r15,%rcx,8), %r12
	addq	%r11, %r12
	andl	$7, %edx
	movslq	836(%rdi), %rbp
	je	.LBB7_14
# BB#28:                                # %cond.false.3.i
	movzbl	(%r12), %r14d
	andl	%ebx, %r14d
	leaq	(%rbp,%rcx), %rax
	movq	(%r15,%rax,8), %r9
	movq	%r15, %rdi
	movzbl	(%r9,%r11), %r15d
	addq	%r11, %r9
	andl	%ebx, %r15d
	leaq	(%rcx,%rbp,2), %rax
	movq	(%rdi,%rax,8), %r10
	movzbl	(%r10,%r11), %esi
	addq	%r11, %r10
	andl	%ebx, %esi
	leaq	(%rbp,%rbp,2), %rax
	addq	%rcx, %rax
	movq	(%rdi,%rax,8), %rax
	movzbl	(%rax,%r11), %edi
	leaq	(%rax,%r11), %r11
	andl	%ebx, %edi
	jmp	.LBB7_29
.LBB7_4:                                # %for.cond.preheader
	imull	%r14d, %edx
	movl	%edx, %r11d
	andl	$7, %r11d
	movl	$8, %r15d
	subl	%r11d, %r15d
	testl	%r9d, %r9d
	jle	.LBB7_9
# BB#5:                                 # %for.body.lr.ph
	sarl	$3, %edx
	movslq	%edx, %rdx
	movl	$65280, %r10d           # imm = 0xFF00
	movb	%r15b, %cl
	shrl	%cl, %r10d
	movslq	%esi, %rcx
	shlq	$3, %rcx
	addq	2576(%rdi), %rcx
	movslq	836(%rdi), %rsi
	shlq	$3, %rsi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rax
	addq	%rdx, %rax
	testl	%r11d, %r11d
	movq	%rax, 160(%rsp,%rbx,8)
	movl	$0, %ebp
	je	.LBB7_8
# BB#7:                                 # %cond.false.14
                                        #   in Loop: Header=BB7_6 Depth=1
	movzbl	(%rax), %ebp
	andl	%r10d, %ebp
.LBB7_8:                                # %cond.end.19
                                        #   in Loop: Header=BB7_6 Depth=1
	movb	%bpl, 96(%rsp,%rbx)
	incq	%rbx
	addq	%rsi, %rcx
	cmpq	%r9, %rbx
	jl	.LBB7_6
.LBB7_9:                                # %for.cond.24.preheader
	testl	%r8d, %r8d
	jle	.LBB7_69
# BB#10:                                # %for.body.27.lr.ph
	movl	$1, %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	decl	%eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	negl	%eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%r8d, %eax
	.align	16, 0x90
.LBB7_11:                               # %for.body.27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_56 Depth 2
                                        #     Child Loop BB7_65 Depth 2
	movb	(%r13), %bl
	movzbl	%bl, %esi
	cmpl	$9, 736(%rsp)
	jl	.LBB7_12
# BB#31:                                # %if.then.30
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r15d, 44(%rsp)         # 4-byte Spill
	movb	1(%r13), %dl
	movb	2(%r13), %cl
	addq	$3, %r13
	movq	%r13, 56(%rsp)          # 8-byte Spill
	jmp	.LBB7_32
	.align	16, 0x90
.LBB7_12:                               #   in Loop: Header=BB7_11 Depth=1
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r15d, 44(%rsp)         # 4-byte Spill
	incq	%r13
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movb	%bl, %dl
	movb	%bl, %cl
.LBB7_32:                               # %for.cond.34.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	movb	%dl, 89(%rsp)           # 1-byte Spill
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, 90(%rsp)
	movzbl	%dl, %r13d
	imull	$257, %r13d, %eax       # imm = 0x101
	movw	%ax, 92(%rsp)
	movzbl	%cl, %r15d
	imull	$257, %r15d, %eax       # imm = 0x101
	movw	%ax, 94(%rsp)
	movl	%esi, %ebp
	leaq	90(%rsp), %rsi
	movb	%cl, %r14b
	callq	*72(%rsp)               # 8-byte Folded Reload
	movb	%r14b, %dil
	movb	$1, %r14b
	cmpq	$-1, %rax
	jne	.LBB7_40
	.align	16, 0x90
.LBB7_33:                               # %cleanup.thread
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%r14b, %eax
	movb	%r14b, %dl
	orb	%bl, %dl
	notl	%eax
	movl	%ebp, %ecx
	andl	%eax, %ecx
	testb	%bl, %bl
	movzbl	%dl, %esi
	cmovnsl	%ecx, %esi
	js	.LBB7_35
# BB#34:                                # %cleanup.thread
                                        #   in Loop: Header=BB7_33 Depth=2
	movb	%cl, %dl
.LBB7_35:                               # %cleanup.thread
                                        #   in Loop: Header=BB7_33 Depth=2
	movb	%dl, 88(%rsp)           # 1-byte Spill
	movb	%r14b, %cl
	movb	89(%rsp), %dl           # 1-byte Reload
	orb	%dl, %cl
	andl	%eax, %r13d
	testb	%dl, %dl
	movzbl	%cl, %r12d
	cmovnsl	%r13d, %r12d
	js	.LBB7_37
# BB#36:                                # %cleanup.thread
                                        #   in Loop: Header=BB7_33 Depth=2
	movb	%r13b, %cl
.LBB7_37:                               # %cleanup.thread
                                        #   in Loop: Header=BB7_33 Depth=2
	movb	%cl, 89(%rsp)           # 1-byte Spill
	movb	%r14b, %bl
	orb	%dil, %bl
	andl	%eax, %r15d
	testb	%dil, %dil
	movzbl	%bl, %ebp
	cmovnsl	%r15d, %ebp
	js	.LBB7_39
# BB#38:                                # %cleanup.thread
                                        #   in Loop: Header=BB7_33 Depth=2
	movb	%r15b, %bl
.LBB7_39:                               # %cleanup.thread
                                        #   in Loop: Header=BB7_33 Depth=2
	addb	%r14b, %r14b
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, 90(%rsp)
	imull	$257, %r12d, %eax       # imm = 0x101
	movw	%ax, 92(%rsp)
	imull	$257, %ebp, %eax        # imm = 0x101
	movw	%ax, 94(%rsp)
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	%esi, 84(%rsp)          # 4-byte Spill
	leaq	90(%rsp), %rsi
	callq	*72(%rsp)               # 8-byte Folded Reload
	cmpq	$-1, %rax
	movl	%ebp, %r15d
	movl	%r12d, %r13d
	movl	84(%rsp), %ebp          # 4-byte Reload
	movb	%bl, %dil
	movb	88(%rsp), %bl           # 1-byte Reload
	je	.LBB7_33
.LBB7_40:                               # %for.end.106
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	36(%rsp), %r9d          # 4-byte Reload
	cmpl	$16, %r9d
	movq	56(%rsp), %r13          # 8-byte Reload
	movl	32(%rsp), %r11d         # 4-byte Reload
	je	.LBB7_46
# BB#41:                                # %for.end.106
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpl	$24, %r9d
	movl	40(%rsp), %r8d          # 4-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %r12          # 8-byte Reload
	jne	.LBB7_42
# BB#44:                                # %sw.bb.122
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	%rax, %rcx
	shrq	$16, %rcx
	movdqa	160(%rsp), %xmm0
	movd	%xmm0, %rdx
	movb	%cl, (%rdx)
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	.LCPI7_0(%rip), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movd	%xmm1, %rcx
	movb	%ah, (%rcx)  # NOREX
	movq	176(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 176(%rsp)
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_46:                               # %sw.bb.134
                                        #   in Loop: Header=BB7_11 Depth=1
	movdqa	160(%rsp), %xmm0
	movd	%xmm0, %rcx
	movb	%ah, (%rcx)  # NOREX
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	.LCPI7_0(%rip), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movd	%xmm1, %rcx
	movb	%al, (%rcx)
	xorl	%r15d, %r15d
	movl	40(%rsp), %r8d          # 4-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB7_47
	.align	16, 0x90
.LBB7_42:                               # %for.end.106
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpl	$32, %r9d
	jne	.LBB7_53
# BB#43:                                # %sw.bb
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	%rax, %rcx
	shrq	$24, %rcx
	movdqa	160(%rsp), %xmm0
	movd	%xmm0, %rdx
	movb	%cl, (%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movdqa	.LCPI7_0(%rip), %xmm2   # xmm2 = [1,1]
	paddq	%xmm2, %xmm0
	movdqa	%xmm0, 160(%rsp)
	movd	%xmm1, %rdx
	movb	%cl, (%rdx)
	movdqa	176(%rsp), %xmm0
	movd	%xmm0, %rcx
	movb	%ah, (%rcx)  # NOREX
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddq	%xmm2, %xmm0
	movdqa	%xmm0, 176(%rsp)
	movd	%xmm1, %rcx
.LBB7_45:                               # %for.cond.24.backedge
                                        #   in Loop: Header=BB7_11 Depth=1
	movb	%al, (%rcx)
	xorl	%r15d, %r15d
	jmp	.LBB7_47
.LBB7_53:                               # %sw.default
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	100(%rdi), %edx
	movl	44(%rsp), %r15d         # 4-byte Reload
	subl	%r11d, %r15d
	js	.LBB7_55
# BB#54:                                #   in Loop: Header=BB7_11 Depth=1
	movl	%edx, %ebx
	jmp	.LBB7_58
.LBB7_55:                               # %for.cond.151.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	testl	%edx, %edx
	movl	$0, %ecx
	movl	%edx, %ebx
	jle	.LBB7_57
	.align	16, 0x90
.LBB7_56:                               # %for.body.156
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	96(%rsp,%rcx), %bl
	movq	160(%rsp,%rcx,8), %rsi
	leaq	1(%rsi), %rbp
	movq	%rbp, 160(%rsp,%rcx,8)
	movb	%bl, (%rsi)
	incq	%rcx
	movslq	100(%rdi), %rbx
	cmpq	%rbx, %rcx
	jl	.LBB7_56
.LBB7_57:                               # %for.end.164
                                        #   in Loop: Header=BB7_11 Depth=1
	addl	$8, %r15d
.LBB7_58:                               # %if.end.166
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	testl	%ebx, %ebx
	jle	.LBB7_59
# BB#60:                                # %for.body.172.lr.ph
                                        #   in Loop: Header=BB7_11 Depth=1
	decl	%edx
	imull	%r11d, %edx
	movl	%r15d, %esi
	testb	$1, %bl
	jne	.LBB7_62
# BB#61:                                #   in Loop: Header=BB7_11 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB7_63
.LBB7_62:                               # %for.body.172.prol
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	%rax, %rbp
	movb	%dl, %cl
	shrq	%cl, %rbp
	andq	%r14, %rbp
	movb	%sil, %cl
	shlq	%cl, %rbp
	addb	%bpl, 96(%rsp)
	subl	%r11d, %edx
	movl	$1, %ebp
.LBB7_63:                               # %for.body.172.lr.ph.split
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpl	$1, %ebx
	je	.LBB7_59
# BB#64:                                #   in Loop: Header=BB7_11 Depth=1
	movslq	%ebx, %r10
	.align	16, 0x90
.LBB7_65:                               # %for.body.172
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	movb	%dl, %cl
	shrq	%cl, %rbx
	andq	%r14, %rbx
	movb	%sil, %cl
	shlq	%cl, %rbx
	addb	%bl, 96(%rsp,%rbp)
	leal	(%r12,%rdx), %ecx
	movq	%rax, %rbx
	shrq	%cl, %rbx
	andq	%r14, %rbx
	movb	%sil, %cl
	shlq	%cl, %rbx
	addb	%bl, 97(%rsp,%rbp)
	subl	%r11d, %edx
	subl	%r11d, %edx
	addq	$2, %rbp
	cmpq	%r10, %rbp
	jl	.LBB7_65
.LBB7_59:                               #   in Loop: Header=BB7_11 Depth=1
	movq	%r14, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_47:                               # %for.cond.24.backedge
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	jg	.LBB7_11
# BB#48:                                # %for.end.191
	testl	%r8d, %r8d
	jle	.LBB7_69
# BB#49:                                # %for.end.191
	cmpl	$8, %r9d
	jg	.LBB7_69
# BB#50:                                # %if.then.197
	testl	%r15d, %r15d
	je	.LBB7_51
# BB#66:                                # %if.else.214
	movl	$1, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 100(%rdi)
	jle	.LBB7_69
# BB#67:
	addl	$255, %eax
	.align	16, 0x90
.LBB7_68:                               # %for.body.222
                                        # =>This Inner Loop Header: Depth=1
	movq	160(%rsp,%rcx,8), %rdx
	movzbl	(%rdx), %esi
	andl	%eax, %esi
	movzbl	96(%rsp,%rcx), %ebp
	addl	%esi, %ebp
	movb	%bpl, (%rdx)
	incq	%rcx
	movslq	100(%rdi), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB7_68
	jmp	.LBB7_69
.LBB7_14:                               # %cond.end.2.i.thread
	leaq	(%rbp,%rcx), %rax
	movq	(%r15,%rax,8), %r9
	addq	%r11, %r9
	leaq	(%rcx,%rbp,2), %rax
	movq	(%r15,%rax,8), %r10
	addq	%r11, %r10
	leaq	(%rbp,%rbp,2), %rax
	addq	%rcx, %rax
	addq	(%r15,%rax,8), %r11
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%edi, %edi
.LBB7_29:                               # %cond.end.3.i
	movl	$128, %ebp
	movb	%dl, %cl
	shrl	%cl, %ebp
	testl	%r8d, %r8d
	jle	.LBB7_26
# BB#30:                                # %for.body.15.i.preheader
	incl	%r8d
	.align	16, 0x90
.LBB7_15:                               # %for.body.15.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r13), %bl
	movb	1(%r13), %al
	movb	2(%r13), %cl
	movb	%al, %dl
	orb	%bl, %dl
	orb	%cl, %dl
	je	.LBB7_16
# BB#17:                                # %if.else.i
                                        #   in Loop: Header=BB7_15 Depth=1
	testb	%bl, %bl
	js	.LBB7_19
# BB#18:                                #   in Loop: Header=BB7_15 Depth=1
	movzbl	%r14b, %edx
	leal	(%rdx,%rbp), %r14d
.LBB7_19:                               # %if.else.i
                                        #   in Loop: Header=BB7_15 Depth=1
	testb	%al, %al
	js	.LBB7_21
# BB#20:                                #   in Loop: Header=BB7_15 Depth=1
	movzbl	%r15b, %eax
	leal	(%rax,%rbp), %r15d
.LBB7_21:                               # %if.else.i
                                        #   in Loop: Header=BB7_15 Depth=1
	testb	%cl, %cl
	js	.LBB7_23
# BB#22:                                # %if.then.51.i
                                        #   in Loop: Header=BB7_15 Depth=1
	movzbl	%sil, %eax
	leal	(%rax,%rbp), %esi
	jmp	.LBB7_23
	.align	16, 0x90
.LBB7_16:                               # %if.then.i
                                        #   in Loop: Header=BB7_15 Depth=1
	movzbl	%dil, %eax
	leal	(%rax,%rbp), %edi
.LBB7_23:                               # %if.end.57.i
                                        #   in Loop: Header=BB7_15 Depth=1
	sarl	%ebp
	jne	.LBB7_25
# BB#24:                                # %if.then.61.i
                                        #   in Loop: Header=BB7_15 Depth=1
	movb	%r14b, (%r12)
	incq	%r12
	movb	%r15b, (%r9)
	incq	%r9
	movb	%sil, (%r10)
	incq	%r10
	movb	%dil, (%r11)
	incq	%r11
	movl	$128, %ebp
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
.LBB7_25:                               # %for.cond.12.backedge.i
                                        #   in Loop: Header=BB7_15 Depth=1
	decl	%r8d
	addq	$3, %r13
	cmpl	$1, %r8d
	jg	.LBB7_15
.LBB7_26:                               # %for.end.79.i
	cmpl	$128, %ebp
	je	.LBB7_69
# BB#27:                                # %if.then.82.i
	leal	-1(%rbp,%rbp), %eax
	movzbl	(%r12), %ecx
	andl	%eax, %ecx
	movzbl	%r14b, %edx
	addl	%ecx, %edx
	movb	%dl, (%r12)
	movzbl	(%r9), %ecx
	andl	%eax, %ecx
	movzbl	%r15b, %edx
	addl	%ecx, %edx
	movb	%dl, (%r9)
	movzbl	(%r10), %ecx
	andl	%eax, %ecx
	movzbl	%sil, %edx
	addl	%ecx, %edx
	movb	%dl, (%r10)
	movzbl	(%r11), %ecx
	andl	%eax, %ecx
	movzbl	%dil, %eax
	addl	%ecx, %eax
	movb	%al, (%r11)
.LBB7_69:                               # %cleanup.239
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_51:                               # %for.cond.201.preheader
	xorl	%eax, %eax
	cmpl	$0, 100(%rdi)
	jle	.LBB7_69
	.align	16, 0x90
.LBB7_52:                               # %for.body.206
                                        # =>This Inner Loop Header: Depth=1
	movb	96(%rsp,%rax), %cl
	movq	160(%rsp,%rax,8), %rdx
	movb	%cl, (%rdx)
	incq	%rax
	movslq	100(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB7_52
	jmp	.LBB7_69
.Lfunc_end7:
	.size	pack_planar_from_standard, .Lfunc_end7-pack_planar_from_standard
	.cfi_endproc

	.align	16, 0x90
	.type	unpack_colors_to_standard,@function
unpack_colors_to_standard:              # @unpack_colors_to_standard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp75:
	.cfi_def_cfa_offset 48
.Ltmp76:
	.cfi_offset %rbx, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbp), %rsi
	leaq	2(%rsp), %rdx
	callq	*1192(%rbx)
	movzwl	2(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	cmpl	$9, %r15d
	jl	.LBB8_2
# BB#1:                                 # %if.then
	shlq	$16, %rax
	movzwl	4(%rsp), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orq	%rax, %rcx
	movzwl	6(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	orq	%rcx, %rax
.LBB8_2:                                # %if.end
	movq	%rax, (%r14)
	movq	8(%rbp), %rsi
	leaq	2(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*1192(%rbx)
	movzwl	2(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	cmpl	$9, %r15d
	jl	.LBB8_4
# BB#3:                                 # %if.then.1
	shlq	$16, %rax
	movzwl	4(%rsp), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orq	%rax, %rcx
	movzwl	6(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	orq	%rcx, %rax
.LBB8_4:                                # %if.end.1
	movq	%rax, 8(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	unpack_colors_to_standard, .Lfunc_end8-unpack_colors_to_standard
	.cfi_endproc

	.globl	gx_default_copy_rop
	.align	16, 0x90
	.type	gx_default_copy_rop,@function
gx_default_copy_rop:                    # @gx_default_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 192
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movl	256(%rsp), %r15d
	movl	248(%rsp), %r14d
	movl	240(%rsp), %ebp
	movl	232(%rsp), %r13d
	movl	224(%rsp), %r11d
	movl	208(%rsp), %r12d
	movq	192(%rsp), %r10
	xorl	%ebx, %ebx
	testq	%r10, %r10
	movq	200(%rsp), %rax
	je	.LBB9_2
# BB#1:                                 # %if.else
	movq	32(%r10), %rbx
	movq	%rbx, 112(%rsp)
	movups	(%r10), %xmm0
	movups	16(%r10), %xmm1
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movw	$0, 118(%rsp)
	movw	$0, 116(%rsp)
	movl	$1, 120(%rsp)
	leaq	80(%rsp), %rbx
.LBB9_2:                                # %if.end
	movl	%r15d, 64(%rsp)
	movl	%r14d, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%r11d, 32(%rsp)
	movl	216(%rsp), %ebp
	movl	%ebp, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	callq	*1424(%rdi)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gx_default_copy_rop, .Lfunc_end9-gx_default_copy_rop
	.cfi_endproc

	.globl	gx_copy_rop_unaligned
	.align	16, 0x90
	.type	gx_copy_rop_unaligned,@function
gx_copy_rop_unaligned:                  # @gx_copy_rop_unaligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp97:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 192
.Ltmp100:
	.cfi_offset %rbx, -56
.Ltmp101:
	.cfi_offset %r12, -48
.Ltmp102:
	.cfi_offset %r13, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movl	256(%rsp), %r15d
	movl	248(%rsp), %r14d
	movl	240(%rsp), %ebp
	movl	232(%rsp), %r13d
	movl	224(%rsp), %r11d
	movl	208(%rsp), %r12d
	movq	192(%rsp), %r10
	xorl	%ebx, %ebx
	testq	%r10, %r10
	movq	200(%rsp), %rax
	je	.LBB10_2
# BB#1:                                 # %if.else
	movq	32(%r10), %rbx
	movq	%rbx, 112(%rsp)
	movups	(%r10), %xmm0
	movups	16(%r10), %xmm1
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movw	$0, 118(%rsp)
	movw	$0, 116(%rsp)
	movl	$1, 120(%rsp)
	leaq	80(%rsp), %rbx
.LBB10_2:                               # %if.end
	movl	%r15d, 64(%rsp)
	movl	%r14d, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%r11d, 32(%rsp)
	movl	216(%rsp), %ebp
	movl	%ebp, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	callq	gx_strip_copy_rop_unaligned
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gx_copy_rop_unaligned, .Lfunc_end10-gx_copy_rop_unaligned
	.cfi_endproc

	.globl	gx_strip_copy_rop_unaligned
	.align	16, 0x90
	.type	gx_strip_copy_rop_unaligned,@function
gx_strip_copy_rop_unaligned:            # @gx_strip_copy_rop_unaligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp109:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp110:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp112:
	.cfi_def_cfa_offset 208
.Ltmp113:
	.cfi_offset %rbx, -56
.Ltmp114:
	.cfi_offset %r12, -48
.Ltmp115:
	.cfi_offset %r13, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	movl	%edx, %ecx
	movq	%rsi, %rbp
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movl	272(%rsp), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	264(%rsp), %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	256(%rsp), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	248(%rsp), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movl	240(%rsp), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	232(%rsp), %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	224(%rsp), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	216(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testq	%r9, %r9
	movq	1424(%rdi), %r13
	movl	$1, %esi
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	movq	136(%rsp), %rax         # 8-byte Reload
	movzwl	108(%rax), %esi
.LBB11_2:                               # %cond.end
	testq	%rbp, %rbp
	je	.LBB11_3
# BB#5:                                 # %if.then
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edi
	andl	$7, %edi
	movl	%ebp, %eax
	andl	$7, %eax
	cmpl	$24, %esi
	jne	.LBB11_7
# BB#6:                                 # %if.then.9
	movl	%eax, %edx
	movl	$2863311531, %ebx       # imm = 0xAAAAAAAB
	imulq	%rdx, %rbx
	shrq	$33, %rbx
	leal	(%rbx,%rbx,2), %edx
	movl	%eax, %ebx
	subl	%edx, %ebx
	shll	$3, %ebx
	orl	%ebx, %eax
.LBB11_7:                               # %if.end.11
	movl	%eax, %edx
	subq	%rdx, %rbp
	shll	$3, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %ebx
	addl	%ecx, %ebx
	testl	%edi, %edi
	je	.LBB11_4
# BB#8:                                 # %if.end.11
	testq	%rbp, %rbp
	je	.LBB11_4
# BB#9:                                 # %lor.lhs.false.14
	testq	%r9, %r9
	je	.LBB11_11
# BB#10:                                # %land.lhs.true
	movq	(%r9), %rax
	cmpq	8(%r9), %rax
	je	.LBB11_4
.LBB11_11:                              # %if.end.21
	leal	(,%rdi,8), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, 76(%rsp)          # 4-byte Spill
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	jle	.LBB11_15
# BB#12:                                # %for.body.lr.ph
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r14d
	subl	%edi, %r14d
	movl	$1, %r15d
	.align	16, 0x90
.LBB11_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax,%r15), %eax
	movl	128(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 64(%rsp)
	movl	124(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 56(%rsp)
	movl	120(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 48(%rsp)
	movl	116(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 32(%rsp)
	movl	100(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%rsp)
	movl	%eax, 24(%rsp)
	movl	$1, 40(%rsp)
	xorl	%r8d, %r8d
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movl	%ebx, %edx
	movl	148(%rsp), %ecx         # 4-byte Reload
	movq	%r9, %r12
	callq	*%r13
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB11_15
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB11_13 Depth=1
	addq	%r14, %rbp
	addl	76(%rsp), %ebx          # 4-byte Folded Reload
	cmpl	132(%rsp), %r15d        # 4-byte Folded Reload
	leal	1(%r15), %eax
	movl	%eax, %r15d
	movq	%r12, %r9
	jl	.LBB11_13
.LBB11_15:                              # %cleanup
	movl	%ecx, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_3:
	xorl	%ebp, %ebp
	movl	%ecx, %ebx
.LBB11_4:                               # %if.then.20
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movl	%ebx, %edx
	movl	148(%rsp), %ecx         # 4-byte Reload
	movq	%r13, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end11:
	.size	gx_strip_copy_rop_unaligned, .Lfunc_end11-gx_strip_copy_rop_unaligned
	.cfi_endproc

	.align	16, 0x90
	.type	map_rgb_to_color_via_cmyk,@function
map_rgb_to_color_via_cmyk:              # @map_rgb_to_color_via_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp119:
	.cfi_def_cfa_offset 16
	movzwl	(%rsi), %r8d
	movl	%r8d, %edx
	notl	%edx
	movzwl	2(%rsi), %r9d
	movl	%r9d, %r11d
	notl	%r11d
	movzwl	4(%rsi), %r10d
	notl	%r10d
	movzwl	%r10w, %esi
	movzwl	%r11w, %eax
	cmpl	%esi, %eax
	cmovaew	%si, %ax
	movzwl	%dx, %ecx
	cmpl	%esi, %ecx
	cmovaew	%si, %cx
	cmpl	%r8d, %r9d
	cmovaew	%ax, %cx
	movw	%cx, 6(%rsp)
	subl	%ecx, %edx
	movw	%dx, (%rsp)
	subl	%ecx, %r11d
	movw	%r11w, 2(%rsp)
	subl	%ecx, %r10d
	movw	%r10w, 4(%rsp)
	leaq	(%rsp), %rsi
	callq	*1264(%rdi)
	popq	%rdx
	retq
.Lfunc_end12:
	.size	map_rgb_to_color_via_cmyk, .Lfunc_end12-map_rgb_to_color_via_cmyk
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"copy_rop row"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./base/gdevdrop.c"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"mem_default_strip_copy_rop2 should never be called!\n"
	.size	.L.str.2, 53

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"copy_rop source_row"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"copy_rop texture_row"
	.size	.L.str.4, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
