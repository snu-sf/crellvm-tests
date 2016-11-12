	.text
	.file	"siox.bc"
	.globl	siox_init
	.align	16, 0x90
	.type	siox_init,@function
siox_init:                              # @siox_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpl	$0, -36(%rbp)
	jl	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.7
	cmpl	$0, -40(%rbp)
	jl	.LBB0_13
# BB#12:                                # %if.then.9
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_init, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_14:                               # %if.end.11
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.12
	movl	$88, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movl	-28(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-32(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 28(%rax)
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 36(%rax)
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movabsq	$g_direct_hash, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$siox_cache_entry_free, %rcx
	movq	-56(%rbp), %rsi
	movl	%eax, 16(%rsi)
	movq	%rdx, %rsi
	callq	g_hash_table_new_full
	movq	-56(%rbp), %rcx
	movq	%rax, 48(%rcx)
	callq	cpercep_init
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	siox_init, .Lfunc_end0-siox_init
	.cfi_endproc

	.align	16, 0x90
	.type	siox_cache_entry_free,@function
siox_cache_entry_free:                  # @siox_cache_entry_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$8, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	siox_cache_entry_free, .Lfunc_end1-siox_cache_entry_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI2_1:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI2_2:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI2_3:
	.quad	4601778099247172813     # double 0.45000000000000001
.LCPI2_4:
	.quad	4602678819172646912     # double 0.5
.LCPI2_5:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI2_6:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_7:
	.long	925353388               # float 9.99999974E-6
	.text
	.globl	siox_foreground_extract
	.align	16, 0x90
	.type	siox_foreground_extract,@function
siox_foreground_extract:                # @siox_foreground_extract
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movl	40(%rbp), %r11d
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%r15d, -80(%rbp)
	movl	%r14d, -84(%rbp)
	movq	%rbx, -96(%rbp)
	movl	%r11d, -100(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -304(%rbp)
	movl	$0, -308(%rbp)
	movl	$0, -312(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -64(%rbp)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB2_9
# BB#8:                                 # %if.then.4
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_10:                               # %if.end.6
	jmp	.LBB2_11
.LBB2_11:                               # %do.end.7
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.8
	cmpl	$0, -68(%rbp)
	jl	.LBB2_14
# BB#13:                                # %if.then.10
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_15:                               # %if.end.12
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.13
	jmp	.LBB2_17
.LBB2_17:                               # %do.body.14
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB2_20
# BB#18:                                # %land.lhs.true.16
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-556(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	jmp	.LBB2_23
.LBB2_23:                               # %do.body.23
	cmpl	$0, -72(%rbp)
	jl	.LBB2_25
# BB#24:                                # %if.then.25
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_26:                               # %if.end.27
	jmp	.LBB2_27
.LBB2_27:                               # %do.end.28
	jmp	.LBB2_28
.LBB2_28:                               # %do.body.29
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB2_31
# BB#29:                                # %land.lhs.true.31
	movl	-80(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -560(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	-560(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_31
# BB#30:                                # %if.then.34
	jmp	.LBB2_32
.LBB2_31:                               # %if.else.35
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_32:                               # %if.end.36
	jmp	.LBB2_33
.LBB2_33:                               # %do.end.37
	jmp	.LBB2_34
.LBB2_34:                               # %do.body.38
	cmpl	$0, -84(%rbp)
	jl	.LBB2_36
# BB#35:                                # %if.then.40
	jmp	.LBB2_37
.LBB2_36:                               # %if.else.41
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_37:                               # %if.end.42
	jmp	.LBB2_38
.LBB2_38:                               # %do.end.43
	jmp	.LBB2_39
.LBB2_39:                               # %do.body.44
	cmpq	$0, -120(%rbp)
	je	.LBB2_41
# BB#40:                                # %lor.lhs.false
	cmpq	$0, -112(%rbp)
	je	.LBB2_42
.LBB2_41:                               # %if.then.47
	jmp	.LBB2_43
.LBB2_42:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_43:                               # %if.end.49
	jmp	.LBB2_44
.LBB2_44:                               # %do.end.50
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -268(%rbp)
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -272(%rbp)
	movq	-48(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -276(%rbp)
	movq	-48(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -280(%rbp)
# BB#45:                                # %do.body.55
	movl	-268(%rbp), %eax
	addl	-276(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-564(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_47
# BB#46:                                # %if.then.58
	jmp	.LBB2_48
.LBB2_47:                               # %if.else.59
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_48:                               # %if.end.60
	jmp	.LBB2_49
.LBB2_49:                               # %do.end.61
	jmp	.LBB2_50
.LBB2_50:                               # %do.body.62
	movl	-272(%rbp), %eax
	addl	-280(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	-568(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_52
# BB#51:                                # %if.then.66
	jmp	.LBB2_53
.LBB2_52:                               # %if.else.67
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_foreground_extract, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_194
.LBB2_53:                               # %if.end.68
	jmp	.LBB2_54
.LBB2_54:                               # %do.end.69
	leaq	-336(%rbp), %rdi
	movq	-96(%rbp), %rax
	cvtsd2ss	(%rax), %xmm0
	movss	%xmm0, -336(%rbp)
	movq	-96(%rbp), %rax
	cvtsd2ss	8(%rax), %xmm0
	movss	%xmm0, -332(%rbp)
	movq	-96(%rbp), %rax
	cvtsd2ss	16(%rax), %xmm0
	movss	%xmm0, -328(%rbp)
	callq	get_clustersize
	xorps	%xmm1, %xmm1
	movss	%xmm0, -284(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movaps	%xmm1, %xmm0
	callq	siox_progress_update
	movl	-52(%rbp), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB2_56
# BB#55:                                # %if.then.78
	movl	$3, -52(%rbp)
.LBB2_56:                               # %if.end.79
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_58
# BB#57:                                # %if.then.82
	movabsq	$siox_cache_remove_bg, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	g_hash_table_foreach_remove
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB2_58:                               # %if.end.84
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB2_60
# BB#59:                                # %if.then.87
	movabsq	$siox_cache_remove_fg, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	g_hash_table_foreach_remove
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB2_60:                               # %if.end.90
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB2_62
# BB#61:                                # %if.then.92
	movl	-52(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -52(%rbp)
.LBB2_62:                               # %if.end.93
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB2_64
# BB#63:                                # %if.then.95
	movl	-52(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB2_64:                               # %if.end.97
	movl	-52(%rbp), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB2_152
# BB#65:                                # %if.then.100
	leaq	-248(%rbp), %rdi
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	movl	-280(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-248(%rbp), %rsi
	movl	-276(%rbp), %eax
	imull	-280(%rbp), %eax
	movl	%eax, -324(%rbp)
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -256(%rbp)
	movl	$0, -320(%rbp)
	movl	$0, -316(%rbp)
.LBB2_66:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_68 Depth 2
                                        #       Child Loop BB2_70 Depth 3
	cmpq	$0, -256(%rbp)
	je	.LBB2_84
# BB#67:                                # %for.body
                                        #   in Loop: Header=BB2_66 Depth=1
	movq	-248(%rbp), %rax
	movq	%rax, -344(%rbp)
	movl	$0, -260(%rbp)
.LBB2_68:                               # %for.cond.104
                                        #   Parent Loop BB2_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_70 Depth 3
	movl	-260(%rbp), %eax
	cmpl	-200(%rbp), %eax
	jge	.LBB2_80
# BB#69:                                # %for.body.107
                                        #   in Loop: Header=BB2_68 Depth=2
	movq	-344(%rbp), %rax
	movq	%rax, -352(%rbp)
	movl	$0, -264(%rbp)
.LBB2_70:                               # %for.cond.108
                                        #   Parent Loop BB2_66 Depth=1
                                        #     Parent Loop BB2_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-264(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB2_78
# BB#71:                                # %for.body.111
                                        #   in Loop: Header=BB2_70 Depth=3
	movq	-352(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	jge	.LBB2_73
# BB#72:                                # %if.then.115
                                        #   in Loop: Header=BB2_70 Depth=3
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
	jmp	.LBB2_76
.LBB2_73:                               # %if.else.116
                                        #   in Loop: Header=BB2_70 Depth=3
	movq	-352(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jle	.LBB2_75
# BB#74:                                # %if.then.120
                                        #   in Loop: Header=BB2_70 Depth=3
	movl	-312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -312(%rbp)
.LBB2_75:                               # %if.end.122
                                        #   in Loop: Header=BB2_70 Depth=3
	jmp	.LBB2_76
.LBB2_76:                               # %if.end.123
                                        #   in Loop: Header=BB2_70 Depth=3
	jmp	.LBB2_77
.LBB2_77:                               # %for.inc
                                        #   in Loop: Header=BB2_70 Depth=3
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	movq	-352(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -352(%rbp)
	jmp	.LBB2_70
.LBB2_78:                               # %for.end
                                        #   in Loop: Header=BB2_68 Depth=2
	movl	-216(%rbp), %eax
	movq	-344(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -344(%rbp)
# BB#79:                                # %for.inc.125
                                        #   in Loop: Header=BB2_68 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB2_68
.LBB2_80:                               # %for.end.127
                                        #   in Loop: Header=BB2_66 Depth=1
	movl	$16, %eax
	movl	-204(%rbp), %ecx
	imull	-200(%rbp), %ecx
	addl	-320(%rbp), %ecx
	movl	%ecx, -320(%rbp)
	movl	-316(%rbp), %ecx
	movl	%eax, -584(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-584(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB2_82
# BB#81:                                # %if.then.134
                                        #   in Loop: Header=BB2_66 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	cvtsi2sdl	-320(%rbp), %xmm1
	cvtsi2sdl	-324(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	callq	siox_progress_update
.LBB2_82:                               # %if.end.138
                                        #   in Loop: Header=BB2_66 Depth=1
	jmp	.LBB2_83
.LBB2_83:                               # %for.inc.139
                                        #   in Loop: Header=BB2_66 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -256(%rbp)
	movl	-316(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)
	jmp	.LBB2_66
.LBB2_84:                               # %for.end.142
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_86
# BB#85:                                # %if.then.145
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-312(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -304(%rbp)
.LBB2_86:                               # %if.end.148
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB2_88
# BB#87:                                # %if.then.151
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-308(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -296(%rbp)
.LBB2_88:                               # %if.end.154
	leaq	-184(%rbp), %rdi
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rsi
	movl	-268(%rbp), %edx
	movq	-48(%rbp), %rcx
	subl	20(%rcx), %edx
	movl	-272(%rbp), %r8d
	movq	-48(%rbp), %rcx
	subl	24(%rcx), %r8d
	movl	-276(%rbp), %r9d
	movl	-280(%rbp), %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-248(%rbp), %rdi
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	movl	-280(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -592(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-184(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -256(%rbp)
	movl	-52(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_106
# BB#89:                                # %if.then.160
	movl	$0, -356(%rbp)
	movl	$0, -320(%rbp)
	movl	$0, -316(%rbp)
.LBB2_90:                               # %for.cond.161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_92 Depth 2
                                        #       Child Loop BB2_94 Depth 3
	cmpq	$0, -256(%rbp)
	je	.LBB2_105
# BB#91:                                # %for.body.164
                                        #   in Loop: Header=BB2_90 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -376(%rbp)
	movl	$0, -260(%rbp)
.LBB2_92:                               # %for.cond.168
                                        #   Parent Loop BB2_90 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_94 Depth 3
	movl	-260(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB2_101
# BB#93:                                # %for.body.172
                                        #   in Loop: Header=BB2_92 Depth=2
	movq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -392(%rbp)
	movl	$0, -264(%rbp)
.LBB2_94:                               # %for.cond.174
                                        #   Parent Loop BB2_90 Depth=1
                                        #     Parent Loop BB2_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-264(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB2_99
# BB#95:                                # %for.body.178
                                        #   in Loop: Header=BB2_94 Depth=3
	movq	-392(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	jge	.LBB2_97
# BB#96:                                # %if.then.182
                                        #   in Loop: Header=BB2_94 Depth=3
	movq	-384(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-296(%rbp), %rax
	movslq	-356(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	callq	calc_lab
	movl	-356(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -356(%rbp)
.LBB2_97:                               # %if.end.186
                                        #   in Loop: Header=BB2_94 Depth=3
	jmp	.LBB2_98
.LBB2_98:                               # %for.inc.187
                                        #   in Loop: Header=BB2_94 Depth=3
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	movq	-392(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -392(%rbp)
	movq	-48(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-384(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -384(%rbp)
	jmp	.LBB2_94
.LBB2_99:                               # %for.end.193
                                        #   in Loop: Header=BB2_92 Depth=2
	movl	-152(%rbp), %eax
	movq	-368(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -368(%rbp)
	movl	-216(%rbp), %eax
	movq	-376(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -376(%rbp)
# BB#100:                               # %for.inc.200
                                        #   in Loop: Header=BB2_92 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB2_92
.LBB2_101:                              # %for.end.202
                                        #   in Loop: Header=BB2_90 Depth=1
	movl	$16, %eax
	movl	-204(%rbp), %ecx
	imull	-200(%rbp), %ecx
	addl	-320(%rbp), %ecx
	movl	%ecx, -320(%rbp)
	movl	-316(%rbp), %ecx
	movl	%eax, -596(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-596(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB2_103
# BB#102:                               # %if.then.210
                                        #   in Loop: Header=BB2_90 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	cvtsi2sdl	-320(%rbp), %xmm1
	cvtsi2sdl	-324(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	callq	siox_progress_update
.LBB2_103:                              # %if.end.216
                                        #   in Loop: Header=BB2_90 Depth=1
	jmp	.LBB2_104
.LBB2_104:                              # %for.inc.217
                                        #   in Loop: Header=BB2_90 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -256(%rbp)
	movl	-316(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)
	jmp	.LBB2_90
.LBB2_105:                              # %for.end.220
	jmp	.LBB2_145
.LBB2_106:                              # %if.else.221
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB2_124
# BB#107:                               # %if.then.224
	movl	$0, -396(%rbp)
	movl	$0, -320(%rbp)
	movl	$0, -316(%rbp)
.LBB2_108:                              # %for.cond.226
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_110 Depth 2
                                        #       Child Loop BB2_112 Depth 3
	cmpq	$0, -256(%rbp)
	je	.LBB2_123
# BB#109:                               # %for.body.229
                                        #   in Loop: Header=BB2_108 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -416(%rbp)
	movl	$0, -260(%rbp)
.LBB2_110:                              # %for.cond.234
                                        #   Parent Loop BB2_108 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_112 Depth 3
	movl	-260(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB2_119
# BB#111:                               # %for.body.238
                                        #   in Loop: Header=BB2_110 Depth=2
	movq	-408(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movl	$0, -264(%rbp)
.LBB2_112:                              # %for.cond.241
                                        #   Parent Loop BB2_108 Depth=1
                                        #     Parent Loop BB2_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-264(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB2_117
# BB#113:                               # %for.body.245
                                        #   in Loop: Header=BB2_112 Depth=3
	movq	-432(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jle	.LBB2_115
# BB#114:                               # %if.then.249
                                        #   in Loop: Header=BB2_112 Depth=3
	movq	-424(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-304(%rbp), %rax
	movslq	-396(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	callq	calc_lab
	movl	-396(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -396(%rbp)
.LBB2_115:                              # %if.end.255
                                        #   in Loop: Header=BB2_112 Depth=3
	jmp	.LBB2_116
.LBB2_116:                              # %for.inc.256
                                        #   in Loop: Header=BB2_112 Depth=3
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	movq	-432(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -432(%rbp)
	movq	-48(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-424(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -424(%rbp)
	jmp	.LBB2_112
.LBB2_117:                              # %for.end.262
                                        #   in Loop: Header=BB2_110 Depth=2
	movl	-152(%rbp), %eax
	movq	-408(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -408(%rbp)
	movl	-216(%rbp), %eax
	movq	-416(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -416(%rbp)
# BB#118:                               # %for.inc.269
                                        #   in Loop: Header=BB2_110 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB2_110
.LBB2_119:                              # %for.end.271
                                        #   in Loop: Header=BB2_108 Depth=1
	movl	$16, %eax
	movl	-204(%rbp), %ecx
	imull	-200(%rbp), %ecx
	addl	-320(%rbp), %ecx
	movl	%ecx, -320(%rbp)
	movl	-316(%rbp), %ecx
	movl	%eax, -600(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-600(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB2_121
# BB#120:                               # %if.then.279
                                        #   in Loop: Header=BB2_108 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	cvtsi2sdl	-320(%rbp), %xmm1
	cvtsi2sdl	-324(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	callq	siox_progress_update
.LBB2_121:                              # %if.end.285
                                        #   in Loop: Header=BB2_108 Depth=1
	jmp	.LBB2_122
.LBB2_122:                              # %for.inc.286
                                        #   in Loop: Header=BB2_108 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -256(%rbp)
	movl	-316(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)
	jmp	.LBB2_108
.LBB2_123:                              # %for.end.289
	jmp	.LBB2_144
.LBB2_124:                              # %if.else.290
	movl	$0, -436(%rbp)
	movl	$0, -440(%rbp)
	movl	$0, -320(%rbp)
	movl	$0, -316(%rbp)
.LBB2_125:                              # %for.cond.292
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_127 Depth 2
                                        #       Child Loop BB2_129 Depth 3
	cmpq	$0, -256(%rbp)
	je	.LBB2_143
# BB#126:                               # %for.body.295
                                        #   in Loop: Header=BB2_125 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -456(%rbp)
	movl	$0, -260(%rbp)
.LBB2_127:                              # %for.cond.300
                                        #   Parent Loop BB2_125 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_129 Depth 3
	movl	-260(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB2_139
# BB#128:                               # %for.body.304
                                        #   in Loop: Header=BB2_127 Depth=2
	movq	-448(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -472(%rbp)
	movl	$0, -264(%rbp)
.LBB2_129:                              # %for.cond.307
                                        #   Parent Loop BB2_125 Depth=1
                                        #     Parent Loop BB2_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-264(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB2_137
# BB#130:                               # %for.body.311
                                        #   in Loop: Header=BB2_129 Depth=3
	movq	-472(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	jge	.LBB2_132
# BB#131:                               # %if.then.315
                                        #   in Loop: Header=BB2_129 Depth=3
	movq	-464(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-296(%rbp), %rax
	movslq	-436(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	callq	calc_lab
	movl	-436(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -436(%rbp)
	jmp	.LBB2_135
.LBB2_132:                              # %if.else.321
                                        #   in Loop: Header=BB2_129 Depth=3
	movq	-472(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jle	.LBB2_134
# BB#133:                               # %if.then.325
                                        #   in Loop: Header=BB2_129 Depth=3
	movq	-464(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-304(%rbp), %rax
	movslq	-440(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	callq	calc_lab
	movl	-440(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -440(%rbp)
.LBB2_134:                              # %if.end.331
                                        #   in Loop: Header=BB2_129 Depth=3
	jmp	.LBB2_135
.LBB2_135:                              # %if.end.332
                                        #   in Loop: Header=BB2_129 Depth=3
	jmp	.LBB2_136
.LBB2_136:                              # %for.inc.333
                                        #   in Loop: Header=BB2_129 Depth=3
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	movq	-472(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -472(%rbp)
	movq	-48(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-464(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -464(%rbp)
	jmp	.LBB2_129
.LBB2_137:                              # %for.end.339
                                        #   in Loop: Header=BB2_127 Depth=2
	movl	-152(%rbp), %eax
	movq	-448(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -448(%rbp)
	movl	-216(%rbp), %eax
	movq	-456(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -456(%rbp)
# BB#138:                               # %for.inc.346
                                        #   in Loop: Header=BB2_127 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB2_127
.LBB2_139:                              # %for.end.348
                                        #   in Loop: Header=BB2_125 Depth=1
	movl	$16, %eax
	movl	-204(%rbp), %ecx
	imull	-200(%rbp), %ecx
	addl	-320(%rbp), %ecx
	movl	%ecx, -320(%rbp)
	movl	-316(%rbp), %ecx
	movl	%eax, -604(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-604(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB2_141
# BB#140:                               # %if.then.356
                                        #   in Loop: Header=BB2_125 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	cvtsi2sdl	-320(%rbp), %xmm1
	cvtsi2sdl	-324(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	callq	siox_progress_update
.LBB2_141:                              # %if.end.362
                                        #   in Loop: Header=BB2_125 Depth=1
	jmp	.LBB2_142
.LBB2_142:                              # %for.inc.363
                                        #   in Loop: Header=BB2_125 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -256(%rbp)
	movl	-316(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)
	jmp	.LBB2_125
.LBB2_143:                              # %for.end.366
	jmp	.LBB2_144
.LBB2_144:                              # %if.end.367
	jmp	.LBB2_145
.LBB2_145:                              # %if.end.368
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB2_149
# BB#146:                               # %if.then.371
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movl	$3, %ecx
	movl	$1, %edx
	leaq	-336(%rbp), %rax
	movq	-296(%rbp), %rdi
	movl	-308(%rbp), %esi
	movq	-48(%rbp), %r8
	addq	$72, %r8
	movq	-48(%rbp), %r9
	cmpl	$1, 16(%r9)
	cmovel	%edx, %ecx
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %r10
	movq	%r8, %rdx
	movl	%ecx, -608(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-608(%rbp), %r8d        # 4-byte Reload
	movq	%r10, (%rsp)
	callq	create_signature
	movq	-48(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	cmpl	$1, 72(%rax)
	jge	.LBB2_148
# BB#147:                               # %if.then.382
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB2_194
.LBB2_148:                              # %if.end.383
	jmp	.LBB2_149
.LBB2_149:                              # %if.end.384
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	siox_progress_update
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_151
# BB#150:                               # %if.then.387
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$3, %ecx
	movl	$1, %edx
	leaq	-336(%rbp), %rax
	movq	-304(%rbp), %rdi
	movl	-312(%rbp), %esi
	movq	-48(%rbp), %r8
	addq	$76, %r8
	movq	-48(%rbp), %r9
	cmpl	$1, 16(%r9)
	cmovel	%edx, %ecx
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %r10
	movq	%r8, %rdx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-612(%rbp), %r8d        # 4-byte Reload
	movq	%r10, (%rsp)
	callq	create_signature
	movq	-48(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB2_151:                              # %if.end.396
	jmp	.LBB2_152
.LBB2_152:                              # %if.end.397
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	siox_progress_update
	leaq	-268(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	leaq	-276(%rbp), %rax
	leaq	-280(%rbp), %rcx
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	subl	-68(%rbp), %r9d
	movl	-80(%rbp), %r10d
	subl	-72(%rbp), %r10d
	movl	-268(%rbp), %r11d
	movl	-272(%rbp), %ebx
	movl	-276(%rbp), %r14d
	movl	-280(%rbp), %r15d
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	%r9d, %edx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	%r14d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	-632(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-624(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	callq	gimp_rectangle_intersect
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %r12
	movq	(%r12), %rsi
	movl	-268(%rbp), %edx
	movq	-48(%rbp), %r12
	subl	20(%r12), %edx
	movl	-272(%rbp), %r8d
	movq	-48(%rbp), %r12
	subl	24(%r12), %r8d
	movl	-276(%rbp), %r9d
	movl	-280(%rbp), %r10d
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-248(%rbp), %rdi
	movl	$1, %eax
	movq	-64(%rbp), %rsi
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	movl	-280(%rbp), %r9d
	movl	$1, (%rsp)
	movl	%eax, -652(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-184(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movl	-276(%rbp), %eax
	imull	-280(%rbp), %eax
	movl	%eax, -324(%rbp)
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -256(%rbp)
	movl	$0, -316(%rbp)
	movl	$0, -320(%rbp)
.LBB2_153:                              # %for.cond.408
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_155 Depth 2
                                        #       Child Loop BB2_157 Depth 3
                                        #         Child Loop BB2_164 Depth 4
                                        #         Child Loop BB2_175 Depth 4
	cmpq	$0, -256(%rbp)
	je	.LBB2_189
# BB#154:                               # %for.body.411
                                        #   in Loop: Header=BB2_153 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -488(%rbp)
	movl	$0, -260(%rbp)
.LBB2_155:                              # %for.cond.416
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_157 Depth 3
                                        #         Child Loop BB2_164 Depth 4
                                        #         Child Loop BB2_175 Depth 4
	movl	-260(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB2_185
# BB#156:                               # %for.body.420
                                        #   in Loop: Header=BB2_155 Depth=2
	movq	-480(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -504(%rbp)
	movl	$0, -264(%rbp)
.LBB2_157:                              # %for.cond.423
                                        #   Parent Loop BB2_153 Depth=1
                                        #     Parent Loop BB2_155 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_164 Depth 4
                                        #         Child Loop BB2_175 Depth 4
	movl	-264(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB2_183
# BB#158:                               # %for.body.427
                                        #   in Loop: Header=BB2_157 Depth=3
	movq	-504(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	jl	.LBB2_160
# BB#159:                               # %lor.lhs.false.432
                                        #   in Loop: Header=BB2_157 Depth=3
	movq	-504(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jle	.LBB2_161
.LBB2_160:                              # %if.then.436
                                        #   in Loop: Header=BB2_157 Depth=3
	jmp	.LBB2_182
.LBB2_161:                              # %if.end.437
                                        #   in Loop: Header=BB2_157 Depth=3
	movq	-496(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	callq	create_key
	movl	%eax, -548(%rbp)
	movq	-48(%rbp), %rdx
	movq	48(%rdx), %rdi
	movslq	-548(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	je	.LBB2_163
# BB#162:                               # %if.then.445
                                        #   in Loop: Header=BB2_157 Depth=3
	xorl	%eax, %eax
	movl	$254, %ecx
	movq	-544(%rbp), %rdx
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-544(%rbp), %rdx
	ucomiss	4(%rdx), %xmm0
	cmovael	%ecx, %eax
	movb	%al, %sil
	movq	-504(%rbp), %rdx
	movb	%sil, (%rdx)
	jmp	.LBB2_182
.LBB2_163:                              # %if.end.450
                                        #   in Loop: Header=BB2_157 Depth=3
	movl	$8, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	leaq	-520(%rbp), %rcx
	movq	%rax, -544(%rbp)
	movq	-496(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	callq	calc_lab
	leaq	-520(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	callq	euklid
	movss	%xmm0, -524(%rbp)
	movl	$1, -552(%rbp)
.LBB2_164:                              # %for.cond.457
                                        #   Parent Loop BB2_153 Depth=1
                                        #     Parent Loop BB2_155 Depth=2
                                        #       Parent Loop BB2_157 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-552(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jge	.LBB2_169
# BB#165:                               # %for.body.461
                                        #   in Loop: Header=BB2_164 Depth=4
	leaq	-520(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movslq	-552(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	euklid
	movss	%xmm0, -532(%rbp)
	movss	-532(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-524(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_167
# BB#166:                               # %if.then.468
                                        #   in Loop: Header=BB2_164 Depth=4
	movss	-532(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -524(%rbp)
.LBB2_167:                              # %if.end.469
                                        #   in Loop: Header=BB2_164 Depth=4
	jmp	.LBB2_168
.LBB2_168:                              # %for.inc.470
                                        #   in Loop: Header=BB2_164 Depth=4
	movl	-552(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -552(%rbp)
	jmp	.LBB2_164
.LBB2_169:                              # %for.end.472
                                        #   in Loop: Header=BB2_157 Depth=3
	movss	-524(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-544(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB2_174
# BB#170:                               # %if.then.477
                                        #   in Loop: Header=BB2_157 Depth=3
	movss	-524(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-284(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_172
# BB#171:                               # %if.then.480
                                        #   in Loop: Header=BB2_157 Depth=3
	movss	-524(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-284(%rbp), %xmm0
	movss	%xmm0, -528(%rbp)
	jmp	.LBB2_173
.LBB2_172:                              # %if.else.482
                                        #   in Loop: Header=BB2_157 Depth=3
	movss	.LCPI2_7, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -528(%rbp)
.LBB2_173:                              # %if.end.483
                                        #   in Loop: Header=BB2_157 Depth=3
	jmp	.LBB2_181
.LBB2_174:                              # %if.else.484
                                        #   in Loop: Header=BB2_157 Depth=3
	leaq	-520(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	64(%rax), %rsi
	callq	euklid
	movss	%xmm0, -528(%rbp)
	movl	$1, -552(%rbp)
.LBB2_175:                              # %for.cond.488
                                        #   Parent Loop BB2_153 Depth=1
                                        #     Parent Loop BB2_155 Depth=2
                                        #       Parent Loop BB2_157 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-552(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	76(%rcx), %eax
	jge	.LBB2_180
# BB#176:                               # %for.body.492
                                        #   in Loop: Header=BB2_175 Depth=4
	leaq	-520(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-552(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	euklid
	movss	%xmm0, -532(%rbp)
	movss	-532(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-528(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_178
# BB#177:                               # %if.then.499
                                        #   in Loop: Header=BB2_175 Depth=4
	movss	-532(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -528(%rbp)
.LBB2_178:                              # %if.end.500
                                        #   in Loop: Header=BB2_175 Depth=4
	jmp	.LBB2_179
.LBB2_179:                              # %for.inc.501
                                        #   in Loop: Header=BB2_175 Depth=4
	movl	-552(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -552(%rbp)
	jmp	.LBB2_175
.LBB2_180:                              # %for.end.503
                                        #   in Loop: Header=BB2_157 Depth=3
	jmp	.LBB2_181
.LBB2_181:                              # %if.end.504
                                        #   in Loop: Header=BB2_157 Depth=3
	movss	-528(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-544(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movslq	-548(%rbp), %rsi
	movq	-544(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert
	xorl	%ecx, %ecx
	movl	$254, %r8d
	movss	-524(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	-528(%rbp), %xmm0
	cmovael	%r8d, %ecx
	movb	%cl, %r9b
	movq	-504(%rbp), %rdx
	movb	%r9b, (%rdx)
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB2_182:                              # %for.inc.513
                                        #   in Loop: Header=BB2_157 Depth=3
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	movq	-504(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -504(%rbp)
	movq	-48(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-496(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -496(%rbp)
	jmp	.LBB2_157
.LBB2_183:                              # %for.end.519
                                        #   in Loop: Header=BB2_155 Depth=2
	movl	-152(%rbp), %eax
	movq	-480(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -480(%rbp)
	movl	-216(%rbp), %eax
	movq	-488(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -488(%rbp)
# BB#184:                               # %for.inc.526
                                        #   in Loop: Header=BB2_155 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB2_155
.LBB2_185:                              # %for.end.528
                                        #   in Loop: Header=BB2_153 Depth=1
	movl	$8, %eax
	movl	-204(%rbp), %ecx
	imull	-200(%rbp), %ecx
	addl	-320(%rbp), %ecx
	movl	%ecx, -320(%rbp)
	movl	-316(%rbp), %ecx
	movl	%eax, -660(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-660(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB2_187
# BB#186:                               # %if.then.536
                                        #   in Loop: Header=BB2_153 Depth=1
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	cvtsi2sdl	-320(%rbp), %xmm2
	cvtsi2sdl	-324(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	siox_progress_update
.LBB2_187:                              # %if.end.542
                                        #   in Loop: Header=BB2_153 Depth=1
	jmp	.LBB2_188
.LBB2_188:                              # %for.inc.543
                                        #   in Loop: Header=BB2_153 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -256(%rbp)
	movl	-316(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)
	jmp	.LBB2_153
.LBB2_189:                              # %for.end.546
	movq	-64(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-272(%rbp), %edx
	movl	-276(%rbp), %ecx
	movl	-280(%rbp), %r8d
	callq	smooth_mask
	movq	-64(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-272(%rbp), %edx
	movl	-276(%rbp), %ecx
	movl	-280(%rbp), %r8d
	callq	erode_mask
	xorl	%ecx, %ecx
	movl	$4, %edx
	movq	-64(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-272(%rbp), %r8d
	movl	-276(%rbp), %eax
	movl	-280(%rbp), %r9d
	cmpl	$0, -100(%rbp)
	cmovnel	%edx, %ecx
	movl	%r8d, %edx
	movl	%ecx, -664(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r9d, %r8d
	movl	-664(%rbp), %r9d        # 4-byte Reload
	callq	find_max_blob
	movsd	.LCPI2_5, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	siox_progress_update
	movl	$0, -316(%rbp)
.LBB2_190:                              # %for.cond.549
                                        # =>This Inner Loop Header: Depth=1
	movl	-316(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB2_193
# BB#191:                               # %for.body.552
                                        #   in Loop: Header=BB2_190 Depth=1
	movq	-64(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-272(%rbp), %edx
	movl	-276(%rbp), %ecx
	movl	-280(%rbp), %r8d
	callq	smooth_mask
# BB#192:                               # %for.inc.553
                                        #   in Loop: Header=BB2_190 Depth=1
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB2_190
.LBB2_193:                              # %for.end.555
	xorl	%eax, %eax
	movl	$4, %ecx
	movq	-64(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-272(%rbp), %edx
	movl	-276(%rbp), %r8d
	movl	-280(%rbp), %r9d
	cmpl	$0, -100(%rbp)
	cmovnel	%ecx, %eax
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, %r9d
	callq	find_max_blob
	movq	-64(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-272(%rbp), %edx
	movl	-276(%rbp), %ecx
	movl	-280(%rbp), %r8d
	callq	dilate_mask
	movsd	.LCPI2_6, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	siox_progress_update
.LBB2_194:                              # %return
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	siox_foreground_extract, .Lfunc_end2-siox_foreground_extract
	.cfi_endproc

	.align	16, 0x90
	.type	get_clustersize,@function
get_clustersize:                        # @get_clustersize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movd	%xmm2, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm2
	subss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movd	%xmm2, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm2
	subss	%xmm2, %xmm1
	movq	-8(%rbp), %rdi
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	movss	4(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movd	%xmm3, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm3
	subss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movd	%xmm2, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm2
	subss	%xmm2, %xmm1
	movq	-8(%rbp), %rdi
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movd	%xmm3, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm3
	subss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_clustersize, .Lfunc_end3-get_clustersize
	.cfi_endproc

	.align	16, 0x90
	.type	siox_progress_update,@function
siox_progress_update:                   # @siox_progress_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
.LBB4_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	siox_progress_update, .Lfunc_end4-siox_progress_update
	.cfi_endproc

	.align	16, 0x90
	.type	siox_cache_remove_bg,@function
siox_cache_remove_bg:                   # @siox_cache_remove_bg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rdx
	movss	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	siox_cache_remove_bg, .Lfunc_end5-siox_cache_remove_bg
	.cfi_endproc

	.align	16, 0x90
	.type	siox_cache_remove_fg,@function
siox_cache_remove_fg:                   # @siox_cache_remove_fg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rdx
	ucomiss	4(%rdx), %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	siox_cache_remove_fg, .Lfunc_end6-siox_cache_remove_fg
	.cfi_endproc

	.align	16, 0x90
	.type	calc_lab,@function
calc_lab:                               # @calc_lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	decl	%eax
	subl	$2, %eax
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB7_2
	jmp	.LBB7_10
.LBB7_10:                               # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	addl	$-3, %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	ja	.LBB7_6
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	callq	cpercep_rgb_to_space
	jmp	.LBB7_8
.LBB7_2:                                # %sw.bb.5
	cmpq	$0, -24(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	%ecx, -60(%rbp)
	movslq	-60(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %r8
	movzbl	(%r8,%rax), %r9d
	cvtsi2sdl	%r9d, %xmm0
	movl	%ecx, %r9d
	incl	%r9d
	movslq	%r9d, %rax
	movzbl	(%r8,%rax), %r9d
	cvtsi2sdl	%r9d, %xmm1
	addl	$2, %ecx
	movslq	%ecx, %rax
	movzbl	(%r8,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	callq	cpercep_rgb_to_space
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	callq	cpercep_rgb_to_space
.LBB7_5:                                # %if.end
	jmp	.LBB7_8
.LBB7_6:                                # %sw.default
	jmp	.LBB7_7
.LBB7_7:                                # %do.body
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movl	$167, %r8d
	movabsq	$.L__func__.calc_lab, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB7_9
.LBB7_8:                                # %sw.epilog
	cvtsd2ss	-40(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	cvtsd2ss	-48(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, 4(%rax)
	cvtsd2ss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, 8(%rax)
.LBB7_9:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	calc_lab, .Lfunc_end7-calc_lab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	create_signature,@function
create_signature:                       # @create_signature
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	cmpl	$1, -20(%rbp)
	jge	.LBB8_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	xorl	%eax, %eax
	leaq	-76(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stageone
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	siox_progress_update
	xorl	%eax, %eax
	leaq	-80(%rbp), %r8
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-76(%rbp), %edx
	movq	-40(%rbp), %r9
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movl	-44(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stagetwo
	movl	-80(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %r8
	shlq	$4, %r8
	movl	%r8d, %eax
	movl	%eax, %esi
	callq	g_memdup
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	create_signature, .Lfunc_end8-create_signature
	.cfi_endproc

	.align	16, 0x90
	.type	create_key,@function
create_key:                             # @create_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, %eax
	decl	%eax
	subl	$2, %eax
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB9_2
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-40(%rbp), %eax         # 4-byte Reload
	addl	$-3, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	ja	.LBB9_5
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$16, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	orl	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.7
	cmpq	$0, -32(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	shll	$16, %ecx
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	shll	$8, %esi
	orl	%esi, %ecx
	movl	-36(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	orl	%esi, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB9_6
.LBB9_4:                                # %if.else
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %sw.default
	movl	$0, -4(%rbp)
.LBB9_6:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	create_key, .Lfunc_end9-create_key
	.cfi_endproc

	.align	16, 0x90
	.type	euklid,@function
euklid:                                 # @euklid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	(%rsi), %xmm1
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	4(%rsi), %xmm1
	movq	-8(%rbp), %rsi
	movss	4(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	4(%rsi), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	8(%rsi), %xmm1
	movq	-8(%rbp), %rsi
	movss	8(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	8(%rsi), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	euklid, .Lfunc_end10-euklid
	.cfi_endproc

	.align	16, 0x90
	.type	smooth_mask,@function
smooth_mask:                            # @smooth_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-88(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	callq	smooth_region
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	smooth_mask, .Lfunc_end11-smooth_mask
	.cfi_endproc

	.align	16, 0x90
	.type	erode_mask,@function
erode_mask:                             # @erode_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-88(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	callq	erode_region
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	erode_mask, .Lfunc_end12-erode_mask
	.cfi_endproc

	.align	16, 0x90
	.type	find_max_blob,@function
find_max_blob:                          # @find_max_blob
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -132(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	threshold_mask
	leaq	-112(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-112(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -120(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
                                        #       Child Loop BB13_5 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB13_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movl	$0, -124(%rbp)
.LBB13_3:                               # %for.cond.3
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_5 Depth 3
	movl	-124(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB13_15
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -128(%rbp)
.LBB13_5:                               # %for.cond.6
                                        #   Parent Loop BB13_1 Depth=1
                                        #     Parent Loop BB13_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-128(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB13_13
# BB#6:                                 # %for.body.8
                                        #   in Loop: Header=BB13_5 Depth=3
	movq	-160(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -133(%rbp)
	movzbl	-133(%rbp), %edx
	cmpl	$0, %edx
	je	.LBB13_11
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_5 Depth=3
	movzbl	-133(%rbp), %eax
	cmpl	$7, %eax
	je	.LBB13_11
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB13_5 Depth=3
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movl	$7, %ecx
	movq	%rax, -168(%rbp)
	movl	-76(%rbp), %edx
	addl	-128(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, (%rax)
	movl	-140(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %r8d
	addl	-20(%rbp), %r8d
	movl	-16(%rbp), %r9d
	addl	-24(%rbp), %r9d
	movq	-168(%rbp), %rax
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	%rax, %r9
	movl	$7, (%rsp)
	callq	depth_first_search
	movq	-40(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-132(%rbp), %ecx
	jle	.LBB13_10
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB13_5 Depth=3
	movq	-168(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -132(%rbp)
.LBB13_10:                              # %if.end
                                        #   in Loop: Header=BB13_5 Depth=3
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.22
                                        #   in Loop: Header=BB13_5 Depth=3
	jmp	.LBB13_12
.LBB13_12:                              # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	movq	-160(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	jmp	.LBB13_5
.LBB13_13:                              # %for.end
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-80(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
# BB#14:                                # %for.inc.23
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB13_3
.LBB13_15:                              # %for.end.26
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_16
.LBB13_16:                              # %for.inc.27
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -120(%rbp)
	jmp	.LBB13_1
.LBB13_17:                              # %for.end.29
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB13_18:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_25
# BB#19:                                # %for.body.32
                                        #   in Loop: Header=BB13_18 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -176(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %r8d
	addl	-20(%rbp), %r8d
	movl	-16(%rbp), %r9d
	addl	-24(%rbp), %r9d
	movq	-176(%rbp), %rcx
	movq	-176(%rbp), %r10
	cmpl	$0, 12(%r10)
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movb	%al, -217(%rbp)         # 1-byte Spill
	jne	.LBB13_21
# BB#20:                                # %lor.rhs
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-176(%rbp), %rax
	movl	8(%rax), %ecx
	imull	-28(%rbp), %ecx
	cmpl	-132(%rbp), %ecx
	setge	%dl
	movb	%dl, -217(%rbp)         # 1-byte Spill
.LBB13_21:                              # %lor.end
                                        #   in Loop: Header=BB13_18 Depth=1
	movb	-217(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$255, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movb	%cl, %al
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movl	-208(%rbp), %edx        # 4-byte Reload
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-216(%rbp), %r8d        # 4-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	movzbl	%al, %r10d
	movl	%r10d, (%rsp)
	callq	depth_first_search
# BB#22:                                # %do.body
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#23:                                # %do.end
                                        #   in Loop: Header=BB13_18 Depth=1
	jmp	.LBB13_24
.LBB13_24:                              # %for.inc.43
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB13_18
.LBB13_25:                              # %for.end.44
	movq	-40(%rbp), %rdi
	callq	g_slist_free
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	find_max_blob, .Lfunc_end13-find_max_blob
	.cfi_endproc

	.align	16, 0x90
	.type	dilate_mask,@function
dilate_mask:                            # @dilate_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-88(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	callq	dilate_region
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dilate_mask, .Lfunc_end14-dilate_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_2:
	.quad	4643211180634609287     # double 255.999
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI15_1:
	.long	1065353216              # float 1
	.text
	.globl	siox_drb
	.align	16, 0x90
	.type	siox_drb,@function
siox_drb:                               # @siox_drb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movss	%xmm0, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_drb, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_47
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB15_9
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB15_9
# BB#8:                                 # %if.then.4
	jmp	.LBB15_10
.LBB15_9:                               # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_drb, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_47
.LBB15_10:                              # %if.end.6
	jmp	.LBB15_11
.LBB15_11:                              # %do.end.7
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movl	-20(%rbp), %edx
	subl	-28(%rbp), %edx
	movl	-24(%rbp), %r8d
	subl	-28(%rbp), %r8d
	movl	-28(%rbp), %r9d
	shll	$1, %r9d
	movl	-28(%rbp), %r10d
	shll	$1, %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-168(%rbp), %rdi
	movl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-28(%rbp), %edx
	movl	-28(%rbp), %r8d
	shll	$1, %r8d
	movl	-28(%rbp), %r9d
	shll	$1, %r9d
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-272(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	movl	$2, %edi
	leaq	-104(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -176(%rbp)
.LBB15_12:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
                                        #       Child Loop BB15_16 Depth 3
	cmpq	$0, -176(%rbp)
	je	.LBB15_47
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB15_12 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -180(%rbp)
.LBB15_14:                              # %for.cond.17
                                        #   Parent Loop BB15_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_16 Depth 3
	movl	-180(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB15_45
# BB#15:                                # %for.body.19
                                        #   in Loop: Header=BB15_14 Depth=2
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	$0, -184(%rbp)
.LBB15_16:                              # %for.cond.20
                                        #   Parent Loop BB15_12 Depth=1
                                        #     Parent Loop BB15_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-184(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB15_43
# BB#17:                                # %for.body.22
                                        #   in Loop: Header=BB15_16 Depth=3
	movq	-208(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	callq	create_key
	movl	%eax, -220(%rbp)
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdi
	movslq	-220(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB15_19
# BB#18:                                # %if.then.25
                                        #   in Loop: Header=BB15_16 Depth=3
	jmp	.LBB15_42
.LBB15_19:                              # %if.end.26
                                        #   in Loop: Header=BB15_16 Depth=3
	movq	-232(%rbp), %rax
	cvtss2sd	(%rax), %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -236(%rbp)
	movq	-232(%rbp), %rax
	cvtss2sd	4(%rax), %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -240(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB15_29
# BB#20:                                # %if.then.35
                                        #   in Loop: Header=BB15_16 Depth=3
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jle	.LBB15_22
# BB#21:                                # %if.then.39
                                        #   in Loop: Header=BB15_16 Depth=3
	jmp	.LBB15_42
.LBB15_22:                              # %if.end.40
                                        #   in Loop: Header=BB15_16 Depth=3
	xorps	%xmm0, %xmm0
	cvtss2sd	-240(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB15_24
	jp	.LBB15_24
# BB#23:                                # %if.then.44
                                        #   in Loop: Header=BB15_16 Depth=3
	movss	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -244(%rbp)
	jmp	.LBB15_28
.LBB15_24:                              # %if.else.45
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movss	-236(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	divss	-240(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, -256(%rbp)
	ucomisd	-256(%rbp), %xmm0
	jbe	.LBB15_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB15_27
.LBB15_26:                              # %cond.false
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB15_27
.LBB15_27:                              # %cond.end
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -244(%rbp)
.LBB15_28:                              # %if.end.50
                                        #   in Loop: Header=BB15_16 Depth=3
	jmp	.LBB15_38
.LBB15_29:                              # %if.else.51
                                        #   in Loop: Header=BB15_16 Depth=3
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jge	.LBB15_31
# BB#30:                                # %if.then.55
                                        #   in Loop: Header=BB15_16 Depth=3
	jmp	.LBB15_42
.LBB15_31:                              # %if.end.56
                                        #   in Loop: Header=BB15_16 Depth=3
	xorps	%xmm0, %xmm0
	cvtss2sd	-236(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB15_33
	jp	.LBB15_33
# BB#32:                                # %if.then.60
                                        #   in Loop: Header=BB15_16 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -244(%rbp)
	jmp	.LBB15_37
.LBB15_33:                              # %if.else.61
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movss	-240(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	divss	-236(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, -264(%rbp)
	ucomisd	-264(%rbp), %xmm0
	jbe	.LBB15_35
# BB#34:                                # %cond.true.67
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB15_36
.LBB15_35:                              # %cond.false.68
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB15_36
.LBB15_36:                              # %cond.end.69
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -244(%rbp)
.LBB15_37:                              # %if.end.73
                                        #   in Loop: Header=BB15_16 Depth=3
	jmp	.LBB15_38
.LBB15_38:                              # %if.end.74
                                        #   in Loop: Header=BB15_16 Depth=3
	movss	-244(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB15_40
# BB#39:                                # %if.then.77
                                        #   in Loop: Header=BB15_16 Depth=3
	movq	-216(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB15_41
.LBB15_40:                              # %if.else.78
                                        #   in Loop: Header=BB15_16 Depth=3
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-244(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB15_41:                              # %if.end.83
                                        #   in Loop: Header=BB15_16 Depth=3
	jmp	.LBB15_42
.LBB15_42:                              # %for.inc
                                        #   in Loop: Header=BB15_16 Depth=3
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	movq	-216(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -208(%rbp)
	jmp	.LBB15_16
.LBB15_43:                              # %for.end
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	-72(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
	movl	-136(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
# BB#44:                                # %for.inc.90
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB15_14
.LBB15_45:                              # %for.end.92
                                        #   in Loop: Header=BB15_12 Depth=1
	jmp	.LBB15_46
.LBB15_46:                              # %for.inc.93
                                        #   in Loop: Header=BB15_12 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -176(%rbp)
	jmp	.LBB15_12
.LBB15_47:                              # %for.end.95
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end15:
	.size	siox_drb, .Lfunc_end15-siox_drb
	.cfi_endproc

	.globl	siox_done
	.align	16, 0x90
	.type	siox_done,@function
siox_done:                              # @siox_done
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.siox_done, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_7
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_hash_table_destroy
# BB#6:                                 # %do.body.1
	movl	$88, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB16_7:                               # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	siox_done, .Lfunc_end16-siox_done
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	stageone,@function
stageone:                               # @stageone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%edx, -48(%rbp)
	movss	%xmm0, -64(%rbp)
	movss	%xmm0, -68(%rbp)
	movss	%xmm0, -72(%rbp)
	movslq	-48(%rbp), %rdi
	movq	-8(%rbp), %r8
	movslq	-12(%rbp), %r9
	shlq	$4, %r9
	addq	%r9, %r8
	movss	(%r8,%rdi,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -76(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB17_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-60(%rbp), %xmm0
	jbe	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB17_7
.LBB17_4:                               # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB17_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB17_1 Depth=1
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
.LBB17_6:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.8
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_8
.LBB17_8:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB17_1
.LBB17_9:                               # %for.end
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm0
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	ucomiss	(%rcx,%rax,4), %xmm0
	jbe	.LBB17_23
# BB#10:                                # %if.then.12
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movss	-52(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-56(%rbp), %xmm0
	jne	.LBB17_11
	jp	.LBB17_11
	jmp	.LBB17_22
.LBB17_11:                              # %if.then.17
	movl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB17_12:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_13 Depth 2
                                        #     Child Loop BB17_16 Depth 2
	jmp	.LBB17_13
.LBB17_13:                              # %while.cond.20
                                        #   Parent Loop BB17_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB17_15
# BB#14:                                # %while.body.27
                                        #   in Loop: Header=BB17_13 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_13
.LBB17_15:                              # %while.end
                                        #   in Loop: Header=BB17_12 Depth=1
	jmp	.LBB17_16
.LBB17_16:                              # %while.cond.29
                                        #   Parent Loop BB17_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	-80(%rbp), %xmm0
	jbe	.LBB17_18
# BB#17:                                # %while.body.36
                                        #   in Loop: Header=BB17_16 Depth=2
	movl	-88(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_16
.LBB17_18:                              # %while.end.37
                                        #   in Loop: Header=BB17_12 Depth=1
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB17_20
# BB#19:                                # %if.then.40
	jmp	.LBB17_21
.LBB17_20:                              # %if.end.41
                                        #   in Loop: Header=BB17_12 Depth=1
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movslq	-88(%rbp), %rcx
	shlq	$4, %rcx
	addq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movslq	-88(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-84(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -84(%rbp)
	movl	-88(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -88(%rbp)
	jmp	.LBB17_12
.LBB17_21:                              # %while.end.52
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stageone
	movq	-8(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stageone
	jmp	.LBB17_28
.LBB17_22:                              # %if.end.55
	jmp	.LBB17_23
.LBB17_23:                              # %if.end.56
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	shlq	$4, %rcx
	addq	-8(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB17_24:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB17_27
# BB#25:                                # %for.body.63
                                        #   in Loop: Header=BB17_24 Depth=1
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
# BB#26:                                # %for.inc.76
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB17_24
.LBB17_27:                              # %for.end.78
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	cvtsi2ssl	12(%rax), %xmm1
	divss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	cvtsi2ssl	12(%rax), %xmm1
	divss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	cvtsi2ssl	12(%rax), %xmm1
	divss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB17_28:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	stageone, .Lfunc_end17-stageone
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	stagetwo,@function
stagetwo:                               # @stagetwo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -72(%rbp)
	movslq	-52(%rbp), %rdi
	movq	-8(%rbp), %r8
	movslq	-12(%rbp), %r9
	shlq	$4, %r9
	addq	%r9, %r8
	movss	(%r8,%rdi,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB18_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-64(%rbp), %xmm0
	jbe	.LBB18_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	jmp	.LBB18_7
.LBB18_4:                               # %if.else
                                        #   in Loop: Header=BB18_1 Depth=1
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB18_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB18_1 Depth=1
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
.LBB18_6:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.8
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_8
.LBB18_8:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB18_1
.LBB18_9:                               # %for.end
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-56(%rbp), %xmm0
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	ucomiss	(%rcx,%rax,4), %xmm0
	jbe	.LBB18_23
# BB#10:                                # %if.then.12
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movss	-56(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	-60(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-60(%rbp), %xmm0
	jne	.LBB18_11
	jp	.LBB18_11
	jmp	.LBB18_22
.LBB18_11:                              # %if.then.17
	movl	-12(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB18_12:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_13 Depth 2
                                        #     Child Loop BB18_16 Depth 2
	jmp	.LBB18_13
.LBB18_13:                              # %while.cond.19
                                        #   Parent Loop BB18_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB18_15
# BB#14:                                # %while.body.26
                                        #   in Loop: Header=BB18_13 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB18_13
.LBB18_15:                              # %while.end
                                        #   in Loop: Header=BB18_12 Depth=1
	jmp	.LBB18_16
.LBB18_16:                              # %while.cond.28
                                        #   Parent Loop BB18_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	-76(%rbp), %xmm0
	jbe	.LBB18_18
# BB#17:                                # %while.body.35
                                        #   in Loop: Header=BB18_16 Depth=2
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB18_16
.LBB18_18:                              # %while.end.36
                                        #   in Loop: Header=BB18_12 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB18_20
# BB#19:                                # %if.then.39
	jmp	.LBB18_21
.LBB18_20:                              # %if.end.40
                                        #   in Loop: Header=BB18_12 Depth=1
	movslq	-80(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movslq	-80(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movslq	-84(%rbp), %rcx
	shlq	$4, %rcx
	addq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-80(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -80(%rbp)
	movl	-84(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -84(%rbp)
	jmp	.LBB18_12
.LBB18_21:                              # %while.end.51
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-48(%rbp), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stagetwo
	movq	-8(%rbp), %rdi
	movl	-80(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-48(%rbp), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stagetwo
	jmp	.LBB18_33
.LBB18_22:                              # %if.end.54
	jmp	.LBB18_23
.LBB18_23:                              # %if.end.55
	movl	-12(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB18_24:                              # %for.cond.56
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB18_27
# BB#25:                                # %for.body.59
                                        #   in Loop: Header=BB18_24 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
# BB#26:                                # %for.inc.63
                                        #   in Loop: Header=BB18_24 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB18_24
.LBB18_27:                              # %for.end.65
	cvtsi2ssl	-72(%rbp), %xmm0
	ucomiss	-44(%rbp), %xmm0
	jb	.LBB18_33
# BB#28:                                # %if.then.69
	xorps	%xmm0, %xmm0
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -108(%rbp)
	movss	%xmm0, -112(%rbp)
	movss	%xmm0, -116(%rbp)
	movss	%xmm0, -120(%rbp)
.LBB18_29:                              # %for.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB18_32
# BB#30:                                # %for.body.79
                                        #   in Loop: Header=BB18_29 Depth=1
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-112(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-116(%rbp), %xmm0
	movss	%xmm0, -116(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	-120(%rbp), %xmm0
	movss	%xmm0, -120(%rbp)
# BB#31:                                # %for.inc.92
                                        #   in Loop: Header=BB18_29 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB18_29
.LBB18_32:                              # %for.end.94
	movss	-112(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-108(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-116(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-108(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movss	-120(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-108(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB18_33:                              # %if.end.111
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	stagetwo, .Lfunc_end18-stagetwo
	.cfi_endproc

	.align	16, 0x90
	.type	threshold_mask,@function
threshold_mask:                         # @threshold_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-88(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-88(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -96(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
                                        #       Child Loop BB19_5 Depth 3
	cmpq	$0, -96(%rbp)
	je	.LBB19_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -100(%rbp)
.LBB19_3:                               # %for.cond.2
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_5 Depth 3
	movl	-100(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB19_16
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB19_3 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -104(%rbp)
.LBB19_5:                               # %for.cond.5
                                        #   Parent Loop BB19_1 Depth=1
                                        #     Parent Loop BB19_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB19_14
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB19_5 Depth=3
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jle	.LBB19_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB19_5 Depth=3
	movq	-120(%rbp), %rax
	movb	$3, (%rax)
	jmp	.LBB19_12
.LBB19_8:                               # %if.else
                                        #   in Loop: Header=BB19_5 Depth=3
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$128, %ecx
	jl	.LBB19_10
# BB#9:                                 # %if.then.13
                                        #   in Loop: Header=BB19_5 Depth=3
	movq	-120(%rbp), %rax
	movb	$1, (%rax)
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.14
                                        #   in Loop: Header=BB19_5 Depth=3
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
.LBB19_11:                              # %if.end
                                        #   in Loop: Header=BB19_5 Depth=3
	jmp	.LBB19_12
.LBB19_12:                              # %if.end.15
                                        #   in Loop: Header=BB19_5 Depth=3
	jmp	.LBB19_13
.LBB19_13:                              # %for.inc
                                        #   in Loop: Header=BB19_5 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movq	-120(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB19_5
.LBB19_14:                              # %for.end
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-56(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
# BB#15:                                # %for.inc.16
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB19_3
.LBB19_16:                              # %for.end.18
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_17
.LBB19_17:                              # %for.inc.19
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -96(%rbp)
	jmp	.LBB19_1
.LBB19_18:                              # %for.end.21
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	threshold_mask, .Lfunc_end19-threshold_mask
	.cfi_endproc

	.align	16, 0x90
	.type	depth_first_search,@function
depth_first_search:                     # @depth_first_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	16(%rbp), %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movb	%al, -33(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%ecx, -56(%rbp)
	movl	$-1, -60(%rbp)
.LBB20_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB20_5
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB20_4
# BB#3:                                 # %if.then.2
	jmp	.LBB20_24
.LBB20_4:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_slist_delete_link
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_slist_delete_link
	movq	%rax, -48(%rbp)
.LBB20_5:                               # %if.end.6
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-61(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-61(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB20_23
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	-61(%rbp), %eax
	movzbl	-33(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB20_23
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	-33(%rbp), %eax
	cmpl	$7, %eax
	jne	.LBB20_11
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movzbl	-61(%rbp), %ecx
	cmpl	$3, %ecx
	jne	.LBB20_10
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movl	$1, 12(%rax)
.LBB20_10:                              # %if.end.21
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_11
.LBB20_11:                              # %if.end.22
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-33(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	tile_manager_write_pixel_data_1
	movl	-56(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jle	.LBB20_13
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	callq	g_slist_prepend
	movslq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_slist_prepend
	movq	%rax, -48(%rbp)
.LBB20_13:                              # %if.end.30
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB20_15
# BB#14:                                # %if.then.33
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	g_slist_prepend
	movslq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_slist_prepend
	movq	%rax, -48(%rbp)
.LBB20_15:                              # %if.end.39
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB20_19
# BB#16:                                # %if.then.43
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB20_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-56(%rbp), %rsi
	callq	g_slist_prepend
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	callq	g_slist_prepend
	movq	%rax, -48(%rbp)
.LBB20_18:                              # %if.end.52
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_22
.LBB20_19:                              # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB20_21
# BB#20:                                # %if.then.56
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
.LBB20_21:                              # %if.end.57
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_22
.LBB20_22:                              # %if.end.58
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_23
.LBB20_23:                              # %if.end.59
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_1
.LBB20_24:                              # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	depth_first_search, .Lfunc_end20-depth_first_search
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.siox_init,@object # @__func__.siox_init
.L__func__.siox_init:
	.asciz	"siox_init"
	.size	.L__func__.siox_init, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pixels != NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"x >= 0"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"y >= 0"
	.size	.L.str.3, 7

	.type	.L__func__.siox_foreground_extract,@object # @__func__.siox_foreground_extract
.L__func__.siox_foreground_extract:
	.asciz	"siox_foreground_extract"
	.size	.L__func__.siox_foreground_extract, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"state != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"mask != NULL && tile_manager_bpp (mask) == 1"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x1 >= 0"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x2 > x1 && x2 <= tile_manager_width (mask)"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y1 >= 0"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"y2 > y1 && y2 <= tile_manager_height (mask)"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"smoothness >= 0"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"progress_data == NULL || progress_callback != NULL"
	.size	.L.str.11, 51

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"x + width <= tile_manager_width (mask)"
	.size	.L.str.12, 39

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"y + height <= tile_manager_height (mask)"
	.size	.L.str.13, 41

	.type	.L__func__.siox_drb,@object # @__func__.siox_drb
.L__func__.siox_drb:
	.asciz	"siox_drb"
	.size	.L__func__.siox_drb, 9

	.type	.L__func__.siox_done,@object # @__func__.siox_done
.L__func__.siox_done:
	.asciz	"siox_done"
	.size	.L__func__.siox_done, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.14, 45

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"siox.c"
	.size	.L.str.15, 7

	.type	.L__func__.calc_lab,@object # @__func__.calc_lab
.L__func__.calc_lab:
	.asciz	"calc_lab"
	.size	.L__func__.calc_lab, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
