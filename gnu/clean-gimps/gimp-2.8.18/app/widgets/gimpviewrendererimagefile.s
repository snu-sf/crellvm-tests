	.text
	.file	"gimpviewrendererimagefile.bc"
	.globl	gimp_view_renderer_imagefile_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_imagefile_get_type,@function
gimp_view_renderer_imagefile_get_type:  # @gimp_view_renderer_imagefile_get_type
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
	movq	gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_view_renderer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$200, %edx
	movabsq	$gimp_view_renderer_imagefile_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_view_renderer_imagefile_init, %rcx
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
	movabsq	$gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_imagefile_get_type, .Lfunc_end0-gimp_view_renderer_imagefile_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_imagefile_class_intern_init,@function
gimp_view_renderer_imagefile_class_intern_init: # @gimp_view_renderer_imagefile_class_intern_init
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
	movq	%rax, gimp_view_renderer_imagefile_parent_class
	cmpl	$0, GimpViewRendererImagefile_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererImagefile_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_imagefile_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_imagefile_class_intern_init, .Lfunc_end1-gimp_view_renderer_imagefile_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_imagefile_init,@function
gimp_view_renderer_imagefile_init:      # @gimp_view_renderer_imagefile_init
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
	.size	gimp_view_renderer_imagefile_init, .Lfunc_end2-gimp_view_renderer_imagefile_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_imagefile_class_init,@function
gimp_view_renderer_imagefile_class_init: # @gimp_view_renderer_imagefile_class_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_view_renderer_imagefile_render, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_imagefile_class_init, .Lfunc_end3-gimp_view_renderer_imagefile_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_imagefile_render,@function
gimp_view_renderer_imagefile_render:    # @gimp_view_renderer_imagefile_render
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	gimp_view_renderer_get_frame_pixbuf
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	52(%rax), %ecx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jge	.LBB4_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB4_4:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_view_renderer_imagefile_get_icon
	movq	%rax, -24(%rbp)
.LBB4_5:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_render_pixbuf
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	jmp	.LBB4_8
.LBB4_7:                                # %if.else
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_view_renderer_render_stock
.LBB4_8:                                # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_imagefile_render, .Lfunc_end4-gimp_view_renderer_imagefile_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_imagefile_get_icon,@function
gimp_view_renderer_imagefile_get_icon:  # @gimp_view_renderer_imagefile_get_icon
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_icon_theme_get_for_screen
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_imagefile_get_thumbnail
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	cmpq	$0, %rax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB5_16
.LBB5_2:                                # %if.end
	cmpq	$0, -64(%rbp)
	jne	.LBB5_8
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	gimp_imagefile_get_gicon
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_7
# BB#4:                                 # %if.then.8
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gtk_icon_theme_lookup_by_gicon
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	gtk_icon_info_load_icon
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_icon_info_free
.LBB5_6:                                # %if.end.13
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.14
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.15
	cmpq	$0, -64(%rbp)
	jne	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB5_11
# BB#10:                                # %if.then.18
	movq	-56(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	get_icon_for_mime_type
	movq	%rax, -64(%rbp)
.LBB5_11:                               # %if.end.21
	cmpq	$0, -64(%rbp)
	jne	.LBB5_15
# BB#12:                                # %if.then.23
	movabsq	$.L.str.1, %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.24
	movabsq	$.L.str.2, %rax
	movq	%rax, -88(%rbp)
.LBB5_14:                               # %if.end.25
	movl	$4, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gtk_icon_theme_load_icon
	movq	%rax, -64(%rbp)
.LBB5_15:                               # %if.end.27
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_renderer_imagefile_get_icon, .Lfunc_end5-gimp_view_renderer_imagefile_get_icon
	.cfi_endproc

	.align	16, 0x90
	.type	get_icon_for_mime_type,@function
get_icon_for_mime_type:                 # @get_icon_for_mime_type
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
	subq	$144, %rsp
	movl	$47, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	callq	gtk_icon_theme_get_default
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	callq	g_string_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	callq	g_string_append_len
	movl	$45, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_string_append
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_icon_theme_load_icon
	movl	$1, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_string_free
	cmpq	$0, -56(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB6_4
# BB#3:                                 # %if.then.9
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_4:                                # %if.end.10
	movabsq	$.L.str.3, %rdi
	callq	g_string_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	g_string_append_len
	movl	$45, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_string_append
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_icon_theme_load_icon
	movl	$1, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_string_free
	cmpq	$0, -56(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB6_6
# BB#5:                                 # %if.then.23
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.end.24
	movabsq	$.L.str.3, %rdi
	callq	g_string_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	g_string_append_len
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_icon_theme_load_icon
	movl	$1, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movq	-56(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB6_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_icon_for_mime_type, .Lfunc_end6-get_icon_for_mime_type
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB7_2
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
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_string_append_c_inline, .Lfunc_end7-g_string_append_c_inline
	.cfi_endproc

	.type	gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_imagefile_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererImagefile"
	.size	.L.str, 26

	.type	gimp_view_renderer_imagefile_parent_class,@object # @gimp_view_renderer_imagefile_parent_class
	.local	gimp_view_renderer_imagefile_parent_class
	.comm	gimp_view_renderer_imagefile_parent_class,8,8
	.type	GimpViewRendererImagefile_private_offset,@object # @GimpViewRendererImagefile_private_offset
	.local	GimpViewRendererImagefile_private_offset
	.comm	GimpViewRendererImagefile_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk-file"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-directory"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gnome-mime-"
	.size	.L.str.3, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
