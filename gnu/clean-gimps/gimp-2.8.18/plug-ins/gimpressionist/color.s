	.text
	.file	"color.bc"
	.globl	color_restore
	.align	16, 0x90
	.type	color_restore,@function
color_restore:                          # @color_restore
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
	subq	$16, %rsp
	movslq	pcvals+5076, %rax
	movq	colorradio(,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	colornoiseadjust, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+5080, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	color_restore, .Lfunc_end0-color_restore
	.cfi_endproc

	.globl	color_type_input
	.align	16, 0x90
	.type	color_type_input,@function
color_type_input:                       # @color_type_input
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
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jle	.LBB1_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB1_6
.LBB1_2:                                # %cond.false
	cmpl	$0, -4(%rbp)
	jge	.LBB1_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false.3
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB1_6:                                # %cond.end.4
	movl	-8(%rbp), %eax          # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_type_input, .Lfunc_end1-color_type_input
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4617315517961601024     # double 5
	.text
	.globl	create_colorpage
	.align	16, 0x90
	.type	create_colorpage,@function
create_colorpage:                       # @create_colorpage
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	movabsq	$.L.str, %rax
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -48(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$pcvals, %rdx
	addq	$5076, %rdx             # imm = 0x13D4
	xorl	%r8d, %r8d
	movabsq	$colorradio, %r9
	movq	%r9, %r10
	addq	$8, %r10
	xorl	%esi, %esi
	movl	%esi, %r11d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -112(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.4, %rdi
	movq	%rax, -64(%rbp)
	movq	colorradio, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.5, %rdi
	movq	colorradio+8, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rdi
	movsd	pcvals+5080, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-216(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-216(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$5080, %rdi             # imm = 0x13D8
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, colornoiseadjust
	movq	colornoiseadjust, %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	color_restore
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gtk_notebook_append_page_menu
	movl	%eax, -236(%rbp)        # 4-byte Spill
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	create_colorpage, .Lfunc_end2-create_colorpage
	.cfi_endproc

	.type	colorradio,@object      # @colorradio
	.local	colorradio
	.comm	colorradio,16,16
	.type	colornoiseadjust,@object # @colornoiseadjust
	.local	colornoiseadjust
	.comm	colornoiseadjust,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Co_lor"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Color"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"A_verage under brush"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"C_enter of brush"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Color is computed from the average of all pixels under the brush"
	.size	.L.str.4, 65

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Samples the color from the pixel in the center of the brush"
	.size	.L.str.5, 60

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Color _noise:"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Adds random noise to the color"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"value-changed"
	.size	.L.str.8, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
