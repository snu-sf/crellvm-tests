	.text
	.file	"zcie.bc"
	.globl	dict_ranges_param
	.align	16, 0x90
	.type	dict_ranges_param,@function
dict_ranges_param:                      # @dict_ranges_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
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
	.cfi_offset %r14, -16
	movq	%r8, %r14
	movl	%ecx, %ebx
	leal	(%rbx,%rbx), %ecx
	xorl	%r9d, %r9d
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB0_4
# BB#1:                                 # %if.else
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	movslq	%ebx, %rdx
	shlq	$3, %rdx
	movl	$Range4_default, %esi
	movq	%r14, %rdi
	callq	memcpy
.LBB0_3:                                # %cleanup
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	dict_ranges_param, .Lfunc_end0-dict_ranges_param
	.cfi_endproc

	.globl	dict_proc_array_param
	.align	16, 0x90
	.type	dict_proc_array_param,@function
dict_proc_array_param:                  # @dict_proc_array_param
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
	subq	$32, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 80
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
	movq	%r8, %rbx
	movl	%ecx, %ebp
	movq	%rdi, %r14
	leaq	24(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_11
# BB#1:                                 # %if.then
	movq	24(%rsp), %rsi
	movl	$-20, %eax
	movzbl	1(%rsi), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_12
# BB#2:                                 # %do.end
	movl	$-15, %eax
	cmpl	%ebp, 4(%rsi)
	jne	.LBB1_12
# BB#3:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	je	.LBB1_10
# BB#4:                                 # %for.body.lr.ph
	movl	%ebp, %r12d
	leaq	8(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	array_get
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	movl	$1, %ebp
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_8
# BB#5:
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB1_6:                                # %for.inc
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r12, %rbp
	jae	.LBB1_9
# BB#7:                                 # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	24(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	movzwl	8(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	incq	%rbp
	cmpl	$1216, %eax             # imm = 0x4C0
	je	.LBB1_6
.LBB1_8:                                # %cleanup
	leaq	8(%rsp), %rdi
	callq	check_proc_failed
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movq	$empty_procs, 8(%rbx)
	movw	$1120, (%rbx)           # imm = 0x460
	movl	%ebp, 4(%rbx)
	movl	$1, %eax
	jmp	.LBB1_12
.LBB1_9:                                # %for.cond.for.end_crit_edge
	movq	24(%rsp), %rsi
.LBB1_10:                               # %for.end
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
.LBB1_12:                               # %cleanup.29
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dict_proc_array_param, .Lfunc_end1-dict_proc_array_param
	.cfi_endproc

	.globl	dict_range3_param
	.align	16, 0x90
	.type	dict_range3_param,@function
dict_range3_param:                      # @dict_range3_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rcx, %rbx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB2_4
# BB#1:                                 # %if.else.i
	jne	.LBB2_3
# BB#2:                                 # %if.then.2.i
	movl	$Range4_default, %esi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	memcpy
.LBB2_3:                                # %dict_ranges_param.exit
	xorl	%eax, %eax
.LBB2_4:                                # %dict_ranges_param.exit
	popq	%rbx
	retq
.Lfunc_end2:
	.size	dict_range3_param, .Lfunc_end2-dict_range3_param
	.cfi_endproc

	.globl	dict_matrix3_param
	.align	16, 0x90
	.type	dict_matrix3_param,@function
dict_matrix3_param:                     # @dict_matrix3_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 144
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r13, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	(%rsp), %r13
	movl	$Matrix3_default, %esi
	movl	$12, %edx
	movq	%r13, %rdi
	callq	memcpy
	leaq	12(%rsp), %rdi
	movl	$Matrix3_default+12, %esi
	movl	$12, %edx
	callq	memcpy
	leaq	24(%rsp), %rdi
	movl	$Matrix3_default+24, %esi
	movl	$12, %edx
	callq	memcpy
	leaq	48(%rsp), %r8
	movl	$9, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r13, %r9
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB3_2
# BB#1:                                 # %if.end
	leaq	48(%rsp), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	memcpy
	leaq	12(%rbx), %rdi
	leaq	60(%rsp), %rsi
	movl	$12, %edx
	callq	memcpy
	addq	$24, %rbx
	leaq	72(%rsp), %rsi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	memcpy
	xorl	%eax, %eax
.LBB3_2:                                # %cleanup
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	dict_matrix3_param, .Lfunc_end3-dict_matrix3_param
	.cfi_endproc

	.globl	dict_proc3_param
	.align	16, 0x90
	.type	dict_proc3_param,@function
dict_proc3_param:                       # @dict_proc3_param
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %rax
	movl	$3, %ecx
	movq	%rax, %r8
	jmp	dict_proc_array_param   # TAILCALL
.Lfunc_end4:
	.size	dict_proc3_param, .Lfunc_end4-dict_proc3_param
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
	.text
	.globl	cie_points_param
	.align	16, 0x90
	.type	cie_points_param,@function
cie_points_param:                       # @cie_points_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 48
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r12, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$.L.str, %edx
	movl	$3, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB5_9
# BB#1:                                 # %lor.lhs.false
	leaq	12(%r15), %r14
	movl	$.L.str.1, %edx
	movl	$3, %ecx
	movl	$BlackPoint_default, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB5_9
# BB#2:                                 # %if.end
	movl	$-15, %eax
	xorps	%xmm0, %xmm0
	ucomiss	(%r15), %xmm0
	jae	.LBB5_9
# BB#3:                                 # %lor.lhs.false.5
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI5_0(%rip), %xmm0
	jne	.LBB5_9
	jp	.LBB5_9
# BB#4:                                 # %lor.lhs.false.8
	xorps	%xmm0, %xmm0
	ucomiss	8(%r15), %xmm0
	jae	.LBB5_9
# BB#5:                                 # %lor.lhs.false.11
	ucomiss	(%r14), %xmm0
	ja	.LBB5_9
# BB#6:                                 # %lor.lhs.false.15
	xorps	%xmm0, %xmm0
	ucomiss	16(%r15), %xmm0
	ja	.LBB5_9
# BB#7:                                 # %lor.lhs.false.19
	ucomiss	20(%r15), %xmm0
	ja	.LBB5_9
# BB#8:                                 # %if.end.24
	xorl	%eax, %eax
.LBB5_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	cie_points_param, .Lfunc_end5-cie_points_param
	.cfi_endproc

	.globl	cie_table_param
	.align	16, 0x90
	.type	cie_table_param,@function
cie_table_param:                        # @cie_table_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 96
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movslq	(%rbx), %rax
	testq	%rax, %rax
	movl	20(%rbx), %r13d
	movq	8(%rdi), %r12
	jle	.LBB6_5
# BB#1:                                 # %do.body.lr.ph
	leaq	1(%r12), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB6_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-20, %ebp
	movzbl	(%rcx), %esi
	cmpl	$11, %esi
	jne	.LBB6_40
# BB#3:                                 # %do.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	7(%rcx), %rsi
	leaq	-2(%rsi), %rdi
	movl	$-15, %ebp
	cmpq	$65533, %rdi            # imm = 0xFFFD
	ja	.LBB6_40
# BB#4:                                 # %if.end.18
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%esi, 4(%rbx,%rdx,4)
	incq	%rdx
	addq	$16, %rcx
	cmpq	%rax, %rdx
	jl	.LBB6_2
.LBB6_5:                                # %for.end
	imull	-4(%rbx,%rax,4), %r13d
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	imull	4(%rbx,%rcx,4), %r13d
	cmpl	$3, %eax
	jne	.LBB6_21
# BB#6:                                 # %if.then.36
	movq	(%r14), %rdi
	movl	4(%rbx), %esi
	movl	$st_const_string_element, %edx
	movl	$.L.str.2, %ecx
	callq	*104(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB6_40
# BB#7:                                 # %if.end.43
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movzwl	48(%r12), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$1056, %ecx             # imm = 0x420
	jne	.LBB6_8
# BB#12:                                # %if.end.i
	movl	4(%rbx), %r8d
	movl	$-15, %ebp
	cmpl	%r8d, 52(%r12)
	jne	.LBB6_10
# BB#13:                                # %if.end.11.i
	testl	%r8d, %r8d
	je	.LBB6_39
# BB#14:                                # %for.body.i.preheader
	movq	56(%r12), %rdi
	movq	%rax, %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB6_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %esi
	andl	$16160, %esi            # imm = 0x3F20
	cmpl	$4640, %esi             # imm = 0x1220
	jne	.LBB6_16
# BB#19:                                # %if.end.32.i
                                        #   in Loop: Header=BB6_15 Depth=1
	cmpl	%r13d, 4(%rdi)
	jne	.LBB6_10
# BB#20:                                # %for.inc.i
                                        #   in Loop: Header=BB6_15 Depth=1
	movq	8(%rdi), %rsi
	movq	%rsi, -8(%rcx)
	movl	%r13d, (%rcx)
	incl	%edx
	addq	$16, %rcx
	addq	$16, %rdi
	cmpl	%r8d, %edx
	jb	.LBB6_15
	jmp	.LBB6_39
.LBB6_21:                               # %if.else
	movzwl	64(%r12), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$1056, %eax             # imm = 0x420
	jne	.LBB6_22
# BB#24:                                # %if.end.68
	movslq	4(%rbx), %rax
	movl	$-15, %ebp
	cmpl	%eax, 68(%r12)
	jne	.LBB6_40
# BB#25:                                # %if.end.74
	movslq	8(%rbx), %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	%r15d, %esi
	imull	%eax, %esi
	movq	(%r14), %rdi
	movl	$st_const_string_element, %edx
	movl	$.L.str.2, %ecx
	movq	%rax, %rbp
	callq	*104(%rdi)
	movq	%rbp, %r8
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB6_40
# BB#26:                                # %if.end.83
	movq	%r14, 32(%rsp)          # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB6_39
# BB#27:                                # %for.body.90.lr.ph
	movq	72(%r12), %r9
	movq	%r9, (%rsp)             # 8-byte Spill
	movq	%rax, %r12
	addq	$8, %r12
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
.LBB6_28:                               # %for.body.90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_34 Depth 2
	movq	%r14, %rcx
	shlq	$4, %rcx
	movzwl	(%r9,%rcx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$1056, %edx             # imm = 0x420
	jne	.LBB6_29
# BB#31:                                # %if.end.i.70
                                        #   in Loop: Header=BB6_28 Depth=1
	movl	$-15, %ebp
	cmpl	%r15d, 4(%r9,%rcx)
	jne	.LBB6_10
# BB#32:                                # %if.end.11.i.74
                                        #   in Loop: Header=BB6_28 Depth=1
	testl	%r15d, %r15d
	je	.LBB6_38
# BB#33:                                #   in Loop: Header=BB6_28 Depth=1
	xorl	%esi, %esi
	movq	8(%r9,%rcx), %rdi
	movq	%r12, %rcx
	.align	16, 0x90
.LBB6_34:                               # %for.body.i.81
                                        #   Parent Loop BB6_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$4640, %edx             # imm = 0x1220
	jne	.LBB6_35
# BB#36:                                # %if.end.32.i.89
                                        #   in Loop: Header=BB6_34 Depth=2
	cmpl	%r13d, 4(%rdi)
	jne	.LBB6_10
# BB#37:                                # %for.inc.i.94
                                        #   in Loop: Header=BB6_34 Depth=2
	movq	8(%rdi), %rdx
	movq	%rdx, -8(%rcx)
	movl	%r13d, (%rcx)
	incl	%esi
	addq	$16, %rcx
	addq	$16, %rdi
	cmpl	%r15d, %esi
	jb	.LBB6_34
	jmp	.LBB6_38
.LBB6_29:                               # %if.then.i.65
                                        #   in Loop: Header=BB6_28 Depth=1
	movq	%r8, %r15
	leaq	(%rcx,%r9), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$4, %ecx
	jne	.LBB6_30
	jmp	.LBB6_9
.LBB6_35:                               # %if.then.20.i.84
                                        #   in Loop: Header=BB6_28 Depth=1
	movq	%r8, %r15
	movzbl	1(%rdi), %ecx
	cmpl	$18, %ecx
	je	.LBB6_9
.LBB6_30:                               # %cond.true.i.67
                                        #   in Loop: Header=BB6_28 Depth=1
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r15, %r8
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	(%rsp), %r9             # 8-byte Reload
	js	.LBB6_10
.LBB6_38:                               # %for.inc.100
                                        #   in Loop: Header=BB6_28 Depth=1
	incq	%r14
	addq	8(%rsp), %r12           # 8-byte Folded Reload
	cmpq	%r8, %r14
	jl	.LBB6_28
	jmp	.LBB6_39
.LBB6_22:                               # %if.then.58
	addq	$64, %r12
	movzbl	1(%r12), %eax
	movl	$-7, %ebp
	cmpl	$4, %eax
	je	.LBB6_40
# BB#23:                                # %cond.true
	movq	%r12, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB6_8:                                # %if.then.i
	addq	$48, %r12
	movzbl	1(%r12), %ecx
	cmpl	$4, %ecx
	je	.LBB6_9
# BB#11:                                # %cond.true.i
	movq	%rax, %r14
	movq	%r12, %rdi
.LBB6_18:                               # %if.end.106
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	%r14, %rax
	js	.LBB6_10
.LBB6_39:                               # %if.end.111
	movq	%rax, 24(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB6_40
.LBB6_16:                               # %if.then.20.i
	movzbl	1(%rdi), %ecx
	cmpl	$18, %ecx
	jne	.LBB6_17
.LBB6_9:
	movl	$-7, %ebp
.LBB6_10:                               # %if.then.109
	movl	$.L.str.2, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	*24(%rdi)
.LBB6_40:                               # %cleanup.113
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_17:                               # %cond.true.27.i
	movq	%rax, %r14
	jmp	.LBB6_18
.Lfunc_end6:
	.size	cie_table_param, .Lfunc_end6-cie_table_param
	.cfi_endproc

	.globl	cie_set_finish
	.align	16, 0x90
	.type	cie_set_finish,@function
cie_set_finish:                         # @cie_set_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 48
.Ltmp56:
	.cfi_offset %rbx, -48
.Ltmp57:
	.cfi_offset %r12, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	js	.LBB7_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	rc_decrement_only_cs
	testl	%ebp, %ebp
	js	.LBB7_3
# BB#4:                                 # %if.end.6
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	%xmm2, 224(%rax)
	movups	%xmm1, 208(%rax)
	movups	%xmm0, 192(%rax)
	addq	$-16, 624(%rbx)
	addq	$520, %rbx              # imm = 0x208
	movq	%rbx, %rdi
	callq	ref_stack_count
	cmpl	%r14d, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rax,4), %ebp
	jmp	.LBB7_5
.LBB7_1:                                # %if.end.thread
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	rc_decrement_only_cs
.LBB7_3:                                # %if.then.2
	addq	$520, %rbx              # imm = 0x208
	movq	%rbx, %rdi
	callq	ref_stack_count
	subl	%r14d, %eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
.LBB7_5:                                # %return
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cie_set_finish, .Lfunc_end7-cie_set_finish
	.cfi_endproc

	.globl	ciedefgspace
	.align	16, 0x90
	.type	ciedefgspace,@function
ciedefgspace:                           # @ciedefgspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 224
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	520(%rbx), %rbp
	movq	%rbp, %rdi
	callq	ref_stack_count
	movl	%eax, %r13d
	movq	(%rbx), %rdi
	callq	gs_state_memory
	movq	%rax, %r15
	movq	$0, 120(%rsp)
	addq	$16, %r14
	cmpq	640(%rbx), %r14
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB8_41
.LBB8_2:                                # %if.then.14
	movq	%r14, 624(%rbx)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	192(%rax), %xmm0
	movups	208(%rax), %xmm1
	movups	224(%rax), %xmm2
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	56(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB8_3
# BB#4:                                 # %if.end.19
	movq	56(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$1056, %eax             # imm = 0x420
	jne	.LBB8_5
# BB#7:                                 # %if.end.34
	movl	$-15, %eax
	cmpl	$5, 4(%rdi)
	jne	.LBB8_41
# BB#8:                                 # %if.end.39
	movq	(%r15), %rdx
	leaq	120(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_CIEDEFG
	testl	%eax, %eax
	js	.LBB8_41
# BB#9:                                 # %if.end.44
	movq	120(%rsp), %rax
	movq	72(%rax), %r14
	movl	$4, 31448(%r14)
	movl	$3, 31468(%r14)
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB8_12
# BB#10:                                # %if.then.i
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB8_13
# BB#11:                                # %if.then.if.end.7_crit_edge.i
	movq	(%rbp), %rax
.LBB8_12:                               # %if.end.7.i
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	$cie_defg_finish, 24(%rax)
	movq	(%rbp), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	%r14, 24(%rax)
	movq	%r15, %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB8_13:                               # %cie_cache_push_finish.exit
	movq	8(%rbx), %r15
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	48(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %r8
	leaq	52(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	cie_abc_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_40
# BB#14:                                # %if.end.i
	leaq	31352(%r14), %r8
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	$.L.str.7, %edx
	movl	$8, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	dict_floats_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_40
# BB#15:                                # %if.else.i.i
	jne	.LBB8_17
# BB#16:                                # %if.then.2.i.i
	movl	$Range4_default, %esi
	movl	$32, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB8_17:                               # %if.end.4.i
	leaq	31416(%r14), %r8
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	$.L.str.8, %edx
	movl	$8, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	dict_floats_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_40
# BB#18:                                # %if.else.i.40.i
	jne	.LBB8_20
# BB#19:                                # %if.then.2.i.42.i
	movl	$Range4_default, %esi
	movl	$32, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB8_20:                               # %if.end.10.i
	leaq	31448(%r14), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rdx
	callq	cie_table_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_40
# BB#21:                                # %if.end.14.i
	leaq	160(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB8_30
# BB#22:                                # %if.then.i.33
	movq	160(%rsp), %rsi
	movl	$-20, %ebp
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB8_40
# BB#23:                                # %do.end.i
	movl	$-15, %ebp
	cmpl	$4, 4(%rsi)
	jne	.LBB8_40
# BB#24:                                # %for.cond.preheader.i
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %r12
	movq	%r12, %rdi
	callq	array_get
	movzwl	128(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	movl	$1, %ebp
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB8_28
# BB#25:
	leaq	128(%rsp), %r15
.LBB8_26:                               # %for.inc.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, %rbp
	ja	.LBB8_29
# BB#27:                                # %for.inc.for.body_crit_edge.i
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	160(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	movzwl	128(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	incq	%rbp
	cmpl	$1216, %eax             # imm = 0x4C0
	je	.LBB8_26
.LBB8_28:                               # %dict_proc_array_param.exit
	leaq	128(%rsp), %rdi
	callq	check_proc_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	%r12, %r15
	jns	.LBB8_31
	jmp	.LBB8_40
.LBB8_3:                                # %if.then.17
	movl	$-15, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB8_41
.LBB8_5:                                # %if.then.22
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$4, %ecx
	je	.LBB8_41
# BB#6:                                 # %cond.true.29
	callq	check_type_failed
	jmp	.LBB8_41
.LBB8_30:                               # %if.else.i.38
	movq	$empty_procs, 72(%rsp)
	movw	$1120, 64(%rsp)         # imm = 0x460
	movl	$4, 68(%rsp)
	movl	$1, %ebp
.LBB8_31:                               # %if.end.18.i
	movq	%r15, 8(%rsp)           # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB8_32
# BB#38:                                # %if.else.i
	movl	$1, 31480(%r14)
	movl	$1, 33568(%r14)
	movl	$1, 35656(%r14)
	movl	$1, 37744(%r14)
	jmp	.LBB8_39
.LBB8_32:                               # %if.then.20.i
	movq	72(%rsp), %r12
	leaq	31480(%r14), %rcx
	leaq	33568(%r14), %rbp
	leaq	35656(%r14), %r15
	leaq	37744(%r14), %rax
	movq	%rcx, 128(%rsp)
	movq	%rbp, 136(%rsp)
	movq	%r15, 144(%rsp)
	movq	%rax, 152(%rsp)
	movq	$.L.str.10, (%rsp)
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB8_39
# BB#33:                                # %for.body.for.body_crit_edge.i.i.preheader
	leaq	31360(%r14), %rsi
	leaq	16(%r12), %rdx
	movq	$.L.str.10, (%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	movq	%r14, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB8_39
# BB#34:                                # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.preheader
	leaq	31368(%r14), %rsi
	leaq	32(%r12), %rdx
	movq	$.L.str.10, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB8_39
# BB#35:                                # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge.preheader
	addq	$48, %r12
	leaq	31376(%r14), %r15
	movl	$4, %ebp
.LBB8_36:                               # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rsp,%rbp,8), %rcx
	movq	$.L.str.10, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r14, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	cie_prepare_iccproc
	cmpq	$3, %rbp
	jg	.LBB8_39
# BB#37:                                # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i.for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB8_36 Depth=1
	incq	%rbp
	addq	$16, %r12
	addq	$8, %r15
	testl	%eax, %eax
	jns	.LBB8_36
.LBB8_39:                               # %if.end.61
	xorl	%ebp, %ebp
.LBB8_40:                               # %if.end.61
	movq	(%rbx), %rdi
	movq	120(%rsp), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	gsicc_add_cs
	movq	120(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	callq	cie_set_finish
.LBB8_41:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_29:                               # %for.cond.for.end_crit_edge.i
	movq	160(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 64(%rsp)
	xorl	%ebp, %ebp
	movq	%r12, %r15
	jmp	.LBB8_31
.Lfunc_end8:
	.size	ciedefgspace, .Lfunc_end8-ciedefgspace
	.cfi_endproc

	.globl	cie_cache_push_finish
	.align	16, 0x90
	.type	cie_cache_push_finish,@function
cie_cache_push_finish:                  # @cie_cache_push_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp81:
	.cfi_offset %r14, -24
.Ltmp82:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	520(%rdi), %rax
	movq	536(%rdi), %rcx
	leaq	520(%rdi), %rbx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB9_3
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB9_4
# BB#2:                                 # %if.then.if.end.7_crit_edge
	movq	(%rbx), %rax
.LBB9_3:                                # %if.end.7
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	%r12, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	%r15, 24(%rax)
	movq	%r14, %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	(%rbx), %rcx
	movw	%ax, (%rcx)
	movl	$5, %eax
.LBB9_4:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	cie_cache_push_finish, .Lfunc_end9-cie_cache_push_finish
	.cfi_endproc

	.align	16, 0x90
	.type	cie_defg_finish,@function
cie_defg_finish:                        # @cie_defg_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movq	8(%rax), %rdi
	movups	DecodeDEFG_from_cache+16(%rip), %xmm0
	movups	%xmm0, 31400(%rdi)
	movups	DecodeDEFG_from_cache(%rip), %xmm0
	movups	%xmm0, 31384(%rdi)
	movq	DecodeABC_from_cache+16(%rip), %rax
	movq	%rax, 6456(%rdi)
	movups	DecodeABC_from_cache(%rip), %xmm0
	movups	%xmm0, 6440(%rdi)
	movq	DecodeLMN_from_cache+16(%rip), %rax
	movq	%rax, 56(%rdi)
	movups	DecodeLMN_from_cache(%rip), %xmm0
	movups	%xmm0, 40(%rdi)
	callq	gs_cie_defg_complete
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end10:
	.size	cie_defg_finish, .Lfunc_end10-cie_defg_finish
	.cfi_endproc

	.globl	ciedefspace
	.align	16, 0x90
	.type	ciedefspace,@function
ciedefspace:                            # @ciedefspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp91:
	.cfi_def_cfa_offset 208
.Ltmp92:
	.cfi_offset %rbx, -56
.Ltmp93:
	.cfi_offset %r12, -48
.Ltmp94:
	.cfi_offset %r13, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	520(%rbx), %rbp
	movq	%rbp, %rdi
	callq	ref_stack_count
	movl	%eax, %r13d
	movq	(%rbx), %rdi
	callq	gs_state_memory
	movq	%rax, %r15
	movq	$0, 120(%rsp)
	addq	$16, %r14
	cmpq	640(%rbx), %r14
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB11_37
.LBB11_2:                               # %if.then.14
	movq	%r14, 624(%rbx)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	192(%rax), %xmm0
	movups	208(%rax), %xmm1
	movups	224(%rax), %xmm2
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	56(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB11_3
# BB#4:                                 # %if.end.19
	movq	56(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$1056, %eax             # imm = 0x420
	jne	.LBB11_5
# BB#7:                                 # %if.end.34
	movl	$-15, %eax
	cmpl	$4, 4(%rdi)
	jne	.LBB11_37
# BB#8:                                 # %if.end.39
	movq	(%r15), %rdx
	leaq	120(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_CIEDEF
	testl	%eax, %eax
	js	.LBB11_37
# BB#9:                                 # %if.end.44
	movq	120(%rsp), %rax
	movq	72(%rax), %r14
	movl	$3, 31424(%r14)
	movl	$3, 31444(%r14)
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB11_12
# BB#10:                                # %if.then.i
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB11_13
# BB#11:                                # %if.then.if.end.7_crit_edge.i
	movq	(%rbp), %rax
.LBB11_12:                              # %if.end.7.i
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	$cie_def_finish, 24(%rax)
	movq	(%rbp), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	%r14, 24(%rax)
	movq	%r15, %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB11_13:                              # %cie_cache_push_finish.exit
	movq	8(%rbx), %rbp
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	52(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %r8
	leaq	48(%rsp), %r9
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	cie_abc_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_36
# BB#14:                                # %if.end.i
	leaq	31352(%r14), %r8
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	$.L.str.11, %edx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	dict_floats_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_36
# BB#15:                                # %if.else.i.i.i
	jne	.LBB11_17
# BB#16:                                # %if.then.2.i.i.i
	movl	$Range4_default, %esi
	movl	$24, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB11_17:                              # %if.end.4.i
	leaq	31400(%r14), %r8
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	$.L.str.12, %edx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	dict_floats_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_36
# BB#18:                                # %if.else.i.i.38.i
	jne	.LBB11_20
# BB#19:                                # %if.then.2.i.i.40.i
	movl	$Range4_default, %esi
	movl	$24, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB11_20:                              # %if.end.8.i
	leaq	31424(%r14), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	cie_table_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_36
# BB#21:                                # %if.end.12.i
	leaq	144(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_30
# BB#22:                                # %if.then.i.33
	movq	144(%rsp), %rsi
	movl	$-20, %r15d
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB11_36
# BB#23:                                # %do.end.i
	movl	$-15, %r15d
	cmpl	$3, 4(%rsi)
	jne	.LBB11_36
# BB#24:                                # %for.cond.preheader.i
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbp, %r12
	movq	%r12, %rdi
	callq	array_get
	movzwl	128(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	movl	$1, %ebp
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB11_28
# BB#25:
	leaq	128(%rsp), %r15
.LBB11_26:                              # %for.inc.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, %rbp
	ja	.LBB11_29
# BB#27:                                # %for.inc.for.body_crit_edge.i
                                        #   in Loop: Header=BB11_26 Depth=1
	movq	144(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	movzwl	128(%rsp), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	incq	%rbp
	cmpl	$1216, %eax             # imm = 0x4C0
	je	.LBB11_26
.LBB11_28:                              # %dict_proc_array_param.exit
	leaq	128(%rsp), %rdi
	callq	check_proc_failed
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movq	%r12, %rax
	jns	.LBB11_31
	jmp	.LBB11_36
.LBB11_3:                               # %if.then.17
	movl	$-15, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB11_37
.LBB11_5:                               # %if.then.22
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$4, %ecx
	je	.LBB11_37
# BB#6:                                 # %cond.true.29
	callq	check_type_failed
	jmp	.LBB11_37
.LBB11_30:                              # %if.else.i.38
	movq	$empty_procs, 72(%rsp)
	movw	$1120, 64(%rsp)         # imm = 0x460
	movl	$3, 68(%rsp)
	movl	$1, %r15d
	movq	%rbp, %rax
.LBB11_31:                              # %if.end.16.i
	testl	%r15d, %r15d
	je	.LBB11_32
# BB#35:                                # %if.else.i
	movl	$1, 31456(%r14)
	movl	$1, 33544(%r14)
	movl	$1, 35632(%r14)
	xorl	%r15d, %r15d
	jmp	.LBB11_36
.LBB11_32:                              # %if.then.18.i
	movq	72(%rsp), %rbp
	leaq	31456(%r14), %rcx
	movq	$.L.str.14, (%rsp)
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r14, %r8
	movq	%rax, %r12
	movq	%r12, %r9
	callq	cie_prepare_iccproc
	xorl	%r15d, %r15d
	testl	%eax, %eax
	js	.LBB11_36
# BB#33:                                # %for.body.for.body_crit_edge.i.i.preheader
	leaq	33544(%r14), %rcx
	leaq	31360(%r14), %rsi
	leaq	16(%rbp), %rdx
	movq	$.L.str.14, (%rsp)
	movq	%rbx, %rdi
	movq	%r14, %r8
	movq	%r12, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB11_36
# BB#34:                                # %for.body.for.body_crit_edge.i.i.cieicc_prepare_caches.exit.i.loopexit_crit_edge
	leaq	35632(%r14), %rcx
	leaq	31368(%r14), %rsi
	addq	$32, %rbp
	movq	$.L.str.14, (%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movq	%r14, %r8
	movq	%r12, %r9
	callq	cie_prepare_iccproc
.LBB11_36:                              # %if.end.61
	movq	(%rbx), %rdi
	movq	120(%rsp), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	gsicc_add_cs
	movq	120(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	callq	cie_set_finish
.LBB11_37:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_29:                              # %for.cond.for.end_crit_edge.i
	movq	144(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 64(%rsp)
	xorl	%r15d, %r15d
	movq	%r12, %rax
	jmp	.LBB11_31
.Lfunc_end11:
	.size	ciedefspace, .Lfunc_end11-ciedefspace
	.cfi_endproc

	.align	16, 0x90
	.type	cie_def_finish,@function
cie_def_finish:                         # @cie_def_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movq	8(%rax), %rdi
	movq	DecodeDEF_from_cache+16(%rip), %rax
	movq	%rax, 31392(%rdi)
	movups	DecodeDEF_from_cache(%rip), %xmm0
	movups	%xmm0, 31376(%rdi)
	movq	DecodeABC_from_cache+16(%rip), %rax
	movq	%rax, 6456(%rdi)
	movups	DecodeABC_from_cache(%rip), %xmm0
	movups	%xmm0, 6440(%rdi)
	movq	DecodeLMN_from_cache+16(%rip), %rax
	movq	%rax, 56(%rdi)
	movups	DecodeLMN_from_cache(%rip), %xmm0
	movups	%xmm0, 40(%rdi)
	callq	gs_cie_def_complete
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end12:
	.size	cie_def_finish, .Lfunc_end12-cie_def_finish
	.cfi_endproc

	.globl	cieabcspace
	.align	16, 0x90
	.type	cieabcspace,@function
cieabcspace:                            # @cieabcspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 160
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	624(%rbx), %rbp
	leaq	520(%rbx), %r13
	movq	%r13, %rdi
	callq	ref_stack_count
	movl	%eax, %r12d
	movq	(%rbx), %rdi
	callq	gs_state_memory
	movq	%rax, %r15
	movq	$0, 96(%rsp)
	addq	$16, %rbp
	cmpq	640(%rbx), %rbp
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB13_8
.LBB13_2:                               # %if.then.14
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	movq	%rbp, 624(%rbx)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	192(%rax), %xmm0
	movups	208(%rax), %xmm1
	movups	224(%rax), %xmm2
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	(%r15), %rdx
	leaq	96(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_CIEABC
	testl	%eax, %eax
	js	.LBB13_8
# BB#3:                                 # %if.end.18
	movq	96(%rsp), %rax
	movq	72(%rax), %r12
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	movq	16(%rsp), %rbp          # 8-byte Reload
	jbe	.LBB13_6
# BB#4:                                 # %if.then.i
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB13_7
# BB#5:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%rbp), %rax
.LBB13_6:                               # %if.end.7.i
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	$cie_abc_finish, 24(%rax)
	movq	(%rbp), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	%r12, 24(%rax)
	movq	%r15, %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB13_7:                               # %if.end.34
	movq	8(%rbx), %rsi
	leaq	44(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	48(%rsp), %r13
	leaq	40(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	cie_abc_param
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	movq	96(%rsp), %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	gsicc_add_cs
	movq	96(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	callq	cie_set_finish
.LBB13_8:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cieabcspace, .Lfunc_end13-cieabcspace
	.cfi_endproc

	.align	16, 0x90
	.type	cie_abc_finish,@function
cie_abc_finish:                         # @cie_abc_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movq	8(%rax), %rdi
	movq	DecodeABC_from_cache+16(%rip), %rax
	movq	%rax, 6456(%rdi)
	movups	DecodeABC_from_cache(%rip), %xmm0
	movups	%xmm0, 6440(%rdi)
	movq	DecodeLMN_from_cache+16(%rip), %rax
	movq	%rax, 56(%rdi)
	movups	DecodeLMN_from_cache(%rip), %xmm0
	movups	%xmm0, 40(%rdi)
	callq	gs_cie_abc_complete
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end14:
	.size	cie_abc_finish, .Lfunc_end14-cie_abc_finish
	.cfi_endproc

	.align	16, 0x90
	.type	cie_abc_param,@function
cie_abc_param:                          # @cie_abc_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 128
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %rbx
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	leaq	6416(%r13), %r12
	movl	$.L.str.15, %edx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r12, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB15_22
# BB#1:                                 # %if.else.i.i
	jne	.LBB15_3
# BB#2:                                 # %if.then.2.i.i
	movl	$Range4_default, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	memcpy
.LBB15_3:                               # %lor.lhs.false
	leaq	6464(%r13), %rcx
	movl	$.L.str.16, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	dict_matrix3_param
	testl	%eax, %eax
	js	.LBB15_22
# BB#4:                                 # %lor.lhs.false.3
	movq	128(%rsp), %r8
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	cie_lmnp_param
	testl	%eax, %eax
	js	.LBB15_22
# BB#5:                                 # %if.end
	leaq	16(%rbx), %r8
	movl	$.L.str.17, %edx
	movl	$3, %ecx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	dict_proc_array_param
	testl	%eax, %eax
	js	.LBB15_22
# BB#6:                                 # %if.end.9
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%r15)
	movq	DecodeABC_default+16(%rip), %rax
	movq	%rax, 6456(%r13)
	movups	DecodeABC_default(%rip), %xmm0
	movups	%xmm0, 6440(%r13)
	cmpl	$0, (%r15)
	je	.LBB15_13
# BB#7:                                 # %if.then.11
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	24(%rbx), %r15
	leaq	6512(%r13), %rcx
	leaq	14784(%r13), %rbx
	leaq	23056(%r13), %rax
	movq	%rcx, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$.L.str.18, (%rsp)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movq	%rdi, %r12
	movq	%r15, %rdx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB15_12
# BB#8:                                 # %for.body.for.body_crit_edge.i.preheader
	leaq	6424(%r13), %rsi
	leaq	16(%r15), %rdx
	movq	$.L.str.18, (%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rcx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB15_12
# BB#9:                                 # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.preheader
	leaq	6432(%r13), %rbx
	addq	$32, %r15
	movl	$3, %ebp
	.align	16, 0x90
.LBB15_10:                              # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp,%rbp,8), %rcx
	movq	$.L.str.18, (%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	cie_prepare_iccproc
	cmpq	$2, %rbp
	jg	.LBB15_12
# BB#11:                                # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB15_10 Depth=1
	addq	$8, %rbx
	incq	%rbp
	addq	$16, %r15
	testl	%eax, %eax
	jns	.LBB15_10
.LBB15_12:                              # %cieicc_prepare_caches.exit
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB15_14
.LBB15_13:                              # %if.else
	movl	$1, 6512(%r13)
	movl	$1, 14784(%r13)
	movl	$1, 23056(%r13)
	movq	24(%rsp), %r12          # 8-byte Reload
.LBB15_14:                              # %if.end.47
	movq	128(%rsp), %rax
	cmpl	$0, (%rax)
	je	.LBB15_20
# BB#15:                                # %if.then.49
	movq	40(%rbx), %r15
	movq	%r13, %rcx
	subq	$-128, %rcx
	leaq	2216(%r13), %rbx
	leaq	4304(%r13), %rax
	movq	%rcx, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	16(%r13), %rsi
	movq	$.L.str.6, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB15_21
# BB#16:                                # %for.body.for.body_crit_edge.i.53.preheader
	leaq	24(%r13), %rsi
	leaq	16(%r15), %rdx
	movq	$.L.str.6, (%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rcx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB15_21
# BB#17:                                # %for.body.for.body_crit_edge.i.53.for.body.for.body_crit_edge.i.53_crit_edge.preheader
	leaq	32(%r13), %rbx
	addq	$32, %r15
	movl	$3, %ebp
	.align	16, 0x90
.LBB15_18:                              # %for.body.for.body_crit_edge.i.53.for.body.for.body_crit_edge.i.53_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp,%rbp,8), %rcx
	movq	$.L.str.6, (%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	cie_prepare_iccproc
	cmpq	$2, %rbp
	jg	.LBB15_21
# BB#19:                                # %for.body.for.body_crit_edge.i.53.for.body.for.body_crit_edge.i.53_crit_edge
                                        #   in Loop: Header=BB15_18 Depth=1
	addq	$8, %rbx
	incq	%rbp
	addq	$16, %r15
	testl	%eax, %eax
	jns	.LBB15_18
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.71
	movl	$1, 128(%r13)
	movl	$1, 2216(%r13)
	movl	$1, 4304(%r13)
.LBB15_21:                              # %cleanup
	xorl	%eax, %eax
.LBB15_22:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	cie_abc_param, .Lfunc_end15-cie_abc_param
	.cfi_endproc

	.globl	cieaspace
	.align	16, 0x90
	.type	cieaspace,@function
cieaspace:                              # @cieaspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp134:
	.cfi_def_cfa_offset 224
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	624(%r13), %rbp
	leaq	520(%r13), %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	callq	ref_stack_count
	movl	%eax, %r12d
	movq	(%r13), %rdi
	callq	gs_state_memory
	movq	%rax, %rbx
	movq	$0, 120(%rsp)
	addq	$16, %rbp
	cmpq	640(%r13), %rbp
	jbe	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, 688(%r13)
	movl	$-16, %r14d
	jmp	.LBB16_23
.LBB16_2:                               # %if.then.14
	movl	%r12d, 44(%rsp)         # 4-byte Spill
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 624(%r13)
	movq	(%r13), %rdi
	callq	gs_state_client_data
	movups	192(%rax), %xmm0
	movups	208(%rax), %xmm1
	movups	224(%rax), %xmm2
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	(%rbx), %rdx
	leaq	120(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_CIEA
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_23
# BB#3:                                 # %if.end.18
	movq	120(%rsp), %rax
	movq	72(%rax), %rbp
	movq	8(%r13), %r12
	leaq	6416(%rbp), %r8
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	$.L.str.22, %edx
	movl	$2, %ecx
	movl	$RangeA_default, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	dict_floats_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_23
# BB#4:                                 # %if.end.i
	leaq	6432(%rbp), %r8
	movl	$.L.str.23, %edx
	movl	$3, %ecx
	movl	$MatrixA_default, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	dict_floats_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_23
# BB#5:                                 # %if.end.4.i
	leaq	64(%rsp), %rcx
	leaq	60(%rsp), %r8
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	cie_lmnp_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_23
# BB#6:                                 # %if.end.8.i
	leaq	80(%rsp), %rdx
	movl	$.L.str.24, %esi
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	dict_proc_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	%r15d, %r14d
	js	.LBB16_23
# BB#7:                                 # %if.end.22
	sete	%r12b
	movq	520(%r13), %rax
	movq	536(%r13), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB16_10
# BB#8:                                 # %if.then.i
	movl	$2, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	ref_stack_extend
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_23
# BB#9:                                 # %if.then.if.end.7_crit_edge.i
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
.LBB16_10:                              # %if.end.26
	movzbl	%r12b, %r14d
	leaq	16(%rax), %rcx
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	%rcx, (%r12)
	movq	$cie_a_finish, 24(%rax)
	movq	(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%r12)
	movq	%rbp, 24(%rax)
	movq	%rbx, %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movq	(%r12), %rcx
	movw	%ax, (%rcx)
	movl	60(%rsp), %r12d
	orl	%r12d, %r14d
	je	.LBB16_11
# BB#12:                                # %if.else.48
	testl	%r15d, %r15d
	je	.LBB16_13
# BB#14:                                # %if.else.58
	movl	$1, 6448(%rbp)
	movl	$5, %r14d
	jmp	.LBB16_15
.LBB16_11:                              # %if.then.28
	movl	$1, 128(%rbp)
	movl	$1, 2216(%rbp)
	movl	$1, 4304(%rbp)
	movl	$1, 6448(%rbp)
	movl	$5, %r14d
	jmp	.LBB16_22
.LBB16_13:                              # %if.then.50
	leaq	6448(%rbp), %rcx
	movq	$.L.str.5, (%rsp)
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	leaq	80(%rsp), %rdx
	movq	%rbp, %r8
	movq	%rbx, %r9
	callq	cie_prepare_iccproc
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_23
.LBB16_15:                              # %if.end.64
	testl	%r12d, %r12d
	je	.LBB16_21
# BB#16:                                # %if.then.66
	movq	104(%rsp), %r15
	movq	%rbp, %rcx
	subq	$-128, %rcx
	leaq	2216(%rbp), %r12
	leaq	4304(%rbp), %rax
	movq	%rcx, 128(%rsp)
	movq	%r12, 136(%rsp)
	movq	%rax, 144(%rsp)
	leaq	16(%rbp), %rsi
	movq	$.L.str.6, (%rsp)
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%rbp, %r8
	movq	%rbx, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB16_22
# BB#17:                                # %for.body.for.body_crit_edge.i.preheader
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	24(%rbp), %rsi
	leaq	16(%r15), %rdx
	movq	$.L.str.6, (%rsp)
	movq	%r13, %rdi
	movq	%r12, %rcx
	movq	%rbp, %r8
	movq	%rbx, %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB16_22
# BB#18:                                # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	32(%rax), %r12
	addq	$32, %r15
	movl	$3, %ebp
.LBB16_19:                              # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rsp,%rbp,8), %rcx
	movq	$.L.str.6, (%rsp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	16(%rsp), %r8           # 8-byte Reload
	movq	%rbx, %r9
	callq	cie_prepare_iccproc
	cmpq	$2, %rbp
	jg	.LBB16_22
# BB#20:                                # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB16_19 Depth=1
	addq	$8, %r12
	incq	%rbp
	addq	$16, %r15
	testl	%eax, %eax
	jns	.LBB16_19
	jmp	.LBB16_22
.LBB16_21:                              # %if.else.86
	movl	$1, 128(%rbp)
	movl	$1, 2216(%rbp)
	movl	$1, 4304(%rbp)
.LBB16_22:                              # %if.end.124
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	44(%rsp), %ebx          # 4-byte Reload
	movq	(%r13), %rdi
	movq	120(%rsp), %rsi
	callq	gsicc_add_cs
	movq	120(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%r13, %rdi
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	cie_set_finish
	movl	%eax, %r14d
.LBB16_23:                              # %cleanup
	movl	%r14d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	cieaspace, .Lfunc_end16-cieaspace
	.cfi_endproc

	.align	16, 0x90
	.type	cie_a_finish,@function
cie_a_finish:                           # @cie_a_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movq	8(%rax), %rdi
	movq	DecodeA_from_cache(%rip), %rax
	movq	%rax, 6424(%rdi)
	movq	DecodeLMN_from_cache+16(%rip), %rax
	movq	%rax, 56(%rdi)
	movups	DecodeLMN_from_cache(%rip), %xmm0
	movups	%xmm0, 40(%rdi)
	callq	gs_cie_a_complete
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end17:
	.size	cie_a_finish, .Lfunc_end17-cie_a_finish
	.cfi_endproc

	.align	16, 0x90
	.type	cie_prepare_iccproc,@function
cie_prepare_iccproc:                    # @cie_prepare_iccproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp144:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp146:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp147:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 80
.Ltmp150:
	.cfi_offset %rbx, -56
.Ltmp151:
	.cfi_offset %r12, -48
.Ltmp152:
	.cfi_offset %r13, -40
.Ltmp153:
	.cfi_offset %r14, -32
.Ltmp154:
	.cfi_offset %r15, -24
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%r9, %rdi
	callq	imemory_space
	movl	%eax, %r12d
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movq	80(%rsp), %rcx
	callq	gs_cie_cache_init
	cmpl	$0, 4(%r15)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%rbx)
	movq	520(%rbp), %rax
	movq	$-144, %rcx
	addq	536(%rbp), %rcx
	leaq	520(%rbp), %rbp
	cmpq	%rcx, %rax
	jbe	.LBB18_3
# BB#1:                                 # %if.then
	movl	$9, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB18_4
# BB#2:                                 # %if.then.if.end.12_crit_edge
	movq	(%rbp), %rax
.LBB18_3:                               # %if.end.12
	movl	8(%rsp), %ecx
	movl	%ecx, 152(%rax)
	movw	$4096, 144(%rax)        # imm = 0x1000
	movslq	16(%rsp), %rcx
	movq	%rcx, 136(%rax)
	movw	$2816, 128(%rax)        # imm = 0xB00
	movl	12(%rsp), %ecx
	movl	%ecx, 120(%rax)
	movw	$4096, 112(%rax)        # imm = 0x1000
	movups	(%r15), %xmm0
	movups	%xmm0, 96(%rax)
	andb	$127, 96(%rax)
	movq	$zcvx, 88(%rax)
	movw	$3968, 80(%rax)         # imm = 0xF80
	movl	$0, 84(%rax)
	movq	$zfor_samples, 72(%rax)
	movw	$3968, 64(%rax)         # imm = 0xF80
	movl	$0, 68(%rax)
	movq	$cie_create_icc, 56(%rax)
	movw	$3968, 48(%rax)         # imm = 0xF80
	movl	$0, 52(%rax)
	addq	$144, (%rbp)
	subq	%r14, %rbx
	movq	%rbx, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	%r14, 24(%rax)
	addl	$2048, %r12d            # imm = 0x800
	movw	%r12w, 16(%rax)
	movl	$5, %eax
.LBB18_4:                               # %cleanup.78
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	cie_prepare_iccproc, .Lfunc_end18-cie_prepare_iccproc
	.cfi_endproc

	.globl	cieicc_prepare_caches
	.align	16, 0x90
	.type	cieicc_prepare_caches,@function
cieicc_prepare_caches:                  # @cieicc_prepare_caches
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp157:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp159:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp160:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp162:
	.cfi_def_cfa_offset 112
.Ltmp163:
	.cfi_offset %rbx, -56
.Ltmp164:
	.cfi_offset %r12, -48
.Ltmp165:
	.cfi_offset %r13, -40
.Ltmp166:
	.cfi_offset %r14, -32
.Ltmp167:
	.cfi_offset %r15, -24
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	120(%rsp), %r13
	movq	112(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, 32(%rsp)
	movl	$3, %ebp
	testq	%rax, %rax
	je	.LBB19_2
# BB#1:                                 # %if.else
	movq	%rax, 40(%rsp)
	movl	$4, %ebp
.LBB19_2:                               # %if.end
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r13, %r8
	movq	128(%rsp), %r9
	callq	cie_prepare_iccproc
	testl	%eax, %eax
	js	.LBB19_6
# BB#3:                                 # %for.body.for.body_crit_edge.preheader
	addq	$16, %r14
	addq	$8, %rbx
	movl	$2, %r12d
	.align	16, 0x90
.LBB19_4:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp,%r12,8), %rcx
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r13, %r8
	movq	128(%rsp), %r9
	callq	cie_prepare_iccproc
	cmpq	%rbp, %r12
	jge	.LBB19_6
# BB#5:                                 # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB19_4 Depth=1
	incq	%r12
	addq	$16, %r14
	addq	$8, %rbx
	testl	%eax, %eax
	jns	.LBB19_4
.LBB19_6:                               # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cieicc_prepare_caches, .Lfunc_end19-cieicc_prepare_caches
	.cfi_endproc

	.globl	cie_prepare_cache
	.align	16, 0x90
	.type	cie_prepare_cache,@function
cie_prepare_cache:                      # @cie_prepare_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp170:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp171:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp172:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp173:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp174:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp175:
	.cfi_def_cfa_offset 80
.Ltmp176:
	.cfi_offset %rbx, -56
.Ltmp177:
	.cfi_offset %r12, -48
.Ltmp178:
	.cfi_offset %r13, -40
.Ltmp179:
	.cfi_offset %r14, -32
.Ltmp180:
	.cfi_offset %r15, -24
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%r9, %rdi
	callq	imemory_space
	movl	%eax, %r12d
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movq	80(%rsp), %rcx
	callq	gs_cie_cache_init
	cmpl	$0, 4(%r15)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%rbx)
	movq	520(%rbp), %rax
	movq	$-144, %rcx
	addq	536(%rbp), %rcx
	leaq	520(%rbp), %rbp
	cmpq	%rcx, %rax
	jbe	.LBB20_3
# BB#1:                                 # %if.then
	movl	$9, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB20_4
# BB#2:                                 # %if.then.if.end.12_crit_edge
	movq	(%rbp), %rax
.LBB20_3:                               # %if.end.12
	movl	8(%rsp), %ecx
	movl	%ecx, 152(%rax)
	movw	$4096, 144(%rax)        # imm = 0x1000
	movslq	16(%rsp), %rcx
	movq	%rcx, 136(%rax)
	movw	$2816, 128(%rax)        # imm = 0xB00
	movl	12(%rsp), %ecx
	movl	%ecx, 120(%rax)
	movw	$4096, 112(%rax)        # imm = 0x1000
	movups	(%r15), %xmm0
	movups	%xmm0, 96(%rax)
	andb	$127, 96(%rax)
	movq	$zcvx, 88(%rax)
	movw	$3968, 80(%rax)         # imm = 0xF80
	movl	$0, 84(%rax)
	movq	$zfor_samples, 72(%rax)
	movw	$3968, 64(%rax)         # imm = 0xF80
	movl	$0, 68(%rax)
	movq	$cie_cache_finish, 56(%rax)
	movw	$3968, 48(%rax)         # imm = 0xF80
	movl	$0, 52(%rax)
	addq	$144, (%rbp)
	subq	%r14, %rbx
	movq	%rbx, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	%r14, 24(%rax)
	addl	$2048, %r12d            # imm = 0x800
	movw	%r12w, 16(%rax)
	movl	$5, %eax
.LBB20_4:                               # %cleanup.78
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	cie_prepare_cache, .Lfunc_end20-cie_prepare_cache
	.cfi_endproc

	.align	16, 0x90
	.type	cie_cache_finish,@function
cie_cache_finish:                       # @cie_cache_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp184:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp185:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 48
.Ltmp187:
	.cfi_offset %rbx, -48
.Ltmp188:
	.cfi_offset %r12, -40
.Ltmp189:
	.cfi_offset %r13, -32
.Ltmp190:
	.cfi_offset %r14, -24
.Ltmp191:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	520(%r14), %rax
	movq	528(%r14), %rcx
	addq	$16, %rcx
	cmpq	%rcx, %rax
	jae	.LBB21_2
# BB#1:                                 # %if.then.i
	movl	$2, 584(%r14)
	movl	$-104, %eax
	jmp	.LBB21_7
.LBB21_2:                               # %if.end.i
	leaq	624(%r14), %r15
	movq	(%r15), %rdi
	movq	-8(%rax), %r12
	movq	8(%rax), %rbx
	movl	$0, (%r12,%rbx)
	leaq	40(%r12,%rbx), %rdx
	movl	$512, %esi              # imm = 0x200
	callq	float_params
	testl	%eax, %eax
	jns	.LBB21_6
# BB#3:                                 # %for.cond.preheader.i
	leaq	40(%rbx,%r12), %r12
	xorl	%r13d, %r13d
	movl	$511, %ebx              # imm = 0x1FF
	.align	16, 0x90
.LBB21_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	float_param
	testl	%eax, %eax
	js	.LBB21_7
# BB#4:                                 # %for.cond.i
                                        #   in Loop: Header=BB21_5 Depth=1
	incq	%r13
	addq	$4, %r12
	decq	%rbx
	cmpq	$511, %r13              # imm = 0x1FF
	jbe	.LBB21_5
.LBB21_6:                               # %if.end.30.i
	movl	$512, %esi              # imm = 0x200
	movq	%r15, %rdi
	callq	ref_stack_pop
	addq	$-32, 520(%r14)
	movl	$14, %eax
.LBB21_7:                               # %cie_cache_finish_store.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	cie_cache_finish, .Lfunc_end21-cie_cache_finish
	.cfi_endproc

	.globl	cie_prepare_caches_4
	.align	16, 0x90
	.type	cie_prepare_caches_4,@function
cie_prepare_caches_4:                   # @cie_prepare_caches_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp195:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp196:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp198:
	.cfi_def_cfa_offset 112
.Ltmp199:
	.cfi_offset %rbx, -56
.Ltmp200:
	.cfi_offset %r12, -48
.Ltmp201:
	.cfi_offset %r13, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	120(%rsp), %r13
	movq	112(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, 32(%rsp)
	movl	$3, %ebp
	testq	%rax, %rax
	je	.LBB22_2
# BB#1:                                 # %if.else
	movq	%rax, 40(%rsp)
	movl	$4, %ebp
.LBB22_2:                               # %if.end
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r13, %r8
	movq	128(%rsp), %r9
	callq	cie_prepare_cache
	testl	%eax, %eax
	js	.LBB22_6
# BB#3:                                 # %for.body.for.body_crit_edge.preheader
	addq	$16, %r14
	addq	$8, %rbx
	movl	$2, %r12d
	.align	16, 0x90
.LBB22_4:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp,%r12,8), %rcx
	movq	136(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r13, %r8
	movq	128(%rsp), %r9
	callq	cie_prepare_cache
	cmpq	%rbp, %r12
	jge	.LBB22_6
# BB#5:                                 # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB22_4 Depth=1
	incq	%r12
	addq	$16, %r14
	addq	$8, %rbx
	testl	%eax, %eax
	jns	.LBB22_4
.LBB22_6:                               # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	cie_prepare_caches_4, .Lfunc_end22-cie_prepare_caches_4
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI23_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	cie_lmnp_param,@function
cie_lmnp_param:                         # @cie_lmnp_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp208:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp209:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp211:
	.cfi_def_cfa_offset 64
.Ltmp212:
	.cfi_offset %rbx, -56
.Ltmp213:
	.cfi_offset %r12, -48
.Ltmp214:
	.cfi_offset %r13, -40
.Ltmp215:
	.cfi_offset %r14, -32
.Ltmp216:
	.cfi_offset %r15, -24
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	16(%r12), %rbp
	movl	$.L.str.19, %edx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB23_14
# BB#1:                                 # %if.else.i.i
	jne	.LBB23_3
# BB#2:                                 # %if.then.2.i.i
	movl	$Range4_default, %esi
	movl	$24, %edx
	movq	%rbp, %rdi
	callq	memcpy
.LBB23_3:                               # %lor.lhs.false
	leaq	64(%r12), %rcx
	movl	$.L.str.20, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	dict_matrix3_param
	testl	%eax, %eax
	js	.LBB23_14
# BB#4:                                 # %lor.lhs.false.3
	leaq	104(%r12), %rbp
	movl	$.L.str, %edx
	movl	$3, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB23_14
# BB#5:                                 # %lor.lhs.false.i
	leaq	116(%r12), %r14
	movl	$.L.str.1, %edx
	movl	$3, %ecx
	movl	$BlackPoint_default, %r9d
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %r8
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB23_14
# BB#6:                                 # %if.end.i
	movl	$-15, %eax
	xorps	%xmm0, %xmm0
	ucomiss	(%rbp), %xmm0
	jae	.LBB23_14
# BB#7:                                 # %lor.lhs.false.5.i
	movss	108(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI23_0(%rip), %xmm0
	jne	.LBB23_14
	jp	.LBB23_14
# BB#8:                                 # %lor.lhs.false.8.i
	xorps	%xmm0, %xmm0
	ucomiss	112(%r12), %xmm0
	jae	.LBB23_14
# BB#9:                                 # %lor.lhs.false.11.i
	ucomiss	(%r14), %xmm0
	ja	.LBB23_14
# BB#10:                                # %lor.lhs.false.15.i
	xorps	%xmm0, %xmm0
	ucomiss	120(%r12), %xmm0
	ja	.LBB23_14
# BB#11:                                # %lor.lhs.false.19.i
	ucomiss	124(%r12), %xmm0
	ja	.LBB23_14
# BB#12:                                # %if.end
	addq	$32, %r15
	movl	$.L.str.21, %edx
	movl	$3, %ecx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %r8
	callq	dict_proc_array_param
	testl	%eax, %eax
	js	.LBB23_14
# BB#13:                                # %if.end.9
	sete	%al
	movzbl	%al, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%eax, (%rcx)
	movq	DecodeLMN_default+16(%rip), %rax
	movq	%rax, 56(%r12)
	movups	DecodeLMN_default(%rip), %xmm0
	movups	%xmm0, 40(%r12)
	xorl	%eax, %eax
.LBB23_14:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	cie_lmnp_param, .Lfunc_end23-cie_lmnp_param
	.cfi_endproc

	.align	16, 0x90
	.type	cie_create_icc,@function
cie_create_icc:                         # @cie_create_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp218:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp219:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp220:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp221:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp222:
	.cfi_def_cfa_offset 48
.Ltmp223:
	.cfi_offset %rbx, -48
.Ltmp224:
	.cfi_offset %r12, -40
.Ltmp225:
	.cfi_offset %r13, -32
.Ltmp226:
	.cfi_offset %r14, -24
.Ltmp227:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	520(%r14), %rax
	movq	528(%r14), %rcx
	addq	$16, %rcx
	cmpq	%rcx, %rax
	jae	.LBB24_2
# BB#1:                                 # %if.then
	movl	$2, 584(%r14)
	movl	$-104, %eax
	jmp	.LBB24_7
.LBB24_2:                               # %if.end
	leaq	624(%r14), %r15
	movq	(%r15), %rdi
	movq	-8(%rax), %r12
	movq	8(%rax), %rbx
	movl	$0, (%r12,%rbx)
	leaq	40(%r12,%rbx), %rdx
	movl	$512, %esi              # imm = 0x200
	callq	float_params
	testl	%eax, %eax
	jns	.LBB24_6
# BB#3:                                 # %for.body.preheader
	leaq	40(%rbx,%r12), %r12
	xorl	%r13d, %r13d
	movl	$511, %ebx              # imm = 0x1FF
	.align	16, 0x90
.LBB24_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	float_param
	testl	%eax, %eax
	js	.LBB24_7
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB24_5 Depth=1
	incq	%r13
	decq	%rbx
	addq	$4, %r12
	cmpq	$511, %r13              # imm = 0x1FF
	jbe	.LBB24_5
.LBB24_6:                               # %if.end.29
	movl	$512, %esi              # imm = 0x200
	movq	%r15, %rdi
	callq	ref_stack_pop
	addq	$-32, 520(%r14)
	movl	$14, %eax
.LBB24_7:                               # %cleanup.36
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	cie_create_icc, .Lfunc_end24-cie_create_icc
	.cfi_endproc

	.type	empty_procs,@object     # @empty_procs
	.section	.rodata,"a",@progbits
	.align	16
empty_procs:
	.short	1248                    # 0x4e0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.short	1248                    # 0x4e0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.short	1248                    # 0x4e0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.short	1248                    # 0x4e0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.size	empty_procs, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"WhitePoint"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"BlackPoint"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cie_table_param"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cie_set_finish"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Table"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Decode.A"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Decode.LMN(ICC)"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"RangeDEFG"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"RangeHIJK"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DecodeDEFG"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Decode.DEFG(ICC)"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"RangeDEF"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RangeHIJ"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DecodeDEF"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Decode.DEF(ICC)"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RangeABC"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"MatrixABC"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"DecodeABC"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Decode.ABC(ICC)"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"RangeLMN"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"MatrixLMN"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"DecodeLMN"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RangeA"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"MatrixA"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"DecodeA"
	.size	.L.str.24, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
