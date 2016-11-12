	.text
	.file	"iscanbin.bc"
	.globl	scan_binary_token
	.align	16, 0x90
	.type	scan_binary_token,@function
scan_binary_token:                      # @scan_binary_token
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rdx, %rbx
	movq	%rsi, %r8
	movq	8(%rbx), %r12
	movq	112(%r12), %r14
	movq	120(%r12), %r13
	movzbl	(%r14), %ecx
	movl	%ecx, 1148(%rbx)
	movzbl	bin_token_bytes-128(%rcx), %edx
	decl	%edx
	movq	%r13, %rax
	subq	%r14, %rax
	cmpq	%rdx, %rax
	jl	.LBB0_1
# BB#2:                                 # %if.else
	movzbl	bin_token_num_formats-128(%rcx), %r15d
	movl	%r15d, 1096(%rbx)
	movl	%ecx, %edx
	andl	$252, %edx
	cmpl	$128, %edx
	jne	.LBB0_23
# BB#3:                                 # %if.then.16
	movzbl	1(%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB0_4
# BB#6:                                 # %if.else.i
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%ebp, 1140(%rbx)
	leaq	2(%r14), %rdi
	movl	%r15d, %esi
	callq	sdecodeushort
	movl	%eax, %r9d
	movq	%r9, 1152(%rbx)
	movl	$4, %edi
	jmp	.LBB0_7
.LBB0_23:                               # %if.else.17
	movzbl	(%r14), %esi
	movl	$-18, %ebp
	movl	%esi, %edx
	addl	$-132, %edx
	cmpl	$17, %edx
	ja	.LBB0_73
# BB#24:                                # %if.else.17
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_28:                               # %sw.bb.32.i
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movzbl	bin_token_bytes-128(%rsi), %r13d
	decl	%r13d
	leaq	1(%r14), %rdi
	movl	%r15d, %esi
.LBB0_29:                               # %rnum.i
	movq	%r8, %rdx
	movq	%r8, %r15
	callq	sdecode_number
	cmpl	$16, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	je	.LBB0_33
# BB#30:                                # %rnum.i
	cmpl	$14, %eax
	je	.LBB0_73
# BB#31:                                # %rnum.i
	cmpl	$11, %eax
	jne	.LBB0_32
.LBB0_33:                               # %sw.bb.35.i
	shll	$8, %eax
	movw	%ax, (%r15)
	movl	%r13d, %eax
	addq	%rax, %r14
	jmp	.LBB0_59
.LBB0_4:                                # %if.then.i
	movl	%r13d, %eax
	subl	%r14d, %eax
	cmpl	$7, %eax
	jb	.LBB0_1
# BB#5:                                 # %cleanup.thread.i
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	2(%r14), %rdi
	movl	%r15d, %esi
	callq	sdecodeushort
	movl	%eax, %ebp
	movl	%ebp, 1140(%rbx)
	leaq	4(%r14), %rdi
	movl	%r15d, %esi
	callq	sdecodeint32
	movl	%eax, %r9d
	movq	%r9, 1152(%rbx)
	movl	$8, %edi
.LBB0_7:                                # %if.end.27.i
	movl	%eax, %r15d
	subl	%edi, %r15d
	jb	.LBB0_9
# BB#8:                                 # %lor.lhs.false.i
	movl	%r15d, %ecx
	shrl	$3, %ecx
	cmpl	%ebp, %ecx
	jae	.LBB0_11
.LBB0_9:                                # %if.then.32.i
	leaq	1244(%rbx), %rdi
	movl	1140(%rbx), %r8d
	movl	1148(%rbx), %ecx
	movq	$.L.str.2, (%rsp)
.LBB0_10:                               # %land.lhs.true.29
	movl	$121, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	snprintf
	movl	$-18, %ebp
	movq	40(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB0_73
.LBB0_11:                               # %if.end.33.i
	movl	%edi, %edx
	leaq	(%r14,%rdx), %rsi
	leal	(,%rbp,8), %ecx
	addq	%rsi, %rcx
	cmpq	%r13, %rcx
	cmovaq	%r13, %rcx
	leaq	1(%r14,%rdx), %rdx
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_17:                               # %for.cond.i
                                        #   in Loop: Header=BB0_12 Depth=1
	addq	$8, %rdx
.LBB0_12:                               # %if.end.33.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rdx
	jae	.LBB0_13
# BB#18:                                # %for.body.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movzbl	-1(%rdx), %esi
	andl	$127, %esi
	cmpl	$11, %esi
	jb	.LBB0_21
# BB#19:                                # %for.body.i
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$15, %esi
	jne	.LBB0_20
.LBB0_21:                               # %if.end.53.i
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpb	$0, (%rdx)
	je	.LBB0_17
# BB#22:                                # %if.then.57.i
	leaq	1244(%rbx), %rdi
	movl	1140(%rbx), %r8d
	movl	1148(%rbx), %ecx
	movq	$.L.str.4, (%rsp)
	jmp	.LBB0_10
.LBB0_13:                               # %cleanup.cont.66.i
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	8(%r13), %rdi
	leaq	1112(%rbx), %rsi
	shrl	$3, %eax
	movl	$240, %edx
	movl	$.L.str.5, %r8d
	movl	%eax, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	js	.LBB0_73
# BB#14:                                # %if.end.71.i
	movq	8(%rsp), %rax           # 8-byte Reload
	decl	%eax
	addq	%rax, %r14
	movq	%r14, 112(%r12)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, 1140(%rbx)
	movl	%eax, 1132(%rbx)
	movl	%r15d, 1144(%rbx)
	movl	%r15d, 1136(%rbx)
	movl	$0, 1128(%rbx)
	movl	$0, 56(%rbx)
	leaq	60(%rbx), %rax
	movq	%rax, 48(%rbx)
	movq	%rax, 40(%rbx)
	movq	%rax, 32(%rbx)
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	scan_bos_continue
	movl	%eax, %ebp
	cmpl	$3, %ebp
	je	.LBB0_16
# BB#15:                                # %if.end.71.i
	testl	%ebp, %ebp
	jns	.LBB0_69
.LBB0_16:                               # %if.then.92.i
	movl	1116(%rbx), %esi
	movl	1128(%rbx), %edi
	subl	%edi, %esi
	shlq	$4, %rdi
	addq	1120(%rbx), %rdi
	movl	76(%r13), %edx
	callq	refset_null_new
.LBB0_69:                               # %if.end.19
	movq	40(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB0_70
.LBB0_37:                               # %sw.bb.60.i
	movq	%rdi, %rbp
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	1(%r14), %rdi
	movl	%r15d, %esi
	callq	sdecodeushort
	movl	%eax, %r15d
	leaq	2(%r14), %rdx
	movl	$2, %eax
	jmp	.LBB0_38
.LBB0_20:                               # %if.then.52.i
	leaq	1244(%rbx), %rdi
	movl	1140(%rbx), %r8d
	movl	1148(%rbx), %ecx
	movq	$.L.str.3, (%rsp)
	jmp	.LBB0_10
.LBB0_32:
	movl	%eax, %ebp
.LBB0_70:                               # %if.end.19
	cmpl	$3, %ebp
	je	.LBB0_71
# BB#72:                                # %if.end.26
	testl	%ebp, %ebp
	movl	%ebp, %eax
	jns	.LBB0_76
	jmp	.LBB0_73
.LBB0_58:                               # %sw.bb.i
	movsbq	1(%r14), %rax
	incq	%r14
	movq	%rax, 8(%r8)
	movw	$2816, (%r8)            # imm = 0xB00
	jmp	.LBB0_59
.LBB0_25:                               # %sw.bb.15.i
	movzbl	1(%r14), %esi
	movl	%esi, %edx
	andl	$126, %edx
	cmpl	$49, %edx
	ja	.LBB0_73
# BB#26:                                # %if.end.i
	movl	%esi, %edx
	shrl	$4, %edx
	movzbl	enc_num_bytes(%rdx), %r13d
	incq	%r13
	cmpq	%r13, %rax
	jge	.LBB0_27
.LBB0_1:                                # %if.then
	decq	%r14
	movq	%r14, 112(%r12)
	movl	$0, 28(%rbx)
.LBB0_71:                               # %land.lhs.true
	movzwl	152(%r12), %edx
	movl	$3, %eax
	movl	$-18, %ebp
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB0_76
	jmp	.LBB0_73
.LBB0_34:                               # %sw.bb.44.i
	movzbl	1(%r14), %eax
	movzwl	%ax, %edx
	cmpl	$1, %edx
	ja	.LBB0_73
# BB#35:                                # %if.end.49.i
	incq	%r14
	movw	%ax, 8(%r8)
	movw	$256, (%r8)             # imm = 0x100
	jmp	.LBB0_59
.LBB0_36:                               # %sw.bb.58.i
	movq	%rdi, %rbp
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	1(%r14), %rdx
	movzbl	1(%r14), %r15d
	movl	$1, %eax
.LBB0_38:                               # %str.i
	cmpb	$0, 154(%r12)
	je	.LBB0_41
# BB#39:                                # %land.lhs.true.i
	subq	%rdx, %r13
	movl	%r15d, %ecx
	cmpq	%rcx, %r13
	jge	.LBB0_40
.LBB0_41:                               # %if.else.i.44
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	8(%rbp), %rdi
	movl	$.L.str.16, %edx
	movl	%r15d, %esi
	movq	%rbp, %r14
	callq	*136(%rdi)
	movl	%r15d, %r13d
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	je	.LBB0_73
# BB#42:                                # %if.end.96.i
	movq	%rax, %rbp
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 112(%r12)
	movq	%r15, 40(%rbx)
	movq	%r15, 32(%rbx)
	movl	%r13d, %eax
	leaq	(%rax,%r15), %rax
	movq	%rax, 48(%rbx)
	movq	8(%rbx), %rdi
	leaq	52(%rsp), %rcx
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	sgets
	movl	52(%rsp), %eax
	cmpl	%r13d, %eax
	jne	.LBB0_44
# BB#43:                                # %scan_bin_string_continue.exit.i
	movq	32(%rbx), %rax
	movq	%rax, 8(%rbp)
	movl	56(%r14), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%rbp)
	movl	48(%rbx), %eax
	subl	32(%rbx), %eax
	movl	%eax, 4(%rbp)
	xorl	%eax, %eax
	jmp	.LBB0_76
.LBB0_45:                               # %sw.bb.116.i
	movq	%rcx, %r15
	movq	40(%rdi), %rax
	movq	576(%rax), %rsi
	movzbl	1(%r14), %r13d
	testq	%rsi, %rsi
	je	.LBB0_49
# BB#46:                                # %lor.lhs.false.i.i
	movq	8(%rdi), %rdi
	movq	%r13, %rdx
	movq	%r8, %rcx
	movq	%r8, %rbp
	callq	array_get
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB0_49
# BB#47:                                # %lor.lhs.false.3.i.i
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB0_49
# BB#48:
	incq	%r14
	jmp	.LBB0_59
.LBB0_51:                               # %sw.bb.123.i
	movq	%rcx, %r15
	movq	40(%rdi), %rax
	movq	576(%rax), %rsi
	movzbl	1(%r14), %r13d
	testq	%rsi, %rsi
	je	.LBB0_49
# BB#52:                                # %lor.lhs.false.i.144.i
	movq	8(%rdi), %rdi
	movq	%r13, %rdx
	movq	%r8, %rcx
	movq	%r8, %rbp
	callq	array_get
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB0_49
# BB#53:                                # %lor.lhs.false.3.i.147.i
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	je	.LBB0_63
.LBB0_49:                               # %if.then.i.138.i
	leaq	1244(%rbx), %rdi
	movl	$121, %esi
	movl	$.L.str.15, %edx
	movl	$.L.str.12, %ecx
	jmp	.LBB0_50
.LBB0_54:                               # %sw.bb.135.i
	movq	%rcx, %r15
	movq	48(%rdi), %rax
	movq	576(%rax), %rsi
	movzbl	1(%r14), %r13d
	testq	%rsi, %rsi
	je	.LBB0_77
# BB#55:                                # %lor.lhs.false.i.158.i
	movq	8(%rdi), %rdi
	movq	%r13, %rdx
	movq	%r8, %rcx
	movq	%r8, %rbp
	callq	array_get
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB0_77
# BB#56:                                # %lor.lhs.false.3.i.161.i
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB0_77
# BB#57:
	incq	%r14
	jmp	.LBB0_59
.LBB0_60:                               # %sw.bb.154.i
	movq	%rcx, %r15
	movq	48(%rdi), %rax
	movq	576(%rax), %rsi
	movzbl	1(%r14), %r13d
	testq	%rsi, %rsi
	je	.LBB0_77
# BB#61:                                # %lor.lhs.false.i.172.i
	movq	8(%rdi), %rdi
	movq	%r13, %rdx
	movq	%r8, %rcx
	movq	%r8, %rbp
	callq	array_get
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB0_77
# BB#62:                                # %lor.lhs.false.3.i.175.i
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB0_77
.LBB0_63:
	incq	%r14
	orb	$-128, (%rcx)
.LBB0_59:                               # %if.end.149.i
	movq	%r14, 112(%r12)
	xorl	%eax, %eax
	jmp	.LBB0_76
.LBB0_77:                               # %if.then.i.165.i
	leaq	1244(%rbx), %rdi
	movl	$121, %esi
	movl	$.L.str.15, %edx
	movl	$.L.str.11, %ecx
.LBB0_50:                               # %land.lhs.true.29
	xorl	%eax, %eax
	movl	%r13d, %r8d
	callq	snprintf
	movl	$1, 1240(%rbx)
	movl	$-21, %ebp
	movq	%r15, %rcx
.LBB0_73:                               # %land.lhs.true.29
	cmpb	$0, 1244(%rbx)
	jne	.LBB0_75
# BB#74:                                # %if.then.34
	addq	$1244, %rbx             # imm = 0x4DC
	movl	$121, %esi
	movl	$.L.str, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
.LBB0_75:                               # %if.end.38
	movl	%ebp, %eax
.LBB0_76:                               # %if.end.38
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_64:                               # %sw.bb.178.i
	movzbl	1(%r14), %r13d
	movl	%r13d, %eax
	andl	$126, %eax
	cmpl	$49, %eax
	movq	%rdi, %r15
	ja	.LBB0_73
# BB#65:                                # %if.end.185.i
	leaq	2(%r14), %rdi
	movl	%r13d, %esi
	movq	%rcx, %rbp
	movq	%r8, 32(%rsp)           # 8-byte Spill
	callq	sdecodeushort
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	8(%r15), %rdi
	leaq	1112(%rbx), %rsi
	movl	$112, %edx
	movl	$.L.str.17, %r8d
	movl	%eax, %ecx
	callq	gs_alloc_ref_array
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_73
# BB#66:                                # %if.end.195.i
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%r13d, 1096(%rbx)
	movl	$0, 1128(%rbx)
	addq	$3, %r14
	movq	%r14, 112(%r12)
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	scan_bin_num_array_continue
	movl	%eax, %ebp
	cmpl	$3, %ebp
	je	.LBB0_68
# BB#67:                                # %if.end.195.i
	testl	%ebp, %ebp
	jns	.LBB0_69
.LBB0_68:                               # %if.then.207.i
	movl	1128(%rbx), %edi
	movl	24(%rsp), %esi          # 4-byte Reload
	subl	%edi, %esi
	shlq	$4, %rdi
	addq	1120(%rbx), %rdi
	movl	76(%r15), %edx
	callq	refset_null_new
	movq	$scan_bin_num_array_continue, 1104(%rbx)
	jmp	.LBB0_69
.LBB0_40:                               # %if.then.72.i
	movq	%rdx, 112(%r12)
	leaq	1(%r14,%rax), %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rax, 8(%rdx)
	movw	$4720, (%rdx)           # imm = 0x1270
	movl	%r15d, 4(%rdx)
	addq	%rcx, 112(%r12)
	xorl	%eax, %eax
	jmp	.LBB0_76
.LBB0_44:                               # %if.then.110.i
	addq	%rax, %r15
	movq	%r15, 40(%rbx)
	movl	$1, 28(%rbx)
	movl	$1, 56(%rbx)
	movw	$3584, 1112(%rbx)       # imm = 0xE00
	movq	$scan_bin_string_continue, 1104(%rbx)
	movq	40(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB0_71
.LBB0_27:                               # %if.end.30.i
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	2(%r14), %rdi
	jmp	.LBB0_29
.Lfunc_end0:
	.size	scan_binary_token, .Lfunc_end0-scan_binary_token
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_58
	.quad	.LBB0_25
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_34
	.quad	.LBB0_36
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_45
	.quad	.LBB0_51
	.quad	.LBB0_54
	.quad	.LBB0_60
	.quad	.LBB0_64

	.text
	.globl	encode_binary_token
	.align	16, 0x90
	.type	encode_binary_token,@function
encode_binary_token:                    # @encode_binary_token
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movzbl	1(%r14), %esi
	xorl	%eax, %eax
	movl	$-15, %ecx
	xorl	%ebx, %ebx
	decl	%esi
	cmpl	$17, %esi
	ja	.LBB1_20
# BB#1:                                 # %entry
	movq	112(%rdi), %r10
	movl	$5, %edx
	xorl	%r8d, %r8d
	jmpq	*.LJTI1_0(,%rsi,8)
.LBB1_4:                                # %sw.bb.9
	movzwl	8(%r14), %ebx
	movl	$4, %r8d
	jmp	.LBB1_11
.LBB1_6:                                # %sw.bb.14
	movq	%r14, %rdi
	movq	%r10, %rbx
	callq	dict_length
	movq	%rbx, %r10
	addl	%eax, %eax
	movl	$15, %r8d
	jmp	.LBB1_7
.LBB1_5:                                # %sw.bb.12
	movl	4(%r14), %eax
	movl	$9, %r8d
.LBB1_7:                                # %aod
	movq	(%r12), %rbx
	leal	(,%rax,8), %ecx
	leaq	(%rcx,%rbx), %rcx
	movq	%rcx, (%r12)
	jmp	.LBB1_11
.LBB1_2:                                # %sw.bb.4
	movq	8(%r14), %rbx
	movl	$1, %r8d
	jmp	.LBB1_11
.LBB1_10:                               # %sw.bb.3
	movl	$10, %r8d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	jmp	.LBB1_11
.LBB1_8:                                # %sw.bb.21
	movq	8(%rdi), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %r12
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r10, %rbx
	callq	names_string_ref
	movq	%rbx, %r10
	movzwl	8(%rsp), %eax
	andl	$65407, %eax            # imm = 0xFF7F
	movzwl	(%r14), %ecx
	andl	$128, %ecx
	orl	%eax, %ecx
	movw	%cx, 8(%rsp)
	movl	$3, %edx
	movq	%r12, %r14
.LBB1_9:                                # %nos
	movl	4(%r14), %eax
	movq	(%r15), %rbx
	leaq	(%rax,%rbx), %rcx
	movq	%rcx, (%r15)
	movl	%edx, %r8d
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb.7
	movq	8(%r14), %rbx
	movl	$2, %r8d
.LBB1_11:                               # %sw.epilog
	movl	%eax, %edi
	shrl	$8, %edi
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movq	%rbx, %rbp
	shrq	$16, %rbp
	movq	%rbx, %rsi
	shrq	$24, %rsi
	andq	$1, %r10
	movb	%al, %r9b
	je	.LBB1_13
# BB#12:                                # %sw.epilog
	movb	%dil, %r9b
.LBB1_13:                               # %sw.epilog
	je	.LBB1_15
# BB#14:                                # %sw.epilog
	movb	%al, %dil
.LBB1_15:                               # %sw.epilog
	movb	%bl, %al
	je	.LBB1_17
# BB#16:                                # %sw.epilog
	movb	%sil, %al
.LBB1_17:                               # %sw.epilog
	movq	%rbp, %rdx
	cmoveq	%rcx, %rdx
	cmoveq	%rbp, %rcx
	testq	%r10, %r10
	je	.LBB1_19
# BB#18:                                # %sw.epilog
	movb	%bl, %sil
.LBB1_19:                               # %sw.epilog
	movb	%r9b, 2(%r13)
	movb	%dil, 3(%r13)
	movb	%al, 4(%r13)
	movb	%dl, 5(%r13)
	movb	%cl, 6(%r13)
	movb	%sil, 7(%r13)
	movzwl	(%r14), %eax
	movl	%r8d, %ecx
	subl	$-128, %ecx
	testb	$-128, %al
	cmovel	%r8d, %ecx
	movb	%cl, (%r13)
	xorl	%ecx, %ecx
.LBB1_20:                               # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	encode_binary_token, .Lfunc_end1-encode_binary_token
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_4
	.quad	.LBB1_6
	.quad	.LBB1_20
	.quad	.LBB1_5
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_2
	.quad	.LBB1_10
	.quad	.LBB1_8
	.quad	.LBB1_11
	.quad	.LBB1_20
	.quad	.LBB1_3
	.quad	.LBB1_20
	.quad	.LBB1_9

	.text
	.align	16, 0x90
	.type	scan_bos_continue,@function
scan_bos_continue:                      # @scan_bos_continue
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
	subq	$152, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 208
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
	movq	%rdx, %r14
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	8(%r14), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	1132(%r14), %edx
	movl	1136(%r14), %ebp
	movl	1096(%r14), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	1128(%r14), %esi
	movl	1144(%r14), %edi
	leaq	1112(%r14), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	1120(%r14), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	$scan_bos_continue, 1104(%r14)
	movq	112(%rcx), %r9
	cmpl	%edx, %esi
	jae	.LBB2_84
# BB#1:                                 # %for.body.lr.ph
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movl	%edi, 44(%rsp)          # 4-byte Spill
	movq	120(%rcx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	-1(%rsi), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	%esi, %ebp
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_11:                               # %select.end
                                        #   in Loop: Header=BB2_2 Depth=1
	shlq	$4, %rbx
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %r15
	movl	$1024, %eax             # imm = 0x400
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_12:                               # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	orl	%r13d, %r8d
	jne	.LBB2_13
# BB#14:                                # %if.end.32
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$3584, (%r15)           # imm = 0xE00
	jmp	.LBB2_15
.LBB2_16:                               # %sw.bb.33
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r13d, %r13d
	jne	.LBB2_13
# BB#17:                                # %if.end.36
                                        #   in Loop: Header=BB2_2 Depth=1
	movslq	%r8d, %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx,%rbx)
	movw	$2816, (%r15)           # imm = 0xB00
	jmp	.LBB2_15
.LBB2_18:                               # %sw.bb.41
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r13d, %r13d
	je	.LBB2_21
# BB#19:                                # %if.then.44
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$32, %r13d
	jae	.LBB2_20
# BB#24:                                # %if.end.48
                                        #   in Loop: Header=BB2_2 Depth=1
	cvtsi2sdl	%r8d, %xmm0
	negl	%r13d
	movl	%r13d, %edi
	movq	%r9, %rbp
	callq	ldexp
	movq	%rbp, %r9
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 148(%rsp)
	movd	%xmm0, %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_25
.LBB2_26:                               # %sw.bb.62
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r13d, %r13d
	jne	.LBB2_13
# BB#27:                                # %if.end.65
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r8d, %r8d
	setne	%al
	movzbl	%al, %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movw	%ax, 8(%rcx,%rbx)
	movw	$256, (%r15)            # imm = 0x100
	jmp	.LBB2_15
.LBB2_28:                               # %sw.bb.72
                                        #   in Loop: Header=BB2_2 Depth=1
	orl	$112, %r12d
	jmp	.LBB2_29
.LBB2_61:                               # %sw.bb.133
                                        #   in Loop: Header=BB2_2 Depth=1
	orl	$96, %r12d
.LBB2_62:                               # %sw.bb.135
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$65535, %r13d           # imm = 0xFFFF
	jne	.LBB2_63
# BB#69:                                # %sw.bb.141
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rax
	movq	576(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB2_72
# BB#70:                                # %lor.lhs.false.i.207
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movslq	%r8d, %rdx
	movq	%r15, %rcx
	movq	%r8, %rbp
	callq	array_get
	movq	%rbp, %r8
	testl	%eax, %eax
	js	.LBB2_72
# BB#71:                                # %lor.lhs.false.3.i.210
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	je	.LBB2_82
	jmp	.LBB2_72
.LBB2_79:                               # %sw.bb.197
                                        #   in Loop: Header=BB2_2 Depth=1
	orl	%r13d, %r8d
	jne	.LBB2_5
# BB#80:                                # %if.end.201
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$3072, (%r15)           # imm = 0xC00
.LBB2_15:                               # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB2_32
.LBB2_77:                               # %sw.bb.189
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$1280, %eax             # imm = 0x500
	cmpl	$1, %r13d
	je	.LBB2_73
# BB#78:                                # %sw.bb.189
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r13d, %ecx
	andl	$1, %ecx
	movl	$-18, %ebp
	jne	.LBB2_87
.LBB2_73:                               # %arr
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	(%r8,%r13), %ecx
	movl	48(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %ecx
	ja	.LBB2_75
# BB#74:                                # %arr
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r8d, %ecx
	andl	$7, %ecx
	jne	.LBB2_75
# BB#76:                                # %if.end.167
                                        #   in Loop: Header=BB2_2 Depth=1
	shrl	$3, %r8d
	leal	(%r13,%r8), %ecx
	movq	120(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	cmoval	%edx, %ecx
	shlq	$4, %r8
	movq	128(%rsp), %rsi         # 8-byte Reload
	leaq	(%r8,%rsi), %rdx
	movq	%rdx, 8(%rsi,%rbx)
	movq	88(%rsp), %rdx          # 8-byte Reload
	orl	56(%rdx), %r12d
	orl	76(%rdx), %r12d
	orl	$112, %r12d
	addl	%eax, %r12d
	movw	%r12w, (%r15)
	movl	%r13d, 4(%rsi,%rbx)
	movl	%ecx, %edx
	jmp	.LBB2_31
.LBB2_63:                               # %sw.bb.135
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r13d, %r13d
	jne	.LBB2_29
# BB#64:                                # %sw.bb.136
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rbx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	48(%rax), %rax
	movq	576(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB2_67
# BB#65:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movslq	%r8d, %rdx
	movq	%r15, %rcx
	movq	%r8, %rbp
	callq	array_get
	movq	%rbp, %r8
	testl	%eax, %eax
	js	.LBB2_67
# BB#66:                                # %lor.lhs.false.3.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	jne	.LBB2_67
.LBB2_82:                               # %if.end.153
                                        #   in Loop: Header=BB2_2 Depth=1
	movzwl	(%r15), %eax
	orl	%r12d, %eax
	movw	%ax, (%r15)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbx, %r9
	jmp	.LBB2_83
.LBB2_29:                               # %str
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	120(%rsp), %rdx         # 8-byte Reload
	testl	%r13d, %r13d
	je	.LBB2_30
# BB#33:                                # %if.end.82
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	(,%rdx,8), %eax
	cmpl	%eax, %r8d
	jb	.LBB2_35
# BB#34:                                # %if.end.82
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	(%r13,%r8), %eax
	cmpl	44(%rsp), %eax          # 4-byte Folded Reload
	ja	.LBB2_35
# BB#36:                                # %if.end.89
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	48(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %r8d
	jae	.LBB2_37
# BB#38:                                # %if.then.92
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, 136(%rsp)          # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	%r12d, 24(%rsp)         # 4-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	44(%rsp), %r13d         # 4-byte Reload
	subl	%r8d, %r13d
	movq	%r8, 48(%rsp)           # 8-byte Spill
	cmpl	$0, 56(%r14)
	je	.LBB2_57
# BB#39:                                # %if.then.95
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	48(%r14), %ebp
	movq	32(%r14), %r12
	subl	%r12d, %ebp
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L.str.14, %r8d
	movq	%r12, %rsi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	callq	*152(%rdi)
	movl	%r13d, %edx
	subl	%ebp, %edx
	movl	$-25, %ebp
	testq	%rax, %rax
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	136(%rsp), %r9          # 8-byte Reload
	je	.LBB2_87
# BB#40:                                # %if.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	104(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	je	.LBB2_59
# BB#41:                                # %if.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, %rcx
	addq	%rdx, %rcx
	cmpq	%r12, %rcx
	je	.LBB2_59
# BB#42:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	leal	(%rdx,%rsi), %esi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	8(%rdx), %rdx
	testb	$1, %sil
	jne	.LBB2_44
# BB#43:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%edi, %esi
	jmp	.LBB2_48
.LBB2_30:                               # %if.then.76
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	$0, 8(%rax,%rbx)
	orl	$4608, %r12d            # imm = 0x1200
	movw	%r12w, (%r15)
	movl	$0, 4(%rax,%rbx)
.LBB2_31:                               # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
.LBB2_32:                               # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB2_83:                               # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	addq	$8, %r9
	incl	%ebp
	incl	%edi
	cmpl	%edx, %ebp
	jb	.LBB2_2
	jmp	.LBB2_84
.LBB2_37:                               # %if.end.89.if.end.117_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	32(%r14), %rax
	movq	104(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_60
.LBB2_21:                               # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %r12
	movq	%rbp, %rdi
	movl	100(%rsp), %esi         # 4-byte Reload
	leaq	148(%rsp), %rdx
	callq	sdecode_float
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_23
# BB#22:                                # %if.else.cleanup_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	148(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%r12, %r9
.LBB2_25:                               # %cleanup
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	128(%rsp), %rsi         # 8-byte Reload
	movl	%eax, 8(%rsi,%rbx)
	movw	$4096, (%r15)           # imm = 0x1000
	jmp	.LBB2_83
.LBB2_57:                               # %if.else.97
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L.str.10, %edx
	movl	%r13d, %esi
	callq	*136(%rdi)
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	136(%rsp), %r9          # 8-byte Reload
	jmp	.LBB2_58
.LBB2_44:                               # %for.body.i.prol
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	1(%rdx), %esi
	cmpl	$18, %esi
	jne	.LBB2_47
# BB#45:                                # %land.lhs.true.i.prol
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 4(%rdx)
	je	.LBB2_47
# BB#46:                                # %if.then.18.i.prol
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	8(%rdx), %rsi
	subq	%r12, %rsi
	leaq	(%rsi,%rcx), %rsi
	movq	%rsi, 8(%rdx)
.LBB2_47:                               # %for.inc.i.prol
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%rdi), %esi
	addq	$16, %rdx
.LBB2_48:                               # %for.body.i.preheader.split
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	28(%rsp), %edi          # 4-byte Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
	addl	%ebp, %edi
	je	.LBB2_58
# BB#49:                                # %for.body.i.preheader.split.split
                                        #   in Loop: Header=BB2_2 Depth=1
	addq	$24, %rdx
	.align	16, 0x90
.LBB2_50:                               # %for.body.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-23(%rdx), %edi
	cmpl	$18, %edi
	jne	.LBB2_53
# BB#51:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_50 Depth=2
	cmpl	$0, -20(%rdx)
	je	.LBB2_53
# BB#52:                                # %if.then.18.i
                                        #   in Loop: Header=BB2_50 Depth=2
	movq	-16(%rdx), %rdi
	subq	%r12, %rdi
	leaq	(%rdi,%rcx), %rdi
	movq	%rdi, -16(%rdx)
.LBB2_53:                               # %for.inc.i
                                        #   in Loop: Header=BB2_50 Depth=2
	movzbl	-7(%rdx), %edi
	cmpl	$18, %edi
	jne	.LBB2_56
# BB#54:                                # %land.lhs.true.i.1
                                        #   in Loop: Header=BB2_50 Depth=2
	cmpl	$0, -4(%rdx)
	je	.LBB2_56
# BB#55:                                # %if.then.18.i.1
                                        #   in Loop: Header=BB2_50 Depth=2
	movq	(%rdx), %rdi
	subq	%r12, %rdi
	leaq	(%rdi,%rcx), %rdi
	movq	%rdi, (%rdx)
.LBB2_56:                               # %for.inc.i.1
                                        #   in Loop: Header=BB2_50 Depth=2
	addq	$32, %rdx
	addl	$-2, %esi
	jne	.LBB2_50
.LBB2_58:                               # %if.end.101
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB2_87
.LBB2_59:                               # %cleanup.114
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$1, 56(%r14)
	movq	%rax, 40(%r14)
	movq	%rax, 32(%r14)
	movl	%r13d, %ecx
	leaq	(%rcx,%rax), %rcx
	movq	%rcx, 48(%r14)
	movl	%r8d, %ecx
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
	movl	24(%rsp), %r12d         # 4-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
.LBB2_60:                               # %if.end.117
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	subl	%ecx, %r8d
	addq	%rax, %r8
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	%r8, 8(%rcx,%rbx)
	movq	88(%rsp), %rax          # 8-byte Reload
	orl	56(%rax), %r12d
	addl	$4608, %r12d            # imm = 0x1200
	movw	%r12w, (%r15)
	movl	%r13d, 4(%rcx,%rbx)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB2_83
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_50 Depth 2
	movl	%ebp, %esi
	movq	%r9, 112(%rcx)
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%r9, %rax
	cmpq	$7, %rax
	jle	.LBB2_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpb	$0, 2(%r9)
	jne	.LBB2_5
# BB#8:                                 # %if.end.21
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%r14, %r15
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	$128, %r12d
	cmpb	$0, 1(%r9)
	js	.LBB2_10
# BB#9:                                 # %select.mid
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%r12d, %r12d
.LBB2_10:                               # %select.end
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	3(%r9), %rdi
	movl	100(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	movq	%r9, %r14
	callq	sdecodeushort
	movl	%eax, %r13d
	leaq	5(%r14), %rbp
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	sdecodeint32
	movq	%r14, %r9
	movl	%eax, %r8d
	movzbl	1(%r9), %ecx
	andl	$127, %ecx
	cmpl	$15, %ecx
	movq	%r15, %r14
	movq	136(%rsp), %rbx         # 8-byte Reload
	jbe	.LBB2_11
.LBB2_81:                               # %sw.default.204
	leaq	1244(%r14), %rdi
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
	movq	$.L.str.3, (%rsp)
.LBB2_7:                                # %cleanup.229
	movl	$121, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	snprintf
	movl	$-18, %ebp
	jmp	.LBB2_87
.LBB2_84:                               # %for.end
	movq	%r9, 112(%rcx)
	movl	%edx, 1128(%r14)
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	8(%rbp), %rdi
	movl	$.L.str.5, %ecx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	gs_resize_ref_array
	movq	%rbp, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	callq	scan_bos_string_continue
	movl	%eax, %ebp
	cmpl	$3, %ebp
	jne	.LBB2_87
# BB#85:                                # %if.then.225
	movq	$scan_bos_string_continue, 1104(%r14)
.LBB2_86:                               # %cleanup.229
	movl	$3, %ebp
.LBB2_87:                               # %cleanup.229
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_5:                                # %if.then.20
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
	leaq	1244(%r14), %rdi
	jmp	.LBB2_6
.LBB2_3:                                # %if.then
	movl	%ebp, 1128(%r14)
	movl	%edx, 1132(%r14)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1136(%r14)
	movl	$1, 28(%r14)
	jmp	.LBB2_86
.LBB2_13:                               # %if.then.31
	leaq	1244(%r14), %rdi
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
.LBB2_6:                                # %cleanup.229
	movq	$.L.str.4, (%rsp)
	jmp	.LBB2_7
.LBB2_72:                               # %if.then.i.214
	leaq	1244(%r14), %rdi
	movl	$121, %esi
	movl	$.L.str.15, %edx
	movl	$.L.str.12, %ecx
	jmp	.LBB2_68
.LBB2_75:                               # %if.then.166
	leaq	1244(%r14), %rdi
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
	movq	$.L.str.13, (%rsp)
	jmp	.LBB2_7
.LBB2_67:                               # %if.then.i
	leaq	1244(%r14), %rdi
	movl	$121, %esi
	movl	$.L.str.15, %edx
	movl	$.L.str.11, %ecx
.LBB2_68:                               # %cleanup.229
	xorl	%eax, %eax
	callq	snprintf
	movl	$1, 1240(%r14)
	movl	$-21, %ebp
	jmp	.LBB2_87
.LBB2_35:                               # %if.then.88
	leaq	1244(%r14), %rdi
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
	movq	$.L.str.9, (%rsp)
	jmp	.LBB2_7
.LBB2_20:                               # %if.then.47
	leaq	1244(%r14), %rdi
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
	movq	$.L.str.7, (%rsp)
	jmp	.LBB2_7
.LBB2_23:                               # %if.then.56
	leaq	1244(%r14), %rdi
	movl	1140(%r14), %r8d
	movl	1148(%r14), %ecx
	movq	1152(%r14), %r9
	movq	$.L.str.8, (%rsp)
	movl	$121, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB2_87
.Lfunc_end2:
	.size	scan_bos_continue, .Lfunc_end2-scan_bos_continue
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_12
	.quad	.LBB2_16
	.quad	.LBB2_18
	.quad	.LBB2_62
	.quad	.LBB2_26
	.quad	.LBB2_28
	.quad	.LBB2_61
	.quad	.LBB2_81
	.quad	.LBB2_81
	.quad	.LBB2_73
	.quad	.LBB2_79
	.quad	.LBB2_81
	.quad	.LBB2_81
	.quad	.LBB2_81
	.quad	.LBB2_81
	.quad	.LBB2_77

	.text
	.align	16, 0x90
	.type	scan_bos_string_continue,@function
scan_bos_string_continue:               # @scan_bos_string_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 112
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	8(%r13), %rdi
	movq	40(%r13), %rbx
	movl	48(%r13), %ebp
	subl	%ebx, %ebp
	leaq	32(%rsp), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	sgets
	movl	32(%rsp), %eax
	cmpl	%ebp, %eax
	jne	.LBB3_1
# BB#2:                                 # %if.end
	leaq	1112(%r13), %rbx
	movl	1116(%r13), %ebp
	testl	%ebp, %ebp
	je	.LBB3_34
# BB#3:                                 # %for.body.lr.ph
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	56(%r15), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	8(%rbx), %rbx
	leaq	368(%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rbx), %eax
	cmpl	$5, %eax
	je	.LBB3_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpl	$18, %eax
	jne	.LBB3_6
# BB#8:                                 # %sw.bb
                                        #   in Loop: Header=BB3_4 Depth=1
	movzwl	(%rbx), %r12d
	testb	$16, %r12b
	jne	.LBB3_16
# BB#9:                                 # %if.end.8
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movl	$1, %r8d
	movq	%rbx, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB3_40
# BB#10:                                # %cleanup.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	andl	$160, %r12d
	orw	(%rbx), %r12w
	movw	%r12w, (%rbx)
	jmp	.LBB3_11
	.align	16, 0x90
.LBB3_15:                               # %sw.bb.55
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	$1, %r14d
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_6:                                # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpl	$13, %eax
	jne	.LBB3_16
# BB#7:                                 # %for.body.sw.bb.26_crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	movzwl	(%rbx), %r12d
.LBB3_11:                               # %sw.bb.26
                                        #   in Loop: Header=BB3_4 Depth=1
	testb	$32, %r12b
	je	.LBB3_16
# BB#12:                                # %if.then.32
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_index
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	%rax, %rcx
	movl	$-21, %eax
	testq	%rcx, %rcx
	je	.LBB3_40
# BB#13:                                # %if.end.42
                                        #   in Loop: Header=BB3_4 Depth=1
	movzwl	(%rcx), %edx
	andl	$12, %edx
	movl	$-7, %eax
	cmpl	20(%rsp), %edx          # 4-byte Folded Reload
	ja	.LBB3_40
# BB#14:                                # %cleanup.51
                                        #   in Loop: Header=BB3_4 Depth=1
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rbx)
	.align	16, 0x90
.LBB3_16:                               # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB3_4
# BB#17:                                # %for.end
	testl	%r14d, %r14d
	movq	(%rsp), %r14            # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	je	.LBB3_34
# BB#18:                                # %if.then.57
	movl	4(%rbx), %ebp
	testl	%ebp, %ebp
	je	.LBB3_34
# BB#19:                                # %for.body.67.lr.ph
	movq	8(%rbx), %rbx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_20:                               # %for.body.67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_37 Depth 2
	movzbl	1(%rbx), %eax
	cmpl	$5, %eax
	jne	.LBB3_26
# BB#21:                                # %sw.bb.72
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%r14, %r12
	movl	4(%rbx), %r14d
	cmpl	$1, %r14d
	jne	.LBB3_35
# BB#22:                                # %if.then.77
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	8(%rbx), %rcx
	movl	$1, %eax
	cmpq	%rbx, %rcx
	movq	%r12, %r14
	jae	.LBB3_25
# BB#23:                                # %if.then.82
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	%r14, %r12
	movups	(%rcx), %xmm0
	movaps	%xmm0, 32(%rsp)
	jmp	.LBB3_24
.LBB3_35:                               # %if.else.86
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	8(%r15), %rdi
	movl	%r14d, %esi
	shrl	%esi
	leaq	32(%rsp), %rdx
	callq	dict_alloc
	testl	%eax, %eax
	js	.LBB3_40
# BB#36:                                # %while.cond.preheader
                                        #   in Loop: Header=BB3_20 Depth=1
	decl	%r14d
	.align	16, 0x90
.LBB3_37:                               # %while.cond
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$-1, %r14d
	je	.LBB3_24
# BB#38:                                # %while.body
                                        #   in Loop: Header=BB3_37 Depth=2
	leal	-1(%r14), %eax
	movq	8(%rbx), %rcx
	shlq	$4, %rax
	movl	%r14d, %edx
	shlq	$4, %rdx
	leaq	(%rax,%rcx), %rsi
	leaq	(%rdx,%rcx), %rdx
	leaq	32(%rsp), %rdi
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	addl	$-2, %r14d
	testl	%eax, %eax
	jns	.LBB3_37
	jmp	.LBB3_40
.LBB3_24:                               # %if.end.108
                                        #   in Loop: Header=BB3_20 Depth=1
	movzwl	32(%rsp), %eax
	orl	$112, %eax
	movw	%ax, 32(%rsp)
	andl	$65407, %eax            # imm = 0xFF7F
	movzwl	(%rbx), %ecx
	andl	$128, %ecx
	orl	%eax, %ecx
	movw	%cx, 32(%rsp)
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movl	20(%rsp), %eax          # 4-byte Reload
	movq	%r12, %r14
.LBB3_25:                               # %cleanup.126.thread100
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	%eax, %ecx
.LBB3_26:                               # %for.inc.131
                                        #   in Loop: Header=BB3_20 Depth=1
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB3_20
# BB#27:                                # %if.end.135
	testl	%ecx, %ecx
	movq	8(%rsp), %rbx           # 8-byte Reload
	je	.LBB3_34
# BB#28:                                # %if.then.137
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.LBB3_34
# BB#29:                                # %for.body.147.lr.ph
	movq	8(%rbx), %rcx
.LBB3_30:                               # %for.body.147
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rcx), %edx
	cmpl	$5, %edx
	jne	.LBB3_33
# BB#31:                                # %if.then.154
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	8(%rcx), %rdx
	movzbl	1(%rdx), %esi
	cmpl	$5, %esi
	je	.LBB3_39
# BB#32:                                # %cleanup.177.thread
                                        #   in Loop: Header=BB3_30 Depth=1
	movzwl	(%rdx), %esi
	movq	2(%rdx), %rdi
	movq	8(%rdx), %rdx
	movq	%rdx, 38(%rsp)
	movq	%rdi, 32(%rsp)
	andl	$65407, %esi            # imm = 0xFF7F
	movzwl	(%rcx), %edx
	andl	$128, %edx
	orl	%esi, %edx
	movw	%dx, (%rcx)
	movq	32(%rsp), %rdx
	movq	38(%rsp), %rsi
	movq	%rsi, 8(%rcx)
	movq	%rdx, 2(%rcx)
.LBB3_33:                               # %for.inc.182
                                        #   in Loop: Header=BB3_30 Depth=1
	addq	$16, %rcx
	decl	%eax
	jne	.LBB3_30
.LBB3_34:                               # %if.end.186
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14)
	movl	1140(%r13), %eax
	movl	%eax, 4(%r14)
	movl	$1, %eax
	jmp	.LBB3_40
.LBB3_1:                                # %scan_bin_string_continue.exit
	addq	%rax, %rbx
	movq	%rbx, 40(%r13)
	movl	$1, 28(%r13)
	movl	$3, %eax
.LBB3_40:                               # %cleanup.190
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_39:                               # %cleanup.177
	movl	$-18, %eax
	jmp	.LBB3_40
.Lfunc_end3:
	.size	scan_bos_string_continue, .Lfunc_end3-scan_bos_string_continue
	.cfi_endproc

	.align	16, 0x90
	.type	scan_bin_string_continue,@function
scan_bin_string_continue:               # @scan_bin_string_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 64
.Ltmp58:
	.cfi_offset %rbx, -48
.Ltmp59:
	.cfi_offset %r12, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	8(%rbx), %rdi
	movq	40(%rbx), %r12
	movl	48(%rbx), %ebp
	subl	%r12d, %ebp
	leaq	12(%rsp), %rcx
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	sgets
	movl	12(%rsp), %eax
	cmpl	%ebp, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	32(%rbx), %rax
	movq	%rax, 8(%r14)
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%r14)
	movl	48(%rbx), %eax
	subl	32(%rbx), %eax
	movl	%eax, 4(%r14)
	xorl	%eax, %eax
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	addq	%rax, %r12
	movq	%r12, 40(%rbx)
	movl	$1, 28(%rbx)
	movl	$3, %eax
.LBB4_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	scan_bin_string_continue, .Lfunc_end4-scan_bin_string_continue
	.cfi_endproc

	.align	16, 0x90
	.type	scan_bin_num_array_continue,@function
scan_bin_num_array_continue:            # @scan_bin_num_array_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 80
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	1128(%r15), %r12d
	leaq	1112(%r15), %r13
	cmpl	1116(%r15), %r12d
	jae	.LBB5_9
# BB#1:                                 # %for.body.lr.ph
	movq	8(%r15), %rbp
	movl	1096(%r15), %eax
	sarl	$4, %eax
	cltq
	movq	%r12, %rbx
	shlq	$4, %rbx
	addq	1120(%r15), %rbx
	movzbl	enc_num_bytes(%rax), %r14d
	movq	112(%rbp), %rdi
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rbp), %rax
	subq	%rdi, %rax
	cmpq	%r14, %rax
	jl	.LBB5_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	incq	%rdi
	movl	1096(%r15), %esi
	movq	%rbx, %rdx
	callq	sdecode_number
	cmpl	$11, %eax
	je	.LBB5_8
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$16, %eax
	jne	.LBB5_6
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	shll	$8, %eax
	movw	%ax, (%rbx)
	movq	112(%rbp), %rdi
	addq	%r14, %rdi
	movq	%rdi, 112(%rbp)
	incl	%r12d
	addq	$16, %rbx
	cmpl	4(%r13), %r12d
	jb	.LBB5_2
.LBB5_9:                                # %for.end
	movups	(%r13), %xmm0
	movq	16(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB5_10
.LBB5_3:                                # %if.then
	movl	%r12d, 1128(%r15)
	movl	$1, 28(%r15)
	movl	$3, %eax
	jmp	.LBB5_10
.LBB5_6:                                # %if.end
	cmpl	$14, %eax
	jne	.LBB5_10
# BB#7:                                 # %sw.bb.23
	movl	1140(%r15), %r8d
	movl	1148(%r15), %ecx
	movq	1152(%r15), %r9
	leaq	1244(%r15), %rdi
	movq	$.L.str.18, (%rsp)
	movl	$121, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	snprintf
	movl	$-18, %eax
.LBB5_10:                               # %cleanup.25
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	scan_bin_num_array_continue, .Lfunc_end5-scan_bin_num_array_continue
	.cfi_endproc

	.type	bin_token_bytes,@object # @bin_token_bytes
	.section	.rodata,"a",@progbits
	.align	16
bin_token_bytes:
	.ascii	"\004\004\004\004\005\005\003\003\002\002\005\005\005\002\002\003\003\002\002\002\002\004\001\001\001\001\001\001\001\001\001\001"
	.size	bin_token_bytes, 32

	.type	bin_token_num_formats,@object # @bin_token_num_formats
	.align	16
bin_token_num_formats:
	.asciz	"0\2600\260\000\200 \240\000\0000\2601\000\000\000\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	bin_token_num_formats, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"binary token, type=%d"
	.size	.L.str, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sequence too short"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"invalid object type"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"non-zero unused field"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"binary object sequence(objects)"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"bin obj seq, type=%d, elements=%u, size=%lu, %s"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalid number format"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"invalid real number"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"invalid string offset"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"bos strings"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"user"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"system"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"bad array offset"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"scan_bos_resize"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s%d"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"string token"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"number array token"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"bad number format"
	.size	.L.str.18, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
