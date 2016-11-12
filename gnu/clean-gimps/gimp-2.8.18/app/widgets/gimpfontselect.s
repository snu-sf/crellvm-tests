	.text
	.file	"gimpfontselect.bc"
	.globl	gimp_font_select_get_type
	.align	16, 0x90
	.type	gimp_font_select_get_type,@function
gimp_font_select_get_type:              # @gimp_font_select_get_type
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
	movq	gimp_font_select_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_font_select_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_font_select_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_font_select_init, %rcx
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
	movabsq	$gimp_font_select_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_font_select_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_font_select_get_type, .Lfunc_end0-gimp_font_select_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_select_class_intern_init,@function
gimp_font_select_class_intern_init:     # @gimp_font_select_class_intern_init
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
	movq	%rax, gimp_font_select_parent_class
	cmpl	$0, GimpFontSelect_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFontSelect_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_font_select_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_font_select_class_intern_init, .Lfunc_end1-gimp_font_select_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_select_init,@function
gimp_font_select_init:                  # @gimp_font_select_init
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
	.size	gimp_font_select_init, .Lfunc_end2-gimp_font_select_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_select_class_init,@function
gimp_font_select_class_init:            # @gimp_font_select_class_init
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
	movabsq	$gimp_font_select_run_callback, %rsi
	movabsq	$gimp_font_select_constructed, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 992(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_font_select_class_init, .Lfunc_end3-gimp_font_select_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_select_constructed,@function
gimp_font_select_constructed:           # @gimp_font_select_constructed
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
	subq	$80, %rsp
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
	movq	gimp_font_select_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_font_select_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	xorl	%edi, %edi
	movl	$32, %ecx
	movl	$1, %r8d
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	32(%rax), %rax
	movq	456(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	320(%rax), %r9
	callq	gimp_font_view_new
	movq	-16(%rbp), %rdx
	movq	%rax, 328(%rdx)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$204, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_container_box_set_size_request
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
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
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_font_select_constructed, .Lfunc_end4-gimp_font_select_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_font_select_run_callback,@function
gimp_font_select_run_callback:          # @gimp_font_select_run_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	304(%rax), %r8
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_int32_get_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	movl	$4, %r10d
	movl	%r10d, %ecx
	movl	-20(%rbp), %r10d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movq	$4, 24(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_font_select_run_callback, .Lfunc_end5-gimp_font_select_run_callback
	.cfi_endproc

	.type	gimp_font_select_get_type.g_define_type_id__volatile,@object # @gimp_font_select_get_type.g_define_type_id__volatile
	.local	gimp_font_select_get_type.g_define_type_id__volatile
	.comm	gimp_font_select_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFontSelect"
	.size	.L.str, 15

	.type	gimp_font_select_parent_class,@object # @gimp_font_select_parent_class
	.local	gimp_font_select_parent_class
	.comm	gimp_font_select_parent_class,8,8
	.type	GimpFontSelect_private_offset,@object # @GimpFontSelect_private_offset
	.local	GimpFontSelect_private_offset
	.comm	GimpFontSelect_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
