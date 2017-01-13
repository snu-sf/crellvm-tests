	.text
	.file	"idparam.bc"
	.globl	dict_bool_param
	.align	16, 0x90
	.type	dict_bool_param,@function
dict_bool_param:                        # @dict_bool_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%edx, %ebp
	testq	%rdi, %rdi
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	leaq	(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_2
# BB#3:                                 # %if.end
	movq	(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB0_5
# BB#4:                                 # %if.end.5
	movzwl	8(%rcx), %eax
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_2:                                # %if.then
	movl	%ebp, (%rbx)
	movl	$1, %eax
.LBB0_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dict_bool_param, .Lfunc_end0-dict_bool_param
	.cfi_endproc

	.globl	dict_int_null_param
	.align	16, 0x90
	.type	dict_int_null_param,@function
dict_int_null_param:                    # @dict_int_null_param
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
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 64
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %ebp
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	$1, %ebx
	testq	%rdi, %rdi
	je	.LBB1_8
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_8
# BB#2:                                 # %if.else
	movq	8(%rsp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$16, %edx
	je	.LBB1_11
# BB#3:                                 # %if.else
	movl	$2, %eax
	cmpl	$14, %edx
	je	.LBB1_16
# BB#4:                                 # %if.else
	cmpl	$11, %edx
	jne	.LBB1_14
# BB#5:                                 # %sw.bb
	movq	8(%rcx), %rbp
	movslq	%r12d, %rax
	cmpq	%rax, %rbp
	movl	$-15, %eax
	jl	.LBB1_16
# BB#6:                                 # %sw.bb
	movslq	%r15d, %rcx
	cmpq	%rcx, %rbp
	jg	.LBB1_16
# BB#7:                                 # %if.end
	xorl	%ebx, %ebx
	jmp	.LBB1_8
.LBB1_11:                               # %sw.bb.15
	movss	8(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%r12d, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$-15, %eax
	ja	.LBB1_16
# BB#12:                                # %sw.bb.15
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r15d, %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.LBB1_16
# BB#13:                                # %if.end.27
	cvttss2si	%xmm0, %rbp
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebp, %xmm1
	xorl	%ebx, %ebx
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_16
	jnp	.LBB1_8
	jmp	.LBB1_16
.LBB1_8:                                # %if.end.40
	cmpl	%r12d, %ebp
	jl	.LBB1_10
# BB#9:                                 # %if.end.40
	cmpl	%r15d, %ebp
	jg	.LBB1_10
# BB#15:                                # %if.end.51
	movl	%ebp, (%r14)
	movl	%ebx, %eax
	jmp	.LBB1_16
.LBB1_10:                               # %if.then.46
	testl	%ebx, %ebx
	movl	$-21, %ecx
	movl	$-15, %eax
	cmovnel	%ecx, %eax
.LBB1_16:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_14:                               # %sw.default
	movl	$-20, %eax
	jmp	.LBB1_16
.Lfunc_end1:
	.size	dict_int_null_param, .Lfunc_end1-dict_int_null_param
	.cfi_endproc

	.globl	dict_int_param
	.align	16, 0x90
	.type	dict_int_param,@function
dict_int_param:                         # @dict_int_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 64
.Ltmp22:
	.cfi_offset %rbx, -48
.Ltmp23:
	.cfi_offset %r12, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %ebp
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	$1, %ebx
	testq	%rdi, %rdi
	je	.LBB2_8
# BB#1:                                 # %lor.lhs.false.i
	leaq	8(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB2_8
# BB#2:                                 # %if.else.i
	movq	8(%rsp), %rax
	movzbl	1(%rax), %edx
	cmpl	$16, %edx
	je	.LBB2_11
# BB#3:                                 # %if.else.i
	movl	$2, %ecx
	cmpl	$14, %edx
	je	.LBB2_16
# BB#4:                                 # %if.else.i
	cmpl	$11, %edx
	jne	.LBB2_14
# BB#5:                                 # %sw.bb.i
	movq	8(%rax), %rbp
	movslq	%r12d, %rax
	cmpq	%rax, %rbp
	movl	$-15, %ecx
	jl	.LBB2_16
# BB#6:                                 # %sw.bb.i
	movslq	%r15d, %rax
	cmpq	%rax, %rbp
	jg	.LBB2_16
# BB#7:                                 # %if.end.i
	xorl	%ebx, %ebx
	jmp	.LBB2_8
.LBB2_11:                               # %sw.bb.15.i
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%r12d, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$-15, %ecx
	ja	.LBB2_16
# BB#12:                                # %sw.bb.15.i
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r15d, %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.LBB2_16
# BB#13:                                # %if.end.27.i
	cvttss2si	%xmm0, %rbp
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebp, %xmm1
	xorl	%ebx, %ebx
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jnp	.LBB2_8
	jmp	.LBB2_16
.LBB2_8:                                # %if.end.40.i
	cmpl	%r12d, %ebp
	jl	.LBB2_10
# BB#9:                                 # %if.end.40.i
	cmpl	%r15d, %ebp
	jg	.LBB2_10
# BB#15:                                # %if.end.51.i
	movl	%ebp, (%r14)
	movl	%ebx, %ecx
	jmp	.LBB2_16
.LBB2_10:                               # %if.then.46.i
	testl	%ebx, %ebx
	movl	$-21, %eax
	movl	$-15, %ecx
	cmovnel	%eax, %ecx
.LBB2_16:                               # %dict_int_null_param.exit
	cmpl	$2, %ecx
	movl	$-20, %eax
	cmovnel	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_14:                               # %sw.default.i
	movl	$-20, %ecx
	jmp	.LBB2_16
.Lfunc_end2:
	.size	dict_int_param, .Lfunc_end2-dict_int_param
	.cfi_endproc

	.globl	dict_uint_param
	.align	16, 0x90
	.type	dict_uint_param,@function
dict_uint_param:                        # @dict_uint_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 64
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %ebx
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	$1, %ebp
	testq	%rdi, %rdi
	je	.LBB3_5
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB3_5
# BB#2:                                 # %do.body
	movq	8(%rsp), %rax
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB3_9
# BB#3:                                 # %do.end
	movq	8(%rax), %rbx
	movl	%ebx, %eax
	movl	$-15, %ebp
	cmpq	%rax, %rbx
	jne	.LBB3_9
# BB#4:                                 # %if.end.12
	xorl	%ebp, %ebp
.LBB3_5:                                # %if.end.16
	cmpl	%r12d, %ebx
	jb	.LBB3_7
# BB#6:                                 # %if.end.16
	cmpl	%r15d, %ebx
	ja	.LBB3_7
# BB#8:                                 # %if.end.27
	movl	%ebx, (%r14)
	jmp	.LBB3_9
.LBB3_7:                                # %if.then.22
	testl	%ebp, %ebp
	movl	$-21, %eax
	movl	$-15, %ebp
	cmovnel	%eax, %ebp
.LBB3_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dict_uint_param, .Lfunc_end3-dict_uint_param
	.cfi_endproc

	.globl	dict_float_param
	.align	16, 0x90
	.type	dict_float_param,@function
dict_float_param:                       # @dict_float_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	testq	%rdi, %rdi
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdx
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	dict_find_string
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	testl	%eax, %eax
	jle	.LBB4_2
# BB#3:                                 # %if.end
	movq	8(%rsp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$16, %edx
	jne	.LBB4_4
# BB#6:                                 # %sw.bb.4
	movl	8(%rcx), %eax
	movl	%eax, (%rbx)
	jmp	.LBB4_7
.LBB4_2:                                # %if.then
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	movl	$1, %eax
	jmp	.LBB4_8
.LBB4_4:                                # %if.end
	movl	$-20, %eax
	cmpl	$11, %edx
	jne	.LBB4_8
# BB#5:                                 # %sw.bb
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rcx), %xmm0
	movss	%xmm0, (%rbx)
.LBB4_7:                                # %cleanup
	xorl	%eax, %eax
.LBB4_8:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	dict_float_param, .Lfunc_end4-dict_float_param
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	3472883712              # float -2.14748365E+9
.LCPI5_1:
	.long	1325400064              # float 2.14748365E+9
	.text
	.globl	dict_int_array_check_param
	.align	16, 0x90
	.type	dict_int_array_check_param,@function
dict_int_array_check_param:             # @dict_int_array_check_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 96
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movl	%ecx, %r15d
	movq	%rdi, %r13
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB5_21
# BB#1:                                 # %lor.lhs.false
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	leaq	16(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB5_21
# BB#2:                                 # %if.end
	movq	16(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB5_3
# BB#4:                                 # %if.end.5
	movl	4(%rsi), %r14d
	cmpl	%r15d, %r14d
	jbe	.LBB5_6
# BB#5:
	movl	96(%rsp), %ebx
	jmp	.LBB5_21
.LBB5_3:
	movl	$-20, %ebx
	jmp	.LBB5_21
.LBB5_6:                                # %for.cond.preheader
	testl	%r14d, %r14d
	je	.LBB5_20
# BB#7:                                 # %for.body.lr.ph
	leaq	24(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	array_get
	movl	%eax, %ebx
	movl	$1, %ebp
	jmp	.LBB5_8
	.align	16, 0x90
.LBB5_19:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	leaq	24(%rsp), %rcx
	callq	array_get
	movl	%eax, %ebx
	incq	%rbp
.LBB5_8:                                # %for.body.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebx, %ebx
	js	.LBB5_21
# BB#9:                                 # %if.end.18
                                        #   in Loop: Header=BB5_8 Depth=1
	movzbl	25(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB5_10
# BB#14:                                # %sw.bb.34
                                        #   in Loop: Header=BB5_8 Depth=1
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$-15, %ebx
	ja	.LBB5_21
# BB#15:                                # %sw.bb.34
                                        #   in Loop: Header=BB5_8 Depth=1
	ucomiss	.LCPI5_1(%rip), %xmm0
	ja	.LBB5_21
# BB#16:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB5_8 Depth=1
	cvttss2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB5_21
	jp	.LBB5_21
# BB#17:                                # %if.end.53
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	%eax, -4(%r12,%rbp,4)
	jmp	.LBB5_18
.LBB5_10:                               # %if.end.18
                                        #   in Loop: Header=BB5_8 Depth=1
	cmpl	$11, %eax
	jne	.LBB5_11
# BB#12:                                # %sw.bb
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	32(%rsp), %rax
	movslq	%eax, %rcx
	movl	$-15, %ebx
	cmpq	%rcx, %rax
	jne	.LBB5_21
# BB#13:                                # %if.end.29
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	%eax, -4(%r12,%rbp,4)
.LBB5_18:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	cmpl	%r14d, %ebp
	jb	.LBB5_19
.LBB5_20:                               # %for.end
	cmpl	%r15d, %r14d
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	cmovel	%r14d, %ebx
	testl	%eax, %eax
	cmovnsl	%r14d, %ebx
	jmp	.LBB5_21
.LBB5_11:
	movl	$-20, %ebx
.LBB5_21:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dict_int_array_check_param, .Lfunc_end5-dict_int_array_check_param
	.cfi_endproc

	.globl	dict_int_array_param
	.align	16, 0x90
	.type	dict_int_array_param,@function
dict_int_array_param:                   # @dict_int_array_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 16
	movl	$-13, (%rsp)
	xorl	%r9d, %r9d
	callq	dict_int_array_check_param
	popq	%rdx
	retq
.Lfunc_end6:
	.size	dict_int_array_param, .Lfunc_end6-dict_int_array_param
	.cfi_endproc

	.globl	dict_ints_param
	.align	16, 0x90
	.type	dict_ints_param,@function
dict_ints_param:                        # @dict_ints_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 16
	movl	$-15, (%rsp)
	movl	$-15, %r9d
	callq	dict_int_array_check_param
	popq	%rdx
	retq
.Lfunc_end7:
	.size	dict_ints_param, .Lfunc_end7-dict_ints_param
	.cfi_endproc

	.globl	dict_float_array_check_param
	.align	16, 0x90
	.type	dict_float_array_check_param,@function
dict_float_array_check_param:           # @dict_float_array_check_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 48
.Ltmp61:
	.cfi_offset %rbx, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movl	%ecx, %ebp
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB8_2
# BB#4:                                 # %if.end.5
	movq	(%rsp), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB8_9
# BB#5:                                 # %if.end.10
	movl	56(%rsp), %eax
	movl	4(%rsi), %ebx
	testl	%eax, %eax
	jns	.LBB8_7
# BB#6:                                 # %if.end.10
	cmpl	%ebp, %ebx
	ja	.LBB8_9
.LBB8_7:                                # %if.end.17
	cmpl	%ebp, %ebx
	cmovael	%ebp, %ebx
	movq	%r15, %rdi
	movl	%ebx, %edx
	movq	%r14, %rcx
	callq	process_float_array
	testl	%eax, %eax
	js	.LBB8_9
# BB#8:                                 # %cond.false.24
	movl	48(%rsp), %ecx
	cmpl	%ebp, %ebx
	movl	%ecx, %eax
	cmovel	%ebx, %eax
	testl	%ecx, %ecx
	cmovnsl	%ebx, %eax
	jmp	.LBB8_9
.LBB8_2:                                # %if.then
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB8_9
# BB#3:                                 # %if.end
	movl	%ebp, %edx
	shlq	$2, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	%ebp, %eax
.LBB8_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dict_float_array_check_param, .Lfunc_end8-dict_float_array_check_param
	.cfi_endproc

	.globl	dict_float_array_param
	.align	16, 0x90
	.type	dict_float_array_param,@function
dict_float_array_param:                 # @dict_float_array_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 48
.Ltmp70:
	.cfi_offset %rbx, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movl	%ecx, %ebp
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB9_2
# BB#1:                                 # %lor.lhs.false.i
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB9_2
# BB#4:                                 # %if.end.5.i
	movq	(%rsp), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB9_8
# BB#5:                                 # %if.end.10.i
	movl	4(%rsi), %ecx
	movl	$-13, %eax
	cmpl	%ebp, %ecx
	ja	.LBB9_8
# BB#6:                                 # %if.end.17.i
	cmovbl	%ecx, %ebp
	movq	%r15, %rdi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	process_float_array
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	jmp	.LBB9_7
.LBB9_2:                                # %if.then.i
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB9_8
# BB#3:                                 # %if.end.i
	movl	%ebp, %edx
	shlq	$2, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
.LBB9_7:                                # %dict_float_array_check_param.exit
	movl	%ebp, %eax
.LBB9_8:                                # %dict_float_array_check_param.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dict_float_array_param, .Lfunc_end9-dict_float_array_param
	.cfi_endproc

	.globl	dict_floats_param
	.align	16, 0x90
	.type	dict_floats_param,@function
dict_floats_param:                      # @dict_floats_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp78:
	.cfi_def_cfa_offset 48
.Ltmp79:
	.cfi_offset %rbx, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movl	%ecx, %ebp
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false.i
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB10_2
# BB#4:                                 # %if.end.5.i
	movq	(%rsp), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB10_8
# BB#5:                                 # %if.end.10.i
	movl	4(%rsi), %ebx
	movl	$-15, %eax
	cmpl	%ebp, %ebx
	ja	.LBB10_8
# BB#6:                                 # %if.end.17.i
	cmovael	%ebp, %ebx
	movq	%r15, %rdi
	movl	%ebx, %edx
	movq	%r14, %rcx
	callq	process_float_array
	testl	%eax, %eax
	js	.LBB10_8
# BB#7:                                 # %cond.false.24.i
	cmpl	%ebp, %ebx
	movl	$-15, %eax
	cmovel	%ebx, %eax
	jmp	.LBB10_8
.LBB10_2:                               # %if.then.i
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB10_8
# BB#3:                                 # %if.end.i
	movl	%ebp, %edx
	shlq	$2, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	%ebp, %eax
.LBB10_8:                               # %dict_float_array_check_param.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dict_floats_param, .Lfunc_end10-dict_floats_param
	.cfi_endproc

	.globl	dict_floats_param_errorinfo
	.align	16, 0x90
	.type	dict_floats_param_errorinfo,@function
dict_floats_param_errorinfo:            # @dict_floats_param_errorinfo
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
	subq	$24, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 80
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
	movq	%r9, %rbp
	movq	%r8, %r12
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false.i
	movq	8(%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_2
# BB#4:                                 # %if.end.5.i
	movq	16(%rsp), %rsi
	movzwl	(%rsi), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB11_8
# BB#5:                                 # %if.end.10.i
	movl	4(%rsi), %ebp
	movl	$-15, %eax
	cmpl	%r13d, %ebp
	ja	.LBB11_8
# BB#6:                                 # %if.end.17.i
	cmovael	%r13d, %ebp
	movq	(%rsp), %rdi            # 8-byte Reload
	movl	%ebp, %edx
	movq	%r12, %rcx
	callq	process_float_array
	testl	%eax, %eax
	js	.LBB11_8
# BB#7:                                 # %cond.false.24.i
	cmpl	%r13d, %ebp
	movl	$-15, %eax
	je	.LBB11_10
.LBB11_8:                               # %dict_float_array_check_param.exit.thread
	movl	%eax, %r13d
	jmp	.LBB11_11
.LBB11_2:                               # %if.then.i
	testq	%rbp, %rbp
	je	.LBB11_3
# BB#9:                                 # %if.end.i
	movl	%r13d, %edx
	shlq	$2, %rdx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
.LBB11_10:                              # %dict_float_array_check_param.exit
	testl	%r13d, %r13d
	jns	.LBB11_13
.LBB11_11:                              # %if.then
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_13
# BB#12:                                # %if.then.3
	movq	%r14, %rdi
	callq	strlen
	movq	8(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	gs_errorinfo_put_pair
	jmp	.LBB11_13
.LBB11_3:                               # %dict_float_array_check_param.exit.thread11
	xorl	%r13d, %r13d
.LBB11_13:                              # %if.end.6
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dict_floats_param_errorinfo, .Lfunc_end11-dict_floats_param_errorinfo
	.cfi_endproc

	.globl	gs_errorinfo_put_pair
	.align	16, 0x90
	.type	gs_errorinfo_put_pair,@function
gs_errorinfo_put_pair:                  # @gs_errorinfo_put_pair
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 64
.Ltmp99:
	.cfi_offset %rbx, -24
.Ltmp100:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	48(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB12_5
# BB#1:                                 # %if.end
	movq	48(%rbx), %rdi
	leaq	24(%rsp), %rsi
	movl	$96, %edx
	movl	$2, %ecx
	movl	$.L.str.3, %r8d
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB12_5
# BB#2:                                 # %if.end.9
	movq	32(%rsp), %rax
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movzwl	(%rax), %ecx
	orl	76(%rbx), %ecx
	movw	%cx, (%rax)
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movzwl	16(%rax), %ecx
	orl	76(%rbx), %ecx
	movw	%cx, 16(%rax)
	leaq	504(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.4, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-100, %eax
	testl	%ecx, %ecx
	jle	.LBB12_5
# BB#3:                                 # %lor.lhs.false
	movq	(%rsp), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$2, %ecx
	jne	.LBB12_5
# BB#4:                                 # %lor.lhs.false.28
	addq	$368, %rbx              # imm = 0x170
	leaq	24(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rcx
	callq	dict_put_string
	sarl	$31, %eax
	andl	$-100, %eax
.LBB12_5:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	gs_errorinfo_put_pair, .Lfunc_end12-gs_errorinfo_put_pair
	.cfi_endproc

	.globl	dict_proc_param
	.align	16, 0x90
	.type	dict_proc_param,@function
dict_proc_param:                        # @dict_proc_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp103:
	.cfi_def_cfa_offset 32
.Ltmp104:
	.cfi_offset %rbx, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	testq	%rdi, %rdi
	je	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	leaq	(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB13_2
# BB#5:                                 # %do.body
	movq	(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB13_6
# BB#7:                                 # %do.end
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB13_8
.LBB13_2:                               # %if.then
	testl	%ebp, %ebp
	je	.LBB13_4
# BB#3:                                 # %if.then.2
	movq	$0, 8(%rbx)
	movw	$1248, (%rbx)           # imm = 0x4E0
	movl	$0, 4(%rbx)
	movl	$1, %eax
	jmp	.LBB13_8
.LBB13_4:                               # %if.else
	movw	$0, (%rbx)
	movl	$1, %eax
	jmp	.LBB13_8
.LBB13_6:                               # %if.then.11
	callq	check_proc_failed
.LBB13_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dict_proc_param, .Lfunc_end13-dict_proc_param
	.cfi_endproc

	.globl	dict_matrix_param
	.align	16, 0x90
	.type	dict_matrix_param,@function
dict_matrix_param:                      # @dict_matrix_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -32
.Ltmp111:
	.cfi_offset %r14, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$-20, %ebp
	testq	%rsi, %rsi
	je	.LBB14_3
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_3
# BB#2:                                 # %if.end
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	read_matrix
	movl	%eax, %ebp
.LBB14_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dict_matrix_param, .Lfunc_end14-dict_matrix_param
	.cfi_endproc

	.globl	dict_uid_param
	.align	16, 0x90
	.type	dict_uid_param,@function
dict_uid_param:                         # @dict_uid_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp118:
	.cfi_def_cfa_offset 64
.Ltmp119:
	.cfi_offset %rbx, -48
.Ltmp120:
	.cfi_offset %r12, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movabsq	$9223372036854775807, %r12 # imm = 0x7FFFFFFFFFFFFFFF
	testq	%rbx, %rbx
	je	.LBB15_1
# BB#2:                                 # %if.end
	cmpl	$2, 80(%r8)
	jl	.LBB15_12
# BB#3:                                 # %land.lhs.true
	leaq	8(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_12
# BB#4:                                 # %if.then.3
	movq	8(%rsp), %rax
	movl	$-20, %ecx
	movzbl	1(%rax), %edx
	cmpl	$4, %edx
	jne	.LBB15_17
# BB#5:                                 # %if.end.8
	movl	4(%rax), %ebp
	testq	%rbp, %rbp
	movl	$-15, %ecx
	je	.LBB15_17
# BB#6:                                 # %if.end.13
	movl	$8, %edx
	movl	$.L.str.1, %ecx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	*88(%r14)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB15_17
# BB#7:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rcx
	incq	%rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB15_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %esi
	cmpl	$11, %esi
	jne	.LBB15_9
# BB#10:                                # %if.end.29
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	7(%rcx), %rsi
	movq	%rsi, (%rax,%rdx,8)
	addq	$16, %rcx
	incq	%rdx
	cmpl	%ebp, %edx
	jb	.LBB15_8
# BB#11:                                # %for.end
	negq	%rbp
	movq	%rbp, (%r15)
	movq	%rax, 8(%r15)
	movl	$1, %ecx
	jmp	.LBB15_17
.LBB15_12:                              # %if.end.38
	leaq	8(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_1
# BB#13:                                # %if.else
	movq	8(%rsp), %rax
	movl	$-20, %ecx
	movzbl	1(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB15_17
# BB#14:                                # %if.end.52
	movq	8(%rax), %rax
	movl	$-15, %ecx
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB15_17
# BB#15:                                # %if.end.62
	testq	%rax, %rax
	je	.LBB15_1
# BB#16:                                # %if.else.70
	movq	%rax, (%r15)
	movq	$0, 8(%r15)
	xorl	%ecx, %ecx
	jmp	.LBB15_17
.LBB15_1:                               # %if.then
	movq	%r12, (%r15)
	movq	$0, 8(%r15)
	movl	%ebp, %ecx
.LBB15_17:                              # %cleanup.77
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_9:                               # %if.then.27
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	*24(%r14)
	movl	$-20, %ecx
	jmp	.LBB15_17
.Lfunc_end15:
	.size	dict_uid_param, .Lfunc_end15-dict_uid_param
	.cfi_endproc

	.globl	dict_check_uid_param
	.align	16, 0x90
	.type	dict_check_uid_param,@function
dict_check_uid_param:                   # @dict_check_uid_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp126:
	.cfi_def_cfa_offset 32
.Ltmp127:
	.cfi_offset %rbx, -24
.Ltmp128:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	(%r14), %rbx
	leaq	(%rsp), %rdx
	testq	%rbx, %rbx
	js	.LBB16_1
# BB#11:                                # %if.else
	movl	$.L.str.2, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB16_16
# BB#12:                                # %if.end.35
	movq	(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB16_13
# BB#14:                                # %land.rhs
	movq	8(%rax), %rax
	cmpq	(%r14), %rax
	sete	%al
	jmp	.LBB16_15
.LBB16_1:                               # %if.then
	movl	$.L.str, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB16_16
# BB#2:                                 # %if.end
	movq	(%rsp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	$4, %edx
	jne	.LBB16_16
# BB#3:                                 # %lor.lhs.false
	negl	%ebx
	cmpl	%ebx, 4(%rcx)
	jne	.LBB16_16
# BB#4:                                 # %for.cond.preheader
	movl	$1, %eax
	testl	%ebx, %ebx
	je	.LBB16_16
# BB#5:                                 # %for.body.lr.ph
	movq	8(%rcx), %rcx
	incq	%rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB16_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %esi
	cmpl	$11, %esi
	jne	.LBB16_8
# BB#9:                                 # %if.end.22
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	7(%rcx), %rsi
	movq	8(%r14), %rdi
	cmpq	(%rdi,%rdx,8), %rsi
	jne	.LBB16_10
# BB#6:                                 # %for.cond
                                        #   in Loop: Header=BB16_7 Depth=1
	addq	$16, %rcx
	incq	%rdx
	cmpl	%ebx, %edx
	jb	.LBB16_7
	jmp	.LBB16_16
.LBB16_13:
	xorl	%eax, %eax
.LBB16_15:                              # %land.end
	movzbl	%al, %eax
.LBB16_16:                              # %cleanup.47
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB16_8:
	xorl	%eax, %eax
	jmp	.LBB16_16
.LBB16_10:
	xorl	%eax, %eax
	jmp	.LBB16_16
.Lfunc_end16:
	.size	dict_check_uid_param, .Lfunc_end16-dict_check_uid_param
	.cfi_endproc

	.globl	gs_errorinfo_put_pair_from_dict
	.align	16, 0x90
	.type	gs_errorinfo_put_pair_from_dict,@function
gs_errorinfo_put_pair_from_dict:        # @gs_errorinfo_put_pair_from_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 64
.Ltmp133:
	.cfi_offset %rbx, -32
.Ltmp134:
	.cfi_offset %r14, -24
.Ltmp135:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	leaq	24(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB17_2
# BB#1:                                 # %entry.if.end_crit_edge
	movq	24(%rsp), %r15
	jmp	.LBB17_3
.LBB17_2:                               # %if.then
	movw	$3584, 8(%rsp)          # imm = 0xE00
	leaq	8(%rsp), %r15
	movq	%r15, 24(%rsp)
.LBB17_3:                               # %if.end
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	gs_errorinfo_put_pair
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	gs_errorinfo_put_pair_from_dict, .Lfunc_end17-gs_errorinfo_put_pair_from_dict
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"XUID"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"get XUID"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"UniqueID"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_errorinfo_put_pair"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"$error"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"errorinfo"
	.size	.L.str.5, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
