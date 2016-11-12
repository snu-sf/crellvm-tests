	.text
	.file	"view-commands.bc"
	.globl	view_new_cmd_callback
	.align	16, 0x90
	.type	view_new_cmd_callback,@function
view_new_cmd_callback:                  # @view_new_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_display_get_image
	movq	-32(%rbp), %rdi
	movl	184(%rdi), %edx
	movq	-32(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	callq	gimp_zoom_model_get_factor
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	gimp_create_display
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	view_new_cmd_callback, .Lfunc_end0-view_new_cmd_callback
	.cfi_endproc

	.globl	view_close_cmd_callback
	.align	16, 0x90
	.type	view_close_cmd_callback,@function
view_close_cmd_callback:                # @view_close_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_4
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.4
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_close
.LBB1_4:                                # %if.end.5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	view_close_cmd_callback, .Lfunc_end1-view_close_cmd_callback
	.cfi_endproc

	.globl	view_zoom_fit_in_cmd_callback
	.align	16, 0x90
	.type	view_zoom_fit_in_cmd_callback,@function
view_zoom_fit_in_cmd_callback:          # @view_zoom_fit_in_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_scale_fit_in
.LBB2_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	view_zoom_fit_in_cmd_callback, .Lfunc_end2-view_zoom_fit_in_cmd_callback
	.cfi_endproc

	.globl	view_zoom_fill_cmd_callback
	.align	16, 0x90
	.type	view_zoom_fill_cmd_callback,@function
view_zoom_fill_cmd_callback:            # @view_zoom_fill_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_scale_fill
.LBB3_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	view_zoom_fill_cmd_callback, .Lfunc_end3-view_zoom_fill_cmd_callback
	.cfi_endproc

	.globl	view_zoom_revert_cmd_callback
	.align	16, 0x90
	.type	view_zoom_revert_cmd_callback,@function
view_zoom_revert_cmd_callback:          # @view_zoom_revert_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_scale_revert
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB4_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	view_zoom_revert_cmd_callback, .Lfunc_end4-view_zoom_revert_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643211215818981376     # double 256
.LCPI5_1:
	.quad	4679240012837945344     # double 65536
.LCPI5_2:
	.quad	4647714815446351872     # double 512
.LCPI5_3:
	.quad	4607182418800017408     # double 1
.LCPI5_4:
	.quad	4593671619917905920     # double 0.125
.LCPI5_5:
	.quad	4625196817309499392     # double 16
	.text
	.globl	view_zoom_cmd_callback
	.align	16, 0x90
	.type	view_zoom_cmd_callback,@function
view_zoom_cmd_callback:                 # @view_zoom_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_10
.LBB5_2:                                # %if.end
	movl	-12(%rbp), %eax
	addl	$9, %eax
	movl	%eax, %ecx
	subl	$7, %eax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB5_9
# BB#11:                                # %if.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_3:                                # %sw.bb
	movl	$5, %esi
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scale
	jmp	.LBB5_10
.LBB5_4:                                # %sw.bb.1
	movl	$4, %esi
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scale
	jmp	.LBB5_10
.LBB5_5:                                # %sw.bb.2
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scale
	jmp	.LBB5_10
.LBB5_6:                                # %sw.bb.3
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_display_shell_scale
	jmp	.LBB5_10
.LBB5_7:                                # %sw.bb.4
	movl	$3, %esi
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scale
	jmp	.LBB5_10
.LBB5_8:                                # %sw.bb.5
	movl	$2, %esi
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scale
	jmp	.LBB5_10
.LBB5_9:                                # %sw.default
	movq	-32(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	xorps	%xmm1, %xmm1
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_4, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI5_5, %xmm6         # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movsd	%xmm0, -40(%rbp)
	movl	-12(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movsd	%xmm3, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movl	$6, %esi
	xorl	%edx, %edx
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_scale
.LBB5_10:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	view_zoom_cmd_callback, .Lfunc_end5-view_zoom_cmd_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_8
	.quad	.LBB5_7
	.quad	.LBB5_6
	.quad	.LBB5_5
	.quad	.LBB5_9
	.quad	.LBB5_9
	.quad	.LBB5_4
	.quad	.LBB5_3

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI6_2:
	.quad	4666723172467343360     # double 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	view_zoom_explicit_cmd_callback
	.align	16, 0x90
	.type	view_zoom_explicit_cmd_callback,@function
view_zoom_explicit_cmd_callback:        # @view_zoom_explicit_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_6
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB6_6
# BB#3:                                 # %if.then.4
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movq	256(%rax), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_get_factor
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movapd	.LCPI6_1(%rip), %xmm0   # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB6_5
# BB#4:                                 # %if.then.9
	movl	$6, %esi
	movl	$3, %edx
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_display_shell_scale
.LBB6_5:                                # %if.end.11
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.12
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	view_zoom_explicit_cmd_callback, .Lfunc_end6-view_zoom_explicit_cmd_callback
	.cfi_endproc

	.globl	view_zoom_other_cmd_callback
	.align	16, 0x90
	.type	view_zoom_other_cmd_callback,@function
view_zoom_other_cmd_callback:           # @view_zoom_other_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	cmpl	$0, %eax
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_get_factor
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_4
	jp	.LBB7_4
	jmp	.LBB7_5
.LBB7_4:                                # %if.then.6
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scale_dialog
.LBB7_5:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	view_zoom_other_cmd_callback, .Lfunc_end7-view_zoom_other_cmd_callback
	.cfi_endproc

	.globl	view_dot_for_dot_cmd_callback
	.align	16, 0x90
	.type	view_dot_for_dot_cmd_callback,@function
view_dot_for_dot_cmd_callback:          # @view_dot_for_dot_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_8
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rsi
	cmpl	232(%rsi), %eax
	je	.LBB8_8
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_display_shell_scale_set_dot_for_dot
	cmpq	$0, -48(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_ui_manager_get_action_group
	movabsq	$.L.str.1, %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	232(%rax), %edx
	callq	gimp_action_group_set_action_active
.LBB8_5:                                # %if.end.12
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_7
# BB#6:                                 # %if.then.16
	movabsq	$.L.str, %rsi
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_ui_manager_get_action_group
	movabsq	$.L.str.1, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	232(%rax), %edx
	callq	gimp_action_group_set_action_active
.LBB8_7:                                # %if.end.20
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.21
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	view_dot_for_dot_cmd_callback, .Lfunc_end8-view_dot_for_dot_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	view_scroll_horizontal_cmd_callback
	.align	16, 0x90
	.type	view_scroll_horizontal_cmd_callback,@function
view_scroll_horizontal_cmd_callback:    # @view_scroll_horizontal_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_step_increment
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI9_0, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm7, %xmm7
	xorl	%esi, %esi
	movl	-44(%rbp), %edi         # 4-byte Reload
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	action_select_value
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB9_3:                                # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	view_scroll_horizontal_cmd_callback, .Lfunc_end9-view_scroll_horizontal_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	view_scroll_vertical_cmd_callback
	.align	16, 0x90
	.type	view_scroll_vertical_cmd_callback,@function
view_scroll_vertical_cmd_callback:      # @view_scroll_vertical_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rax
	movq	344(%rax), %rax
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_step_increment
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI10_0, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm7, %xmm7
	xorl	%esi, %esi
	movl	-44(%rbp), %edi         # 4-byte Reload
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	action_select_value
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB10_3:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	view_scroll_vertical_cmd_callback, .Lfunc_end10-view_scroll_vertical_cmd_callback
	.cfi_endproc

	.globl	view_navigation_window_cmd_callback
	.align	16, 0x90
	.type	view_navigation_window_cmd_callback,@function
view_navigation_window_cmd_callback:    # @view_navigation_window_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	jmp	.LBB11_5
.LBB11_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-32(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movabsq	$.L.str.2, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB11_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	view_navigation_window_cmd_callback, .Lfunc_end11-view_navigation_window_cmd_callback
	.cfi_endproc

	.globl	view_display_filters_cmd_callback
	.align	16, 0x90
	.type	view_display_filters_cmd_callback,@function
view_display_filters_cmd_callback:      # @view_display_filters_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_5
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 656(%rax)
	jne	.LBB12_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_filter_dialog_new
	movabsq	$.L.str.3, %rsi
	movabsq	$gtk_widget_destroyed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, 656(%rdx)
	movq	-24(%rbp), %rax
	movq	656(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$656, %rdx              # imm = 0x290
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB12_4:                               # %if.end.8
	movq	-24(%rbp), %rax
	movq	656(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB12_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	view_display_filters_cmd_callback, .Lfunc_end12-view_display_filters_cmd_callback
	.cfi_endproc

	.globl	view_toggle_selection_cmd_callback
	.align	16, 0x90
	.type	view_toggle_selection_cmd_callback,@function
view_toggle_selection_cmd_callback:     # @view_toggle_selection_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_selection
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB13_4
# BB#3:                                 # %if.then.5
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_selection
.LBB13_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	view_toggle_selection_cmd_callback, .Lfunc_end13-view_toggle_selection_cmd_callback
	.cfi_endproc

	.globl	view_toggle_layer_boundary_cmd_callback
	.align	16, 0x90
	.type	view_toggle_layer_boundary_cmd_callback,@function
view_toggle_layer_boundary_cmd_callback: # @view_toggle_layer_boundary_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_5
.LBB14_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_layer
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB14_4
# BB#3:                                 # %if.then.5
	jmp	.LBB14_5
.LBB14_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_layer
.LBB14_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	view_toggle_layer_boundary_cmd_callback, .Lfunc_end14-view_toggle_layer_boundary_cmd_callback
	.cfi_endproc

	.globl	view_toggle_menubar_cmd_callback
	.align	16, 0x90
	.type	view_toggle_menubar_cmd_callback,@function
view_toggle_menubar_cmd_callback:       # @view_toggle_menubar_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_5
.LBB15_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_menubar
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB15_4
# BB#3:                                 # %if.then.5
	jmp	.LBB15_5
.LBB15_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_menubar
.LBB15_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	view_toggle_menubar_cmd_callback, .Lfunc_end15-view_toggle_menubar_cmd_callback
	.cfi_endproc

	.globl	view_toggle_rulers_cmd_callback
	.align	16, 0x90
	.type	view_toggle_rulers_cmd_callback,@function
view_toggle_rulers_cmd_callback:        # @view_toggle_rulers_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_rulers
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB16_4
# BB#3:                                 # %if.then.5
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_rulers
.LBB16_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	view_toggle_rulers_cmd_callback, .Lfunc_end16-view_toggle_rulers_cmd_callback
	.cfi_endproc

	.globl	view_toggle_scrollbars_cmd_callback
	.align	16, 0x90
	.type	view_toggle_scrollbars_cmd_callback,@function
view_toggle_scrollbars_cmd_callback:    # @view_toggle_scrollbars_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_scrollbars
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB17_4
# BB#3:                                 # %if.then.5
	jmp	.LBB17_5
.LBB17_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_scrollbars
.LBB17_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	view_toggle_scrollbars_cmd_callback, .Lfunc_end17-view_toggle_scrollbars_cmd_callback
	.cfi_endproc

	.globl	view_toggle_statusbar_cmd_callback
	.align	16, 0x90
	.type	view_toggle_statusbar_cmd_callback,@function
view_toggle_statusbar_cmd_callback:     # @view_toggle_statusbar_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_5
.LBB18_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_statusbar
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB18_4
# BB#3:                                 # %if.then.5
	jmp	.LBB18_5
.LBB18_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_statusbar
.LBB18_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	view_toggle_statusbar_cmd_callback, .Lfunc_end18-view_toggle_statusbar_cmd_callback
	.cfi_endproc

	.globl	view_toggle_guides_cmd_callback
	.align	16, 0x90
	.type	view_toggle_guides_cmd_callback,@function
view_toggle_guides_cmd_callback:        # @view_toggle_guides_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_5
.LBB19_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_guides
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB19_4
# BB#3:                                 # %if.then.5
	jmp	.LBB19_5
.LBB19_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_guides
.LBB19_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	view_toggle_guides_cmd_callback, .Lfunc_end19-view_toggle_guides_cmd_callback
	.cfi_endproc

	.globl	view_toggle_grid_cmd_callback
	.align	16, 0x90
	.type	view_toggle_grid_cmd_callback,@function
view_toggle_grid_cmd_callback:          # @view_toggle_grid_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_5
.LBB20_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_grid
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB20_4
# BB#3:                                 # %if.then.5
	jmp	.LBB20_5
.LBB20_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_grid
.LBB20_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	view_toggle_grid_cmd_callback, .Lfunc_end20-view_toggle_grid_cmd_callback
	.cfi_endproc

	.globl	view_toggle_sample_points_cmd_callback
	.align	16, 0x90
	.type	view_toggle_sample_points_cmd_callback,@function
view_toggle_sample_points_cmd_callback: # @view_toggle_sample_points_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_5
.LBB21_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_show_sample_points
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB21_4
# BB#3:                                 # %if.then.5
	jmp	.LBB21_5
.LBB21_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_show_sample_points
.LBB21_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	view_toggle_sample_points_cmd_callback, .Lfunc_end21-view_toggle_sample_points_cmd_callback
	.cfi_endproc

	.globl	view_snap_to_guides_cmd_callback
	.align	16, 0x90
	.type	view_snap_to_guides_cmd_callback,@function
view_snap_to_guides_cmd_callback:       # @view_snap_to_guides_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_5
.LBB22_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_snap_to_guides
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB22_4
# BB#3:                                 # %if.then.5
	jmp	.LBB22_5
.LBB22_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_snap_to_guides
.LBB22_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	view_snap_to_guides_cmd_callback, .Lfunc_end22-view_snap_to_guides_cmd_callback
	.cfi_endproc

	.globl	view_snap_to_grid_cmd_callback
	.align	16, 0x90
	.type	view_snap_to_grid_cmd_callback,@function
view_snap_to_grid_cmd_callback:         # @view_snap_to_grid_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_5
.LBB23_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_snap_to_grid
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB23_4
# BB#3:                                 # %if.then.5
	jmp	.LBB23_5
.LBB23_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_snap_to_grid
.LBB23_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	view_snap_to_grid_cmd_callback, .Lfunc_end23-view_snap_to_grid_cmd_callback
	.cfi_endproc

	.globl	view_snap_to_canvas_cmd_callback
	.align	16, 0x90
	.type	view_snap_to_canvas_cmd_callback,@function
view_snap_to_canvas_cmd_callback:       # @view_snap_to_canvas_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_5
.LBB24_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_snap_to_canvas
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB24_4
# BB#3:                                 # %if.then.5
	jmp	.LBB24_5
.LBB24_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_snap_to_canvas
.LBB24_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	view_snap_to_canvas_cmd_callback, .Lfunc_end24-view_snap_to_canvas_cmd_callback
	.cfi_endproc

	.globl	view_snap_to_vectors_cmd_callback
	.align	16, 0x90
	.type	view_snap_to_vectors_cmd_callback,@function
view_snap_to_vectors_cmd_callback:      # @view_snap_to_vectors_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	jmp	.LBB25_5
.LBB25_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_get_snap_to_vectors
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB25_4
# BB#3:                                 # %if.then.5
	jmp	.LBB25_5
.LBB25_4:                               # %if.end.6
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_display_shell_set_snap_to_vectors
.LBB25_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	view_snap_to_vectors_cmd_callback, .Lfunc_end25-view_snap_to_vectors_cmd_callback
	.cfi_endproc

	.globl	view_padding_color_cmd_callback
	.align	16, 0x90
	.type	view_padding_color_cmd_callback,@function
view_padding_color_cmd_callback:        # @view_padding_color_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_17
.LBB26_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB26_4
# BB#3:                                 # %if.then.4
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	movl	%eax, -60(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
	movl	$0, -60(%rbp)
.LBB26_5:                               # %if.end.6
	cmpl	$0, -60(%rbp)
	je	.LBB26_7
# BB#6:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB26_8
.LBB26_7:                               # %if.else.9
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB26_8:                               # %if.end.11
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$-1, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	je	.LBB26_13
	jmp	.LBB26_18
.LBB26_18:                              # %if.end.11
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jb	.LBB26_9
	jmp	.LBB26_19
.LBB26_19:                              # %if.end.11
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB26_10
	jmp	.LBB26_17
.LBB26_9:                               # %sw.bb
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-56(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-56(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_display_shell_set_padding
	jmp	.LBB26_17
.LBB26_10:                              # %sw.bb.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB26_12
# BB#11:                                # %if.then.17
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.5, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	addq	$64, %rdi
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-144(%rbp), %r10        # 8-byte Reload
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	gimp_color_dialog_new
	movabsq	$.L.str.8, %rsi
	movabsq	$view_padding_color_dialog_update, %rcx
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
.LBB26_12:                              # %if.end.32
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB26_17
.LBB26_13:                              # %sw.bb.35
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-56(%rbp), %rax
	movl	$0, 96(%rax)
	cmpl	$0, -60(%rbp)
	je	.LBB26_15
# BB#14:                                # %if.then.39
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	528(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB26_16
.LBB26_15:                              # %if.else.40
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	520(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB26_16:                              # %if.end.42
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	60(%rax), %esi
	movq	-96(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_display_shell_set_padding
.LBB26_17:                              # %sw.epilog
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end26:
	.size	view_padding_color_cmd_callback, .Lfunc_end26-view_padding_color_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	view_padding_color_dialog_update,@function
view_padding_color_dialog_update:       # @view_padding_color_dialog_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	movl	%eax, -52(%rbp)
	jmp	.LBB27_3
.LBB27_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB27_3:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB27_5
# BB#4:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB27_6
.LBB27_5:                               # %if.else.4
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB27_6:                               # %if.end.6
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB27_7
	jmp	.LBB27_11
.LBB27_11:                              # %if.end.6
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB27_8
	jmp	.LBB27_9
.LBB27_7:                               # %sw.bb
	movl	$3, %esi
	movq	-48(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_display_shell_set_padding
.LBB27_8:                               # %sw.bb.7
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	jmp	.LBB27_10
.LBB27_9:                               # %sw.default
	jmp	.LBB27_10
.LBB27_10:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	view_padding_color_dialog_update, .Lfunc_end27-view_padding_color_dialog_update
	.cfi_endproc

	.globl	view_shrink_wrap_cmd_callback
	.align	16, 0x90
	.type	view_shrink_wrap_cmd_callback,@function
view_shrink_wrap_cmd_callback:          # @view_shrink_wrap_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_3
.LBB28_2:                               # %if.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scale_shrink_wrap
.LBB28_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	view_shrink_wrap_cmd_callback, .Lfunc_end28-view_shrink_wrap_cmd_callback
	.cfi_endproc

	.globl	view_fullscreen_cmd_callback
	.align	16, 0x90
	.type	view_fullscreen_cmd_callback,@function
view_fullscreen_cmd_callback:           # @view_fullscreen_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_4
.LBB29_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB29_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_image_window_set_fullscreen
.LBB29_4:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	view_fullscreen_cmd_callback, .Lfunc_end29-view_fullscreen_cmd_callback
	.cfi_endproc

	.globl	view_use_gegl_cmd_callback
	.align	16, 0x90
	.type	view_use_gegl_cmd_callback,@function
view_use_gegl_cmd_callback:             # @view_use_gegl_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	jmp	.LBB30_21
.LBB30_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB30_4
# BB#3:                                 # %if.then.3
	jmp	.LBB30_21
.LBB30_4:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_get_projection
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 128(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB30_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB30_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB30_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB30_5 Depth=1
	movl	$0, -84(%rbp)
	jmp	.LBB30_13
.LBB30_8:                               # %if.else
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB30_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB30_5 Depth=1
	movl	$1, -84(%rbp)
	jmp	.LBB30_12
.LBB30_11:                              # %if.else.18
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB30_12:                              # %if.end.20
                                        #   in Loop: Header=BB30_5 Depth=1
	jmp	.LBB30_13
.LBB30_13:                              # %if.end.21
                                        #   in Loop: Header=BB30_5 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB30_15
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB30_5 Depth=1
	movl	-52(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_group_layer_get_projection
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	%edx, 128(%rax)
.LBB30_15:                              # %if.end.28
                                        #   in Loop: Header=BB30_5 Depth=1
	jmp	.LBB30_16
.LBB30_16:                              # %for.inc
                                        #   in Loop: Header=BB30_5 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB30_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB30_19
.LBB30_18:                              # %cond.false
                                        #   in Loop: Header=BB30_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB30_19
.LBB30_19:                              # %cond.end
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB30_5
.LBB30_20:                              # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_invalidate
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB30_21:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	view_use_gegl_cmd_callback, .Lfunc_end30-view_use_gegl_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"view"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"view-dot-for-dot"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-navigation-view"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"destroy"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"padding-color-dialog"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Set Canvas Padding Color"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-select-color"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Set Custom Canvas Padding Color"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"update"
	.size	.L.str.8, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
