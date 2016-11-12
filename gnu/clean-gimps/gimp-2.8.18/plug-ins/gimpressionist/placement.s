	.text
	.file	"placement.bc"
	.globl	place_restore
	.align	16, 0x90
	.type	place_restore,@function
place_restore:                          # @place_restore
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
	subq	$32, %rsp
	movslq	pcvals+540, %rax
	movq	placement_radio(,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	placement_center, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3348, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	brush_density_adjust, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pcvals+48, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	place_restore, .Lfunc_end0-place_restore
	.cfi_endproc

	.globl	place_type_input
	.align	16, 0x90
	.type	place_type_input,@function
place_type_input:                       # @place_type_input
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
	.size	place_type_input, .Lfunc_end1-place_type_input
	.cfi_endproc

	.globl	place_store
	.align	16, 0x90
	.type	place_store,@function
place_store:                            # @place_store
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
	subq	$16, %rsp
	movq	placement_center, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+3348
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	place_store, .Lfunc_end2-place_store
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4632233691727265792     # double 50
.LCPI3_2:
	.quad	4617315517961601024     # double 5
	.text
	.globl	create_placementpage
	.align	16, 0x90
	.type	create_placementpage,@function
create_placementpage:                   # @create_placementpage
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
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
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
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
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$pcvals, %rdx
	addq	$540, %rdx              # imm = 0x21C
	xorl	%r8d, %r8d
	movabsq	$placement_radio, %r9
	movq	%r9, %r10
	addq	$8, %r10
	xorl	%esi, %esi
	movl	%esi, %r11d
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -120(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.4, %rdi
	movq	%rax, -72(%rbp)
	movq	placement_radio, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.5, %rdi
	movq	placement_radio+8, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movslq	pcvals+540, %rax
	movq	placement_radio(,%rax,8), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, placement_center
	movq	placement_center, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3348, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movsd	pcvals+48, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movsd	-240(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-264(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-272(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-272(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, brush_density_adjust
	movq	brush_density_adjust, %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_notebook_append_page_menu
	movl	%eax, -292(%rbp)        # 4-byte Spill
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_placementpage, .Lfunc_end3-create_placementpage
	.cfi_endproc

	.type	placement_radio,@object # @placement_radio
	.local	placement_radio
	.comm	placement_radio,16,16
	.type	placement_center,@object # @placement_center
	.local	placement_center
	.comm	placement_center,8,8
	.type	brush_density_adjust,@object # @brush_density_adjust
	.local	brush_density_adjust
	.comm	brush_density_adjust,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Pl_acement"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Placement"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Randomly"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Evenly distributed"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Place strokes randomly around the image"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The strokes are evenly distributed across the image"
	.size	.L.str.5, 52

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Centered"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Focus the brush strokes around the center of the image"
	.size	.L.str.7, 55

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Stroke _density:"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The relative density of the brush strokes"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"value-changed"
	.size	.L.str.10, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
