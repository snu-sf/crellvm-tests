	.text
	.file	"zfcmap.bc"
	.globl	ztype0_get_cmap
	.align	16, 0x90
	.type	ztype0_get_cmap,@function
ztype0_get_cmap:                        # @ztype0_get_cmap
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
	movq	%rcx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	40(%rsp), %rax
	movl	$.L.str, %esi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	dict_find_string
	movl	$-10, %ebp
	testl	%eax, %eax
	jle	.LBB0_14
# BB#1:                                 # %lor.lhs.false
	movq	40(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB0_14
# BB#2:                                 # %lor.lhs.false.3
	leaq	32(%rsp), %rdx
	movl	$.L.str.1, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_14
# BB#3:                                 # %lor.lhs.false.7
	movq	32(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$15872, %ecx            # imm = 0x3E00
	cmpl	$2048, %ecx             # imm = 0x800
	jne	.LBB0_14
# BB#4:                                 # %lor.lhs.false.13
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	callq	*120(%r12)
	cmpl	$112, %eax
	jb	.LBB0_14
# BB#5:                                 # %if.end
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	4(%r15), %r14d
	testq	%r14, %r14
	je	.LBB0_13
# BB#6:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	16(%rsp), %r13
	movl	$-15, %ebp
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	array_get
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	leaq	48(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_12
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	48(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	je	.LBB0_12
# BB#9:                                 # %if.end.13.i
                                        #   in Loop: Header=BB0_7 Depth=1
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_10
# BB#11:                                # %if.then.32
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$1, 4(%rax)
	jne	.LBB0_14
.LBB0_12:                               # %for.inc
                                        #   in Loop: Header=BB0_7 Depth=1
	incq	%rbx
	cmpq	%r14, %rbx
	jb	.LBB0_7
.LBB0_13:                               # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, (%rax)
	xorl	%ebp, %ebp
.LBB0_14:                               # %cleanup.41
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:                               # %acquire_cid_system_info.exit.thread26
	movl	$-20, %ebp
	jmp	.LBB0_14
.Lfunc_end0:
	.size	ztype0_get_cmap, .Lfunc_end0-ztype0_get_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildcmap,@function
zbuildcmap:                             # @zbuildcmap
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp19:
	.cfi_def_cfa_offset 320
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	$0, 88(%rsp)
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %r15d
	testb	$16, (%rax)
	je	.LBB1_83
# BB#3:                                 # %do.end
	leaq	208(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-15, %r15d
	testl	%eax, %eax
	jle	.LBB1_16
# BB#4:                                 # %if.end.11
	movq	208(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB1_15
# BB#5:                                 # %if.end.19
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	168(%rsp), %rdx
	callq	names_string_ref
	leaq	192(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_16
# BB#6:                                 # %lor.lhs.false
	movq	192(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_16
# BB#7:                                 # %lor.lhs.false.29
	cmpl	$3, 4(%rax)
	jne	.LBB1_16
# BB#8:                                 # %lor.lhs.false.33
	leaq	184(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_16
# BB#9:                                 # %lor.lhs.false.37
	movq	184(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB1_16
# BB#10:                                # %if.end.45
	leaq	248(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_11
# BB#12:                                # %if.end.i
	movq	248(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB1_14
# BB#13:                                # %if.then.6.i
	movq	%rax, 152(%rsp)
	movw	$1120, 144(%rsp)        # imm = 0x460
	movl	$1, 148(%rsp)
	movl	$1, %r8d
	jmp	.LBB1_25
.LBB1_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %r15d
	jmp	.LBB1_83
.LBB1_11:                               # %if.then.i
	movq	$0, 152(%rsp)
	movw	$1120, 144(%rsp)        # imm = 0x460
	movl	$0, 148(%rsp)
	xorl	%r8d, %r8d
	jmp	.LBB1_25
.LBB1_14:                               # %if.end.13.i
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_15
# BB#24:                                # %if.end.20.i
	movups	(%rax), %xmm0
	movaps	%xmm0, 144(%rsp)
	movl	148(%rsp), %r8d
.LBB1_25:                               # %if.end.50
	movq	176(%rsp), %rdx
	movl	172(%rsp), %ecx
	movq	8(%r14), %rax
	movq	%rax, 32(%rsp)
	movq	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	leaq	88(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	callq	gs_cmap_adobe1_alloc
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#26:                                # %if.end.62
	movq	88(%rsp), %r9
	movl	$.L.str.6, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#27:                                # %lor.lhs.false.66
	movq	88(%rsp), %rdx
	addq	$44, %rdx
	movl	$.L.str.7, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#28:                                # %lor.lhs.false.70
	movq	88(%rsp), %rsi
	addq	$48, %rsi
	movq	8(%r14), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %r8
	callq	dict_uid_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#29:                                # %lor.lhs.false.76
	movq	88(%rsp), %r9
	addq	$72, %r9
	movl	$.L.str.8, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#30:                                # %if.end.81
	leaq	200(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_33
# BB#31:                                # %if.then.85
	movq	200(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	movl	$-20, %r15d
	jne	.LBB1_16
# BB#32:                                # %if.end.93
	movq	8(%rax), %rax
	movq	88(%rsp), %rcx
	movq	%rax, 64(%rcx)
.LBB1_33:                               # %for.cond.preheader
	cmpl	$0, 148(%rsp)
	movq	8(%r14), %rdi
	je	.LBB1_40
# BB#34:                                # %for.body.lr.ph
	xorl	%r13d, %r13d
	leaq	248(%rsp), %r12
.LBB1_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax
	movq	32(%rax), %rax
	movl	%r13d, %edx
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rax,%rcx,8), %rbp
	leaq	144(%rsp), %rsi
	movq	%r12, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_37
# BB#36:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_35 Depth=1
	movzbl	249(%rsp), %eax
	cmpl	$14, %eax
	jne	.LBB1_38
.LBB1_37:                               # %get_cid_system_info.exit.thread
                                        #   in Loop: Header=BB1_35 Depth=1
	movq	%rbp, %rdi
	callq	cid_system_info_set_null
	jmp	.LBB1_39
.LBB1_38:                               # %get_cid_system_info.exit
                                        #   in Loop: Header=BB1_35 Depth=1
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	cid_system_info_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
.LBB1_39:                               # %for.inc
                                        #   in Loop: Header=BB1_35 Depth=1
	incl	%r13d
	movq	8(%r14), %rdi
	cmpl	148(%rsp), %r13d
	jb	.LBB1_35
.LBB1_40:                               # %for.end
	movq	192(%rsp), %rsi
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movq	8(%r14), %rdi
	movq	192(%rsp), %rsi
	leaq	112(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	movq	8(%r14), %rdi
	movq	192(%rsp), %rsi
	leaq	96(%rsp), %rcx
	movl	$2, %edx
	callq	array_get
	movq	128(%rsp), %rax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpq	$1024, %rcx             # imm = 0x400
	jne	.LBB1_41
# BB#42:                                # %for.cond.preheader.i
	shrq	$32, %rax
	jne	.LBB1_44
# BB#43:
	movl	$-15, %r15d
	jmp	.LBB1_16
.LBB1_15:                               # %acquire_cid_system_info.exit.thread89
	movl	$-20, %r15d
.LBB1_16:                               # %fail
	movq	88(%rsp), %r13
	testq	%r13, %r13
	je	.LBB1_83
# BB#17:                                # %if.then.165
	movq	8(%r14), %r12
	movq	144(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB1_73
# BB#18:                                # %for.cond.preheader.i.56
	movl	152(%r13), %eax
	testl	%eax, %eax
	jle	.LBB1_72
# BB#19:                                # %for.body.lr.ph.i.57
	xorl	%ebx, %ebx
	movl	$64, %ebp
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_23:                               # %if.end.for.body_crit_edge.i
                                        #   in Loop: Header=BB1_20 Depth=1
	addq	$80, %rbp
	movq	144(%r13), %rsi
.LBB1_20:                               # %for.body.i.58
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -16(%rsi,%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.3.i
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	-8(%rsi,%rbp), %rax
	movl	(%rsi,%rbp), %edx
	movl	$.L.str.17, %ecx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	*160(%r12)
	movl	152(%r13), %eax
.LBB1_22:                               # %if.end.i.60
                                        #   in Loop: Header=BB1_20 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB1_23
# BB#71:                                # %for.cond.for.end_crit_edge.i
	movq	144(%r13), %rsi
.LBB1_72:                               # %for.end.i.61
	movl	$.L.str.18, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	88(%rsp), %r13
	movq	8(%r14), %r12
.LBB1_73:                               # %free_code_map.exit
	movq	128(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB1_82
# BB#74:                                # %for.cond.preheader.i.66
	movl	136(%r13), %eax
	testl	%eax, %eax
	jle	.LBB1_81
# BB#75:                                # %for.body.lr.ph.i.68
	xorl	%ebx, %ebx
	movl	$64, %ebp
	jmp	.LBB1_76
	.align	16, 0x90
.LBB1_79:                               # %if.end.for.body_crit_edge.i.81
                                        #   in Loop: Header=BB1_76 Depth=1
	addq	$80, %rbp
	movq	128(%r13), %rsi
.LBB1_76:                               # %for.body.i.72
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -16(%rsi,%rbp)
	jne	.LBB1_78
# BB#77:                                # %if.then.3.i.76
                                        #   in Loop: Header=BB1_76 Depth=1
	movq	-8(%rsi,%rbp), %rax
	movl	(%rsi,%rbp), %edx
	movl	$.L.str.17, %ecx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	*160(%r12)
	movl	136(%r13), %eax
.LBB1_78:                               # %if.end.i.79
                                        #   in Loop: Header=BB1_76 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	.LBB1_79
# BB#80:                                # %for.cond.for.end_crit_edge.i.84
	movq	128(%r13), %rsi
.LBB1_81:                               # %for.end.i.86
	movl	$.L.str.18, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	8(%r14), %r12
	movq	88(%rsp), %r13
.LBB1_82:                               # %free_code_map.exit87
	movq	32(%r13), %rsi
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	8(%r14), %rdi
	movq	88(%rsp), %rsi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
.LBB1_83:                               # %cleanup
	movl	%r15d, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_41:
	movl	$-15, %r15d
	jmp	.LBB1_16
.LBB1_44:                               # %for.body.lr.ph.i
	movq	88(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	8(%r14), %rbp
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
.LBB1_45:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %edx
	movq	%rbp, %rdi
	leaq	128(%rsp), %rsi
	leaq	248(%rsp), %rcx
	callq	array_get
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#46:                                # %cleanup.i
                                        #   in Loop: Header=BB1_45 Depth=1
	movl	252(%rsp), %eax
	testb	$1, %al
	jne	.LBB1_47
# BB#48:                                # %for.inc.i
                                        #   in Loop: Header=BB1_45 Depth=1
	addl	%eax, %r13d
	incl	%r12d
	cmpl	132(%rsp), %r12d
	jb	.LBB1_45
# BB#49:                                # %for.end.i
	testl	%r13d, %r13d
	je	.LBB1_50
# BB#51:                                # %if.end.18.i
	shrl	%r13d
	movl	$12, %edx
	movl	$.L.str.14, %ecx
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	*88(%rbp)
	movq	%rax, %r12
	movl	$-25, %r15d
	testq	%r12, %r12
	je	.LBB1_16
# BB#52:                                # %if.end.23.i
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%r12, 112(%rax)
	movl	%r13d, 120(%rax)
	cmpl	$0, 132(%rsp)
	je	.LBB1_64
# BB#53:                                # %for.body.32.lr.ph.i
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
.LBB1_54:                               # %for.body.32.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_55 Depth 2
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	128(%rsp), %rsi
	leaq	248(%rsp), %rcx
	callq	array_get
	movl	252(%rsp), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	$0, %r15d
	je	.LBB1_63
.LBB1_55:                               # %for.body.40.i
                                        #   Parent Loop BB1_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %edx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	leaq	248(%rsp), %r13
	movq	%r13, %rsi
	leaq	232(%rsp), %rcx
	callq	array_get
	leal	1(%r15), %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	leaq	216(%rsp), %rcx
	callq	array_get
	movzbl	233(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB1_61
# BB#56:                                # %lor.lhs.false.i.54
                                        #   in Loop: Header=BB1_55 Depth=2
	movzbl	217(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB1_61
# BB#57:                                # %lor.lhs.false.57.i
                                        #   in Loop: Header=BB1_55 Depth=2
	movslq	236(%rsp), %r13
	cmpq	$4, %r13
	jg	.LBB1_61
# BB#58:                                # %lor.lhs.false.57.i
                                        #   in Loop: Header=BB1_55 Depth=2
	testl	%r13d, %r13d
	je	.LBB1_61
# BB#59:                                # %lor.lhs.false.57.i
                                        #   in Loop: Header=BB1_55 Depth=2
	cmpl	%r13d, 220(%rsp)
	jne	.LBB1_61
# BB#60:                                # %lor.lhs.false.70.i
                                        #   in Loop: Header=BB1_55 Depth=2
	movq	240(%rsp), %rbp
	movq	224(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcmp
	testl	%eax, %eax
	jg	.LBB1_61
# BB#62:                                # %for.inc.94.i
                                        #   in Loop: Header=BB1_55 Depth=2
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	224(%rsp), %rsi
	leaq	4(%r12), %rdi
	movq	%r13, %rdx
	callq	memcpy
	movl	%r13d, 8(%r12)
	addq	$12, %r12
	addl	$2, %r15d
	cmpl	64(%rsp), %r15d         # 4-byte Folded Reload
	jb	.LBB1_55
.LBB1_63:                               # %for.inc.97.i
                                        #   in Loop: Header=BB1_54 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	cmpl	132(%rsp), %eax
	jb	.LBB1_54
.LBB1_64:                               # %if.end.122
	movq	88(%rsp), %rdx
	movq	%rdx, %rdi
	subq	$-128, %rdi
	movq	8(%r14), %rcx
	leaq	112(%rsp), %rsi
	callq	acquire_code_map
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#65:                                # %if.end.129
	movq	88(%rsp), %rdx
	leaq	144(%rdx), %rdi
	movq	8(%r14), %rcx
	leaq	96(%rsp), %rsi
	callq	acquire_code_map
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#66:                                # %if.end.136
	movq	88(%rsp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	movl	8(%rax), %esi
	movl	$.L.str.10, %edx
	movl	$7, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB1_69
# BB#67:                                # %land.lhs.true
	movq	88(%rsp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movl	24(%rax), %esi
	movl	$.L.str.11, %edx
	movl	$7, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB1_69
# BB#68:                                # %if.then.149
	movq	88(%rsp), %rax
	movl	$1, 76(%rax)
.LBB1_69:                               # %if.end.150
	movq	88(%rsp), %rax
	movq	$zfont_mark_glyph_name, 160(%rax)
	movq	88(%rsp), %rax
	movq	$0, 168(%rax)
	movq	88(%rsp), %rax
	movq	$zfcmap_glyph_name, 88(%rax)
	movq	88(%rsp), %rax
	movq	$0, 96(%rax)
	movq	88(%rsp), %rax
	movq	%rax, 80(%rsp)
	movl	56(%r14), %eax
	orl	76(%r14), %eax
	orl	$96, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, 72(%rsp)
	leaq	368(%r14), %rcx
	leaq	72(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	dict_put_string
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#70:                                # %if.end.162
	movq	%r14, %rdi
	callq	zreadonly
	movl	%eax, %r15d
	jmp	.LBB1_83
.LBB1_47:
	movl	$-15, %r15d
	jmp	.LBB1_16
.LBB1_50:
	movl	$-15, %r15d
	jmp	.LBB1_16
.LBB1_61:                               # %cleanup.89.thread.i
	movl	$-15, %r15d
	jmp	.LBB1_16
.Lfunc_end1:
	.size	zbuildcmap, .Lfunc_end1-zbuildcmap
	.cfi_endproc

	.align	16, 0x90
	.type	acquire_code_map,@function
acquire_code_map:                       # @acquire_code_map
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
	movq	%rcx, %rbx
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB2_1
# BB#2:                                 # %for.cond.preheader
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	cmpl	$0, 4(%rsi)
	je	.LBB2_9
# BB#3:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	leaq	136(%rsp), %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rsi, %r15
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	array_get
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB2_60
# BB#5:                                 # %cleanup
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	140(%rsp), %eax
	movq	%rax, %rcx
	movl	$3435973837, %edx       # imm = 0xCCCCCCCD
	imulq	%rdx, %rcx
	shrq	$34, %rcx
	leal	(%rcx,%rcx,4), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_6
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	leal	(%r14,%rax), %r14d
	incq	%rbp
	movq	%r15, %rsi
	movl	4(%rsi), %eax
	cmpq	%rax, %rbp
	jl	.LBB2_4
# BB#8:                                 # %for.cond.for.end_crit_edge
	movl	%r14d, %eax
	movl	$3435973837, %r14d      # imm = 0xCCCCCCCD
	imulq	%rax, %r14
	shrq	$34, %r14
.LBB2_9:                                # %for.end
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	$st_cmap_lookup_range_element, %edx
	movl	$.L.str.15, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*104(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB2_60
# BB#10:                                # %if.end.20
	movl	%r14d, %eax
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rdx
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	%r14d, 8(%rax)
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 4(%rax)
	je	.LBB2_60
# BB#11:                                # %for.body.30.lr.ph
	movl	$-15, %r12d
	xorl	%ecx, %ecx
	leaq	136(%rsp), %r15
.LBB2_12:                               # %for.body.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_53 Depth 4
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rcx, %rdx
	movq	%r15, %rcx
	callq	array_get
	movl	140(%rsp), %r13d
	testl	%r13d, %r13d
	movl	$0, %r14d
	jne	.LBB2_15
	jmp	.LBB2_13
.LBB2_41:                               #   in Loop: Header=BB2_15 Depth=2
	movl	$-15, %r12d
	jmp	.LBB2_58
.LBB2_43:                               #   in Loop: Header=BB2_15 Depth=2
	movl	$-15, %r12d
	jmp	.LBB2_58
.LBB2_45:                               #   in Loop: Header=BB2_15 Depth=2
	movl	$-25, %r12d
	xorl	%ecx, %ecx
	jmp	.LBB2_58
.LBB2_57:                               # %do.end.320
                                        #   in Loop: Header=BB2_15 Depth=2
	movl	%eax, 72(%rbp)
	addq	$80, %rbp
	movb	$1, %cl
	jmp	.LBB2_58
	.align	16, 0x90
.LBB2_15:                               # %for.body.37
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_53 Depth 4
	movl	%r14d, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	120(%rsp), %rcx
	callq	array_get
	leal	1(%r14), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	104(%rsp), %rcx
	callq	array_get
	leal	2(%r14), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	88(%rsp), %rcx
	callq	array_get
	leal	3(%r14), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	72(%rsp), %rcx
	callq	array_get
	leal	4(%r14), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	56(%rsp), %rcx
	callq	array_get
	movzbl	121(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB2_16
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	105(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB2_16
# BB#18:                                # %lor.lhs.false.63
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	89(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB2_16
# BB#19:                                # %lor.lhs.false.70
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	73(%rsp), %eax
	cmpl	$18, %eax
	je	.LBB2_21
# BB#20:                                # %lor.lhs.false.77
                                        #   in Loop: Header=BB2_15 Depth=2
	movzwl	72(%rsp), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB2_16
.LBB2_21:                               # %lor.lhs.false.84
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	57(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB2_16
# BB#22:                                # %if.end.92
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpl	$4, 108(%rsp)
	jne	.LBB2_23
# BB#24:                                # %lor.lhs.false.97
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	112(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	124(%rsp), %eax
	movl	$4, %esi
	subl	%eax, %esi
	cmpl	%esi, %edx
	ja	.LBB2_23
# BB#25:                                # %lor.lhs.false.104
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	1(%rcx), %edx
	cmpl	$1, %edx
	ja	.LBB2_23
# BB#26:                                # %lor.lhs.false.111
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	2(%rcx), %edx
	cmpl	$3, %edx
	ja	.LBB2_23
# BB#27:                                # %lor.lhs.false.118
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpb	$0, 3(%rcx)
	je	.LBB2_23
# BB#28:                                # %if.end.126
                                        #   in Loop: Header=BB2_15 Depth=2
	movslq	%eax, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%rbp)
	movq	112(%rsp), %rcx
	movzbl	(%rcx), %ecx
	movl	%ecx, 20(%rbp)
	movl	%eax, 16(%rbp)
	leaq	12(%rbp), %rdi
	movq	128(%rsp), %rsi
	callq	memcpy
	movq	112(%rsp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, 24(%rbp)
	movl	20(%rbp), %eax
	testl	%eax, %eax
	je	.LBB2_29
# BB#32:                                # %if.else
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpb	$1, %cl
	movl	$1, %esi
	sbbl	$-1, %esi
	imull	%eax, %esi
	movl	92(%rsp), %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	testl	%edx, %edx
	jne	.LBB2_23
# BB#33:                                # %cleanup.166.thread
                                        #   in Loop: Header=BB2_15 Depth=2
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	movl	%eax, %r8d
	movl	%r8d, 8(%rbp)
	jmp	.LBB2_34
.LBB2_29:                               # %if.then.145
                                        #   in Loop: Header=BB2_15 Depth=2
	xorl	%ecx, %ecx
	cmpl	$0, 92(%rsp)
	je	.LBB2_31
# BB#30:                                #   in Loop: Header=BB2_15 Depth=2
	movl	$-15, %r12d
	jmp	.LBB2_58
.LBB2_31:                               # %if.end.151
                                        #   in Loop: Header=BB2_15 Depth=2
	movl	$1, 8(%rbp)
	movl	$1, %r8d
.LBB2_34:                               # %if.end.169
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	96(%rsp), %rax
	movq	%rax, 32(%rbp)
	movl	%ecx, 40(%rbp)
	movq	112(%rsp), %rcx
	movzbl	2(%rcx), %eax
	movl	%eax, 48(%rbp)
	movzbl	3(%rcx), %esi
	movl	%esi, 52(%rbp)
	movzbl	73(%rsp), %ecx
	movzbl	%al, %eax
	cmpl	$18, %ecx
	jne	.LBB2_39
# BB#35:                                # %if.then.189
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpl	$1, %eax
	je	.LBB2_23
# BB#36:                                # %if.end.194
                                        #   in Loop: Header=BB2_15 Depth=2
	movl	76(%rsp), %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r8d
	testl	%edx, %edx
	jne	.LBB2_23
# BB#37:                                # %lor.lhs.false.201
                                        #   in Loop: Header=BB2_15 Depth=2
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r8d
	cmpl	%esi, %eax
	jne	.LBB2_23
# BB#38:                                # %if.end.210
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	80(%rsp), %rax
	movq	%rax, 56(%rbp)
	movl	%ecx, 64(%rbp)
	jmp	.LBB2_55
.LBB2_39:                               # %if.else.218
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpl	$1, %eax
	jne	.LBB2_23
# BB#40:                                # %lor.lhs.false.225
                                        #   in Loop: Header=BB2_15 Depth=2
	xorl	%ecx, %ecx
	cmpl	$8, %esi
	ja	.LBB2_41
# BB#42:                                # %lor.lhs.false.225
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpl	%r8d, 76(%rsp)
	jne	.LBB2_43
# BB#44:                                # %if.end.237
                                        #   in Loop: Header=BB2_15 Depth=2
	imull	%esi, %r8d
	movl	%r8d, (%rsp)            # 4-byte Spill
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	movl	%r8d, %esi
	callq	*136(%rbx)
	movq	%rax, 56(%rbp)
	testq	%rax, %rax
	je	.LBB2_45
# BB#46:                                # %if.end.247
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	(%rsp), %eax            # 4-byte Reload
	movl	%eax, 64(%rbp)
	cmpl	$0, 8(%rbp)
	movl	$0, %edx
	jle	.LBB2_55
.LBB2_47:                               # %for.body.257
                                        #   Parent Loop BB2_12 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_53 Depth 4
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	leaq	72(%rsp), %rsi
	leaq	40(%rsp), %rcx
	callq	array_get
	movzbl	41(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB2_23
# BB#48:                                # %if.end.268
                                        #   in Loop: Header=BB2_47 Depth=3
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	40(%rsp), %rsi
	callq	names_index
	movl	%eax, %r9d
	movl	52(%rbp), %esi
	cmpq	$7, %rsi
	ja	.LBB2_50
# BB#49:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_47 Depth=3
	leal	(,%rsi,8), %ecx
	movq	%r9, %rdx
	shrq	%cl, %rdx
	testq	%rdx, %rdx
	jne	.LBB2_23
.LBB2_50:                               # %if.end.280
                                        #   in Loop: Header=BB2_47 Depth=3
	testl	%esi, %esi
	movq	8(%rsp), %r10           # 8-byte Reload
	jle	.LBB2_51
# BB#52:                                # %for.body.285.lr.ph
                                        #   in Loop: Header=BB2_47 Depth=3
	movl	$4294967288, %r8d       # imm = 0xFFFFFFF8
	leaq	(%r8,%rsi,8), %rax
	leal	1(%rsi), %esi
	movq	(%rsp), %rdx            # 8-byte Reload
.LBB2_53:                               # %for.body.285
                                        #   Parent Loop BB2_12 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, %ecx
	andl	%r8d, %ecx
	movq	%r9, %rdi
	shrq	%cl, %rdi
	movb	%dil, (%r10)
	incq	%r10
	addq	$-8, %rax
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB2_53
	jmp	.LBB2_54
.LBB2_51:                               #   in Loop: Header=BB2_47 Depth=3
	movq	(%rsp), %rdx            # 8-byte Reload
.LBB2_54:                               # %for.inc.296
                                        #   in Loop: Header=BB2_47 Depth=3
	movq	%r10, 8(%rsp)           # 8-byte Spill
	incq	%rdx
	movslq	8(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB2_47
.LBB2_55:                               # %do.body.305
                                        #   in Loop: Header=BB2_15 Depth=2
	movzbl	57(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB2_16
# BB#56:                                # %do.end
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	64(%rsp), %rax
	cmpq	$255, %rax
	jbe	.LBB2_57
.LBB2_23:                               #   in Loop: Header=BB2_15 Depth=2
	xorl	%ecx, %ecx
	movl	$-15, %r12d
	jmp	.LBB2_58
	.align	16, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_15 Depth=2
	xorl	%ecx, %ecx
	movl	$-20, %r12d
.LBB2_58:                               # %cleanup.325
                                        #   in Loop: Header=BB2_15 Depth=2
	testb	%cl, %cl
	je	.LBB2_59
# BB#14:                                # %for.cond.34
                                        #   in Loop: Header=BB2_15 Depth=2
	addl	$5, %r14d
	cmpl	%r13d, %r14d
	jb	.LBB2_15
.LBB2_13:                               # %for.inc.338
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %eax
	xorl	%r13d, %r13d
	cmpq	%rax, %rcx
	jl	.LBB2_12
	jmp	.LBB2_60
.LBB2_1:
	movl	$-15, %r13d
	jmp	.LBB2_60
.LBB2_59:
	movl	%r12d, %r13d
	jmp	.LBB2_60
.LBB2_6:
	movl	$-15, %r13d
.LBB2_60:                               # %cleanup.341
	movl	%r13d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	acquire_code_map, .Lfunc_end2-acquire_code_map
	.cfi_endproc

	.align	16, 0x90
	.type	zfcmap_glyph_name,@function
zfcmap_glyph_name:                      # @zfcmap_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 64
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %r15
	movq	%r15, %rdx
	callq	names_index_ref
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	movq	%r15, %rsi
	callq	names_string_ref
	movq	8(%rsp), %rax
	movq	%rax, (%r14)
	movl	4(%rsp), %eax
	movl	%eax, 8(%r14)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	zfcmap_glyph_name, .Lfunc_end3-zfcmap_glyph_name
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CMap"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"CodeMap"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.buildcmap"
	.size	.L.str.2, 12

	.type	zfcmap_op_defs,@object  # @zfcmap_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfcmap_op_defs
	.align	16
zfcmap_op_defs:
	.quad	.L.str.2
	.quad	zbuildcmap
	.zero	16
	.size	zfcmap_op_defs, 32

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"CIDSystemInfo"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CMapName"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	".CodeMapData"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"CMapType"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CMapVersion"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"WMode"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"UIDOffset"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Artifex"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Unicode"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"zbuildcmap(CIDSystemInfo)"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"zbuildcmap(cmap)"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"acquire_code_ranges"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"acquire_code_map(lookup ranges)"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"acquire_code_map(values)"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"free_code_map(values)"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"free_code_map(map)"
	.size	.L.str.18, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
