	.text
	.file	"selection-to-path-dialog.bc"
	.globl	reset_adv_dialog
	.align	16, 0x90
	.type	reset_adv_dialog,@function
reset_adv_dialog:                       # @reset_adv_dialog
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
	subq	$112, %rsp
	movq	adjust_widgets, %rax
	movq	%rax, -8(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB0_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_adjustment_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB0_9
.LBB0_4:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.9
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.11
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	jmp	.LBB0_22
.LBB0_11:                               # %if.else.16
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_toggle_button_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_13
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB0_18
.LBB0_13:                               # %if.else.26
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_16
# BB#14:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_16
# BB#15:                                # %if.then.33
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.34
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_17:                               # %if.end.36
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.37
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.40
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvttsd2si	(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.43
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	g_warning
.LBB0_21:                               # %if.end.44
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               # %if.end.45
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB0_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_26
.LBB0_25:                               # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_26
.LBB0_26:                               # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_27:                               # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	reset_adv_dialog, .Lfunc_end0-reset_adv_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB1_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4613937818241073152     # double 3
.LCPI2_1:
	.quad	4611686018427387904     # double 2
.LCPI2_2:
	.quad	4621819117588971520     # double 10
.LCPI2_3:
	.quad	4607182418800017408     # double 1
.LCPI2_4:
	.quad	4584304132692975288     # double 0.029999999999999999
.LCPI2_5:
	.quad	4576918229304087675     # double 0.01
.LCPI2_6:
	.quad	4616189618054758400     # double 4
.LCPI2_7:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI2_8:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI2_9:
	.quad	4632233691727265792     # double 50
.LCPI2_10:
	.quad	4602678819172646912     # double 0.5
.LCPI2_11:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI2_12:
	.quad	4599616371426034975     # double 0.33000000000000002
.LCPI2_13:
	.quad	4634626229029306368     # double 70
.LCPI2_14:
	.quad	4617315517961601024     # double 5
.LCPI2_15:
	.quad	4630826316843712512     # double 40
.LCPI2_16:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI2_17:
	.quad	4636737291354636288     # double 100
.LCPI2_18:
	.quad	4640537203540230144     # double 180
.LCPI2_19:
	.quad	4620693217682128896     # double 8
.LCPI2_20:
	.quad	4633641066610819072     # double 60
.LCPI2_21:
	.quad	4629137466983448576     # double 30
	.text
	.globl	dialog_create_selection_area
	.align	16, 0x90
	.type	dialog_create_selection_area,@function
dialog_create_selection_area:           # @dialog_create_selection_area
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
	pushq	%r12
	pushq	%rbx
	subq	$1504, %rsp             # imm = 0x5E0
.Ltmp9:
	.cfi_offset %rbx, -48
.Ltmp10:
	.cfi_offset %r12, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
	movl	$20, %eax
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rdi, -40(%rbp)
	movl	%eax, %edi
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movl	$0, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.2, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_11, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_7, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.3, %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %r15
	movsd	(%r15), %xmm4           # xmm4 = mem[0],zero
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-120(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -128(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-128(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-128(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_10, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.5, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_21, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI2_18, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.6, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	8(%rbx), %xmm4          # xmm4 = mem[0],zero
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-200(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -208(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-208(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-208(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -212(%rbp)       # 4-byte Spill
	movl	%r10d, -216(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_20, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.7, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_19, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.8, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	16(%rbx), %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-272(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -280(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-280(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-280(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -284(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_6, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.9, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_18, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	movabsq	$.L.str.10, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	24(%rbx), %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-344(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-352(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-352(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-344(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-344(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -356(%rbp)       # 4-byte Spill
	movl	%r10d, -360(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_17, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.11, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_11, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_7, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.12, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	32(%rbx), %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-416(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -424(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -428(%rbp)       # 4-byte Spill
	movl	%r10d, -432(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$32, %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_16, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.13, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	movabsq	$.L.str.14, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	40(%rbx), %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-488(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -496(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-488(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-496(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-496(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -500(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$40, %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.15, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_14, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI2_15, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.16, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	48(%rbx), %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-560(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -568(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-568(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -572(%rbp)       # 4-byte Spill
	movl	%r10d, -576(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.17, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_13, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.18, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	56(%rbx), %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-632(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -640(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-640(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-640(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -644(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$56, %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_6, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.19, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_8, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	movabsq	$.L.str.20, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	64(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-704(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-704(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-704(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -708(%rbp)       # 4-byte Spill
	movl	%r10d, -712(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$64, %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_12, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.21, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.22, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	72(%rbx), %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-768(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -776(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-776(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-776(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -780(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$72, %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.23, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.24, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	80(%rbx), %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-840(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -848(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-848(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-848(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -852(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$80, %rdi
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.25, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movl	88(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %ecx
	movl	$5, %r9d
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rsi
	movl	-68(%rbp), %r8d
	movl	-68(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r9d, -900(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -904(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	addq	$88, %rdi
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	adjust_widgets, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movl	-68(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.28, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_11, %xmm2        # xmm2 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	movabsq	$.L.str.29, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	96(%rbx), %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -968(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-968(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -976(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-968(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-976(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-976(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -980(%rbp)       # 4-byte Spill
	movl	%r10d, -984(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$96, %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-992(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_5, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.30, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_11, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI2_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.31, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	104(%rbx), %xmm5        # xmm5 = mem[0],zero
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -1040(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1040(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1040(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1044(%rbp)      # 4-byte Spill
	movl	%r10d, -1048(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$104, %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_10, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.32, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_8, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	movabsq	$.L.str.33, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	112(%rbx), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -1104(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1104(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1104(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1104(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1108(%rbp)      # 4-byte Spill
	movl	%r10d, -1112(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$112, %rdi
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_5, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.34, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_10, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.35, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	120(%rbx), %xmm4        # xmm4 = mem[0],zero
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -1168(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-1168(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -1176(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1176(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1176(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1180(%rbp)      # 4-byte Spill
	movl	%r10d, -1184(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$120, %rdi
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.36, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_8, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	movabsq	$.L.str.37, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	128(%rbx), %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1232(%rbp)       # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -1240(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-1240(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -1248(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1248(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1248(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1252(%rbp)      # 4-byte Spill
	movl	%r11d, -1256(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$128, %rdi
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_7, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.38, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.39, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	136(%rbx), %xmm4        # xmm4 = mem[0],zero
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -1312(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-1312(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -1320(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1320(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1320(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1304(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1324(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$136, %rdi
	movq	%rdi, -1336(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_6, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.40, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm2         # xmm2 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	movabsq	$.L.str.41, %rdx
	xorl	%r14d, %r14d
	movl	%r14d, %edi
	movl	-68(%rbp), %r14d
	movl	%r14d, %r12d
	addl	$1, %r12d
	movl	%r12d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	144(%rbx), %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1376(%rbp)       # 8-byte Spill
	movl	%r14d, %edx
	movsd	%xmm0, -1384(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-1384(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -1392(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-1384(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1392(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1392(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1396(%rbp)      # 4-byte Spill
	movl	%r10d, -1400(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$144, %rdi
	movq	%rdi, -1408(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$.L.str.42, %rcx
	movl	$100, %r8d
	movl	$8, %r9d
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm3, %xmm3
	movabsq	$.L.str.43, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movl	-68(%rbp), %r11d
	movl	%r11d, %r14d
	addl	$1, %r14d
	movl	%r14d, -68(%rbp)
	movq	-40(%rbp), %rbx
	movsd	152(%rbx), %xmm4        # xmm4 = mem[0],zero
	movq	%rdi, -1440(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1448(%rbp)       # 8-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -1456(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-1456(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -1464(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1464(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1464(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1468(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$152, %rdi
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1480(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	adjust_widgets, %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	g_slist_append
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, adjust_widgets
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	def_val
	movabsq	$.L.str, %rsi
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	addq	$1504, %rsp             # imm = 0x5E0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dialog_create_selection_area, .Lfunc_end2-dialog_create_selection_area
	.cfi_endproc

	.align	16, 0x90
	.type	def_val,@function
def_val:                                # @def_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	movsd	%xmm0, -8(%rbp)
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	def_val, .Lfunc_end3-def_val
	.cfi_endproc

	.type	adjust_widgets,@object  # @adjust_widgets
	.local	adjust_widgets
	.comm	adjust_widgets,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default_value"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Internal widget list error"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Align Threshold:"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"If two endpoints are closer than this,they are made to be equal."
	.size	.L.str.3, 65

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"value-changed"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Corner Always Threshold:"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"If the angle defined by a point and its predecessors and successors is smaller than this, it's a corner, even if it's within `corner_surround' pixels of a point with a smaller angle."
	.size	.L.str.6, 183

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Corner Surround:"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Number of points to consider when determining if a point is a corner or not."
	.size	.L.str.8, 77

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Corner Threshold:"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"If a point, its predecessors, and its successors define an angle smaller than this, it's a corner."
	.size	.L.str.10, 99

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Error Threshold:"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Amount of error at which a fitted spline is unacceptable.  If any pixel is further away than this from the fitted curve, we try again."
	.size	.L.str.12, 135

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Filter Alternative Surround:"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"A second number of adjacent points to consider when filtering."
	.size	.L.str.14, 63

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Filter Epsilon:"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"If the angles between the vectors produced by filter_surround and filter_alternative_surround points differ by more than this, use the one from filter_alternative_surround."
	.size	.L.str.16, 173

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Filter Iteration Count:"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Number of times to smooth original data points.  Increasing this number dramatically --- to 50 or so --- can produce vastly better results.  But if any points that ``should'' be corners aren't found, the curve goes to hell around that point."
	.size	.L.str.18, 242

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Filter Percent:"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"To produce the new point, use the old point plus this times the neighbors."
	.size	.L.str.20, 75

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Filter Secondary Surround:"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Number of adjacent points to consider if `filter_surround' points defines a straight line."
	.size	.L.str.22, 91

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Filter Surround:"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Number of adjacent points to consider when filtering."
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Keep Knees"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Says whether or not to remove ``knee'' points after finding the outline."
	.size	.L.str.26, 73

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"toggled"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Line Reversion Threshold:"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"If a spline is closer to a straight line than this, it remains a straight line, even if it would otherwise be changed back to a curve. This is weighted by the square of the curve length, to make shorter curves more likely to be reverted."
	.size	.L.str.29, 238

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Line Threshold:"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"How many pixels (on the average) a spline can diverge from the line determined by its endpoints before it is changed to a straight line."
	.size	.L.str.31, 137

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Reparametrize Improvement:"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"If reparameterization doesn't improve the fit by this much percent, stop doing it. Amount of error at which it is pointless to reparameterize."
	.size	.L.str.33, 143

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Reparametrize Threshold:"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Amount of error at which it is pointless to reparameterize.  This happens, for example, when we are trying to fit the outline of the outside of an `O' with a single spline.  The initial fit is not good enough for the Newton-Raphson iteration to improve it.  It may be that it would be better to detect the cases where we didn't find any corners."
	.size	.L.str.35, 346

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Subdivide Search:"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Percentage of the curve away from the worst point to look for a better place to subdivide."
	.size	.L.str.37, 91

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Subdivide Surround:"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Number of points to consider when deciding whether a given point is a better place to subdivide."
	.size	.L.str.39, 97

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Subdivide Threshold:"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"How many pixels a point can diverge from a straight line and still be considered a better place to subdivide."
	.size	.L.str.41, 110

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Tangent Surround:"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Number of points to look at on either side of a point when computing the approximation to the tangent at that point."
	.size	.L.str.43, 117


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
