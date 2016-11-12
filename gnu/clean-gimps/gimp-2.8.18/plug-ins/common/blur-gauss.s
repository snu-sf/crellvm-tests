	.text
	.file	"blur-gauss.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %r9
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.23, %r8
	movl	$1, %r10d
	movl	$6, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$.L.str.23, %r8
	movl	$1, %r10d
	movl	$6, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args1, %r14
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	movl	%r11d, -104(%rbp)       # 4-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$.L.str.23, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args2, %r14
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	movl	%r11d, -136(%rbp)       # 4-byte Spill
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$.L.str.23, %r8
	movl	$1, %r10d
	movl	$6, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args1, %r14
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	movl	%r11d, -168(%rbp)       # 4-byte Spill
	movl	%r10d, -172(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.33, %rdx
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$.L.str.23, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args2, %r14
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%ebx, -196(%rbp)        # 4-byte Spill
	movl	%r11d, -200(%rbp)       # 4-byte Spill
	movl	%r10d, -204(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.34, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -208(%rbp)        # 4-byte Spill
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -60(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.35, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-64(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movl	%edx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	cmpl	8(%rax), %edx
	jbe	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-108(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-8(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#6:                                 # %if.then
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_101
.LBB1_101:                              # %if.then
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_102
.LBB1_102:                              # %if.then
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_20
.LBB1_7:                                # %sw.bb
	movabsq	$.L.str.17, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gauss_dialog
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.17
	jmp	.LBB1_100
.LBB1_9:                                # %if.end
	jmp	.LBB1_21
.LBB1_10:                               # %sw.bb.18
	cmpl	$6, -12(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.21
	movl	$1, -64(%rbp)
.LBB1_12:                               # %if.end.22
	cmpl	$3, -64(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.25
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, bvals+16
.LBB1_14:                               # %if.end.34
	cmpl	$3, -64(%rbp)
	jne	.LBB1_18
# BB#15:                                # %land.lhs.true
	xorps	%xmm0, %xmm0
	ucomisd	bvals, %xmm0
	jb	.LBB1_18
# BB#16:                                # %land.lhs.true.39
	xorps	%xmm0, %xmm0
	ucomisd	bvals+8, %xmm0
	jb	.LBB1_18
# BB#17:                                # %if.then.42
	movl	$1, -64(%rbp)
.LBB1_18:                               # %if.end.43
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.44
	movabsq	$.L.str.17, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %sw.default
	jmp	.LBB1_21
.LBB1_21:                               # %sw.epilog
	jmp	.LBB1_89
.LBB1_22:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_40
# BB#23:                                # %if.then.49
	cmpl	$6, -12(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.52
	movl	$1, -64(%rbp)
.LBB1_25:                               # %if.end.53
	cmpl	$3, -64(%rbp)
	jne	.LBB1_33
# BB#26:                                # %if.then.56
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB1_28
# BB#27:                                # %cond.true.64
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false.65
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB1_29
.LBB1_29:                               # %cond.end.66
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	je	.LBB1_31
# BB#30:                                # %cond.true.72
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB1_32
.LBB1_31:                               # %cond.false.73
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB1_32
.LBB1_32:                               # %cond.end.74
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals+8
	movl	$0, bvals+16
.LBB1_33:                               # %if.end.76
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jb	.LBB1_35
# BB#34:                                # %if.then.79
	movl	$1, -64(%rbp)
.LBB1_35:                               # %if.end.80
	cmpl	$0, -60(%rbp)
	jne	.LBB1_39
# BB#36:                                # %if.then.83
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	gauss_dialog
	cmpl	$0, %eax
	jne	.LBB1_38
# BB#37:                                # %if.then.86
	jmp	.LBB1_100
.LBB1_38:                               # %if.end.87
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.88
	jmp	.LBB1_88
.LBB1_40:                               # %if.else.89
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_53
# BB#41:                                # %if.then.93
	cmpl	$5, -12(%rbp)
	je	.LBB1_43
# BB#42:                                # %if.then.96
	movl	$1, -64(%rbp)
.LBB1_43:                               # %if.end.97
	cmpl	$3, -64(%rbp)
	jne	.LBB1_45
# BB#44:                                # %if.then.100
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals+8
	movl	$0, bvals+16
.LBB1_45:                               # %if.end.107
	xorps	%xmm0, %xmm0
	ucomisd	bvals, %xmm0
	jb	.LBB1_48
# BB#46:                                # %land.lhs.true.110
	xorps	%xmm0, %xmm0
	ucomisd	bvals+8, %xmm0
	jb	.LBB1_48
# BB#47:                                # %if.then.113
	movl	$1, -64(%rbp)
.LBB1_48:                               # %if.end.114
	cmpl	$0, -60(%rbp)
	jne	.LBB1_52
# BB#49:                                # %if.then.117
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	gauss_dialog
	cmpl	$0, %eax
	jne	.LBB1_51
# BB#50:                                # %if.then.120
	jmp	.LBB1_100
.LBB1_51:                               # %if.end.121
	jmp	.LBB1_52
.LBB1_52:                               # %if.end.122
	jmp	.LBB1_87
.LBB1_53:                               # %if.else.123
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_71
# BB#54:                                # %if.then.127
	cmpl	$6, -12(%rbp)
	je	.LBB1_56
# BB#55:                                # %if.then.130
	movl	$1, -64(%rbp)
.LBB1_56:                               # %if.end.131
	cmpl	$3, -64(%rbp)
	jne	.LBB1_64
# BB#57:                                # %if.then.134
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB1_59
# BB#58:                                # %cond.true.142
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB1_60
.LBB1_59:                               # %cond.false.143
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB1_60
.LBB1_60:                               # %cond.end.144
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	je	.LBB1_62
# BB#61:                                # %cond.true.150
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB1_63
.LBB1_62:                               # %cond.false.151
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB1_63
.LBB1_63:                               # %cond.end.152
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals+8
	movl	$1, bvals+16
.LBB1_64:                               # %if.end.154
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jb	.LBB1_66
# BB#65:                                # %if.then.157
	movl	$1, -64(%rbp)
.LBB1_66:                               # %if.end.158
	cmpl	$0, -60(%rbp)
	jne	.LBB1_70
# BB#67:                                # %if.then.161
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	gauss_dialog
	cmpl	$0, %eax
	jne	.LBB1_69
# BB#68:                                # %if.then.164
	jmp	.LBB1_100
.LBB1_69:                               # %if.end.165
	jmp	.LBB1_70
.LBB1_70:                               # %if.end.166
	jmp	.LBB1_86
.LBB1_71:                               # %if.else.167
	movq	-8(%rbp), %rdi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_84
# BB#72:                                # %if.then.171
	cmpl	$5, -12(%rbp)
	je	.LBB1_74
# BB#73:                                # %if.then.174
	movl	$1, -64(%rbp)
.LBB1_74:                               # %if.end.175
	cmpl	$3, -64(%rbp)
	jne	.LBB1_76
# BB#75:                                # %if.then.178
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals+8
	movl	$1, bvals+16
.LBB1_76:                               # %if.end.185
	xorps	%xmm0, %xmm0
	ucomisd	bvals, %xmm0
	jb	.LBB1_79
# BB#77:                                # %land.lhs.true.188
	xorps	%xmm0, %xmm0
	ucomisd	bvals+8, %xmm0
	jb	.LBB1_79
# BB#78:                                # %if.then.191
	movl	$1, -64(%rbp)
.LBB1_79:                               # %if.end.192
	cmpl	$0, -60(%rbp)
	jne	.LBB1_83
# BB#80:                                # %if.then.195
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	gauss_dialog
	cmpl	$0, %eax
	jne	.LBB1_82
# BB#81:                                # %if.then.198
	jmp	.LBB1_100
.LBB1_82:                               # %if.end.199
	jmp	.LBB1_83
.LBB1_83:                               # %if.end.200
	jmp	.LBB1_85
.LBB1_84:                               # %if.else.201
	movl	$1, -64(%rbp)
.LBB1_85:                               # %if.end.202
	jmp	.LBB1_86
.LBB1_86:                               # %if.end.203
	jmp	.LBB1_87
.LBB1_87:                               # %if.end.204
	jmp	.LBB1_88
.LBB1_88:                               # %if.end.205
	jmp	.LBB1_89
.LBB1_89:                               # %if.end.206
	cmpl	$3, -64(%rbp)
	jne	.LBB1_99
# BB#90:                                # %if.then.209
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_92
# BB#91:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_97
.LBB1_92:                               # %if.then.215
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi
	movsd	bvals, %xmm0            # xmm0 = mem[0],zero
	movsd	bvals+8, %xmm1          # xmm1 = mem[0],zero
	movl	bvals+16, %esi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gauss
	cmpl	$0, -60(%rbp)
	jne	.LBB1_94
# BB#93:                                # %if.then.220
	movabsq	$.L.str.17, %rdi
	movabsq	$bvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB1_94:                               # %if.end.222
	cmpl	$1, -60(%rbp)
	je	.LBB1_96
# BB#95:                                # %if.then.225
	callq	gimp_displays_flush
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB1_96:                               # %if.end.227
	jmp	.LBB1_98
.LBB1_97:                               # %if.else.228
	movabsq	$.L.str.38, %rdi
	movl	$0, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_98:                               # %if.end.230
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_99:                               # %if.end.231
	movl	-64(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_100:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	gauss_dialog,@function
gauss_dialog:                           # @gauss_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.39, %rax
	xorl	%ecx, %ecx
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movabsq	$.L.str.40, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.41, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.42, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r10d, -144(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movl	-28(%rbp), %edi
	callq	gimp_image_get_resolution
	movl	-28(%rbp), %edi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movabsq	$.L.str.45, %rdi
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movsd	bvals, %xmm0            # xmm0 = mem[0],zero
	ucomisd	bvals+8, %xmm0
	sete	%r14b
	setnp	%r15b
	andb	%r15b, %r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	bvals, %xmm0            # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdx
	movl	4(%rdx), %ecx
	movq	-40(%rbp), %rdx
	cmpl	8(%rdx), %ecx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-260(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.46, %rdi
	shll	$3, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm3
	movsd	%xmm3, -272(%rbp)       # 8-byte Spill
	callq	gettext
	movsd	bvals+8, %xmm6          # xmm6 = mem[0],zero
	movsd	-120(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %edx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movsd	%xmm6, -288(%rbp)       # 8-byte Spill
	movsd	%xmm7, -296(%rbp)       # 8-byte Spill
	jbe	.LBB3_5
# BB#4:                                 # %cond.true.37
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.39
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
.LBB3_6:                                # %cond.end.41
	movl	-300(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.44, %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	shll	$3, %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm1
	movl	-232(%rbp), %edi        # 4-byte Reload
	movl	%edx, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-308(%rbp), %r9d        # 4-byte Reload
	movl	-228(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movq	-240(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-320(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	-280(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	-296(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	-320(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 32(%rsp)
	movsd	-328(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 40(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	%xmm8, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_pixel_digits
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$update_preview, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.50, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.51, %rdi
	movl	bvals+16, %r8d
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movl	%r8d, -404(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.52, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$bvals, %rdx
	addq	$16, %rdx
	xorl	%r8d, %r8d
	leaq	-88(%rbp), %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r11d
	movq	-400(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movl	-404(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -436(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-416(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	-424(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -448(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, bvals
	movq	-72(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, bvals+8
.LBB3_8:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-124(%rbp), %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gauss_dialog, .Lfunc_end3-gauss_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	gauss,@function
gauss:                                  # @gauss
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
	subq	$192, %rsp
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -64(%rbp)
	ucomisd	-16(%rbp), %xmm2
	jae	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB4_3
.LBB4_2:                                # %if.then
	movl	$1, -28(%rbp)
.LBB4_3:                                # %if.end
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB4_8
# BB#4:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB4_8
# BB#5:                                 # %if.then.4
	cmpq	$0, -40(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_draw
.LBB4_7:                                # %if.end.7
	jmp	.LBB4_38
.LBB4_8:                                # %if.end.8
	cmpq	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_preview_get_position
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_preview_get_size
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-52(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	jmp	.LBB4_32
.LBB4_10:                               # %if.else
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB4_30
# BB#11:                                # %if.then.19
	cmpl	$0, -28(%rbp)
	jne	.LBB4_13
# BB#12:                                # %cond.true
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
.LBB4_14:                               # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB4_16
# BB#15:                                # %cond.true.26
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false.27
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
.LBB4_17:                               # %cond.end.30
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-48(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-44(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB4_19
# BB#18:                                # %cond.true.37
	movl	-44(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false.39
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB4_20
.LBB4_20:                               # %cond.end.40
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	subl	-72(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB4_22
# BB#21:                                # %cond.true.45
	movl	-48(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.47
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB4_23
.LBB4_23:                               # %cond.end.48
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_25
# BB#24:                                # %cond.true.54
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB4_26
.LBB4_25:                               # %cond.false.56
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB4_26:                               # %cond.end.58
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_28
# BB#27:                                # %cond.true.65
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false.67
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB4_29:                               # %cond.end.69
	movl	-152(%rbp), %eax        # 4-byte Reload
	subl	-48(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.72
	jmp	.LBB4_38
.LBB4_31:                               # %if.end.73
	jmp	.LBB4_32
.LBB4_32:                               # %if.end.74
	cmpl	$0, -28(%rbp)
	jne	.LBB4_34
# BB#33:                                # %if.then.77
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-28(%rbp), %esi
	movq	-64(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gauss_iir
	jmp	.LBB4_35
.LBB4_34:                               # %if.else.78
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-28(%rbp), %esi
	movq	-64(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gauss_rle
.LBB4_35:                               # %if.end.79
	cmpq	$0, -40(%rbp)
	je	.LBB4_37
# BB#36:                                # %if.then.81
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rdi
	imull	12(%rdi), %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_38
.LBB4_37:                               # %if.else.86
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB4_38:                               # %if.end.92
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gauss, .Lfunc_end4-gauss
	.cfi_endproc

	.align	16, 0x90
	.type	update_preview,@function
update_preview:                         # @update_preview
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movq	-16(%rbp), %rax
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movl	bvals+16, %esi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gauss
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	update_preview, .Lfunc_end5-update_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4611686018427387904     # double 2
.LCPI6_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gauss_iir,@function
gauss_iir:                              # @gauss_iir
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
	subq	$848, %rsp              # imm = 0x350
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -496(%rbp)
	cmpq	$0, -40(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -604(%rbp)
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -156(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -160(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB6_2
# BB#1:                                 # %cond.true
	movl	-52(%rbp), %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movl	-56(%rbp), %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -488(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB6_5
# BB#4:                                 # %cond.true.7
	movl	-52(%rbp), %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.8
	movl	-56(%rbp), %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB6_6:                                # %cond.end.9
	movl	-648(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -496(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB6_8
# BB#7:                                 # %cond.true.16
	movl	-52(%rbp), %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false.17
	movl	-56(%rbp), %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB6_9:                                # %cond.end.18
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB6_11
# BB#10:                                # %cond.true.25
	movl	-52(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false.26
	movl	-56(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB6_12:                               # %cond.end.27
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$0, -604(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then
	leaq	-152(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB6_14:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -544(%rbp)
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB6_16
# BB#15:                                # %cond.true.38
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false.39
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
.LBB6_17:                               # %cond.end.43
	movsd	-672(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -552(%rbp)
	ucomisd	-24(%rbp), %xmm1
	jb	.LBB6_19
# BB#18:                                # %cond.true.47
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false.48
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
.LBB6_20:                               # %cond.end.52
	movsd	-680(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-552(%rbp), %xmm0
	movsd	%xmm0, -552(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_64
# BB#21:                                # %if.then.56
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movapd	.LCPI6_3(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -24(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -688(%rbp)       # 8-byte Spill
	callq	log
	movl	$16, %edx
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-688(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	%edx, -692(%rbp)        # 4-byte Spill
	callq	sqrt
	movsd	%xmm0, -600(%rbp)
	movl	-52(%rbp), %eax
	cltd
	movl	-692(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -608(%rbp)
	cmpl	$5, -608(%rbp)
	jge	.LBB6_23
# BB#22:                                # %if.then.66
	movl	$5, -608(%rbp)
.LBB6_23:                               # %if.end.67
	leaq	-480(%rbp), %r9
	leaq	-432(%rbp), %r8
	leaq	-384(%rbp), %rcx
	leaq	-336(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	find_iir_constants
	movl	$0, -528(%rbp)
.LBB6_24:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_32 Depth 2
                                        #       Child Loop BB6_37 Depth 3
                                        #         Child Loop BB6_39 Depth 4
                                        #         Child Loop BB6_43 Depth 4
                                        #     Child Loop BB6_57 Depth 2
	movl	-528(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_63
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB6_24 Depth=1
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-488(%rbp), %rcx
	movl	-56(%rbp), %edx
	imull	-156(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$3, %rsi
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -712(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-712(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -716(%rbp)        # 4-byte Spill
	callq	memset
	movq	-496(%rbp), %rcx
	movl	-56(%rbp), %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-716(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	-176(%rbp), %rsi
	movl	-528(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_col
	cmpl	$0, -160(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.83
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	-176(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	multiply_alpha
.LBB6_27:                               # %if.end.84
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	$0, -516(%rbp)
.LBB6_28:                               # %for.cond.91
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-516(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB6_31
# BB#29:                                # %for.body.94
                                        #   in Loop: Header=BB6_28 Depth=2
	movslq	-516(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-516(%rbp), %rax
	movl	%edx, -576(%rbp,%rax,4)
	movslq	-516(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-516(%rbp), %rax
	movl	%edx, -592(%rbp,%rax,4)
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB6_28
.LBB6_31:                               # %for.end
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$0, -524(%rbp)
.LBB6_32:                               # %for.cond.103
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_37 Depth 3
                                        #         Child Loop BB6_39 Depth 4
                                        #         Child Loop BB6_43 Depth 4
	movl	-524(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_50
# BB#33:                                # %for.body.106
                                        #   in Loop: Header=BB6_32 Depth=2
	cmpl	$4, -524(%rbp)
	jge	.LBB6_35
# BB#34:                                # %cond.true.109
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-524(%rbp), %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB6_36
.LBB6_35:                               # %cond.false.110
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	$4, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB6_36
.LBB6_36:                               # %cond.end.111
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	%eax, -536(%rbp)
	movl	$0, -532(%rbp)
.LBB6_37:                               # %for.cond.113
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_39 Depth 4
                                        #         Child Loop BB6_43 Depth 4
	movl	-532(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB6_48
# BB#38:                                # %for.body.116
                                        #   in Loop: Header=BB6_37 Depth=3
	movq	-504(%rbp), %rax
	movslq	-532(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)
	movq	-512(%rbp), %rax
	movslq	-532(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)
	movl	$0, -516(%rbp)
.LBB6_39:                               # %for.cond.121
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-516(%rbp), %eax
	cmpl	-536(%rbp), %eax
	jg	.LBB6_42
# BB#40:                                # %for.body.124
                                        #   in Loop: Header=BB6_39 Depth=4
	xorl	%eax, %eax
	movslq	-516(%rbp), %rcx
	movsd	-240(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-516(%rbp), %edx
	imull	-156(%rbp), %edx
	addl	-532(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-516(%rbp), %rcx
	movsd	-336(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-516(%rbp), %eax
	imull	-156(%rbp), %eax
	addl	-532(%rbp), %eax
	movslq	%eax, %rcx
	movq	-504(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-616(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-516(%rbp), %rcx
	movsd	-288(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-516(%rbp), %eax
	imull	-156(%rbp), %eax
	addl	-532(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-516(%rbp), %rcx
	movsd	-384(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-516(%rbp), %eax
	imull	-156(%rbp), %eax
	addl	-532(%rbp), %eax
	movslq	%eax, %rcx
	movq	-512(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-624(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#41:                                # %for.inc.163
                                        #   in Loop: Header=BB6_39 Depth=4
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB6_39
.LBB6_42:                               # %for.end.165
                                        #   in Loop: Header=BB6_37 Depth=3
	movl	-516(%rbp), %eax
	movl	%eax, -520(%rbp)
.LBB6_43:                               # %for.cond.166
                                        #   Parent Loop BB6_24 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        #       Parent Loop BB6_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -520(%rbp)
	jg	.LBB6_46
# BB#44:                                # %for.body.169
                                        #   in Loop: Header=BB6_43 Depth=4
	movslq	-520(%rbp), %rax
	movsd	-240(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-520(%rbp), %rax
	subsd	-432(%rbp,%rax,8), %xmm0
	movslq	-532(%rbp), %rax
	cvtsi2sdl	-576(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-616(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-520(%rbp), %rax
	movsd	-288(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-520(%rbp), %rax
	subsd	-480(%rbp,%rax,8), %xmm0
	movslq	-532(%rbp), %rax
	cvtsi2sdl	-592(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-624(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#45:                                # %for.inc.190
                                        #   in Loop: Header=BB6_43 Depth=4
	movl	-520(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -520(%rbp)
	jmp	.LBB6_43
.LBB6_46:                               # %for.end.192
                                        #   in Loop: Header=BB6_37 Depth=3
	jmp	.LBB6_47
.LBB6_47:                               # %for.inc.193
                                        #   in Loop: Header=BB6_37 Depth=3
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB6_37
.LBB6_48:                               # %for.end.195
                                        #   in Loop: Header=BB6_32 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-156(%rbp), %eax
	movq	-184(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movl	-156(%rbp), %eax
	movq	-192(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -192(%rbp)
	movl	-156(%rbp), %eax
	movq	-504(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -504(%rbp)
	movl	-156(%rbp), %eax
	movq	-512(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -512(%rbp)
# BB#49:                                # %for.inc.205
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-524(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -524(%rbp)
	jmp	.LBB6_32
.LBB6_50:                               # %for.end.207
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movl	-156(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	transfer_pixels
	cmpl	$0, -160(%rbp)
	je	.LBB6_52
# BB#51:                                # %if.then.209
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	-168(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	separate_alpha
.LBB6_52:                               # %if.end.210
                                        #   in Loop: Header=BB6_24 Depth=1
	cmpl	$0, -604(%rbp)
	je	.LBB6_56
# BB#53:                                # %if.then.212
                                        #   in Loop: Header=BB6_24 Depth=1
	leaq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-528(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_set_col
	cvtsi2sdl	-56(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	-544(%rbp), %xmm0
	movsd	%xmm0, -544(%rbp)
	movl	-528(%rbp), %eax
	cltd
	idivl	-608(%rbp)
	cmpl	$0, %edx
	jne	.LBB6_55
# BB#54:                                # %if.then.219
                                        #   in Loop: Header=BB6_24 Depth=1
	movsd	-544(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-552(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB6_55:                               # %if.end.222
                                        #   in Loop: Header=BB6_24 Depth=1
	jmp	.LBB6_61
.LBB6_56:                               # %if.else
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$0, -524(%rbp)
.LBB6_57:                               # %for.cond.223
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-524(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_60
# BB#58:                                # %for.body.226
                                        #   in Loop: Header=BB6_57 Depth=2
	movq	-40(%rbp), %rax
	movl	-524(%rbp), %ecx
	imull	-52(%rbp), %ecx
	addl	-528(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-168(%rbp), %rdx
	movl	-524(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-156(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-736(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#59:                                # %for.inc.236
                                        #   in Loop: Header=BB6_57 Depth=2
	movl	-524(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -524(%rbp)
	jmp	.LBB6_57
.LBB6_60:                               # %for.end.238
                                        #   in Loop: Header=BB6_24 Depth=1
	jmp	.LBB6_61
.LBB6_61:                               # %if.end.239
                                        #   in Loop: Header=BB6_24 Depth=1
	jmp	.LBB6_62
.LBB6_62:                               # %for.inc.240
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-528(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -528(%rbp)
	jmp	.LBB6_24
.LBB6_63:                               # %for.end.242
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_67
.LBB6_64:                               # %if.else.245
	cmpl	$0, -604(%rbp)
	jne	.LBB6_66
# BB#65:                                # %if.then.247
	leaq	-104(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
.LBB6_66:                               # %if.end.248
	jmp	.LBB6_67
.LBB6_67:                               # %if.end.249
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_112
# BB#68:                                # %if.then.252
	movl	$16, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -744(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-744(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -608(%rbp)
	cmpl	$5, -608(%rbp)
	jge	.LBB6_70
# BB#69:                                # %if.then.256
	movl	$5, -608(%rbp)
.LBB6_70:                               # %if.end.257
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI6_3(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB6_71
	jp	.LBB6_71
	jmp	.LBB6_72
.LBB6_71:                               # %if.then.262
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -752(%rbp)       # 8-byte Spill
	callq	log
	leaq	-480(%rbp), %r9
	leaq	-432(%rbp), %r8
	leaq	-384(%rbp), %rcx
	leaq	-336(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-752(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%r9, -768(%rbp)         # 8-byte Spill
	movq	%r8, -776(%rbp)         # 8-byte Spill
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -600(%rbp)
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movq	-792(%rbp), %rdx        # 8-byte Reload
	movq	-784(%rbp), %rcx        # 8-byte Reload
	movq	-776(%rbp), %r8         # 8-byte Reload
	movq	-768(%rbp), %r9         # 8-byte Reload
	callq	find_iir_constants
.LBB6_72:                               # %if.end.275
	movl	$0, -524(%rbp)
.LBB6_73:                               # %for.cond.276
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_80 Depth 2
                                        #     Child Loop BB6_84 Depth 2
                                        #       Child Loop BB6_89 Depth 3
                                        #         Child Loop BB6_91 Depth 4
                                        #         Child Loop BB6_95 Depth 4
	movl	-524(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_111
# BB#74:                                # %for.body.279
                                        #   in Loop: Header=BB6_73 Depth=1
	xorl	%eax, %eax
	movq	-488(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-156(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$3, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-808(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -812(%rbp)        # 4-byte Spill
	callq	memset
	movq	-496(%rbp), %rcx
	movl	-52(%rbp), %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-812(%rbp), %esi        # 4-byte Reload
	callq	memset
	cmpl	$0, -604(%rbp)
	je	.LBB6_76
# BB#75:                                # %if.then.287
                                        #   in Loop: Header=BB6_73 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-524(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB6_77
.LBB6_76:                               # %if.else.289
                                        #   in Loop: Header=BB6_73 Depth=1
	movq	-176(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	-524(%rbp), %ecx
	imull	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
.LBB6_77:                               # %if.end.296
                                        #   in Loop: Header=BB6_73 Depth=1
	cmpl	$0, -160(%rbp)
	je	.LBB6_79
# BB#78:                                # %if.then.298
                                        #   in Loop: Header=BB6_73 Depth=1
	movq	-176(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	multiply_alpha
.LBB6_79:                               # %if.end.299
                                        #   in Loop: Header=BB6_73 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	$0, -516(%rbp)
.LBB6_80:                               # %for.cond.308
                                        #   Parent Loop BB6_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-516(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB6_83
# BB#81:                                # %for.body.311
                                        #   in Loop: Header=BB6_80 Depth=2
	movslq	-516(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-516(%rbp), %rax
	movl	%edx, -576(%rbp,%rax,4)
	movslq	-516(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-516(%rbp), %rax
	movl	%edx, -592(%rbp,%rax,4)
# BB#82:                                # %for.inc.322
                                        #   in Loop: Header=BB6_80 Depth=2
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB6_80
.LBB6_83:                               # %for.end.324
                                        #   in Loop: Header=BB6_73 Depth=1
	movl	$0, -528(%rbp)
.LBB6_84:                               # %for.cond.325
                                        #   Parent Loop BB6_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_89 Depth 3
                                        #         Child Loop BB6_91 Depth 4
                                        #         Child Loop BB6_95 Depth 4
	movl	-528(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_102
# BB#85:                                # %for.body.328
                                        #   in Loop: Header=BB6_84 Depth=2
	cmpl	$4, -528(%rbp)
	jge	.LBB6_87
# BB#86:                                # %cond.true.333
                                        #   in Loop: Header=BB6_84 Depth=2
	movl	-528(%rbp), %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB6_88
.LBB6_87:                               # %cond.false.334
                                        #   in Loop: Header=BB6_84 Depth=2
	movl	$4, %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB6_88
.LBB6_88:                               # %cond.end.335
                                        #   in Loop: Header=BB6_84 Depth=2
	movl	-816(%rbp), %eax        # 4-byte Reload
	movl	%eax, -536(%rbp)
	movl	$0, -532(%rbp)
.LBB6_89:                               # %for.cond.337
                                        #   Parent Loop BB6_73 Depth=1
                                        #     Parent Loop BB6_84 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_91 Depth 4
                                        #         Child Loop BB6_95 Depth 4
	movl	-532(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB6_100
# BB#90:                                # %for.body.340
                                        #   in Loop: Header=BB6_89 Depth=3
	movq	-504(%rbp), %rax
	movslq	-532(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)
	movq	-512(%rbp), %rax
	movslq	-532(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)
	movl	$0, -516(%rbp)
.LBB6_91:                               # %for.cond.345
                                        #   Parent Loop BB6_73 Depth=1
                                        #     Parent Loop BB6_84 Depth=2
                                        #       Parent Loop BB6_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-516(%rbp), %eax
	cmpl	-536(%rbp), %eax
	jg	.LBB6_94
# BB#92:                                # %for.body.348
                                        #   in Loop: Header=BB6_91 Depth=4
	xorl	%eax, %eax
	movslq	-516(%rbp), %rcx
	movsd	-240(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-516(%rbp), %edx
	imull	-156(%rbp), %edx
	addl	-532(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-516(%rbp), %rcx
	movsd	-336(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-516(%rbp), %eax
	imull	-156(%rbp), %eax
	addl	-532(%rbp), %eax
	movslq	%eax, %rcx
	movq	-504(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-632(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-516(%rbp), %rcx
	movsd	-288(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-516(%rbp), %eax
	imull	-156(%rbp), %eax
	addl	-532(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-516(%rbp), %rcx
	movsd	-384(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-516(%rbp), %eax
	imull	-156(%rbp), %eax
	addl	-532(%rbp), %eax
	movslq	%eax, %rcx
	movq	-512(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-640(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#93:                                # %for.inc.387
                                        #   in Loop: Header=BB6_91 Depth=4
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB6_91
.LBB6_94:                               # %for.end.389
                                        #   in Loop: Header=BB6_89 Depth=3
	movl	-516(%rbp), %eax
	movl	%eax, -520(%rbp)
.LBB6_95:                               # %for.cond.390
                                        #   Parent Loop BB6_73 Depth=1
                                        #     Parent Loop BB6_84 Depth=2
                                        #       Parent Loop BB6_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -520(%rbp)
	jg	.LBB6_98
# BB#96:                                # %for.body.393
                                        #   in Loop: Header=BB6_95 Depth=4
	movslq	-520(%rbp), %rax
	movsd	-240(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-520(%rbp), %rax
	subsd	-432(%rbp,%rax,8), %xmm0
	movslq	-532(%rbp), %rax
	cvtsi2sdl	-576(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-632(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-520(%rbp), %rax
	movsd	-288(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-520(%rbp), %rax
	subsd	-480(%rbp,%rax,8), %xmm0
	movslq	-532(%rbp), %rax
	cvtsi2sdl	-592(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-640(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#97:                                # %for.inc.414
                                        #   in Loop: Header=BB6_95 Depth=4
	movl	-520(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -520(%rbp)
	jmp	.LBB6_95
.LBB6_98:                               # %for.end.416
                                        #   in Loop: Header=BB6_89 Depth=3
	jmp	.LBB6_99
.LBB6_99:                               # %for.inc.417
                                        #   in Loop: Header=BB6_89 Depth=3
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB6_89
.LBB6_100:                              # %for.end.419
                                        #   in Loop: Header=BB6_84 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-156(%rbp), %eax
	movq	-184(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movl	-156(%rbp), %eax
	movq	-192(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -192(%rbp)
	movl	-156(%rbp), %eax
	movq	-504(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -504(%rbp)
	movl	-156(%rbp), %eax
	movq	-512(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -512(%rbp)
# BB#101:                               # %for.inc.430
                                        #   in Loop: Header=BB6_84 Depth=2
	movl	-528(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -528(%rbp)
	jmp	.LBB6_84
.LBB6_102:                              # %for.end.432
                                        #   in Loop: Header=BB6_73 Depth=1
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movl	-156(%rbp), %ecx
	movl	-52(%rbp), %r8d
	callq	transfer_pixels
	cmpl	$0, -160(%rbp)
	je	.LBB6_104
# BB#103:                               # %if.then.434
                                        #   in Loop: Header=BB6_73 Depth=1
	movq	-168(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	separate_alpha
.LBB6_104:                              # %if.end.435
                                        #   in Loop: Header=BB6_73 Depth=1
	cmpl	$0, -604(%rbp)
	je	.LBB6_108
# BB#105:                               # %if.then.437
                                        #   in Loop: Header=BB6_73 Depth=1
	leaq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-524(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
	cvtsi2sdl	-52(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	-544(%rbp), %xmm0
	movsd	%xmm0, -544(%rbp)
	movl	-524(%rbp), %eax
	cltd
	idivl	-608(%rbp)
	cmpl	$0, %edx
	jne	.LBB6_107
# BB#106:                               # %if.then.445
                                        #   in Loop: Header=BB6_73 Depth=1
	movsd	-544(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-552(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB6_107:                              # %if.end.448
                                        #   in Loop: Header=BB6_73 Depth=1
	jmp	.LBB6_109
.LBB6_108:                              # %if.else.449
                                        #   in Loop: Header=BB6_73 Depth=1
	movq	-40(%rbp), %rax
	movl	-524(%rbp), %ecx
	imull	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB6_109:                              # %if.end.456
                                        #   in Loop: Header=BB6_73 Depth=1
	jmp	.LBB6_110
.LBB6_110:                              # %for.inc.457
                                        #   in Loop: Header=BB6_73 Depth=1
	movl	-524(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -524(%rbp)
	jmp	.LBB6_73
.LBB6_111:                              # %for.end.459
	jmp	.LBB6_112
.LBB6_112:                              # %if.end.460
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	addq	$848, %rsp              # imm = 0x350
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gauss_iir, .Lfunc_end6-gauss_iir
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
.LCPI7_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI7_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gauss_rle,@function
gauss_rle:                              # @gauss_rle
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
	subq	$448, %rsp              # imm = 0x1C0
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	$1, -220(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	cmpq	$0, -40(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -248(%rbp)
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -156(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -160(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB7_2
# BB#1:                                 # %cond.true
	movl	-52(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movl	-56(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB7_3:                                # %cond.end
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB7_5
# BB#4:                                 # %cond.true.7
	movl	-52(%rbp), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.8
	movl	-56(%rbp), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB7_6:                                # %cond.end.9
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$0, -248(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then
	leaq	-152(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB7_8:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB7_10
# BB#9:                                 # %cond.true.20
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.21
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB7_11:                               # %cond.end.25
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -208(%rbp)
	ucomisd	-24(%rbp), %xmm1
	jb	.LBB7_13
# BB#12:                                # %cond.true.29
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB7_14
.LBB7_13:                               # %cond.false.30
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB7_14:                               # %cond.end.34
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_42
# BB#15:                                # %if.then.38
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movq	$0, -264(%rbp)
	movq	$0, -272(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movapd	.LCPI7_3(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -24(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	callq	log
	movl	$16, %edx
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	%edx, -340(%rbp)        # 4-byte Spill
	callq	sqrt
	movsd	%xmm0, -216(%rbp)
	movl	-52(%rbp), %eax
	cltd
	movl	-340(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -252(%rbp)
	cmpl	$5, -252(%rbp)
	jge	.LBB7_17
# BB#16:                                # %if.then.48
	movl	$5, -252(%rbp)
.LBB7_17:                               # %if.end.49
	leaq	-232(%rbp), %rdi
	leaq	-244(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-220(%rbp), %rcx
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	make_rle_curve
	movl	$4, %eax
	movl	%eax, %esi
	movl	-56(%rbp), %eax
	movl	-244(%rbp), %r8d
	shll	$1, %r8d
	addl	%r8d, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$4, %r8d
	movl	%r8d, %esi
	movq	%rax, -264(%rbp)
	movl	-244(%rbp), %r8d
	movq	-264(%rbp), %rax
	movslq	%r8d, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movl	-56(%rbp), %r8d
	movl	-244(%rbp), %r9d
	shll	$1, %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -272(%rbp)
	movl	-244(%rbp), %r8d
	movq	-272(%rbp), %rax
	movslq	%r8d, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movl	$0, -184(%rbp)
.LBB7_18:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_35 Depth 2
	movl	-184(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB7_41
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB7_18 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-184(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_col
	cmpl	$0, -160(%rbp)
	je	.LBB7_21
# BB#20:                                # %if.then.64
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	-176(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	multiply_alpha
.LBB7_21:                               # %if.end.65
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	$0, -188(%rbp)
.LBB7_22:                               # %for.cond.66
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB7_28
# BB#23:                                # %for.body.69
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	$1, %eax
	movq	-176(%rbp), %rcx
	movslq	-188(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdx
	movl	-156(%rbp), %edi
	movl	-56(%rbp), %r8d
	movl	-244(%rbp), %r9d
	movl	%edi, -344(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-344(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	run_length_encode
	movl	$4, %ecx
	movl	%eax, -276(%rbp)
	movl	-276(%rbp), %eax
	imull	$3, -56(%rbp), %r8d
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-352(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_25
# BB#24:                                # %if.then.77
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-168(%rbp), %rax
	movslq	-188(%rbp), %rcx
	addq	%rcx, %rax
	movl	-56(%rbp), %ecx
	movl	-244(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %r10d
	movq	-240(%rbp), %r11
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	do_encoded_lre
	jmp	.LBB7_26
.LBB7_25:                               # %if.else
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	-272(%rbp), %rdi
	movq	-168(%rbp), %rax
	movslq	-188(%rbp), %rcx
	addq	%rcx, %rax
	movl	-56(%rbp), %edx
	movl	-244(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movq	-232(%rbp), %r9
	movl	-220(%rbp), %esi
	movl	%esi, -364(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-364(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	do_full_lre
.LBB7_26:                               # %if.end.82
                                        #   in Loop: Header=BB7_22 Depth=2
	jmp	.LBB7_27
.LBB7_27:                               # %for.inc
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB7_22
.LBB7_28:                               # %for.end
                                        #   in Loop: Header=BB7_18 Depth=1
	cmpl	$0, -160(%rbp)
	je	.LBB7_30
# BB#29:                                # %if.then.84
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	-168(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	separate_alpha
.LBB7_30:                               # %if.end.85
                                        #   in Loop: Header=BB7_18 Depth=1
	cmpl	$0, -248(%rbp)
	je	.LBB7_34
# BB#31:                                # %if.then.87
                                        #   in Loop: Header=BB7_18 Depth=1
	leaq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-184(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_set_col
	cvtsi2sdl	-56(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	-184(%rbp), %eax
	cltd
	idivl	-252(%rbp)
	cmpl	$0, %edx
	jne	.LBB7_33
# BB#32:                                # %if.then.94
                                        #   in Loop: Header=BB7_18 Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-208(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB7_33:                               # %if.end.97
                                        #   in Loop: Header=BB7_18 Depth=1
	jmp	.LBB7_39
.LBB7_34:                               # %if.else.98
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	$0, -180(%rbp)
.LBB7_35:                               # %for.cond.99
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB7_38
# BB#36:                                # %for.body.102
                                        #   in Loop: Header=BB7_35 Depth=2
	movq	-40(%rbp), %rax
	movl	-180(%rbp), %ecx
	imull	-52(%rbp), %ecx
	addl	-184(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-168(%rbp), %rdx
	movl	-180(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-156(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-376(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#37:                                # %for.inc.112
                                        #   in Loop: Header=BB7_35 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB7_35
.LBB7_38:                               # %for.end.114
                                        #   in Loop: Header=BB7_18 Depth=1
	jmp	.LBB7_39
.LBB7_39:                               # %if.end.115
                                        #   in Loop: Header=BB7_18 Depth=1
	jmp	.LBB7_40
.LBB7_40:                               # %for.inc.116
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB7_18
.LBB7_41:                               # %for.end.118
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-264(%rbp), %rdx
	movslq	-244(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdx
	movslq	-244(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r9d
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r10d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%r8d, -380(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB7_45
.LBB7_42:                               # %if.else.126
	cmpl	$0, -248(%rbp)
	jne	.LBB7_44
# BB#43:                                # %if.then.128
	leaq	-104(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
.LBB7_44:                               # %if.end.129
	jmp	.LBB7_45
.LBB7_45:                               # %if.end.130
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_76
# BB#46:                                # %if.then.133
	movl	$16, %eax
	movq	$0, -288(%rbp)
	movq	$0, -296(%rbp)
	movl	-56(%rbp), %ecx
	movl	%eax, -384(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-384(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -252(%rbp)
	cmpl	$5, -252(%rbp)
	jge	.LBB7_48
# BB#47:                                # %if.then.139
	movl	$5, -252(%rbp)
.LBB7_48:                               # %if.end.140
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI7_3(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB7_49
	jp	.LBB7_49
	jmp	.LBB7_52
.LBB7_49:                               # %if.then.145
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	callq	log
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -216(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB7_51
# BB#50:                                # %if.then.154
	movq	-232(%rbp), %rdi
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rdx
	callq	free_rle_curve
.LBB7_51:                               # %if.end.155
	leaq	-232(%rbp), %rdi
	leaq	-244(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-220(%rbp), %rcx
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	make_rle_curve
.LBB7_52:                               # %if.end.156
	movl	$4, %eax
	movl	%eax, %esi
	movl	-52(%rbp), %eax
	movl	-244(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -288(%rbp)
	movl	-244(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, -288(%rbp)
	movl	-52(%rbp), %ecx
	movl	-244(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -296(%rbp)
	movl	-244(%rbp), %ecx
	movq	-296(%rbp), %rax
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movq	%rax, -296(%rbp)
	movl	$0, -180(%rbp)
.LBB7_53:                               # %for.cond.169
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
	movl	-180(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB7_75
# BB#54:                                # %for.body.172
                                        #   in Loop: Header=BB7_53 Depth=1
	cmpl	$0, -248(%rbp)
	je	.LBB7_56
# BB#55:                                # %if.then.174
                                        #   in Loop: Header=BB7_53 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-180(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB7_57
.LBB7_56:                               # %if.else.176
                                        #   in Loop: Header=BB7_53 Depth=1
	movq	-176(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	-180(%rbp), %ecx
	imull	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
.LBB7_57:                               # %if.end.183
                                        #   in Loop: Header=BB7_53 Depth=1
	cmpl	$0, -160(%rbp)
	je	.LBB7_59
# BB#58:                                # %if.then.185
                                        #   in Loop: Header=BB7_53 Depth=1
	movq	-176(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	multiply_alpha
.LBB7_59:                               # %if.end.186
                                        #   in Loop: Header=BB7_53 Depth=1
	movl	$0, -188(%rbp)
.LBB7_60:                               # %for.cond.187
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB7_66
# BB#61:                                # %for.body.190
                                        #   in Loop: Header=BB7_60 Depth=2
	movl	$1, %eax
	movq	-176(%rbp), %rcx
	movslq	-188(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdx
	movl	-156(%rbp), %edi
	movl	-52(%rbp), %r8d
	movl	-244(%rbp), %r9d
	movl	%edi, -396(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-396(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	run_length_encode
	movl	$4, %ecx
	movl	%eax, -300(%rbp)
	movl	-300(%rbp), %eax
	imull	$3, -52(%rbp), %r8d
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-404(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_63
# BB#62:                                # %if.then.199
                                        #   in Loop: Header=BB7_60 Depth=2
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	movq	-168(%rbp), %rax
	movslq	-188(%rbp), %rcx
	addq	%rcx, %rax
	movl	-52(%rbp), %ecx
	movl	-244(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %r10d
	movq	-240(%rbp), %r11
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	do_encoded_lre
	jmp	.LBB7_64
.LBB7_63:                               # %if.else.202
                                        #   in Loop: Header=BB7_60 Depth=2
	movq	-296(%rbp), %rdi
	movq	-168(%rbp), %rax
	movslq	-188(%rbp), %rcx
	addq	%rcx, %rax
	movl	-52(%rbp), %edx
	movl	-244(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movq	-232(%rbp), %r9
	movl	-220(%rbp), %esi
	movl	%esi, -420(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-420(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	do_full_lre
.LBB7_64:                               # %if.end.205
                                        #   in Loop: Header=BB7_60 Depth=2
	jmp	.LBB7_65
.LBB7_65:                               # %for.inc.206
                                        #   in Loop: Header=BB7_60 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB7_60
.LBB7_66:                               # %for.end.208
                                        #   in Loop: Header=BB7_53 Depth=1
	cmpl	$0, -160(%rbp)
	je	.LBB7_68
# BB#67:                                # %if.then.210
                                        #   in Loop: Header=BB7_53 Depth=1
	movq	-168(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-156(%rbp), %edx
	callq	separate_alpha
.LBB7_68:                               # %if.end.211
                                        #   in Loop: Header=BB7_53 Depth=1
	cmpl	$0, -248(%rbp)
	je	.LBB7_72
# BB#69:                                # %if.then.213
                                        #   in Loop: Header=BB7_53 Depth=1
	leaq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-180(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
	cvtsi2sdl	-52(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	-180(%rbp), %eax
	cltd
	idivl	-252(%rbp)
	cmpl	$0, %edx
	jne	.LBB7_71
# BB#70:                                # %if.then.221
                                        #   in Loop: Header=BB7_53 Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-208(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB7_71:                               # %if.end.224
                                        #   in Loop: Header=BB7_53 Depth=1
	jmp	.LBB7_73
.LBB7_72:                               # %if.else.225
                                        #   in Loop: Header=BB7_53 Depth=1
	movq	-40(%rbp), %rax
	movl	-180(%rbp), %ecx
	imull	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB7_73:                               # %if.end.232
                                        #   in Loop: Header=BB7_53 Depth=1
	jmp	.LBB7_74
.LBB7_74:                               # %for.inc.233
                                        #   in Loop: Header=BB7_53 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB7_53
.LBB7_75:                               # %for.end.235
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-288(%rbp), %rdx
	movslq	-244(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-296(%rbp), %rdx
	movslq	-244(%rbp), %rsi
	subq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
.LBB7_76:                               # %if.end.242
	cmpq	$0, -232(%rbp)
	je	.LBB7_78
# BB#77:                                # %if.then.244
	movq	-232(%rbp), %rdi
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rdx
	callq	free_rle_curve
.LBB7_78:                               # %if.end.245
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gauss_rle, .Lfunc_end7-gauss_rle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
.LCPI8_1:
	.quad	-4611686018427387904    # double -2
.LCPI8_2:
	.quad	4616189618054758400     # double 4
.LCPI8_3:
	.quad	-4625020276204106469    # double -0.25979999999999998
.LCPI8_4:
	.quad	-4619069219656499095    # double -0.68030000000000002
.LCPI8_5:
	.quad	4615592891104131809     # double 3.7349999999999999
.LCPI8_6:
	.quad	4610246217626517556     # double 1.6802999999999999
.LCPI8_7:
	.quad	4611672507628505793     # double 1.9970000000000001
.LCPI8_8:
	.quad	4603865968034421775     # double 0.63180000000000003
.LCPI8_9:
	.quad	-4612933515524169531    # double -1.7230000000000001
.LCPI8_10:
	.quad	-4612663299546527302    # double -1.7829999999999999
.LCPI8_11:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI8_12:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	find_iir_constants,@function
find_iir_constants:                     # @find_iir_constants
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
	subq	$640, %rsp              # imm = 0x280
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_5, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI8_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI8_7, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI8_8, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI8_9, %xmm7         # xmm7 = mem[0],zero
	movsd	.LCPI8_10, %xmm8        # xmm8 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	.LCPI8_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm3, -184(%rbp)       # 8-byte Spill
	movsd	%xmm4, -192(%rbp)       # 8-byte Spill
	movsd	%xmm5, -200(%rbp)       # 8-byte Spill
	movsd	%xmm6, -208(%rbp)       # 8-byte Spill
	movsd	%xmm7, -216(%rbp)       # 8-byte Spill
	movsd	%xmm8, -224(%rbp)       # 8-byte Spill
	movsd	%xmm2, -232(%rbp)       # 8-byte Spill
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	callq	sqrt
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -256(%rbp)       # 8-byte Spill
	movsd	%xmm1, -264(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-104(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -304(%rbp)       # 8-byte Spill
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -344(%rbp)       # 8-byte Spill
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -384(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -400(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -408(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -440(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-440(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -456(%rbp)       # 8-byte Spill
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -480(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-480(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
	callq	exp
	xorps	%xmm1, %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -504(%rbp)       # 8-byte Spill
	movsd	%xmm1, -512(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -528(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-520(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-528(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-488(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	-512(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rcx)
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	exp
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -536(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-536(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -544(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_0, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm2, -552(%rbp)       # 8-byte Spill
	movsd	%xmm1, -560(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-544(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	-560(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -568(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm1, -576(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-576(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	-80(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -584(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	mulsd	-72(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -592(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_1, %xmm2         # xmm2 = mem[0],zero
	movsd	-592(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm0, %xmm3
	movq	-24(%rbp), %rcx
	movsd	%xmm3, 16(%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm2, -600(%rbp)       # 8-byte Spill
	movsd	%xmm1, -608(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-600(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-608(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -616(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-616(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm2, -624(%rbp)       # 8-byte Spill
	movsd	%xmm1, -632(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-632(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -640(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-640(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-624(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movaps	%xmm1, %xmm0
	mulsd	-72(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	exp
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movl	$0, -132(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -132(%rbp)
	jg	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-132(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -132(%rbp)
.LBB8_5:                                # %for.cond.125
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -132(%rbp)
	jg	.LBB8_8
# BB#6:                                 # %for.body.127
                                        #   in Loop: Header=BB8_5 Depth=1
	movslq	-132(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movslq	-132(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#7:                                 # %for.inc.137
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB8_5
.LBB8_8:                                # %for.end.139
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm0, -160(%rbp)
	movl	$0, -132(%rbp)
.LBB8_9:                                # %for.cond.140
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -132(%rbp)
	jg	.LBB8_12
# BB#10:                                # %for.body.142
                                        #   in Loop: Header=BB8_9 Depth=1
	movslq	-132(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movslq	-132(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movslq	-132(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
# BB#11:                                # %for.inc.152
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB8_9
.LBB8_12:                               # %for.end.154
	movsd	.LCPI8_12, %xmm0        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-160(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-160(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -176(%rbp)
	movl	$0, -132(%rbp)
.LBB8_13:                               # %for.cond.159
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -132(%rbp)
	jg	.LBB8_16
# BB#14:                                # %for.body.161
                                        #   in Loop: Header=BB8_13 Depth=1
	movslq	-132(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	movslq	-132(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-132(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movslq	-132(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#15:                                # %for.inc.172
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB8_13
.LBB8_16:                               # %for.end.174
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end8:
	.size	find_iir_constants, .Lfunc_end8-find_iir_constants
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI9_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	multiply_alpha,@function
multiply_alpha:                         # @multiply_alpha
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB9_3:                                # %for.cond.2
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_6
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB9_3 Depth=2
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc.16
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end.18
	popq	%rbp
	retq
.Lfunc_end9:
	.size	multiply_alpha, .Lfunc_end9-multiply_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	transfer_pixels,@function
transfer_pixels:                        # @transfer_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB10_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rbp)
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	addsd	(%rax), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB10_7
.LBB10_4:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB10_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB10_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.5
                                        #   in Loop: Header=BB10_1 Depth=1
	cvttsd2si	-48(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_1
.LBB10_9:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end10:
	.size	transfer_pixels, .Lfunc_end10-transfer_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643176031446892544     # double 255
.LCPI11_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	separate_alpha,@function
separate_alpha:                         # @separate_alpha
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB11_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-16(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -25(%rbp)
	movzbl	-25(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_15
.LBB11_15:                              # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB11_4
	jmp	.LBB11_3
.LBB11_3:                               # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_4:                               # %sw.default
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-25(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB11_5:                               # %for.cond.3
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_11
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	$255, %eax
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cvtsi2sdl	%esi, %xmm1
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movl	%esi, -44(%rbp)
	cmpl	-44(%rbp), %eax
	jge	.LBB11_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	$255, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB11_9:                               # %cond.end
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_5
.LBB11_11:                              # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %sw.epilog
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc.18
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB11_1
.LBB11_14:                              # %for.end.20
	popq	%rbp
	retq
.Lfunc_end11:
	.size	separate_alpha, .Lfunc_end11-separate_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4611686018427387904     # double 2
.LCPI12_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI12_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	make_rle_curve,@function
make_rle_curve:                         # @make_rle_curve
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
	subq	$112, %rsp
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	mulsd	-8(%rbp), %xmm2
	mulsd	-8(%rbp), %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movl	$2, %eax
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	sqrt
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltd
	movl	-108(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
.LBB12_2:                               # %if.end
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-68(%rbp), %rdi
	callq	g_malloc_n
	movl	$2, %ecx
	movq	%rax, -88(%rbp)
	movl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movq	-88(%rbp), %rsi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
	movq	-88(%rbp), %rsi
	movl	$255, (%rsi)
	movl	$1, -64(%rbp)
.LBB12_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB12_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	imull	-64(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-48(%rbp), %xmm0
	callq	exp
	xorl	%eax, %eax
	movsd	.LCPI12_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %ecx
	subl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	-60(%rbp), %eax
	movslq	-64(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
	movl	$4, %eax
	movl	%eax, %esi
	movl	-72(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -64(%rbp)
.LBB12_7:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB12_10
# BB#8:                                 # %for.body.31
                                        #   in Loop: Header=BB12_7 Depth=1
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-80(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	movslq	-64(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#9:                                 # %for.inc.42
                                        #   in Loop: Header=BB12_7 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB12_7
.LBB12_10:                              # %for.end.44
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
	movslq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	subl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	subl	(%rsi,%rdx,4), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, (%rsi)
	movl	-72(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	make_rle_curve, .Lfunc_end12-make_rle_curve
	.cfi_endproc

	.align	16, 0x90
	.type	run_length_encode,@function
run_length_encode:                      # @run_length_encode
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB13_2:                               # %if.end
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	subl	$1, %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB13_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -24(%rbp)
	movl	%eax, (%rcx)
	cmpl	$0, -40(%rbp)
	je	.LBB13_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
.LBB13_6:                               # %if.end.12
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_3
.LBB13_8:                               # %for.end
	movl	$0, -52(%rbp)
.LBB13_9:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB13_18
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB13_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -8(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB13_13
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -24(%rbp)
	movl	%eax, (%rcx)
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB13_16
.LBB13_13:                              # %if.else
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	$1, -48(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -24(%rbp)
	movl	%eax, (%rcx)
	cmpl	$0, -40(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
.LBB13_15:                              # %if.end.33
                                        #   in Loop: Header=BB13_9 Depth=1
	jmp	.LBB13_16
.LBB13_16:                              # %if.end.34
                                        #   in Loop: Header=BB13_9 Depth=1
	jmp	.LBB13_17
.LBB13_17:                              # %for.inc.35
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_9
.LBB13_18:                              # %for.end.37
	movl	$0, -52(%rbp)
.LBB13_19:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB13_24
# BB#20:                                # %for.body.41
                                        #   in Loop: Header=BB13_19 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -24(%rbp)
	movl	%eax, (%rcx)
	cmpl	$0, -40(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.45
                                        #   in Loop: Header=BB13_19 Depth=1
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
.LBB13_22:                              # %if.end.47
                                        #   in Loop: Header=BB13_19 Depth=1
	jmp	.LBB13_23
.LBB13_23:                              # %for.inc.48
                                        #   in Loop: Header=BB13_19 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_19
.LBB13_24:                              # %for.end.50
	movl	-56(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	run_length_encode, .Lfunc_end13-run_length_encode
	.cfi_endproc

	.align	16, 0x90
	.type	do_encoded_lre,@function
do_encoded_lre:                         # @do_encoded_lre
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
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	%r11, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB14_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	-52(%rbp), %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -104(%rbp)
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	-32(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-68(%rbp), %eax
	addl	-108(%rbp), %eax
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movl	-68(%rbp), %eax
	addl	-108(%rbp), %eax
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movslq	-108(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movl	(%rdi,%rsi,4), %eax
	movl	%eax, -96(%rbp)
	movq	-80(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB14_3:                               # %while.cond
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB14_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB14_3 Depth=2
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -112(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movl	-112(%rbp), %esi
	subl	-96(%rbp), %esi
	imull	%esi, %edx
	addl	-104(%rbp), %edx
	movl	%edx, -104(%rbp)
	movl	-112(%rbp), %edx
	movl	%edx, -96(%rbp)
	movslq	-92(%rbp), %rax
	shlq	$2, %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movslq	-92(%rbp), %rax
	shlq	$2, %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edx
	addl	-100(%rbp), %edx
	movl	%edx, -100(%rbp)
	jmp	.LBB14_3
.LBB14_5:                               # %while.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	subl	-96(%rbp), %esi
	imull	%esi, %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	-104(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%eax, -104(%rbp)
	cmpl	$255, -104(%rbp)
	jge	.LBB14_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$255, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB14_1
.LBB14_10:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end14:
	.size	do_encoded_lre, .Lfunc_end14-do_encoded_lre
	.cfi_endproc

	.align	16, 0x90
	.type	do_full_lre,@function
do_full_lre:                            # @do_full_lre
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
                                        #     Child Loop BB15_6 Depth 2
                                        #     Child Loop BB15_9 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB15_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-44(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-84(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -80(%rbp)
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-72(%rbp), %rcx
	imull	(%rcx), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-72(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -72(%rbp)
	movq	-56(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	addq	$-4, %rcx
	movq	%rcx, -64(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB15_3:                               # %while.cond
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -76(%rbp)
	jl	.LBB15_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=2
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-4(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	4(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-8(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	8(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-12(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	12(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-16(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	16(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-20(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	20(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-24(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	24(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-28(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	28(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	$-32, %rax
	movq	%rax, -64(%rbp)
	movl	-76(%rbp), %ecx
	subl	$8, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB15_3
.LBB15_5:                               # %while.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_6
.LBB15_6:                               # %while.cond.58
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -76(%rbp)
	jl	.LBB15_8
# BB#7:                                 # %while.body.60
                                        #   in Loop: Header=BB15_6 Depth=2
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-4(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	4(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-8(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	8(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	-12(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	12(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -64(%rbp)
	movl	-76(%rbp), %ecx
	subl	$4, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB15_6
.LBB15_8:                               # %while.end.89
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_9
.LBB15_9:                               # %while.cond.90
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -76(%rbp)
	jl	.LBB15_11
# BB#10:                                # %while.body.92
                                        #   in Loop: Header=BB15_9 Depth=2
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	addl	(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	(%rax), %ecx
	addl	-80(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -64(%rbp)
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB15_9
.LBB15_11:                              # %while.end.103
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-80(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -80(%rbp)
	cmpl	$255, -80(%rbp)
	jge	.LBB15_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB15_14
.LBB15_13:                              # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$255, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB15_14
.LBB15_14:                              # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB15_1
.LBB15_16:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end15:
	.size	do_full_lre, .Lfunc_end15-do_full_lre
	.cfi_endproc

	.align	16, 0x90
	.type	free_rle_curve,@function
free_rle_curve:                         # @free_rle_curve
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movslq	-12(%rbp), %rdi
	subq	%rdi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movslq	-12(%rbp), %rdi
	subq	%rdi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	free_rle_curve, .Lfunc_end16-free_rle_curve
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.size	query.args, 144

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"horizontal"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Horizontal radius of gaussian blur (in pixels, > 0.0)"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"vertical"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Vertical radius of gaussian blur (in pixels, > 0.0)"
	.size	.L.str.9, 52

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"method"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Blur method { IIR (0), RLE (1) }"
	.size	.L.str.11, 33

	.type	query.args1,@object     # @query.args1
	.section	.rodata,"a",@progbits
	.align	16
query.args1:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.12
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.16
	.size	query.args1, 144

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Input image (unused)"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"radius"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Radius of gaussian blur (in pixels, > 0.0)"
	.size	.L.str.14, 43

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Blur in horizontal direction"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Blur in vertical direction"
	.size	.L.str.16, 27

	.type	query.args2,@object     # @query.args2
	.section	.rodata,"a",@progbits
	.align	16
query.args2:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args2, 120

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"plug-in-gauss"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Simplest, most commonly used way of blurring"
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  Horizontal and vertical blurring can be independently invoked by specifying only one to run.  The IIR gaussian blurring works best for large radius values and for images which are not computer-generated."
	.size	.L.str.19, 402

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.20, 31

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"1995-1996"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Gaussian Blur..."
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plug-in-gauss-iir"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Apply a gaussian blur"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-gauss-iir2"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  This radius can be specified indepently on for the horizontal and the vertical direction. The IIR gaussian blurring works best for large radius values and for images which are not computer-generated."
	.size	.L.str.27, 398

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Spencer Kimball, Peter Mattis & Sven Neumann"
	.size	.L.str.28, 45

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"1995-2000"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-gauss-rle"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  Horizontal and vertical blurring can be independently invoked by specifying only one to run.  The RLE gaussian blurring performs most efficiently on computer-generated images or images with large areas of constant intensity."
	.size	.L.str.31, 423

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"plug-in-gauss-rle2"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Applies a gaussian blur to the drawable, with specified radius of affect.  The standard deviation of the normal distribution used to modify pixel values is calculated based on the supplied radius.  This radius can be specified indepently on for the horizontal and the vertical direction. The RLE gaussian blurring performs most efficiently on computer-generated images or images with large areas of constant intensity."
	.size	.L.str.33, 419

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<Image>/Filters/Blur"
	.size	.L.str.34, 21

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"UTF-8"
	.size	.L.str.36, 6

	.type	bvals,@object           # @bvals
	.data
	.align	8
bvals:
	.quad	4617315517961601024     # double 5
	.quad	4617315517961601024     # double 5
	.long	1                       # 0x1
	.zero	4
	.size	bvals, 24

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Gaussian Blur"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.38, 40

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"blur-gauss"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-blur-gauss"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-cancel"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-ok"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Blur Radius"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%a"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Horizontal:"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Vertical:"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"value-changed"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"refval-changed"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"invalidated"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Blur Method"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_IIR"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_RLE"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"toggled"
	.size	.L.str.53, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
