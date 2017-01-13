	.text
	.file	"gimpgradient-save.bc"
	.globl	gimp_gradient_save
	.align	16, 0x90
	.type	gimp_gradient_save,@function
gimp_gradient_save:                     # @gimp_gradient_save
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
	subq	$792, %rsp              # imm = 0x318
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_data_get_filename
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	fopen
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.1, %rdi
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gimp_data_get_filename
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movl	-548(%rbp), %esi        # 4-byte Reload
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movq	-568(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -44(%rbp)
	jmp	.LBB0_10
.LBB0_2:                                # %if.end
	movabsq	$.L.str.2, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.3, %rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$0, -84(%rbp)
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -80(%rbp)
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB0_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB0_3
.LBB0_5:                                # %while.end
	movabsq	$.L.str.4, %rsi
	movq	-96(%rbp), %rdi
	movl	-84(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movq	-72(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rdi
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rdi
	addq	$39, %rdi
	movq	-80(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$78, %rcx
	movq	-80(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$117, %rcx
	movq	-80(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$156, %rcx
	movq	-80(%rbp), %rdi
	movsd	40(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$195, %rcx
	movq	-80(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$234, %rcx
	movq	-80(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$273, %rcx              # imm = 0x111
	movq	-80(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	-80(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$351, %rcx              # imm = 0x15F
	movq	-80(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-528(%rbp), %rcx
	addq	$390, %rcx              # imm = 0x186
	movq	-80(%rbp), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.6, %rsi
	leaq	-528(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rcx, %r9
	addq	$117, %r9
	movq	%rcx, %r10
	addq	$156, %r10
	movq	%rcx, %r11
	addq	$195, %r11
	movq	%rcx, %rbx
	addq	$234, %rbx
	movq	%rcx, %r14
	addq	$273, %r14              # imm = 0x111
	movq	%rcx, %r15
	addq	$312, %r15              # imm = 0x138
	movq	%rcx, %r12
	addq	$351, %r12              # imm = 0x15F
	movq	%rcx, %r13
	addq	$390, %r13              # imm = 0x186
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax
	movl	104(%rax), %eax
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rcx
	movl	108(%rcx), %ecx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rdx
	movl	24(%rdx), %edx
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rsi
	movl	64(%rsi), %esi
	movl	%esi, -708(%rbp)        # 4-byte Spill
	movq	-704(%rbp), %rsi        # 8-byte Reload
	movq	%r8, -720(%rbp)         # 8-byte Spill
	movq	-688(%rbp), %r8         # 8-byte Reload
	movl	%edx, -724(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	-696(%rbp), %r8         # 8-byte Reload
	movl	%ecx, -728(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	-720(%rbp), %r8         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	%r13, 48(%rsp)
	movl	%eax, 56(%rsp)
	movl	-728(%rbp), %eax        # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, 72(%rsp)
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -732(%rbp)        # 4-byte Spill
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                # %for.end
	movq	-96(%rbp), %rdi
	callq	fclose
	movl	$1, -44(%rbp)
	movl	%eax, -736(%rbp)        # 4-byte Spill
.LBB0_10:                               # %return
	movl	-44(%rbp), %eax
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradient_save, .Lfunc_end0-gimp_gradient_save
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_gradient_save_pov
	.align	16, 0x90
	.type	gimp_gradient_save_pov,@function
gimp_gradient_save_pov:                 # @gimp_gradient_save_pov
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -276(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -276(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_gradient_save_pov, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_31
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_gradient_save_pov, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_31
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB1_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_21
.LBB1_20:                               # %if.then.20
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.21
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_gradient_save_pov, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_31
.LBB1_22:                               # %if.end.22
	jmp	.LBB1_23
.LBB1_23:                               # %do.end.23
	movabsq	$.L.str, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.26
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.1, %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_31
.LBB1_25:                               # %if.else.32
	movabsq	$.L.str.11, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.12, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.13, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB1_26:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_29
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB1_26 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-256(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-256(%rbp), %rcx
	addq	$39, %rcx
	movq	-48(%rbp), %rdi
	movsd	40(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-256(%rbp), %rcx
	addq	$78, %rcx
	movq	-48(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-256(%rbp), %rcx
	addq	$117, %rcx
	movq	-48(%rbp), %rdi
	subsd	56(%rdi), %xmm0
	movq	%rcx, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.14, %rsi
	leaq	-256(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rcx, %r8
	addq	$39, %r8
	movq	%rcx, %r9
	addq	$78, %r9
	movq	%rcx, %r10
	addq	$117, %r10
	movq	%r10, (%rsp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	leaq	-256(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rcx
	addsd	72(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	leaq	-256(%rbp), %rcx
	addq	$39, %rcx
	movq	-48(%rbp), %rdi
	movsd	40(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rdi
	addsd	80(%rdi), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	leaq	-256(%rbp), %rcx
	addq	$78, %rcx
	movq	-48(%rbp), %rdi
	movsd	48(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rdi
	addsd	88(%rdi), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	leaq	-256(%rbp), %rcx
	addq	$117, %rcx
	movq	-48(%rbp), %rdi
	movsd	56(%rdi), %xmm2         # xmm2 = mem[0],zero
	movq	-48(%rbp), %rdi
	addsd	96(%rdi), %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	movq	%rcx, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.14, %rsi
	leaq	-256(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rcx, %r8
	addq	$39, %r8
	movq	%rcx, %r9
	addq	$78, %r9
	movq	%rcx, %r10
	addq	$117, %r10
	movq	%r10, (%rsp)
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-256(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-256(%rbp), %rcx
	addq	$39, %rcx
	movq	-48(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	leaq	-256(%rbp), %rcx
	addq	$78, %rcx
	movq	-48(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-256(%rbp), %rcx
	addq	$117, %rcx
	movq	-48(%rbp), %rdi
	subsd	96(%rdi), %xmm0
	movq	%rcx, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.14, %rsi
	leaq	-256(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rcx, %r8
	addq	$39, %r8
	movq	%rcx, %r9
	addq	$78, %r9
	movq	%rcx, %r10
	addq	$117, %r10
	movq	%r10, (%rsp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -468(%rbp)        # 4-byte Spill
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB1_26 Depth=1
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_26
.LBB1_29:                               # %for.end
	movabsq	$.L.str.15, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movl	%eax, -472(%rbp)        # 4-byte Spill
	callq	fclose
	movl	%eax, -476(%rbp)        # 4-byte Spill
# BB#30:                                # %if.end.143
	movl	$1, -4(%rbp)
.LBB1_31:                               # %return
	movl	-4(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradient_save_pov, .Lfunc_end1-gimp_gradient_save_pov
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP Gradient\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Name: %s\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%f"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s %s %s %s %s %s %s %s %s %s %s %d %d %d %d\n"
	.size	.L.str.6, 46

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Core"
	.size	.L.str.7, 10

	.type	.L__func__.gimp_gradient_save_pov,@object # @__func__.gimp_gradient_save_pov
.L__func__.gimp_gradient_save_pov:
	.asciz	"gimp_gradient_save_pov"
	.size	.L__func__.gimp_gradient_save_pov, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_GRADIENT (gradient)"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"filename != NULL"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/* color_map file created by GIMP */\n"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/* http://www.gimp.org/           */\n"
	.size	.L.str.12, 38

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"color_map {\n"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t[%s color rgbt <%s, %s, %s, %s>]\n"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"} /* color_map */\n"
	.size	.L.str.15, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
