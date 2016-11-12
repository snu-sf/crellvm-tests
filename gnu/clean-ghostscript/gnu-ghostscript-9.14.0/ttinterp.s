	.text
	.file	"ttinterp.bc"
	.globl	RunIns
	.align	16, 0x90
	.type	RunIns,@function
RunIns:                                 # @RunIns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, 552(%rbx)
	movl	484(%rbx), %eax
	cmpl	488(%rbx), %eax
	sete	%cl
	movl	$Read_CVT, %edx
	movl	$Read_CVT_Stretched, %eax
	cmoveq	%rdx, %rax
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	psllq	$63, %xmm0
	psrad	$31, %xmm0
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	movl	$Move_CVT_Stretched, %ecx
	movd	%rcx, %xmm1
	movl	$Write_CVT_Stretched, %ecx
	movd	%rcx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	movl	$Move_CVT, %ecx
	movd	%rcx, %xmm1
	movl	$Write_CVT, %ecx
	movd	%rcx, %xmm3
	punpcklqdq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	pand	%xmm0, %xmm3
	pandn	%xmm2, %xmm0
	por	%xmm3, %xmm0
	movq	%rax, 1160(%rbx)
	movdqu	%xmm0, 1168(%rbx)
	callq	Compute_Funcs
	movl	956(%rbx), %eax
	movzbl	%al, %ecx
	movzbl	%al, %eax
	cmpl	$7, %ecx
	ja	.LBB0_10
# BB#1:                                 # %entry
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_6:                                # %sw.bb.7.i
	movq	$Round_To_Half_Grid, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_3:                                # %sw.bb.1.i
	movq	$Round_To_Grid, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_7:                                # %sw.bb.9.i
	movq	$Round_To_Double_Grid, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_5:                                # %sw.bb.5.i
	movq	$Round_Down_To_Grid, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_4:                                # %sw.bb.3.i
	movq	$Round_Up_To_Grid, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_2:                                # %sw.bb.i
	movq	$Round_None, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_8:                                # %sw.bb.11.i
	movq	$Round_Super, 1120(%rbx)
	jmp	.LBB0_10
.LBB0_9:                                # %sw.bb.13.i
	movq	$Round_Super_45, 1120(%rbx)
.LBB0_10:                               # %Compute_Round.exit
	leaq	1192(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB0_11
# BB#53:                                # %if.then.7
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.LBB0_11:                               # %do.body.preheader
	movl	24(%rbx), %ecx
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_26:                               # %if.end.17
                                        #   in Loop: Header=BB0_12 Depth=1
	leaq	(%rax,%rax), %rdx
	orq	$1, %rdx
	movzbl	Pop_Push_Count(%rdx), %edx
	addl	%ecx, %edx
	movl	%edx, 452(%rbx)
	cmpl	432(%rbx), %edx
	jg	.LBB0_27
# BB#28:                                # %if.end.32
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, 40(%rbx)
	movl	$0, 8(%rbx)
	shlq	$4, %rax
	movq	440(%rbx), %rdx
	leaq	(%rdx,%rcx,8), %rsi
	movq	%rbx, %rdi
	callq	*Instruct_Dispatch+8(%rax)
	movl	8(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB0_29
# BB#46:                                # %if.end.75
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	452(%rbx), %eax
	movl	%eax, 436(%rbx)
	cmpl	$0, 40(%rbx)
	je	.LBB0_47
# BB#48:                                # %if.then.80
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	24(%rbx), %ecx
	addl	36(%rbx), %ecx
	movl	%ecx, 24(%rbx)
	jmp	.LBB0_49
	.align	16, 0x90
.LBB0_29:                               # %if.end.32
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_45
# BB#30:                                # %while.cond.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	movslq	56(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB0_44
# BB#31:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	64(%rbx), %r8
	leaq	12(%r8), %rsi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_32:                               # %while.body
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, (%rsi)
	je	.LBB0_43
# BB#33:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_32 Depth=2
	movzbl	-4(%rsi), %edi
	movzbl	32(%rbx), %eax
	cmpl	%edi, %eax
	je	.LBB0_34
.LBB0_43:                               # %if.else.71
                                        #   in Loop: Header=BB0_32 Depth=2
	incq	%rdx
	addq	$16, %rsi
	cmpq	%rcx, %rdx
	jl	.LBB0_32
	jmp	.LBB0_44
.LBB0_47:                               # %if.end.75._LSuiteLabel_crit_edge
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	24(%rbx), %ecx
	jmp	.LBB0_49
.LBB0_34:                               # %if.then.55
                                        #   in Loop: Header=BB0_12 Depth=1
	movslq	348(%rbx), %rsi
	cmpl	352(%rbx), %esi
	jge	.LBB0_35
# BB#36:                                # %if.end.60
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	360(%rbx), %rax
	movl	12(%rbx), %ecx
	shlq	$4, %rsi
	movl	%ecx, (%rax,%rsi)
	movl	24(%rbx), %ecx
	incl	%ecx
	movl	%ecx, 4(%rax,%rsi)
	movl	$1, 8(%rax,%rsi)
	shlq	$4, %rdx
	movl	4(%r8,%rdx), %ecx
	movl	%ecx, 12(%rax,%rsi)
	movl	(%r8,%rdx), %eax
	leal	-1(%rax), %edx
	cmpl	$3, %edx
	jae	.LBB0_37
# BB#38:                                # %if.end.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movslq	%edx, %rsi
	shlq	$4, %rsi
	movq	368(%rbx,%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB0_39
# BB#40:                                # %if.end.5.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	376(%rbx,%rsi), %esi
	cmpl	%ecx, %esi
	jl	.LBB0_41
# BB#42:                                # %Ins_Goto_CodeRange.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	%rdx, 16(%rbx)
	movl	%esi, 28(%rbx)
	movl	%ecx, 24(%rbx)
	movl	%eax, 12(%rbx)
.LBB0_49:                               # %_LSuiteLabel
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	28(%rbx), %ecx
	jge	.LBB0_50
# BB#51:                                # %do.cond
                                        #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 912(%rbx)
	je	.LBB0_12
	jmp	.LBB0_52
.LBB0_14:                               # %do.body
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$64, %eax
	jne	.LBB0_15
# BB#18:                                # %sw.bb.i.77
                                        #   in Loop: Header=BB0_12 Depth=1
	incq	%rcx
	cmpl	28(%rbx), %ecx
	jge	.LBB0_24
# BB#19:                                # %if.end.i.78
                                        #   in Loop: Header=BB0_12 Depth=1
	movzbl	(%rdx,%rcx), %ecx
	addl	$2, %ecx
	movl	%ecx, 36(%rbx)
	jmp	.LBB0_24
.LBB0_15:                               # %do.body
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$65, %eax
	jne	.LBB0_23
# BB#16:                                # %sw.bb.11.i.79
                                        #   in Loop: Header=BB0_12 Depth=1
	incq	%rcx
	cmpl	28(%rbx), %ecx
	jge	.LBB0_24
# BB#17:                                # %if.end.18.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movzbl	(%rdx,%rcx), %ecx
	leal	2(%rcx,%rcx), %ecx
	movl	%ecx, 36(%rbx)
	jmp	.LBB0_24
.LBB0_23:                               # %sw.default.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, 36(%rbx)
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_12:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	movslq	%ecx, %rcx
	movq	16(%rbx), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, 32(%rbx)
	cmpl	$183, %eax
	jg	.LBB0_21
# BB#13:                                # %do.body
                                        #   in Loop: Header=BB0_12 Depth=1
	leal	-176(%rax), %esi
	cmpl	$8, %esi
	jae	.LBB0_14
# BB#20:                                # %sw.bb.27.i
                                        #   in Loop: Header=BB0_12 Depth=1
	leal	-174(%rax), %ecx
	movl	%ecx, 36(%rbx)
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_21:                               # %do.body
                                        #   in Loop: Header=BB0_12 Depth=1
	leal	-184(%rax), %ecx
	cmpl	$8, %ecx
	jae	.LBB0_23
# BB#22:                                # %sw.bb.32.i
                                        #   in Loop: Header=BB0_12 Depth=1
	leal	-365(%rax,%rax), %ecx
	movl	%ecx, 36(%rbx)
.LBB0_24:                               # %Calc_Length.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	movslq	436(%rbx), %rcx
	movzbl	Pop_Push_Count(%rax,%rax), %edx
	subq	%rdx, %rcx
	movl	%ecx, 448(%rbx)
	testl	%ecx, %ecx
	jns	.LBB0_26
# BB#25:                                # %if.then.15
	movl	$1025, 8(%rbx)          # imm = 0x401
	movl	$1025, %eax             # imm = 0x401
	popq	%rbx
	retq
.LBB0_44:                               # %while.end
	movl	$1024, 8(%rbx)          # imm = 0x400
	movl	$1024, %eax             # imm = 0x400
	popq	%rbx
	retq
.LBB0_27:                               # %if.then.30
	movl	$1026, 8(%rbx)          # imm = 0x402
	movl	$1026, %eax             # imm = 0x402
	popq	%rbx
	retq
.LBB0_45:                               # %sw.default
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.LBB0_50:                               # %if.then.87
	xorl	%eax, %eax
	cmpl	$0, 348(%rbx)
	jle	.LBB0_52
.LBB0_41:                               # %if.then.7.i
	movl	$1027, 8(%rbx)          # imm = 0x403
	movl	$1027, %eax             # imm = 0x403
	popq	%rbx
	retq
.LBB0_52:                               # %_LExit
	popq	%rbx
	retq
.LBB0_35:                               # %if.then.58
	movl	$1032, 8(%rbx)          # imm = 0x408
	movl	$1032, %eax             # imm = 0x408
	popq	%rbx
	retq
.LBB0_37:                               # %if.then.i
	movl	$1028, 8(%rbx)          # imm = 0x404
	movl	$1028, %eax             # imm = 0x404
	popq	%rbx
	retq
.LBB0_39:                               # %if.then.3.i
	movl	$1039, 8(%rbx)          # imm = 0x40F
	movl	$1039, %eax             # imm = 0x40F
	popq	%rbx
	retq
.Lfunc_end0:
	.size	RunIns, .Lfunc_end0-RunIns
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_6
	.quad	.LBB0_3
	.quad	.LBB0_7
	.quad	.LBB0_5
	.quad	.LBB0_4
	.quad	.LBB0_2
	.quad	.LBB0_8
	.quad	.LBB0_9

	.text
	.align	16, 0x90
	.type	Read_CVT_Stretched,@function
Read_CVT_Stretched:                     # @Read_CVT_Stretched
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movslq	%esi, %rax
	movq	1104(%rdi), %rcx
	movl	(%rcx,%rax,8), %ebx
	callq	Current_Ratio
	movl	$65536, %edx            # imm = 0x10000
	movl	%ebx, %edi
	movl	%eax, %esi
	popq	%rbx
	jmp	MulDiv_Round            # TAILCALL
.Lfunc_end1:
	.size	Read_CVT_Stretched, .Lfunc_end1-Read_CVT_Stretched
	.cfi_endproc

	.align	16, 0x90
	.type	Write_CVT_Stretched,@function
Write_CVT_Stretched:                    # @Write_CVT_Stretched
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movslq	%esi, %r14
	callq	Current_Ratio
	movl	$65536, %esi            # imm = 0x10000
	movl	%ebp, %edi
	movl	%eax, %edx
	callq	MulDiv_Round
	cltq
	movq	1104(%rbx), %rcx
	movq	%rax, (%rcx,%r14,8)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Write_CVT_Stretched, .Lfunc_end2-Write_CVT_Stretched
	.cfi_endproc

	.align	16, 0x90
	.type	Move_CVT_Stretched,@function
Move_CVT_Stretched:                     # @Move_CVT_Stretched
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movslq	%esi, %r14
	callq	Current_Ratio
	movl	$65536, %esi            # imm = 0x10000
	movl	%ebp, %edi
	movl	%eax, %edx
	callq	MulDiv_Round
	cltq
	movq	1104(%rbx), %rcx
	addq	%rax, (%rcx,%r14,8)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Move_CVT_Stretched, .Lfunc_end3-Move_CVT_Stretched
	.cfi_endproc

	.align	16, 0x90
	.type	Read_CVT,@function
Read_CVT:                               # @Read_CVT
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	1104(%rdi), %rcx
	movl	(%rcx,%rax,8), %eax
	retq
.Lfunc_end4:
	.size	Read_CVT, .Lfunc_end4-Read_CVT
	.cfi_endproc

	.align	16, 0x90
	.type	Write_CVT,@function
Write_CVT:                              # @Write_CVT
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	1104(%rdi), %rcx
	movslq	%edx, %rdx
	movq	%rdx, (%rcx,%rax,8)
	retq
.Lfunc_end5:
	.size	Write_CVT, .Lfunc_end5-Write_CVT
	.cfi_endproc

	.align	16, 0x90
	.type	Move_CVT,@function
Move_CVT:                               # @Move_CVT
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	1104(%rdi), %rcx
	movslq	%edx, %rdx
	addq	%rdx, (%rcx,%rax,8)
	retq
.Lfunc_end6:
	.size	Move_CVT, .Lfunc_end6-Move_CVT
	.cfi_endproc

	.align	16, 0x90
	.type	Compute_Funcs,@function
Compute_Funcs:                          # @Compute_Funcs
	.cfi_startproc
# BB#0:                                 # %entry
	movswq	940(%rdi), %r8
	cmpq	$16384, %r8             # imm = 0x4000
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$Project_x, 1144(%rdi)
	movswq	936(%rdi), %rdx
	movq	%rdx, %rax
	shlq	$16, %rax
	movq	%rax, 1112(%rdi)
	jmp	.LBB7_5
.LBB7_2:                                # %if.else
	movswq	942(%rdi), %rsi
	cmpq	$16384, %rsi            # imm = 0x4000
	movswq	938(%rdi), %rax
	jne	.LBB7_4
# BB#3:                                 # %if.then.10
	movq	$Project_y, 1144(%rdi)
	shlq	$16, %rax
	movq	%rax, 1112(%rdi)
	movzwl	936(%rdi), %edx
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.18
	movq	$Direct_Move, 1152(%rdi)
	movq	$Free_Project, 1144(%rdi)
	movswq	936(%rdi), %rdx
	movq	%rdx, %rcx
	imulq	%r8, %rcx
	imulq	%rax, %rsi
	addq	%rcx, %rsi
	shlq	$2, %rsi
	movq	%rsi, 1112(%rdi)
	movq	%rsi, %rax
.LBB7_5:                                # %if.end.41
	movl	$0, 624(%rdi)
	movzwl	%dx, %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB7_7
# BB#6:                                 # %if.then.48
	movq	$Project_x, 1128(%rdi)
	jmp	.LBB7_10
.LBB7_7:                                # %if.else.49
	movzwl	938(%rdi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB7_9
# BB#8:                                 # %if.then.56
	movq	$Project_y, 1128(%rdi)
	jmp	.LBB7_10
.LBB7_9:                                # %if.else.58
	movq	$Project, 1128(%rdi)
.LBB7_10:                               # %if.end.61
	movzwl	932(%rdi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB7_12
# BB#11:                                # %if.then.67
	movq	$Project_x, 1136(%rdi)
	jmp	.LBB7_15
.LBB7_12:                               # %if.else.68
	movzwl	934(%rdi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB7_14
# BB#13:                                # %if.then.75
	movq	$Project_y, 1136(%rdi)
	jmp	.LBB7_15
.LBB7_14:                               # %if.else.77
	movq	$Dual_Project, 1136(%rdi)
.LBB7_15:                               # %if.end.80
	movq	$Direct_Move, 1152(%rdi)
	cmpq	$1073741824, %rax       # imm = 0x40000000
	jne	.LBB7_20
# BB#16:                                # %if.then.85
	movzwl	%r8w, %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB7_18
# BB#17:                                # %if.then.92
	movq	$Direct_Move_X, 1152(%rdi)
	jmp	.LBB7_20
.LBB7_18:                               # %if.else.94
	movzwl	942(%rdi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jne	.LBB7_20
# BB#19:                                # %if.then.101
	movq	$Direct_Move_Y, 1152(%rdi)
.LBB7_20:                               # %if.end.105
	movq	%rax, %rcx
	negq	%rcx
	cmovlq	%rax, %rcx
	cmpq	$67108863, %rcx         # imm = 0x3FFFFFF
	jg	.LBB7_22
# BB#21:                                # %if.then.113
	movq	$1073741824, 1112(%rdi) # imm = 0x40000000
.LBB7_22:                               # %if.end.115
	movq	$0, 552(%rdi)
	retq
.Lfunc_end7:
	.size	Compute_Funcs, .Lfunc_end7-Compute_Funcs
	.cfi_endproc

	.align	16, 0x90
	.type	Current_Ratio,@function
Current_Ratio:                          # @Current_Ratio
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	552(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB8_7
# BB#1:                                 # %if.end
	cmpw	$0, 938(%rbx)
	je	.LBB8_2
# BB#3:                                 # %if.else
	movswl	936(%rbx), %edi
	testl	%edi, %edi
	je	.LBB8_4
# BB#5:                                 # %if.else.17
	movl	528(%rbx), %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	MulDiv_Round
	movl	%eax, %ebp
	movswl	938(%rbx), %edi
	movl	536(%rbx), %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	MulDiv_Round
	movslq	%ebp, %rcx
	imulq	%rcx, %rcx
	movslq	%eax, %rdi
	imulq	%rdi, %rdi
	addq	%rcx, %rdi
	callq	Sqrt64
	cltq
	jmp	.LBB8_6
.LBB8_2:                                # %if.then.4
	movq	528(%rbx), %rax
	jmp	.LBB8_6
.LBB8_4:                                # %if.then.13
	movq	536(%rbx), %rax
.LBB8_6:                                # %return
	movq	%rax, 552(%rbx)
.LBB8_7:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Current_Ratio, .Lfunc_end8-Current_Ratio
	.cfi_endproc

	.align	16, 0x90
	.type	Project_x,@function
Project_x:                              # @Project_x
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	retq
.Lfunc_end9:
	.size	Project_x, .Lfunc_end9-Project_x
	.cfi_endproc

	.align	16, 0x90
	.type	Project_y,@function
Project_y:                              # @Project_y
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	retq
.Lfunc_end10:
	.size	Project_y, .Lfunc_end10-Project_y
	.cfi_endproc

	.align	16, 0x90
	.type	Direct_Move,@function
Direct_Move:                            # @Direct_Move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movzwl	940(%rbp), %esi
	testl	%esi, %esi
	je	.LBB11_2
# BB#1:                                 # %if.then
	shll	$16, %esi
	movl	1112(%rbp), %edx
	movl	%r15d, %edi
	callq	MulDiv_Round
	movslq	%r14d, %rcx
	movq	24(%rbx), %rdx
	addl	%eax, (%rdx,%rcx,4)
	movq	40(%rbx), %rax
	orb	$2, (%rax,%rcx)
.LBB11_2:                               # %if.end
	movzwl	942(%rbp), %esi
	testl	%esi, %esi
	je	.LBB11_4
# BB#3:                                 # %if.then.14
	shll	$16, %esi
	movl	1112(%rbp), %edx
	movl	%r15d, %edi
	callq	MulDiv_Round
	movslq	%r14d, %rcx
	movq	32(%rbx), %rdx
	addl	%eax, (%rdx,%rcx,4)
	movq	40(%rbx), %rax
	orb	$4, (%rax,%rcx)
.LBB11_4:                               # %if.end.30
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Direct_Move, .Lfunc_end11-Direct_Move
	.cfi_endproc

	.align	16, 0x90
	.type	Free_Project,@function
Free_Project:                           # @Free_Project
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 16
	addq	$1192, %rdi             # imm = 0x4A8
	andq	$-8, %rdi
	movl	$32, %esi
	callq	longjmp
.Lfunc_end12:
	.size	Free_Project, .Lfunc_end12-Free_Project
	.cfi_endproc

	.align	16, 0x90
	.type	Project,@function
Project:                                # @Project
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 16
	addq	$1192, %rdi             # imm = 0x4A8
	andq	$-8, %rdi
	movl	$32, %esi
	callq	longjmp
.Lfunc_end13:
	.size	Project, .Lfunc_end13-Project
	.cfi_endproc

	.align	16, 0x90
	.type	Dual_Project,@function
Dual_Project:                           # @Dual_Project
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 16
	addq	$1192, %rdi             # imm = 0x4A8
	andq	$-8, %rdi
	movl	$32, %esi
	callq	longjmp
.Lfunc_end14:
	.size	Dual_Project, .Lfunc_end14-Dual_Project
	.cfi_endproc

	.align	16, 0x90
	.type	Direct_Move_X,@function
Direct_Move_X:                          # @Direct_Move_X
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edx, %rax
	movq	24(%rsi), %rdx
	addl	%ecx, (%rdx,%rax,4)
	movq	40(%rsi), %rcx
	orb	$2, (%rcx,%rax)
	retq
.Lfunc_end15:
	.size	Direct_Move_X, .Lfunc_end15-Direct_Move_X
	.cfi_endproc

	.align	16, 0x90
	.type	Direct_Move_Y,@function
Direct_Move_Y:                          # @Direct_Move_Y
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edx, %rax
	movq	32(%rsi), %rdx
	addl	%ecx, (%rdx,%rax,4)
	movq	40(%rsi), %rcx
	orb	$4, (%rcx,%rax)
	retq
.Lfunc_end16:
	.size	Direct_Move_Y, .Lfunc_end16-Direct_Move_Y
	.cfi_endproc

	.align	16, 0x90
	.type	Round_None,@function
Round_None:                             # @Round_None
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	js	.LBB17_2
# BB#1:                                 # %if.then
	addl	%esi, %edx
	cmovsl	%eax, %edx
	movl	%edx, %eax
	retq
.LBB17_2:                               # %if.else
	subl	%edx, %esi
	cmovgl	%eax, %esi
	movl	%esi, %edx
	movl	%edx, %eax
	retq
.Lfunc_end17:
	.size	Round_None, .Lfunc_end17-Round_None
	.cfi_endproc

	.align	16, 0x90
	.type	Round_To_Grid,@function
Round_To_Grid:                          # @Round_To_Grid
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	js	.LBB18_2
# BB#1:                                 # %if.then
	leal	32(%rsi,%rdx), %eax
	xorl	%ecx, %ecx
	andl	$-64, %eax
	cmovsl	%ecx, %eax
	retq
.LBB18_2:                               # %if.else
	movl	$32, %eax
	subl	%esi, %eax
	addl	%edx, %eax
	andl	$-64, %eax
	xorl	%ecx, %ecx
	negl	%eax
	cmovgl	%ecx, %eax
	retq
.Lfunc_end18:
	.size	Round_To_Grid, .Lfunc_end18-Round_To_Grid
	.cfi_endproc

	.align	16, 0x90
	.type	Round_Up_To_Grid,@function
Round_Up_To_Grid:                       # @Round_Up_To_Grid
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	js	.LBB19_2
# BB#1:                                 # %if.then
	leal	63(%rsi,%rdx), %eax
	xorl	%ecx, %ecx
	andl	$-64, %eax
	cmovsl	%ecx, %eax
	retq
.LBB19_2:                               # %if.else
	movl	$63, %eax
	subl	%esi, %eax
	addl	%edx, %eax
	andl	$-64, %eax
	xorl	%ecx, %ecx
	negl	%eax
	cmovgl	%ecx, %eax
	retq
.Lfunc_end19:
	.size	Round_Up_To_Grid, .Lfunc_end19-Round_Up_To_Grid
	.cfi_endproc

	.align	16, 0x90
	.type	Round_Down_To_Grid,@function
Round_Down_To_Grid:                     # @Round_Down_To_Grid
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	js	.LBB20_2
# BB#1:                                 # %if.then
	addl	%esi, %edx
	xorl	%eax, %eax
	andl	$-64, %edx
	cmovsl	%eax, %edx
	movl	%edx, %eax
	retq
.LBB20_2:                               # %if.else
	subl	%esi, %edx
	andl	$-64, %edx
	xorl	%eax, %eax
	negl	%edx
	cmovgl	%eax, %edx
	movl	%edx, %eax
	retq
.Lfunc_end20:
	.size	Round_Down_To_Grid, .Lfunc_end20-Round_Down_To_Grid
	.cfi_endproc

	.align	16, 0x90
	.type	Round_To_Half_Grid,@function
Round_To_Half_Grid:                     # @Round_To_Half_Grid
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	js	.LBB21_2
# BB#1:                                 # %if.then
	addl	%esi, %edx
	andl	$-64, %edx
	leal	32(%rdx), %ecx
	xorl	%eax, %eax
	orl	$32, %edx
	cmovnsl	%ecx, %eax
	retq
.LBB21_2:                               # %if.else
	subl	%esi, %edx
	andl	$-64, %edx
	orl	$32, %edx
	xorl	%eax, %eax
	negl	%edx
	cmovgl	%eax, %edx
	movl	%edx, %eax
	retq
.Lfunc_end21:
	.size	Round_To_Half_Grid, .Lfunc_end21-Round_To_Half_Grid
	.cfi_endproc

	.align	16, 0x90
	.type	Round_To_Double_Grid,@function
Round_To_Double_Grid:                   # @Round_To_Double_Grid
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	js	.LBB22_2
# BB#1:                                 # %if.then
	leal	16(%rsi,%rdx), %eax
	xorl	%ecx, %ecx
	andl	$-32, %eax
	cmovsl	%ecx, %eax
	retq
.LBB22_2:                               # %if.else
	movl	$16, %eax
	subl	%esi, %eax
	addl	%edx, %eax
	andl	$-32, %eax
	xorl	%ecx, %ecx
	negl	%eax
	cmovgl	%ecx, %eax
	retq
.Lfunc_end22:
	.size	Round_To_Double_Grid, .Lfunc_end22-Round_To_Double_Grid
	.cfi_endproc

	.align	16, 0x90
	.type	Round_Super,@function
Round_Super:                            # @Round_Super
	.cfi_startproc
# BB#0:                                 # %entry
	movl	456(%rdi), %eax
	movl	460(%rdi), %ecx
	movl	464(%rdi), %edi
	testl	%esi, %esi
	js	.LBB23_2
# BB#1:                                 # %if.then
	addl	%esi, %edx
	subl	%ecx, %edx
	addl	%edi, %edx
	negl	%eax
	xorl	%esi, %esi
	andl	%edx, %eax
	cmovsl	%esi, %eax
	addl	%ecx, %eax
	retq
.LBB23_2:                               # %if.else
	subl	%esi, %edx
	addl	%edi, %edx
	subl	%ecx, %edx
	negl	%eax
	andl	%edx, %eax
	xorl	%edx, %edx
	negl	%eax
	cmovgl	%edx, %eax
	subl	%ecx, %eax
	retq
.Lfunc_end23:
	.size	Round_Super, .Lfunc_end23-Round_Super
	.cfi_endproc

	.align	16, 0x90
	.type	Round_Super_45,@function
Round_Super_45:                         # @Round_Super_45
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %ecx
	movl	456(%rdi), %r9d
	movl	460(%rdi), %r8d
	movl	464(%rdi), %eax
	testl	%esi, %esi
	js	.LBB24_2
# BB#1:                                 # %if.then
	addl	%esi, %ecx
	subl	%r8d, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	xorl	%eax, %eax
	subl	%edx, %ecx
	cmovsl	%eax, %ecx
	addl	%r8d, %ecx
	movl	%ecx, %eax
	retq
.LBB24_2:                               # %if.else
	subl	%esi, %ecx
	addl	%eax, %ecx
	subl	%r8d, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	subl	%ecx, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovlel	%edx, %ecx
	subl	%r8d, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end24:
	.size	Round_Super_45, .Lfunc_end24-Round_Super_45
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SVTCA,@function
Ins_SVTCA:                              # @Ins_SVTCA
	.cfi_startproc
# BB#0:                                 # %entry
	movb	32(%rdi), %al
	andb	$1, %al
	movzbl	%al, %eax
	shll	$14, %eax
	movw	%ax, 940(%rdi)
	movw	%ax, 936(%rdi)
	movw	%ax, 932(%rdi)
	xorl	$16384, %eax            # imm = 0x4000
	movw	%ax, 942(%rdi)
	movw	%ax, 938(%rdi)
	movw	%ax, 934(%rdi)
	jmp	Compute_Funcs           # TAILCALL
.Lfunc_end25:
	.size	Ins_SVTCA, .Lfunc_end25-Ins_SVTCA
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SPVTCA,@function
Ins_SPVTCA:                             # @Ins_SPVTCA
	.cfi_startproc
# BB#0:                                 # %entry
	movb	32(%rdi), %al
	andb	$1, %al
	movzbl	%al, %eax
	shll	$14, %eax
	movw	%ax, 936(%rdi)
	movw	%ax, 932(%rdi)
	xorl	$16384, %eax            # imm = 0x4000
	movw	%ax, 938(%rdi)
	movw	%ax, 934(%rdi)
	jmp	Compute_Funcs           # TAILCALL
.Lfunc_end26:
	.size	Ins_SPVTCA, .Lfunc_end26-Ins_SPVTCA
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SFVTCA,@function
Ins_SFVTCA:                             # @Ins_SFVTCA
	.cfi_startproc
# BB#0:                                 # %entry
	movb	32(%rdi), %al
	andb	$1, %al
	movzbl	%al, %eax
	shll	$14, %eax
	movw	%ax, 940(%rdi)
	xorl	$16384, %eax            # imm = 0x4000
	movw	%ax, 942(%rdi)
	jmp	Compute_Funcs           # TAILCALL
.Lfunc_end27:
	.size	Ins_SFVTCA, .Lfunc_end27-Ins_SFVTCA
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SPVTL,@function
Ins_SPVTL:                              # @Ins_SPVTL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rsi), %rax
	testl	%eax, %eax
	js	.LBB28_7
# BB#1:                                 # %lor.lhs.false.i
	movq	(%rsi), %rdx
	testl	%edx, %edx
	js	.LBB28_7
# BB#2:                                 # %lor.lhs.false.i
	cmpl	%eax, 744(%rbx)
	jle	.LBB28_7
# BB#3:                                 # %lor.lhs.false.4.i
	cmpl	%edx, 688(%rbx)
	jle	.LBB28_7
# BB#4:                                 # %if.end.i
	movb	32(%rbx), %r9b
	leaq	936(%rbx), %rcx
	shlq	$32, %rdx
	sarq	$30, %rdx
	movq	712(%rbx), %rsi
	movq	720(%rbx), %r8
	movl	(%rsi,%rdx), %edi
	shlq	$32, %rax
	movq	768(%rbx), %rsi
	sarq	$30, %rax
	subl	(%rsi,%rax), %edi
	movl	(%r8,%rdx), %edx
	movq	776(%rbx), %rsi
	subl	(%rsi,%rax), %edx
	movl	%edx, %esi
	negl	%esi
	andb	$1, %r9b
	cmovnel	%edi, %edx
	testb	%r9b, %r9b
	cmovel	%edi, %esi
	movq	%rbx, %rdi
	callq	Normalize
	cmpl	$-1, %eax
	jne	.LBB28_6
# BB#5:                                 # %if.then.30.i
	movl	$0, 8(%rbx)
	movl	$16384, 936(%rbx)       # imm = 0x4000
.LBB28_6:                               # %if.end
	movl	936(%rbx), %eax
	movl	%eax, 932(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	Compute_Funcs           # TAILCALL
.LBB28_7:                               # %return
	movl	$1032, 8(%rbx)          # imm = 0x408
	popq	%rbx
	retq
.Lfunc_end28:
	.size	Ins_SPVTL, .Lfunc_end28-Ins_SPVTL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SFVTL,@function
Ins_SFVTL:                              # @Ins_SFVTL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rsi), %rax
	testl	%eax, %eax
	js	.LBB29_7
# BB#1:                                 # %lor.lhs.false.i
	movq	(%rsi), %rdx
	testl	%edx, %edx
	js	.LBB29_7
# BB#2:                                 # %lor.lhs.false.i
	cmpl	%eax, 744(%rbx)
	jle	.LBB29_7
# BB#3:                                 # %lor.lhs.false.4.i
	cmpl	%edx, 688(%rbx)
	jle	.LBB29_7
# BB#4:                                 # %if.end.i
	movb	32(%rbx), %r9b
	leaq	940(%rbx), %rcx
	shlq	$32, %rdx
	sarq	$30, %rdx
	movq	712(%rbx), %rsi
	movq	720(%rbx), %r8
	movl	(%rsi,%rdx), %edi
	shlq	$32, %rax
	movq	768(%rbx), %rsi
	sarq	$30, %rax
	subl	(%rsi,%rax), %edi
	movl	(%r8,%rdx), %edx
	movq	776(%rbx), %rsi
	subl	(%rsi,%rax), %edx
	movl	%edx, %esi
	negl	%esi
	andb	$1, %r9b
	cmovnel	%edi, %edx
	testb	%r9b, %r9b
	cmovel	%edi, %esi
	movq	%rbx, %rdi
	callq	Normalize
	cmpl	$-1, %eax
	jne	.LBB29_6
# BB#5:                                 # %if.then.30.i
	movl	$0, 8(%rbx)
	movl	$16384, 940(%rbx)       # imm = 0x4000
.LBB29_6:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	Compute_Funcs           # TAILCALL
.LBB29_7:                               # %return
	movl	$1032, 8(%rbx)          # imm = 0x408
	popq	%rbx
	retq
.Lfunc_end29:
	.size	Ins_SFVTL, .Lfunc_end29-Ins_SFVTL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SPVFS,@function
Ins_SPVFS:                              # @Ins_SPVFS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movswl	8(%rsi), %edx
	movswl	(%rsi), %esi
	leaq	936(%rbx), %rcx
	callq	Normalize
	cmpl	$-1, %eax
	je	.LBB30_1
# BB#2:                                 # %if.end
	movl	936(%rbx), %eax
	movl	%eax, 932(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	Compute_Funcs           # TAILCALL
.LBB30_1:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end30:
	.size	Ins_SPVFS, .Lfunc_end30-Ins_SPVFS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SFVFS,@function
Ins_SFVFS:                              # @Ins_SFVFS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movswl	8(%rsi), %edx
	movswl	(%rsi), %esi
	leaq	940(%rbx), %rcx
	callq	Normalize
	cmpl	$-1, %eax
	je	.LBB31_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	Compute_Funcs           # TAILCALL
.LBB31_1:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end31:
	.size	Ins_SFVFS, .Lfunc_end31-Ins_SFVFS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_GPV,@function
Ins_GPV:                                # @Ins_GPV
	.cfi_startproc
# BB#0:                                 # %entry
	movd	936(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	psrad	$16, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	%xmm0, (%rsi)
	retq
.Lfunc_end32:
	.size	Ins_GPV, .Lfunc_end32-Ins_GPV
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_GFV,@function
Ins_GFV:                                # @Ins_GFV
	.cfi_startproc
# BB#0:                                 # %entry
	movd	940(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	psrad	$16, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	%xmm0, (%rsi)
	retq
.Lfunc_end33:
	.size	Ins_GFV, .Lfunc_end33-Ins_GFV
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SFVTPV,@function
Ins_SFVTPV:                             # @Ins_SFVTPV
	.cfi_startproc
# BB#0:                                 # %entry
	movl	936(%rdi), %eax
	movl	%eax, 940(%rdi)
	jmp	Compute_Funcs           # TAILCALL
.Lfunc_end34:
	.size	Ins_SFVTPV, .Lfunc_end34-Ins_SFVTPV
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ISECT,@function
Ins_ISECT:                              # @Ins_ISECT
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
	subq	$56, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 112
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
	movq	%rdi, %rbx
	movq	24(%rsi), %rbp
	testq	%rbp, %rbp
	js	.LBB35_8
# BB#1:                                 # %lor.lhs.false
	movq	32(%rsi), %r14
	testq	%r14, %r14
	js	.LBB35_8
# BB#2:                                 # %lor.lhs.false
	movslq	632(%rbx), %rax
	cmpq	%rax, %rbp
	jge	.LBB35_8
# BB#3:                                 # %lor.lhs.false.10
	movq	8(%rsi), %r15
	testq	%r15, %r15
	js	.LBB35_8
# BB#4:                                 # %lor.lhs.false.10
	cmpq	%rax, %r14
	jge	.LBB35_8
# BB#5:                                 # %lor.lhs.false.19
	movq	16(%rsi), %rcx
	movslq	688(%rbx), %rax
	cmpq	%rax, %rcx
	jge	.LBB35_8
# BB#6:                                 # %lor.lhs.false.19
	testq	%rcx, %rcx
	js	.LBB35_8
# BB#7:                                 # %lor.lhs.false.19
	cmpq	%rax, %r15
	jge	.LBB35_8
# BB#9:                                 # %if.end
	movq	(%rsi), %r8
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	656(%rbx), %rax
	movq	664(%rbx), %r9
	movl	(%rax,%r14,4), %r13d
	movl	(%rax,%rbp,4), %r10d
	movl	%r10d, 24(%rsp)         # 4-byte Spill
	movl	(%r9,%rbp,4), %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	712(%rbx), %rax
	movl	(%rax,%rcx,4), %edi
	movl	(%rax,%r15,4), %r11d
	movl	%r11d, 12(%rsp)         # 4-byte Spill
	movq	720(%rbx), %rax
	movl	(%rax,%rcx,4), %r12d
	movl	(%rax,%r15,4), %edx
	movl	%edx, 4(%rsp)           # 4-byte Spill
	subl	(%r9,%r14,4), %esi
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movq	784(%rbx), %rax
	orb	$6, (%rax,%r8)
	subl	%r10d, %r13d
	movl	%r13d, 32(%rsp)         # 4-byte Spill
	subl	%r11d, %edi
	movl	%edi, 36(%rsp)          # 4-byte Spill
	subl	%edx, %r12d
	movl	%r12d, 40(%rsp)         # 4-byte Spill
	movl	$64, %edx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	callq	MulDiv_Round
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	$64, %edx
	movl	%r12d, %edi
	movl	%r13d, %esi
	callq	MulDiv_Round
	movl	%eax, %r12d
	addl	44(%rsp), %r12d         # 4-byte Folded Reload
	movl	%r12d, %eax
	negl	%eax
	cmovll	%r12d, %eax
	cmpl	$64, %eax
	jl	.LBB35_11
# BB#10:                                # %if.then.82
	movl	28(%rsp), %ebp          # 4-byte Reload
	subl	4(%rsp), %ebp           # 4-byte Folded Reload
	movl	24(%rsp), %edi          # 4-byte Reload
	subl	12(%rsp), %edi          # 4-byte Folded Reload
	movl	$64, %edx
	movl	8(%rsp), %esi           # 4-byte Reload
	callq	MulDiv_Round
	movl	%eax, %r14d
	movl	$64, %edx
	movl	%ebp, %edi
	movl	32(%rsp), %esi          # 4-byte Reload
	callq	MulDiv_Round
	movl	%eax, %ebp
	addl	%r14d, %ebp
	movl	%ebp, %edi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	MulDiv_Round
	movl	%eax, %r14d
	movl	%ebp, %edi
	movl	40(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	MulDiv_Round
	movq	712(%rbx), %rcx
	movq	768(%rbx), %rdx
	addl	(%rcx,%r15,4), %r14d
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	%r14d, (%rdx,%rsi,4)
	movq	720(%rbx), %rcx
	movq	776(%rbx), %rdx
	addl	(%rcx,%r15,4), %eax
	movl	%eax, (%rdx,%rsi,4)
	jmp	.LBB35_12
.LBB35_8:                               # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB35_12:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_11:                              # %if.else
	movq	656(%rbx), %rax
	movq	712(%rbx), %rcx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	(%rcx,%rdi,4), %edx
	addl	(%rcx,%r15,4), %edx
	addl	(%rax,%rbp,4), %edx
	addl	(%rcx,%r14,4), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movq	768(%rbx), %rcx
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	%eax, (%rcx,%rsi,4)
	movq	664(%rbx), %rax
	movq	720(%rbx), %rcx
	movl	(%rcx,%rdi,4), %edx
	addl	(%rcx,%r15,4), %edx
	addl	(%rax,%rbp,4), %edx
	addl	(%rcx,%r14,4), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movq	776(%rbx), %rcx
	movl	%eax, (%rcx,%rsi,4)
	jmp	.LBB35_12
.Lfunc_end35:
	.size	Ins_ISECT, .Lfunc_end35-Ins_ISECT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SRP0,@function
Ins_SRP0:                               # @Ins_SRP0
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 920(%rdi)
	retq
.Lfunc_end36:
	.size	Ins_SRP0, .Lfunc_end36-Ins_SRP0
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SRP1,@function
Ins_SRP1:                               # @Ins_SRP1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 924(%rdi)
	retq
.Lfunc_end37:
	.size	Ins_SRP1, .Lfunc_end37-Ins_SRP1
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SRP2,@function
Ins_SRP2:                               # @Ins_SRP2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 928(%rdi)
	retq
.Lfunc_end38:
	.size	Ins_SRP2, .Lfunc_end38-Ins_SRP2
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SZP0,@function
Ins_SZP0:                               # @Ins_SZP0
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	$1, %rax
	jne	.LBB39_1
# BB#4:                                 # %sw.bb.1
	movq	848(%rdi), %rax
	movq	%rax, 680(%rdi)
	movups	800(%rdi), %xmm0
	movups	816(%rdi), %xmm1
	movups	832(%rdi), %xmm2
	jmp	.LBB39_3
.LBB39_1:                               # %entry
	testq	%rax, %rax
	jne	.LBB39_5
# BB#2:                                 # %sw.bb
	movq	904(%rdi), %rax
	movq	%rax, 680(%rdi)
	movups	856(%rdi), %xmm0
	movups	872(%rdi), %xmm1
	movups	888(%rdi), %xmm2
.LBB39_3:                               # %sw.epilog
	movups	%xmm2, 664(%rdi)
	movups	%xmm1, 648(%rdi)
	movups	%xmm0, 632(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 996(%rdi)
	retq
.LBB39_5:                               # %sw.default
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end39:
	.size	Ins_SZP0, .Lfunc_end39-Ins_SZP0
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SZP1,@function
Ins_SZP1:                               # @Ins_SZP1
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	$1, %rax
	jne	.LBB40_1
# BB#4:                                 # %sw.bb.1
	movq	848(%rdi), %rax
	movq	%rax, 736(%rdi)
	movups	800(%rdi), %xmm0
	movups	816(%rdi), %xmm1
	movups	832(%rdi), %xmm2
	jmp	.LBB40_3
.LBB40_1:                               # %entry
	testq	%rax, %rax
	jne	.LBB40_5
# BB#2:                                 # %sw.bb
	movq	904(%rdi), %rax
	movq	%rax, 736(%rdi)
	movups	856(%rdi), %xmm0
	movups	872(%rdi), %xmm1
	movups	888(%rdi), %xmm2
.LBB40_3:                               # %sw.epilog
	movups	%xmm2, 720(%rdi)
	movups	%xmm1, 704(%rdi)
	movups	%xmm0, 688(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 1000(%rdi)
	retq
.LBB40_5:                               # %sw.default
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end40:
	.size	Ins_SZP1, .Lfunc_end40-Ins_SZP1
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SZP2,@function
Ins_SZP2:                               # @Ins_SZP2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	$1, %rax
	jne	.LBB41_1
# BB#4:                                 # %sw.bb.1
	movq	848(%rdi), %rax
	movq	%rax, 792(%rdi)
	movups	800(%rdi), %xmm0
	movups	816(%rdi), %xmm1
	movups	832(%rdi), %xmm2
	jmp	.LBB41_3
.LBB41_1:                               # %entry
	testq	%rax, %rax
	jne	.LBB41_5
# BB#2:                                 # %sw.bb
	movq	904(%rdi), %rax
	movq	%rax, 792(%rdi)
	movups	856(%rdi), %xmm0
	movups	872(%rdi), %xmm1
	movups	888(%rdi), %xmm2
.LBB41_3:                               # %sw.epilog
	movups	%xmm2, 776(%rdi)
	movups	%xmm1, 760(%rdi)
	movups	%xmm0, 744(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 1004(%rdi)
	retq
.LBB41_5:                               # %sw.default
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end41:
	.size	Ins_SZP2, .Lfunc_end41-Ins_SZP2
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SZPS,@function
Ins_SZPS:                               # @Ins_SZPS
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	$1, %rax
	jne	.LBB42_1
# BB#4:                                 # %sw.bb.1
	leaq	632(%rdi), %rax
	movq	848(%rdi), %rcx
	movq	%rcx, 680(%rdi)
	movups	800(%rdi), %xmm0
	movups	816(%rdi), %xmm1
	movups	832(%rdi), %xmm2
	jmp	.LBB42_3
.LBB42_1:                               # %entry
	testq	%rax, %rax
	jne	.LBB42_5
# BB#2:                                 # %sw.bb
	leaq	632(%rdi), %rax
	movq	904(%rdi), %rcx
	movq	%rcx, 680(%rdi)
	movups	856(%rdi), %xmm0
	movups	872(%rdi), %xmm1
	movups	888(%rdi), %xmm2
.LBB42_3:                               # %sw.epilog
	movups	%xmm2, 664(%rdi)
	movups	%xmm1, 648(%rdi)
	movups	%xmm0, 632(%rdi)
	movq	48(%rax), %rcx
	movq	%rcx, 736(%rdi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 720(%rdi)
	movups	%xmm1, 704(%rdi)
	movups	%xmm0, 688(%rdi)
	movq	48(%rax), %rcx
	movq	%rcx, 792(%rdi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 776(%rdi)
	movups	%xmm1, 760(%rdi)
	movups	%xmm0, 744(%rdi)
	movl	(%rsi), %eax
	movl	%eax, 996(%rdi)
	movl	%eax, 1000(%rdi)
	movl	%eax, 1004(%rdi)
	retq
.LBB42_5:                               # %sw.default
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end42:
	.size	Ins_SZPS, .Lfunc_end42-Ins_SZPS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SLOOP,@function
Ins_SLOOP:                              # @Ins_SLOOP
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rax, 944(%rdi)
	retq
.Lfunc_end43:
	.size	Ins_SLOOP, .Lfunc_end43-Ins_SLOOP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RTG,@function
Ins_RTG:                                # @Ins_RTG
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 956(%rdi)
	movq	$Round_To_Grid, 1120(%rdi)
	retq
.Lfunc_end44:
	.size	Ins_RTG, .Lfunc_end44-Ins_RTG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RTHG,@function
Ins_RTHG:                               # @Ins_RTHG
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 956(%rdi)
	movq	$Round_To_Half_Grid, 1120(%rdi)
	retq
.Lfunc_end45:
	.size	Ins_RTHG, .Lfunc_end45-Ins_RTHG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SMD,@function
Ins_SMD:                                # @Ins_SMD
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 952(%rdi)
	retq
.Lfunc_end46:
	.size	Ins_SMD, .Lfunc_end46-Ins_SMD
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ELSE,@function
Ins_ELSE:                               # @Ins_ELSE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1, %ebp
	jmp	.LBB47_1
	.align	16, 0x90
.LBB47_2:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movzbl	32(%rbx), %eax
	cmpl	$89, %eax
	jne	.LBB47_3
# BB#5:                                 # %sw.bb.1
                                        #   in Loop: Header=BB47_1 Depth=1
	decl	%ebp
.LBB47_6:                               # %do.cond
                                        #   in Loop: Header=BB47_1 Depth=1
	testl	%ebp, %ebp
	jne	.LBB47_1
	jmp	.LBB47_7
	.align	16, 0x90
.LBB47_3:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	cmpl	$88, %eax
	jne	.LBB47_1
# BB#4:                                 # %sw.bb
                                        #   in Loop: Header=BB47_1 Depth=1
	incl	%ebp
	jmp	.LBB47_6
	.align	16, 0x90
.LBB47_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	SkipCode
	cmpl	$-1, %eax
	jne	.LBB47_2
.LBB47_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Ins_ELSE, .Lfunc_end47-Ins_ELSE
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_JMPR,@function
Ins_JMPR:                               # @Ins_JMPR
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	24(%rdi), %rcx
	movslq	(%rsi), %rax
	addq	%rcx, %rax
	movl	%eax, 24(%rdi)
	movl	$0, 40(%rdi)
	movq	16(%rdi), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	je	.LBB48_3
# BB#1:                                 # %land.lhs.true
	movzbl	-1(%rcx,%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB48_3
# BB#2:                                 # %if.then
	decq	%rax
	movl	%eax, 24(%rdi)
.LBB48_3:                               # %if.end
	retq
.Lfunc_end48:
	.size	Ins_JMPR, .Lfunc_end48-Ins_JMPR
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SCVTCI,@function
Ins_SCVTCI:                             # @Ins_SCVTCI
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 964(%rdi)
	retq
.Lfunc_end49:
	.size	Ins_SCVTCI, .Lfunc_end49-Ins_SCVTCI
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SSWCI,@function
Ins_SSWCI:                              # @Ins_SSWCI
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 968(%rdi)
	retq
.Lfunc_end50:
	.size	Ins_SSWCI, .Lfunc_end50-Ins_SSWCI
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SSW,@function
Ins_SSW:                                # @Ins_SSW
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	shrq	$10, %rax
	movl	%eax, 972(%rdi)
	retq
.Lfunc_end51:
	.size	Ins_SSW, .Lfunc_end51-Ins_SSW
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_DUP,@function
Ins_DUP:                                # @Ins_DUP
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rax, 8(%rsi)
	retq
.Lfunc_end52:
	.size	Ins_DUP, .Lfunc_end52-Ins_DUP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_POP,@function
Ins_POP:                                # @Ins_POP
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end53:
	.size	Ins_POP, .Lfunc_end53-Ins_POP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_CLEAR,@function
Ins_CLEAR:                              # @Ins_CLEAR
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 452(%rdi)
	retq
.Lfunc_end54:
	.size	Ins_CLEAR, .Lfunc_end54-Ins_CLEAR
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SWAP,@function
Ins_SWAP:                               # @Ins_SWAP
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	%rcx, (%rsi)
	movq	%rax, 8(%rsi)
	retq
.Lfunc_end55:
	.size	Ins_SWAP, .Lfunc_end55-Ins_SWAP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_DEPTH,@function
Ins_DEPTH:                              # @Ins_DEPTH
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	436(%rdi), %rax
	movq	%rax, (%rsi)
	retq
.Lfunc_end56:
	.size	Ins_DEPTH, .Lfunc_end56-Ins_DEPTH
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_CINDEX,@function
Ins_CINDEX:                             # @Ins_CINDEX
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.LBB57_2
# BB#1:                                 # %lor.lhs.false
	movslq	448(%rdi), %rcx
	subq	%rax, %rcx
	jge	.LBB57_3
.LBB57_2:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.LBB57_3:                               # %if.else
	movq	440(%rdi), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, (%rsi)
	retq
.Lfunc_end57:
	.size	Ins_CINDEX, .Lfunc_end57-Ins_CINDEX
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MINDEX,@function
Ins_MINDEX:                             # @Ins_MINDEX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB58_5
# BB#1:                                 # %if.end
	js	.LBB58_3
# BB#2:                                 # %lor.lhs.false
	movslq	448(%rbx), %rcx
	subq	%rax, %rcx
	jge	.LBB58_4
.LBB58_3:                               # %if.then.5
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB58_5
.LBB58_4:                               # %if.end.6
	movq	440(%rbx), %rdx
	leaq	(%rdx,%rcx,8), %rdi
	movq	(%rdx,%rcx,8), %r14
	leaq	8(%rdx,%rcx,8), %rsi
	leaq	-8(,%rax,8), %rdx
	callq	memmove
	movslq	448(%rbx), %rax
	movq	440(%rbx), %rcx
	movq	%r14, -8(%rcx,%rax,8)
.LBB58_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end58:
	.size	Ins_MINDEX, .Lfunc_end58-Ins_MINDEX
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ALIGNPTS,@function
Ins_ALIGNPTS:                           # @Ins_ALIGNPTS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 64
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r15
	testq	%r15, %r15
	js	.LBB59_4
# BB#1:                                 # %lor.lhs.false
	movq	8(%rsi), %r14
	testq	%r14, %r14
	js	.LBB59_4
# BB#2:                                 # %lor.lhs.false
	movslq	688(%rbx), %rax
	cmpq	%rax, %r15
	jge	.LBB59_4
# BB#3:                                 # %lor.lhs.false.13
	movslq	632(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB59_4
# BB#5:                                 # %if.end
	leaq	688(%rbx), %r13
	leaq	632(%rbx), %r12
	movq	%r14, %rax
	shlq	$32, %rax
	sarq	$30, %rax
	movq	656(%rbx), %rcx
	movq	664(%rbx), %rdx
	movl	(%rcx,%rax), %esi
	movq	%r15, %rcx
	shlq	$32, %rcx
	movq	712(%rbx), %rdi
	sarq	$30, %rcx
	movl	(%rdi,%rcx), %ecx
	subl	%ecx, %esi
	movl	(%rdx,%rax), %edx
	subl	%ecx, %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	*1152(%rbx)
	movq	1152(%rbx), %rax
	negl	%ebp
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB59_4:                               # %cleanup
	movl	$1032, 8(%rbx)          # imm = 0x408
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	Ins_ALIGNPTS, .Lfunc_end59-Ins_ALIGNPTS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_UNKNOWN,@function
Ins_UNKNOWN:                            # @Ins_UNKNOWN
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	32(%rdi), %eax
	movzbl	76(%rdi,%rax), %eax
	cmpl	56(%rdi), %eax
	jge	.LBB60_1
# BB#2:                                 # %if.end
	movslq	348(%rdi), %rdx
	cmpl	352(%rdi), %edx
	jge	.LBB60_3
# BB#4:                                 # %if.end.8
	movq	64(%rdi), %r9
	movq	360(%rdi), %rcx
	leal	1(%rdx), %esi
	movl	%esi, 348(%rdi)
	movl	12(%rdi), %esi
	shlq	$4, %rdx
	movl	%esi, (%rcx,%rdx)
	movl	24(%rdi), %esi
	incl	%esi
	movl	%esi, 4(%rcx,%rdx)
	movl	$1, 8(%rcx,%rdx)
	shlq	$4, %rax
	movl	4(%r9,%rax), %r8d
	movl	%r8d, 12(%rcx,%rdx)
	movl	(%r9,%rax), %eax
	leal	-1(%rax), %edx
	cmpl	$3, %edx
	jb	.LBB60_6
# BB#5:                                 # %if.then.i
	movl	$1028, 8(%rdi)          # imm = 0x404
	movl	$0, 40(%rdi)
	retq
.LBB60_1:                               # %if.then
	movl	$1024, 8(%rdi)          # imm = 0x400
	retq
.LBB60_3:                               # %if.then.6
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.LBB60_6:                               # %if.end.i
	movslq	%edx, %rsi
	shlq	$4, %rsi
	movq	368(%rdi,%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB60_7
# BB#8:                                 # %if.end.5.i
	movl	376(%rdi,%rsi), %esi
	cmpl	%r8d, %esi
	jge	.LBB60_10
# BB#9:                                 # %if.then.7.i
	movl	$1027, 8(%rdi)          # imm = 0x403
	movl	$0, 40(%rdi)
	retq
.LBB60_7:                               # %if.then.3.i
	movl	$1039, 8(%rdi)          # imm = 0x40F
	movl	$0, 40(%rdi)
	retq
.LBB60_10:                              # %if.end.9.i
	movq	%rdx, 16(%rdi)
	movl	%esi, 28(%rdi)
	movl	%r8d, 24(%rdi)
	movl	%eax, 12(%rdi)
	movl	$0, 40(%rdi)
	retq
.Lfunc_end60:
	.size	Ins_UNKNOWN, .Lfunc_end60-Ins_UNKNOWN
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_UTP,@function
Ins_UTP:                                # @Ins_UTP
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.LBB61_2
# BB#1:                                 # %lor.lhs.false
	movslq	632(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB61_2
# BB#3:                                 # %if.end
	movb	$-1, %cl
	cmpw	$0, 940(%rdi)
	je	.LBB61_5
# BB#4:                                 # %select.mid
	movb	$-3, %cl
.LBB61_5:                               # %select.end
	cmpw	$0, 942(%rdi)
	je	.LBB61_7
# BB#6:                                 # %select.mid11
	andb	$-5, %cl
.LBB61_7:                               # %select.end10
	movq	672(%rdi), %rdx
	andb	%cl, (%rdx,%rax)
	retq
.LBB61_2:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end61:
	.size	Ins_UTP, .Lfunc_end61-Ins_UTP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_LOOPCALL,@function
Ins_LOOPCALL:                           # @Ins_LOOPCALL
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	testq	%rax, %rax
	js	.LBB62_3
# BB#1:                                 # %lor.lhs.false
	movslq	44(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB62_3
# BB#2:                                 # %lor.lhs.false.4
	movq	48(%rdi), %rcx
	shlq	$4, %rax
	cmpl	$0, 12(%rcx,%rax)
	je	.LBB62_3
# BB#4:                                 # %if.end
	movslq	348(%rdi), %r10
	cmpl	352(%rdi), %r10d
	jge	.LBB62_5
# BB#6:                                 # %if.end.11
	movq	(%rsi), %r8
	testq	%r8, %r8
	jle	.LBB62_15
# BB#7:                                 # %if.then.15
	movq	360(%rdi), %r11
	movl	12(%rdi), %r9d
	movq	%r10, %rdx
	shlq	$4, %rdx
	movl	%r9d, (%r11,%rdx)
	movl	24(%rdi), %esi
	incl	%esi
	movl	%esi, 4(%r11,%rdx)
	movl	%r8d, 8(%r11,%rdx)
	movl	4(%rcx,%rax), %r8d
	movl	%r8d, 12(%r11,%rdx)
	leal	1(%r10), %edx
	movl	%edx, 348(%rdi)
	movl	(%rcx,%rax), %eax
	leal	-1(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB62_9
# BB#8:                                 # %if.then.i
	movl	$1028, 8(%rdi)          # imm = 0x404
	jmp	.LBB62_14
.LBB62_3:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.LBB62_5:                               # %if.then.9
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.LBB62_9:                               # %if.end.i
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	movq	368(%rdi,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB62_10
# BB#11:                                # %if.end.5.i
	movl	376(%rdi,%rdx), %edx
	cmpl	%r8d, %edx
	jge	.LBB62_13
# BB#12:                                # %if.then.7.i
	movl	$1027, 8(%rdi)          # imm = 0x403
	jmp	.LBB62_14
.LBB62_10:                              # %if.then.3.i
	movl	$1039, 8(%rdi)          # imm = 0x40F
	jmp	.LBB62_14
.LBB62_13:                              # %if.end.9.i
	movq	%rcx, 16(%rdi)
	movl	%edx, 28(%rdi)
	movl	%r8d, 24(%rdi)
	movl	%eax, 12(%rdi)
.LBB62_14:                              # %Ins_Goto_CodeRange.exit
	movl	$0, 40(%rdi)
.LBB62_15:                              # %cleanup
	retq
.Lfunc_end62:
	.size	Ins_LOOPCALL, .Lfunc_end62-Ins_LOOPCALL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_CALL,@function
Ins_CALL:                               # @Ins_CALL
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.LBB63_3
# BB#1:                                 # %lor.lhs.false
	movslq	44(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_3
# BB#2:                                 # %lor.lhs.false.4
	movq	48(%rdi), %rcx
	shlq	$4, %rax
	cmpl	$0, 12(%rcx,%rax)
	je	.LBB63_3
# BB#4:                                 # %if.end
	movslq	348(%rdi), %r9
	cmpl	352(%rdi), %r9d
	jge	.LBB63_5
# BB#6:                                 # %if.end.11
	movq	360(%rdi), %r10
	movl	12(%rdi), %r8d
	movq	%r9, %rsi
	shlq	$4, %rsi
	movl	%r8d, (%r10,%rsi)
	movl	24(%rdi), %edx
	incl	%edx
	movl	%edx, 4(%r10,%rsi)
	movl	$1, 8(%r10,%rsi)
	movl	4(%rcx,%rax), %r8d
	movl	%r8d, 12(%r10,%rsi)
	leal	1(%r9), %edx
	movl	%edx, 348(%rdi)
	movl	(%rcx,%rax), %eax
	leal	-1(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB63_8
# BB#7:                                 # %if.then.i
	movl	$1028, 8(%rdi)          # imm = 0x404
	movl	$0, 40(%rdi)
	retq
.LBB63_3:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.LBB63_5:                               # %if.then.9
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.LBB63_8:                               # %if.end.i
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	movq	368(%rdi,%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB63_9
# BB#10:                                # %if.end.5.i
	movl	376(%rdi,%rsi), %esi
	cmpl	%r8d, %esi
	jge	.LBB63_12
# BB#11:                                # %if.then.7.i
	movl	$1027, 8(%rdi)          # imm = 0x403
	movl	$0, 40(%rdi)
	retq
.LBB63_9:                               # %if.then.3.i
	movl	$1039, 8(%rdi)          # imm = 0x40F
	movl	$0, 40(%rdi)
	retq
.LBB63_12:                              # %if.end.9.i
	movq	%rcx, 16(%rdi)
	movl	%esi, 28(%rdi)
	movl	%r8d, 24(%rdi)
	movl	%eax, 12(%rdi)
	movl	$0, 40(%rdi)
	retq
.Lfunc_end63:
	.size	Ins_CALL, .Lfunc_end63-Ins_CALL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FDEF,@function
Ins_FDEF:                               # @Ins_FDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	movslq	44(%rbx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB64_2
# BB#3:                                 # %if.end
	movq	48(%rbx), %rcx
	movl	12(%rbx), %edx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	%edx, (%rcx,%rsi)
	movb	%al, 8(%rcx,%rsi)
	movl	24(%rbx), %eax
	incl	%eax
	movl	%eax, 4(%rcx,%rsi)
	movl	$1, 12(%rcx,%rsi)
.LBB64_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	SkipCode
	testl	%eax, %eax
	jne	.LBB64_9
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB64_4 Depth=1
	movzbl	32(%rbx), %eax
	cmpl	$137, %eax
	je	.LBB64_8
# BB#6:                                 # %while.body.i
                                        #   in Loop: Header=BB64_4 Depth=1
	cmpl	$45, %eax
	je	.LBB64_9
# BB#7:                                 # %while.body.i
                                        #   in Loop: Header=BB64_4 Depth=1
	cmpl	$44, %eax
	jne	.LBB64_4
.LBB64_8:                               # %sw.bb.i
	movl	$1038, 8(%rbx)          # imm = 0x40E
.LBB64_9:                               # %cleanup
	popq	%rbx
	retq
.LBB64_2:                               # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	popq	%rbx
	retq
.Lfunc_end64:
	.size	Ins_FDEF, .Lfunc_end64-Ins_FDEF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ENDF,@function
Ins_ENDF:                               # @Ins_ENDF
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	348(%rdi), %rdx
	testq	%rdx, %rdx
	jle	.LBB65_1
# BB#2:                                 # %if.end
	leaq	-1(%rdx), %rax
	movl	%eax, 348(%rdi)
	movq	360(%rdi), %r9
	shlq	$4, %rax
	movl	8(%r9,%rax), %esi
	leal	-1(%rsi), %ecx
	movl	%ecx, 8(%r9,%rax)
	movl	$0, 40(%rdi)
	cmpl	$2, %esi
	jl	.LBB65_4
# BB#3:                                 # %if.then.6
	movl	%edx, 348(%rdi)
	movl	12(%r9,%rax), %eax
	movl	%eax, 24(%rdi)
	retq
.LBB65_1:                               # %if.then
	movl	$1036, 8(%rdi)          # imm = 0x40C
	retq
.LBB65_4:                               # %if.else
	movl	(%r9,%rax), %edx
	leal	-1(%rdx), %esi
	cmpl	$3, %esi
	jb	.LBB65_6
# BB#5:                                 # %if.then.i
	movl	$1028, 8(%rdi)          # imm = 0x404
	retq
.LBB65_6:                               # %if.end.i
	movslq	%esi, %rsi
	shlq	$4, %rsi
	movq	368(%rdi,%rsi), %r8
	testq	%r8, %r8
	je	.LBB65_7
# BB#8:                                 # %if.end.5.i
	movl	4(%r9,%rax), %eax
	movl	376(%rdi,%rsi), %ecx
	cmpl	%eax, %ecx
	jge	.LBB65_10
# BB#9:                                 # %if.then.7.i
	movl	$1027, 8(%rdi)          # imm = 0x403
	retq
.LBB65_7:                               # %if.then.3.i
	movl	$1039, 8(%rdi)          # imm = 0x40F
	retq
.LBB65_10:                              # %if.end.9.i
	movq	%r8, 16(%rdi)
	movl	%ecx, 28(%rdi)
	movl	%eax, 24(%rdi)
	movl	%edx, 12(%rdi)
	retq
.Lfunc_end65:
	.size	Ins_ENDF, .Lfunc_end65-Ins_ENDF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MDAP,@function
Ins_MDAP:                               # @Ins_MDAP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %rbx, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	js	.LBB66_2
# BB#1:                                 # %lor.lhs.false
	movslq	632(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB66_2
# BB#3:                                 # %if.end
	leaq	632(%rbx), %r15
	xorl	%ecx, %ecx
	testb	$1, 32(%rbx)
	je	.LBB66_5
# BB#4:                                 # %if.then.10
	movq	%r14, %rax
	shlq	$32, %rax
	sarq	$30, %rax
	movq	656(%rbx), %rcx
	movq	664(%rbx), %rdx
	movl	(%rcx,%rax), %esi
	movl	(%rdx,%rax), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %ebp
	movl	576(%rbx), %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*1120(%rbx)
	movl	%eax, %ecx
	subl	%ebp, %ecx
.LBB66_5:                               # %if.end.18
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	*1152(%rbx)
	movl	%r14d, 920(%rbx)
	movl	%r14d, 924(%rbx)
	jmp	.LBB66_6
.LBB66_2:                               # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB66_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Ins_MDAP, .Lfunc_end66-Ins_MDAP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_IUP,@function
Ins_IUP:                                # @Ins_IUP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 144
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	testb	$1, 32(%r15)
	jne	.LBB67_1
# BB#2:                                 # %if.else
	movq	816(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)
	movq	832(%r15), %rax
	movq	%rax, 80(%rsp)
	movl	$4, %r12d
	jmp	.LBB67_3
.LBB67_1:                               # %if.then
	movq	808(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)
	movq	824(%r15), %rax
	movq	%rax, 80(%rsp)
	movl	$2, %r12d
.LBB67_3:                               # %if.end
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	16(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	20(%rax), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	4(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	.align	16, 0x90
.LBB67_4:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_7 Depth 2
                                        #     Child Loop BB67_13 Depth 2
                                        #       Child Loop BB67_10 Depth 3
                                        #     Child Loop BB67_18 Depth 2
                                        #     Child Loop BB67_21 Depth 2
                                        #     Child Loop BB67_25 Depth 2
                                        #     Child Loop BB67_28 Depth 2
	movq	848(%r15), %rax
	movswl	(%rax,%rsi,2), %eax
	movslq	%eax, %r14
	cmpq	%r14, %rbp
	jle	.LBB67_6
# BB#5:                                 #   in Loop: Header=BB67_4 Depth=1
	movq	%rbp, %rbx
	jmp	.LBB67_31
	.align	16, 0x90
.LBB67_6:                               # %land.rhs.lr.ph
                                        #   in Loop: Header=BB67_4 Depth=1
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	840(%r15), %rax
	movq	%rbp, %r13
	.align	16, 0x90
.LBB67_7:                               # %land.rhs
                                        #   Parent Loop BB67_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%r13), %ecx
	testl	%r12d, %ecx
	jne	.LBB67_8
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB67_7 Depth=2
	leaq	1(%r13), %rbx
	cmpq	%r14, %r13
	movq	%rbx, %r13
	jl	.LBB67_7
	jmp	.LBB67_31
	.align	16, 0x90
.LBB67_8:                               #   in Loop: Header=BB67_4 Depth=1
	movq	%r13, %rdx
	jmp	.LBB67_13
	.align	16, 0x90
.LBB67_12:                              # %if.then.32
                                        #   in Loop: Header=BB67_13 Depth=2
	leaq	-1(%rbx), %rsi
	leal	1(%rdx), %edi
	movl	%ebx, %ecx
	leaq	72(%rsp), %r8
	callq	Interp
	movq	%rbx, %rdx
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB67_13:                              # %while.cond.20.outer
                                        #   Parent Loop BB67_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_10 Depth 3
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	.align	16, 0x90
.LBB67_10:                              # %while.cond.20
                                        #   Parent Loop BB67_4 Depth=1
                                        #     Parent Loop BB67_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	1(%rax), %rbx
	cmpq	%r14, %rax
	jge	.LBB67_14
# BB#11:                                # %while.body.23
                                        #   in Loop: Header=BB67_10 Depth=3
	movq	840(%r15), %rcx
	movzbl	1(%rcx,%rax), %eax
	testl	%r12d, %eax
	movq	%rbx, %rax
	je	.LBB67_10
	jmp	.LBB67_12
	.align	16, 0x90
.LBB67_14:                              # %while.end.39
                                        #   in Loop: Header=BB67_4 Depth=1
	cmpq	%r13, %rdx
	jne	.LBB67_29
# BB#15:                                # %if.then.42
                                        #   in Loop: Header=BB67_4 Depth=1
	movq	%r13, %rcx
	shlq	$32, %rcx
	sarq	$30, %rcx
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rcx), %eax
	movq	40(%rsp), %rdx          # 8-byte Reload
	subl	(%rdx,%rcx), %eax
	cmpl	%r13d, %ebp
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	jge	.LBB67_22
# BB#16:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB67_4 Depth=1
	movslq	%ebp, %rcx
	leaq	(%r13,%r9), %rdx
	subq	%rbp, %rdx
	movq	%rdx, %rdi
	andq	%r9, %rdi
	leaq	1(%rdi), %rsi
	incl	%edx
	andl	$7, %edx
	subq	%rdx, %rsi
	leaq	1(%rdi,%rcx), %r8
	je	.LBB67_19
# BB#17:                                # %vector.ph80
                                        #   in Loop: Header=BB67_4 Depth=1
	addq	%rsi, %rcx
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movslq	%ebp, %rbp
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rbp,4), %rsi
	leal	(%r9,%r13), %edi
	subl	%ebp, %edi
	incq	%rdi
	leal	1(%r9,%r13), %edx
	subl	%ebp, %edx
	andl	$7, %edx
	subq	%rdx, %rdi
	.align	16, 0x90
.LBB67_18:                              # %vector.body70
                                        #   Parent Loop BB67_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$32, %rsi
	addq	$-8, %rdi
	jne	.LBB67_18
.LBB67_19:                              # %middle.block71
                                        #   in Loop: Header=BB67_4 Depth=1
	cmpq	%rcx, %r8
	je	.LBB67_22
# BB#20:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB67_4 Depth=1
	movl	%r13d, %edx
	subl	%ecx, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx,4), %rcx
	.align	16, 0x90
.LBB67_21:                              # %for.body.i
                                        #   Parent Loop BB67_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%eax, (%rcx)
	addq	$4, %rcx
	decl	%edx
	jne	.LBB67_21
.LBB67_22:                              # %for.cond.7.preheader.i
                                        #   in Loop: Header=BB67_4 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %r13d
	jge	.LBB67_30
# BB#23:                                # %for.body.9.i.preheader
                                        #   in Loop: Header=BB67_4 Depth=1
	movq	%rcx, %r10
	movslq	%r13d, %rcx
	movq	%r14, %rdx
	addq	%r9, %rdx
	subq	%r13, %rdx
	movq	%rdx, %rdi
	andq	%r9, %rdi
	leaq	1(%rdi), %rsi
	incl	%edx
	andl	$7, %edx
	subq	%rdx, %rsi
	leaq	1(%rdi,%rcx), %r8
	je	.LBB67_26
# BB#24:                                # %vector.ph
                                        #   in Loop: Header=BB67_4 Depth=1
	addq	%rsi, %rcx
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movslq	%r13d, %rbp
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rbp,4), %rsi
	leal	(%r10,%r9), %edi
	subl	%ebp, %edi
	incq	%rdi
	leal	1(%r10,%r9), %edx
	subl	%ebp, %edx
	andl	$7, %edx
	subq	%rdx, %rdi
	.align	16, 0x90
.LBB67_25:                              # %vector.body
                                        #   Parent Loop BB67_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$32, %rsi
	addq	$-8, %rdi
	jne	.LBB67_25
.LBB67_26:                              # %middle.block
                                        #   in Loop: Header=BB67_4 Depth=1
	cmpq	%rcx, %r8
	je	.LBB67_30
# BB#27:                                # %for.body.9.i.preheader98
                                        #   in Loop: Header=BB67_4 Depth=1
	subl	%ecx, %r14d
	movq	16(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	.align	16, 0x90
.LBB67_28:                              # %for.body.9.i
                                        #   Parent Loop BB67_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%eax, (%rcx)
	addq	$4, %rcx
	decl	%r14d
	jne	.LBB67_28
	jmp	.LBB67_30
.LBB67_29:                              # %if.else.46
                                        #   in Loop: Header=BB67_4 Depth=1
	leal	1(%rdx), %edi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %ecx
	leaq	72(%rsp), %r14
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r14, %r8
	callq	Interp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leal	(%rax,%r13), %esi
	movl	%ebp, %edi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, %ecx
	movq	%r14, %r8
	callq	Interp
.LBB67_30:                              # %if.end.58
                                        #   in Loop: Header=BB67_4 Depth=1
	movq	64(%rsp), %rsi          # 8-byte Reload
.LBB67_31:                              # %if.end.58
                                        #   in Loop: Header=BB67_4 Depth=1
	incq	%rsi
	movslq	804(%r15), %rax
	cmpq	%rax, %rsi
	movq	%rbx, %rbp
	jl	.LBB67_4
# BB#32:                                # %do.end
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Ins_IUP, .Lfunc_end67-Ins_IUP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SHP,@function
Ins_SHP:                                # @Ins_SHP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 96
.Ltmp103:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movslq	436(%rbx), %rax
	cmpq	944(%rbx), %rax
	jge	.LBB68_2
# BB#1:                                 # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB68_14
.LBB68_2:                               # %if.end
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %rdx
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	movq	%rbx, %rdi
	callq	Compute_Point_Displacement
	testl	%eax, %eax
	jne	.LBB68_14
# BB#3:                                 # %while.condthread-pre-split
	cmpq	$0, 944(%rbx)
	jle	.LBB68_13
# BB#4:                                 # %while.body.lr.ph
	movl	12(%rsp), %eax
	movl	16(%rsp), %ecx
	.align	16, 0x90
.LBB68_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	448(%rbx), %rdx
	leaq	-1(%rdx), %rsi
	movl	%esi, 448(%rbx)
	movq	440(%rbx), %rsi
	movq	-8(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	js	.LBB68_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB68_5 Depth=1
	movslq	744(%rbx), %rsi
	cmpq	%rsi, %rdx
	jge	.LBB68_7
# BB#8:                                 # %if.end.17
                                        #   in Loop: Header=BB68_5 Depth=1
	cmpw	$0, 940(%rbx)
	je	.LBB68_10
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB68_5 Depth=1
	movq	768(%rbx), %rsi
	addl	%ecx, (%rsi,%rdx,4)
	movq	784(%rbx), %rsi
	orb	$2, (%rsi,%rdx)
.LBB68_10:                              # %if.end.8.i
                                        #   in Loop: Header=BB68_5 Depth=1
	cmpw	$0, 942(%rbx)
	je	.LBB68_12
# BB#11:                                # %if.then.14.i
                                        #   in Loop: Header=BB68_5 Depth=1
	movq	776(%rbx), %rsi
	addl	%eax, (%rsi,%rdx,4)
	movq	784(%rbx), %rsi
	orb	$4, (%rsi,%rdx)
.LBB68_12:                              # %Move_Zp2_Point.exit
                                        #   in Loop: Header=BB68_5 Depth=1
	movq	944(%rbx), %rdx
	leaq	-1(%rdx), %rsi
	movq	%rsi, 944(%rbx)
	cmpq	$1, %rdx
	jg	.LBB68_5
.LBB68_13:                              # %while.end
	movq	$1, 944(%rbx)
	movl	448(%rbx), %eax
	movl	%eax, 452(%rbx)
	jmp	.LBB68_14
.LBB68_7:                               # %if.then.15
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB68_14:                              # %cleanup
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end68:
	.size	Ins_SHP, .Lfunc_end68-Ins_SHP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SHC,@function
Ins_SHC:                                # @Ins_SHC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 96
.Ltmp107:
	.cfi_offset %rbx, -24
.Ltmp108:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	js	.LBB69_15
# BB#1:                                 # %lor.lhs.false
	movslq	804(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB69_15
# BB#2:                                 # %if.end
	leaq	8(%rsp), %rsi
	leaq	4(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	12(%rsp), %r8
	movq	%rbx, %rdi
	callq	Compute_Point_Displacement
	testl	%eax, %eax
	jne	.LBB69_15
# BB#3:                                 # %if.end.6
	testq	%r14, %r14
	je	.LBB69_4
# BB#5:                                 # %if.else
	movq	848(%rbx), %rcx
	movswq	-2(%rcx,%r14,2), %rax
	incq	%rax
	jmp	.LBB69_6
.LBB69_4:                               # %if.end.6.if.end.13_crit_edge
	movq	848(%rbx), %rcx
	xorl	%eax, %eax
.LBB69_6:                               # %if.end.13
	movswq	(%rcx,%r14,2), %rcx
	cmpq	%rcx, %rax
	jg	.LBB69_15
# BB#7:                                 # %for.body.lr.ph
	movq	40(%rsp), %rdx
	movq	768(%rbx), %rsi
	movl	4(%rsp), %r8d
	movl	8(%rsp), %r9d
	movslq	12(%rsp), %r10
	.align	16, 0x90
.LBB69_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rdx
	jne	.LBB69_10
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB69_8 Depth=1
	cmpq	%rax, %r10
	je	.LBB69_14
.LBB69_10:                              # %if.then.29
                                        #   in Loop: Header=BB69_8 Depth=1
	cmpw	$0, 940(%rbx)
	je	.LBB69_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB69_8 Depth=1
	addl	%r9d, (%rsi,%rax,4)
.LBB69_12:                              # %if.end.8.i
                                        #   in Loop: Header=BB69_8 Depth=1
	cmpw	$0, 942(%rbx)
	je	.LBB69_14
# BB#13:                                # %if.then.14.i
                                        #   in Loop: Header=BB69_8 Depth=1
	movq	776(%rbx), %rdi
	addl	%r8d, (%rdi,%rax,4)
.LBB69_14:                              # %for.inc
                                        #   in Loop: Header=BB69_8 Depth=1
	cmpq	%rcx, %rax
	leaq	1(%rax), %rax
	jl	.LBB69_8
.LBB69_15:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end69:
	.size	Ins_SHC, .Lfunc_end69-Ins_SHC
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SHZ,@function
Ins_SHZ:                                # @Ins_SHZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 96
.Ltmp111:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$2, (%rsi)
	jb	.LBB70_2
# BB#1:                                 # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB70_12
.LBB70_2:                               # %if.end
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %rdx
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	movq	%rbx, %rdi
	callq	Compute_Point_Displacement
	testl	%eax, %eax
	jne	.LBB70_12
# BB#3:                                 # %if.end.4
	movslq	24(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB70_12
# BB#4:                                 # %for.body.lr.ph
	decq	%rax
	movq	48(%rsp), %rcx
	movq	768(%rbx), %rdx
	movl	12(%rsp), %r8d
	movl	16(%rsp), %r9d
	movslq	20(%rsp), %r10
	xorl	%edi, %edi
	.align	16, 0x90
.LBB70_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rcx
	jne	.LBB70_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB70_5 Depth=1
	cmpq	%rdi, %r10
	je	.LBB70_11
.LBB70_7:                               # %if.then.14
                                        #   in Loop: Header=BB70_5 Depth=1
	cmpw	$0, 940(%rbx)
	je	.LBB70_9
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB70_5 Depth=1
	addl	%r9d, (%rdx,%rdi,4)
.LBB70_9:                               # %if.end.8.i
                                        #   in Loop: Header=BB70_5 Depth=1
	cmpw	$0, 942(%rbx)
	je	.LBB70_11
# BB#10:                                # %if.then.14.i
                                        #   in Loop: Header=BB70_5 Depth=1
	movq	776(%rbx), %rsi
	addl	%r8d, (%rsi,%rdi,4)
.LBB70_11:                              # %for.inc
                                        #   in Loop: Header=BB70_5 Depth=1
	cmpq	%rax, %rdi
	leaq	1(%rdi), %rdi
	jl	.LBB70_5
.LBB70_12:                              # %cleanup
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end70:
	.size	Ins_SHZ, .Lfunc_end70-Ins_SHZ
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SHPIX,@function
Ins_SHPIX:                              # @Ins_SHPIX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 32
.Ltmp115:
	.cfi_offset %rbx, -32
.Ltmp116:
	.cfi_offset %r14, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movslq	436(%rbx), %rax
	cmpq	944(%rbx), %rax
	jge	.LBB71_2
# BB#1:                                 # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB71_12
.LBB71_2:                               # %if.end
	movl	(%rbp), %edi
	movswl	940(%rbx), %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	MulDiv_Round
	movl	%eax, %r14d
	movl	(%rbp), %edi
	movswl	942(%rbx), %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	MulDiv_Round
	cmpq	$0, 944(%rbx)
	jle	.LBB71_11
	.align	16, 0x90
.LBB71_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	448(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	movl	%edx, 448(%rbx)
	movq	440(%rbx), %rdx
	movq	-8(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	js	.LBB71_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB71_3 Depth=1
	movslq	744(%rbx), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB71_5
# BB#6:                                 # %if.end.27
                                        #   in Loop: Header=BB71_3 Depth=1
	cmpw	$0, 940(%rbx)
	je	.LBB71_8
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB71_3 Depth=1
	movq	768(%rbx), %rdx
	addl	%r14d, (%rdx,%rcx,4)
	movq	784(%rbx), %rdx
	orb	$2, (%rdx,%rcx)
.LBB71_8:                               # %if.end.8.i
                                        #   in Loop: Header=BB71_3 Depth=1
	cmpw	$0, 942(%rbx)
	je	.LBB71_10
# BB#9:                                 # %if.then.14.i
                                        #   in Loop: Header=BB71_3 Depth=1
	movq	776(%rbx), %rdx
	addl	%eax, (%rdx,%rcx,4)
	movq	784(%rbx), %rdx
	orb	$4, (%rdx,%rcx)
.LBB71_10:                              # %Move_Zp2_Point.exit
                                        #   in Loop: Header=BB71_3 Depth=1
	movq	944(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, 944(%rbx)
	cmpq	$1, %rcx
	jg	.LBB71_3
.LBB71_11:                              # %while.end
	movq	$1, 944(%rbx)
	movl	448(%rbx), %eax
	movl	%eax, 452(%rbx)
	jmp	.LBB71_12
.LBB71_5:                               # %if.then.25
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB71_12:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Ins_SHPIX, .Lfunc_end71-Ins_SHPIX
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_IP,@function
Ins_IP:                                 # @Ins_IP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp122:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 112
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	436(%rbx), %rax
	cmpq	944(%rbx), %rax
	jge	.LBB72_2
# BB#1:                                 # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB72_16
.LBB72_2:                               # %if.end
	movslq	924(%rbx), %rax
	movq	640(%rbx), %rcx
	movq	648(%rbx), %rdx
	movl	(%rcx,%rax,4), %esi
	movl	(%rdx,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1136(%rbx)
	movl	%eax, %r14d
	movslq	928(%rbx), %rax
	movq	696(%rbx), %rcx
	movq	704(%rbx), %rdx
	movl	(%rcx,%rax,4), %esi
	movl	(%rdx,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1136(%rbx)
	movl	%eax, %r12d
	movslq	924(%rbx), %rax
	movq	656(%rbx), %rcx
	movq	664(%rbx), %rdx
	movl	(%rcx,%rax,4), %esi
	movl	(%rdx,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %r15d
	movslq	928(%rbx), %rax
	movq	712(%rbx), %rcx
	movq	720(%rbx), %rdx
	movl	(%rcx,%rax,4), %esi
	movl	(%rdx,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	cmpq	$0, 944(%rbx)
	jle	.LBB72_15
# BB#3:                                 # %while.body.lr.ph
	leaq	744(%rbx), %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movl	%r12d, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	movl	%r14d, %r12d
	subl	%r12d, %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	setge	39(%rsp)                # 1-byte Folded Spill
	movl	%eax, %edx
	subl	%ecx, %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	%r15d, 20(%rsp)         # 4-byte Spill
	subl	%r15d, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	subl	%r12d, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB72_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	448(%rbx), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, 448(%rbx)
	movq	440(%rbx), %rcx
	movq	-8(%rcx,%rax,8), %r15
	testl	%r15d, %r15d
	js	.LBB72_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB72_4 Depth=1
	cmpl	(%rbp), %r15d
	jge	.LBB72_6
# BB#7:                                 # %if.end.62
                                        #   in Loop: Header=BB72_4 Depth=1
	cmpl	%r12d, 52(%rsp)         # 4-byte Folded Reload
	setl	%r13b
	movq	%r15, %rbp
	shlq	$32, %rbp
	sarq	$30, %rbp
	movq	752(%rbx), %rax
	movq	760(%rbx), %rcx
	movl	(%rax,%rbp), %esi
	movl	(%rcx,%rbp), %edx
	movq	%rbx, %rdi
	callq	*1136(%rbx)
	movl	%eax, %r14d
	movq	768(%rbx), %rax
	movq	776(%rbx), %rcx
	movl	(%rax,%rbp), %esi
	movl	(%rcx,%rbp), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %edx
	movl	%r14d, %esi
	subl	%r12d, %esi
	setg	%cl
	setl	%al
	orb	%r13b, %cl
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB72_9
# BB#8:                                 # %if.end.62
                                        #   in Loop: Header=BB72_4 Depth=1
	orb	39(%rsp), %al           # 1-byte Folded Reload
	je	.LBB72_9
# BB#10:                                # %if.else
                                        #   in Loop: Header=BB72_4 Depth=1
	movl	52(%rsp), %ecx          # 4-byte Reload
	cmpl	%r12d, %ecx
	setl	%al
	cmpl	%ecx, %r14d
	setl	%cl
	testb	%cl, %al
	movq	40(%rsp), %rbp          # 8-byte Reload
	jne	.LBB72_12
# BB#11:                                # %if.else
                                        #   in Loop: Header=BB72_4 Depth=1
	orb	%cl, %al
	xorb	$1, %al
	jne	.LBB72_12
# BB#13:                                # %if.else.110
                                        #   in Loop: Header=BB72_4 Depth=1
	movl	16(%rsp), %edi          # 4-byte Reload
	movl	%edx, %r14d
	movl	12(%rsp), %edx          # 4-byte Reload
	callq	MulDiv_Round
	movl	20(%rsp), %ecx          # 4-byte Reload
	subl	%r14d, %ecx
	addl	%eax, %ecx
	jmp	.LBB72_14
	.align	16, 0x90
.LBB72_9:                               # %if.then.93
                                        #   in Loop: Header=BB72_4 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%r14,%rax), %ecx
	subl	%edx, %ecx
	movq	40(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB72_14
	.align	16, 0x90
.LBB72_12:                              # %if.then.106
                                        #   in Loop: Header=BB72_4 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	leal	(%r14,%rax), %ecx
	subl	%edx, %ecx
.LBB72_14:                              # %if.end.118
                                        #   in Loop: Header=BB72_4 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r15d, %edx
	callq	*1152(%rbx)
	movq	944(%rbx), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 944(%rbx)
	cmpq	$1, %rax
	jg	.LBB72_4
.LBB72_15:                              # %while.end
	movq	$1, 944(%rbx)
	movl	448(%rbx), %eax
	movl	%eax, 452(%rbx)
	jmp	.LBB72_16
.LBB72_6:                               # %if.then.60
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB72_16:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	Ins_IP, .Lfunc_end72-Ins_IP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MSIRP,@function
Ins_MSIRP:                              # @Ins_MSIRP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 48
.Ltmp136:
	.cfi_offset %rbx, -40
.Ltmp137:
	.cfi_offset %r12, -32
.Ltmp138:
	.cfi_offset %r14, -24
.Ltmp139:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%r15), %r14
	testq	%r14, %r14
	js	.LBB73_2
# BB#1:                                 # %lor.lhs.false
	movslq	688(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB73_2
# BB#3:                                 # %if.end
	leaq	688(%rbx), %r12
	cmpl	$0, 996(%rbx)
	je	.LBB73_5
# BB#4:                                 # %if.end.if.end.39_crit_edge
	movq	712(%rbx), %rdx
	movq	720(%rbx), %r8
	movslq	%r14d, %rax
	jmp	.LBB73_6
.LBB73_2:                               # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB73_8
.LBB73_5:                               # %if.then.9
	movslq	920(%rbx), %rax
	movq	640(%rbx), %rcx
	movq	696(%rbx), %rdx
	movl	(%rcx,%rax,4), %ecx
	movq	%r14, %rsi
	shlq	$32, %rsi
	movslq	%r14d, %rax
	sarq	$30, %rsi
	movl	%ecx, (%rdx,%rsi)
	movslq	920(%rbx), %r8
	movq	648(%rbx), %rdi
	movq	704(%rbx), %rcx
	movl	(%rdi,%r8,4), %edi
	movl	%edi, (%rcx,%rsi)
	movl	(%rdx,%rsi), %edi
	movq	712(%rbx), %rdx
	movl	%edi, (%rdx,%rsi)
	movl	(%rcx,%rsi), %edi
	movq	720(%rbx), %r8
	movl	%edi, (%r8,%rsi)
.LBB73_6:                               # %if.end.39
	movl	(%rdx,%rax,4), %esi
	movslq	920(%rbx), %rdi
	movq	656(%rbx), %rdx
	movq	664(%rbx), %rcx
	subl	(%rdx,%rdi,4), %esi
	movl	(%r8,%rax,4), %edx
	subl	(%rcx,%rdi,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	8(%r15), %ecx
	subl	%eax, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	*1152(%rbx)
	movl	920(%rbx), %eax
	movl	%eax, 924(%rbx)
	movl	%r14d, 928(%rbx)
	testb	$1, 32(%rbx)
	je	.LBB73_8
# BB#7:                                 # %if.then.73
	movl	%r14d, 920(%rbx)
.LBB73_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end73:
	.size	Ins_MSIRP, .Lfunc_end73-Ins_MSIRP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ALIGNRP,@function
Ins_ALIGNRP:                            # @Ins_ALIGNRP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 32
.Ltmp143:
	.cfi_offset %rbx, -32
.Ltmp144:
	.cfi_offset %r14, -24
.Ltmp145:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movslq	436(%rbx), %rcx
	movq	944(%rbx), %rax
	cmpq	%rax, %rcx
	jge	.LBB74_1
# BB#9:                                 # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
	jmp	.LBB74_8
.LBB74_1:                               # %while.cond.preheader
	testq	%rax, %rax
	jle	.LBB74_7
# BB#2:                                 # %while.body.lr.ph
	leaq	688(%rbx), %r14
	.align	16, 0x90
.LBB74_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	448(%rbx), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, 448(%rbx)
	movq	440(%rbx), %rcx
	movq	-8(%rcx,%rax,8), %r15
	testl	%r15d, %r15d
	js	.LBB74_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB74_3 Depth=1
	cmpl	(%r14), %r15d
	jge	.LBB74_5
# BB#6:                                 # %if.end.15
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	%r15, %rax
	shlq	$32, %rax
	movq	712(%rbx), %rcx
	sarq	$30, %rax
	movl	(%rcx,%rax), %esi
	movslq	920(%rbx), %rcx
	movq	656(%rbx), %rdx
	movq	664(%rbx), %rdi
	subl	(%rdx,%rcx,4), %esi
	movq	720(%rbx), %rdx
	movl	(%rdx,%rax), %edx
	subl	(%rdi,%rcx,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	negl	%eax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	movl	%eax, %ecx
	callq	*1152(%rbx)
	movq	944(%rbx), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 944(%rbx)
	cmpq	$1, %rax
	jg	.LBB74_3
.LBB74_7:                               # %while.end
	movq	$1, 944(%rbx)
	movl	448(%rbx), %eax
	movl	%eax, 452(%rbx)
	jmp	.LBB74_8
.LBB74_5:                               # %if.then.13
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB74_8:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end74:
	.size	Ins_ALIGNRP, .Lfunc_end74-Ins_ALIGNRP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RTDG,@function
Ins_RTDG:                               # @Ins_RTDG
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2, 956(%rdi)
	movq	$Round_To_Double_Grid, 1120(%rdi)
	retq
.Lfunc_end75:
	.size	Ins_RTDG, .Lfunc_end75-Ins_RTDG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MIAP,@function
Ins_MIAP:                               # @Ins_MIAP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 64
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	js	.LBB76_12
# BB#1:                                 # %lor.lhs.false
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	js	.LBB76_12
# BB#2:                                 # %lor.lhs.false
	movslq	632(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB76_12
# BB#3:                                 # %lor.lhs.false.13
	movslq	1100(%rbx), %rax
	cmpq	%rax, %rsi
	jge	.LBB76_12
# BB#4:                                 # %if.end
	movq	%rbx, %rdi
	callq	*1160(%rbx)
	movl	%eax, %r13d
	cmpl	$0, 996(%rbx)
	je	.LBB76_6
# BB#5:                                 # %if.end.if.end.47_crit_edge
	movq	664(%rbx), %rcx
	movslq	%r14d, %r12
	jmp	.LBB76_7
.LBB76_6:                               # %if.then.20
	movswl	940(%rbx), %edi
	movl	$16384, %edx            # imm = 0x4000
	movl	%r13d, %esi
	callq	MulDiv_Round
	movq	%r14, %rbp
	shlq	$32, %rbp
	movslq	%r14d, %r12
	movq	640(%rbx), %rcx
	sarq	$30, %rbp
	movl	%eax, (%rcx,%rbp)
	movq	656(%rbx), %rcx
	movl	%eax, (%rcx,%rbp)
	movswl	942(%rbx), %edi
	movl	$16384, %edx            # imm = 0x4000
	movl	%r13d, %esi
	callq	MulDiv_Round
	movq	648(%rbx), %rcx
	movl	%eax, (%rcx,%rbp)
	movq	664(%rbx), %rcx
	movl	%eax, (%rcx,%rbp)
.LBB76_7:                               # %if.end.47
	leaq	632(%rbx), %r15
	movq	656(%rbx), %rax
	movl	(%rax,%r12,4), %esi
	movl	(%rcx,%r12,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %r12d
	testb	$1, 32(%rbx)
	je	.LBB76_11
# BB#8:                                 # %if.then.60
	movl	%r13d, %eax
	subl	%r12d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	cmpl	964(%rbx), %ecx
	movl	%r12d, %esi
	jg	.LBB76_10
# BB#9:                                 # %select.mid
	movl	%r13d, %esi
.LBB76_10:                              # %select.end
	movl	576(%rbx), %edx
	movq	%rbx, %rdi
	callq	*1120(%rbx)
	movl	%eax, %r13d
.LBB76_11:                              # %if.end.73
	subl	%r12d, %r13d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	callq	*1152(%rbx)
	movl	%r14d, 920(%rbx)
	movl	%r14d, 924(%rbx)
.LBB76_12:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Ins_MIAP, .Lfunc_end76-Ins_MIAP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_NPUSHB,@function
Ins_NPUSHB:                             # @Ins_NPUSHB
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	24(%rdi), %r8
	movq	16(%rdi), %r10
	movzbl	1(%r8,%r10), %r9d
	movl	432(%rdi), %eax
	incl	%eax
	subl	436(%rdi), %eax
	cmpl	%eax, %r9d
	jge	.LBB77_9
# BB#1:                                 # %for.cond.preheader
	testb	%r9b, %r9b
	je	.LBB77_7
# BB#2:                                 # %for.body.lr.ph
	movl	$1, %ecx
	testb	$1, %r9b
	je	.LBB77_4
# BB#3:                                 # %for.body.prol
	leal	2(%r8), %eax
	cltq
	movzbl	(%r10,%rax), %eax
	movq	%rax, (%rsi)
	movl	$2, %ecx
.LBB77_4:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB77_7
# BB#5:                                 # %for.body.lr.ph.split.split
	leal	1(%r9), %r11d
	subl	%ecx, %r11d
	leal	2(%rcx,%r8), %eax
	leaq	(%rsi,%rcx,8), %rsi
	leal	1(%rcx,%r8), %ecx
	.align	16, 0x90
.LBB77_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movzbl	(%r10,%rcx), %edx
	movq	%rdx, -8(%rsi)
	cltq
	movzbl	(%r10,%rax), %edx
	movq	%rdx, (%rsi)
	addl	$2, %eax
	addq	$16, %rsi
	addl	$2, %ecx
	addl	$-2, %r11d
	jne	.LBB77_6
.LBB77_7:                               # %for.end
	addl	%r9d, 452(%rdi)
	retq
.LBB77_9:                               # %if.then
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.Lfunc_end77:
	.size	Ins_NPUSHB, .Lfunc_end77-Ins_NPUSHB
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_NPUSHW,@function
Ins_NPUSHW:                             # @Ins_NPUSHW
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movzbl	1(%r10,%r9), %r8d
	movl	432(%rdi), %eax
	incl	%eax
	subl	436(%rdi), %eax
	cmpl	%eax, %r8d
	jge	.LBB78_1
# BB#2:                                 # %if.end
	leal	2(%r10), %eax
	movl	%eax, 24(%rdi)
	testb	%r8b, %r8b
	je	.LBB78_5
# BB#3:                                 # %for.body.preheader
	addl	$4, %r10d
	cltq
	leaq	(%rax,%r9), %rax
	movl	%r8d, %r11d
	.align	16, 0x90
.LBB78_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, 24(%rdi)
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	leal	-1(%r10), %edx
	movslq	%edx, %rdx
	movzbl	(%r9,%rdx), %edx
	orl	%ecx, %edx
	movswq	%dx, %rcx
	movq	%rcx, (%rsi)
	addl	$2, %r10d
	addq	$2, %rax
	addq	$8, %rsi
	decl	%r11d
	jne	.LBB78_4
.LBB78_5:                               # %for.end
	movl	$0, 40(%rdi)
	addl	%r8d, 452(%rdi)
	retq
.LBB78_1:                               # %if.then
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.Lfunc_end78:
	.size	Ins_NPUSHW, .Lfunc_end78-Ins_NPUSHW
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_WS,@function
Ins_WS:                                 # @Ins_WS
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.LBB79_2
# BB#1:                                 # %lor.lhs.false
	movslq	416(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_2
# BB#3:                                 # %if.end
	movq	8(%rsi), %rcx
	movq	424(%rdi), %rdx
	movq	%rcx, (%rdx,%rax,8)
	retq
.LBB79_2:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end79:
	.size	Ins_WS, .Lfunc_end79-Ins_WS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RS,@function
Ins_RS:                                 # @Ins_RS
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	testq	%rax, %rax
	js	.LBB80_2
# BB#1:                                 # %lor.lhs.false
	movslq	416(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB80_2
# BB#3:                                 # %if.end
	movq	424(%rdi), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%rsi)
	retq
.LBB80_2:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end80:
	.size	Ins_RS, .Lfunc_end80-Ins_RS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_WCVTP,@function
Ins_WCVTP:                              # @Ins_WCVTP
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	js	.LBB81_2
# BB#1:                                 # %lor.lhs.false
	movslq	1100(%rdi), %rcx
	cmpq	%rcx, %rsi
	jge	.LBB81_2
# BB#3:                                 # %if.end
	movq	1168(%rdi), %rcx
	movl	8(%rax), %edx
	jmpq	*%rcx                   # TAILCALL
.LBB81_2:                               # %return
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end81:
	.size	Ins_WCVTP, .Lfunc_end81-Ins_WCVTP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RCVT,@function
Ins_RCVT:                               # @Ins_RCVT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	js	.LBB82_2
# BB#1:                                 # %lor.lhs.false
	movslq	1100(%rdi), %rax
	cmpq	%rax, %rsi
	jge	.LBB82_2
# BB#3:                                 # %if.end
	callq	*1160(%rdi)
	cltq
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.LBB82_2:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	popq	%rbx
	retq
.Lfunc_end82:
	.size	Ins_RCVT, .Lfunc_end82-Ins_RCVT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_GC,@function
Ins_GC:                                 # @Ins_GC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	js	.LBB83_2
# BB#1:                                 # %lor.lhs.false
	movslq	744(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB83_2
# BB#3:                                 # %if.end
	movzbl	32(%rdi), %ecx
	testb	$1, %cl
	je	.LBB83_4
# BB#6:                                 # %sw.bb.9
	movq	752(%rdi), %rcx
	movq	760(%rdi), %rdx
	movl	(%rcx,%rax,4), %esi
	movl	(%rdx,%rax,4), %edx
	callq	*1136(%rdi)
	jmp	.LBB83_7
.LBB83_2:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	popq	%rbx
	retq
.LBB83_4:                               # %if.end
	andl	$1, %ecx
	jne	.LBB83_8
# BB#5:                                 # %sw.bb
	movq	768(%rdi), %rcx
	movq	776(%rdi), %rdx
	movl	(%rcx,%rax,4), %esi
	movl	(%rdx,%rax,4), %edx
	callq	*1128(%rdi)
.LBB83_7:                               # %sw.epilog
	cltq
.LBB83_8:                               # %sw.epilog
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end83:
	.size	Ins_GC, .Lfunc_end83-Ins_GC
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SCFS,@function
Ins_SCFS:                               # @Ins_SCFS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp167:
	.cfi_def_cfa_offset 48
.Ltmp168:
	.cfi_offset %rbx, -40
.Ltmp169:
	.cfi_offset %r12, -32
.Ltmp170:
	.cfi_offset %r14, -24
.Ltmp171:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%r15), %r14
	testq	%r14, %r14
	js	.LBB84_2
# BB#1:                                 # %lor.lhs.false
	movslq	744(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB84_2
# BB#3:                                 # %if.end
	leaq	744(%rbx), %r12
	movq	%r14, %rax
	shlq	$32, %rax
	sarq	$30, %rax
	movq	768(%rbx), %rcx
	movq	776(%rbx), %rdx
	movl	(%rcx,%rax), %esi
	movl	(%rdx,%rax), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	8(%r15), %ecx
	subl	%eax, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	*1152(%rbx)
	cmpl	$0, 1004(%rbx)
	jne	.LBB84_5
# BB#4:                                 # %if.then.18
	movslq	%r14d, %rax
	movq	752(%rbx), %rcx
	movq	768(%rbx), %rdx
	movl	(%rdx,%rax,4), %edx
	movl	%edx, (%rcx,%rax,4)
	movq	760(%rbx), %rcx
	movq	776(%rbx), %rdx
	movl	(%rdx,%rax,4), %edx
	movl	%edx, (%rcx,%rax,4)
	jmp	.LBB84_5
.LBB84_2:                               # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB84_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end84:
	.size	Ins_SCFS, .Lfunc_end84-Ins_SCFS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MD,@function
Ins_MD:                                 # @Ins_MD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	js	.LBB85_4
# BB#1:                                 # %lor.lhs.false
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	js	.LBB85_4
# BB#2:                                 # %lor.lhs.false
	movslq	744(%rdi), %rdx
	cmpq	%rdx, %rax
	jge	.LBB85_4
# BB#3:                                 # %lor.lhs.false.10
	movslq	688(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_4
# BB#5:                                 # %if.end
	testb	$1, 32(%rdi)
	jne	.LBB85_6
# BB#7:                                 # %if.else
	movq	752(%rdi), %rdx
	movl	(%rdx,%rax,4), %esi
	movq	696(%rdi), %rdx
	movq	704(%rdi), %r8
	subl	(%rdx,%rcx,4), %esi
	movq	760(%rdi), %rdx
	movl	(%rdx,%rax,4), %edx
	subl	(%r8,%rcx,4), %edx
	callq	*1136(%rdi)
	jmp	.LBB85_8
.LBB85_4:                               # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	popq	%rbx
	retq
.LBB85_6:                               # %if.then.17
	movq	768(%rdi), %rdx
	movl	(%rdx,%rax,4), %esi
	movq	712(%rdi), %rdx
	movq	720(%rdi), %r8
	subl	(%rdx,%rcx,4), %esi
	movq	776(%rdi), %rdx
	movl	(%rdx,%rax,4), %edx
	subl	(%r8,%rcx,4), %edx
	callq	*1128(%rdi)
.LBB85_8:                               # %if.end.42
	cltq
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end85:
	.size	Ins_MD, .Lfunc_end85-Ins_MD
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MPPEM,@function
Ins_MPPEM:                              # @Ins_MPPEM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp176:
	.cfi_def_cfa_offset 32
.Ltmp177:
	.cfi_offset %rbx, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	544(%rdi), %ebp
	callq	Current_Ratio
	movl	$65536, %edx            # imm = 0x10000
	movl	%ebp, %edi
	movl	%eax, %esi
	callq	MulDiv_Round
	cltq
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Ins_MPPEM, .Lfunc_end86-Ins_MPPEM
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MPS,@function
Ins_MPS:                                # @Ins_MPS
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	472(%rdi), %rax
	movq	%rax, (%rsi)
	retq
.Lfunc_end87:
	.size	Ins_MPS, .Lfunc_end87-Ins_MPS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FLIPON,@function
Ins_FLIPON:                             # @Ins_FLIPON
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, 960(%rdi)
	retq
.Lfunc_end88:
	.size	Ins_FLIPON, .Lfunc_end88-Ins_FLIPON
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FLIPOFF,@function
Ins_FLIPOFF:                            # @Ins_FLIPOFF
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 960(%rdi)
	retq
.Lfunc_end89:
	.size	Ins_FLIPOFF, .Lfunc_end89-Ins_FLIPOFF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_DEBUG,@function
Ins_DEBUG:                              # @Ins_DEBUG
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1035, 8(%rdi)          # imm = 0x40B
	retq
.Lfunc_end90:
	.size	Ins_DEBUG, .Lfunc_end90-Ins_DEBUG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_LT,@function
Ins_LT:                                 # @Ins_LT
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	8(%rsi), %rax
	setl	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end91:
	.size	Ins_LT, .Lfunc_end91-Ins_LT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_LTEQ,@function
Ins_LTEQ:                               # @Ins_LTEQ
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	8(%rsi), %rax
	setle	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end92:
	.size	Ins_LTEQ, .Lfunc_end92-Ins_LTEQ
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_GT,@function
Ins_GT:                                 # @Ins_GT
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	8(%rsi), %rax
	setg	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end93:
	.size	Ins_GT, .Lfunc_end93-Ins_GT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_GTEQ,@function
Ins_GTEQ:                               # @Ins_GTEQ
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	8(%rsi), %rax
	setge	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end94:
	.size	Ins_GTEQ, .Lfunc_end94-Ins_GTEQ
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_EQ,@function
Ins_EQ:                                 # @Ins_EQ
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	8(%rsi), %rax
	sete	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end95:
	.size	Ins_EQ, .Lfunc_end95-Ins_EQ
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_NEQ,@function
Ins_NEQ:                                # @Ins_NEQ
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	8(%rsi), %rax
	setne	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end96:
	.size	Ins_NEQ, .Lfunc_end96-Ins_NEQ
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ODD,@function
Ins_ODD:                                # @Ins_ODD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	(%rbx), %esi
	xorl	%edx, %edx
	callq	*1120(%rdi)
	andl	$127, %eax
	cmpl	$64, %eax
	sete	%al
	movzbl	%al, %eax
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end97:
	.size	Ins_ODD, .Lfunc_end97-Ins_ODD
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_EVEN,@function
Ins_EVEN:                               # @Ins_EVEN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	(%rbx), %esi
	xorl	%edx, %edx
	callq	*1120(%rdi)
	testb	$127, %al
	sete	%al
	movzbl	%al, %eax
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end98:
	.size	Ins_EVEN, .Lfunc_end98-Ins_EVEN
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_IF,@function
Ins_IF:                                 # @Ins_IF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 32
.Ltmp186:
	.cfi_offset %rbx, -32
.Ltmp187:
	.cfi_offset %r14, -24
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpq	$0, (%rsi)
	jne	.LBB99_11
# BB#1:                                 # %do.body.preheader
	movq	%rbx, %rdi
	callq	SkipCode
	cmpl	$-1, %eax
	je	.LBB99_11
# BB#2:
	movl	$1, %ebp
	movb	$1, %r14b
	.align	16, 0x90
.LBB99_3:                               # %if.end.3
                                        # =>This Inner Loop Header: Depth=1
	movzbl	32(%rbx), %eax
	cmpl	$27, %eax
	jne	.LBB99_4
# BB#9:                                 # %sw.bb.4
                                        #   in Loop: Header=BB99_3 Depth=1
	testb	$1, %r14b
	jne	.LBB99_11
.LBB99_6:                               # %do.body.backedge
                                        #   in Loop: Header=BB99_3 Depth=1
	movq	%rbx, %rdi
	callq	SkipCode
	cmpl	$-1, %eax
	jne	.LBB99_3
	jmp	.LBB99_11
.LBB99_4:                               # %if.end.3
                                        #   in Loop: Header=BB99_3 Depth=1
	cmpl	$88, %eax
	jne	.LBB99_5
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB99_3 Depth=1
	incl	%ebp
.LBB99_8:                               # %do.body.outer.outer.backedge
                                        #   in Loop: Header=BB99_3 Depth=1
	cmpl	$1, %ebp
	sete	%r14b
	jmp	.LBB99_6
.LBB99_5:                               # %if.end.3
                                        #   in Loop: Header=BB99_3 Depth=1
	cmpl	$89, %eax
	jne	.LBB99_6
# BB#10:                                # %do.cond
                                        #   in Loop: Header=BB99_3 Depth=1
	decl	%ebp
	jne	.LBB99_8
.LBB99_11:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end99:
	.size	Ins_IF, .Lfunc_end99-Ins_IF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_EIF,@function
Ins_EIF:                                # @Ins_EIF
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end100:
	.size	Ins_EIF, .Lfunc_end100-Ins_EIF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_AND,@function
Ins_AND:                                # @Ins_AND
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, (%rsi)
	je	.LBB101_2
# BB#1:                                 # %land.lhs.true
	movl	$1, %eax
	cmpq	$0, 8(%rsi)
	jne	.LBB101_3
.LBB101_2:                              # %if.else
	xorl	%eax, %eax
.LBB101_3:                              # %if.end
	movq	%rax, (%rsi)
	retq
.Lfunc_end101:
	.size	Ins_AND, .Lfunc_end101-Ins_AND
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_OR,@function
Ins_OR:                                 # @Ins_OR
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	cmpq	$0, (%rsi)
	jne	.LBB102_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 8(%rsi)
	setne	%al
	movzbl	%al, %eax
.LBB102_2:                              # %if.end
	movq	%rax, (%rsi)
	retq
.Lfunc_end102:
	.size	Ins_OR, .Lfunc_end102-Ins_OR
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_NOT,@function
Ins_NOT:                                # @Ins_NOT
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, (%rsi)
	sete	%al
	movzbl	%al, %eax
	movq	%rax, (%rsi)
	retq
.Lfunc_end103:
	.size	Ins_NOT, .Lfunc_end103-Ins_NOT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_DELTAP,@function
Ins_DELTAP:                             # @Ins_DELTAP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp190:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp192:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp193:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp194:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp195:
	.cfi_def_cfa_offset 80
.Ltmp196:
	.cfi_offset %rbx, -56
.Ltmp197:
	.cfi_offset %r12, -48
.Ltmp198:
	.cfi_offset %r13, -40
.Ltmp199:
	.cfi_offset %r14, -32
.Ltmp200:
	.cfi_offset %r15, -24
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rax, %rax
	movl	448(%r12), %eax
	jle	.LBB104_13
# BB#1:                                 # %for.body.lr.ph
	leaq	632(%r12), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB104_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %eax
	jle	.LBB104_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB104_2 Depth=1
	leal	-2(%rax), %ecx
	movl	%ecx, 448(%r12)
	decl	%eax
	movslq	%eax, %rdx
	movq	440(%r12), %rax
	movq	(%rax,%rdx,8), %r15
	testq	%r15, %r15
	js	.LBB104_14
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB104_2 Depth=1
	movq	16(%rsp), %rdx          # 8-byte Reload
	movslq	(%rdx), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %r15
	jge	.LBB104_14
# BB#6:                                 # %if.end.19
                                        #   in Loop: Header=BB104_2 Depth=1
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rbx
	movq	%rbx, %rax
	shrq	$4, %rax
	andl	$15, %eax
	movzbl	32(%r12), %ecx
	cmpl	$114, %ecx
	jne	.LBB104_7
# BB#9:                                 # %sw.bb.22
                                        #   in Loop: Header=BB104_2 Depth=1
	orq	$32, %rax
	jmp	.LBB104_10
	.align	16, 0x90
.LBB104_7:                              # %if.end.19
                                        #   in Loop: Header=BB104_2 Depth=1
	cmpl	$113, %ecx
	jne	.LBB104_10
# BB#8:                                 # %sw.bb
                                        #   in Loop: Header=BB104_2 Depth=1
	orq	$16, %rax
.LBB104_10:                             # %sw.epilog
                                        #   in Loop: Header=BB104_2 Depth=1
	movslq	976(%r12), %r14
	addq	%rax, %r14
	movl	544(%r12), %ebp
	movq	%r12, %rdi
	callq	Current_Ratio
	movl	$65536, %edx            # imm = 0x10000
	movl	%ebp, %edi
	movl	%eax, %esi
	callq	MulDiv_Round
	cltq
	cmpq	%r14, %rax
	jne	.LBB104_12
# BB#11:                                # %if.then.29
                                        #   in Loop: Header=BB104_2 Depth=1
	andl	$15, %ebx
	leaq	-8(%rbx), %rax
	addq	$-7, %rbx
	testq	%rax, %rax
	cmovsq	%rax, %rbx
	shlq	$6, %rbx
	movb	980(%r12), %cl
	movl	$1, %esi
	shlq	%cl, %rsi
	movq	%rbx, %rax
	cqto
	idivq	%rsi
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%r15d, %edx
	movl	%eax, %ecx
	callq	*1152(%r12)
.LBB104_12:                             # %for.inc
                                        #   in Loop: Header=BB104_2 Depth=1
	movl	448(%r12), %eax
	incq	%r13
	cmpq	8(%rsp), %r13           # 8-byte Folded Reload
	jl	.LBB104_2
.LBB104_13:                             # %for.end
	movl	%eax, 452(%r12)
	jmp	.LBB104_14
.LBB104_3:                              # %if.then
	movl	$1025, 8(%r12)          # imm = 0x401
.LBB104_14:                             # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end104:
	.size	Ins_DELTAP, .Lfunc_end104-Ins_DELTAP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SDB,@function
Ins_SDB:                                # @Ins_SDB
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 976(%rdi)
	retq
.Lfunc_end105:
	.size	Ins_SDB, .Lfunc_end105-Ins_SDB
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SDS,@function
Ins_SDS:                                # @Ins_SDS
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	movl	%eax, 980(%rdi)
	retq
.Lfunc_end106:
	.size	Ins_SDS, .Lfunc_end106-Ins_SDS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ADD,@function
Ins_ADD:                                # @Ins_ADD
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	addq	%rax, (%rsi)
	retq
.Lfunc_end107:
	.size	Ins_ADD, .Lfunc_end107-Ins_ADD
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SUB,@function
Ins_SUB:                                # @Ins_SUB
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	subq	%rax, (%rsi)
	retq
.Lfunc_end108:
	.size	Ins_SUB, .Lfunc_end108-Ins_SUB
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_DIV,@function
Ins_DIV:                                # @Ins_DIV
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB109_1
# BB#2:                                 # %if.end
	movl	(%rbx), %edi
	movl	$64, %esi
	callq	MulDiv_Round
	cltq
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.LBB109_1:                              # %if.then
	movl	$1029, 8(%rdi)          # imm = 0x405
	popq	%rbx
	retq
.Lfunc_end109:
	.size	Ins_DIV, .Lfunc_end109-Ins_DIV
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MUL,@function
Ins_MUL:                                # @Ins_MUL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	(%rbx), %edi
	movl	8(%rbx), %esi
	movl	$64, %edx
	callq	MulDiv_Round
	cltq
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end110:
	.size	Ins_MUL, .Lfunc_end110-Ins_MUL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ABS,@function
Ins_ABS:                                # @Ins_ABS
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rax, %rcx
	negq	%rcx
	cmovlq	%rax, %rcx
	movq	%rcx, (%rsi)
	retq
.Lfunc_end111:
	.size	Ins_ABS, .Lfunc_end111-Ins_ABS
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_NEG,@function
Ins_NEG:                                # @Ins_NEG
	.cfi_startproc
# BB#0:                                 # %entry
	negq	(%rsi)
	retq
.Lfunc_end112:
	.size	Ins_NEG, .Lfunc_end112-Ins_NEG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FLOOR,@function
Ins_FLOOR:                              # @Ins_FLOOR
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-64, (%rsi)
	retq
.Lfunc_end113:
	.size	Ins_FLOOR, .Lfunc_end113-Ins_FLOOR
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_CEILING,@function
Ins_CEILING:                            # @Ins_CEILING
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	addq	$63, %rax
	andq	$-64, %rax
	movq	%rax, (%rsi)
	retq
.Lfunc_end114:
	.size	Ins_CEILING, .Lfunc_end114-Ins_CEILING
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ROUND,@function
Ins_ROUND:                              # @Ins_ROUND
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	(%rbx), %esi
	movzbl	32(%rdi), %eax
	movl	160(%rdi,%rax,4), %edx
	callq	*1120(%rdi)
	cltq
	movq	%rax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end115:
	.size	Ins_ROUND, .Lfunc_end115-Ins_ROUND
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_NROUND,@function
Ins_NROUND:                             # @Ins_NROUND
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %ecx
	movzbl	32(%rdi), %eax
	movl	144(%rdi,%rax,4), %eax
	xorl	%edx, %edx
	testl	%ecx, %ecx
	js	.LBB116_2
# BB#1:                                 # %if.then.i
	addl	%ecx, %eax
	cmovsl	%edx, %eax
	jmp	.LBB116_3
.LBB116_2:                              # %if.else.i
	subl	%eax, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, %eax
.LBB116_3:                              # %Round_None.exit
	cltq
	movq	%rax, (%rsi)
	retq
.Lfunc_end116:
	.size	Ins_NROUND, .Lfunc_end116-Ins_NROUND
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_WCVTF,@function
Ins_WCVTF:                              # @Ins_WCVTF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp208:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp209:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp210:
	.cfi_def_cfa_offset 32
.Ltmp211:
	.cfi_offset %rbx, -24
.Ltmp212:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	testq	%rax, %rax
	js	.LBB117_2
# BB#1:                                 # %lor.lhs.false
	movslq	1100(%rbx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB117_2
# BB#3:                                 # %if.end
	movl	8(%r14), %edi
	movl	560(%rbx), %esi
	movl	568(%rbx), %edx
	callq	MulDiv_Round
	cltq
	movq	(%r14), %rcx
	movq	1104(%rbx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB117_4
.LBB117_2:                              # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB117_4:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end117:
	.size	Ins_WCVTF, .Lfunc_end117-Ins_WCVTF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_DELTAC,@function
Ins_DELTAC:                             # @Ins_DELTAC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp216:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp217:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp218:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp219:
	.cfi_def_cfa_offset 64
.Ltmp220:
	.cfi_offset %rbx, -56
.Ltmp221:
	.cfi_offset %r12, -48
.Ltmp222:
	.cfi_offset %r13, -40
.Ltmp223:
	.cfi_offset %r14, -32
.Ltmp224:
	.cfi_offset %r15, -24
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	(%rsi), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%rax, %rax
	movl	448(%r15), %eax
	jle	.LBB118_13
# BB#1:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB118_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %eax
	jle	.LBB118_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB118_2 Depth=1
	leal	-2(%rax), %ecx
	movl	%ecx, 448(%r15)
	decl	%eax
	movslq	%eax, %rdx
	movq	440(%r15), %rax
	movq	(%rax,%rdx,8), %r14
	movslq	1100(%r15), %rdx
	cmpq	%rdx, %r14
	jge	.LBB118_5
# BB#6:                                 # %if.end.14
                                        #   in Loop: Header=BB118_2 Depth=1
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rbx
	movq	%rbx, %rax
	shrq	$4, %rax
	andl	$15, %eax
	movzbl	32(%r15), %ecx
	cmpl	$117, %ecx
	jne	.LBB118_7
# BB#9:                                 # %sw.bb.17
                                        #   in Loop: Header=BB118_2 Depth=1
	orq	$32, %rax
	jmp	.LBB118_10
	.align	16, 0x90
.LBB118_7:                              # %if.end.14
                                        #   in Loop: Header=BB118_2 Depth=1
	cmpl	$116, %ecx
	jne	.LBB118_10
# BB#8:                                 # %sw.bb
                                        #   in Loop: Header=BB118_2 Depth=1
	orq	$16, %rax
.LBB118_10:                             # %sw.epilog
                                        #   in Loop: Header=BB118_2 Depth=1
	movslq	976(%r15), %r12
	addq	%rax, %r12
	movl	544(%r15), %ebp
	movq	%r15, %rdi
	callq	Current_Ratio
	movl	$65536, %edx            # imm = 0x10000
	movl	%ebp, %edi
	movl	%eax, %esi
	callq	MulDiv_Round
	cltq
	cmpq	%r12, %rax
	jne	.LBB118_12
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB118_2 Depth=1
	andl	$15, %ebx
	leaq	-8(%rbx), %rax
	addq	$-7, %rbx
	testq	%rax, %rax
	cmovsq	%rax, %rbx
	shlq	$6, %rbx
	movb	980(%r15), %cl
	movl	$1, %esi
	shlq	%cl, %rsi
	movq	%rbx, %rax
	cqto
	idivq	%rsi
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%eax, %edx
	callq	*1176(%r15)
.LBB118_12:                             # %for.inc
                                        #   in Loop: Header=BB118_2 Depth=1
	movl	448(%r15), %eax
	incq	%r13
	cmpq	(%rsp), %r13            # 8-byte Folded Reload
	jl	.LBB118_2
.LBB118_13:                             # %for.end
	movl	%eax, 452(%r15)
	jmp	.LBB118_14
.LBB118_3:                              # %if.then
	movl	$1025, 8(%r15)          # imm = 0x401
	jmp	.LBB118_14
.LBB118_5:                              # %if.then.12
	movl	$1032, 8(%r15)          # imm = 0x408
.LBB118_14:                             # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end118:
	.size	Ins_DELTAC, .Lfunc_end118-Ins_DELTAC
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SROUND,@function
Ins_SROUND:                             # @Ins_SROUND
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movl	%eax, %ecx
	andl	$192, %ecx
	cmpq	$127, %rcx
	jg	.LBB119_3
# BB#1:                                 # %entry
	testq	%rcx, %rcx
	jne	.LBB119_2
# BB#6:                                 # %sw.bb.i
	movl	$8192, 456(%rdi)        # imm = 0x2000
	jmp	.LBB119_8
.LBB119_3:                              # %entry
	cmpq	$128, %rcx
	jne	.LBB119_4
# BB#7:                                 # %sw.bb.3.i
	movl	$32768, 456(%rdi)       # imm = 0x8000
	jmp	.LBB119_8
.LBB119_2:                              # %entry
	cmpq	$64, %rcx
	je	.LBB119_5
	jmp	.LBB119_8
.LBB119_4:                              # %entry
	cmpq	$192, %rcx
	jne	.LBB119_8
.LBB119_5:                              # %sw.bb.5.i
	movl	$16384, 456(%rdi)       # imm = 0x4000
.LBB119_8:                              # %sw.epilog.i
	movl	%eax, %ecx
	andl	$48, %ecx
	cmpq	$31, %rcx
	jg	.LBB119_12
# BB#9:                                 # %sw.epilog.i
	testq	%rcx, %rcx
	jne	.LBB119_10
# BB#15:                                # %sw.bb.8.i
	movl	$0, 460(%rdi)
	jmp	.LBB119_18
.LBB119_12:                             # %sw.epilog.i
	cmpq	$32, %rcx
	jne	.LBB119_13
# BB#16:                                # %sw.bb.13.i
	movl	456(%rdi), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	jmp	.LBB119_17
.LBB119_10:                             # %sw.epilog.i
	cmpq	$16, %rcx
	jne	.LBB119_18
# BB#11:                                # %sw.bb.9.i
	movl	456(%rdi), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
.LBB119_17:                             # %sw.epilog.21.i
	movl	%edx, 460(%rdi)
	jmp	.LBB119_18
.LBB119_13:                             # %sw.epilog.i
	cmpq	$48, %rcx
	jne	.LBB119_18
# BB#14:                                # %sw.bb.17.i
	movl	$12288, 460(%rdi)       # imm = 0x3000
.LBB119_18:                             # %sw.epilog.21.i
	andq	$15, %rax
	movslq	456(%rdi), %rdx
	je	.LBB119_19
# BB#20:                                # %if.else.i
	addq	$-4, %rax
	imulq	%rdx, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$61, %rcx
	addq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB119_21
.LBB119_19:                             # %if.then.i
	leal	-1(%rdx), %ecx
.LBB119_21:                             # %SetSuperRound.exit
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%edx, %eax
	sarl	$8, %eax
	movl	%eax, 456(%rdi)
	movl	460(%rdi), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	addl	%eax, %edx
	sarl	$8, %edx
	movl	%edx, 460(%rdi)
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%ecx, %eax
	sarl	$8, %eax
	movl	%eax, 464(%rdi)
	movl	$6, 956(%rdi)
	movq	$Round_Super, 1120(%rdi)
	retq
.Lfunc_end119:
	.size	Ins_SROUND, .Lfunc_end119-Ins_SROUND
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_S45ROUND,@function
Ins_S45ROUND:                           # @Ins_S45ROUND
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movl	%eax, %ecx
	andl	$192, %ecx
	cmpq	$127, %rcx
	jg	.LBB120_3
# BB#1:                                 # %entry
	testq	%rcx, %rcx
	jne	.LBB120_2
# BB#6:                                 # %sw.bb.i
	movl	$5792, 456(%rdi)        # imm = 0x16A0
	jmp	.LBB120_8
.LBB120_3:                              # %entry
	cmpq	$128, %rcx
	jne	.LBB120_4
# BB#7:                                 # %sw.bb.3.i
	movl	$23170, 456(%rdi)       # imm = 0x5A82
	jmp	.LBB120_8
.LBB120_2:                              # %entry
	cmpq	$64, %rcx
	je	.LBB120_5
	jmp	.LBB120_8
.LBB120_4:                              # %entry
	cmpq	$192, %rcx
	jne	.LBB120_8
.LBB120_5:                              # %sw.bb.5.i
	movl	$11585, 456(%rdi)       # imm = 0x2D41
.LBB120_8:                              # %sw.epilog.i
	movl	%eax, %ecx
	andl	$48, %ecx
	cmpq	$31, %rcx
	jg	.LBB120_12
# BB#9:                                 # %sw.epilog.i
	testq	%rcx, %rcx
	jne	.LBB120_10
# BB#15:                                # %sw.bb.8.i
	movl	$0, 460(%rdi)
	jmp	.LBB120_18
.LBB120_12:                             # %sw.epilog.i
	cmpq	$32, %rcx
	jne	.LBB120_13
# BB#16:                                # %sw.bb.13.i
	movl	456(%rdi), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	jmp	.LBB120_17
.LBB120_10:                             # %sw.epilog.i
	cmpq	$16, %rcx
	jne	.LBB120_18
# BB#11:                                # %sw.bb.9.i
	movl	456(%rdi), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$30, %edx
	addl	%ecx, %edx
	sarl	$2, %edx
.LBB120_17:                             # %sw.epilog.21.i
	movl	%edx, 460(%rdi)
	jmp	.LBB120_18
.LBB120_13:                             # %sw.epilog.i
	cmpq	$48, %rcx
	jne	.LBB120_18
# BB#14:                                # %sw.bb.17.i
	movl	$8688, 460(%rdi)        # imm = 0x21F0
.LBB120_18:                             # %sw.epilog.21.i
	andq	$15, %rax
	movslq	456(%rdi), %rdx
	je	.LBB120_19
# BB#20:                                # %if.else.i
	addq	$-4, %rax
	imulq	%rdx, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$61, %rcx
	addq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB120_21
.LBB120_19:                             # %if.then.i
	leal	-1(%rdx), %ecx
.LBB120_21:                             # %SetSuperRound.exit
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%edx, %eax
	sarl	$8, %eax
	movl	%eax, 456(%rdi)
	movl	460(%rdi), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	addl	%eax, %edx
	sarl	$8, %edx
	movl	%edx, 460(%rdi)
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	addl	%ecx, %eax
	sarl	$8, %eax
	movl	%eax, 464(%rdi)
	movl	$7, 956(%rdi)
	movq	$Round_Super_45, 1120(%rdi)
	retq
.Lfunc_end120:
	.size	Ins_S45ROUND, .Lfunc_end120-Ins_S45ROUND
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_JROT,@function
Ins_JROT:                               # @Ins_JROT
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 8(%rsi)
	je	.LBB121_4
# BB#1:                                 # %if.then
	movslq	24(%rdi), %rcx
	movslq	(%rsi), %rax
	addq	%rcx, %rax
	movl	%eax, 24(%rdi)
	movl	$0, 40(%rdi)
	movq	16(%rdi), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	je	.LBB121_4
# BB#2:                                 # %land.lhs.true
	movzbl	-1(%rcx,%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB121_4
# BB#3:                                 # %if.then.14
	decq	%rax
	movl	%eax, 24(%rdi)
.LBB121_4:                              # %if.end.17
	retq
.Lfunc_end121:
	.size	Ins_JROT, .Lfunc_end121-Ins_JROT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_JROF,@function
Ins_JROF:                               # @Ins_JROF
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 8(%rsi)
	jne	.LBB122_4
# BB#1:                                 # %if.then
	movslq	24(%rdi), %rcx
	movslq	(%rsi), %rax
	addq	%rcx, %rax
	movl	%eax, 24(%rdi)
	movl	$0, 40(%rdi)
	movq	16(%rdi), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	je	.LBB122_4
# BB#2:                                 # %land.lhs.true
	movzbl	-1(%rcx,%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB122_4
# BB#3:                                 # %if.then.14
	decq	%rax
	movl	%eax, 24(%rdi)
.LBB122_4:                              # %if.end.17
	retq
.Lfunc_end122:
	.size	Ins_JROF, .Lfunc_end122-Ins_JROF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ROFF,@function
Ins_ROFF:                               # @Ins_ROFF
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$5, 956(%rdi)
	movq	$Round_None, 1120(%rdi)
	retq
.Lfunc_end123:
	.size	Ins_ROFF, .Lfunc_end123-Ins_ROFF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RUTG,@function
Ins_RUTG:                               # @Ins_RUTG
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, 956(%rdi)
	movq	$Round_Up_To_Grid, 1120(%rdi)
	retq
.Lfunc_end124:
	.size	Ins_RUTG, .Lfunc_end124-Ins_RUTG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_RDTG,@function
Ins_RDTG:                               # @Ins_RDTG
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, 956(%rdi)
	movq	$Round_Down_To_Grid, 1120(%rdi)
	retq
.Lfunc_end125:
	.size	Ins_RDTG, .Lfunc_end125-Ins_RDTG
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SANGW,@function
Ins_SANGW:                              # @Ins_SANGW
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end126:
	.size	Ins_SANGW, .Lfunc_end126-Ins_SANGW
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_AA,@function
Ins_AA:                                 # @Ins_AA
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end127:
	.size	Ins_AA, .Lfunc_end127-Ins_AA
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FLIPPT,@function
Ins_FLIPPT:                             # @Ins_FLIPPT
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	436(%rdi), %rcx
	movq	944(%rdi), %rax
	cmpq	%rax, %rcx
	jge	.LBB128_1
# BB#8:                                 # %if.then
	movl	$1025, 8(%rdi)          # imm = 0x401
	retq
.LBB128_1:                              # %while.cond.preheader
	testq	%rax, %rax
	jle	.LBB128_6
	.align	16, 0x90
.LBB128_2:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	448(%rdi), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, 448(%rdi)
	movq	440(%rdi), %rcx
	movq	-8(%rcx,%rax,8), %rax
	testq	%rax, %rax
	js	.LBB128_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB128_2 Depth=1
	movslq	800(%rdi), %rcx
	cmpq	%rcx, %rax
	jge	.LBB128_4
# BB#5:                                 # %if.end.15
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	840(%rdi), %rcx
	xorb	$1, (%rcx,%rax)
	movq	944(%rdi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 944(%rdi)
	cmpq	$1, %rax
	jg	.LBB128_2
.LBB128_6:                              # %while.end
	movq	$1, 944(%rdi)
	movl	448(%rdi), %eax
	movl	%eax, 452(%rdi)
	retq
.LBB128_4:                              # %if.then.13
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end128:
	.size	Ins_FLIPPT, .Lfunc_end128-Ins_FLIPPT
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FLIPRGON,@function
Ins_FLIPRGON:                           # @Ins_FLIPRGON
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	testq	%rax, %rax
	js	.LBB129_8
# BB#1:                                 # %lor.lhs.false
	movq	(%rsi), %rcx
	movslq	800(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB129_8
# BB#2:                                 # %lor.lhs.false
	testq	%rcx, %rcx
	js	.LBB129_8
# BB#3:                                 # %lor.lhs.false
	cmpq	%rdx, %rax
	jge	.LBB129_8
# BB#4:                                 # %for.cond.preheader
	cmpq	%rax, %rcx
	jg	.LBB129_7
# BB#5:                                 # %for.body.lr.ph
	decq	%rcx
	.align	16, 0x90
.LBB129_6:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	840(%rdi), %rdx
	orb	$1, 1(%rdx,%rcx)
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB129_6
.LBB129_7:                              # %cleanup
	retq
.LBB129_8:                              # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end129:
	.size	Ins_FLIPRGON, .Lfunc_end129-Ins_FLIPRGON
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_FLIPRGOFF,@function
Ins_FLIPRGOFF:                          # @Ins_FLIPRGOFF
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	testq	%rax, %rax
	js	.LBB130_8
# BB#1:                                 # %lor.lhs.false
	movq	(%rsi), %rcx
	movslq	800(%rdi), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB130_8
# BB#2:                                 # %lor.lhs.false
	testq	%rcx, %rcx
	js	.LBB130_8
# BB#3:                                 # %lor.lhs.false
	cmpq	%rdx, %rax
	jge	.LBB130_8
# BB#4:                                 # %for.cond.preheader
	cmpq	%rax, %rcx
	jg	.LBB130_7
# BB#5:                                 # %for.body.lr.ph
	decq	%rcx
	.align	16, 0x90
.LBB130_6:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	840(%rdi), %rdx
	andb	$-2, 1(%rdx,%rcx)
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB130_6
.LBB130_7:                              # %cleanup
	retq
.LBB130_8:                              # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.Lfunc_end130:
	.size	Ins_FLIPRGOFF, .Lfunc_end130-Ins_FLIPRGOFF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SCANCTRL,@function
Ins_SCANCTRL:                           # @Ins_SCANCTRL
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movl	%eax, %ecx
	andl	$255, %ecx
	je	.LBB131_20
# BB#1:                                 # %entry
	cmpl	$255, %ecx
	jne	.LBB131_3
# BB#2:                                 # %if.then
	movl	$1, 988(%rdi)
	retq
.LBB131_3:                              # %if.end.7
	shll	$6, %ecx
	testb	$1, %ah
	je	.LBB131_6
# BB#4:                                 # %land.lhs.true
	cmpl	%ecx, 472(%rdi)
	jg	.LBB131_6
# BB#5:                                 # %if.then.14
	movl	$1, 988(%rdi)
.LBB131_6:                              # %if.end.17
	testb	$2, %ah
	je	.LBB131_9
# BB#7:                                 # %land.lhs.true.22
	cmpl	$0, 592(%rdi)
	je	.LBB131_9
# BB#8:                                 # %if.then.24
	movl	$1, 988(%rdi)
.LBB131_9:                              # %if.end.27
	testb	$4, %ah
	je	.LBB131_12
# BB#10:                                # %land.lhs.true.32
	cmpl	$0, 596(%rdi)
	je	.LBB131_12
# BB#11:                                # %if.then.35
	movl	$1, 988(%rdi)
.LBB131_12:                             # %if.end.38
	testb	$8, %ah
	je	.LBB131_15
# BB#13:                                # %land.lhs.true.43
	cmpl	%ecx, 472(%rdi)
	jle	.LBB131_15
# BB#14:                                # %if.then.48
	movl	$0, 988(%rdi)
.LBB131_15:                             # %if.end.51
	testb	$16, %ah
	je	.LBB131_18
# BB#16:                                # %land.lhs.true.56
	cmpl	$0, 592(%rdi)
	je	.LBB131_18
# BB#17:                                # %if.then.60
	movl	$0, 988(%rdi)
.LBB131_18:                             # %if.end.63
	testb	$32, %ah
	je	.LBB131_21
# BB#19:                                # %land.lhs.true.68
	cmpl	$0, 596(%rdi)
	je	.LBB131_21
.LBB131_20:                             # %if.then.72
	movl	$0, 988(%rdi)
.LBB131_21:                             # %cleanup
	retq
.Lfunc_end131:
	.size	Ins_SCANCTRL, .Lfunc_end131-Ins_SCANCTRL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SDPVTL,@function
Ins_SDPVTL:                             # @Ins_SDPVTL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp226:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp228:
	.cfi_def_cfa_offset 32
.Ltmp229:
	.cfi_offset %rbx, -32
.Ltmp230:
	.cfi_offset %r14, -24
.Ltmp231:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	js	.LBB132_4
# BB#1:                                 # %lor.lhs.false
	movq	8(%rsi), %r15
	testq	%r15, %r15
	js	.LBB132_4
# BB#2:                                 # %lor.lhs.false
	movslq	688(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB132_4
# BB#3:                                 # %lor.lhs.false.7
	movslq	744(%rbx), %rax
	cmpq	%rax, %r15
	jge	.LBB132_4
# BB#5:                                 # %if.end
	movq	696(%rbx), %rax
	movl	(%rax,%r14,4), %eax
	movq	752(%rbx), %rcx
	subl	(%rcx,%r15,4), %eax
	movq	704(%rbx), %rcx
	movl	(%rcx,%r14,4), %edx
	movq	760(%rbx), %rcx
	subl	(%rcx,%r15,4), %edx
	movb	32(%rbx), %cl
	movl	%edx, %esi
	negl	%esi
	andb	$1, %cl
	cmovnel	%eax, %edx
	testb	%cl, %cl
	cmovel	%eax, %esi
	leaq	932(%rbx), %rcx
	movq	%rbx, %rdi
	callq	Normalize
	cmpl	$-1, %eax
	je	.LBB132_7
# BB#6:                                 # %if.end.36
	movq	712(%rbx), %rax
	movl	(%rax,%r14,4), %eax
	movq	768(%rbx), %rcx
	subl	(%rcx,%r15,4), %eax
	movq	720(%rbx), %rcx
	movl	(%rcx,%r14,4), %edx
	movq	776(%rbx), %rcx
	subl	(%rcx,%r15,4), %edx
	movb	32(%rbx), %cl
	movl	%edx, %esi
	negl	%esi
	andb	$1, %cl
	cmovnel	%eax, %edx
	testb	%cl, %cl
	cmovel	%eax, %esi
	leaq	936(%rbx), %rcx
	movq	%rbx, %rdi
	callq	Normalize
	cmpl	$-1, %eax
	je	.LBB132_7
# BB#8:                                 # %if.end.66
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	Compute_Funcs           # TAILCALL
.LBB132_4:                              # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB132_7:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end132:
	.size	Ins_SDPVTL, .Lfunc_end132-Ins_SDPVTL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_GETINFO,@function
Ins_GETINFO:                            # @Ins_GETINFO
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	andl	$1, %eax
	cmpl	$0, 592(%rdi)
	je	.LBB133_1
# BB#2:                                 # %select.mid
	leaq	128(%rax,%rax,2), %rax
	jmp	.LBB133_3
.LBB133_1:
	leaq	(%rax,%rax,2), %rax
.LBB133_3:                              # %select.end
	cmpl	$0, 596(%rdi)
	je	.LBB133_5
# BB#4:                                 # %select.mid7
	orq	$256, %rax              # imm = 0x100
.LBB133_5:                              # %select.end6
	movq	%rax, (%rsi)
	retq
.Lfunc_end133:
	.size	Ins_GETINFO, .Lfunc_end133-Ins_GETINFO
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_IDEF,@function
Ins_IDEF:                               # @Ins_IDEF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	72(%rbx), %eax
	cmpl	56(%rbx), %eax
	jge	.LBB134_2
# BB#1:                                 # %lor.lhs.false
	movq	(%rsi), %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jl	.LBB134_3
.LBB134_2:                              # %if.then
	movl	$1030, 8(%rbx)          # imm = 0x406
	popq	%rbx
	retq
.LBB134_3:                              # %if.else
	movzbl	%cl, %ecx
	movb	%al, 76(%rbx,%rcx)
	movslq	72(%rbx), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 72(%rbx)
	movq	64(%rbx), %rcx
	movb	(%rsi), %dl
	shlq	$4, %rax
	movb	%dl, 8(%rcx,%rax)
	movl	24(%rbx), %edx
	incl	%edx
	movl	%edx, 4(%rcx,%rax)
	movl	12(%rbx), %edx
	movl	%edx, (%rcx,%rax)
	movl	$1, 12(%rcx,%rax)
.LBB134_4:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	SkipCode
	testl	%eax, %eax
	jne	.LBB134_9
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB134_4 Depth=1
	movzbl	32(%rbx), %eax
	cmpl	$137, %eax
	je	.LBB134_8
# BB#6:                                 # %while.body.i
                                        #   in Loop: Header=BB134_4 Depth=1
	cmpl	$45, %eax
	je	.LBB134_9
# BB#7:                                 # %while.body.i
                                        #   in Loop: Header=BB134_4 Depth=1
	cmpl	$44, %eax
	jne	.LBB134_4
.LBB134_8:                              # %sw.bb.i
	movl	$1038, 8(%rbx)          # imm = 0x40E
.LBB134_9:                              # %if.end
	popq	%rbx
	retq
.Lfunc_end134:
	.size	Ins_IDEF, .Lfunc_end134-Ins_IDEF
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_ROLL,@function
Ins_ROLL:                               # @Ins_ROLL
	.cfi_startproc
# BB#0:                                 # %entry
	movups	8(%rsi), %xmm0
	movq	(%rsi), %rax
	movq	%rax, 16(%rsi)
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end135:
	.size	Ins_ROLL, .Lfunc_end135-Ins_ROLL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MAX,@function
Ins_MAX:                                # @Ins_MAX
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	cmpq	(%rsi), %rax
	jle	.LBB136_2
# BB#1:                                 # %if.then
	movq	%rax, (%rsi)
.LBB136_2:                              # %if.end
	retq
.Lfunc_end136:
	.size	Ins_MAX, .Lfunc_end136-Ins_MAX
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MIN,@function
Ins_MIN:                                # @Ins_MIN
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	cmpq	(%rsi), %rax
	jge	.LBB137_2
# BB#1:                                 # %if.then
	movq	%rax, (%rsi)
.LBB137_2:                              # %if.end
	retq
.Lfunc_end137:
	.size	Ins_MIN, .Lfunc_end137-Ins_MIN
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_SCANTYPE,@function
Ins_SCANTYPE:                           # @Ins_SCANTYPE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	$5, %rax
	ja	.LBB138_4
# BB#1:                                 # %if.then
	cmpq	$3, %rax
	jne	.LBB138_3
# BB#2:                                 # %if.then.5
	movq	$2, (%rsi)
	movl	$2, %eax
.LBB138_3:                              # %if.end
	movl	%eax, 992(%rdi)
.LBB138_4:                              # %if.end.8
	retq
.Lfunc_end138:
	.size	Ins_SCANTYPE, .Lfunc_end138-Ins_SCANTYPE
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_INSTCTRL,@function
Ins_INSTCTRL:                           # @Ins_INSTCTRL
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	cmpq	$4, %rax
	jb	.LBB139_2
# BB#1:                                 # %if.then
	movl	$1032, 8(%rdi)          # imm = 0x408
	retq
.LBB139_2:                              # %if.end
	movzbl	984(%rdi), %ecx
	movl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	andl	(%rsi), %eax
	orl	%edx, %eax
	movb	%al, 984(%rdi)
	retq
.Lfunc_end139:
	.size	Ins_INSTCTRL, .Lfunc_end139-Ins_INSTCTRL
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_PUSHB,@function
Ins_PUSHB:                              # @Ins_PUSHB
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	32(%rdi), %edx
	cmpl	$175, %edx
	jb	.LBB140_9
# BB#1:                                 # %lor.lhs.false
	leal	-175(%rdx), %eax
	movl	432(%rdi), %ecx
	incl	%ecx
	subl	436(%rdi), %ecx
	cmpl	%ecx, %eax
	jge	.LBB140_9
# BB#2:                                 # %for.cond.preheader
	testl	%eax, %eax
	jle	.LBB140_8
# BB#3:                                 # %for.body.lr.ph
	movslq	24(%rdi), %r8
	movq	16(%rdi), %rax
	movl	$1, %ecx
	testb	$1, %dl
	jne	.LBB140_5
# BB#4:                                 # %for.body.prol
	movzbl	1(%r8,%rax), %ecx
	movq	%rcx, (%rsi)
	movl	$2, %ecx
.LBB140_5:                              # %for.body.lr.ph.split
	cmpl	$176, %edx
	je	.LBB140_8
# BB#6:                                 # %for.body.lr.ph.split.split
	movl	$174, %r9d
	subl	%edx, %r9d
	incq	%rcx
	movl	%r8d, %r8d
	.align	16, 0x90
.LBB140_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rcx), %rdi
	leal	-1(%rdi), %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %edx
	movq	%rdx, -16(%rsi,%rcx,8)
	movslq	%edi, %rdx
	movzbl	(%rax,%rdx), %edx
	movq	%rdx, -8(%rsi,%rcx,8)
	addq	$2, %rcx
	leal	(%r9,%rcx), %edx
	cmpl	$1, %edx
	jne	.LBB140_7
.LBB140_8:                              # %cleanup
	retq
.LBB140_9:                              # %if.then
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.Lfunc_end140:
	.size	Ins_PUSHB, .Lfunc_end140-Ins_PUSHB
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_PUSHW,@function
Ins_PUSHW:                              # @Ins_PUSHW
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	32(%rdi), %eax
	cmpq	$183, %rax
	jb	.LBB141_2
# BB#1:                                 # %lor.lhs.false
	leaq	-183(%rax), %r8
	movl	432(%rdi), %ecx
	incl	%ecx
	subl	436(%rdi), %ecx
	cmpl	%ecx, %r8d
	jge	.LBB141_2
# BB#3:                                 # %if.end
	movl	24(%rdi), %r11d
	leal	1(%r11), %edx
	movl	%edx, 24(%rdi)
	movzbl	%al, %eax
	cmpl	$184, %eax
	jb	.LBB141_6
# BB#4:                                 # %for.body.lr.ph
	movq	16(%rdi), %r9
	addl	$3, %r11d
	movslq	%edx, %rax
	leaq	(%rax,%r9), %r10
	xorl	%edx, %edx
	.align	16, 0x90
.LBB141_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r11d, 24(%rdi)
	movzbl	(%r10,%rdx,2), %eax
	shll	$8, %eax
	leal	-1(%r11), %ecx
	movslq	%ecx, %rcx
	movzbl	(%r9,%rcx), %ecx
	orl	%eax, %ecx
	movswq	%cx, %rax
	movq	%rax, (%rsi,%rdx,8)
	incq	%rdx
	addl	$2, %r11d
	cmpq	%r8, %rdx
	jl	.LBB141_5
.LBB141_6:                              # %for.end
	movl	$0, 40(%rdi)
	retq
.LBB141_2:                              # %if.then
	movl	$1026, 8(%rdi)          # imm = 0x402
	retq
.Lfunc_end141:
	.size	Ins_PUSHW, .Lfunc_end141-Ins_PUSHW
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MDRP,@function
Ins_MDRP:                               # @Ins_MDRP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp235:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp236:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp237:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp238:
	.cfi_def_cfa_offset 48
.Ltmp239:
	.cfi_offset %rbx, -48
.Ltmp240:
	.cfi_offset %r12, -40
.Ltmp241:
	.cfi_offset %r14, -32
.Ltmp242:
	.cfi_offset %r15, -24
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	js	.LBB142_15
# BB#1:                                 # %lor.lhs.false
	movslq	688(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB142_15
# BB#2:                                 # %if.end
	movq	%r14, %rax
	shlq	$32, %rax
	movq	696(%rbx), %rcx
	sarq	$30, %rax
	movl	(%rcx,%rax), %esi
	movslq	920(%rbx), %rcx
	movq	640(%rbx), %rdx
	movq	648(%rbx), %rdi
	subl	(%rdx,%rcx,4), %esi
	movq	704(%rbx), %rdx
	movl	(%rdx,%rax), %edx
	subl	(%rdi,%rcx,4), %edx
	movq	%rbx, %rdi
	callq	*1136(%rbx)
	movl	%eax, %r15d
	negl	%eax
	cmovll	%r15d, %eax
	cmpl	968(%rbx), %eax
	jge	.LBB142_4
# BB#3:                                 # %if.then.28
	movl	972(%rbx), %eax
	movl	%eax, %ecx
	negl	%ecx
	testl	%r15d, %r15d
	cmovnsl	%eax, %ecx
	movl	%ecx, %r15d
.LBB142_4:                              # %if.end.37
	movb	32(%rbx), %al
	movzbl	%al, %ecx
	testb	$4, %cl
	jne	.LBB142_5
# BB#6:                                 # %if.else.48
	andl	$3, %ecx
	movl	576(%rbx,%rcx,4), %ebp
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	js	.LBB142_8
# BB#7:                                 # %if.then.i
	addl	%r15d, %ebp
	cmovsl	%ecx, %ebp
	jmp	.LBB142_9
.LBB142_5:                              # %if.then.41
	andl	$3, %ecx
	movl	576(%rbx,%rcx,4), %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*1120(%rbx)
	movl	%eax, %ebp
	movb	32(%rbx), %al
	jmp	.LBB142_9
.LBB142_8:                              # %if.else.i
	movl	%r15d, %edx
	subl	%ebp, %edx
	cmovgl	%ecx, %edx
	movl	%edx, %ebp
.LBB142_9:                              # %if.end.57
	leaq	688(%rbx), %r12
	movslq	%r14d, %rcx
	testb	$8, %al
	je	.LBB142_13
# BB#10:                                # %if.then.63
	movl	952(%rbx), %eax
	testl	%r15d, %r15d
	js	.LBB142_12
# BB#11:                                # %if.then.66
	cmpl	%eax, %ebp
	cmovll	%eax, %ebp
	jmp	.LBB142_13
.LBB142_12:                             # %if.else.74
	negl	%eax
	cmpl	%eax, %ebp
	cmovgl	%eax, %ebp
.LBB142_13:                             # %if.end.86
	movq	712(%rbx), %rax
	movl	(%rax,%rcx,4), %esi
	movslq	920(%rbx), %rax
	movq	656(%rbx), %rdx
	movq	664(%rbx), %rdi
	subl	(%rdx,%rax,4), %esi
	movq	720(%rbx), %rdx
	movl	(%rdx,%rcx,4), %edx
	subl	(%rdi,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	subl	%eax, %ebp
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	callq	*1152(%rbx)
	movl	920(%rbx), %eax
	movl	%eax, 924(%rbx)
	movl	%r14d, 928(%rbx)
	testb	$16, 32(%rbx)
	je	.LBB142_15
# BB#14:                                # %if.then.119
	movl	%r14d, 920(%rbx)
.LBB142_15:                             # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end142:
	.size	Ins_MDRP, .Lfunc_end142-Ins_MDRP
	.cfi_endproc

	.align	16, 0x90
	.type	Ins_MIRP,@function
Ins_MIRP:                               # @Ins_MIRP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp245:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp247:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp248:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp250:
	.cfi_def_cfa_offset 64
.Ltmp251:
	.cfi_offset %rbx, -56
.Ltmp252:
	.cfi_offset %r12, -48
.Ltmp253:
	.cfi_offset %r13, -40
.Ltmp254:
	.cfi_offset %r14, -32
.Ltmp255:
	.cfi_offset %r15, -24
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	js	.LBB143_4
# BB#1:                                 # %lor.lhs.false
	movq	8(%rsi), %rsi
	cmpq	$-1, %rsi
	jl	.LBB143_4
# BB#2:                                 # %lor.lhs.false
	movslq	688(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB143_4
# BB#3:                                 # %lor.lhs.false.13
	leaq	1(%rsi), %rax
	movslq	1100(%rbx), %rcx
	incq	%rcx
	cmpq	%rcx, %rax
	jge	.LBB143_4
# BB#5:                                 # %if.end
	xorl	%r13d, %r13d
	testq	%rsi, %rsi
	js	.LBB143_7
# BB#6:                                 # %if.else
	movq	%rbx, %rdi
	callq	*1160(%rbx)
	movl	%eax, %r13d
.LBB143_7:                              # %if.end.24
	movl	%r13d, %eax
	negl	%eax
	cmovll	%r13d, %eax
	cmpl	968(%rbx), %eax
	jge	.LBB143_9
# BB#8:                                 # %if.then.29
	movl	972(%rbx), %eax
	movl	%eax, %ecx
	negl	%ecx
	testl	%r13d, %r13d
	cmovnsl	%eax, %ecx
	movl	%ecx, %r13d
.LBB143_9:                              # %if.end.39
	cmpl	$0, 1000(%rbx)
	je	.LBB143_11
# BB#10:                                # %if.end.39.if.end.82_crit_edge
	movq	696(%rbx), %rax
	movq	704(%rbx), %rcx
	movslq	%r14d, %r15
	jmp	.LBB143_12
.LBB143_4:                              # %if.then
	movl	$1032, 8(%rbx)          # imm = 0x408
.LBB143_27:                             # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB143_11:                             # %if.then.43
	movslq	920(%rbx), %rax
	movq	640(%rbx), %rcx
	movl	(%rcx,%rax,4), %r15d
	movswl	940(%rbx), %esi
	movl	$16384, %edx            # imm = 0x4000
	movl	%r13d, %edi
	callq	MulDiv_Round
	addl	%r15d, %eax
	movq	%r14, %rbp
	shlq	$32, %rbp
	movslq	%r14d, %r15
	movq	696(%rbx), %rcx
	sarq	$30, %rbp
	movl	%eax, (%rcx,%rbp)
	movslq	920(%rbx), %rax
	movq	648(%rbx), %rcx
	movl	(%rcx,%rax,4), %r12d
	movswl	942(%rbx), %esi
	movl	$16384, %edx            # imm = 0x4000
	movl	%r13d, %edi
	callq	MulDiv_Round
	addl	%r12d, %eax
	movq	704(%rbx), %rcx
	movl	%eax, (%rcx,%rbp)
	movq	696(%rbx), %rax
	movq	712(%rbx), %rdx
	movl	(%rax,%rbp), %esi
	movl	%esi, (%rdx,%rbp)
	movl	(%rcx,%rbp), %edx
	movq	720(%rbx), %rsi
	movl	%edx, (%rsi,%rbp)
.LBB143_12:                             # %if.end.82
	movl	(%rax,%r15,4), %esi
	movslq	920(%rbx), %rax
	movq	640(%rbx), %rdx
	movq	648(%rbx), %rdi
	subl	(%rdx,%rax,4), %esi
	movl	(%rcx,%r15,4), %edx
	subl	(%rdi,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1136(%rbx)
	movl	%eax, %r12d
	movq	712(%rbx), %rax
	movl	(%rax,%r15,4), %esi
	movslq	920(%rbx), %rax
	movq	656(%rbx), %rcx
	movq	664(%rbx), %rdi
	subl	(%rcx,%rax,4), %esi
	movq	720(%rbx), %rcx
	movl	(%rcx,%r15,4), %edx
	subl	(%rdi,%rax,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %r15d
	movl	%r13d, %esi
	negl	%esi
	cmpl	$0, 960(%rbx)
	cmovel	%r13d, %esi
	movl	%r12d, %eax
	xorl	%r13d, %eax
	cmovnsl	%r13d, %esi
	movb	32(%rbx), %al
	movzbl	%al, %ecx
	testb	$4, %cl
	jne	.LBB143_13
# BB#17:                                # %if.else.169
	andl	$3, %ecx
	movl	576(%rbx,%rcx,4), %ecx
	xorl	%edx, %edx
	testl	%esi, %esi
	js	.LBB143_19
# BB#18:                                # %if.then.i
	addl	%esi, %ecx
	cmovsl	%edx, %ecx
	jmp	.LBB143_20
.LBB143_13:                             # %if.then.140
	movl	996(%rbx), %eax
	cmpl	1000(%rbx), %eax
	jne	.LBB143_16
# BB#14:                                # %if.then.146
	movl	%esi, %eax
	subl	%r12d, %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	cmpl	964(%rbx), %edx
	jl	.LBB143_16
# BB#15:                                # %select.mid
	movl	%r12d, %esi
.LBB143_16:                             # %if.end.162
	andl	$3, %ecx
	movl	576(%rbx,%rcx,4), %edx
	movq	%rbx, %rdi
	callq	*1120(%rbx)
	movl	%eax, %ecx
	movb	32(%rbx), %al
	jmp	.LBB143_20
.LBB143_19:                             # %if.else.i
	subl	%ecx, %esi
	cmovgl	%edx, %esi
	movl	%esi, %ecx
.LBB143_20:                             # %if.end.178
	leaq	688(%rbx), %rsi
	testb	$8, %al
	je	.LBB143_24
# BB#21:                                # %if.then.184
	movl	952(%rbx), %eax
	testl	%r12d, %r12d
	js	.LBB143_23
# BB#22:                                # %if.then.187
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	jmp	.LBB143_24
.LBB143_23:                             # %if.else.195
	negl	%eax
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
.LBB143_24:                             # %if.end.207
	subl	%r15d, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	*1152(%rbx)
	movl	920(%rbx), %eax
	movl	%eax, 924(%rbx)
	testb	$16, 32(%rbx)
	je	.LBB143_26
# BB#25:                                # %if.then.218
	movl	%r14d, 920(%rbx)
.LBB143_26:                             # %if.end.221
	movl	%r14d, 928(%rbx)
	jmp	.LBB143_27
.Lfunc_end143:
	.size	Ins_MIRP, .Lfunc_end143-Ins_MIRP
	.cfi_endproc

	.align	16, 0x90
	.type	Normalize,@function
Normalize:                              # @Normalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp258:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp259:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp260:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp261:
	.cfi_def_cfa_offset 48
.Ltmp262:
	.cfi_offset %rbx, -48
.Ltmp263:
	.cfi_offset %r12, -40
.Ltmp264:
	.cfi_offset %r14, -32
.Ltmp265:
	.cfi_offset %r15, -24
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %r15
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jg	.LBB144_4
# BB#1:                                 # %land.lhs.true
	movl	%r12d, %eax
	negl	%eax
	cmovll	%r12d, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jg	.LBB144_4
# BB#2:                                 # %if.then
	shll	$8, %ebp
	shll	$8, %r12d
	movslq	%ebp, %rax
	imulq	%rax, %rax
	movslq	%r12d, %rdi
	imulq	%rdi, %rdi
	addq	%rax, %rdi
	callq	Sqrt64
	movl	%eax, %ebx
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	je	.LBB144_11
# BB#3:                                 # %if.end
	movl	$16384, %esi            # imm = 0x4000
	movl	%ebp, %edi
	movl	%ebx, %edx
	callq	MulDiv_Round
	movw	%ax, (%r14)
	movl	$16384, %esi            # imm = 0x4000
	movl	%r12d, %edi
	movl	%ebx, %edx
	callq	MulDiv_Round
	movw	%ax, 2(%r14)
	jmp	.LBB144_11
.LBB144_4:                              # %if.end.21
	movslq	%ebp, %rax
	imulq	%rax, %rax
	movslq	%r12d, %rdi
	imulq	%rdi, %rdi
	addq	%rax, %rdi
	callq	Sqrt64
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jle	.LBB144_5
# BB#6:                                 # %if.end.26
	movl	$16384, %esi            # imm = 0x4000
	movl	%ebp, %edi
	movl	%ebx, %edx
	callq	MulDiv_Round
	movl	%eax, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	cmovll	%r15d, %ebp
	movl	$16384, %esi            # imm = 0x4000
	movl	%r12d, %edi
	movl	%ebx, %edx
	callq	MulDiv_Round
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	movl	%r15d, %ecx
	imull	%ecx, %ecx
	movl	%eax, %esi
	imull	%esi, %esi
	addl	%ecx, %esi
	cmpl	$268435456, %esi        # imm = 0x10000000
	jae	.LBB144_7
	.align	16, 0x90
.LBB144_12:                             # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, %ebp
	setl	%cl
	movzbl	%cl, %ecx
	leal	(%rbp,%rcx), %ebp
	xorl	$1, %ecx
	addl	%edx, %ecx
	movl	%ebp, %edx
	imull	%edx, %edx
	movl	%ecx, %esi
	imull	%esi, %esi
	addl	%edx, %esi
	cmpl	$268435456, %esi        # imm = 0x10000000
	movl	%ecx, %edx
	jb	.LBB144_12
	jmp	.LBB144_8
.LBB144_5:                              # %if.then.25
	movl	$1029, 8(%r15)          # imm = 0x405
	movl	$-1, %r15d
	jmp	.LBB144_11
.LBB144_7:
	movl	%edx, %ecx
.LBB144_8:                              # %while.cond.54.preheader
	cmpl	$268451839, %esi        # imm = 0x10003FFF
	jle	.LBB144_10
	.align	16, 0x90
.LBB144_9:                              # %while.body.58
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %ebp
	setl	%dl
	movzbl	%dl, %edx
	setge	%bl
	subl	%edx, %ebp
	movzbl	%bl, %edx
	subl	%edx, %ecx
	movl	%ebp, %edx
	imull	%edx, %edx
	movl	%ecx, %esi
	imull	%esi, %esi
	addl	%edx, %esi
	cmpl	$268451839, %esi        # imm = 0x10003FFF
	ja	.LBB144_9
.LBB144_10:                             # %while.end.68
	movl	%ebp, %edx
	negl	%edx
	movl	%ecx, %esi
	negl	%esi
	testl	%r15d, %r15d
	cmovnsw	%bp, %dx
	testl	%eax, %eax
	movw	%dx, (%r14)
	cmovnsw	%cx, %si
	movw	%si, 2(%r14)
	xorl	%r15d, %r15d
.LBB144_11:                             # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end144:
	.size	Normalize, .Lfunc_end144-Normalize
	.cfi_endproc

	.align	16, 0x90
	.type	SkipCode,@function
SkipCode:                               # @SkipCode
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	24(%rdi), %rcx
	movslq	36(%rdi), %rax
	addq	%rcx, %rax
	movl	%eax, 24(%rdi)
	movl	28(%rdi), %ecx
	cmpl	%ecx, %eax
	jge	.LBB145_14
# BB#1:                                 # %if.then
	movq	16(%rdi), %r8
	movzbl	(%r8,%rax), %edx
	movb	%dl, 32(%rdi)
	cmpl	$183, %edx
	jg	.LBB145_10
# BB#2:                                 # %if.then
	leal	-176(%rdx), %esi
	cmpl	$8, %esi
	jae	.LBB145_3
# BB#9:                                 # %sw.bb.27.i
	addl	$-174, %edx
	movl	%edx, 36(%rdi)
	jmp	.LBB145_13
.LBB145_10:                             # %if.then
	leal	-184(%rdx), %esi
	cmpl	$8, %esi
	jae	.LBB145_12
# BB#11:                                # %sw.bb.32.i
	leal	-365(%rdx,%rdx), %edx
	movl	%edx, 36(%rdi)
.LBB145_13:                             # %Calc_Length.exit
	addl	%eax, %edx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jle	.LBB145_15
	jmp	.LBB145_14
.LBB145_3:                              # %if.then
	cmpl	$64, %edx
	jne	.LBB145_4
# BB#7:                                 # %sw.bb.i
	movslq	%eax, %rdx
	incq	%rdx
	cmpl	%ecx, %edx
	jge	.LBB145_14
# BB#8:                                 # %if.end.i
	movzbl	(%r8,%rdx), %edx
	addl	$2, %edx
	movl	%edx, 36(%rdi)
	jmp	.LBB145_13
.LBB145_4:                              # %if.then
	cmpl	$65, %edx
	jne	.LBB145_12
# BB#5:                                 # %sw.bb.11.i
	movslq	%eax, %rdx
	incq	%rdx
	cmpl	%ecx, %edx
	jge	.LBB145_14
# BB#6:                                 # %if.end.18.i
	movzbl	(%r8,%rdx), %edx
	leal	2(%rdx,%rdx), %edx
	movl	%edx, 36(%rdi)
	jmp	.LBB145_13
.LBB145_14:                             # %if.end.4
	movl	$1027, 8(%rdi)          # imm = 0x403
	movl	$-1, %eax
.LBB145_15:                             # %return
	retq
.LBB145_12:                             # %sw.default.i
	movl	$1, 36(%rdi)
	movl	$1, %edx
	jmp	.LBB145_13
.Lfunc_end145:
	.size	SkipCode, .Lfunc_end145-SkipCode
	.cfi_endproc

	.align	16, 0x90
	.type	Interp,@function
Interp:                                 # @Interp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp268:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp269:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp270:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp271:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp272:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp273:
	.cfi_def_cfa_offset 96
.Ltmp274:
	.cfi_offset %rbx, -56
.Ltmp275:
	.cfi_offset %r12, -48
.Ltmp276:
	.cfi_offset %r13, -40
.Ltmp277:
	.cfi_offset %r14, -32
.Ltmp278:
	.cfi_offset %r15, -24
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	cmpl	%esi, %edi
	jg	.LBB146_14
# BB#1:                                 # %if.end
	movslq	%edx, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	(%r15), %rax
	movq	8(%r15), %rdx
	movl	(%rax,%rbp,4), %r8d
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movl	(%rdx,%rbp,4), %r14d
	subl	%r8d, %r14d
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	(%rax,%rcx,4), %ebx
	movl	(%rdx,%rcx,4), %ecx
	subl	%ebx, %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%ebx, %ecx
	subl	%r8d, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	jne	.LBB146_15
# BB#2:                                 # %for.body.lr.ph
	movslq	%esi, %r10
	movslq	%edi, %rsi
	cmpq	%rsi, %r10
	movq	%rsi, %rbx
	cmovgeq	%r10, %rbx
	movq	%rbx, %rcx
	subq	%rsi, %rcx
	cmpq	$-1, %rcx
	je	.LBB146_12
# BB#3:                                 # %overflow.checked
	incq	%rbx
	subq	%rsi, %rbx
	movq	%rbx, %r9
	andq	$-8, %r9
	leaq	(%rbx,%rsi), %r8
	andq	$-8, %rbx
	je	.LBB146_11
# BB#4:                                 # %vector.memcheck
	movslq	%edi, %rbx
	leaq	(%rdx,%rbx,4), %r11
	cmpq	%rbx, %r10
	movq	%rbx, %rcx
	cmovgeq	%r10, %rcx
	leaq	(%rax,%rcx,4), %rdi
	cmpq	%rdi, %r11
	ja	.LBB146_6
# BB#5:                                 # %vector.memcheck
	leaq	(%rdx,%rcx,4), %rcx
	leaq	(%rax,%rbx,4), %rdi
	cmpq	%rcx, %rdi
	jbe	.LBB146_11
.LBB146_6:                              # %vector.ph
	movd	36(%rsp), %xmm0         # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	32(%rsp), %xmm1         # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movd	%r14d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	cmpq	%rbx, %r10
	movq	%rbx, %rcx
	cmovgeq	%r10, %rcx
	incq	%rcx
	subq	%rbx, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	btq	$3, %rcx
	movq	%rsi, %rcx
	jb	.LBB146_8
# BB#7:                                 # %vector.body.prol
	movdqu	(%rax,%rsi,4), %xmm3
	movdqu	16(%rax,%rsi,4), %xmm4
	movdqa	%xmm3, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm1, %xmm7
	pand	%xmm5, %xmm7
	pandn	%xmm2, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm1, %xmm7
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	por	%xmm7, %xmm6
	paddd	%xmm3, %xmm5
	paddd	%xmm4, %xmm6
	movdqu	%xmm5, (%rdx,%rsi,4)
	movdqu	%xmm6, 16(%rdx,%rsi,4)
	leaq	8(%rsi), %rcx
.LBB146_8:                              # %vector.ph.split
	addq	%r9, %rsi
	testq	%rdi, %rdi
	je	.LBB146_11
# BB#9:                                 # %vector.ph.split.split
	cmpq	%rbx, %r10
	movq	%rbx, %rdi
	cmovgeq	%r10, %rdi
	incq	%rdi
	subq	%rbx, %rdi
	andq	$-8, %rdi
	addq	%rbx, %rdi
	subq	%rcx, %rdi
	leaq	48(%rax,%rcx,4), %rbx
	leaq	48(%rdx,%rcx,4), %rcx
	.align	16, 0x90
.LBB146_10:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbx), %xmm3
	movdqu	-32(%rbx), %xmm4
	movdqa	%xmm3, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm1, %xmm7
	pand	%xmm5, %xmm7
	pandn	%xmm2, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm1, %xmm7
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	por	%xmm7, %xmm6
	paddd	%xmm3, %xmm5
	paddd	%xmm4, %xmm6
	movdqu	%xmm5, -48(%rcx)
	movdqu	%xmm6, -32(%rcx)
	movdqu	-16(%rbx), %xmm3
	movdqu	(%rbx), %xmm4
	movdqa	%xmm3, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm1, %xmm7
	pand	%xmm5, %xmm7
	pandn	%xmm2, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm1, %xmm7
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	por	%xmm7, %xmm6
	paddd	%xmm3, %xmm5
	paddd	%xmm4, %xmm6
	movdqu	%xmm5, -16(%rcx)
	movdqu	%xmm6, (%rcx)
	addq	$64, %rbx
	addq	$64, %rcx
	addq	$-16, %rdi
	jne	.LBB146_10
.LBB146_11:                             # %middle.block
	cmpq	%rsi, %r8
	je	.LBB146_14
.LBB146_12:                             # %for.body.preheader
	decq	%rsi
	.align	16, 0x90
.LBB146_13:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rax,%rsi,4), %ecx
	cmpl	36(%rsp), %ecx          # 4-byte Folded Reload
	movl	%r14d, %edi
	cmovgl	32(%rsp), %edi          # 4-byte Folded Reload
	addl	%ecx, %edi
	movl	%edi, 4(%rdx,%rsi,4)
	incq	%rsi
	cmpq	%r10, %rsi
	jl	.LBB146_13
	jmp	.LBB146_14
.LBB146_15:                             # %if.end.30
	movslq	%edi, %r13
	movslq	%esi, %rcx
	jle	.LBB146_23
	jmp	.LBB146_16
	.align	16, 0x90
.LBB146_22:                             # %if.end.66.for.body.39_crit_edge
                                        #   in Loop: Header=BB146_16 Depth=1
	incq	%r13
	movq	(%r15), %rax
.LBB146_16:                             # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%r13,4), %eax
	movl	%eax, %edi
	subl	36(%rsp), %edi          # 4-byte Folded Reload
	jle	.LBB146_17
# BB#18:                                # %if.else.46
                                        #   in Loop: Header=BB146_16 Depth=1
	cmpl	%ebx, %eax
	jge	.LBB146_19
# BB#20:                                # %if.else.51
                                        #   in Loop: Header=BB146_16 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rdx,%rax,4), %r12d
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rdx,%rax,4), %esi
	subl	%r12d, %esi
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	%rcx, %rbp
	callq	MulDiv_Round
	movq	%rbp, %rcx
	addl	%r12d, %eax
	movq	8(%r15), %rdx
	jmp	.LBB146_21
	.align	16, 0x90
.LBB146_17:                             # %if.then.44
                                        #   in Loop: Header=BB146_16 Depth=1
	addl	%r14d, %eax
	jmp	.LBB146_21
	.align	16, 0x90
.LBB146_19:                             # %if.then.49
                                        #   in Loop: Header=BB146_16 Depth=1
	addl	32(%rsp), %eax          # 4-byte Folded Reload
.LBB146_21:                             # %if.end.66
                                        #   in Loop: Header=BB146_16 Depth=1
	movl	%eax, (%rdx,%r13,4)
	cmpq	%rcx, %r13
	jl	.LBB146_22
	jmp	.LBB146_14
	.align	16, 0x90
.LBB146_29:                             # %if.end.106.for.body.78_crit_edge
                                        #   in Loop: Header=BB146_23 Depth=1
	incq	%r13
	movq	(%r15), %rax
.LBB146_23:                             # %for.body.78
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%r13,4), %eax
	cmpl	%ebx, %eax
	jle	.LBB146_24
# BB#25:                                # %if.else.85
                                        #   in Loop: Header=BB146_23 Depth=1
	movl	%eax, %edi
	subl	36(%rsp), %edi          # 4-byte Folded Reload
	jge	.LBB146_26
# BB#27:                                # %if.else.90
                                        #   in Loop: Header=BB146_23 Depth=1
	movl	%r14d, %r12d
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rdx,%rax,4), %ebp
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rdx,%rax,4), %esi
	subl	%ebp, %esi
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	%rcx, %r14
	callq	MulDiv_Round
	movq	%r14, %rcx
	addl	%ebp, %eax
	movl	%r12d, %r14d
	movq	8(%r15), %rdx
	jmp	.LBB146_28
	.align	16, 0x90
.LBB146_24:                             # %if.then.83
                                        #   in Loop: Header=BB146_23 Depth=1
	addl	32(%rsp), %eax          # 4-byte Folded Reload
	jmp	.LBB146_28
	.align	16, 0x90
.LBB146_26:                             # %if.then.88
                                        #   in Loop: Header=BB146_23 Depth=1
	addl	%r14d, %eax
.LBB146_28:                             # %if.end.106
                                        #   in Loop: Header=BB146_23 Depth=1
	movl	%eax, (%rdx,%r13,4)
	cmpq	%rcx, %r13
	jl	.LBB146_29
.LBB146_14:                             # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end146:
	.size	Interp, .Lfunc_end146-Interp
	.cfi_endproc

	.align	16, 0x90
	.type	Compute_Point_Displacement,@function
Compute_Point_Displacement:             # @Compute_Point_Displacement
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp281:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp282:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp283:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp284:
	.cfi_def_cfa_offset 64
.Ltmp285:
	.cfi_offset %rbx, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testb	$1, 32(%rbx)
	jne	.LBB147_1
# BB#2:                                 # %if.else
	movq	688(%rbx), %rax
	movdqu	696(%rbx), %xmm0
	movdqu	712(%rbx), %xmm1
	movups	728(%rbx), %xmm2
	movaps	%xmm2, (%rsp)
	leaq	928(%rbx), %rdx
	jmp	.LBB147_3
.LBB147_1:                              # %if.then
	movq	632(%rbx), %rax
	movdqu	640(%rbx), %xmm0
	movdqu	656(%rbx), %xmm1
	movups	672(%rbx), %xmm2
	movaps	%xmm2, (%rsp)
	leaq	924(%rbx), %rdx
.LBB147_3:                              # %if.end
	movslq	(%rdx), %rdi
	testq	%rdi, %rdi
	js	.LBB147_5
# BB#4:                                 # %if.end
	cmpl	%eax, %edi
	jge	.LBB147_5
# BB#6:                                 # %if.end.6
	movq	%rax, %rdx
	shrq	$32, %rdx
	movl	%eax, (%rcx)
	movl	%edx, 4(%rcx)
	movdqu	%xmm0, 8(%rcx)
	movdqu	%xmm1, 24(%rcx)
	movaps	(%rsp), %xmm2
	movups	%xmm2, 40(%rcx)
	movl	%edi, (%r8)
	movd	%xmm1, %rax
	movl	(%rax,%rdi,4), %esi
	movd	%xmm0, %rax
	subl	(%rax,%rdi,4), %esi
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rax
	movl	(%rax,%rdi,4), %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rax
	subl	(%rax,%rdi,4), %edx
	movq	%rbx, %rdi
	callq	*1128(%rbx)
	movl	%eax, %ebp
	movzwl	940(%rbx), %esi
	shll	$16, %esi
	movl	1112(%rbx), %edx
	movl	%ebp, %edi
	callq	MulDiv_Round
	movl	%eax, (%r15)
	movzwl	942(%rbx), %esi
	shll	$16, %esi
	movl	1112(%rbx), %edx
	movl	%ebp, %edi
	callq	MulDiv_Round
	movl	%eax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB147_7
.LBB147_5:                              # %if.then.5
	movl	$0, (%r8)
	movl	$-1, %eax
.LBB147_7:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end147:
	.size	Compute_Point_Displacement, .Lfunc_end147-Compute_Point_Displacement
	.cfi_endproc

	.type	Pop_Push_Count,@object  # @Pop_Push_Count
	.section	.rodata,"a",@progbits
	.align	16
Pop_Push_Count:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\002\000\002\000\002\000\002\000\002\000\002\000\000\002\000\002\000\000\005\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\000\000\000\000\001\000\000\000\001\000\001\000\001\000\001\000\001\002\001\000\000\000\002\002\000\001\001\001\001\000\002\000\000\000\001\000\002\000\001\000\001\000\000\000\001\000\001\000\000\000\000\000\000\000\000\000\001\000\001\000\001\000\001\000\001\000\000\000\002\000\002\000\000\000\000\000\002\000\002\000\000\000\000\000\002\000\001\001\002\000\001\001\001\001\001\001\002\000\002\001\002\001\000\001\000\001\000\000\000\000\001\000\002\001\002\001\002\001\002\001\002\001\002\001\001\001\001\001\001\000\000\000\002\001\002\001\001\001\001\000\001\000\001\000\002\001\002\001\002\001\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\002\000\002\000\000\000\000\000\000\000\000\000\001\000\001\000\000\000\002\000\002\000\000\000\000\000\001\000\002\000\002\000\001\001\001\000\003\003\002\001\002\001\001\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\b\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\b\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002"
	.size	Pop_Push_Count, 512

	.type	Instruct_Dispatch,@object # @Instruct_Dispatch
	.align	16
Instruct_Dispatch:
	.quad	.L.str
	.quad	Ins_SVTCA
	.quad	.L.str.1
	.quad	Ins_SVTCA
	.quad	.L.str.2
	.quad	Ins_SPVTCA
	.quad	.L.str.3
	.quad	Ins_SPVTCA
	.quad	.L.str.4
	.quad	Ins_SFVTCA
	.quad	.L.str.5
	.quad	Ins_SFVTCA
	.quad	.L.str.6
	.quad	Ins_SPVTL
	.quad	.L.str.7
	.quad	Ins_SPVTL
	.quad	.L.str.8
	.quad	Ins_SFVTL
	.quad	.L.str.9
	.quad	Ins_SFVTL
	.quad	.L.str.10
	.quad	Ins_SPVFS
	.quad	.L.str.11
	.quad	Ins_SFVFS
	.quad	.L.str.12
	.quad	Ins_GPV
	.quad	.L.str.13
	.quad	Ins_GFV
	.quad	.L.str.14
	.quad	Ins_SFVTPV
	.quad	.L.str.15
	.quad	Ins_ISECT
	.quad	.L.str.16
	.quad	Ins_SRP0
	.quad	.L.str.17
	.quad	Ins_SRP1
	.quad	.L.str.18
	.quad	Ins_SRP2
	.quad	.L.str.19
	.quad	Ins_SZP0
	.quad	.L.str.20
	.quad	Ins_SZP1
	.quad	.L.str.21
	.quad	Ins_SZP2
	.quad	.L.str.22
	.quad	Ins_SZPS
	.quad	.L.str.23
	.quad	Ins_SLOOP
	.quad	.L.str.24
	.quad	Ins_RTG
	.quad	.L.str.25
	.quad	Ins_RTHG
	.quad	.L.str.26
	.quad	Ins_SMD
	.quad	.L.str.27
	.quad	Ins_ELSE
	.quad	.L.str.28
	.quad	Ins_JMPR
	.quad	.L.str.29
	.quad	Ins_SCVTCI
	.quad	.L.str.30
	.quad	Ins_SSWCI
	.quad	.L.str.31
	.quad	Ins_SSW
	.quad	.L.str.32
	.quad	Ins_DUP
	.quad	.L.str.33
	.quad	Ins_POP
	.quad	.L.str.34
	.quad	Ins_CLEAR
	.quad	.L.str.35
	.quad	Ins_SWAP
	.quad	.L.str.36
	.quad	Ins_DEPTH
	.quad	.L.str.37
	.quad	Ins_CINDEX
	.quad	.L.str.38
	.quad	Ins_MINDEX
	.quad	.L.str.39
	.quad	Ins_ALIGNPTS
	.quad	.L.str.40
	.quad	Ins_UNKNOWN
	.quad	.L.str.41
	.quad	Ins_UTP
	.quad	.L.str.42
	.quad	Ins_LOOPCALL
	.quad	.L.str.43
	.quad	Ins_CALL
	.quad	.L.str.44
	.quad	Ins_FDEF
	.quad	.L.str.45
	.quad	Ins_ENDF
	.quad	.L.str.46
	.quad	Ins_MDAP
	.quad	.L.str.47
	.quad	Ins_MDAP
	.quad	.L.str.48
	.quad	Ins_IUP
	.quad	.L.str.49
	.quad	Ins_IUP
	.quad	.L.str.50
	.quad	Ins_SHP
	.quad	.L.str.51
	.quad	Ins_SHP
	.quad	.L.str.52
	.quad	Ins_SHC
	.quad	.L.str.53
	.quad	Ins_SHC
	.quad	.L.str.54
	.quad	Ins_SHZ
	.quad	.L.str.55
	.quad	Ins_SHZ
	.quad	.L.str.56
	.quad	Ins_SHPIX
	.quad	.L.str.57
	.quad	Ins_IP
	.quad	.L.str.58
	.quad	Ins_MSIRP
	.quad	.L.str.59
	.quad	Ins_MSIRP
	.quad	.L.str.60
	.quad	Ins_ALIGNRP
	.quad	.L.str.61
	.quad	Ins_RTDG
	.quad	.L.str.62
	.quad	Ins_MIAP
	.quad	.L.str.63
	.quad	Ins_MIAP
	.quad	.L.str.64
	.quad	Ins_NPUSHB
	.quad	.L.str.65
	.quad	Ins_NPUSHW
	.quad	.L.str.66
	.quad	Ins_WS
	.quad	.L.str.67
	.quad	Ins_RS
	.quad	.L.str.68
	.quad	Ins_WCVTP
	.quad	.L.str.69
	.quad	Ins_RCVT
	.quad	.L.str.70
	.quad	Ins_GC
	.quad	.L.str.71
	.quad	Ins_GC
	.quad	.L.str.72
	.quad	Ins_SCFS
	.quad	.L.str.73
	.quad	Ins_MD
	.quad	.L.str.74
	.quad	Ins_MD
	.quad	.L.str.75
	.quad	Ins_MPPEM
	.quad	.L.str.76
	.quad	Ins_MPS
	.quad	.L.str.77
	.quad	Ins_FLIPON
	.quad	.L.str.78
	.quad	Ins_FLIPOFF
	.quad	.L.str.79
	.quad	Ins_DEBUG
	.quad	.L.str.80
	.quad	Ins_LT
	.quad	.L.str.81
	.quad	Ins_LTEQ
	.quad	.L.str.82
	.quad	Ins_GT
	.quad	.L.str.83
	.quad	Ins_GTEQ
	.quad	.L.str.84
	.quad	Ins_EQ
	.quad	.L.str.85
	.quad	Ins_NEQ
	.quad	.L.str.86
	.quad	Ins_ODD
	.quad	.L.str.87
	.quad	Ins_EVEN
	.quad	.L.str.88
	.quad	Ins_IF
	.quad	.L.str.89
	.quad	Ins_EIF
	.quad	.L.str.90
	.quad	Ins_AND
	.quad	.L.str.91
	.quad	Ins_OR
	.quad	.L.str.92
	.quad	Ins_NOT
	.quad	.L.str.93
	.quad	Ins_DELTAP
	.quad	.L.str.94
	.quad	Ins_SDB
	.quad	.L.str.95
	.quad	Ins_SDS
	.quad	.L.str.96
	.quad	Ins_ADD
	.quad	.L.str.97
	.quad	Ins_SUB
	.quad	.L.str.98
	.quad	Ins_DIV
	.quad	.L.str.99
	.quad	Ins_MUL
	.quad	.L.str.100
	.quad	Ins_ABS
	.quad	.L.str.101
	.quad	Ins_NEG
	.quad	.L.str.102
	.quad	Ins_FLOOR
	.quad	.L.str.103
	.quad	Ins_CEILING
	.quad	.L.str.104
	.quad	Ins_ROUND
	.quad	.L.str.105
	.quad	Ins_ROUND
	.quad	.L.str.106
	.quad	Ins_ROUND
	.quad	.L.str.107
	.quad	Ins_ROUND
	.quad	.L.str.108
	.quad	Ins_NROUND
	.quad	.L.str.109
	.quad	Ins_NROUND
	.quad	.L.str.110
	.quad	Ins_NROUND
	.quad	.L.str.111
	.quad	Ins_NROUND
	.quad	.L.str.112
	.quad	Ins_WCVTF
	.quad	.L.str.113
	.quad	Ins_DELTAP
	.quad	.L.str.114
	.quad	Ins_DELTAP
	.quad	.L.str.115
	.quad	Ins_DELTAC
	.quad	.L.str.116
	.quad	Ins_DELTAC
	.quad	.L.str.117
	.quad	Ins_DELTAC
	.quad	.L.str.118
	.quad	Ins_SROUND
	.quad	.L.str.119
	.quad	Ins_S45ROUND
	.quad	.L.str.120
	.quad	Ins_JROT
	.quad	.L.str.121
	.quad	Ins_JROF
	.quad	.L.str.122
	.quad	Ins_ROFF
	.quad	.L.str.123
	.quad	Ins_UNKNOWN
	.quad	.L.str.124
	.quad	Ins_RUTG
	.quad	.L.str.125
	.quad	Ins_RDTG
	.quad	.L.str.126
	.quad	Ins_SANGW
	.quad	.L.str.127
	.quad	Ins_AA
	.quad	.L.str.128
	.quad	Ins_FLIPPT
	.quad	.L.str.129
	.quad	Ins_FLIPRGON
	.quad	.L.str.130
	.quad	Ins_FLIPRGOFF
	.quad	.L.str.131
	.quad	Ins_UNKNOWN
	.quad	.L.str.132
	.quad	Ins_UNKNOWN
	.quad	.L.str.133
	.quad	Ins_SCANCTRL
	.quad	.L.str.134
	.quad	Ins_SDPVTL
	.quad	.L.str.135
	.quad	Ins_SDPVTL
	.quad	.L.str.136
	.quad	Ins_GETINFO
	.quad	.L.str.137
	.quad	Ins_IDEF
	.quad	.L.str.138
	.quad	Ins_ROLL
	.quad	.L.str.139
	.quad	Ins_MAX
	.quad	.L.str.140
	.quad	Ins_MIN
	.quad	.L.str.141
	.quad	Ins_SCANTYPE
	.quad	.L.str.142
	.quad	Ins_INSTCTRL
	.quad	.L.str.143
	.quad	Ins_UNKNOWN
	.quad	.L.str.144
	.quad	Ins_UNKNOWN
	.quad	.L.str.145
	.quad	Ins_UNKNOWN
	.quad	.L.str.146
	.quad	Ins_UNKNOWN
	.quad	.L.str.147
	.quad	Ins_UNKNOWN
	.quad	.L.str.148
	.quad	Ins_UNKNOWN
	.quad	.L.str.149
	.quad	Ins_UNKNOWN
	.quad	.L.str.150
	.quad	Ins_UNKNOWN
	.quad	.L.str.151
	.quad	Ins_UNKNOWN
	.quad	.L.str.152
	.quad	Ins_UNKNOWN
	.quad	.L.str.153
	.quad	Ins_UNKNOWN
	.quad	.L.str.154
	.quad	Ins_UNKNOWN
	.quad	.L.str.155
	.quad	Ins_UNKNOWN
	.quad	.L.str.156
	.quad	Ins_UNKNOWN
	.quad	.L.str.157
	.quad	Ins_UNKNOWN
	.quad	.L.str.158
	.quad	Ins_UNKNOWN
	.quad	.L.str.159
	.quad	Ins_UNKNOWN
	.quad	.L.str.160
	.quad	Ins_UNKNOWN
	.quad	.L.str.161
	.quad	Ins_UNKNOWN
	.quad	.L.str.162
	.quad	Ins_UNKNOWN
	.quad	.L.str.163
	.quad	Ins_UNKNOWN
	.quad	.L.str.164
	.quad	Ins_UNKNOWN
	.quad	.L.str.165
	.quad	Ins_UNKNOWN
	.quad	.L.str.166
	.quad	Ins_UNKNOWN
	.quad	.L.str.167
	.quad	Ins_UNKNOWN
	.quad	.L.str.168
	.quad	Ins_UNKNOWN
	.quad	.L.str.169
	.quad	Ins_UNKNOWN
	.quad	.L.str.170
	.quad	Ins_UNKNOWN
	.quad	.L.str.171
	.quad	Ins_UNKNOWN
	.quad	.L.str.172
	.quad	Ins_UNKNOWN
	.quad	.L.str.173
	.quad	Ins_UNKNOWN
	.quad	.L.str.174
	.quad	Ins_UNKNOWN
	.quad	.L.str.175
	.quad	Ins_UNKNOWN
	.quad	.L.str.176
	.quad	Ins_PUSHB
	.quad	.L.str.177
	.quad	Ins_PUSHB
	.quad	.L.str.178
	.quad	Ins_PUSHB
	.quad	.L.str.179
	.quad	Ins_PUSHB
	.quad	.L.str.180
	.quad	Ins_PUSHB
	.quad	.L.str.181
	.quad	Ins_PUSHB
	.quad	.L.str.182
	.quad	Ins_PUSHB
	.quad	.L.str.183
	.quad	Ins_PUSHB
	.quad	.L.str.184
	.quad	Ins_PUSHW
	.quad	.L.str.185
	.quad	Ins_PUSHW
	.quad	.L.str.186
	.quad	Ins_PUSHW
	.quad	.L.str.187
	.quad	Ins_PUSHW
	.quad	.L.str.188
	.quad	Ins_PUSHW
	.quad	.L.str.189
	.quad	Ins_PUSHW
	.quad	.L.str.190
	.quad	Ins_PUSHW
	.quad	.L.str.191
	.quad	Ins_PUSHW
	.quad	.L.str.192
	.quad	Ins_MDRP
	.quad	.L.str.193
	.quad	Ins_MDRP
	.quad	.L.str.194
	.quad	Ins_MDRP
	.quad	.L.str.195
	.quad	Ins_MDRP
	.quad	.L.str.196
	.quad	Ins_MDRP
	.quad	.L.str.197
	.quad	Ins_MDRP
	.quad	.L.str.198
	.quad	Ins_MDRP
	.quad	.L.str.199
	.quad	Ins_MDRP
	.quad	.L.str.200
	.quad	Ins_MDRP
	.quad	.L.str.201
	.quad	Ins_MDRP
	.quad	.L.str.202
	.quad	Ins_MDRP
	.quad	.L.str.203
	.quad	Ins_MDRP
	.quad	.L.str.204
	.quad	Ins_MDRP
	.quad	.L.str.205
	.quad	Ins_MDRP
	.quad	.L.str.206
	.quad	Ins_MDRP
	.quad	.L.str.207
	.quad	Ins_MDRP
	.quad	.L.str.208
	.quad	Ins_MDRP
	.quad	.L.str.209
	.quad	Ins_MDRP
	.quad	.L.str.210
	.quad	Ins_MDRP
	.quad	.L.str.211
	.quad	Ins_MDRP
	.quad	.L.str.212
	.quad	Ins_MDRP
	.quad	.L.str.213
	.quad	Ins_MDRP
	.quad	.L.str.214
	.quad	Ins_MDRP
	.quad	.L.str.215
	.quad	Ins_MDRP
	.quad	.L.str.216
	.quad	Ins_MDRP
	.quad	.L.str.217
	.quad	Ins_MDRP
	.quad	.L.str.218
	.quad	Ins_MDRP
	.quad	.L.str.219
	.quad	Ins_MDRP
	.quad	.L.str.220
	.quad	Ins_MDRP
	.quad	.L.str.221
	.quad	Ins_MDRP
	.quad	.L.str.222
	.quad	Ins_MDRP
	.quad	.L.str.223
	.quad	Ins_MDRP
	.quad	.L.str.224
	.quad	Ins_MIRP
	.quad	.L.str.225
	.quad	Ins_MIRP
	.quad	.L.str.226
	.quad	Ins_MIRP
	.quad	.L.str.227
	.quad	Ins_MIRP
	.quad	.L.str.228
	.quad	Ins_MIRP
	.quad	.L.str.229
	.quad	Ins_MIRP
	.quad	.L.str.230
	.quad	Ins_MIRP
	.quad	.L.str.231
	.quad	Ins_MIRP
	.quad	.L.str.232
	.quad	Ins_MIRP
	.quad	.L.str.233
	.quad	Ins_MIRP
	.quad	.L.str.234
	.quad	Ins_MIRP
	.quad	.L.str.235
	.quad	Ins_MIRP
	.quad	.L.str.236
	.quad	Ins_MIRP
	.quad	.L.str.237
	.quad	Ins_MIRP
	.quad	.L.str.238
	.quad	Ins_MIRP
	.quad	.L.str.239
	.quad	Ins_MIRP
	.quad	.L.str.240
	.quad	Ins_MIRP
	.quad	.L.str.241
	.quad	Ins_MIRP
	.quad	.L.str.242
	.quad	Ins_MIRP
	.quad	.L.str.243
	.quad	Ins_MIRP
	.quad	.L.str.244
	.quad	Ins_MIRP
	.quad	.L.str.245
	.quad	Ins_MIRP
	.quad	.L.str.246
	.quad	Ins_MIRP
	.quad	.L.str.247
	.quad	Ins_MIRP
	.quad	.L.str.248
	.quad	Ins_MIRP
	.quad	.L.str.249
	.quad	Ins_MIRP
	.quad	.L.str.250
	.quad	Ins_MIRP
	.quad	.L.str.251
	.quad	Ins_MIRP
	.quad	.L.str.252
	.quad	Ins_MIRP
	.quad	.L.str.253
	.quad	Ins_MIRP
	.quad	.L.str.254
	.quad	Ins_MIRP
	.quad	.L.str.255
	.quad	Ins_MIRP
	.size	Instruct_Dispatch, 4096

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"  SVTCA  y  "
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"  SVTCA  x  "
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"  SPvTCA y  "
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"  SPvTCA x  "
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"  SFvTCA y  "
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"  SFvTCA x  "
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"  SPvTL //  "
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"  SPvTL +   "
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"  SFvTL //  "
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"  SFvTL +   "
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"  SPvFS     "
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"  SFvFS     "
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"  GPV       "
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"  GFV       "
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"  SFvTPv    "
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"  ISECT     "
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"  SRP0      "
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"  SRP1      "
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"  SRP2      "
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"  SZP0      "
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"  SZP1      "
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"  SZP2      "
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"  SZPS      "
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"  SLOOP     "
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"  RTG       "
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"  RTHG      "
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"  SMD       "
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"  ELSE      "
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"  JMPR      "
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"  SCvTCi    "
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"  SSwCi     "
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"  SSW       "
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"  DUP       "
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"  POP       "
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"  CLEAR     "
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"  SWAP      "
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"  DEPTH     "
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"  CINDEX    "
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"  MINDEX    "
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"  AlignPTS  "
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"  INS_$28   "
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"  UTP       "
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"  LOOPCALL  "
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"  CALL      "
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"  FDEF      "
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"  ENDF      "
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"  MDAP[0]   "
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"  MDAP[1]   "
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"  IUP[0]    "
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"  IUP[1]    "
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"  SHP[0]    "
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"  SHP[1]    "
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"  SHC[0]    "
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"  SHC[1]    "
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"  SHZ[0]    "
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"  SHZ[1]    "
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"  SHPIX     "
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"  IP        "
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"  MSIRP[0]  "
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"  MSIRP[1]  "
	.size	.L.str.59, 13

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"  AlignRP   "
	.size	.L.str.60, 13

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"  RTDG      "
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"  MIAP[0]   "
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"  MIAP[1]   "
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"  NPushB    "
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"  NPushW    "
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"  WS        "
	.size	.L.str.66, 13

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"  RS        "
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"  WCvtP     "
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"  RCvt      "
	.size	.L.str.69, 13

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"  GC[0]     "
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"  GC[1]     "
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"  SCFS      "
	.size	.L.str.72, 13

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"  MD[0]     "
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"  MD[1]     "
	.size	.L.str.74, 13

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"  MPPEM     "
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"  MPS       "
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"  FlipON    "
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"  FlipOFF   "
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"  DEBUG     "
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"  LT        "
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"  LTEQ      "
	.size	.L.str.81, 13

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"  GT        "
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"  GTEQ      "
	.size	.L.str.83, 13

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"  EQ        "
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"  NEQ       "
	.size	.L.str.85, 13

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"  ODD       "
	.size	.L.str.86, 13

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"  EVEN      "
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"  IF        "
	.size	.L.str.88, 13

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"  EIF       "
	.size	.L.str.89, 13

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"  AND       "
	.size	.L.str.90, 13

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"  OR        "
	.size	.L.str.91, 13

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"  NOT       "
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"  DeltaP1   "
	.size	.L.str.93, 13

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"  SDB       "
	.size	.L.str.94, 13

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"  SDS       "
	.size	.L.str.95, 13

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"  ADD       "
	.size	.L.str.96, 13

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"  SUB       "
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"  DIV       "
	.size	.L.str.98, 13

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"  MUL       "
	.size	.L.str.99, 13

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"  ABS       "
	.size	.L.str.100, 13

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"  NEG       "
	.size	.L.str.101, 13

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"  FLOOR     "
	.size	.L.str.102, 13

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"  CEILING   "
	.size	.L.str.103, 13

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"  ROUND[0]  "
	.size	.L.str.104, 13

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"  ROUND[1]  "
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"  ROUND[2]  "
	.size	.L.str.106, 13

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"  ROUND[3]  "
	.size	.L.str.107, 13

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"  NROUND[0] "
	.size	.L.str.108, 13

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"  NROUND[1] "
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"  NROUND[2] "
	.size	.L.str.110, 13

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"  NROUND[3] "
	.size	.L.str.111, 13

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"  WCvtF     "
	.size	.L.str.112, 13

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"  DeltaP2   "
	.size	.L.str.113, 13

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"  DeltaP3   "
	.size	.L.str.114, 13

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"  DeltaCn[0] "
	.size	.L.str.115, 14

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"  DeltaCn[1] "
	.size	.L.str.116, 14

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"  DeltaCn[2] "
	.size	.L.str.117, 14

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"  SROUND    "
	.size	.L.str.118, 13

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"  S45Round  "
	.size	.L.str.119, 13

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"  JROT      "
	.size	.L.str.120, 13

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"  JROF      "
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"  ROFF      "
	.size	.L.str.122, 13

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"  INS_$7B   "
	.size	.L.str.123, 13

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"  RUTG      "
	.size	.L.str.124, 13

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"  RDTG      "
	.size	.L.str.125, 13

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"  SANGW     "
	.size	.L.str.126, 13

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"  AA        "
	.size	.L.str.127, 13

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"  FlipPT    "
	.size	.L.str.128, 13

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"  FlipRgON  "
	.size	.L.str.129, 13

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"  FlipRgOFF "
	.size	.L.str.130, 13

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"  INS_$83   "
	.size	.L.str.131, 13

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"  INS_$84   "
	.size	.L.str.132, 13

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"  ScanCTRL  "
	.size	.L.str.133, 13

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"  SDPVTL[0] "
	.size	.L.str.134, 13

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"  SDPVTL[1] "
	.size	.L.str.135, 13

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"  GetINFO   "
	.size	.L.str.136, 13

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"  IDEF      "
	.size	.L.str.137, 13

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"  ROLL      "
	.size	.L.str.138, 13

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"  MAX       "
	.size	.L.str.139, 13

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"  MIN       "
	.size	.L.str.140, 13

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"  ScanTYPE  "
	.size	.L.str.141, 13

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"  InstCTRL  "
	.size	.L.str.142, 13

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"  INS_$8F   "
	.size	.L.str.143, 13

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"  INS_$90  "
	.size	.L.str.144, 12

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"  INS_$91  "
	.size	.L.str.145, 12

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"  INS_$92  "
	.size	.L.str.146, 12

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"  INS_$93  "
	.size	.L.str.147, 12

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"  INS_$94  "
	.size	.L.str.148, 12

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"  INS_$95  "
	.size	.L.str.149, 12

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"  INS_$96  "
	.size	.L.str.150, 12

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"  INS_$97  "
	.size	.L.str.151, 12

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"  INS_$98  "
	.size	.L.str.152, 12

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"  INS_$99  "
	.size	.L.str.153, 12

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"  INS_$9A  "
	.size	.L.str.154, 12

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"  INS_$9B  "
	.size	.L.str.155, 12

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"  INS_$9C  "
	.size	.L.str.156, 12

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"  INS_$9D  "
	.size	.L.str.157, 12

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"  INS_$9E  "
	.size	.L.str.158, 12

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"  INS_$9F  "
	.size	.L.str.159, 12

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"  INS_$A0  "
	.size	.L.str.160, 12

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"  INS_$A1  "
	.size	.L.str.161, 12

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"  INS_$A2  "
	.size	.L.str.162, 12

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"  INS_$A3  "
	.size	.L.str.163, 12

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"  INS_$A4  "
	.size	.L.str.164, 12

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"  INS_$A5  "
	.size	.L.str.165, 12

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"  INS_$A6  "
	.size	.L.str.166, 12

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"  INS_$A7  "
	.size	.L.str.167, 12

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"  INS_$A8  "
	.size	.L.str.168, 12

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"  INS_$A9  "
	.size	.L.str.169, 12

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"  INS_$AA  "
	.size	.L.str.170, 12

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"  INS_$AB  "
	.size	.L.str.171, 12

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"  INS_$AC  "
	.size	.L.str.172, 12

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"  INS_$AD  "
	.size	.L.str.173, 12

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"  INS_$AE  "
	.size	.L.str.174, 12

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"  INS_$AF  "
	.size	.L.str.175, 12

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"  PushB[0]  "
	.size	.L.str.176, 13

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"  PushB[1]  "
	.size	.L.str.177, 13

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"  PushB[2]  "
	.size	.L.str.178, 13

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"  PushB[3]  "
	.size	.L.str.179, 13

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"  PushB[4]  "
	.size	.L.str.180, 13

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"  PushB[5]  "
	.size	.L.str.181, 13

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"  PushB[6]  "
	.size	.L.str.182, 13

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"  PushB[7]  "
	.size	.L.str.183, 13

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"  PushW[0]  "
	.size	.L.str.184, 13

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"  PushW[1]  "
	.size	.L.str.185, 13

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"  PushW[2]  "
	.size	.L.str.186, 13

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"  PushW[3]  "
	.size	.L.str.187, 13

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"  PushW[4]  "
	.size	.L.str.188, 13

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"  PushW[5]  "
	.size	.L.str.189, 13

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"  PushW[6]  "
	.size	.L.str.190, 13

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"  PushW[7]  "
	.size	.L.str.191, 13

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"  MDRP[00]  "
	.size	.L.str.192, 13

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"  MDRP[01]  "
	.size	.L.str.193, 13

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"  MDRP[02]  "
	.size	.L.str.194, 13

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"  MDRP[03]  "
	.size	.L.str.195, 13

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"  MDRP[04]  "
	.size	.L.str.196, 13

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"  MDRP[05]  "
	.size	.L.str.197, 13

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"  MDRP[06]  "
	.size	.L.str.198, 13

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"  MDRP[07]  "
	.size	.L.str.199, 13

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"  MDRP[08]  "
	.size	.L.str.200, 13

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"  MDRP[09]  "
	.size	.L.str.201, 13

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"  MDRP[10]  "
	.size	.L.str.202, 13

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"  MDRP[11]  "
	.size	.L.str.203, 13

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"  MDRP[12]  "
	.size	.L.str.204, 13

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"  MDRP[13]  "
	.size	.L.str.205, 13

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"  MDRP[14]  "
	.size	.L.str.206, 13

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"  MDRP[15]  "
	.size	.L.str.207, 13

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"  MDRP[16]  "
	.size	.L.str.208, 13

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"  MDRP[17]  "
	.size	.L.str.209, 13

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"  MDRP[18]  "
	.size	.L.str.210, 13

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"  MDRP[19]  "
	.size	.L.str.211, 13

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"  MDRP[20]  "
	.size	.L.str.212, 13

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"  MDRP[21]  "
	.size	.L.str.213, 13

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"  MDRP[22]  "
	.size	.L.str.214, 13

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"  MDRP[23]  "
	.size	.L.str.215, 13

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"  MDRP[24]  "
	.size	.L.str.216, 13

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"  MDRP[25]  "
	.size	.L.str.217, 13

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"  MDRP[26]  "
	.size	.L.str.218, 13

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"  MDRP[27]  "
	.size	.L.str.219, 13

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"  MDRP[28]  "
	.size	.L.str.220, 13

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"  MDRP[29]  "
	.size	.L.str.221, 13

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"  MDRP[30]  "
	.size	.L.str.222, 13

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"  MDRP[31]  "
	.size	.L.str.223, 13

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"  MIRP[00]  "
	.size	.L.str.224, 13

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"  MIRP[01]  "
	.size	.L.str.225, 13

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"  MIRP[02]  "
	.size	.L.str.226, 13

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"  MIRP[03]  "
	.size	.L.str.227, 13

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"  MIRP[04]  "
	.size	.L.str.228, 13

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"  MIRP[05]  "
	.size	.L.str.229, 13

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"  MIRP[06]  "
	.size	.L.str.230, 13

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"  MIRP[07]  "
	.size	.L.str.231, 13

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"  MIRP[08]  "
	.size	.L.str.232, 13

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"  MIRP[09]  "
	.size	.L.str.233, 13

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"  MIRP[10]  "
	.size	.L.str.234, 13

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"  MIRP[11]  "
	.size	.L.str.235, 13

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"  MIRP[12]  "
	.size	.L.str.236, 13

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"  MIRP[13]  "
	.size	.L.str.237, 13

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"  MIRP[14]  "
	.size	.L.str.238, 13

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"  MIRP[15]  "
	.size	.L.str.239, 13

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"  MIRP[16]  "
	.size	.L.str.240, 13

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"  MIRP[17]  "
	.size	.L.str.241, 13

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"  MIRP[18]  "
	.size	.L.str.242, 13

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"  MIRP[19]  "
	.size	.L.str.243, 13

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"  MIRP[20]  "
	.size	.L.str.244, 13

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"  MIRP[21]  "
	.size	.L.str.245, 13

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"  MIRP[22]  "
	.size	.L.str.246, 13

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"  MIRP[23]  "
	.size	.L.str.247, 13

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"  MIRP[24]  "
	.size	.L.str.248, 13

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"  MIRP[25]  "
	.size	.L.str.249, 13

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"  MIRP[26]  "
	.size	.L.str.250, 13

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"  MIRP[27]  "
	.size	.L.str.251, 13

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"  MIRP[28]  "
	.size	.L.str.252, 13

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"  MIRP[29]  "
	.size	.L.str.253, 13

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"  MIRP[30]  "
	.size	.L.str.254, 13

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"  MIRP[31]  "
	.size	.L.str.255, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
