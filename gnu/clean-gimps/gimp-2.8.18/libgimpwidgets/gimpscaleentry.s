	.text
	.file	"gimpscaleentry.bc"
	.globl	gimp_scale_entry_new
	.align	16, 0x90
	.type	gimp_scale_entry_new,@function
gimp_scale_entry_new:                   # @gimp_scale_entry_new
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
	subq	$168, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	xorl	%r14d, %r14d
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm2, -80(%rbp)
	movsd	%xmm3, -88(%rbp)
	movsd	%xmm4, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movl	%r11d, -104(%rbp)
	movsd	%xmm5, -112(%rbp)
	movsd	%xmm6, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r11d
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	-100(%rbp), %ebx
	movl	-104(%rbp), %r15d
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # xmm6 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%r14d, %edi
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r15d, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	gimp_scale_entry_new_internal
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scale_entry_new, .Lfunc_end0-gimp_scale_entry_new
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_scale_entry_new_internal,@function
gimp_scale_entry_new_internal:          # @gimp_scale_entry_new_internal
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
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%r14d, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm2, -80(%rbp)
	movsd	%xmm3, -88(%rbp)
	movsd	%xmm4, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movl	%r11d, -104(%rbp)
	movsd	%xmm5, -112(%rbp)
	movsd	%xmm6, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %ecx
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movl	-36(%rbp), %r9d
	movl	-36(%rbp), %r11d
	addl	$1, %r11d
	movl	-40(%rbp), %r8d
	movl	-40(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show@PLT
	cmpl	$0, -104(%rbp)
	jne	.LBB1_4
# BB#1:                                 # %land.lhs.true
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_4
# BB#2:                                 # %land.lhs.true.6
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jb	.LBB1_4
# BB#3:                                 # %if.then
	xorps	%xmm5, %xmm5
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new@PLT
	leaq	-168(%rbp), %rdi
	xorps	%xmm5, %xmm5
	movq	%rax, -184(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	-100(%rbp), %esi
	callq	gimp_spin_button_new@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -160(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rdx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-168(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-168(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	leaq	-168(%rbp), %rdi
	xorps	%xmm5, %xmm5
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	-100(%rbp), %esi
	callq	gimp_spin_button_new@PLT
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB1_5:                                # %if.end
	movq	-144(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	cmpl	$0, -56(%rbp)
	jle	.LBB1_10
# BB#6:                                 # %if.then.18
	cmpl	$17, -56(%rbp)
	jge	.LBB1_8
# BB#7:                                 # %if.then.20
	movq	-160(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-56(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars@PLT
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.23
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-160(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	gtk_widget_set_size_request@PLT
.LBB1_9:                                # %if.end.24
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.25
	cmpl	$0, -20(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.27
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gimp_color_scale_new@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-168(%rbp), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_range_set_adjustment@PLT
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.33
	movq	-168(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	gtk_scale_new@PLT
	movq	%rax, -152(%rbp)
.LBB1_13:                               # %if.end.37
	cmpl	$0, -52(%rbp)
	jle	.LBB1_15
# BB#14:                                # %if.then.39
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-152(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gtk_widget_set_size_request@PLT
.LBB1_15:                               # %if.end.40
	movq	-152(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits@PLT
	movq	-152(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$5, %ecx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movl	-36(%rbp), %r9d
	addl	$1, %r9d
	movl	-36(%rbp), %r10d
	addl	$2, %r10d
	movl	-40(%rbp), %r11d
	movl	-40(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -332(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movl	-36(%rbp), %r9d
	addl	$2, %r9d
	movl	-36(%rbp), %r10d
	addl	$3, %r10d
	movl	-40(%rbp), %r11d
	movl	-40(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -356(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show@PLT
	cmpq	$0, -128(%rbp)
	jne	.LBB1_17
# BB#16:                                # %lor.lhs.false
	cmpq	$0, -136(%rbp)
	je	.LBB1_18
.LBB1_17:                               # %if.then.57
	movq	-144(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	gimp_help_set_help_data@PLT
	movq	-152(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	gimp_help_set_help_data@PLT
	movq	-160(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	gimp_help_set_help_data@PLT
.LBB1_18:                               # %if.end.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	-176(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	-144(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	-152(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	-160(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movq	-176(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scale_entry_new_internal, .Lfunc_end1-gimp_scale_entry_new_internal
	.cfi_endproc

	.globl	gimp_color_scale_entry_new
	.align	16, 0x90
	.type	gimp_color_scale_entry_new,@function
gimp_color_scale_entry_new:             # @gimp_color_scale_entry_new
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
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movl	$1, %ebx
	xorps	%xmm5, %xmm5
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm2, -72(%rbp)
	movsd	%xmm3, -80(%rbp)
	movsd	%xmm4, -88(%rbp)
	movl	%r11d, -92(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r11d
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	-92(%rbp), %r14d
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movl	%r11d, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	$1, 16(%rsp)
	movsd	%xmm5, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	gimp_scale_entry_new_internal
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_scale_entry_new, .Lfunc_end2-gimp_color_scale_entry_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	-4631501856787818086    # double -0.10000000000000001
.LCPI3_1:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	gimp_scale_entry_set_logarithmic
	.align	16, 0x90
	.type	gimp_scale_entry_set_logarithmic,@function
gimp_scale_entry_set_logarithmic:       # @gimp_scale_entry_set_logarithmic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_adjustment_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scale_entry_set_logarithmic(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_get_logarithmic@PLT
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB3_14
# BB#13:                                # %if.then.20
	jmp	.LBB3_25
.LBB3_14:                               # %if.end.21
	cmpl	$0, -12(%rbp)
	je	.LBB3_22
# BB#15:                                # %if.then.23
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_17
# BB#16:                                # %cond.true
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	movd	%rdi, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
.LBB3_18:                               # %cond.end
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	addsd	-64(%rbp), %xmm0
	callq	log@PLT
	movsd	%xmm0, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	addsd	-64(%rbp), %xmm0
	callq	log@PLT
	movsd	%xmm0, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	addsd	-64(%rbp), %xmm0
	callq	log@PLT
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-32(%rbp), %rdi
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_step_increment@PLT
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-32(%rbp), %rdi
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_increment@PLT
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	-24(%rbp), %rdi
	jne	.LBB3_20
# BB#19:                                # %if.then.56
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_step_increment@PLT
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_increment@PLT
	xorps	%xmm5, %xmm5
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-240(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-248(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-112(%rbp), %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_range_set_adjustment@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.70
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r9, -288(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rdi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-296(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB3_21:                               # %if.end.73
	xorps	%xmm5, %xmm5
	movq	-32(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_scale_entry_exp_adjustment_callback(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_scale_entry_log_adjustment_callback(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movl	$1, %r9d
	movl	%r9d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	jmp	.LBB3_25
.LBB3_22:                               # %if.else.77
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_scale_entry_log_adjustment_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r9, -360(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-360(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_scale_entry_exp_adjustment_callback(%rip), %rdi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-368(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched@PLT
	movq	-32(%rbp), %rdi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	callq	exp@PLT
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	callq	exp@PLT
	movsd	%xmm0, -128(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_24
# BB#23:                                # %if.then.88
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	-120(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	-128(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
.LBB3_24:                               # %if.end.95
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movsd	%xmm1, -400(%rbp)       # 8-byte Spill
	movsd	%xmm2, -408(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_step_increment@PLT
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_increment@PLT
	xorps	%xmm5, %xmm5
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-416(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-424(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB3_25:                               # %if.end.102
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scale_entry_set_logarithmic, .Lfunc_end3-gimp_scale_entry_set_logarithmic
	.cfi_endproc

	.globl	gimp_scale_entry_get_logarithmic
	.align	16, 0x90
	.type	gimp_scale_entry_get_logarithmic,@function
gimp_scale_entry_get_logarithmic:       # @gimp_scale_entry_get_logarithmic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scale_entry_get_logarithmic, .Lfunc_end4-gimp_scale_entry_get_logarithmic
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_entry_unconstrained_adjustment_callback,@function
gimp_scale_entry_unconstrained_adjustment_callback: # @gimp_scale_entry_unconstrained_adjustment_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_value@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_scale_entry_unconstrained_adjustment_callback(%rip), %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scale_entry_unconstrained_adjustment_callback, .Lfunc_end5-gimp_scale_entry_unconstrained_adjustment_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	gimp_scale_entry_exp_adjustment_callback,@function
gimp_scale_entry_exp_adjustment_callback: # @gimp_scale_entry_exp_adjustment_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_scale_entry_log_adjustment_callback(%rip), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value@PLT
	callq	exp@PLT
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_scale_entry_log_adjustment_callback(%rip), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scale_entry_exp_adjustment_callback, .Lfunc_end6-gimp_scale_entry_exp_adjustment_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	gimp_scale_entry_log_adjustment_callback,@function
gimp_scale_entry_log_adjustment_callback: # @gimp_scale_entry_log_adjustment_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_scale_entry_exp_adjustment_callback(%rip), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	callq	log@PLT
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	callq	log@PLT
	movsd	%xmm0, -24(%rbp)
.LBB7_3:                                # %if.end
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_scale_entry_exp_adjustment_callback(%rip), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scale_entry_log_adjustment_callback, .Lfunc_end7-gimp_scale_entry_log_adjustment_callback
	.cfi_endproc

	.globl	gimp_scale_entry_set_sensitive
	.align	16, 0x90
	.type	gimp_scale_entry_set_sensitive,@function
gimp_scale_entry_set_sensitive:         # @gimp_scale_entry_set_sensitive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_adjustment_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scale_entry_set_sensitive(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
.LBB8_14:                               # %if.end.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.19
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
.LBB8_16:                               # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_18
# BB#17:                                # %if.then.24
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
.LBB8_18:                               # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_scale_entry_set_sensitive, .Lfunc_end8-gimp_scale_entry_set_sensitive
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__.gimp_scale_entry_set_logarithmic,@object # @__func__.gimp_scale_entry_set_logarithmic
.L__func__.gimp_scale_entry_set_logarithmic:
	.asciz	"gimp_scale_entry_set_logarithmic"
	.size	.L__func__.gimp_scale_entry_set_logarithmic, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GTK_IS_ADJUSTMENT (adjustment)"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"scale"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"value-changed"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"logarithmic"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_scale_entry_set_sensitive,@object # @__func__.gimp_scale_entry_set_sensitive
.L__func__.gimp_scale_entry_set_sensitive:
	.asciz	"gimp_scale_entry_set_sensitive"
	.size	.L__func__.gimp_scale_entry_set_sensitive, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"label"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"spinbutton"
	.size	.L.str.6, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
