	.text
	.file	"gimpadaptivesupersample.bc"
	.globl	gimp_adaptive_supersample_area
	.align	16, 0x90
	.type	gimp_adaptive_supersample_area,@function
gimp_adaptive_supersample_area:         # @gimp_adaptive_supersample_area
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -72(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_adaptive_supersample_area(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -32(%rbp)
	jmp	.LBB0_67
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -88(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_adaptive_supersample_area(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -32(%rbp)
	jmp	.LBB0_67
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	leaq	-176(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-264(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
	movl	$40, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	-52(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -140(%rbp)
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %eax
	imull	-124(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movl	$40, %edx
	movl	%edx, %esi
	movq	%rax, -224(%rbp)
	movl	-140(%rbp), %edx
	imull	-124(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -232(%rbp)
	movl	$0, -116(%rbp)
.LBB0_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movl	-140(%rbp), %ecx
	imull	-124(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_11 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-116(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-224(%rbp), %rax
	movb	$0, (%rax)
	movslq	-116(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-224(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-272(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
	xorps	%xmm0, %xmm0
	movslq	-116(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-232(%rbp), %rax
	movb	$0, (%rax)
	movslq	-116(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-232(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-280(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               # %for.end
	movl	$8, %eax
	movl	%eax, %esi
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -248(%rbp)
	movl	$0, -120(%rbp)
.LBB0_15:                               # %for.cond.28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_22
# BB#16:                                # %for.body.32
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$40, %eax
	movl	%eax, %esi
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movslq	-120(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movl	$0, -116(%rbp)
.LBB0_17:                               # %for.cond.38
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_20
# BB#18:                                # %for.body.42
                                        #   in Loop: Header=BB0_17 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-116(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movq	-248(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movb	$0, (%rax)
	movslq	-116(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movq	-248(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-288(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
# BB#19:                                # %for.inc.53
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               # %for.end.55
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               # %for.inc.56
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB0_15
.LBB0_22:                               # %for.end.58
	movq	$0, -256(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB0_23:                               # %for.cond.59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_37 Depth 4
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_53 Depth 3
	movl	-120(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB0_62
# BB#24:                                # %for.body.62
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$0, -128(%rbp)
.LBB0_25:                               # %for.cond.63
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-128(%rbp), %eax
	movl	-140(%rbp), %ecx
	imull	-124(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_28
# BB#26:                                # %for.body.68
                                        #   in Loop: Header=BB0_25 Depth=2
	movslq	-128(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-232(%rbp), %rax
	movb	$0, (%rax)
# BB#27:                                # %for.inc.72
                                        #   in Loop: Header=BB0_25 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB0_25
.LBB0_28:                               # %for.end.74
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$0, -136(%rbp)
.LBB0_29:                               # %for.cond.75
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_32
# BB#30:                                # %for.body.79
                                        #   in Loop: Header=BB0_29 Depth=2
	movslq	-136(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movb	$0, (%rax)
# BB#31:                                # %for.inc.84
                                        #   in Loop: Header=BB0_29 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_29
.LBB0_32:                               # %for.end.86
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB0_33:                               # %for.cond.87
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_37 Depth 4
                                        #       Child Loop BB0_43 Depth 3
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_53 Depth 3
	movl	-116(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB0_58
# BB#34:                                # %for.body.90
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	$1, -136(%rbp)
.LBB0_35:                               # %for.cond.91
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_37 Depth 4
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_42
# BB#36:                                # %for.body.95
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	$1, -128(%rbp)
.LBB0_37:                               # %for.cond.96
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-128(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_40
# BB#38:                                # %for.body.100
                                        #   in Loop: Header=BB0_37 Depth=4
	movslq	-128(%rbp), %rax
	movslq	-136(%rbp), %rcx
	movq	-248(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movb	$0, (%rax)
# BB#39:                                # %for.inc.106
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB0_37
.LBB0_40:                               # %for.end.108
                                        #   in Loop: Header=BB0_35 Depth=3
	jmp	.LBB0_41
.LBB0_41:                               # %for.inc.109
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_35
.LBB0_42:                               # %for.end.111
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	$0, -132(%rbp)
	movl	-116(%rbp), %eax
	subl	-36(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB0_43:                               # %for.cond.114
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_46
# BB#44:                                # %for.body.118
                                        #   in Loop: Header=BB0_43 Depth=3
	movl	$40, %eax
	movl	%eax, %edx
	movslq	-132(%rbp), %rcx
	movq	-248(%rbp), %rsi
	imulq	$40, %rcx, %rcx
	addq	(%rsi), %rcx
	movslq	-128(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-224(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy@PLT
# BB#45:                                # %for.inc.124
                                        #   in Loop: Header=BB0_43 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB0_43
.LBB0_46:                               # %for.end.127
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	$1, %esi
	xorl	%r9d, %r9d
	leaq	-176(%rbp), %rax
	movl	-52(%rbp), %edi
	movq	-248(%rbp), %rdx
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movl	-140(%rbp), %r10d
	movl	-140(%rbp), %r11d
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-140(%rbp), %ebx
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movl	$0, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	callq	gimp_render_sub_pixel
	addq	-256(%rbp), %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB0_48
# BB#47:                                # %if.then.130
                                        #   in Loop: Header=BB0_33 Depth=2
	leaq	-176(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	-116(%rbp), %edi
	movl	-120(%rbp), %esi
	movq	-96(%rbp), %rcx
	callq	*%rax
.LBB0_48:                               # %if.end.131
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	$40, %eax
	movl	%eax, %edx
	movl	-116(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-224(%rbp), %rcx
	movslq	-140(%rbp), %rsi
	movq	-248(%rbp), %rdi
	imulq	$40, %rsi, %rsi
	addq	(%rdi), %rsi
	movq	%rcx, %rdi
	callq	memcpy@PLT
	movl	$0, -132(%rbp)
	movl	-116(%rbp), %eax
	subl	-36(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB0_49:                               # %for.cond.142
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_52
# BB#50:                                # %for.body.146
                                        #   in Loop: Header=BB0_49 Depth=3
	movl	$40, %eax
	movl	%eax, %edx
	movslq	-128(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-232(%rbp), %rcx
	movslq	-132(%rbp), %rsi
	movslq	-140(%rbp), %rdi
	movq	-248(%rbp), %r8
	imulq	$40, %rsi, %rsi
	addq	(%r8,%rdi,8), %rsi
	movq	%rcx, %rdi
	callq	memcpy@PLT
# BB#51:                                # %for.inc.153
                                        #   in Loop: Header=BB0_49 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB0_49
.LBB0_52:                               # %for.end.156
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	$0, -136(%rbp)
.LBB0_53:                               # %for.cond.157
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_56
# BB#54:                                # %for.body.161
                                        #   in Loop: Header=BB0_53 Depth=3
	movl	$40, %eax
	movl	%eax, %ecx
	leaq	-216(%rbp), %rdx
	movslq	-136(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	memcpy@PLT
	movslq	-136(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-140(%rbp), %rdx
	movslq	-136(%rbp), %rsi
	movq	-248(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	(%rdi,%rsi,8), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	memcpy@PLT
	movslq	-140(%rbp), %rcx
	movslq	-136(%rbp), %rdx
	movq	-248(%rbp), %rsi
	imulq	$40, %rcx, %rcx
	addq	(%rsi,%rdx,8), %rcx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	memcpy@PLT
# BB#55:                                # %for.inc.176
                                        #   in Loop: Header=BB0_53 Depth=3
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_53
.LBB0_56:                               # %for.end.178
                                        #   in Loop: Header=BB0_33 Depth=2
	jmp	.LBB0_57
.LBB0_57:                               # %for.inc.179
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_33
.LBB0_58:                               # %for.end.181
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -232(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB0_60
# BB#59:                                # %if.then.184
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-104(%rbp), %rax
	movl	-40(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-120(%rbp), %edx
	movq	-112(%rbp), %rcx
	callq	*%rax
.LBB0_60:                               # %if.end.185
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_61
.LBB0_61:                               # %for.inc.186
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB0_23
.LBB0_62:                               # %for.end.188
	movl	$0, -120(%rbp)
.LBB0_63:                               # %for.cond.189
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_66
# BB#64:                                # %for.body.193
                                        #   in Loop: Header=BB0_63 Depth=1
	movslq	-120(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
# BB#65:                                # %for.inc.196
                                        #   in Loop: Header=BB0_63 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB0_63
.LBB0_66:                               # %for.end.198
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-256(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_67:                               # %return
	movq	-32(%rbp), %rax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_adaptive_supersample_area, .Lfunc_end0-gimp_adaptive_supersample_area
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4598175219545276416     # double 0.25
.LCPI1_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_render_sub_pixel,@function
gimp_render_sub_pixel:                  # @gimp_render_sub_pixel
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
	subq	$472, %rsp              # imm = 0x1D8
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
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%r12d, -80(%rbp)
	movl	%r15d, -84(%rbp)
	movl	%r14d, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movq	%r11, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -312(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -120(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_render_sub_pixel(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -48(%rbp)
	jmp	.LBB1_39
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	$2, %eax
	movl	-76(%rbp), %ecx
	movl	-100(%rbp), %edx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-364(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	-84(%rbp), %eax
	movl	-100(%rbp), %ecx
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-368(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movl	-80(%rbp), %eax
	movl	-100(%rbp), %ecx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-372(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	-88(%rbp), %eax
	movl	-100(%rbp), %ecx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-376(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movslq	-76(%rbp), %rdi
	movslq	-80(%rbp), %r8
	movq	-64(%rbp), %r9
	imulq	$40, %rdi, %rdi
	addq	(%r9,%r8,8), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB1_7
# BB#6:                                 # %if.then.20
	leaq	-304(%rbp), %rdi
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)
	movq	-120(%rbp), %rax
	cvtsi2sdl	-68(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	-152(%rbp), %xmm1
	movq	-128(%rbp), %rsi
	callq	*%rax
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdi
	imulq	$40, %rax, %rax
	addq	(%rdi,%rsi,8), %rax
	movb	$1, (%rax)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdi
	imulq	$40, %rax, %rax
	addq	(%rdi,%rsi,8), %rax
	movq	-304(%rbp), %rsi
	movq	%rsi, 8(%rax)
	movq	-296(%rbp), %rsi
	movq	%rsi, 16(%rax)
	movq	-288(%rbp), %rsi
	movq	%rsi, 24(%rax)
	movq	-280(%rbp), %rsi
	movq	%rsi, 32(%rax)
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.36
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -304(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -280(%rbp)
.LBB1_8:                                # %if.end.43
	movslq	-84(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_10
# BB#9:                                 # %if.then.50
	leaq	-304(%rbp), %rax
	movq	-312(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)
	movq	-120(%rbp), %rcx
	cvtsi2sdl	-68(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	-152(%rbp), %xmm1
	addq	$32, %rax
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	*%rcx
	movslq	-84(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-64(%rbp), %rsi
	imulq	$40, %rax, %rax
	addq	(%rsi,%rcx,8), %rax
	movb	$1, (%rax)
	movslq	-84(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-64(%rbp), %rsi
	imulq	$40, %rax, %rax
	addq	(%rsi,%rcx,8), %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-256(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-248(%rbp), %rcx
	movq	%rcx, 32(%rax)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.68
	movslq	-84(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -272(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -264(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -256(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -248(%rbp)
.LBB1_11:                               # %if.end.75
	movslq	-76(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_13
# BB#12:                                # %if.then.82
	leaq	-304(%rbp), %rax
	movq	-312(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)
	movq	-120(%rbp), %rcx
	cvtsi2sdl	-68(%rbp), %xmm0
	addsd	-144(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	addq	$64, %rax
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	*%rcx
	movslq	-76(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rsi
	imulq	$40, %rax, %rax
	addq	(%rsi,%rcx,8), %rax
	movb	$1, (%rax)
	movslq	-76(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rsi
	imulq	$40, %rax, %rax
	addq	(%rsi,%rcx,8), %rax
	movq	-240(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-232(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-224(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-216(%rbp), %rcx
	movq	%rcx, 32(%rax)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.100
	movslq	-76(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -240(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -232(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -224(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -216(%rbp)
.LBB1_14:                               # %if.end.107
	movslq	-84(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_16
# BB#15:                                # %if.then.114
	leaq	-304(%rbp), %rax
	movq	-312(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)
	movq	-120(%rbp), %rcx
	cvtsi2sdl	-68(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	addq	$96, %rax
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	*%rcx
	movslq	-84(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rsi
	imulq	$40, %rax, %rax
	addq	(%rsi,%rcx,8), %rax
	movb	$1, (%rax)
	movslq	-84(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rsi
	imulq	$40, %rax, %rax
	addq	(%rsi,%rcx,8), %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-200(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-192(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-184(%rbp), %rcx
	movq	%rcx, 32(%rax)
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.132
	movslq	-84(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$40, %rax, %rax
	addq	(%rdx,%rcx,8), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -208(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -192(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB1_17:                               # %if.end.139
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB1_26
# BB#18:                                # %if.then.142
	leaq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgba_distance@PLT
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB1_24
# BB#19:                                # %lor.lhs.false
	leaq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgba_distance@PLT
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB1_24
# BB#20:                                # %lor.lhs.false.152
	leaq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$96, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgba_distance@PLT
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB1_24
# BB#21:                                # %lor.lhs.false.158
	leaq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$32, %rcx
	addq	$64, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	gimp_rgba_distance@PLT
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB1_24
# BB#22:                                # %lor.lhs.false.164
	leaq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$32, %rcx
	addq	$96, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	gimp_rgba_distance@PLT
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB1_24
# BB#23:                                # %lor.lhs.false.170
	leaq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$64, %rcx
	addq	$96, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	gimp_rgba_distance@PLT
	ucomisd	-96(%rbp), %xmm0
	jb	.LBB1_25
.LBB1_24:                               # %if.then.176
	leaq	-304(%rbp), %rax
	movl	$2, %ecx
	movl	-76(%rbp), %edx
	addl	-84(%rbp), %edx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -132(%rbp)
	movl	-80(%rbp), %eax
	addl	-88(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -136(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-80(%rbp), %r10d
	movl	-132(%rbp), %r11d
	movl	-136(%rbp), %ebx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %r14d
	movq	-120(%rbp), %r15
	movq	-128(%rbp), %r12
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-392(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	-384(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_render_sub_pixel
	leaq	-304(%rbp), %rdx
	addq	-312(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-80(%rbp), %r11d
	movl	-84(%rbp), %ebx
	movl	-136(%rbp), %r14d
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %r10d
	addq	$32, %rdx
	movq	-120(%rbp), %r15
	movq	-128(%rbp), %r12
	movl	%esi, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-396(%rbp), %ecx        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_render_sub_pixel
	leaq	-304(%rbp), %rdx
	addq	-312(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-132(%rbp), %r11d
	movl	-88(%rbp), %ebx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %r14d
	addq	$64, %rdx
	movq	-120(%rbp), %r15
	movq	-128(%rbp), %r12
	movl	%esi, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-412(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_render_sub_pixel
	leaq	-304(%rbp), %rdx
	addq	-312(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-84(%rbp), %r11d
	movl	-88(%rbp), %ebx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %r14d
	addq	$96, %rdx
	movq	-120(%rbp), %r15
	movq	-128(%rbp), %r12
	movl	%esi, -428(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-428(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_render_sub_pixel
	addq	-312(%rbp), %rax
	movq	%rax, -312(%rbp)
.LBB1_25:                               # %if.end.197
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.198
	xorps	%xmm0, %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_27
	jp	.LBB1_27
	jmp	.LBB1_30
.LBB1_27:                               # %lor.lhs.false.202
	xorps	%xmm0, %xmm0
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_28
	jp	.LBB1_28
	jmp	.LBB1_30
.LBB1_28:                               # %lor.lhs.false.207
	xorps	%xmm0, %xmm0
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_29
	jp	.LBB1_29
	jmp	.LBB1_30
.LBB1_29:                               # %lor.lhs.false.212
	xorps	%xmm0, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_37
	jp	.LBB1_37
.LBB1_30:                               # %if.then.217
	leaq	-352(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-448(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set@PLT
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)
	movl	$0, -316(%rbp)
.LBB1_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -316(%rbp)
	jge	.LBB1_36
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB1_31 Depth=1
	xorps	%xmm0, %xmm0
	leaq	-304(%rbp), %rax
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_33
	jp	.LBB1_33
	jmp	.LBB1_34
.LBB1_33:                               # %if.then.225
                                        #   in Loop: Header=BB1_31 Depth=1
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	leaq	-304(%rbp), %rax
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	addsd	-352(%rbp), %xmm1
	movsd	%xmm1, -352(%rbp)
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	addsd	-344(%rbp), %xmm1
	movsd	%xmm1, -344(%rbp)
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	addsd	-336(%rbp), %xmm1
	movsd	%xmm1, -336(%rbp)
	movsd	-360(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -360(%rbp)
.LBB1_34:                               # %if.end.239
                                        #   in Loop: Header=BB1_31 Depth=1
	jmp	.LBB1_35
.LBB1_35:                               # %for.inc
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB1_31
.LBB1_36:                               # %for.end
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-352(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-344(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-336(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.249
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-272(%rbp), %xmm1
	addsd	-240(%rbp), %xmm1
	addsd	-208(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movq	-112(%rbp), %rax
	movsd	%xmm2, (%rax)
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-264(%rbp), %xmm1
	addsd	-232(%rbp), %xmm1
	addsd	-200(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movq	-112(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-256(%rbp), %xmm1
	addsd	-224(%rbp), %xmm1
	addsd	-192(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB1_38:                               # %if.end.289
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-248(%rbp), %xmm1
	addsd	-216(%rbp), %xmm1
	addsd	-184(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-312(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_39:                               # %return
	movq	-48(%rbp), %rax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_render_sub_pixel, .Lfunc_end1-gimp_render_sub_pixel
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpColor"
	.size	.L.str, 13

	.type	.L__func__.gimp_adaptive_supersample_area,@object # @__func__.gimp_adaptive_supersample_area
.L__func__.gimp_adaptive_supersample_area:
	.asciz	"gimp_adaptive_supersample_area"
	.size	.L__func__.gimp_adaptive_supersample_area, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"render_func != NULL"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"put_pixel_func != NULL"
	.size	.L.str.2, 23

	.type	.L__func__.gimp_render_sub_pixel,@object # @__func__.gimp_render_sub_pixel
.L__func__.gimp_render_sub_pixel:
	.asciz	"gimp_render_sub_pixel"
	.size	.L__func__.gimp_render_sub_pixel, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
