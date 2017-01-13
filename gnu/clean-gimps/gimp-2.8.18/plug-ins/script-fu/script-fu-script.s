	.text
	.file	"script-fu-script.bc"
	.globl	script_fu_script_new
	.align	16, 0x90
	.type	script_fu_script_new,@function
script_fu_script_new:                   # @script_fu_script_new
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movl	$72, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movl	%eax, -68(%rbp)
	movq	%rbx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-80(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movl	$128, %r11d
	movl	%r11d, %esi
	movq	-80(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movl	-68(%rbp), %r11d
	movq	-80(%rbp), %rax
	movl	%r11d, 56(%rax)
	movq	-80(%rbp), %rax
	movslq	56(%rax), %rdi
	callq	g_malloc0_n
	movq	-80(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-80(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_script_new, .Lfunc_end0-script_fu_script_new
	.cfi_endproc

	.globl	script_fu_script_free
	.align	16, 0x90
	.type	script_fu_script_free,@function
script_fu_script_free:                  # @script_fu_script_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_free, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movl	$0, -12(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB1_21
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	8(%rcx,%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$20, %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	ja	.LBB1_19
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_8:                                # %sw.bb
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_19
.LBB1_9:                                # %sw.bb.2
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_10:                               # %sw.bb.4
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_19
.LBB1_11:                               # %sw.bb.5
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_12:                               # %sw.bb.10
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_13:                               # %sw.bb.14
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_14:                               # %sw.bb.18
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_15:                               # %sw.bb.22
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_16:                               # %sw.bb.26
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	jmp	.LBB1_19
.LBB1_17:                               # %sw.bb.32
                                        #   in Loop: Header=BB1_6 Depth=1
	movabsq	$g_free, %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_slist_free_full
	jmp	.LBB1_19
.LBB1_18:                               # %sw.bb.34
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
.LBB1_19:                               # %sw.epilog
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_6
.LBB1_21:                               # %for.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#22:                                # %do.body.37
	movl	$72, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_23:                               # %do.end.38
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	script_fu_script_free, .Lfunc_end1-script_fu_script_free
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_12
	.quad	.LBB1_14
	.quad	.LBB1_16
	.quad	.LBB1_15
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_17
	.quad	.LBB1_13
	.quad	.LBB1_9
	.quad	.LBB1_18
	.quad	.LBB1_8

	.text
	.globl	script_fu_script_install_proc
	.align	16, 0x90
	.type	script_fu_script_install_proc,@function
script_fu_script_install_proc:          # @script_fu_script_install_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp10:
	.cfi_offset %rbx, -56
.Ltmp11:
	.cfi_offset %r12, -48
.Ltmp12:
	.cfi_offset %r13, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_install_proc, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -56(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_install_proc, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movabsq	$.L.str.2, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB2_12
# BB#11:                                # %if.then.9
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB2_12:                               # %if.end.11
	movl	$24, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movl	56(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.3, %rsi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	%rsi, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	$0, -76(%rbp)
.LBB2_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB2_37
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movslq	-76(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$20, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	ja	.LBB2_35
# BB#39:                                # %for.body
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_15:                               # %sw.bb
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.5, %rax
	movl	$13, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_16:                               # %sw.bb.23
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.6, %rax
	movl	$16, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_17:                               # %sw.bb.24
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.7, %rax
	movl	$14, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_18:                               # %sw.bb.25
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.8, %rax
	movl	$15, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_19:                               # %sw.bb.26
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.9, %rax
	movl	$19, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_20:                               # %sw.bb.27
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.10, %rax
	movl	$12, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_21:                               # %sw.bb.28
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.11, %rax
	movl	$10, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_22:                               # %sw.bb.29
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.12, %rax
	movl	$0, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_23:                               # %sw.bb.30
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.13, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_24:                               # %sw.bb.31
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.14, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_25:                               # %sw.bb.32
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.13, %rax
	movl	$3, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_26:                               # %sw.bb.33
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.15, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_27:                               # %sw.bb.34
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.16, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_28:                               # %sw.bb.35
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.17, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_29:                               # %sw.bb.36
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.18, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_30:                               # %sw.bb.37
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.19, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_31:                               # %sw.bb.38
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.20, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_32:                               # %sw.bb.39
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.21, %rax
	movl	$4, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_33:                               # %sw.bb.40
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.22, %rax
	movl	$0, -80(%rbp)
	movq	%rax, -88(%rbp)
	jmp	.LBB2_35
.LBB2_34:                               # %sw.bb.41
                                        #   in Loop: Header=BB2_13 Depth=1
	movabsq	$.L.str.23, %rax
	movl	$0, -80(%rbp)
	movq	%rax, -88(%rbp)
.LBB2_35:                               # %sw.epilog
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	-72(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	imulq	$24, %rsi, %rsi
	addq	-72(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movslq	-76(%rbp), %rdx
	movq	-48(%rbp), %rsi
	shlq	$7, %rdx
	addq	64(%rsi), %rdx
	movq	8(%rdx), %rdx
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	imulq	$24, %rsi, %rsi
	addq	-72(%rbp), %rsi
	movq	%rdx, 16(%rsi)
# BB#36:                                # %for.inc
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB2_13
.LBB2_37:                               # %for.end
	movabsq	$.L.str.24, %rdx
	movl	$3, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-48(%rbp), %r8
	movq	(%r8), %r8
	movq	-48(%rbp), %r9
	movq	16(%r9), %rsi
	movq	-48(%rbp), %r9
	movq	24(%r9), %r9
	movq	-48(%rbp), %r10
	movq	32(%r10), %r10
	movq	-48(%rbp), %r11
	movq	40(%r11), %r11
	movq	-64(%rbp), %rbx
	movq	-48(%rbp), %r14
	movq	48(%r14), %r14
	movq	-48(%rbp), %r15
	movl	56(%r15), %r12d
	addl	$1, %r12d
	movq	-72(%rbp), %r15
	movq	-56(%rbp), %r13
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movq	%r10, %r8
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, 56(%rsp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_install_temp_proc
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
.LBB2_38:                               # %return
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	script_fu_script_install_proc, .Lfunc_end2-script_fu_script_install_proc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_15
	.quad	.LBB2_16
	.quad	.LBB2_17
	.quad	.LBB2_18
	.quad	.LBB2_19
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_23
	.quad	.LBB2_24
	.quad	.LBB2_25
	.quad	.LBB2_28
	.quad	.LBB2_30
	.quad	.LBB2_31
	.quad	.LBB2_32
	.quad	.LBB2_26
	.quad	.LBB2_27
	.quad	.LBB2_33
	.quad	.LBB2_29
	.quad	.LBB2_24
	.quad	.LBB2_34
	.quad	.LBB2_20

	.text
	.globl	script_fu_script_uninstall_proc
	.align	16, 0x90
	.type	script_fu_script_uninstall_proc,@function
script_fu_script_uninstall_proc:        # @script_fu_script_uninstall_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_uninstall_proc, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_uninstall_temp_proc
.LBB3_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	script_fu_script_uninstall_proc, .Lfunc_end3-script_fu_script_uninstall_proc
	.cfi_endproc

	.globl	script_fu_script_get_title
	.align	16, 0x90
	.type	script_fu_script_get_title,@function
script_fu_script_get_title:             # @script_fu_script_get_title
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_get_title, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_15
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_strip_uline
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB4_9
# BB#6:                                 # %land.lhs.true
	movl	$47, %esi
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true.5
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
# BB#8:                                 # %if.then.9
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB4_9:                                # %if.end.11
	movabsq	$.L.str.25, %rsi
	movq	-24(%rbp), %rdi
	callq	strstr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_11
# BB#10:                                # %if.then.14
	movabsq	$.L.str.26, %rsi
	movq	-24(%rbp), %rdi
	callq	strstr
	movq	%rax, -32(%rbp)
.LBB4_11:                               # %if.end.16
	cmpq	$0, -32(%rbp)
	je	.LBB4_14
# BB#12:                                # %land.lhs.true.18
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$-3, %rcx
	movq	-40(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB4_14
# BB#13:                                # %if.then.24
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.LBB4_14:                               # %if.end.25
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	script_fu_script_get_title, .Lfunc_end4-script_fu_script_get_title
	.cfi_endproc

	.globl	script_fu_script_reset
	.align	16, 0x90
	.type	script_fu_script_reset,@function
script_fu_script_reset:                 # @script_fu_script_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_reset, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movl	$0, -16(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB5_25
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	leaq	72(%rcx,%rax), %rax
	movq	%rax, -24(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	leaq	16(%rcx,%rax), %rax
	movq	%rax, -32(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$20, %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	ja	.LBB5_23
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_8:                                # %sw.bb
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB5_10:                               # %if.end.12
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_23
.LBB5_11:                               # %sw.bb.13
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB5_23
.LBB5_12:                               # %sw.bb.15
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB5_23
.LBB5_13:                               # %sw.bb.17
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_23
.LBB5_14:                               # %sw.bb.20
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB5_23
.LBB5_15:                               # %sw.bb.24
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_23
.LBB5_16:                               # %sw.bb.30
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_23
.LBB5_17:                               # %sw.bb.34
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_23
.LBB5_18:                               # %sw.bb.38
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_23
.LBB5_19:                               # %sw.bb.42
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_23
.LBB5_20:                               # %sw.bb.46
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 20(%rax)
	jmp	.LBB5_23
.LBB5_21:                               # %sw.bb.61
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB5_23
.LBB5_22:                               # %sw.bb.64
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB5_23:                               # %sw.epilog
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_24
.LBB5_24:                               # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_6
.LBB5_25:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	script_fu_script_reset, .Lfunc_end5-script_fu_script_reset
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_11
	.quad	.LBB5_12
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_16
	.quad	.LBB5_18
	.quad	.LBB5_20
	.quad	.LBB5_19
	.quad	.LBB5_15
	.quad	.LBB5_15
	.quad	.LBB5_21
	.quad	.LBB5_17
	.quad	.LBB5_13
	.quad	.LBB5_22
	.quad	.LBB5_8

	.text
	.globl	script_fu_script_collect_standard_args
	.align	16, 0x90
	.type	script_fu_script_collect_standard_args,@function
script_fu_script_collect_standard_args: # @script_fu_script_collect_standard_args
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_collect_standard_args, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_15
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movl	$20, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	script_fu_script_param_init
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %if.then.1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end.2
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	script_fu_script_param_init
	cmpl	$0, %eax
	je	.LBB6_14
# BB#8:                                 # %if.then.5
	movl	$1, %ecx
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	script_fu_script_param_init
	cmpl	$0, %eax
	jne	.LBB6_12
# BB#9:                                 # %lor.lhs.false
	movl	$2, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	script_fu_script_param_init
	cmpl	$0, %eax
	jne	.LBB6_12
# BB#10:                                # %lor.lhs.false.11
	movl	$3, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	script_fu_script_param_init
	cmpl	$0, %eax
	jne	.LBB6_12
# BB#11:                                # %lor.lhs.false.14
	movl	$4, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	callq	script_fu_script_param_init
	cmpl	$0, %eax
	je	.LBB6_13
.LBB6_12:                               # %if.then.17
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB6_13:                               # %if.end.19
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.20
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	script_fu_script_collect_standard_args, .Lfunc_end6-script_fu_script_collect_standard_args
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_script_param_init,@function
script_fu_script_param_init:            # @script_fu_script_param_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movslq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	shlq	$7, %rdx
	addq	64(%rdi), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movl	56(%rdx), %ecx
	cmpl	-40(%rbp), %ecx
	jle	.LBB7_24
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB7_24
# BB#2:                                 # %land.lhs.true.3
	movl	-20(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB7_24
# BB#3:                                 # %if.then
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB7_4
	jmp	.LBB7_26
.LBB7_26:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB7_7
	jmp	.LBB7_27
.LBB7_27:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB7_10
	jmp	.LBB7_28
.LBB7_28:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_29
.LBB7_29:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB7_16
	jmp	.LBB7_30
.LBB7_30:                               # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$20, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB7_19
	jmp	.LBB7_22
.LBB7_4:                                # %sw.bb
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	$13, (%rcx)
	jne	.LBB7_6
# BB#5:                                 # %if.then.10
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB7_25
.LBB7_6:                                # %if.end
	jmp	.LBB7_23
.LBB7_7:                                # %sw.bb.14
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	$16, (%rcx)
	jne	.LBB7_9
# BB#8:                                 # %if.then.20
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB7_25
.LBB7_9:                                # %if.end.26
	jmp	.LBB7_23
.LBB7_10:                               # %sw.bb.27
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	$14, (%rcx)
	jne	.LBB7_12
# BB#11:                                # %if.then.33
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB7_25
.LBB7_12:                               # %if.end.39
	jmp	.LBB7_23
.LBB7_13:                               # %sw.bb.40
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	$15, (%rcx)
	jne	.LBB7_15
# BB#14:                                # %if.then.46
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB7_25
.LBB7_15:                               # %if.end.52
	jmp	.LBB7_23
.LBB7_16:                               # %sw.bb.53
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	$19, (%rcx)
	jne	.LBB7_18
# BB#17:                                # %if.then.59
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB7_25
.LBB7_18:                               # %if.end.65
	jmp	.LBB7_23
.LBB7_19:                               # %sw.bb.66
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	$12, (%rcx)
	jne	.LBB7_21
# BB#20:                                # %if.then.72
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB7_25
.LBB7_21:                               # %if.end.78
	jmp	.LBB7_23
.LBB7_22:                               # %sw.default
	jmp	.LBB7_23
.LBB7_23:                               # %sw.epilog
	jmp	.LBB7_24
.LBB7_24:                               # %if.end.79
	movl	$0, -4(%rbp)
.LBB7_25:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	script_fu_script_param_init, .Lfunc_end7-script_fu_script_param_init
	.cfi_endproc

	.globl	script_fu_script_get_command
	.align	16, 0x90
	.type	script_fu_script_get_command,@function
script_fu_script_get_command:           # @script_fu_script_get_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_get_command, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_25
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movabsq	$.L.str.27, %rdi
	callq	g_string_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_string_append
	movl	$0, -28(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB8_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB8_24
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB8_6 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	leaq	72(%rcx,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$32, %esi
	callq	g_string_append_c_inline
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	64(%rdi), %rdi
	shlq	$7, %rcx
	movl	(%rdi,%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, %rdi
	subq	$20, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	ja	.LBB8_22
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_8:                                # %sw.bb
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_9:                                # %sw.bb.7
                                        #   in Loop: Header=BB8_6 Depth=1
	leaq	-41(%rbp), %rsi
	leaq	-42(%rbp), %rdx
	leaq	-43(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.29, %rsi
	movq	-24(%rbp), %rdi
	movzbl	-41(%rbp), %edx
	movzbl	-42(%rbp), %ecx
	movzbl	-43(%rbp), %r8d
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_10:                               # %sw.bb.10
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.30, %rcx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	cmpl	$0, (%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB8_22
.LBB8_11:                               # %sw.bb.12
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_string_append
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB8_22
.LBB8_12:                               # %sw.bb.14
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	script_fu_strescape
	movabsq	$.L.str.32, %rsi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_22
.LBB8_13:                               # %sw.bb.17
                                        #   in Loop: Header=BB8_6 Depth=1
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB8_22
.LBB8_14:                               # %sw.bb.23
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	script_fu_strescape
	movabsq	$.L.str.32, %rsi
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-104(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_22
.LBB8_15:                               # %sw.bb.27
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_16:                               # %sw.bb.28
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_17:                               # %sw.bb.29
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_18:                               # %sw.bb.30
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_19:                               # %sw.bb.31
                                        #   in Loop: Header=BB8_6 Depth=1
	movl	$39, %esi
	leaq	-144(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	movabsq	$.L.str.33, %rsi
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-40(%rbp), %r8
	movl	16(%r8), %r8d
	movq	-40(%rbp), %r9
	movl	20(%r9), %r9d
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_20:                               # %sw.bb.41
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB8_22
.LBB8_21:                               # %sw.bb.42
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
.LBB8_22:                               # %sw.epilog
                                        #   in Loop: Header=BB8_6 Depth=1
	jmp	.LBB8_23
.LBB8_23:                               # %for.inc
                                        #   in Loop: Header=BB8_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB8_6
.LBB8_24:                               # %for.end
	movl	$41, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_append_c_inline
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_string_free
	movq	%rax, -8(%rbp)
.LBB8_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	script_fu_script_get_command, .Lfunc_end8-script_fu_script_get_command
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_8
	.quad	.LBB8_8
	.quad	.LBB8_8
	.quad	.LBB8_8
	.quad	.LBB8_8
	.quad	.LBB8_9
	.quad	.LBB8_10
	.quad	.LBB8_11
	.quad	.LBB8_12
	.quad	.LBB8_13
	.quad	.LBB8_15
	.quad	.LBB8_17
	.quad	.LBB8_19
	.quad	.LBB8_18
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_20
	.quad	.LBB8_16
	.quad	.LBB8_12
	.quad	.LBB8_21
	.quad	.LBB8_8

	.text
	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB9_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_string_append_c_inline, .Lfunc_end9-g_string_append_c_inline
	.cfi_endproc

	.globl	script_fu_script_get_command_from_params
	.align	16, 0x90
	.type	script_fu_script_get_command_from_params,@function
script_fu_script_get_command_from_params: # @script_fu_script_get_command_from_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_script_get_command_from_params, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_19
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movabsq	$.L.str.27, %rdi
	callq	g_string_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_string_append
	movl	$0, -36(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB10_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB10_18
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-36(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	$32, %esi
	callq	g_string_append_c_inline
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	64(%rdx), %rdx
	shlq	$7, %rcx
	movl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, %rdx
	subq	$20, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	ja	.LBB10_16
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_8:                               # %sw.bb
                                        #   in Loop: Header=BB10_6 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB10_16
.LBB10_9:                               # %sw.bb.6
                                        #   in Loop: Header=BB10_6 Depth=1
	leaq	-49(%rbp), %rsi
	leaq	-50(%rbp), %rdx
	leaq	-51(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.29, %rsi
	movq	-32(%rbp), %rdi
	movzbl	-49(%rbp), %edx
	movzbl	-50(%rbp), %ecx
	movzbl	-51(%rbp), %r8d
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB10_16
.LBB10_10:                              # %sw.bb.10
                                        #   in Loop: Header=BB10_6 Depth=1
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.30, %rcx
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB10_16
.LBB10_11:                              # %sw.bb.13
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_string_append
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB10_16
.LBB10_12:                              # %sw.bb.16
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	script_fu_strescape
	movabsq	$.L.str.32, %rsi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB10_16
.LBB10_13:                              # %sw.bb.20
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	$39, %esi
	leaq	-112(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_16
.LBB10_14:                              # %sw.bb.26
                                        #   in Loop: Header=BB10_6 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB10_16
.LBB10_15:                              # %sw.bb.29
                                        #   in Loop: Header=BB10_6 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
.LBB10_16:                              # %sw.epilog
                                        #   in Loop: Header=BB10_6 Depth=1
	jmp	.LBB10_17
.LBB10_17:                              # %for.inc
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_6
.LBB10_18:                              # %for.end
	movl	$41, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_append_c_inline
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_string_free
	movq	%rax, -8(%rbp)
.LBB10_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	script_fu_script_get_command_from_params, .Lfunc_end10-script_fu_script_get_command_from_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_8
	.quad	.LBB10_8
	.quad	.LBB10_8
	.quad	.LBB10_8
	.quad	.LBB10_8
	.quad	.LBB10_9
	.quad	.LBB10_10
	.quad	.LBB10_11
	.quad	.LBB10_12
	.quad	.LBB10_13
	.quad	.LBB10_14
	.quad	.LBB10_14
	.quad	.LBB10_14
	.quad	.LBB10_14
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_15
	.quad	.LBB10_14
	.quad	.LBB10_12
	.quad	.LBB10_15
	.quad	.LBB10_8

	.type	.L__func__.script_fu_script_free,@object # @__func__.script_fu_script_free
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.script_fu_script_free:
	.asciz	"script_fu_script_free"
	.size	.L__func__.script_fu_script_free, 22

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"script != NULL"
	.size	.L.str, 15

	.type	.L__func__.script_fu_script_install_proc,@object # @__func__.script_fu_script_install_proc
.L__func__.script_fu_script_install_proc:
	.asciz	"script_fu_script_install_proc"
	.size	.L__func__.script_fu_script_install_proc, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"run_proc != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<None>"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"run-mode"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"drawable"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"layer"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"channel"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vectors"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"display"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"color"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"toggle"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"value"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"string"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"filename"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dirname"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"font"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"palette"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pattern"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"brush"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gradient"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"option"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"enum"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L__func__.script_fu_script_uninstall_proc,@object # @__func__.script_fu_script_uninstall_proc
.L__func__.script_fu_script_uninstall_proc:
	.asciz	"script_fu_script_uninstall_proc"
	.size	.L__func__.script_fu_script_uninstall_proc, 32

	.type	.L__func__.script_fu_script_get_title,@object # @__func__.script_fu_script_get_title
.L__func__.script_fu_script_get_title:
	.asciz	"script_fu_script_get_title"
	.size	.L__func__.script_fu_script_get_title, 27

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"..."
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\342\200\246"
	.size	.L.str.26, 4

	.type	.L__func__.script_fu_script_reset,@object # @__func__.script_fu_script_reset
.L__func__.script_fu_script_reset:
	.asciz	"script_fu_script_reset"
	.size	.L__func__.script_fu_script_reset, 23

	.type	.L__func__.script_fu_script_collect_standard_args,@object # @__func__.script_fu_script_collect_standard_args
.L__func__.script_fu_script_collect_standard_args:
	.asciz	"script_fu_script_collect_standard_args"
	.size	.L__func__.script_fu_script_collect_standard_args, 39

	.type	.L__func__.script_fu_script_get_command,@object # @__func__.script_fu_script_get_command
.L__func__.script_fu_script_get_command:
	.asciz	"script_fu_script_get_command"
	.size	.L__func__.script_fu_script_get_command, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"("
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%d"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"'(%d %d %d)"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"TRUE"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"FALSE"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\"%s\""
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"'(\"%s\" %s %d %d)"
	.size	.L.str.33, 17

	.type	.L__func__.script_fu_script_get_command_from_params,@object # @__func__.script_fu_script_get_command_from_params
.L__func__.script_fu_script_get_command_from_params:
	.asciz	"script_fu_script_get_command_from_params"
	.size	.L__func__.script_fu_script_get_command_from_params, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
