	.text
	.file	"gimpdisplayshell-scale-dialog.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI0_2:
	.quad	4600708494335672320     # double 0.390625
.LCPI0_3:
	.quad	4672766088373600256     # double 25600
.LCPI0_4:
	.quad	4621819117588971520     # double 10
.LCPI0_5:
	.quad	4632233691727265792     # double 50
.LCPI0_6:
	.quad	4607182418800017408     # double 1
.LCPI0_7:
	.quad	4636737291354636288     # double 100
.LCPI0_9:
	.quad	4643211215818981376     # double 256
.LCPI0_10:
	.quad	4620693217682128896     # double 8
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_8:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_display_shell_scale_dialog
	.align	16, 0x90
	.type	gimp_display_shell_scale_dialog,@function
gimp_display_shell_scale_dialog:        # @gimp_display_shell_scale_dialog
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
	subq	$616, %rsp              # imm = 0x268
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
	movq	%rdi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_dialog, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_17
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-48(%rbp), %rax
	cmpq	$0, 616(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.12
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB0_17
.LBB0_14:                               # %if.end.16
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-48(%rbp), %rax
	movsd	288(%rax), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movapd	.LCPI0_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_16
# BB#15:                                # %if.then.19
	movq	-48(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movq	-48(%rbp), %rax
	movsd	%xmm0, 288(%rax)
.LBB0_16:                               # %if.end.22
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movl	$40, %ecx
	movl	%ecx, %edi
	movq	%rax, -64(%rbp)
	callq	g_slice_alloc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
	callq	gimp_zoom_model_get_type
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	movsd	288(%rdi), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI0_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_new
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	32(%rdx), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movabsq	$.L.str.3, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdi
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.9, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r13, %rdx
	movq	-192(%rbp), %r15        # 8-byte Reload
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movq	%r15, %r9
	movq	%rax, (%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -240(%rbp)        # 8-byte Spill
	movl	%r11d, -244(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-48(%rbp), %rcx
	movq	%rax, 616(%rcx)
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	616(%rdi), %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_display_shell_scale_dialog_free, %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$g_object_unref, %rdx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdx
	addq	$616, %rdx              # imm = 0x268
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_object_add_weak_pointer
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_display_shell_scale_dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	616(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	616(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	movl	$0, -116(%rbp)
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movl	-116(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -116(%rbp)
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI0_8, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-80(%rbp), %r8
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	-388(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_get_fraction
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_10, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	addq	$24, %rax
	cvtsi2sdl	-108(%rbp), %xmm1
	movq	%rax, %rdi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-416(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-416(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-80(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gtk_label_new
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_10, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	addq	$32, %rax
	cvtsi2sdl	-112(%rbp), %xmm1
	movq	%rax, %rdi
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-456(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-80(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
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
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movl	-116(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -116(%rbp)
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI0_8, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-80(%rbp), %r8
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	-484(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI0_6, %xmm6         # xmm6 = mem[0],zero
	movl	$2, %esi
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rcx
	addq	$16, %rcx
	movq	-48(%rbp), %rdi
	movsd	288(%rdi), %xmm7        # xmm7 = mem[0],zero
	movapd	.LCPI0_1(%rip), %xmm8   # xmm8 = [9223372036854775807,9223372036854775807]
	andpd	%xmm8, %xmm7
	mulsd	%xmm0, %xmm7
	movq	%rcx, %rdi
	movaps	%xmm7, %xmm0
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gtk_label_new
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movl	-540(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$update_zoom_values, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-56(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$update_zoom_values, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$update_zoom_values, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	616(%rcx), %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB0_17:                               # %return
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_scale_dialog, .Lfunc_end0-gimp_display_shell_scale_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_scale_dialog_free,@function
gimp_display_shell_scale_dialog_free:   # @gimp_display_shell_scale_dialog_free
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
	movl	$40, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_scale_dialog_free, .Lfunc_end1-gimp_display_shell_scale_dialog_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_display_shell_scale_dialog_response,@function
gimp_display_shell_scale_dialog_response: # @gimp_display_shell_scale_dialog_response
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_adjustment_get_value
	movl	$6, %esi
	xorl	%edx, %edx
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	gimp_display_shell_scale
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_display_shell_scaled
.LBB2_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI2_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	%xmm0, 288(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	616(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_scale_dialog_response, .Lfunc_end2-gimp_display_shell_scale_dialog_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	update_zoom_values,@function
update_zoom_values:                     # @update_zoom_values
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
	subq	$144, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$update_zoom_values, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$update_zoom_values, %rdi
	movq	-16(%rbp), %r9
	movq	24(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$update_zoom_values, %rdi
	movq	-16(%rbp), %r9
	movq	32(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r8
	cmpq	16(%r8), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_adjustment_get_value
	movl	$6, %esi
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	gimp_zoom_model_zoom
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_model_get_fraction
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	callq	gtk_adjustment_set_value
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_adjustment_get_value
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	mulsd	-32(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gtk_adjustment_set_value
.LBB3_3:                                # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$update_zoom_values, %rdx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$update_zoom_values, %rdi
	movq	-16(%rbp), %r9
	movq	24(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$update_zoom_values, %rdi
	movq	-16(%rbp), %r9
	movq	32(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -128(%rbp)        # 4-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	update_zoom_values, .Lfunc_end3-update_zoom_values
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_scale_dialog,@object # @__func__.gimp_display_shell_scale_dialog
.L__func__.gimp_display_shell_scale_dialog:
	.asciz	"gimp_display_shell_scale_dialog"
	.size	.L__func__.gimp_display_shell_scale_dialog, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Zoom Ratio"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"display_scale"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-zoom-100"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Select Zoom Ratio"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-view-zoom-other"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-cancel"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-ok"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"response"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Zoom ratio:"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	":"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Zoom:"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"value-changed"
	.size	.L.str.15, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
