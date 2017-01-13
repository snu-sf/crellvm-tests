	.text
	.file	"gimppaletteselect.bc"
	.globl	gimp_palette_select_get_type
	.align	16, 0x90
	.type	gimp_palette_select_get_type,@function
gimp_palette_select_get_type:           # @gimp_palette_select_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_palette_select_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_palette_select_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_pdb_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1000, %edx             # imm = 0x3E8
	movabsq	$gimp_palette_select_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_palette_select_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_palette_select_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_palette_select_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_select_get_type, .Lfunc_end0-gimp_palette_select_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_select_class_intern_init,@function
gimp_palette_select_class_intern_init:  # @gimp_palette_select_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_palette_select_parent_class
	cmpl	$0, GimpPaletteSelect_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaletteSelect_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_palette_select_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_palette_select_class_intern_init, .Lfunc_end1-gimp_palette_select_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_select_init,@function
gimp_palette_select_init:               # @gimp_palette_select_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_select_init, .Lfunc_end2-gimp_palette_select_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_select_class_init,@function
gimp_palette_select_class_init:         # @gimp_palette_select_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_palette_select_run_callback, %rsi
	movabsq	$gimp_palette_select_constructed, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 992(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_select_class_init, .Lfunc_end3-gimp_palette_select_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_select_constructed,@function
gimp_palette_select_constructed:        # @gimp_palette_select_constructed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_palette_select_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_palette_select_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	xorl	%edi, %edi
	movl	$32, %ecx
	movl	$1, %r8d
	movabsq	$.L.str.1, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %r9
	movq	280(%r9), %r9
	movq	32(%r9), %r9
	movq	496(%r9), %r9
	movq	-16(%rbp), %r10
	movq	280(%r10), %r10
	movq	-16(%rbp), %r11
	movq	320(%r11), %r11
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%r11, %r9
	movq	%rax, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_data_factory_view_new
	movq	-16(%rbp), %rdx
	movq	%rax, 328(%rdx)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$170, %esi
	movl	$272, %edx              # imm = 0x110
	movq	%rax, %rdi
	callq	gimp_container_box_set_size_request
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_show
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_select_constructed, .Lfunc_end4-gimp_palette_select_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_select_run_callback,@function
gimp_palette_select_run_callback:       # @gimp_palette_select_run_callback
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	272(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	304(%rax), %r8
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_int32_get_type
	movq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_n_colors
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_int32_get_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	movl	$4, %r10d
	movl	%r10d, %ecx
	movl	-28(%rbp), %r10d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	-108(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movq	$4, 40(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_select_run_callback, .Lfunc_end5-gimp_palette_select_run_callback
	.cfi_endproc

	.type	gimp_palette_select_get_type.g_define_type_id__volatile,@object # @gimp_palette_select_get_type.g_define_type_id__volatile
	.local	gimp_palette_select_get_type.g_define_type_id__volatile
	.comm	gimp_palette_select_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaletteSelect"
	.size	.L.str, 18

	.type	gimp_palette_select_parent_class,@object # @gimp_palette_select_parent_class
	.local	gimp_palette_select_parent_class
	.comm	gimp_palette_select_parent_class,8,8
	.type	GimpPaletteSelect_private_offset,@object # @GimpPaletteSelect_private_offset
	.local	GimpPaletteSelect_private_offset
	.comm	GimpPaletteSelect_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"<Palettes>"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/palettes-popup"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"palettes"
	.size	.L.str.3, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
