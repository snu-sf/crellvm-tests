	.text
	.file	"gimpimagefile.bc"
	.globl	gimp_imagefile_get_type
	.align	16, 0x90
	.type	gimp_imagefile_get_type,@function
gimp_imagefile_get_type:                # @gimp_imagefile_get_type
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
	movq	gimp_imagefile_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_imagefile_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_imagefile_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_imagefile_init, %rcx
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
	movabsq	$gimp_imagefile_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_imagefile_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_imagefile_get_type, .Lfunc_end0-gimp_imagefile_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_class_intern_init,@function
gimp_imagefile_class_intern_init:       # @gimp_imagefile_class_intern_init
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
	movq	%rax, gimp_imagefile_parent_class
	cmpl	$0, GimpImagefile_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImagefile_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_imagefile_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_imagefile_class_intern_init, .Lfunc_end1-gimp_imagefile_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_init,@function
gimp_imagefile_init:                    # @gimp_imagefile_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	callq	gimp_thumbnail_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_imagefile_notify_thumbnail, %rdi
	movl	$2, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_imagefile_init, .Lfunc_end2-gimp_imagefile_init
	.cfi_endproc

	.globl	gimp_imagefile_new
	.align	16, 0x90
	.type	gimp_imagefile_new,@function
gimp_imagefile_new:                     # @gimp_imagefile_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_imagefile_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB3_14
# BB#13:                                # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
.LBB3_14:                               # %if.end.20
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_imagefile_new, .Lfunc_end3-gimp_imagefile_new
	.cfi_endproc

	.globl	gimp_imagefile_get_thumbnail
	.align	16, 0x90
	.type	gimp_imagefile_get_thumbnail,@function
gimp_imagefile_get_thumbnail:           # @gimp_imagefile_get_thumbnail
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_get_thumbnail, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_imagefile_get_thumbnail, .Lfunc_end4-gimp_imagefile_get_thumbnail
	.cfi_endproc

	.globl	gimp_imagefile_get_gicon
	.align	16, 0x90
	.type	gimp_imagefile_get_gicon,@function
gimp_imagefile_get_gicon:               # @gimp_imagefile_get_gicon
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_get_gicon, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_17
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_17
.LBB5_14:                               # %if.end.16
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB5_16
# BB#15:                                # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_file_new_for_uri
	movq	%rax, -56(%rbp)
	callq	g_cancellable_new
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_imagefile_icon_callback, %r9
	movq	-24(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %r8
	movq	-16(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, (%rsp)
	callq	g_file_query_info_async
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_16:                               # %if.end.25
	movq	$0, -8(%rbp)
.LBB5_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_imagefile_get_gicon, .Lfunc_end5-gimp_imagefile_get_gicon
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_icon_callback,@function
gimp_imagefile_icon_callback:           # @gimp_imagefile_icon_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	g_file_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_file_query_info_finish
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	g_io_error_quark
	movl	$19, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_error_matches
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then.6
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB6_10
.LBB6_3:                                # %if.end
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
.LBB6_4:                                # %if.end.7
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.13
	movq	-64(%rbp), %rdi
	callq	g_file_info_get_icon
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_6:                                # %if.end.16
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.18
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
.LBB6_8:                                # %if.end.21
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_10
# BB#9:                                 # %if.then.24
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
.LBB6_10:                               # %if.end.27
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_imagefile_icon_callback, .Lfunc_end6-gimp_imagefile_icon_callback
	.cfi_endproc

	.globl	gimp_imagefile_set_mime_type
	.align	16, 0x90
	.type	gimp_imagefile_set_mime_type,@function
gimp_imagefile_set_mime_type:           # @gimp_imagefile_set_mime_type
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_set_mime_type, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_imagefile_set_mime_type, .Lfunc_end7-gimp_imagefile_set_mime_type
	.cfi_endproc

	.globl	gimp_imagefile_update
	.align	16, 0x90
	.type	gimp_imagefile_update,@function
gimp_imagefile_update:                  # @gimp_imagefile_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_imagefile_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_update, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	movabsq	$.L.str.6, %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -24(%rbp)
	je	.LBB8_24
# BB#13:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	544(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB8_23
# BB#14:                                # %land.lhs.true.20
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_16
# BB#15:                                # %if.then.29
	movl	$0, -76(%rbp)
	jmp	.LBB8_21
.LBB8_16:                               # %if.else.30
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_19
# BB#17:                                # %land.lhs.true.33
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_19
# BB#18:                                # %if.then.37
	movl	$1, -76(%rbp)
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.38
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_20:                               # %if.end.40
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.41
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_23
# BB#22:                                # %if.then.44
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
.LBB8_23:                               # %if.end.47
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB8_24:                               # %if.end.48
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_imagefile_update, .Lfunc_end8-gimp_imagefile_update
	.cfi_endproc

	.globl	gimp_imagefile_create_thumbnail
	.align	16, 0x90
	.type	gimp_imagefile_create_thumbnail,@function
gimp_imagefile_create_thumbnail:        # @gimp_imagefile_create_thumbnail
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_create_thumbnail, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -28(%rbp)
	jmp	.LBB9_53
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -132(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -132(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_create_thumbnail, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -28(%rbp)
	jmp	.LBB9_53
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	cmpq	$0, -56(%rbp)
	je	.LBB9_34
# BB#26:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB9_28
# BB#27:                                # %if.then.49
	movl	$0, -156(%rbp)
	jmp	.LBB9_33
.LBB9_28:                               # %if.else.50
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_31
# BB#29:                                # %land.lhs.true.53
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_31
# BB#30:                                # %if.then.57
	movl	$1, -156(%rbp)
	jmp	.LBB9_32
.LBB9_31:                               # %if.else.58
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB9_32:                               # %if.end.60
	jmp	.LBB9_33
.LBB9_33:                               # %if.end.61
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB9_35
.LBB9_34:                               # %if.then.64
	jmp	.LBB9_36
.LBB9_35:                               # %if.else.65
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_create_thumbnail, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -28(%rbp)
	jmp	.LBB9_53
.LBB9_36:                               # %if.end.66
	jmp	.LBB9_37
.LBB9_37:                               # %do.end.67
	cmpl	$1, -60(%rbp)
	jge	.LBB9_39
# BB#38:                                # %if.then.69
	movl	$1, -28(%rbp)
	jmp	.LBB9_53
.LBB9_39:                               # %if.end.70
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_thumbnail_set_uri
	movq	-80(%rbp), %rdi
	callq	gimp_thumbnail_peek_image
	movl	%eax, -84(%rbp)
	cmpl	$1, -84(%rbp)
	je	.LBB9_41
# BB#40:                                # %lor.lhs.false.77
	cmpl	$5, -84(%rbp)
	jb	.LBB9_52
.LBB9_41:                               # %if.then.79
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movl	$-1, -204(%rbp)
	movl	$-1, -208(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	leaq	-192(%rbp), %r9
	leaq	-176(%rbp), %rdi
	leaq	-180(%rbp), %rcx
	leaq	-204(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-72(%rbp), %r11
	movq	(%r11), %r11
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	-80(%rbp), %r15
	movq	32(%r15), %r15
	movl	-60(%rbp), %r8d
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	movq	-240(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-264(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-256(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-248(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%r10, -280(%rbp)        # 8-byte Spill
	callq	file_open_thumbnail
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB9_43
# BB#42:                                # %if.then.91
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-192(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %ecx
	movl	-204(%rbp), %r8d
	movl	-208(%rbp), %r9d
	callq	gimp_thumbnail_set_info
	jmp	.LBB9_46
.LBB9_43:                               # %if.else.93
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	leaq	-212(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	-80(%rbp), %r11
	movq	32(%r11), %r11
	movq	-80(%rbp), %rbx
	movq	32(%rbx), %rbx
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movq	%rbx, %r8
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movq	-296(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	$0, 32(%rsp)
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	file_open_image
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB9_45
# BB#44:                                # %if.then.100
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-192(%rbp), %rsi
	movq	-168(%rbp), %rdx
	callq	gimp_thumbnail_set_info_from_image
.LBB9_45:                               # %if.end.102
	jmp	.LBB9_46
.LBB9_46:                               # %if.end.103
	cmpq	$0, -168(%rbp)
	je	.LBB9_48
# BB#47:                                # %if.then.105
	leaq	-200(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	callq	gimp_imagefile_save_thumb
	movl	%eax, -172(%rbp)
	movq	-168(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB9_49
.LBB9_48:                               # %if.else.107
	movabsq	$.L.str.9, %rsi
	leaq	-200(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	gimp_thumbnail_save_failure
	movl	%eax, -172(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_imagefile_update
.LBB9_49:                               # %if.end.109
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpl	$0, -172(%rbp)
	jne	.LBB9_51
# BB#50:                                # %if.then.111
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-200(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-200(%rbp), %rdi
	callq	g_clear_error
	movabsq	$.L.str.10, %rsi
	movl	$7, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB9_51:                               # %if.end.114
	movl	-172(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_53
.LBB9_52:                               # %if.end.115
	movl	$1, -28(%rbp)
.LBB9_53:                               # %return
	movl	-28(%rbp), %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_imagefile_create_thumbnail, .Lfunc_end9-gimp_imagefile_create_thumbnail
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_set_info,@function
gimp_thumbnail_set_info:                # @gimp_thumbnail_set_info
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_thumbnail_peek_image
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-8(%rbp), %r10
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r11d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	cmpl	$-1, -28(%rbp)
	je	.LBB10_4
# BB#1:                                 # %if.then
	callq	gimp_image_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_enum_get_desc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.34, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %if.end.5
	cmpl	$-1, -32(%rbp)
	je	.LBB10_6
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.35, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-32(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB10_6:                               # %if.end.8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_thumbnail_set_info, .Lfunc_end10-gimp_thumbnail_set_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_set_info_from_image,@function
gimp_thumbnail_set_info_from_image:     # @gimp_thumbnail_set_info_from_image
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp39:
	.cfi_offset %rbx, -48
.Ltmp40:
	.cfi_offset %r12, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_thumbnail_peek_image
	movq	-56(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_6
.LBB11_2:                               # %cond.false
	movq	-56(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$1, %eax
	jne	.LBB11_4
# BB#3:                                 # %cond.true.4
	movl	$2, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false.5
	movq	-56(%rbp), %rdi
	callq	gimp_image_base_type
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$4, %edx
	cmpl	$2, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB11_5:                               # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB11_6:                               # %cond.end.9
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_has_alpha
	cmpl	$0, %eax
	je	.LBB11_18
# BB#7:                                 # %if.then
	cmpl	$0, -68(%rbp)
	je	.LBB11_9
# BB#8:                                 # %lor.lhs.false
	cmpl	$1, -68(%rbp)
	jne	.LBB11_10
.LBB11_9:                               # %cond.true.14
	movl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB11_17
.LBB11_10:                              # %cond.false.15
	cmpl	$2, -68(%rbp)
	je	.LBB11_12
# BB#11:                                # %lor.lhs.false.17
	cmpl	$3, -68(%rbp)
	jne	.LBB11_13
.LBB11_12:                              # %cond.true.19
	movl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB11_16
.LBB11_13:                              # %cond.false.20
	movb	$1, %al
	cmpl	$4, -68(%rbp)
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB11_15
# BB#14:                                # %lor.rhs
	cmpl	$5, -68(%rbp)
	sete	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB11_15:                              # %lor.end
	movb	-89(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB11_16:                              # %cond.end.24
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB11_17:                              # %cond.end.26
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)
.LBB11_18:                              # %if.end
	callq	gimp_image_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_enum_get_desc
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movq	-64(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_get_n_layers
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movl	-120(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movl	%eax, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	g_object_set
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_thumbnail_set_info_from_image, .Lfunc_end11-gimp_thumbnail_set_info_from_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_save_thumb,@function
gimp_imagefile_save_thumb:              # @gimp_imagefile_save_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -76(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB12_26
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	cmpl	-28(%rbp), %eax
	jg	.LBB12_8
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	cmpl	-28(%rbp), %eax
	jg	.LBB12_8
# BB#4:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB12_6
# BB#5:                                 # %cond.true
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false
	movl	-72(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB12_7:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	jmp	.LBB12_18
.LBB12_8:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB12_13
# BB#9:                                 # %if.then.14
	movl	-28(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	$1, %ecx
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jle	.LBB12_11
# BB#10:                                # %cond.true.18
	movl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_11:                              # %cond.false.19
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-116(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-120(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-124(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB12_12:                              # %cond.end.24
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	jmp	.LBB12_17
.LBB12_13:                              # %if.else.26
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-128(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	$1, %ecx
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-136(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jle	.LBB12_15
# BB#14:                                # %cond.true.32
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB12_16
.LBB12_15:                              # %cond.false.33
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-144(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-152(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB12_16:                              # %cond.end.38
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
.LBB12_17:                              # %if.end.40
	jmp	.LBB12_18
.LBB12_18:                              # %if.end.41
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_get_new_pixbuf
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_20
# BB#19:                                # %if.then.49
	movl	$1, -4(%rbp)
	jmp	.LBB12_26
.LBB12_20:                              # %if.end.50
	movabsq	$.L.str.9, %rdx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rcx
	callq	gimp_thumbnail_save_thumb
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	cmpl	$0, -76(%rbp)
	je	.LBB12_25
# BB#21:                                # %if.then.53
	cmpl	$0, -32(%rbp)
	je	.LBB12_23
# BB#22:                                # %if.then.55
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_thumbnail_delete_others
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.56
	movq	-56(%rbp), %rdi
	callq	gimp_thumbnail_delete_failure
.LBB12_24:                              # %if.end.57
	movq	-16(%rbp), %rdi
	callq	gimp_imagefile_update
.LBB12_25:                              # %if.end.58
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_26:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_imagefile_save_thumb, .Lfunc_end12-gimp_imagefile_save_thumb
	.cfi_endproc

	.globl	gimp_imagefile_create_thumbnail_weak
	.align	16, 0x90
	.type	gimp_imagefile_create_thumbnail_weak,@function
gimp_imagefile_create_thumbnail_weak:   # @gimp_imagefile_create_thumbnail_weak
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_create_thumbnail_weak, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_24
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	cmpl	$1, -28(%rbp)
	jge	.LBB13_14
# BB#13:                                # %if.then.12
	jmp	.LBB13_24
.LBB13_14:                              # %if.end.13
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then.18
	jmp	.LBB13_24
.LBB13_16:                              # %if.end.19
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_imagefile_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gimp_imagefile_create_thumbnail
	cmpl	$0, %eax
	jne	.LBB13_18
# BB#17:                                # %if.then.24
	movabsq	$.L.str.10, %rsi
	movl	$7, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_18:                              # %if.end.25
	cmpq	$0, -8(%rbp)
	je	.LBB13_23
# BB#19:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB13_22
# BB#20:                                # %land.lhs.true.30
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_22
# BB#21:                                # %if.then.34
	movq	-8(%rbp), %rdi
	callq	gimp_imagefile_update
.LBB13_22:                              # %if.end.35
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB13_23:                              # %if.end.37
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB13_24:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_imagefile_create_thumbnail_weak, .Lfunc_end13-gimp_imagefile_create_thumbnail_weak
	.cfi_endproc

	.globl	gimp_imagefile_check_thumbnail
	.align	16, 0x90
	.type	gimp_imagefile_check_thumbnail,@function
gimp_imagefile_check_thumbnail:         # @gimp_imagefile_check_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_check_thumbnail, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.LBB14_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_thumbnail_check_thumb
	movl	%eax, -60(%rbp)
	cmpl	$8, -60(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_15
.LBB14_14:                              # %if.end.18
	movl	$1, -4(%rbp)
.LBB14_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_imagefile_check_thumbnail, .Lfunc_end14-gimp_imagefile_check_thumbnail
	.cfi_endproc

	.globl	gimp_imagefile_save_thumbnail
	.align	16, 0x90
	.type	gimp_imagefile_save_thumbnail,@function
gimp_imagefile_save_thumbnail:          # @gimp_imagefile_save_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -48(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_save_thumbnail, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_29
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_save_thumbnail, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_29
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB15_28
# BB#25:                                # %if.then.42
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_thumbnail_set_info_from_image
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	gimp_imagefile_save_thumb
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB15_27
# BB#26:                                # %if.then.45
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
.LBB15_27:                              # %if.end.47
	jmp	.LBB15_28
.LBB15_28:                              # %if.end.48
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB15_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_imagefile_save_thumbnail, .Lfunc_end15-gimp_imagefile_save_thumbnail
	.cfi_endproc

	.globl	gimp_imagefile_get_desc_string
	.align	16, 0x90
	.type	gimp_imagefile_get_desc_string,@function
gimp_imagefile_get_desc_string:         # @gimp_imagefile_get_desc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_imagefile_get_desc_string, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_62
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB16_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_62
.LBB16_14:                              # %if.end.16
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB16_19
# BB#63:                                # %if.end.16
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_15:                              # %sw.bb
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.LBB16_61
.LBB16_16:                              # %sw.bb.19
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.LBB16_61
.LBB16_17:                              # %sw.bb.23
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.LBB16_61
.LBB16_18:                              # %sw.bb.27
	movq	-32(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_strerror
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.LBB16_61
.LBB16_19:                              # %sw.default
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	.LBB16_21
# BB#20:                                # %if.then.35
	movabsq	$.L.str.14, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB16_21:                              # %if.end.38
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	jle	.LBB16_25
# BB#22:                                # %if.then.40
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_format_size
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_24
# BB#23:                                # %if.then.45
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB16_24:                              # %if.end.47
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_string_append
	movq	-72(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_free
.LBB16_25:                              # %if.end.49
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	addl	$-4, %ecx
	movl	%ecx, %eax
	subl	$4, %ecx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	ja	.LBB16_59
# BB#64:                                # %if.end.49
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_26:                              # %sw.bb.50
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_28
# BB#27:                                # %if.then.53
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB16_28:                              # %if.end.55
	movabsq	$.L.str.15, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB16_60
.LBB16_29:                              # %sw.bb.58
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_31
# BB#30:                                # %if.then.61
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB16_31:                              # %if.end.63
	movabsq	$.L.str.16, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB16_60
.LBB16_32:                              # %sw.bb.66
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_34
# BB#33:                                # %if.then.69
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB16_34:                              # %if.end.71
	movabsq	$.L.str.17, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB16_60
.LBB16_35:                              # %sw.bb.74
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_37
# BB#36:                                # %if.then.77
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB16_37:                              # %if.end.79
	movabsq	$.L.str.18, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB16_60
.LBB16_38:                              # %sw.bb.82
	movq	-32(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	.LBB16_42
# BB#39:                                # %if.then.85
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_41
# BB#40:                                # %if.then.88
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB16_41:                              # %if.end.90
	movabsq	$.L.str.19, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB16_42:                              # %if.end.93
	movq	-32(%rbp), %rax
	cmpl	$0, 68(%rax)
	jle	.LBB16_47
# BB#43:                                # %land.lhs.true.95
	movq	-32(%rbp), %rax
	cmpl	$0, 72(%rax)
	jle	.LBB16_47
# BB#44:                                # %if.then.97
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_46
# BB#45:                                # %if.then.100
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB16_46:                              # %if.end.102
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	72(%rcx), %rdx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	ngettext
	movq	-32(%rbp), %rcx
	movl	68(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	72(%rcx), %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_string_append_printf
.LBB16_47:                              # %if.end.107
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB16_51
# BB#48:                                # %if.then.109
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_50
# BB#49:                                # %if.then.113
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB16_50:                              # %if.end.115
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB16_51:                              # %if.end.119
	movq	-32(%rbp), %rax
	cmpl	$0, 88(%rax)
	jle	.LBB16_58
# BB#52:                                # %if.then.122
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB16_54
# BB#53:                                # %if.then.125
	movabsq	$.L.str.22, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	callq	g_string_append_len
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB16_57
.LBB16_54:                              # %if.else.127
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB16_56
# BB#55:                                # %if.then.131
	movl	$10, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB16_56:                              # %if.end.133
	jmp	.LBB16_57
.LBB16_57:                              # %if.end.134
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	88(%rcx), %rdx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	ngettext
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_string_append_printf
.LBB16_58:                              # %if.end.139
	jmp	.LBB16_60
.LBB16_59:                              # %sw.default.140
	jmp	.LBB16_60
.LBB16_60:                              # %sw.epilog
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_free
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.LBB16_61:                              # %sw.epilog.144
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_62:                              # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_imagefile_get_desc_string, .Lfunc_end16-gimp_imagefile_get_desc_string
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_15
	.quad	.LBB16_19
	.quad	.LBB16_16
	.quad	.LBB16_17
	.quad	.LBB16_18
.LJTI16_1:
	.quad	.LBB16_26
	.quad	.LBB16_29
	.quad	.LBB16_32
	.quad	.LBB16_35
	.quad	.LBB16_38

	.text
	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB17_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB17_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	g_string_append_c_inline, .Lfunc_end17-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_class_init,@function
gimp_imagefile_class_init:              # @gimp_imagefile_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp64:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.25, %rdi
	movl	$1, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_imagefile_get_description, %rsi
	movabsq	$gimp_imagefile_get_new_pixbuf, %rdi
	movabsq	$.L.str.25, %r8
	movabsq	$gimp_imagefile_name_changed, %r9
	movabsq	$gimp_imagefile_finalize, %r10
	movabsq	$gimp_imagefile_dispose, %r11
	movl	%eax, gimp_imagefile_signals
	movq	-24(%rbp), %rbx
	movq	%r11, 40(%rbx)
	movq	-24(%rbp), %r11
	movq	%r10, 48(%r11)
	movq	-32(%rbp), %r10
	movq	%r9, 144(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 168(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 240(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 248(%rdi)
	callq	gimp_image_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movabsq	$.L.str.26, %rdi
	movl	$2, %esi
	movl	$8, %edx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_thumb_init
	movq	-48(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$48, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_type_class_add_private
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_imagefile_class_init, .Lfunc_end18-gimp_imagefile_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_dispose,@function
gimp_imagefile_dispose:                 # @gimp_imagefile_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_cancellable_cancel
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB19_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_imagefile_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_imagefile_dispose, .Lfunc_end19-gimp_imagefile_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_finalize,@function
gimp_imagefile_finalize:                # @gimp_imagefile_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB20_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB20_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
.LBB20_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB20_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB20_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB20_6:                               # %if.end.11
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB20_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB20_8:                               # %if.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_imagefile_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_imagefile_finalize, .Lfunc_end20-gimp_imagefile_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_name_changed,@function
gimp_imagefile_name_changed:            # @gimp_imagefile_name_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	gimp_imagefile_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 144(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	gimp_imagefile_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_thumbnail_set_uri
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_imagefile_name_changed, .Lfunc_end21-gimp_imagefile_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_get_new_pixbuf,@function
gimp_imagefile_get_new_pixbuf:          # @gimp_imagefile_get_new_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	cmpq	$0, %rax
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_imagefile_load_thumb
	movq	%rax, -8(%rbp)
.LBB22_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_imagefile_get_new_pixbuf, .Lfunc_end22-gimp_imagefile_get_new_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_get_description,@function
gimp_imagefile_get_description:         # @gimp_imagefile_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB23_11
.LBB23_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB23_7
# BB#3:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	file_utils_uri_display_name
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_imagefile_get_desc_string
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB23_5
# BB#4:                                 # %if.then.11
	movabsq	$.L.str.28, %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB23_6
.LBB23_5:                               # %if.else
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB23_6:                               # %if.end.13
	jmp	.LBB23_7
.LBB23_7:                               # %if.end.14
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 68(%rax)
	jle	.LBB23_10
# BB#8:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 72(%rax)
	jle	.LBB23_10
# BB#9:                                 # %if.then.18
	movabsq	$.L.str.29, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	68(%rax), %edx
	movq	-48(%rbp), %rax
	movl	72(%rax), %ecx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB23_10:                              # %if.end.22
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_imagefile_get_description, .Lfunc_end23-gimp_imagefile_get_description
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_imagefile_load_thumb,@function
gimp_imagefile_load_thumb:              # @gimp_imagefile_load_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-24(%rbp), %edx
	jle	.LBB24_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB24_3
.LBB24_2:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB24_3:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_thumbnail_peek_thumb
	cmpl	$5, %eax
	jae	.LBB24_5
# BB#4:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB24_17
.LBB24_5:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$4, 24(%rax)
	jne	.LBB24_7
# BB#6:                                 # %if.then.6
	movq	$0, -8(%rbp)
	jmp	.LBB24_17
.LBB24_7:                               # %if.end.7
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_thumbnail_load_thumb
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB24_11
# BB#8:                                 # %if.then.9
	cmpq	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.11
	movabsq	$.L.str.27, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-40(%rbp), %rdi
	movq	104(%rdi), %r8
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %r9
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
.LBB24_10:                              # %if.end.13
	movq	$0, -8(%rbp)
	jmp	.LBB24_17
.LBB24_11:                              # %if.end.14
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	$1, %r8d
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-72(%rbp), %r9
	leaq	-76(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	movl	-68(%rbp), %esi
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r10d
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%r10d, %ecx
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	movl	-72(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.LBB24_13
# BB#12:                                # %lor.lhs.false
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB24_14
.LBB24_13:                              # %if.then.19
	movl	$2, %ecx
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	gdk_pixbuf_scale_simple
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -68(%rbp)
.LBB24_14:                              # %if.end.21
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	cmpl	$3, %eax
	je	.LBB24_16
# BB#15:                                # %if.then.24
	xorl	%eax, %eax
	movl	$8, %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gdk_pixbuf_new
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI24_0, %xmm1        # xmm1 = mem[0],zero
	movl	$255, %edx
	movl	$4, %esi
	movl	$1717986918, %edi       # imm = 0x66666666
	movl	$2576980377, %r8d       # imm = 0x99999999
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %r9
	movl	-64(%rbp), %r10d
	movl	-68(%rbp), %r11d
	movl	%edi, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-176(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$255, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$4, 32(%rsp)
	movl	$1717986918, 40(%rsp)   # imm = 0x66666666
	movl	$-1717986919, 48(%rsp)  # imm = 0xFFFFFFFF99999999
	callq	gdk_pixbuf_composite_color
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB24_16:                              # %if.end.26
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_imagefile_load_thumb, .Lfunc_end24-gimp_imagefile_load_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_notify_thumbnail,@function
gimp_imagefile_notify_thumbnail:        # @gimp_imagefile_notify_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	$.L.str.31, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB25_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB25_3
.LBB25_2:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_imagefile_info_changed
.LBB25_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_imagefile_notify_thumbnail, .Lfunc_end25-gimp_imagefile_notify_thumbnail
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_imagefile_info_changed,@function
gimp_imagefile_info_changed:            # @gimp_imagefile_info_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB26_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB26_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
.LBB26_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB26_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB26_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB26_6:                               # %if.end.13
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_imagefile_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_imagefile_info_changed, .Lfunc_end26-gimp_imagefile_info_changed
	.cfi_endproc

	.type	gimp_imagefile_get_type.g_define_type_id__volatile,@object # @gimp_imagefile_get_type.g_define_type_id__volatile
	.local	gimp_imagefile_get_type.g_define_type_id__volatile
	.comm	gimp_imagefile_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImagefile"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_imagefile_new,@object # @__func__.gimp_imagefile_new
.L__func__.gimp_imagefile_new:
	.asciz	"gimp_imagefile_new"
	.size	.L__func__.gimp_imagefile_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L__func__.gimp_imagefile_get_thumbnail,@object # @__func__.gimp_imagefile_get_thumbnail
.L__func__.gimp_imagefile_get_thumbnail:
	.asciz	"gimp_imagefile_get_thumbnail"
	.size	.L__func__.gimp_imagefile_get_thumbnail, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_IMAGEFILE (imagefile)"
	.size	.L.str.3, 30

	.type	.L__func__.gimp_imagefile_get_gicon,@object # @__func__.gimp_imagefile_get_gicon
.L__func__.gimp_imagefile_get_gicon:
	.asciz	"gimp_imagefile_get_gicon"
	.size	.L__func__.gimp_imagefile_get_gicon, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"standard::icon"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_imagefile_set_mime_type,@object # @__func__.gimp_imagefile_set_mime_type
.L__func__.gimp_imagefile_set_mime_type:
	.asciz	"gimp_imagefile_set_mime_type"
	.size	.L__func__.gimp_imagefile_set_mime_type, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image-mimetype"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_imagefile_update,@object # @__func__.gimp_imagefile_update
.L__func__.gimp_imagefile_update:
	.asciz	"gimp_imagefile_update"
	.size	.L__func__.gimp_imagefile_update, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image-uri"
	.size	.L.str.6, 10

	.type	.L__func__.gimp_imagefile_create_thumbnail,@object # @__func__.gimp_imagefile_create_thumbnail
.L__func__.gimp_imagefile_create_thumbnail:
	.asciz	"gimp_imagefile_create_thumbnail"
	.size	.L__func__.gimp_imagefile_create_thumbnail, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.8, 48

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP 2.8.18"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"thumb-state"
	.size	.L.str.10, 12

	.type	.L__func__.gimp_imagefile_create_thumbnail_weak,@object # @__func__.gimp_imagefile_create_thumbnail_weak
.L__func__.gimp_imagefile_create_thumbnail_weak:
	.asciz	"gimp_imagefile_create_thumbnail_weak"
	.size	.L__func__.gimp_imagefile_create_thumbnail_weak, 37

	.type	.L__func__.gimp_imagefile_check_thumbnail,@object # @__func__.gimp_imagefile_check_thumbnail
.L__func__.gimp_imagefile_check_thumbnail:
	.asciz	"gimp_imagefile_check_thumbnail"
	.size	.L__func__.gimp_imagefile_check_thumbnail, 31

	.type	.L__func__.gimp_imagefile_save_thumbnail,@object # @__func__.gimp_imagefile_save_thumbnail
.L__func__.gimp_imagefile_save_thumbnail:
	.asciz	"gimp_imagefile_save_thumbnail"
	.size	.L__func__.gimp_imagefile_save_thumbnail, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.11, 22

	.type	.L__func__.gimp_imagefile_get_desc_string,@object # @__func__.gimp_imagefile_get_desc_string
.L__func__.gimp_imagefile_get_desc_string:
	.asciz	"gimp_imagefile_get_desc_string"
	.size	.L__func__.gimp_imagefile_get_desc_string, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Folder"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Special File"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Remote File"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Click to create preview"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Loading preview..."
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Preview is out of date"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Cannot create preview"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(Preview may be out of date)"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%d \303\227 %d pixel"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%d \303\227 %d pixels"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	", "
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%d layer"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%d layers"
	.size	.L.str.24, 10

	.type	gimp_imagefile_parent_class,@object # @gimp_imagefile_parent_class
	.local	gimp_imagefile_parent_class
	.comm	gimp_imagefile_parent_class,8,8
	.type	GimpImagefile_private_offset,@object # @GimpImagefile_private_offset
	.local	GimpImagefile_private_offset
	.comm	GimpImagefile_private_offset,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"info-changed"
	.size	.L.str.25, 13

	.type	gimp_imagefile_signals,@object # @gimp_imagefile_signals
	.local	gimp_imagefile_signals
	.comm	gimp_imagefile_signals,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-%d.%d"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Could not open thumbnail '%s': %s"
	.size	.L.str.27, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s\n%s"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s (%d \303\227 %d)"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"notify"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"image-state"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"image-width"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"image-height"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"image-type"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"image-num-layers"
	.size	.L.str.35, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
