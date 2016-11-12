	.text
	.file	"print-size-dialog.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI0_1:
	.quad	4679240012837945344     # double 65536
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4621819117588971520     # double 10
.LCPI0_5:
	.quad	4688247212092686336     # double 262144
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_2:
	.long	1056964608              # float 0.5
	.text
	.globl	print_size_dialog_new
	.align	16, 0x90
	.type	print_size_dialog_new,@function
print_size_dialog_new:                  # @print_size_dialog_new
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
	subq	$1192, %rsp             # imm = 0x4A8
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
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r11, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	$0, -216(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.4
	movl	$1, -236(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.5
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.7
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.9
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.print_size_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_35
.LBB0_11:                               # %if.end.11
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.12
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.21
	movl	$0, -260(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.22
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.25
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.29
	movl	$1, -260(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.30
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB0_19:                               # %if.end.32
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.33
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.36
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.print_size_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_35
.LBB0_23:                               # %if.end.38
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.39
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.40
	cmpq	$0, -112(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.42
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.print_size_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_35
.LBB0_28:                               # %if.end.44
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.45
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %rsi
	movl	$1, %ecx
	movabsq	$.L.str.6, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.7, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-64(%rbp), %r14
	movq	-72(%rbp), %r15
	movq	-80(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	-88(%rbp), %r11
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movq	%r9, -328(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	%r11, (%rsp)
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-296(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-312(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-304(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movl	$-6, 48(%rsp)
	movq	-328(%rbp), %r15        # 8-byte Reload
	movq	%r15, 56(%rsp)
	movl	$-5, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movq	%rbx, -336(%rbp)        # 8-byte Spill
	movl	%r10d, -340(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$64, %esi
	movl	%esi, %edi
	callq	g_slice_alloc0
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -128(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$print_size_dialog_free, %rcx
	movq	-128(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movabsq	$.L.str.8, %rsi
	movabsq	$print_size_dialog_response, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-136(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %r11
	movq	%rdi, (%r11)
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %r11
	movq	%rdi, 48(%r11)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %r11
	movq	%rdi, 56(%r11)
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %r11
	addq	$32, %r11
	movq	-128(%rbp), %rbx
	addq	$40, %rbx
	movq	%r11, %rsi
	movq	%rbx, %rdx
	callq	gimp_image_get_resolution
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-136(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-152(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-152(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-152(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_table_set_row_spacing
	movq	-144(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-208(%rbp), %rdi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-456(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-456(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	leaq	-208(%rbp), %rdi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-472(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-472(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-472(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	callq	gimp_get_default_unit
	xorl	%ecx, %ecx
	movabsq	$.L.str.10, %rdx
	movl	$8, %esi
	movl	$1, %r8d
	movl	%ecx, %edi
	movl	%esi, -484(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -492(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$8, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	-128(%rbp), %rdx
	movq	%rax, 8(%rdx)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-168(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-152(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$6, %r9d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-532(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -536(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-536(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -540(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-168(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-152(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$6, %r8d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	-572(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -576(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-192(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-160(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-192(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-160(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movl	-660(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-160(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-700(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -704(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-704(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-160(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-128(%rbp), %rdi
	movsd	40(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-160(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-160(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-160(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm0
	movq	-752(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval
	movq	-160(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %esi
	cvtsi2sdl	%eax, %xmm0
	movq	-768(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval
	leaq	-208(%rbp), %rdi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	movsd	-776(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-776(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-776(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-776(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	leaq	-208(%rbp), %rdi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	movsd	-792(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-792(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-792(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-792(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-168(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-152(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$6, %r10d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -828(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-168(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-152(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$6, %r10d
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -860(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$4, %r9d
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -876(%rbp)        # 4-byte Spill
	movl	-876(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-192(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_unit
	movabsq	$.L.str.15, %rdi
	movl	%eax, -880(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$8, %edx
	movl	$2, %r8d
	movl	%ecx, %edi
	movl	-880(%rbp), %esi        # 4-byte Reload
	movl	%edx, -884(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -888(%rbp)        # 4-byte Spill
	movl	-888(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -892(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$8, (%rsp)
	movl	$2, 8(%rsp)
	callq	gimp_size_entry_new
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-160(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-160(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_table_set_col_spacing
	movq	-192(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	movl	-940(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movq	%rsi, -968(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-160(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	movl	-980(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	movq	%rsi, -1008(%rbp)       # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-160(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	-1020(%rbp), %r9d       # 4-byte Reload
	movl	%r8d, -1024(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1024(%rbp), %r9d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-160(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-160(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-160(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	-128(%rbp), %rdi
	movsd	40(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movl	$3, %edi
	callq	gimp_chain_button_new
	xorps	%xmm0, %xmm0
	movq	%rax, -200(%rbp)
	movq	-128(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-128(%rbp), %rax
	subsd	40(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_31
# BB#30:                                # %cond.true
	movq	-128(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	subsd	40(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -1064(%rbp)      # 8-byte Spill
	jmp	.LBB0_32
.LBB0_31:                               # %cond.false
	movq	-128(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	subsd	40(%rax), %xmm0
	movsd	%xmm0, -1064(%rbp)      # 8-byte Spill
.LBB0_32:                               # %cond.end
	movsd	-1064(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_34
# BB#33:                                # %if.then.217
	movq	-200(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB0_34:                               # %if.end.220
	movq	-160(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	movl	-1084(%rbp), %r9d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-200(%rbp), %rdi
	callq	gtk_widget_show
	movq	-200(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-216(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	168(%rax), %rax
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -216(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_set_focus_chain
	movq	-216(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.16, %rsi
	movabsq	$print_size_dialog_size_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-128(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$print_size_dialog_resolution_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-128(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-136(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB0_35:                               # %return
	movq	-48(%rbp), %rax
	addq	$1192, %rsp             # imm = 0x4A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_size_dialog_new, .Lfunc_end0-print_size_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_dialog_free,@function
print_size_dialog_free:                 # @print_size_dialog_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$64, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_size_dialog_free, .Lfunc_end1-print_size_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_dialog_response,@function
print_size_dialog_response:             # @print_size_dialog_response
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_5
.LBB2_5:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB2_3
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	print_size_dialog_reset
	jmp	.LBB2_4
.LBB2_2:                                # %sw.bb.2
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_refval
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_unit
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %edx
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	jmp	.LBB2_4
.LBB2_3:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB2_4:                                # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_size_dialog_response, .Lfunc_end2-print_size_dialog_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4562254508917369340     # double 0.001
.LCPI3_1:
	.quad	4679240012837945344     # double 65536
.LCPI3_2:
	.quad	4572414629676717179     # double 0.0050000000000000001
	.text
	.align	16, 0x90
	.type	print_size_dialog_size_changed,@function
print_size_dialog_size_changed:         # @print_size_dialog_size_changed
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gimp_size_entry_get_unit
	movl	%eax, %edi
	callq	gimp_unit_get_factor
	xorl	%esi, %esi
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gimp_size_entry_get_value
	movl	$1, %esi
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gimp_size_entry_get_value
	movsd	%xmm0, -40(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	ucomisd	-32(%rbp), %xmm0
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB3_3:                                # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	ucomisd	-40(%rbp), %xmm0
	movsd	%xmm2, -104(%rbp)       # 8-byte Spill
	jbe	.LBB3_5
# BB#4:                                 # %cond.true.14
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.15
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB3_6:                                # %cond.end.16
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_8
# BB#7:                                 # %cond.true.21
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB3_12
.LBB3_8:                                # %cond.false.22
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB3_10
# BB#9:                                 # %cond.true.25
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false.26
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB3_11:                               # %cond.end.27
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB3_12:                               # %cond.end.29
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_14
# BB#13:                                # %cond.true.33
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB3_18
.LBB3_14:                               # %cond.false.34
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB3_16
# BB#15:                                # %cond.true.37
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB3_17
.LBB3_16:                               # %cond.false.38
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB3_17:                               # %cond.end.39
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB3_18:                               # %cond.end.41
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	print_size_dialog_set_resolution
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm1
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	print_size_dialog_set_size
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_size_dialog_size_changed, .Lfunc_end3-print_size_dialog_size_changed
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_dialog_resolution_changed,@function
print_size_dialog_resolution_changed:   # @print_size_dialog_resolution_changed
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	print_size_dialog_set_resolution
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	print_size_dialog_resolution_changed, .Lfunc_end4-print_size_dialog_resolution_changed
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_dialog_reset,@function
print_size_dialog_reset:                # @print_size_dialog_reset
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_get_default_unit
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_size_entry_set_unit
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gimp_image_get_resolution
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	print_size_dialog_set_resolution
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	print_size_dialog_reset, .Lfunc_end5-print_size_dialog_reset
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_dialog_set_resolution,@function
print_size_dialog_set_resolution:       # @print_size_dialog_set_resolution
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB6_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB6_6
# BB#2:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jne	.LBB6_3
	jp	.LBB6_3
	jmp	.LBB6_4
.LBB6_3:                                # %if.then.4
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.5
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_dialog_resolution_changed, %rdx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_set_refval
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_dialog_resolution_changed, %rdi
	movq	-8(%rbp), %r9
	movq	16(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$print_size_dialog_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	8(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_set_resolution
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_size_entry_set_resolution
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_dialog_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	8(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	print_size_dialog_set_resolution, .Lfunc_end6-print_size_dialog_set_resolution
	.cfi_endproc

	.align	16, 0x90
	.type	print_size_dialog_set_size,@function
print_size_dialog_set_size:             # @print_size_dialog_set_size
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
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_dialog_size_changed, %rdx
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_set_refval
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$print_size_dialog_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	8(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	print_size_dialog_set_size, .Lfunc_end7-print_size_dialog_set_size
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.print_size_dialog_new,@object # @__func__.print_size_dialog_new
.L__func__.print_size_dialog_new:
	.asciz	"print_size_dialog_new"
	.size	.L__func__.print_size_dialog_new, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"callback != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-print-resolution"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-reset"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-cancel"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-ok"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"response"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Print Size"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%p"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Width:"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"H_eight:"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_X resolution:"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Y resolution:"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pixels/%a"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"value-changed"
	.size	.L.str.16, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
