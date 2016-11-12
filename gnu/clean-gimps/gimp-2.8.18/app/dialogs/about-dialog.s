	.text
	.file	"about-dialog.bc"
	.globl	about_dialog_create
	.align	16, 0x90
	.type	about_dialog_create,@function
about_dialog_create:                    # @about_dialog_create
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
	subq	$584, %rsp              # imm = 0x248
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
	movq	%rdi, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.about_dialog_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	cmpq	$0, about_dialog_create.dialog
	jne	.LBB0_26
# BB#13:                                # %if.then.12
	movl	$101, about_dialog_create.dialog+24
	callq	about_dialog_load_logo
	movabsq	$.L.str.2, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	callq	gtk_about_dialog_get_type
	movabsq	$.L.str.8, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-120(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.11, %r10
	movabsq	$.L.str.12, %r11
	movabsq	$.L.str.13, %rbx
	movabsq	$.L.str.14, %r14
	movabsq	$.L.str.16, %r15
	movabsq	$.L.str.18, %r12
	movabsq	$.L.str.19, %r13
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movabsq	$.L.str.20, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movabsq	$.L.str.21, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movabsq	$.L.str.22, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movabsq	$.L.str.24, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movabsq	$authors, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movabsq	$.L.str.25, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movabsq	$artists, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movabsq	$.L.str.26, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movabsq	$documenters, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movabsq	$.L.str.27, %rax
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	%r15, 72(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%r12, 88(%rsp)
	movl	$1, 96(%rsp)
	movq	%r13, 104(%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 112(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 120(%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 128(%rsp)
	movq	-240(%rbp), %r11        # 8-byte Reload
	movq	%r11, 136(%rsp)
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 144(%rsp)
	movq	-248(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 152(%rsp)
	movq	-256(%rbp), %r14        # 8-byte Reload
	movq	%r14, 160(%rsp)
	movq	-264(%rbp), %r15        # 8-byte Reload
	movq	%r15, 168(%rsp)
	movq	-272(%rbp), %r12        # 8-byte Reload
	movq	%r12, 176(%rsp)
	movq	-280(%rbp), %r13        # 8-byte Reload
	movq	%r13, 184(%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 200(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 208(%rsp)
	movq	$0, 216(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -88(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.30
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_15:                               # %if.end.31
	movq	-120(%rbp), %rdi
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	movq	%rdi, about_dialog_create.dialog
	movq	-88(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$about_dialog_create.dialog, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.28, %rsi
	movabsq	$gtk_widget_destroy, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-328(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$about_dialog_map, %rcx
	movabsq	$about_dialog_create.dialog, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$about_dialog_unmap, %rcx
	movabsq	$about_dialog_create.dialog, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_17
# BB#16:                                # %if.then.50
	movl	$0, -140(%rbp)
	jmp	.LBB0_22
.LBB0_17:                               # %if.else.51
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_20
# BB#18:                                # %land.lhs.true.54
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_20
# BB#19:                                # %if.then.58
	movl	$1, -140(%rbp)
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.59
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_21:                               # %if.end.61
	jmp	.LBB0_22
.LBB0_22:                               # %if.end.62
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_24
# BB#23:                                # %if.then.65
	movabsq	$about_dialog_create.dialog, %rsi
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	about_dialog_add_animation
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.67
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movb	$0, %al
	callq	g_warning
.LBB0_25:                               # %if.end.68
	movq	-112(%rbp), %rdi
	callq	g_list_free
.LBB0_26:                               # %if.end.69
	movq	about_dialog_create.dialog, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	movq	about_dialog_create.dialog, %rax
	movq	%rax, -48(%rbp)
.LBB0_27:                               # %return
	movq	-48(%rbp), %rax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	about_dialog_create, .Lfunc_end0-about_dialog_create
	.cfi_endproc

	.align	16, 0x90
	.type	about_dialog_load_logo,@function
about_dialog_load_logo:                 # @about_dialog_load_logo
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
	callq	gimp_data_directory
	movabsq	$.L.str.141, %rsi
	movabsq	$.L.str.142, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_new_from_file
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	about_dialog_load_logo, .Lfunc_end1-about_dialog_load_logo
	.cfi_endproc

	.align	16, 0x90
	.type	about_dialog_map,@function
about_dialog_map:                       # @about_dialog_map
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 432(%rax)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$0, 452(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 436(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 440(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 456(%rax)
	movq	-16(%rbp), %rdi
	callq	about_dialog_reshuffle
	movl	$800, %edi              # imm = 0x320
	movabsq	$about_dialog_timer, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-16(%rbp), %rdx
	movl	%eax, 432(%rdx)
.LBB2_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	about_dialog_map, .Lfunc_end2-about_dialog_map
	.cfi_endproc

	.align	16, 0x90
	.type	about_dialog_unmap,@function
about_dialog_unmap:                     # @about_dialog_unmap
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 432(%rsi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	432(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 432(%rcx)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB3_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	about_dialog_unmap, .Lfunc_end3-about_dialog_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	about_dialog_add_animation,@function
about_dialog_add_animation:             # @about_dialog_add_animation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gtk_drawing_area_new
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_create_pango_layout
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_object_weak_ref
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.143, %rsi
	movabsq	$about_dialog_anim_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	about_dialog_add_animation, .Lfunc_end4-about_dialog_add_animation
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB5_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	about_dialog_reshuffle,@function
about_dialog_reshuffle:                 # @about_dialog_reshuffle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	g_rand_new
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 28(%rdx,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movl	$4, -20(%rbp)
.LBB6_5:                                # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB6_10
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$4, %esi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	callq	g_rand_int_range
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.LBB6_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	28(%rcx,%rax,4), %edx
	movl	%edx, -28(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	28(%rcx,%rax,4), %edx
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 28(%rcx,%rax,4)
	movl	-28(%rbp), %edx
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 28(%rcx,%rax,4)
.LBB6_8:                                # %if.end
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc.20
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_5
.LBB6_10:                               # %for.end.22
	movq	-16(%rbp), %rdi
	callq	g_rand_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	about_dialog_reshuffle, .Lfunc_end6-about_dialog_reshuffle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	about_dialog_timer,@function
about_dialog_timer:                     # @about_dialog_timer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$0, 440(%rdi)
	jne	.LBB7_15
# BB#1:                                 # %if.then
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 456(%rax)
	movq	-24(%rbp), %rax
	movl	452(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_34
.LBB7_34:                               # %if.then
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_35
.LBB7_35:                               # %if.then
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB7_4
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb
	movl	$30, %edi
	movabsq	$about_dialog_timer, %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-24(%rbp), %rdx
	movl	%eax, 432(%rdx)
	movq	-24(%rbp), %rdx
	movl	452(%rdx), %eax
	addl	$1, %eax
	movl	%eax, 452(%rdx)
	movl	$0, -4(%rbp)
	jmp	.LBB7_33
.LBB7_3:                                # %sw.bb.2
	movabsq	$.L.str.136, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	insert_spacers
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	452(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 452(%rax)
	jmp	.LBB7_9
.LBB7_4:                                # %sw.bb.7
	movq	-24(%rbp), %rax
	movl	436(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB7_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movl	$0, 436(%rax)
.LBB7_6:                                # %if.end
	movq	-24(%rbp), %rax
	movslq	436(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	28(%rcx,%rax,4), %rax
	movq	authors(,%rax,8), %rdi
	callq	insert_spacers
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	436(%rax), %edx
	addl	$1, %edx
	movl	%edx, 436(%rax)
	jmp	.LBB7_9
.LBB7_7:                                # %sw.default
	jmp	.LBB7_8
.LBB7_8:                                # %do.body
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.137, %rdx
	movabsq	$.L.str.138, %rcx
	movl	$534, %r8d              # imm = 0x216
	movabsq	$.L__func__.about_dialog_timer, %r9
	movb	$0, %al
	callq	g_log
	movl	$1, -4(%rbp)
	jmp	.LBB7_33
.LBB7_9:                                # %sw.epilog
	jmp	.LBB7_10
.LBB7_10:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.19
	jmp	.LBB7_13
.LBB7_12:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.about_dialog_timer, %rsi
	movabsq	$.L.str.139, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB7_33
.LBB7_13:                               # %if.end.20
	jmp	.LBB7_14
.LBB7_14:                               # %do.end.21
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	pango_layout_set_text
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	pango_layout_set_attributes
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB7_15:                               # %if.end.23
	movq	-24(%rbp), %rax
	cmpl	$16, 440(%rax)
	jge	.LBB7_17
# BB#16:                                # %if.then.26
	movl	$2, %esi
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2ssl	440(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	decorate_text
	jmp	.LBB7_30
.LBB7_17:                               # %if.else.29
	movq	-24(%rbp), %rax
	cmpl	$16, 440(%rax)
	jne	.LBB7_19
# BB#18:                                # %if.then.33
	movl	$800, -28(%rbp)         # imm = 0x320
	jmp	.LBB7_29
.LBB7_19:                               # %if.else.34
	movq	-24(%rbp), %rax
	cmpl	$17, 440(%rax)
	jne	.LBB7_21
# BB#20:                                # %if.then.38
	movl	$30, -28(%rbp)
	jmp	.LBB7_28
.LBB7_21:                               # %if.else.39
	movq	-24(%rbp), %rax
	cmpl	$33, 440(%rax)
	jge	.LBB7_23
# BB#22:                                # %if.then.43
	movl	$1, %esi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	440(%rax), %ecx
	subl	$17, %ecx
	cvtsi2ssl	%ecx, %xmm2
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	callq	decorate_text
	jmp	.LBB7_27
.LBB7_23:                               # %if.else.49
	movq	-24(%rbp), %rax
	cmpl	$33, 440(%rax)
	jne	.LBB7_25
# BB#24:                                # %if.then.53
	movq	-24(%rbp), %rax
	movl	$0, 456(%rax)
	movl	$300, -28(%rbp)         # imm = 0x12C
	jmp	.LBB7_26
.LBB7_25:                               # %if.else.55
	movq	-24(%rbp), %rax
	movl	$0, 456(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 440(%rax)
	movl	$30, -28(%rbp)
.LBB7_26:                               # %if.end.58
	jmp	.LBB7_27
.LBB7_27:                               # %if.end.59
	jmp	.LBB7_28
.LBB7_28:                               # %if.end.60
	jmp	.LBB7_29
.LBB7_29:                               # %if.end.61
	jmp	.LBB7_30
.LBB7_30:                               # %if.end.62
	movq	-24(%rbp), %rax
	movl	440(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 440(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_queue_draw
	cmpl	$0, -28(%rbp)
	jle	.LBB7_32
# BB#31:                                # %if.then.66
	movabsq	$about_dialog_timer, %rsi
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-24(%rbp), %rdx
	movl	%eax, 432(%rdx)
	movl	$0, -4(%rbp)
	jmp	.LBB7_33
.LBB7_32:                               # %if.end.69
	movl	$1, -4(%rbp)
.LBB7_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	about_dialog_timer, .Lfunc_end7-about_dialog_timer
	.cfi_endproc

	.align	16, 0x90
	.type	insert_spacers,@function
insert_spacers:                         # @insert_spacers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movq	$-1, %rsi
	movl	$1, %edx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_utf8_normalize
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	g_string_append_unichar
	movl	$8203, %esi             # imm = 0x200B
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_string_append_unichar
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %esi
	movslq	%esi, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -32(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	movq	-24(%rbp), %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	insert_spacers, .Lfunc_end8-insert_spacers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4624633867356078080     # double 15
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI9_3:
	.quad	4616189618054758400     # double 4
.LCPI9_4:
	.quad	4670677016280825856     # double 18000
.LCPI9_5:
	.quad	4602678819172646912     # double 0.5
.LCPI9_6:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	decorate_text,@function
decorate_text:                          # @decorate_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gtk_widget_get_style
	leaq	-136(%rbp), %rdx
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edi
	leaq	-120(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -80(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	callq	memset
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-32(%rbp), %rax
	addq	$84, %rax
	movq	-32(%rbp), %rdx
	addq	$24, %rdx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	mix_colors
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	pango_layout_get_text
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.decorate_text, %rsi
	movabsq	$.L.str.139, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_33
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-40(%rbp), %rdi
	movq	$-1, %rsi
	callq	g_utf8_strlen
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	callq	pango_attr_list_new
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 444(%rax)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 448(%rax)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	ja	.LBB9_31
# BB#34:                                # %do.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_6:                                # %sw.bb
	movw	-132(%rbp), %ax
	movw	-130(%rbp), %cx
	movzwl	%ax, %edi
	movzwl	%cx, %esi
	movzwl	-128(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 8(%rax)
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	pango_attr_list_insert
	jmp	.LBB9_32
.LBB9_7:                                # %sw.bb.11
	movw	-132(%rbp), %ax
	movw	-130(%rbp), %cx
	movzwl	%ax, %edi
	movzwl	%cx, %esi
	movzwl	-128(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 8(%rax)
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	pango_attr_list_change
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -64(%rbp)
.LBB9_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB9_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -68(%rbp)
	cmpl	$8203, -72(%rbp)        # imm = 0x200B
	jne	.LBB9_11
# BB#10:                                # %if.then.25
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-104(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	movsd	.LCPI9_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_1, %xmm3         # xmm3 = mem[0],zero
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -112(%rbp)
	callq	pango_attr_shape_new
	movq	%rax, -88(%rbp)
	movl	-64(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-68(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	pango_attr_list_change
.LBB9_11:                               # %if.end.31
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_8
.LBB9_12:                               # %while.end
	jmp	.LBB9_32
.LBB9_13:                               # %sw.bb.32
	movw	-132(%rbp), %ax
	movw	-130(%rbp), %cx
	movzwl	%ax, %edi
	movzwl	%cx, %esi
	movzwl	-128(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 8(%rax)
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	pango_attr_list_change
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -64(%rbp)
.LBB9_14:                               # %while.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB9_18
# BB#15:                                # %while.body.42
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$8203, -72(%rbp)        # imm = 0x200B
	jne	.LBB9_17
# BB#16:                                # %if.then.45
                                        #   in Loop: Header=BB9_14 Depth=1
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_1, %xmm3         # xmm3 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -68(%rbp)
	subsd	-24(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	-24(%rbp), %xmm1
	cvtsi2ssl	-52(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm3, -208(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	pango_attr_rise_new
	movq	%rax, -88(%rbp)
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	pango_attr_list_change
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movl	-68(%rbp), %edx
	movl	%edx, -64(%rbp)
.LBB9_17:                               # %if.end.63
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_14
.LBB9_18:                               # %while.end.69
	jmp	.LBB9_32
.LBB9_19:                               # %sw.bb.70
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -64(%rbp)
.LBB9_20:                               # %while.cond.71
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB9_30
# BB#21:                                # %while.body.74
                                        #   in Loop: Header=BB9_20 Depth=1
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	-56(%rbp), %eax
	addl	$15, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-24(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -140(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB9_23
# BB#22:                                # %if.then.82
                                        #   in Loop: Header=BB9_20 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB9_27
.LBB9_23:                               # %if.else.83
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	-52(%rbp), %eax
	movl	-140(%rbp), %ecx
	addl	$15, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_25
# BB#24:                                # %if.then.87
                                        #   in Loop: Header=BB9_20 Depth=1
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB9_26
.LBB9_25:                               # %if.else.88
                                        #   in Loop: Header=BB9_20 Depth=1
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	subl	-140(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
.LBB9_26:                               # %if.end.91
                                        #   in Loop: Header=BB9_20 Depth=1
	jmp	.LBB9_27
.LBB9_27:                               # %if.end.92
                                        #   in Loop: Header=BB9_20 Depth=1
	leaq	-136(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-32(%rbp), %rcx
	addq	$84, %rcx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	mix_colors
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %r8d
	movl	%r8d, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %r8d
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %r8d
	movl	%r8d, -68(%rbp)
	movw	-132(%rbp), %r9w
	movw	-130(%rbp), %r10w
	movzwl	%r9w, %edi
	movzwl	%r10w, %esi
	movzwl	-128(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -88(%rbp)
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	pango_attr_list_change
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB9_29
# BB#28:                                # %if.then.116
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 448(%rcx)
.LBB9_29:                               # %if.end.119
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_20
.LBB9_30:                               # %while.end.121
	jmp	.LBB9_32
.LBB9_31:                               # %sw.default
	movabsq	$.L.str.140, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_printerr
.LBB9_32:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	pango_layout_set_attributes
	movq	-80(%rbp), %rdi
	callq	pango_attr_list_unref
.LBB9_33:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	decorate_text, .Lfunc_end9-decorate_text
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_13
	.quad	.LBB9_19

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	mix_colors,@function
mix_colors:                             # @mix_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movzwl	4(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm1
	movq	-16(%rbp), %rdx
	movzwl	4(%rdx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, 4(%rdx)
	movq	-8(%rbp), %rdx
	movzwl	6(%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movq	-16(%rbp), %rdx
	movzwl	6(%rdx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, 6(%rdx)
	movq	-8(%rbp), %rdx
	movzwl	8(%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movq	-16(%rbp), %rdx
	movzwl	8(%rdx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, 8(%rdx)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mix_colors, .Lfunc_end10-mix_colors
	.cfi_endproc

	.align	16, 0x90
	.type	about_dialog_anim_expose,@function
about_dialog_anim_expose:               # @about_dialog_anim_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 456(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$324, %rax              # imm = 0x144
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movl	$2, %ecx
	movl	-56(%rbp), %r8d
	subl	-76(%rbp), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%eax, -68(%rbp)
	movl	-52(%rbp), %eax
	subl	-80(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rsi
	cmpl	$0, 448(%rsi)
	jle	.LBB11_4
# BB#3:                                 # %if.then.7
	movl	$1, %r8d
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	$444, %rax              # imm = 0x1BC
	movq	%rax, %rcx
	callq	gdk_pango_layout_get_clip_region
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_region_intersect
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gdk_cairo_region
	movq	-48(%rbp), %rdi
	callq	cairo_clip
	movq	-88(%rbp), %rdi
	callq	gdk_region_destroy
.LBB11_4:                               # %if.end.11
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-68(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	callq	cairo_move_to
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-48(%rbp), %rdi
	callq	cairo_destroy
	movl	$0, -4(%rbp)
.LBB11_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	about_dialog_anim_expose, .Lfunc_end11-about_dialog_anim_expose
	.cfi_endproc

	.type	about_dialog_create.dialog,@object # @about_dialog_create.dialog
	.local	about_dialog_create.dialog
	.comm	about_dialog_create.dialog,464,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.about_dialog_create,@object # @__func__.about_dialog_create
.L__func__.about_dialog_create:
	.asciz	"about_dialog_create"
	.size	.L__func__.about_dialog_create, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Copyright \302\251 1995-%s\nSpencer Kimball, Peter Mattis and the GIMP Development Team"
	.size	.L.str.2, 81

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2016"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"role"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-about"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"window-position"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"title"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"About GIMP"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"program-name"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"version"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2.8.18"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"copyright"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"comments"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"license"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.\n\nGIMP is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License along with GIMP. If not, see: http://www.gnu.org/licenses/"
	.size	.L.str.17, 585

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"wrap-license"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"logo"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"website"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"http://www.gimp.org/"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"website-label"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Visit the GIMP website"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"authors"
	.size	.L.str.24, 8

	.type	authors,@object         # @authors
	.section	.rodata,"a",@progbits
	.align	16
authors:
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	0
	.size	authors, 816

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"artists"
	.size	.L.str.25, 8

	.type	artists,@object         # @artists
	.section	.rodata,"a",@progbits
	.align	16
artists:
	.quad	.L.str.51
	.quad	.L.str.99
	.quad	.L.str.118
	.quad	.L.str.134
	.quad	0
	.size	artists, 40

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"documenters"
	.size	.L.str.26, 12

	.type	documenters,@object     # @documenters
	.section	.rodata,"a",@progbits
	.align	16
documenters:
	.quad	.L.str.46
	.quad	.L.str.49
	.quad	.L.str.54
	.quad	.L.str.71
	.quad	.L.str.135
	.quad	0
	.size	documenters, 48

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"translator-credits"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"response"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"map"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"unmap"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s: ooops, no box in this container?"
	.size	.L.str.31, 37

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"about-dialog.c:164"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Spencer Kimball"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Peter Mattis"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Sven Neumann"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Michael Natterer"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Fredrik Alstr\303\266mer"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Rob Antonishen"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Jerry Baker"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Hendrik Boom"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Richard Bowers"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Hans Breuer"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Simon Budig"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Jo\303\243o S. O. Bueno"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Seth Burgess"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Marco Ciampa"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Winston Chang"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Lars-Peter Clausen"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Sven Claussner"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Kevin Cozens"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Alexia Death"
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Nicholas Doyle"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Daniel Eddeland"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Ulf-D. Ehlert"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Saul Goode"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"David Gowers"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Cameron Gregory"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Eric Grivel"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Stephen Griffiths"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Tim Harder"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Michael Henning"
	.size	.L.str.61, 16

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Lukasz Hladowski"
	.size	.L.str.62, 17

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Patrick Horgan"
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Daniel Hornung"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Christopher Howard"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Alexander H\303\244mmerle"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Barak Itkin"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Javier Jard\303\263n"
	.size	.L.str.68, 15

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Tim Jedlicka"
	.size	.L.str.69, 13

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Jehan"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"R\303\263man Joost"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Alexander Jones"
	.size	.L.str.72, 16

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Aurimas Ju\305\241ka"
	.size	.L.str.73, 15

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Malay Keshav"
	.size	.L.str.74, 13

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"\303\230yvind Kol\303\245s"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Lloyd Konneker"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Kretynofil"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Christian Krippendorf"
	.size	.L.str.78, 22

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Eric Lamarque"
	.size	.L.str.79, 14

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Simone Karin Lehmann"
	.size	.L.str.80, 21

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Dave Lichterman"
	.size	.L.str.81, 16

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Tor Lillqvist"
	.size	.L.str.82, 14

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Mikael Magnusson"
	.size	.L.str.83, 17

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Luidnel Maignan"
	.size	.L.str.84, 16

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Takeshi Matsuyama"
	.size	.L.str.85, 18

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"T\303\251o Mazars"
	.size	.L.str.86, 12

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Mike Melancon"
	.size	.L.str.87, 14

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Christopher Montgomery"
	.size	.L.str.88, 23

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Tobias Mueller"
	.size	.L.str.89, 15

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Michael Mur\303\251"
	.size	.L.str.90, 14

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Andreas Neustifter"
	.size	.L.str.91, 19

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Jon Nordby"
	.size	.L.str.92, 11

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Martin Nordholts"
	.size	.L.str.93, 17

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"David Odin"
	.size	.L.str.94, 11

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Nelson A. de Oliveira"
	.size	.L.str.95, 22

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Victor Oliveira"
	.size	.L.str.96, 16

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Benjamin Otte"
	.size	.L.str.97, 14

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Petr Ovtchenkov"
	.size	.L.str.98, 16

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Ville P\303\244tsi"
	.size	.L.str.99, 13

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Akkana Peck"
	.size	.L.str.100, 12

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Nils Philippsen"
	.size	.L.str.101, 16

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Mircea Purdea"
	.size	.L.str.102, 14

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Dennis Ranke"
	.size	.L.str.103, 13

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Martin Renold"
	.size	.L.str.104, 14

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Gilles Rochefort"
	.size	.L.str.105, 17

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Marco Rossini"
	.size	.L.str.106, 14

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Karthikeyan S"
	.size	.L.str.107, 14

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Daniel Sabo"
	.size	.L.str.108, 12

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Enrico Schr\303\266der"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Michael Schumacher"
	.size	.L.str.110, 19

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Peter Sikking"
	.size	.L.str.111, 14

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Ry\305\215Ta SimaMoto"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"SHIRAKAWA Akira"
	.size	.L.str.113, 16

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Jernej Simon\304\215i\304\215"
	.size	.L.str.114, 18

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Manish Singh"
	.size	.L.str.115, 13

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Mukund Sivaraman"
	.size	.L.str.116, 17

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Ville Sokk"
	.size	.L.str.117, 11

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Jakub Steiner"
	.size	.L.str.118, 14

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Omari Stephens"
	.size	.L.str.119, 15

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Bogdan Szczurek"
	.size	.L.str.120, 16

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Tal Trachtman"
	.size	.L.str.121, 14

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Mason Thomas"
	.size	.L.str.122, 13

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Andreas Turtschan"
	.size	.L.str.123, 18

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Massimo Valentini"
	.size	.L.str.124, 18

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Thorsten Vollmer"
	.size	.L.str.125, 17

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Clayton Walker"
	.size	.L.str.126, 15

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Rupert Weber"
	.size	.L.str.127, 13

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Alexis Wilhelm"
	.size	.L.str.128, 15

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Andrew Wyatt"
	.size	.L.str.129, 13

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Yoshinori Yamakawa"
	.size	.L.str.130, 19

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Zhenfeng Zhao"
	.size	.L.str.131, 14

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Simon Zilliken"
	.size	.L.str.132, 15

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Przemyslaw Zych"
	.size	.L.str.133, 16

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Bernhard Stockmann"
	.size	.L.str.134, 19

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Alexandre Prokoudine"
	.size	.L.str.135, 21

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"GIMP is brought to you by"
	.size	.L.str.136, 26

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.137, 45

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"about-dialog.c"
	.size	.L.str.138, 15

	.type	.L__func__.about_dialog_timer,@object # @__func__.about_dialog_timer
.L__func__.about_dialog_timer:
	.asciz	"about_dialog_timer"
	.size	.L__func__.about_dialog_timer, 19

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"text != NULL"
	.size	.L.str.139, 13

	.type	.L__func__.decorate_text,@object # @__func__.decorate_text
.L__func__.decorate_text:
	.asciz	"decorate_text"
	.size	.L__func__.decorate_text, 14

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Unknown animation type %d\n"
	.size	.L.str.140, 27

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"images"
	.size	.L.str.141, 7

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"gimp-logo.png"
	.size	.L.str.142, 14

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"expose-event"
	.size	.L.str.143, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
