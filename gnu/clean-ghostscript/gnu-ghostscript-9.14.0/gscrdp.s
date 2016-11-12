	.text
	.file	"gscrdp.bc"
	.globl	param_write_cie_render1
	.align	16, 0x90
	.type	param_write_cie_render1,@function
param_write_cie_render1:                # @param_write_cie_render1
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
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$20, 8(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	*8(%rax)
	testl	%eax, %eax
	js	.LBB0_2
# BB#1:                                 # %if.end
	movq	(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	param_put_cie_render1
	movl	%eax, %ebp
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	testl	%ebp, %ebp
	cmovsl	%ebp, %eax
.LBB0_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	param_write_cie_render1, .Lfunc_end0-param_write_cie_render1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602661192559623935     # double 0.49902152641878667
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_1:
	.long	1191178240              # float 32760
	.text
	.globl	param_put_cie_render1
	.align	16, 0x90
	.type	param_put_cie_render1,@function
param_put_cie_render1:                  # @param_put_cie_render1
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
	subq	$136, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 192
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
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$101, 76(%rsp)
	movq	%rbx, %rdi
	callq	gs_cie_render_sample
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#1:                                 # %if.end
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# BB#2:                                 # %if.then.1
	movq	%rdi, 80(%rsp)
	callq	strlen
	movl	$1, 92(%rsp)
	incl	%eax
	movl	%eax, 88(%rsp)
	movq	152(%rbx), %rax
	movq	%rax, 120(%rsp)
	movl	160(%rbx), %eax
	movl	%eax, 128(%rsp)
	movl	$1, 132(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	param_write_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#3:                                 # %cleanup
	leaq	120(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_5
	jmp	.LBB1_54
.LBB1_4:                                # %if.else
	movq	136(%rbx), %rax
	movl	$-15, %ebp
	cmpq	TransformPQR_default(%rip), %rax
	jne	.LBB1_54
.LBB1_5:                                # %if.end.29
	leaq	76(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#6:                                 # %lor.lhs.false.33
	movl	48(%rbx), %eax
	movl	%eax, 120(%rsp)
	movl	52(%rbx), %eax
	movl	%eax, 124(%rsp)
	movl	56(%rbx), %eax
	movl	%eax, 128(%rsp)
	movl	$3, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#7:                                 # %write_vector3.exit
	leaq	120(%rsp), %rsi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 80(%rsp)
	movabsq	$4294967299, %r12       # imm = 0x100000003
	movq	%r12, 88(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#8:                                 # %if.end.38
	leaq	60(%rbx), %rdi
	movl	$BlackPoint_default, %esi
	movl	$12, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_11
# BB#9:                                 # %if.then.42
	movl	60(%rbx), %eax
	movl	%eax, 120(%rsp)
	movl	64(%rbx), %eax
	movl	%eax, 124(%rsp)
	movl	68(%rbx), %eax
	movl	%eax, 128(%rsp)
	movl	$3, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#10:                                # %write_vector3.exit143
	leaq	120(%rsp), %rsi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 80(%rsp)
	movq	%r12, 88(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
.LBB1_11:                               # %if.end.50
	leaq	72(%rbx), %rdi
	movl	$Matrix3_default, %esi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_14
# BB#12:                                # %if.end.i
	movups	72(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	88(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	104(%rbx), %eax
	movl	%eax, 112(%rsp)
	movl	$9, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#13:                                # %write_matrix3.exit
	leaq	80(%rsp), %rsi
	movl	$36, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 120(%rsp)
	movabsq	$4294967305, %rax       # imm = 0x100000009
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
.LBB1_14:                               # %lor.lhs.false.54
	leaq	112(%rbx), %rdi
	movl	$Range3_default, %esi
	movl	$24, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_17
# BB#15:                                # %if.end.i.156
	movups	112(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	128(%rbx), %eax
	movl	%eax, 96(%rsp)
	movl	132(%rbx), %eax
	movl	%eax, 100(%rsp)
	movl	$6, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#16:                                # %write_range3.exit
	leaq	80(%rsp), %rsi
	movl	$24, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 120(%rsp)
	movabsq	$4294967302, %rax       # imm = 0x100000006
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
.LBB1_17:                               # %lor.lhs.false.58
	leaq	176(%rbx), %rdi
	movl	$Matrix3_default, %esi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_20
# BB#18:                                # %if.end.i.189
	movups	176(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	192(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	208(%rbx), %eax
	movl	%eax, 112(%rsp)
	movl	$9, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#19:                                # %write_matrix3.exit191
	leaq	80(%rsp), %rsi
	movl	$36, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 120(%rsp)
	movabsq	$4294967305, %rax       # imm = 0x100000009
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
.LBB1_20:                               # %lor.lhs.false.62
	leaq	216(%rbx), %rcx
	leaq	416(%rbx), %r8
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r13, %r9
	callq	write_proc3
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#21:                                # %lor.lhs.false.66
	leaq	240(%rbx), %rdi
	movl	$Range3_default, %esi
	movl	$24, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_24
# BB#22:                                # %if.end.i.217
	movups	240(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	256(%rbx), %eax
	movl	%eax, 96(%rsp)
	movl	260(%rbx), %eax
	movl	%eax, 100(%rsp)
	movl	$6, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#23:                                # %write_range3.exit219
	leaq	80(%rsp), %rsi
	movl	$24, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 120(%rsp)
	movabsq	$4294967302, %rax       # imm = 0x100000006
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
.LBB1_24:                               # %lor.lhs.false.70
	leaq	264(%rbx), %rdi
	movl	$Matrix3_default, %esi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_27
# BB#25:                                # %if.end.i.251
	movups	264(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	280(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	296(%rbx), %eax
	movl	%eax, 112(%rsp)
	movl	$9, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#26:                                # %write_matrix3.exit253
	leaq	80(%rsp), %rsi
	movl	$36, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 120(%rsp)
	movabsq	$4294967305, %rax       # imm = 0x100000009
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
.LBB1_27:                               # %lor.lhs.false.74
	leaq	304(%rbx), %rcx
	leaq	440(%rbx), %r8
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r13, %r9
	callq	write_proc3
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#28:                                # %lor.lhs.false.78
	leaq	328(%rbx), %rdi
	movl	$Range3_default, %esi
	movl	$24, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_29
# BB#30:                                # %if.end.i.279
	movups	328(%rbx), %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	344(%rbx), %eax
	movl	%eax, 96(%rsp)
	movl	348(%rbx), %eax
	movl	%eax, 100(%rsp)
	movl	$6, %esi
	movl	$4, %edx
	movl	$.L.str.19, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_53
# BB#31:                                # %write_range3.exit281
	leaq	80(%rsp), %rsi
	movl	$24, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 120(%rsp)
	movabsq	$4294967302, %rax       # imm = 0x100000006
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_32
	jmp	.LBB1_54
.LBB1_29:                               # %write_range3.exit281.thread
	xorl	%ebp, %ebp
.LBB1_32:                               # %if.end.83
	cmpq	$0, 376(%rbx)
	je	.LBB1_54
# BB#33:                                # %if.then.85
	movslq	352(%rbx), %r14
	movl	356(%rbx), %r12d
	movl	372(%rbx), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	leal	1(%r14), %esi
	movl	%esi, 48(%rsp)          # 4-byte Spill
	movl	$4, %edx
	movl	$.L.str.13, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$16, %edx
	movl	$.L.str.14, %ecx
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	*88(%r13)
	movq	%rax, %r8
	testq	%rbp, %rbp
	movl	$-25, %ebp
	je	.LBB1_52
# BB#34:                                # %if.then.85
	testq	%r8, %r8
	je	.LBB1_52
# BB#35:                                # %if.end.118
	leaq	356(%rbx), %rsi
	leaq	(,%r14,4), %rdx
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r8, 16(%rsp)           # 8-byte Spill
	callq	memcpy
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rbp,%r14,4)
	movq	%rbp, 80(%rsp)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 88(%rsp)
	movl	$1, 92(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	param_write_int_array
	movq	16(%rsp), %r8           # 8-byte Reload
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_52
# BB#36:                                # %if.then.121
	testl	%r12d, %r12d
	jle	.LBB1_42
# BB#37:                                # %for.body.lr.ph
	movq	376(%rbx), %rdx
	xorl	%esi, %esi
	testb	$1, %r12b
	je	.LBB1_39
# BB#38:                                # %for.body.prol
	movq	(%rdx), %rax
	movq	%rax, (%r8)
	movl	8(%rdx), %eax
	movl	%eax, 8(%r8)
	movl	$1, 12(%r8)
	movl	$1, %esi
.LBB1_39:                               # %for.body.lr.ph.split
	cmpl	$1, %r12d
	je	.LBB1_42
# BB#40:                                # %for.body.lr.ph.split.split
	movl	%r12d, %eax
	subl	%esi, %eax
	shlq	$4, %rsi
	leaq	28(%rsi,%r8), %rcx
	leaq	24(%rsi,%rdx), %rdx
.LBB1_41:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rdx), %rsi
	movq	%rsi, -28(%rcx)
	movl	-16(%rdx), %esi
	movl	%esi, -20(%rcx)
	movl	$1, -16(%rcx)
	movq	-8(%rdx), %rsi
	movq	%rsi, -12(%rcx)
	movl	(%rdx), %esi
	movl	%esi, -4(%rcx)
	movl	$1, (%rcx)
	addq	$32, %rcx
	addq	$32, %rdx
	addl	$-2, %eax
	jne	.LBB1_41
.LBB1_42:                               # %for.end
	movq	%r8, 120(%rsp)
	movl	%r12d, 128(%rsp)
	movl	$1, 132(%rsp)
	leaq	120(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	param_write_string_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_43
# BB#44:                                # %land.lhs.true
	cmpl	$0, 46304(%rbx)
	jne	.LBB1_54
# BB#45:                                # %if.then.153
	movl	44(%rsp), %esi          # 4-byte Reload
	shll	$9, %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movl	$4, %edx
	movl	$.L.str.15, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.LBB1_53
# BB#46:                                # %for.cond.163.preheader
	xorl	%r12d, %r12d
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_51
# BB#47:
	xorl	%r14d, %r14d
.LBB1_48:                               # %for.cond.168.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_49 Depth 2
	movq	%r12, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
.LBB1_49:                               # %for.body.171
                                        #   Parent Loop BB1_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movzbl	%al, %edi
	movq	%rbx, %rsi
	callq	*384(%rbx,%r14,8)
	cwtl
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI1_1(%rip), %xmm0
	movl	%r12d, %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	movss	%xmm0, (%rdx,%rax,4)
	incq	%rbp
	incq	%r12
	cmpq	$512, %rbp              # imm = 0x200
	jne	.LBB1_49
# BB#50:                                # %for.end.189
                                        #   in Loop: Header=BB1_48 Depth=1
	movq	48(%rsp), %rdx          # 8-byte Reload
	incq	%r14
	movq	24(%rsp), %r12          # 8-byte Reload
	addq	$512, %r12              # imm = 0x200
	cmpl	44(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB1_48
.LBB1_51:                               # %if.end.209
	movq	%rdx, 56(%rsp)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	$1, 68(%rsp)
	leaq	56(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	16(%rsp), %r8           # 8-byte Reload
	jns	.LBB1_54
	jmp	.LBB1_52
.LBB1_53:                               # %cleanup.205
	movl	$-25, %ebp
.LBB1_54:                               # %cleanup.226
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_43:                               # %if.end.209.thread321
	movq	16(%rsp), %r8           # 8-byte Reload
.LBB1_52:                               # %if.then.212
	movl	$.L.str.14, %edx
	movq	%r13, %rdi
	movq	%r8, %rsi
	callq	*24(%r13)
	movl	$.L.str.13, %edx
	movq	%r13, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r13)
	jmp	.LBB1_54
.Lfunc_end1:
	.size	param_put_cie_render1, .Lfunc_end1-param_put_cie_render1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4647697223260307456     # double 511
	.text
	.align	16, 0x90
	.type	write_proc3,@function
write_proc3:                            # @write_proc3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 112
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$Encode_default, %esi
	movl	$24, %edx
	movq	%r15, %rdi
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB2_9
# BB#1:                                 # %if.end
	movl	$1536, %esi             # imm = 0x600
	movl	$4, %edx
	movl	$.L.str.15, %ecx
	movq	%rbp, %rdi
	callq	*88(%rbp)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB2_9
# BB#2:                                 # %for.cond.preheader
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movss	(%r13), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%r13), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	divsd	.LCPI2_0(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_3:                                # %for.body.15
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r12, %rdi
	callq	*(%r15)
	movss	%xmm0, (%rbp,%rbx,4)
	incq	%rbx
	cmpq	$512, %rbx              # imm = 0x200
	jne	.LBB2_3
# BB#4:                                 # %for.end
	movss	8(%r13), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	divsd	.LCPI2_0(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB2_5:                                # %for.body.15.1
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	mulsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r12, %rdi
	callq	*8(%r15)
	movss	%xmm0, 2048(%rbp,%r14,4)
	incq	%r14
	cmpq	$512, %r14              # imm = 0x200
	jne	.LBB2_5
# BB#6:                                 # %for.end.1
	movss	16(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	20(%r13), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	divsd	.LCPI2_0(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_7:                                # %for.body.15.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movq	%r12, %rdi
	callq	*16(%r15)
	movss	%xmm0, 4096(%rbp,%rbx,4)
	incq	%rbx
	cmpq	$512, %rbx              # imm = 0x200
	jne	.LBB2_7
# BB#8:                                 # %for.end.2
	movq	%rbp, 40(%rsp)
	movabsq	$4294968832, %rax       # imm = 0x100000600
	movq	%rax, 48(%rsp)
	leaq	40(%rsp), %rdx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	param_write_float_array
.LBB2_9:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	write_proc3, .Lfunc_end2-write_proc3
	.cfi_endproc

	.globl	gs_cie_render1_param_initialize
	.align	16, 0x90
	.type	gs_cie_render1_param_initialize,@function
gs_cie_render1_param_initialize:        # @gs_cie_render1_param_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 64
.Ltmp43:
	.cfi_offset %rbx, -48
.Ltmp44:
	.cfi_offset %r12, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_4
# BB#1:                                 # %if.end
	movq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_get_cie_render1
	movl	%eax, %ebp
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*16(%rax)
	testl	%ebp, %ebp
	js	.LBB3_4
# BB#2:                                 # %if.end.6
	testl	%eax, %eax
	movl	%eax, %ebp
	js	.LBB3_4
# BB#3:                                 # %if.end.9
	movq	%r14, %rdi
	callq	gs_cie_render_init
	movq	%r14, %rdi
	callq	gs_cie_render_sample
	movq	%r14, %rdi
	callq	gs_cie_render_complete
	movl	%eax, %ebp
.LBB3_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_cie_render1_param_initialize, .Lfunc_end3-gs_cie_render1_param_initialize
	.cfi_endproc

	.globl	param_get_cie_render1
	.align	16, 0x90
	.type	param_get_cie_render1,@function
param_get_cie_render1:                  # @param_get_cie_render1
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
	subq	$20616, %rsp            # imm = 0x5088
.Ltmp54:
	.cfi_def_cfa_offset 20672
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$0, (%r14)
	leaq	60(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB4_125
# BB#1:                                 # %entry
	cmpl	$101, 60(%rsp)
	jne	.LBB4_125
# BB#2:                                 # %lor.lhs.false.2
	leaq	20560(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_3
# BB#6:                                 # %read_floats.exit.i
	cmpl	$1, %eax
	je	.LBB4_8
# BB#7:                                 # %read_vector3.exit
	testl	%eax, %eax
	jns	.LBB4_8
	jmp	.LBB4_125
.LBB4_3:                                # %if.end.i.i
	cmpl	$3, 20568(%rsp)
	jne	.LBB4_4
# BB#5:                                 # %read_floats.exit.thread6.i
	movq	20560(%rsp), %rsi
	leaq	20600(%rsp), %rdi
	movl	$12, %edx
	callq	memcpy
	movl	20600(%rsp), %eax
	movl	%eax, 48(%r14)
	movl	20604(%rsp), %eax
	movl	%eax, 52(%r14)
	movl	20608(%rsp), %eax
	movl	%eax, 56(%r14)
.LBB4_8:                                # %lor.lhs.false.5
	leaq	20560(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_9
# BB#12:                                # %read_floats.exit.i.113
	cmpl	$1, %eax
	jne	.LBB4_14
# BB#13:                                # %sw.bb.i.114
	leaq	60(%r14), %rax
	movl	BlackPoint_default+8(%rip), %ecx
	movl	%ecx, 8(%rax)
	movq	BlackPoint_default(%rip), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB4_15
.LBB4_9:                                # %if.end.i.i.104
	cmpl	$3, 20568(%rsp)
	jne	.LBB4_10
# BB#11:                                # %read_floats.exit.thread6.i.111
	movq	20560(%rsp), %rsi
	leaq	20600(%rsp), %rdi
	movl	$12, %edx
	callq	memcpy
	movl	20600(%rsp), %eax
	movl	%eax, 60(%r14)
	movl	20604(%rsp), %eax
	movl	%eax, 64(%r14)
	movl	20608(%rsp), %eax
	movl	%eax, 68(%r14)
	jmp	.LBB4_15
.LBB4_14:                               # %read_vector3.exit116
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_15:                               # %lor.lhs.false.9
	leaq	20600(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_16
# BB#19:                                # %read_floats.exit
	cmpl	$1, %eax
	jne	.LBB4_21
# BB#20:                                # %sw.bb.i.118
	leaq	72(%r14), %rax
	movq	Matrix3_default+32(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Matrix3_default+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	Matrix3_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_22
.LBB4_4:                                # %read_vector3.exit.thread262
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_16:                               # %if.end.i
	cmpl	$9, 20608(%rsp)
	jne	.LBB4_17
# BB#18:                                # %read_floats.exit.thread268
	movq	20600(%rsp), %rsi
	leaq	20560(%rsp), %rdi
	movl	$36, %edx
	callq	memcpy
	movq	20560(%rsp), %rax
	movl	%eax, 72(%r14)
	shrq	$32, %rax
	movl	%eax, 76(%r14)
	movq	20568(%rsp), %rax
	movl	%eax, 80(%r14)
	shrq	$32, %rax
	movl	%eax, 84(%r14)
	movq	20576(%rsp), %rax
	movl	%eax, 88(%r14)
	shrq	$32, %rax
	movl	%eax, 92(%r14)
	movq	20584(%rsp), %rax
	movl	%eax, 96(%r14)
	shrq	$32, %rax
	movl	%eax, 100(%r14)
	movl	20592(%rsp), %eax
	movl	%eax, 104(%r14)
	jmp	.LBB4_22
.LBB4_21:                               # %read_matrix3.exit
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_22:                               # %lor.lhs.false.12
	leaq	20600(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_23
# BB#26:                                # %read_floats.exit.i.133
	cmpl	$1, %eax
	jne	.LBB4_28
# BB#27:                                # %sw.bb.i.134
	leaq	112(%r14), %rax
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_29
.LBB4_10:                               # %read_vector3.exit116.thread265
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_23:                               # %if.end.i.i.129
	cmpl	$6, 20608(%rsp)
	jne	.LBB4_24
# BB#25:                                # %read_floats.exit.thread10.i
	movq	20600(%rsp), %rsi
	leaq	20560(%rsp), %rdi
	movl	$24, %edx
	callq	memcpy
	movq	20560(%rsp), %rax
	movl	%eax, 112(%r14)
	shrq	$32, %rax
	movl	%eax, 116(%r14)
	movq	20568(%rsp), %rax
	movl	%eax, 120(%r14)
	shrq	$32, %rax
	movl	%eax, 124(%r14)
	movq	20576(%rsp), %rax
	movl	%eax, 128(%r14)
	shrq	$32, %rax
	movl	%eax, 132(%r14)
	jmp	.LBB4_29
.LBB4_28:                               # %read_range3.exit
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_29:                               # %lor.lhs.false.15
	leaq	20600(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_30
# BB#33:                                # %read_floats.exit161
	cmpl	$1, %eax
	jne	.LBB4_35
# BB#34:                                # %sw.bb.i.137
	leaq	176(%r14), %rax
	movq	Matrix3_default+32(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Matrix3_default+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	Matrix3_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_36
.LBB4_17:                               # %read_matrix3.exit.thread271
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_30:                               # %if.end.i.157
	cmpl	$9, 20608(%rsp)
	jne	.LBB4_31
# BB#32:                                # %read_floats.exit161.thread277
	movq	20600(%rsp), %rsi
	leaq	20560(%rsp), %rdi
	movl	$36, %edx
	callq	memcpy
	movq	20560(%rsp), %rax
	movl	%eax, 176(%r14)
	shrq	$32, %rax
	movl	%eax, 180(%r14)
	movq	20568(%rsp), %rax
	movl	%eax, 184(%r14)
	shrq	$32, %rax
	movl	%eax, 188(%r14)
	movq	20576(%rsp), %rax
	movl	%eax, 192(%r14)
	shrq	$32, %rax
	movl	%eax, 196(%r14)
	movq	20584(%rsp), %rax
	movl	%eax, 200(%r14)
	shrq	$32, %rax
	movl	%eax, 204(%r14)
	movl	20592(%rsp), %eax
	movl	%eax, 208(%r14)
	jmp	.LBB4_36
.LBB4_35:                               # %read_matrix3.exit151
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_36:                               # %lor.lhs.false.18
	leaq	20560(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB4_37
# BB#40:                                # %read_proc3.exit
	movl	%ebp, %eax
	jns	.LBB4_41
	jmp	.LBB4_125
.LBB4_24:                               # %read_range3.exit.thread274
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_37:                               # %if.end.i.i.167
	cmpl	$1536, 20568(%rsp)      # imm = 0x600
	jne	.LBB4_38
# BB#39:                                # %read_proc3.exit.thread283
	movq	20560(%rsp), %rsi
	leaq	80(%rsp), %rdi
	movl	$6144, %edx             # imm = 0x1800
	callq	memcpy
	xorl	%ebp, %ebp
.LBB4_41:                               # %lor.lhs.false.21
	leaq	20600(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_42
# BB#45:                                # %read_floats.exit.i.188
	cmpl	$1, %eax
	jne	.LBB4_47
# BB#46:                                # %sw.bb.i.189
	leaq	240(%r14), %rax
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_48
.LBB4_31:                               # %read_matrix3.exit151.thread280
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_42:                               # %if.end.i.i.176
	cmpl	$6, 20608(%rsp)
	jne	.LBB4_43
# BB#44:                                # %read_floats.exit.thread10.i.186
	movq	20600(%rsp), %rsi
	leaq	20560(%rsp), %rdi
	movl	$24, %edx
	callq	memcpy
	movq	20560(%rsp), %rax
	movl	%eax, 240(%r14)
	shrq	$32, %rax
	movl	%eax, 244(%r14)
	movq	20568(%rsp), %rax
	movl	%eax, 248(%r14)
	shrq	$32, %rax
	movl	%eax, 252(%r14)
	movq	20576(%rsp), %rax
	movl	%eax, 256(%r14)
	shrq	$32, %rax
	movl	%eax, 260(%r14)
	jmp	.LBB4_48
.LBB4_38:                               # %read_proc3.exit.thread
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_47:                               # %read_range3.exit191
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_48:                               # %lor.lhs.false.24
	leaq	20600(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_49
# BB#52:                                # %read_floats.exit218
	cmpl	$1, %eax
	jne	.LBB4_54
# BB#53:                                # %sw.bb.i.194
	leaq	264(%r14), %rax
	movq	Matrix3_default+32(%rip), %rcx
	movq	%rcx, 32(%rax)
	movups	Matrix3_default+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	Matrix3_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_55
.LBB4_49:                               # %if.end.i.214
	cmpl	$9, 20608(%rsp)
	jne	.LBB4_50
# BB#51:                                # %read_floats.exit218.thread290
	movq	20600(%rsp), %rsi
	leaq	20560(%rsp), %rdi
	movl	$36, %edx
	callq	memcpy
	movq	20560(%rsp), %rax
	movl	%eax, 264(%r14)
	shrq	$32, %rax
	movl	%eax, 268(%r14)
	movq	20568(%rsp), %rax
	movl	%eax, 272(%r14)
	shrq	$32, %rax
	movl	%eax, 276(%r14)
	movq	20576(%rsp), %rax
	movl	%eax, 280(%r14)
	shrq	$32, %rax
	movl	%eax, 284(%r14)
	movq	20584(%rsp), %rax
	movl	%eax, 288(%r14)
	shrq	$32, %rax
	movl	%eax, 292(%r14)
	movl	20592(%rsp), %eax
	movl	%eax, 296(%r14)
	jmp	.LBB4_55
.LBB4_54:                               # %read_matrix3.exit208
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_55:                               # %lor.lhs.false.27
	leaq	20560(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB4_56
# BB#59:                                # %read_proc3.exit229
	movl	%r12d, %eax
	jns	.LBB4_60
	jmp	.LBB4_125
.LBB4_43:                               # %read_range3.exit191.thread287
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_56:                               # %if.end.i.i.224
	cmpl	$1536, 20568(%rsp)      # imm = 0x600
	jne	.LBB4_57
# BB#58:                                # %read_proc3.exit229.thread296
	leaq	6224(%rsp), %rdi
	movq	20560(%rsp), %rsi
	movl	$6144, %edx             # imm = 0x1800
	callq	memcpy
	xorl	%r12d, %r12d
.LBB4_60:                               # %lor.lhs.false.31
	leaq	20600(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	testl	%eax, %eax
	je	.LBB4_61
# BB#64:                                # %read_floats.exit.i.248
	cmpl	$1, %eax
	jne	.LBB4_66
# BB#65:                                # %sw.bb.i.249
	leaq	328(%r14), %rax
	movq	Range3_default+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	movups	Range3_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_67
.LBB4_50:                               # %read_matrix3.exit208.thread293
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_61:                               # %if.end.i.i.236
	cmpl	$6, 20608(%rsp)
	jne	.LBB4_62
# BB#63:                                # %read_floats.exit.thread10.i.246
	movq	20600(%rsp), %rsi
	leaq	20560(%rsp), %rdi
	movl	$24, %edx
	callq	memcpy
	movq	20560(%rsp), %rax
	movl	%eax, 328(%r14)
	shrq	$32, %rax
	movl	%eax, 332(%r14)
	movq	20568(%rsp), %rax
	movl	%eax, 336(%r14)
	shrq	$32, %rax
	movl	%eax, 340(%r14)
	movq	20576(%rsp), %rax
	movl	%eax, 344(%r14)
	shrq	$32, %rax
	movl	%eax, 348(%r14)
	jmp	.LBB4_67
.LBB4_57:                               # %read_proc3.exit229.thread
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_66:                               # %read_range3.exit251
	testl	%eax, %eax
	js	.LBB4_125
.LBB4_67:                               # %if.end
	leaq	40(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	testl	%eax, %eax
	jne	.LBB4_68
# BB#70:                                # %sw.bb.35
	movl	48(%rsp), %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	je	.LBB4_125
# BB#71:                                # %lor.lhs.false.37
	decl	%ecx
	movq	40(%rsp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB4_125
# BB#72:                                # %if.end.43
	movq	TransformPQR_lookup_proc_name(%rip), %rax
	movq	%rax, 136(%r14)
	movq	%rdx, 144(%r14)
	leaq	24(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	testl	%eax, %eax
	jne	.LBB4_73
# BB#75:                                # %sw.bb.55
	movq	24(%rsp), %rax
	movq	%rax, 152(%r14)
	movl	32(%rsp), %eax
	movl	%eax, 160(%r14)
	jmp	.LBB4_76
.LBB4_68:                               # %if.end
	cmpl	$1, %eax
	jne	.LBB4_125
# BB#69:                                # %sw.bb
	movq	TransformPQR_default+32(%rip), %rax
	movq	%rax, 168(%r14)
	movups	TransformPQR_default+16(%rip), %xmm0
	movups	%xmm0, 152(%r14)
	movups	TransformPQR_default(%rip), %xmm0
	movups	%xmm0, 136(%r14)
	jmp	.LBB4_77
.LBB4_62:                               # %read_range3.exit251.thread300
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_73:                               # %if.end.43
	cmpl	$1, %eax
	jne	.LBB4_125
# BB#74:                                # %sw.bb.49
	movq	$0, 152(%r14)
	movl	$0, 160(%r14)
.LBB4_76:                               # %sw.epilog
	movq	%r15, %rdi
	callq	gs_devicename
	movq	%rax, 168(%r14)
.LBB4_77:                               # %sw.epilog.66
	leaq	80(%rsp), %rax
	movq	%rax, 40(%r14)
	leaq	216(%r14), %r13
	testl	%ebp, %ebp
	jle	.LBB4_79
# BB#78:                                # %if.then.69
	movq	Encode_default+16(%rip), %rax
	movq	%rax, 16(%r13)
	movups	Encode_default(%rip), %xmm0
	jmp	.LBB4_80
.LBB4_79:                               # %if.else
	movq	EncodeLMN_from_data+16(%rip), %rax
	movq	%rax, 16(%r13)
	movups	EncodeLMN_from_data(%rip), %xmm0
.LBB4_80:                               # %if.end.71
	movups	%xmm0, (%r13)
	leaq	304(%r14), %r15
	testl	%r12d, %r12d
	jle	.LBB4_82
# BB#81:                                # %if.then.74
	movq	Encode_default+16(%rip), %rax
	movq	%rax, 16(%r15)
	movups	Encode_default(%rip), %xmm0
	jmp	.LBB4_83
.LBB4_82:                               # %if.else.75
	movq	EncodeABC_from_data+16(%rip), %rax
	movq	%rax, 16(%r15)
	movups	EncodeABC_from_data(%rip), %xmm0
.LBB4_83:                               # %if.end.77
	movups	%xmm0, (%r15)
	leaq	64(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	param_read_int_array
	cmpl	$1, %eax
	jne	.LBB4_87
# BB#84:                                # %if.then.81
	movq	376(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_86
# BB#85:                                # %if.then.82
	movq	16(%r14), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	movq	$0, 376(%r14)
.LBB4_86:                               # %if.end.91
	movups	RenderTableT_default+16(%rip), %xmm0
	movups	%xmm0, 400(%r14)
	movups	RenderTableT_default(%rip), %xmm0
	movups	%xmm0, 384(%r14)
	movl	$1, %ebx
.LBB4_116:                              # %if.end.243
	movq	%r14, %rdi
	callq	gs_cie_render_init
	testl	%eax, %eax
	js	.LBB4_119
# BB#117:                               # %land.lhs.true
	movq	%r14, %rdi
	callq	gs_cie_render_sample
	testl	%eax, %eax
	js	.LBB4_119
# BB#118:                               # %if.then.250
	movq	%r14, %rdi
	callq	gs_cie_render_complete
.LBB4_119:                              # %if.end.252
	movq	$0, 40(%r14)
	testl	%ebp, %ebp
	jne	.LBB4_121
# BB#120:                               # %if.then.256
	movq	EncodeLMN_from_cache+16(%rip), %rcx
	movq	%rcx, 16(%r13)
	movups	EncodeLMN_from_cache(%rip), %xmm0
	movups	%xmm0, (%r13)
.LBB4_121:                              # %if.end.258
	testl	%r12d, %r12d
	jne	.LBB4_123
# BB#122:                               # %if.then.261
	movq	EncodeABC_from_cache+16(%rip), %rcx
	movq	%rcx, 16(%r15)
	movups	EncodeABC_from_cache(%rip), %xmm0
	movups	%xmm0, (%r15)
.LBB4_123:                              # %if.end.263
	testl	%ebx, %ebx
	jne	.LBB4_125
# BB#124:                               # %if.then.266
	movups	RenderTableT_from_cache+16(%rip), %xmm0
	movups	%xmm0, 400(%r14)
	movups	RenderTableT_from_cache(%rip), %xmm0
	movups	%xmm0, 384(%r14)
	jmp	.LBB4_125
.LBB4_87:                               # %if.else.93
	testl	%eax, %eax
	js	.LBB4_125
# BB#88:                                # %if.else.97
	movl	$-15, %eax
	cmpl	$4, 72(%rsp)
	jne	.LBB4_125
# BB#89:                                # %for.body
	movq	64(%rsp), %rax
	cmpl	$0, (%rax)
	jle	.LBB4_114
# BB#90:                                # %for.cond
	cmpl	$0, 4(%rax)
	jle	.LBB4_91
# BB#126:                               # %for.cond.1
	cmpl	$0, 8(%rax)
	jle	.LBB4_127
# BB#128:                               # %for.cond.2
	cmpl	$0, 12(%rax)
	jle	.LBB4_129
# BB#92:                                # %for.cond.3
	leaq	20600(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	param_read_string_array
	testl	%eax, %eax
	js	.LBB4_125
# BB#93:                                # %if.end.118
	jle	.LBB4_95
# BB#94:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_114:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_91:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_127:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_129:
	movl	$-15, %eax
.LBB4_125:                              # %cleanup.270
	addq	$20616, %rsp            # imm = 0x5088
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_95:                               # %lor.lhs.false.121
	movl	20608(%rsp), %eax
	movq	64(%rsp), %rsi
	cmpl	(%rsi), %eax
	jne	.LBB4_96
# BB#97:                                # %for.cond.129.preheader
	testl	%eax, %eax
	je	.LBB4_102
# BB#98:                                # %for.body.133.lr.ph
	movq	20600(%rsp), %rcx
	movl	8(%rsi), %edx
	imull	4(%rsi), %edx
	imull	12(%rsi), %edx
	addq	$8, %rcx
	xorl	%edi, %edi
.LBB4_100:                              # %for.body.133
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, (%rcx)
	jne	.LBB4_101
# BB#99:                                # %for.cond.129
                                        #   in Loop: Header=BB4_100 Depth=1
	addq	$16, %rcx
	incl	%edi
	cmpl	%eax, %edi
	jb	.LBB4_100
.LBB4_102:                              # %for.end.151
	movl	72(%rsp), %eax
	decl	%eax
	movl	%eax, 352(%r14)
	movslq	%eax, %rdx
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%eax, 372(%r14)
	cmpl	$4, %edx
	jg	.LBB4_103
# BB#104:                               # %for.end.151
	cmpl	$4, 12(%rsp)            # 4-byte Folded Reload
	movl	$-15, %eax
	jg	.LBB4_125
# BB#105:                               # %if.end.169
	leaq	356(%r14), %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	shlq	$2, %rdx
	callq	memcpy
	movq	16(%r14), %rdi
	movl	356(%r14), %esi
	movl	$st_const_string_element, %edx
	movl	$.L.str.18, %ecx
	callq	*104(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB4_125
# BB#106:                               # %for.cond.191.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	jle	.LBB4_109
# BB#107:                               # %for.body.198.lr.ph
	movq	20600(%rsp), %rax
	movq	%rcx, %rdx
	addq	$8, %rdx
	addq	$8, %rax
	xorl	%esi, %esi
.LBB4_108:                              # %for.body.198
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rax), %rdi
	movq	%rdi, -8(%rdx)
	movl	(%rax), %edi
	movl	%edi, (%rdx)
	incq	%rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movslq	(%rdi), %rdi
	addq	$16, %rdx
	addq	$16, %rax
	cmpq	%rdi, %rsi
	jl	.LBB4_108
.LBB4_109:                              # %for.end.215
	movq	%rcx, 376(%r14)
	leaq	384(%r14), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movups	RenderTableT_from_data+16(%rip), %xmm0
	movups	%xmm0, 400(%r14)
	movups	RenderTableT_from_data(%rip), %xmm0
	movups	%xmm0, 384(%r14)
	leaq	20560(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB4_110
# BB#112:                               # %read_floats.exit260
	jle	.LBB4_116
# BB#113:                               # %if.then.226
	movups	RenderTableT_default+16(%rip), %xmm0
	movq	16(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, 16(%rax)
	movups	RenderTableT_default(%rip), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB4_116
.LBB4_96:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_101:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_103:
	movl	$-15, %eax
	jmp	.LBB4_125
.LBB4_110:                              # %if.end.i.256
	movslq	12(%rsp), %rdx          # 4-byte Folded Reload
	shlq	$9, %rdx
	cmpl	%edx, 20568(%rsp)
	jne	.LBB4_111
# BB#115:                               # %if.then.232
	leaq	12368(%rsp), %rdi
	movq	20560(%rsp), %rsi
	shlq	$2, %rdx
	callq	memcpy
	movq	16(%rsp), %rax          # 8-byte Reload
	movups	RenderTableT_from_data+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	RenderTableT_from_data(%rip), %xmm0
	movups	%xmm0, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB4_116
.LBB4_111:                              # %if.else.229.thread308
	movl	$-15, %ebx
	jmp	.LBB4_116
.Lfunc_end4:
	.size	param_get_cie_render1, .Lfunc_end4-param_get_cie_render1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4647697223260307456     # double 511
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	encode_lmn_0_from_data,@function
encode_lmn_0_from_data:                 # @encode_lmn_0_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	movss	416(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB5_4
# BB#1:                                 # %cond.false.i
	movss	420(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB5_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI5_0(%rip), %xmm0
	addsd	.LCPI5_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
.LBB5_4:                                # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB5_2:                                # %cond.true.5.i
	addq	$2044, %rax             # imm = 0x7FC
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end5:
	.size	encode_lmn_0_from_data, .Lfunc_end5-encode_lmn_0_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4647697223260307456     # double 511
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	encode_lmn_1_from_data,@function
encode_lmn_1_from_data:                 # @encode_lmn_1_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rcx
	leaq	2048(%rcx), %rax
	movss	424(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB6_4
# BB#1:                                 # %cond.false.i
	movss	428(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB6_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	addsd	.LCPI6_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
.LBB6_4:                                # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB6_2:                                # %cond.true.5.i
	addq	$4092, %rcx             # imm = 0xFFC
	movq	%rcx, %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end6:
	.size	encode_lmn_1_from_data, .Lfunc_end6-encode_lmn_1_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4647697223260307456     # double 511
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	encode_lmn_2_from_data,@function
encode_lmn_2_from_data:                 # @encode_lmn_2_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rcx
	leaq	4096(%rcx), %rax
	movss	432(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB7_4
# BB#1:                                 # %cond.false.i
	movss	436(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB7_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI7_0(%rip), %xmm0
	addsd	.LCPI7_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
.LBB7_4:                                # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB7_2:                                # %cond.true.5.i
	addq	$6140, %rcx             # imm = 0x17FC
	movq	%rcx, %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end7:
	.size	encode_lmn_2_from_data, .Lfunc_end7-encode_lmn_2_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4647697223260307456     # double 511
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	encode_abc_0_from_data,@function
encode_abc_0_from_data:                 # @encode_abc_0_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	movss	440(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB8_1
# BB#2:                                 # %cond.false.i
	movss	444(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB8_3
# BB#4:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI8_0(%rip), %xmm0
	addsd	.LCPI8_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	6144(%rax,%rcx,4), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB8_1:
	addq	$6144, %rax             # imm = 0x1800
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB8_3:                                # %cond.true.5.i
	addq	$8188, %rax             # imm = 0x1FFC
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end8:
	.size	encode_abc_0_from_data, .Lfunc_end8-encode_abc_0_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4647697223260307456     # double 511
.LCPI9_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	encode_abc_1_from_data,@function
encode_abc_1_from_data:                 # @encode_abc_1_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rcx
	leaq	8192(%rcx), %rax
	movss	448(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB9_4
# BB#1:                                 # %cond.false.i
	movss	452(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB9_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI9_0(%rip), %xmm0
	addsd	.LCPI9_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
.LBB9_4:                                # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB9_2:                                # %cond.true.5.i
	addq	$10236, %rcx            # imm = 0x27FC
	movq	%rcx, %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end9:
	.size	encode_abc_1_from_data, .Lfunc_end9-encode_abc_1_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4647697223260307456     # double 511
.LCPI10_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	encode_abc_2_from_data,@function
encode_abc_2_from_data:                 # @encode_abc_2_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rcx
	leaq	10240(%rcx), %rax
	movss	456(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB10_4
# BB#1:                                 # %cond.false.i
	movss	460(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB10_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI10_0(%rip), %xmm0
	addsd	.LCPI10_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
.LBB10_4:                               # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.LBB10_2:                               # %cond.true.5.i
	addq	$12284, %rcx            # imm = 0x2FFC
	movq	%rcx, %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end10:
	.size	encode_abc_2_from_data, .Lfunc_end10-encode_abc_2_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643176031446892544     # double 255
.LCPI11_1:
	.quad	4647697223260307456     # double 511
.LCPI11_2:
	.quad	4602678819172646912     # double 0.5
.LCPI11_3:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI11_4:
	.quad	4674734214187319296     # double 32760
	.text
	.align	16, 0x90
	.type	render_table_t_0_from_data,@function
render_table_t_0_from_data:             # @render_table_t_0_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rsi), %rax
	cvtsi2sdl	%edi, %xmm0
	divsd	.LCPI11_0(%rip), %xmm0
	movss	Range3_default(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB11_1
# BB#2:                                 # %cond.false.i
	movss	Range3_default+4(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB11_3
# BB#4:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI11_1(%rip), %xmm0
	addsd	.LCPI11_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	12288(%rax,%rcx,4), %rax
	jmp	.LBB11_5
.LBB11_1:
	addq	$12288, %rax            # imm = 0x3000
	jmp	.LBB11_5
.LBB11_3:                               # %cond.true.5.i
	addq	$14332, %rax            # imm = 0x37FC
.LBB11_5:                               # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI11_3(%rip), %xmm0
	mulsd	.LCPI11_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cwtl
	retq
.Lfunc_end11:
	.size	render_table_t_0_from_data, .Lfunc_end11-render_table_t_0_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643176031446892544     # double 255
.LCPI12_1:
	.quad	4647697223260307456     # double 511
.LCPI12_2:
	.quad	4602678819172646912     # double 0.5
.LCPI12_3:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI12_4:
	.quad	4674734214187319296     # double 32760
	.text
	.align	16, 0x90
	.type	render_table_t_1_from_data,@function
render_table_t_1_from_data:             # @render_table_t_1_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rsi), %rcx
	cvtsi2sdl	%edi, %xmm0
	divsd	.LCPI12_0(%rip), %xmm0
	leaq	14336(%rcx), %rax
	movss	Range3_default(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB12_4
# BB#1:                                 # %cond.false.i
	movss	Range3_default+4(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB12_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI12_1(%rip), %xmm0
	addsd	.LCPI12_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
	jmp	.LBB12_4
.LBB12_2:                               # %cond.true.5.i
	addq	$16380, %rcx            # imm = 0x3FFC
	movq	%rcx, %rax
.LBB12_4:                               # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI12_3(%rip), %xmm0
	mulsd	.LCPI12_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cwtl
	retq
.Lfunc_end12:
	.size	render_table_t_1_from_data, .Lfunc_end12-render_table_t_1_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4643176031446892544     # double 255
.LCPI13_1:
	.quad	4647697223260307456     # double 511
.LCPI13_2:
	.quad	4602678819172646912     # double 0.5
.LCPI13_3:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI13_4:
	.quad	4674734214187319296     # double 32760
	.text
	.align	16, 0x90
	.type	render_table_t_2_from_data,@function
render_table_t_2_from_data:             # @render_table_t_2_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rsi), %rcx
	cvtsi2sdl	%edi, %xmm0
	divsd	.LCPI13_0(%rip), %xmm0
	leaq	16384(%rcx), %rax
	movss	Range3_default(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB13_4
# BB#1:                                 # %cond.false.i
	movss	Range3_default+4(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB13_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI13_1(%rip), %xmm0
	addsd	.LCPI13_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
	jmp	.LBB13_4
.LBB13_2:                               # %cond.true.5.i
	addq	$18428, %rcx            # imm = 0x47FC
	movq	%rcx, %rax
.LBB13_4:                               # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI13_3(%rip), %xmm0
	mulsd	.LCPI13_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cwtl
	retq
.Lfunc_end13:
	.size	render_table_t_2_from_data, .Lfunc_end13-render_table_t_2_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
.LCPI14_1:
	.quad	4647697223260307456     # double 511
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
.LCPI14_3:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI14_4:
	.quad	4674734214187319296     # double 32760
	.text
	.align	16, 0x90
	.type	render_table_t_3_from_data,@function
render_table_t_3_from_data:             # @render_table_t_3_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rsi), %rcx
	cvtsi2sdl	%edi, %xmm0
	divsd	.LCPI14_0(%rip), %xmm0
	leaq	18432(%rcx), %rax
	movss	Range3_default(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jae	.LBB14_4
# BB#1:                                 # %cond.false.i
	movss	Range3_default+4(%rip), %xmm3 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB14_2
# BB#3:                                 # %cond.false.7.i
	subsd	%xmm2, %xmm0
	subss	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
	jmp	.LBB14_4
.LBB14_2:                               # %cond.true.5.i
	addq	$20476, %rcx            # imm = 0x4FFC
	movq	%rcx, %rax
.LBB14_4:                               # %encode_from_data.exit
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI14_3(%rip), %xmm0
	mulsd	.LCPI14_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cwtl
	retq
.Lfunc_end14:
	.size	render_table_t_3_from_data, .Lfunc_end14-render_table_t_3_from_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TransformPQRName"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"TransformPQRData"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ColorRenderingType"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"WhitePoint"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"BlackPoint"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"MatrixPQR"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"RangePQR"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"MatrixLMN"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"EncodeLMNValues"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"RangeLMN"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"MatrixABC"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"EncodeABCValues"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RangeABC"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"RenderTableSize"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RenderTableTable"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"write_proc3"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RenderTableTValues"
	.size	.L.str.16, 19

	.type	EncodeLMN_from_data,@object # @EncodeLMN_from_data
	.section	.rodata,"a",@progbits
	.align	8
EncodeLMN_from_data:
	.quad	encode_lmn_0_from_data
	.quad	encode_lmn_1_from_data
	.quad	encode_lmn_2_from_data
	.size	EncodeLMN_from_data, 24

	.type	EncodeABC_from_data,@object # @EncodeABC_from_data
	.align	8
EncodeABC_from_data:
	.quad	encode_abc_0_from_data
	.quad	encode_abc_1_from_data
	.quad	encode_abc_2_from_data
	.size	EncodeABC_from_data, 24

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"param_get_cie_render1(RenderTable)"
	.size	.L.str.17, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RenderTable table"
	.size	.L.str.18, 18

	.type	RenderTableT_from_data,@object # @RenderTableT_from_data
	.section	.rodata,"a",@progbits
	.align	8
RenderTableT_from_data:
	.quad	render_table_t_0_from_data
	.quad	render_table_t_1_from_data
	.quad	render_table_t_2_from_data
	.quad	render_table_t_3_from_data
	.size	RenderTableT_from_data, 32

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"write_floats"
	.size	.L.str.19, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
