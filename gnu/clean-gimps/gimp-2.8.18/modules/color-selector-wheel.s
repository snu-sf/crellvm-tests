	.text
	.file	"color-selector-wheel.bc"
	.globl	gimp_module_query
	.align	16, 0x90
	.type	gimp_module_query,@function
gimp_module_query:                      # @gimp_module_query
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
	leaq	colorsel_wheel_info(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_module_query, .Lfunc_end0-gimp_module_query
	.cfi_endproc

	.globl	gimp_module_register
	.align	16, 0x90
	.type	gimp_module_register,@function
gimp_module_register:                   # @gimp_module_register
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	color_wheel_register_type@PLT
	movq	-8(%rbp), %rdi
	callq	colorsel_wheel_register_type
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_module_register, .Lfunc_end1-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_register_type,@function
colorsel_wheel_register_type:           # @colorsel_wheel_register_type
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	leaq	.L.str.5(%rip), %rdx
	leaq	colorsel_wheel_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, colorsel_wheel_type_id(%rip)
	movq	colorsel_wheel_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	colorsel_wheel_register_type, .Lfunc_end2-colorsel_wheel_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_class_intern_init,@function
colorsel_wheel_class_intern_init:       # @colorsel_wheel_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, colorsel_wheel_parent_class(%rip)
	cmpl	$0, ColorselWheel_private_offset(%rip)
	je	.LBB3_2
# BB#1:                                 # %if.then
	leaq	ColorselWheel_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	colorsel_wheel_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	colorsel_wheel_class_intern_init, .Lfunc_end3-colorsel_wheel_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_class_finalize,@function
colorsel_wheel_class_finalize:          # @colorsel_wheel_class_finalize
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	colorsel_wheel_class_finalize, .Lfunc_end4-colorsel_wheel_class_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_init,@function
colorsel_wheel_init:                    # @colorsel_wheel_init
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	gtk_frame_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_color_wheel_new@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 216(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	colorsel_wheel_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	colorsel_wheel_init, .Lfunc_end5-colorsel_wheel_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_class_init,@function
colorsel_wheel_class_init:              # @colorsel_wheel_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, -16(%rbp)
	callq	dgettext@PLT
	leaq	colorsel_wheel_set_color(%rip), %rsi
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.8(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 824(%rdx)
	movq	-16(%rbp), %rax
	movq	%rcx, 832(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 840(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 872(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	colorsel_wheel_class_init, .Lfunc_end6-colorsel_wheel_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_set_color,@function
colorsel_wheel_set_color:               # @colorsel_wheel_set_color
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	colorsel_wheel_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_color_wheel_set_color@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	colorsel_wheel_set_color, .Lfunc_end7-colorsel_wheel_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_get_type,@function
colorsel_wheel_get_type:                # @colorsel_wheel_get_type
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
	movq	colorsel_wheel_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	colorsel_wheel_get_type, .Lfunc_end8-colorsel_wheel_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	colorsel_wheel_changed,@function
colorsel_wheel_changed:                 # @colorsel_wheel_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$176, %rsi
	movq	-16(%rbp), %rax
	addq	$176, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rcx
	addq	$176, %rcx
	addq	$16, %rcx
	movq	%rax, %rdx
	callq	gimp_color_wheel_get_color@PLT
	movq	-16(%rbp), %rax
	addq	$176, %rax
	movq	-16(%rbp), %rcx
	addq	$144, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_hsv_to_rgb@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_color_selector_color_changed@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	colorsel_wheel_changed, .Lfunc_end9-colorsel_wheel_changed
	.cfi_endproc

	.type	colorsel_wheel_info,@object # @colorsel_wheel_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
colorsel_wheel_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	colorsel_wheel_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HSV color wheel"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"v1.0"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(c) 2008, released under the GPL"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"08 Aug 2008"
	.size	.L.str.4, 12

	.type	colorsel_wheel_register_type.g_define_type_info,@object # @colorsel_wheel_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
colorsel_wheel_register_type.g_define_type_info:
	.short	936                     # 0x3a8
	.zero	6
	.quad	0
	.quad	0
	.quad	colorsel_wheel_class_intern_init
	.quad	colorsel_wheel_class_finalize
	.quad	0
	.short	224                     # 0xe0
	.short	0                       # 0x0
	.zero	4
	.quad	colorsel_wheel_init
	.quad	0
	.size	colorsel_wheel_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ColorselWheel"
	.size	.L.str.5, 14

	.type	colorsel_wheel_type_id,@object # @colorsel_wheel_type_id
	.local	colorsel_wheel_type_id
	.comm	colorsel_wheel_type_id,8,8
	.type	colorsel_wheel_parent_class,@object # @colorsel_wheel_parent_class
	.local	colorsel_wheel_parent_class
	.comm	colorsel_wheel_parent_class,8,8
	.type	ColorselWheel_private_offset,@object # @ColorselWheel_private_offset
	.local	ColorselWheel_private_offset
	.comm	ColorselWheel_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp20-libgimp"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Wheel"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-colorselector-triangle"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-color-triangle"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"changed"
	.size	.L.str.10, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
