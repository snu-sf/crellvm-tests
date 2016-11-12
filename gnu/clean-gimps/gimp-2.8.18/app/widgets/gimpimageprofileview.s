	.text
	.file	"gimpimageprofileview.bc"
	.globl	gimp_image_profile_view_get_type
	.align	16, 0x90
	.type	gimp_image_profile_view_get_type,@function
gimp_image_profile_view_get_type:       # @gimp_image_profile_view_get_type
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
	movq	gimp_image_profile_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_profile_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_parasite_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_image_profile_view_class_intern_init, %rdi
	movl	$160, %r8d
	movabsq	$gimp_image_profile_view_init, %rcx
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
	movabsq	$gimp_image_profile_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_profile_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_profile_view_get_type, .Lfunc_end0-gimp_image_profile_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_profile_view_class_intern_init,@function
gimp_image_profile_view_class_intern_init: # @gimp_image_profile_view_class_intern_init
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
	movq	%rax, gimp_image_profile_view_parent_class
	cmpl	$0, GimpImageProfileView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImageProfileView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_profile_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_profile_view_class_intern_init, .Lfunc_end1-gimp_image_profile_view_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	gimp_image_profile_view_init,@function
gimp_image_profile_view_init:           # @gimp_image_profile_view_init
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_text_view_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_pixels_above_lines
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_left_margin
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_right_margin
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$700, %ecx              # imm = 0x2BC
	movabsq	$.L.str.12, %r8
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$1, %al
	callq	gtk_text_buffer_create_tag
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.13, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	-8(%rbp), %rdx
	movl	$0, 152(%rdx)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_profile_view_init, .Lfunc_end2-gimp_image_profile_view_init
	.cfi_endproc

	.globl	gimp_image_profile_view_new
	.align	16, 0x90
	.type	gimp_image_profile_view_new,@function
gimp_image_profile_view_new:            # @gimp_image_profile_view_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_profile_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_image_profile_view_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_profile_view_new, .Lfunc_end3-gimp_image_profile_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_profile_view_class_init,@function
gimp_image_profile_view_class_init:     # @gimp_image_profile_view_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_parasite_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_image_profile_view_update, %rsi
	movabsq	$gimp_image_profile_view_dispose, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_profile_view_class_init, .Lfunc_end4-gimp_image_profile_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_profile_view_dispose,@function
gimp_image_profile_view_dispose:        # @gimp_image_profile_view_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_profile_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	152(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 152(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_profile_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_profile_view_dispose, .Lfunc_end5-gimp_image_profile_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_profile_view_update,@function
gimp_image_profile_view_update:         # @gimp_image_profile_view_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_profile_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_set_text
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_get_start_iter
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	leaq	-96(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$.L.str.8, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	movq	-16(%rbp), %rdx
	cmpl	$0, 152(%rdx)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	152(%rax), %edi
	callq	g_source_remove
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB6_2:                                # %if.end
	movabsq	$gimp_image_profile_view_query, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-16(%rbp), %rcx
	movl	%eax, 152(%rcx)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_profile_view_update, .Lfunc_end6-gimp_image_profile_view_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_profile_view_query,@function
gimp_image_profile_view_query:          # @gimp_image_profile_view_query
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
	subq	$176, %rsp
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_text_buffer_set_text
	leaq	-128(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_text_buffer_get_start_iter
	movq	-8(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_parasite_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_parasite_view_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %r8
	leaq	-40(%rbp), %r9
	leaq	-48(%rbp), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	plug_in_icc_profile_info
	cmpl	$0, %eax
	je	.LBB7_11
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	.LBB7_8
.LBB7_3:                                # %if.then.8
	cmpq	$0, -32(%rbp)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB7_6
# BB#5:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB7_7:                                # %if.end
	leaq	-128(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$.L.str.9, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	-136(%rbp), %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	leaq	-128(%rbp), %rsi
	movabsq	$.L.str.10, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_text_buffer_insert
.LBB7_8:                                # %if.end.15
	cmpq	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.17
	leaq	-128(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	gtk_text_buffer_insert
.LBB7_10:                               # %if.end.19
	jmp	.LBB7_12
.LBB7_11:                               # %if.else.20
	leaq	-128(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$.L.str.8, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB7_12:                               # %if.end.22
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	$0, 152(%rdi)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_profile_view_query, .Lfunc_end7-gimp_image_profile_view_query
	.cfi_endproc

	.type	gimp_image_profile_view_get_type.g_define_type_id__volatile,@object # @gimp_image_profile_view_get_type.g_define_type_id__volatile
	.local	gimp_image_profile_view_get_type.g_define_type_id__volatile
	.comm	gimp_image_profile_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageProfileView"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_image_profile_view_new,@object # @__func__.gimp_image_profile_view_new
.L__func__.gimp_image_profile_view_new:
	.asciz	"gimp_image_profile_view_new"
	.size	.L__func__.gimp_image_profile_view_new, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"parasite"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"icc-profile"
	.size	.L.str.5, 12

	.type	gimp_image_profile_view_parent_class,@object # @gimp_image_profile_view_parent_class
	.local	gimp_image_profile_view_parent_class
	.comm	gimp_image_profile_view_parent_class,8,8
	.type	GimpImageProfileView_private_offset,@object # @GimpImageProfileView_private_offset
	.local	GimpImageProfileView_private_offset
	.comm	GimpImageProfileView_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Querying..."
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"emphasis"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strong"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"weight"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"scale"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"style"
	.size	.L.str.13, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
