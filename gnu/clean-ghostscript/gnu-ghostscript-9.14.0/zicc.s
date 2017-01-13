	.text
	.file	"zicc.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	0                       # float 0.000000e+00
	.long	1120403456              # float 1.000000e+02
	.long	3271557120              # float -1.280000e+02
	.long	1123942400              # float 1.270000e+02
	.text
	.globl	seticc
	.align	16, 0x90
	.type	seticc,@function
seticc:                                 # @seticc
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rbx
	movl	%esi, %r13d
	movq	%rdi, %r12
	movq	(%r12), %r14
	movq	%r14, %rdi
	callq	gs_currentcolorspace
	leaq	24(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-21, %ebp
	testl	%eax, %eax
	jle	.LBB0_62
# BB#1:                                 # %do.body
	movq	24(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB0_2
# BB#4:                                 # %do.body.13
	movq	8(%rdi), %r15
	movzwl	264(%r15), %ecx
	movl	4(%rdi), %eax
	cmpl	%eax, %ecx
	je	.LBB0_9
# BB#5:                                 # %if.then.18
	testw	%cx, %cx
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true
	movzwl	266(%r15), %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_8
# BB#7:                                 # %if.then.28
	callq	file_switch_to_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB0_9
	jmp	.LBB0_62
.LBB0_2:                                # %if.then.5
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$3, %eax
	je	.LBB0_62
# BB#3:                                 # %cond.true
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB0_62
.LBB0_8:                                # %if.else
	movq	256(%r12), %r15
.LBB0_9:                                # %do.end.37
	movq	(%r12), %rdi
	callq	gs_state_memory
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	gs_cspace_build_ICC
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_10
# BB#11:                                # %if.end.45
	leaq	16(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_15
# BB#12:                                # %if.then.49
	movq	16(%rsp), %rax
	movl	4(%rax), %ebx
	movq	(%r12), %rdi
	callq	gs_state_memory
	movq	64(%rax), %rbp
	movq	(%r12), %rdi
	callq	gs_state_memory
	leal	1(%rbx), %esi
	movl	$.L__func__.seticc, %edx
	movq	%rax, %rdi
	callq	*%rbp
	movq	%rax, %rbp
	movq	16(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rbp,%rbx)
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB0_14
# BB#13:                                # %for.cond
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	callq	strcmp
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB0_14
# BB#63:                                # %for.cond.1
	movq	32(%rsp), %rbx
	jmp	.LBB0_17
.LBB0_10:                               # %if.then.43
	movl	$.L__func__.seticc, %edi
	movl	$.L.str.5, %esi
	movl	$72, %edx
	movl	$1, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
	movl	%eax, %ebp
	jmp	.LBB0_62
.LBB0_14:                               # %if.then.68
	movq	seticc.icc_std_profile_names(,%rcx,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	(%r12), %rdi
	callq	gs_state_memory
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%rax, %rdx
	callq	gsicc_get_profile_handle_file
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.79
	movq	(%r12), %rdi
	callq	gs_state_memory
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	gsicc_profile_new
.LBB0_16:                               # %if.end.83
	movq	%rax, %r15
	movq	32(%rsp), %rbx
	testq	%r15, %r15
	je	.LBB0_17
# BB#20:                                # %if.end.150
	movq	(%r12), %rdi
	callq	gs_state_memory
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	gsicc_set_gscs_profile
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_21
# BB#27:                                # %if.end.225
	movb	%r13b, (%r15)
	movq	256(%r15), %rbx
	movl	220(%r15), %ebp
	movq	(%r12), %rdi
	callq	gs_state_memory
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%rax, %rdx
	callq	gsicc_get_profile_handle_buffer
	movq	%rax, 280(%r15)
	testq	%rax, %rax
	je	.LBB0_28
# BB#31:                                # %if.end.302
	movq	%rax, %rdi
	callq	gscms_get_profile_data_space
	movl	%eax, 16(%r15)
	decl	%eax
	cmpl	$5, %eax
	ja	.LBB0_34
# BB#32:                                # %sw.epilog
	cmpl	$3, %eax
	je	.LBB0_34
# BB#33:                                # %sw.epilog
	cltq
	cmpl	%r13d, .Lswitch.table(,%rax,4)
	jne	.LBB0_34
# BB#37:                                # %if.end.381
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gsicc_init_hash_cs
	cmpl	$6, 16(%r15)
	jne	.LBB0_38
# BB#64:                                # %if.then.385
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [0.000000e+00,1.000000e+02,-1.280000e+02,1.270000e+02]
	movups	%xmm0, 20(%r15)
	movl	$-1023410176, 36(%r15)  # imm = 0xFFFFFFFFC3000000
	movl	$1123942400, 40(%r15)   # imm = 0x42FE0000
	movl	$1, 4(%r15)
	jmp	.LBB0_44
.LBB0_17:                               # %do.body.116
	movl	$-1, %ebp
	testq	%rbx, %rbx
	je	.LBB0_62
# BB#18:                                # %do.end.122
	decq	8(%rbx)
	jne	.LBB0_62
# BB#19:                                # %do.end.135
	movq	16(%rbx), %rdi
	movl	$.L__func__.seticc, %edx
	movq	%rbx, %rsi
	callq	*24(%rbx)
	movq	$0, 32(%rsp)
	jmp	.LBB0_62
.LBB0_21:                               # %do.end.163
	decq	288(%r15)
	jne	.LBB0_23
# BB#22:                                # %do.end.176
	movq	296(%r15), %rdi
	movl	$.L__func__.seticc, %edx
	movq	%r15, %rsi
	callq	*304(%r15)
.LBB0_23:                               # %do.body.191
	movq	32(%rsp), %rsi
	jmp	.LBB0_24
.LBB0_34:                               # %do.end.319
	decq	288(%r15)
	jne	.LBB0_36
# BB#35:                                # %do.end.332
	movq	296(%r15), %rdi
	movl	$.L__func__.seticc, %edx
	movq	%r15, %rsi
	callq	*304(%r15)
.LBB0_36:                               # %do.body.347
	movq	32(%rsp), %rsi
	movl	$-15, %ebp
	jmp	.LBB0_24
.LBB0_28:                               # %do.end.240
	decq	288(%r15)
	jne	.LBB0_30
# BB#29:                                # %do.end.253
	movq	296(%r15), %rdi
	movl	$.L__func__.seticc, %edx
	movq	%r15, %rsi
	callq	*304(%r15)
.LBB0_30:                               # %do.body.268
	movq	32(%rsp), %rsi
	movl	$-1, %ebp
.LBB0_24:                               # %do.body.191
	testq	%rsi, %rsi
	je	.LBB0_62
# BB#25:                                # %do.end.197
	decq	8(%rsi)
	jne	.LBB0_62
# BB#26:                                # %do.end.210
	movq	16(%rsi), %rdi
	movl	$.L__func__.seticc, %edx
	callq	*24(%rsi)
	movq	$0, 32(%rsp)
	jmp	.LBB0_62
.LBB0_38:                               # %for.cond.407.preheader
	testl	%r13d, %r13d
	movq	8(%rsp), %rbx           # 8-byte Reload
	jle	.LBB0_44
# BB#39:                                # %for.body.410.preheader
	xorl	%edx, %edx
	testb	$1, %r13b
	je	.LBB0_41
# BB#40:                                # %for.body.410.prol
	movl	(%rbx), %eax
	movl	%eax, 20(%r15)
	movl	4(%rbx), %eax
	movl	%eax, 24(%r15)
	movl	$1, %edx
.LBB0_41:                               # %for.body.410.preheader.split
	cmpl	$1, %r13d
	je	.LBB0_44
# BB#42:                                # %for.body.410.preheader.split.split
	subl	%edx, %r13d
	leaq	32(%r15,%rdx,8), %rax
	leal	(%rdx,%rdx), %ecx
	leal	2(%rdx,%rdx), %edx
	xorl	%esi, %esi
.LBB0_43:                               # %for.body.410
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rsi), %rdi
	movslq	%edi, %rdi
	movl	(%rbx,%rdi,4), %ebp
	movl	%ebp, -12(%rax,%rsi,4)
	incl	%edi
	movslq	%edi, %rdi
	movl	(%rbx,%rdi,4), %edi
	movl	%edi, -8(%rax,%rsi,4)
	leaq	(%rdx,%rsi), %rdi
	movslq	%edi, %rdi
	movl	(%rbx,%rdi,4), %ebp
	movl	%ebp, -4(%rax,%rsi,4)
	incl	%edi
	movslq	%edi, %rdi
	movl	(%rbx,%rdi,4), %edi
	movl	%edi, (%rax,%rsi,4)
	addq	$4, %rsi
	addl	$-2, %r13d
	jne	.LBB0_43
.LBB0_44:                               # %if.end.430
	movq	%r14, %rdi
	callq	gs_currentoverrideicc
	testl	%eax, %eax
	je	.LBB0_55
# BB#45:                                # %land.lhs.true.433
	movl	16(%r15), %eax
	decl	%eax
	cmpl	$5, %eax
	ja	.LBB0_51
# BB#46:                                # %land.lhs.true.433
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_48:                               # %sw.bb.440
	movq	336(%r14), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_50
.LBB0_47:                               # %sw.bb.439
	movq	336(%r14), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_50
.LBB0_49:                               # %sw.bb.443
	movq	336(%r14), %rax
	movq	24(%rax), %rax
.LBB0_50:                               # %do.end.453
	movq	32(%rsp), %rcx
	movq	%rax, 64(%rcx)
.LBB0_51:                               # %do.end.453
	movq	288(%r15), %rax
	addq	$-2, %rax
	movq	%rax, 288(%r15)
	jne	.LBB0_53
# BB#52:                                # %do.end.466
	movq	296(%r15), %rdi
	movl	$.L__func__.seticc, %edx
	movq	%r15, %rsi
	callq	*304(%r15)
	xorl	%r15d, %r15d
.LBB0_53:                               # %do.body.481
	movq	32(%rsp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_55
# BB#54:                                # %do.body.485
	incq	288(%rax)
.LBB0_55:                               # %if.end.498
	movq	(%r12), %rdi
	movq	32(%rsp), %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	movq	32(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_58
# BB#56:                                # %do.end.507
	decq	8(%rsi)
	jne	.LBB0_58
# BB#57:                                # %do.end.520
	movq	16(%rsi), %rdi
	movl	$.L__func__.seticc, %edx
	callq	*24(%rsi)
.LBB0_58:                               # %do.body.538
	testq	%r15, %r15
	je	.LBB0_61
# BB#59:                                # %do.end.544
	decq	288(%r15)
	jne	.LBB0_61
# BB#60:                                # %do.end.557
	movq	296(%r15), %rdi
	movl	$.L__func__.seticc, %edx
	movq	%r15, %rsi
	callq	*304(%r15)
.LBB0_61:                               # %do.end.571
	addq	$-16, 624(%r12)
.LBB0_62:                               # %cleanup.572
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	seticc, .Lfunc_end0-seticc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_48
	.quad	.LBB0_47
	.quad	.LBB0_49
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_55

	.text
	.globl	seticc_lab
	.align	16, 0x90
	.type	seticc_lab,@function
seticc_lab:                             # @seticc_lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 64
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r13, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_currentcolorspace
	movq	(%r15), %rdi
	callq	gs_state_memory
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	gs_cspace_build_ICC
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB1_1
# BB#3:                                 # %if.end
	movq	336(%rbx), %rax
	movq	32(%rax), %r12
	testq	%r12, %r12
	je	.LBB1_4
# BB#5:                                 # %if.end.12
	movq	8(%rsp), %r13
	movq	(%r15), %rdi
	callq	gs_state_memory
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	gsicc_set_gscs_profile
	movl	%eax, %r8d
	movq	336(%rbx), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_7
# BB#6:                                 # %do.body.21
	incq	288(%rax)
.LBB1_7:                                # %do.end.29
	testl	%r8d, %r8d
	js	.LBB1_8
# BB#9:                                 # %if.end.34
	movq	8(%rsp), %rsi
	movq	64(%rsi), %rax
	movabsq	$4812096201845374976, %rcx # imm = 0x42C8000000000000
	movq	%rcx, 20(%rax)
	movl	(%r14), %ecx
	movl	%ecx, 28(%rax)
	movl	4(%r14), %ecx
	movl	%ecx, 32(%rax)
	movl	8(%r14), %ecx
	movl	%ecx, 36(%rax)
	movl	12(%r14), %ecx
	movl	%ecx, 40(%rax)
	movq	(%r15), %rdi
	callq	gs_setcolorspace
	jmp	.LBB1_10
.LBB1_1:                                # %if.then
	movl	$.L__func__.seticc_lab, %edi
	movl	$.L.str.5, %esi
	movl	$495, %edx              # imm = 0x1EF
	movl	$1, %ecx
	movl	$.L.str.6, %r9d
	jmp	.LBB1_2
.LBB1_4:                                # %if.then.10
	movl	$.L__func__.seticc_lab, %edi
	movl	$.L.str.5, %esi
	movl	$505, %edx              # imm = 0x1F9
	movl	$1, %ecx
	movl	$.L.str.9, %r9d
	jmp	.LBB1_2
.LBB1_8:                                # %if.then.32
	movl	$.L__func__.seticc_lab, %edi
	movl	$.L.str.5, %esi
	movl	$511, %edx              # imm = 0x1FF
	movl	$1, %ecx
	movl	$.L.str.10, %r9d
.LBB1_2:                                # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB1_10:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	seticc_lab, .Lfunc_end1-seticc_lab
	.cfi_endproc

	.globl	seticc_cal
	.align	16, 0x90
	.type	seticc_cal,@function
seticc_cal:                             # @seticc_cal
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
	subq	$40, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 96
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
	movl	%r9d, %ebx
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	96(%rsp), %r15
	movq	(%r12), %rsi
	movq	8(%rsi), %rbp
	movq	%r15, %rdi
	callq	gsicc_find_cs
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	jne	.LBB2_15
# BB#1:                                 # %if.then
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	(%rbp), %rdx
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB2_2
# BB#4:                                 # %if.end
	movq	32(%rsp), %rax
	movq	$0, 40(%rax)
	movq	(%rbp), %r8
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ebx, %r9d
	callq	gsicc_create_from_cal
	testq	%rax, %rax
	je	.LBB2_5
# BB#6:                                 # %if.end.11
	movq	32(%rsp), %rdi
	movq	(%rbp), %rdx
	movq	%rax, %rsi
	callq	gsicc_set_gscs_profile
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_17
# BB#7:                                 # %for.cond.preheader
	movq	32(%rsp), %rsi
	testl	%ebx, %ebx
	jle	.LBB2_14
# BB#8:                                 # %for.body.lr.ph
	movq	64(%rsi), %rax
	leal	-1(%rbx), %r9d
	xorl	%ecx, %ecx
	testb	$3, %bl
	je	.LBB2_11
# BB#9:                                 # %for.body.prol.preheader
	movl	%ebx, %edi
	andl	$3, %edi
	xorl	%ecx, %ecx
	movabsq	$4575657221408423936, %rbp # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB2_10:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, 20(%rax,%rcx,8)
	incq	%rcx
	cmpl	%ecx, %edi
	jne	.LBB2_10
.LBB2_11:                               # %for.body.lr.ph.split
	cmpl	$3, %r9d
	jb	.LBB2_14
# BB#12:                                # %for.body.lr.ph.split.split
	subl	%ecx, %ebx
	leaq	48(%rax,%rcx,8), %rax
	movabsq	$4575657221408423936, %rcx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB2_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -28(%rax)
	movl	$1065353216, -24(%rax)  # imm = 0x3F800000
	movl	$0, -20(%rax)
	movl	$1065353216, -16(%rax)  # imm = 0x3F800000
	movl	$0, -12(%rax)
	movl	$1065353216, -8(%rax)   # imm = 0x3F800000
	movq	%rcx, -4(%rax)
	addq	$32, %rax
	addl	$-4, %ebx
	jne	.LBB2_13
.LBB2_14:                               # %for.end
	movq	(%r12), %rdi
	movq	%r15, %rdx
	callq	gsicc_add_cs
	movq	32(%rsp), %rax
.LBB2_15:                               # %if.end.25
	movq	(%r12), %rdi
	movq	%rax, %rsi
	callq	gs_setcolorspace
	jmp	.LBB2_16
.LBB2_2:                                # %if.then.4
	movl	$.L__func__.seticc_cal, %edi
	movl	$.L.str.5, %esi
	movl	$546, %edx              # imm = 0x222
	movl	$1, %ecx
	movl	$.L.str.6, %r9d
	jmp	.LBB2_3
.LBB2_5:                                # %if.then.9
	movl	$.L__func__.seticc_cal, %edi
	movl	$.L.str.5, %esi
	movl	$553, %edx              # imm = 0x229
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.11, %r9d
.LBB2_3:                                # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB2_16
.LBB2_17:                               # %if.then.15
	movl	$.L__func__.seticc_cal, %edi
	movl	$.L.str.5, %esi
	movl	$557, %edx              # imm = 0x22D
	movl	$1, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	callq	gs_throw_imp
.LBB2_16:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	seticc_cal, .Lfunc_end2-seticc_cal
	.cfi_endproc

	.align	16, 0x90
	.type	zseticcspace,@function
zseticcspace:                           # @zseticcspace
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
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 96
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	48(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB3_21
# BB#1:                                 # %if.end
	movq	48(%rsp), %rax
	movl	8(%rax), %r15d
	leal	(%r15,%r15), %ebp
	cmpl	$8, %ebp
	jbe	.LBB3_3
# BB#2:
	movl	$-15, %eax
	jmp	.LBB3_21
.LBB3_3:                                # %if.end.5
	leaq	40(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-21, %eax
	testl	%ecx, %ecx
	jle	.LBB3_21
# BB#4:                                 # %do.body
	movq	40(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB3_5
# BB#7:                                 # %do.body.22
	movq	8(%rdi), %rax
	movzwl	264(%rax), %edx
	testl	%edx, %edx
	jne	.LBB3_11
# BB#8:                                 # %do.body.22
	movl	4(%rdi), %ecx
	cmpl	%ecx, %edx
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true
	movzwl	266(%rax), %eax
	cmpl	%ecx, %eax
	jne	.LBB3_11
# BB#10:                                # %if.then.38
	callq	file_switch_to_read
	testl	%eax, %eax
	js	.LBB3_21
.LBB3_11:                               # %do.end.47
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	(%rax), %rcx
	cmpl	$0, 8(%rcx)
	je	.LBB3_12
# BB#13:                                # %lor.lhs.false
	movq	%rax, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB3_15
# BB#14:
	movl	$-15, %eax
	jmp	.LBB3_21
.LBB3_5:                                # %if.then.14
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB3_21
# BB#6:                                 # %cond.true
	callq	check_type_failed
	jmp	.LBB3_21
.LBB3_12:
	movl	$-15, %eax
	jmp	.LBB3_21
.LBB3_15:                               # %if.end.53
	movq	8(%r14), %rdi
	leaq	(%rsp), %r8
	movl	$.L.str.17, %edx
	movl	$zseticcspace.dflt_range, %r9d
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	callq	dict_floats_param
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB3_19
# BB#16:                                # %land.rhs.lr.ph
	movslq	%ebp, %rcx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_17:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movss	4(%rsp,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rsp,%rax,4), %xmm0
	jb	.LBB3_19
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB3_17 Depth=1
	addq	$2, %rax
	cmpq	%rcx, %rax
	jl	.LBB3_17
.LBB3_19:                               # %for.end
	cmpl	%ebp, %eax
	movl	$-15, %eax
	jne	.LBB3_21
# BB#20:                                # %if.end.69
	leaq	(%rsp), %rcx
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	seticc
.LBB3_21:                               # %cleanup.72
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zseticcspace, .Lfunc_end3-zseticcspace
	.cfi_endproc

	.align	16, 0x90
	.type	zset_outputintent,@function
zset_outputintent:                      # @zset_outputintent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 96
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	624(%r13), %rbx
	movq	(%r13), %rdi
	callq	gs_currentdevice
	movq	%rax, %rbp
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB4_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %r15d
	testb	$32, (%rax)
	je	.LBB4_69
# BB#3:                                 # %do.end.12
	movq	(%r13), %r12
	movq	336(%r12), %r14
	leaq	32(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*1680(%rbp)
	movq	32(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then.16
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	gsicc_init_device_profile_struct
	leaq	32(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*1680(%rbp)
	movq	32(%rsp), %rax
.LBB4_5:                                # %if.end.21
	xorl	%r15d, %r15d
	cmpq	$0, 48(%rax)
	jne	.LBB4_69
# BB#6:                                 # %if.end.25
	leaq	24(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_7
# BB#8:                                 # %if.end.30
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	16(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-21, %r15d
	testl	%eax, %eax
	jle	.LBB4_69
# BB#9:                                 # %do.body.38
	movq	16(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB4_10
# BB#12:                                # %do.body.54
	movq	8(%rdi), %rbx
	movzwl	264(%rbx), %ecx
	movl	4(%rdi), %eax
	cmpl	%eax, %ecx
	je	.LBB4_17
# BB#13:                                # %if.then.60
	testw	%cx, %cx
	jne	.LBB4_16
# BB#14:                                # %land.lhs.true
	movzwl	266(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB4_16
# BB#15:                                # %if.then.70
	callq	file_switch_to_read
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB4_17
	jmp	.LBB4_69
.LBB4_1:                                # %if.then
	movq	%rbx, %rdi
.LBB4_11:                               # %cond.true
	callq	check_type_failed
	movl	%eax, %r15d
.LBB4_69:                               # %cleanup.520
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_7:
	movl	%ebp, %r15d
	jmp	.LBB4_69
.LBB4_10:                               # %if.then.45
	movzbl	1(%rdi), %eax
	cmpl	$3, %eax
	movl	$-7, %r15d
	je	.LBB4_69
	jmp	.LBB4_11
.LBB4_16:                               # %if.else
	movq	256(%r13), %rbx
.LBB4_17:                               # %do.end.81
	movl	%ebp, %r15d
	movq	(%r13), %rdi
	callq	gs_state_memory
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	gsicc_profile_new
	movq	%rax, 8(%rsp)
	movq	(%rsp), %rcx            # 8-byte Reload
	movb	%cl, (%rax)
	movq	256(%rax), %rbx
	movl	220(%rax), %ebp
	movq	(%r13), %rdi
	callq	gs_state_memory
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%rax, %rdx
	callq	gsicc_get_profile_handle_buffer
	movq	8(%rsp), %rcx
	movq	%rax, 280(%rcx)
	movq	8(%rsp), %rsi
	movq	280(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_18
# BB#21:                                # %if.end.122
	callq	gscms_get_profile_data_space
	movq	8(%rsp), %rcx
	movl	%eax, 16(%rcx)
	xorl	%ebp, %ebp
	decl	%eax
	cmpl	$5, %eax
	ja	.LBB4_28
# BB#22:                                # %if.end.122
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_23:                               # %sw.bb
	leaq	16(%r14), %rax
	movl	$3, %edx
	jmp	.LBB4_26
.LBB4_18:                               # %do.body.93
	movl	$-1, %r15d
	testq	%rsi, %rsi
	je	.LBB4_69
# BB#19:                                # %do.end.99
	decq	288(%rsi)
	jne	.LBB4_69
# BB#20:                                # %do.end.109
	movq	296(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*304(%rsi)
	movq	$0, 8(%rsp)
	jmp	.LBB4_69
.LBB4_24:                               # %sw.bb.126
	leaq	8(%r14), %rax
	movl	$1, %edx
	jmp	.LBB4_26
.LBB4_25:                               # %sw.bb.127
	leaq	24(%r14), %rax
	movl	$4, %edx
.LBB4_26:                               # %sw.epilog
	movq	(%rsp), %rsi            # 8-byte Reload
	cmpl	%edx, %esi
	jne	.LBB4_37
# BB#27:
	movq	(%rax), %rbp
.LBB4_28:                               # %if.end.169
	movq	%rcx, %rdi
	movq	%r12, %rsi
	callq	gsicc_init_hash_cs
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rax, 48(%rcx)
	movq	8(%rsp), %rax
	movq	328(%rax), %rdi
	movl	$17, %esi
	movl	$.L.str.18, %edx
	callq	*64(%rdi)
	movq	8(%rsp), %rcx
	movq	%rax, 320(%rcx)
	movq	8(%rsp), %rax
	movq	320(%rax), %rbx
	movl	$.L.str.19, %edi
	callq	strlen
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	strncpy
	movl	$.L.str.19, %edi
	callq	strlen
	movq	8(%rsp), %rcx
	movq	320(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movl	$.L.str.19, %edi
	callq	strlen
	movq	8(%rsp), %rcx
	movl	%eax, 312(%rcx)
	leaq	8(%rsp), %rdi
	callq	gscms_set_icc_range
	movq	32(%rsp), %rax
	movq	(%rax), %rdi
	movzbl	(%rdi), %ebx
	callq	gsicc_get_default_type
	movq	32(%rsp), %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	cmpl	%ebx, %edx
	jne	.LBB4_40
# BB#29:                                # %if.end.169
	cmpl	$2, %eax
	ja	.LBB4_40
# BB#30:                                # %do.body.195
	movq	(%rcx), %rsi
	movq	8(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB4_43
# BB#31:                                # %do.body.201
	testq	%rax, %rax
	je	.LBB4_33
# BB#32:                                # %do.body.204
	incq	288(%rax)
.LBB4_33:                               # %do.body.215
	testq	%rsi, %rsi
	je	.LBB4_36
# BB#34:                                # %do.end.223
	decq	288(%rsi)
	jne	.LBB4_36
# BB#35:                                # %do.end.240
	movq	296(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*304(%rsi)
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
.LBB4_36:                               # %do.end.263
	movq	%rax, (%rcx)
	jmp	.LBB4_43
.LBB4_40:                               # %if.else.272
	cmpq	$0, 32(%rcx)
	jne	.LBB4_43
# BB#41:                                # %if.then.275
	movq	8(%rsp), %rax
	movq	%rax, 32(%rcx)
	movq	8(%rsp), %rax
	testq	%rax, %rax
	je	.LBB4_43
# BB#42:                                # %do.body.280
	incq	288(%rax)
.LBB4_43:                               # %if.end.296
	movq	%rbp, %rdi
	callq	gsicc_get_default_type
	cmpl	$2, %eax
	ja	.LBB4_68
# BB#44:                                # %if.then.300
	movq	8(%rsp), %rax
	movl	16(%rax), %ecx
	cmpl	$3, %ecx
	je	.LBB4_61
# BB#45:                                # %if.then.300
	cmpl	$2, %ecx
	jne	.LBB4_46
# BB#54:                                # %do.body.377
	movq	16(%r14), %rsi
	cmpq	%rax, %rsi
	je	.LBB4_68
# BB#55:                                # %do.body.382
	testq	%rax, %rax
	je	.LBB4_57
# BB#56:                                # %do.body.385
	incq	288(%rax)
.LBB4_57:                               # %do.body.397
	testq	%rsi, %rsi
	je	.LBB4_60
# BB#58:                                # %do.end.404
	decq	288(%rsi)
	jne	.LBB4_60
# BB#59:                                # %do.end.419
	movq	296(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*304(%rsi)
	movq	8(%rsp), %rax
.LBB4_60:                               # %do.end.439
	movq	%rax, 16(%r14)
	jmp	.LBB4_68
.LBB4_37:                               # %do.body.135
	movl	$-15, %r15d
	testq	%rcx, %rcx
	je	.LBB4_69
# BB#38:                                # %do.end.141
	decq	288(%rcx)
	jne	.LBB4_69
# BB#39:                                # %do.end.154
	movq	296(%rcx), %rdi
	movl	$.L.str.18, %edx
	movq	%rcx, %rsi
	callq	*304(%rcx)
	movq	$0, 8(%rsp)
	jmp	.LBB4_69
.LBB4_61:                               # %do.body.448
	movq	24(%r14), %rsi
	cmpq	%rax, %rsi
	je	.LBB4_68
# BB#62:                                # %do.body.453
	testq	%rax, %rax
	je	.LBB4_64
# BB#63:                                # %do.body.456
	incq	288(%rax)
.LBB4_64:                               # %do.body.468
	testq	%rsi, %rsi
	je	.LBB4_67
# BB#65:                                # %do.end.475
	decq	288(%rsi)
	jne	.LBB4_67
# BB#66:                                # %do.end.490
	movq	296(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*304(%rsi)
	movq	8(%rsp), %rax
.LBB4_67:                               # %do.end.510
	movq	%rax, 24(%r14)
	jmp	.LBB4_68
.LBB4_46:                               # %if.then.300
	cmpl	$1, %ecx
	jne	.LBB4_68
# BB#47:                                # %do.body.306
	movq	8(%r14), %rsi
	cmpq	%rax, %rsi
	je	.LBB4_68
# BB#48:                                # %do.body.311
	testq	%rax, %rax
	je	.LBB4_50
# BB#49:                                # %do.body.314
	incq	288(%rax)
.LBB4_50:                               # %do.body.326
	testq	%rsi, %rsi
	je	.LBB4_53
# BB#51:                                # %do.end.333
	decq	288(%rsi)
	jne	.LBB4_53
# BB#52:                                # %do.end.348
	movq	296(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*304(%rsi)
	movq	8(%rsp), %rax
.LBB4_53:                               # %do.end.368
	movq	%rax, 8(%r14)
.LBB4_68:                               # %if.end.516
	addq	$-16, 624(%r13)
	jmp	.LBB4_69
.Lfunc_end4:
	.size	zset_outputintent, .Lfunc_end4-zset_outputintent
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_24
	.quad	.LBB4_23
	.quad	.LBB4_25
	.quad	.LBB4_28
	.quad	.LBB4_23
	.quad	.LBB4_23

	.type	seticc.icc_std_profile_names,@object # @seticc.icc_std_profile_names
	.align	16
seticc.icc_std_profile_names:
	.quad	.L.str
	.quad	.L.str.1
	.size	seticc.icc_std_profile_names, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"srgb.icc"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sgray.icc"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"srgb"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sgray"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DataSource"
	.size	.L.str.4, 11

	.type	.L__func__.seticc,@object # @__func__.seticc
.L__func__.seticc:
	.asciz	"seticc"
	.size	.L__func__.seticc, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"./psi/zicc.c"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"building color space object"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Name"
	.size	.L.str.7, 5

	.type	.L__func__.seticc_lab,@object # @__func__.seticc_lab
.L__func__.seticc_lab:
	.asciz	"seticc_lab"
	.size	.L__func__.seticc_lab, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"cannot find lab icc profile"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"installing the lab profile"
	.size	.L.str.10, 27

	.type	.L__func__.seticc_cal,@object # @__func__.seticc_cal
.L__func__.seticc_cal:
	.asciz	"seticc_cal"
	.size	.L__func__.seticc_cal, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"creating the cal profile"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"installing the cal profile"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ll3dict"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1.seticcspace"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1.set_outputintent"
	.size	.L.str.15, 19

	.type	zicc_ll3_op_defs,@object # @zicc_ll3_op_defs
	.section	.rodata,"a",@progbits
	.globl	zicc_ll3_op_defs
	.align	16
zicc_ll3_op_defs:
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.14
	.quad	zseticcspace
	.quad	.L.str.15
	.quad	zset_outputintent
	.zero	16
	.size	zicc_ll3_op_defs, 64

	.type	zseticcspace.dflt_range,@object # @zseticcspace.dflt_range
	.align	16
zseticcspace.dflt_range:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	zseticcspace.dflt_range, 32

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"N"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Range"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"zset_outputintent"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"OIProfile"
	.size	.L.str.19, 10

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	3                       # 0x3
	.size	.Lswitch.table, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
