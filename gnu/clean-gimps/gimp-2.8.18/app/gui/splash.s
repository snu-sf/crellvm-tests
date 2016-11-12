	.text
	.file	"splash.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.globl	splash_create
	.align	16, 0x90
	.type	splash_create,@function
splash_create:                          # @splash_create
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
	subq	$248, %rsp
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
	movl	%edi, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, splash
	jne	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.splash_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_14
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	-44(%rbp), %edi
	callq	splash_image_load
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.1
	jmp	.LBB0_14
.LBB0_7:                                # %if.end.2
	movl	$120, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, splash
	callq	gtk_window_get_type
	movabsq	$.L.str.5, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.3, %rcx
	movl	$4, %r8d
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %r10
	movabsq	$.L.str.8, %r11
	movl	$1, %ebx
	movabsq	$.L.str.9, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	callq	g_object_new
	movabsq	$.L.str.10, %rsi
	movabsq	$exit, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$2, %r9d
	movq	splash, %r10
	movq	%rax, (%r10)
	movq	splash, %rax
	movq	(%rax), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	splash, %rcx
	movq	(%rcx), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gdk_pixbuf_animation_get_width
	movq	-80(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gdk_screen_get_width
	movl	-132(%rbp), %r9d        # 4-byte Reload
	cmpl	%eax, %r9d
	jge	.LBB0_9
# BB#8:                                 # %cond.true
	movq	-72(%rbp), %rdi
	callq	gdk_pixbuf_animation_get_width
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
	movq	-80(%rbp), %rdi
	callq	gdk_screen_get_width
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB0_10:                               # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movq	splash, %rcx
	movl	%eax, 16(%rcx)
	movq	-72(%rbp), %rdi
	callq	gdk_pixbuf_animation_get_height
	movq	-80(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gdk_screen_get_height
	movl	-140(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB0_12
# BB#11:                                # %cond.true.19
	movq	-72(%rbp), %rdi
	callq	gdk_pixbuf_animation_get_height
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               # %cond.false.21
	movq	-80(%rbp), %rdi
	callq	gdk_screen_get_height
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB0_13:                               # %cond.end.23
	movl	-144(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	splash, %rdx
	movl	%eax, 20(%rdx)
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	splash, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_image_new_from_animation
	movq	splash, %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	splash, %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	splash, %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	splash, %rax
	movq	8(%rax), %rdi
	movq	splash, %rax
	movl	16(%rax), %esi
	movq	splash, %rax
	movl	20(%rax), %edx
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.11, %rsi
	movq	splash, %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_create_pango_layout
	movabsq	$.L.str.11, %rsi
	movq	splash, %rdi
	movq	%rax, 48(%rdi)
	movq	splash, %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_create_pango_layout
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	splash, %rsi
	movq	%rax, 64(%rsi)
	movq	splash, %rax
	movq	64(%rax), %rdi
	callq	gimp_pango_layout_set_scale
	movabsq	$.L.str.11, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	splash, %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	splash_position_layouts
	movq	splash, %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_pixbuf_animation_get_static_image
	movq	splash, %rcx
	addq	$32, %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	splash_average_text_area
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movabsq	$.L.str.12, %rsi
	movabsq	$splash_area_expose, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$1, %r9d
	movq	splash, %rdx
	movq	8(%rdx), %rdx
	movq	splash, %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_new
	movq	splash, %rcx
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	splash, %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	splash, %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	splash, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
.LBB0_14:                               # %return
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	splash_create, .Lfunc_end0-splash_create
	.cfi_endproc

	.align	16, 0x90
	.type	splash_image_load,@function
splash_image_load:                      # @splash_image_load
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
	subq	$32, %rsp
	movabsq	$.L.str.18, %rax
	movl	%edi, -12(%rbp)
	movq	%rax, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_animation_new_from_file
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpl	$0, -12(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.20, %rcx
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB1_4:                                # %if.end.5
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_15
.LBB1_6:                                # %if.end.8
	movabsq	$.L.str.22, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	splash_image_pick_from_dir
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_15
.LBB1_8:                                # %if.end.13
	callq	gimp_data_directory
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.18, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.17
	movabsq	$.L.str.19, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB1_10:                               # %if.end.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_animation_new_from_file
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpl	$0, -12(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.21
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.20, %rcx
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB1_12:                               # %if.end.24
	cmpq	$0, -24(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.26
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %if.end.27
	callq	gimp_data_directory
	movabsq	$.L.str.22, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	splash_image_pick_from_dir
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	splash_image_load, .Lfunc_end1-splash_image_load
	.cfi_endproc

	.align	16, 0x90
	.type	splash_position_layouts,@function
splash_position_layouts:                # @splash_position_layouts
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	pango_layout_get_pixel_extents
	cmpq	$0, -32(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.2
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	callq	splash_rectangle_union
.LBB2_3:                                # %if.end
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	pango_layout_set_text
	leaq	-48(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	pango_layout_get_pixel_extents
	movl	$2, %ecx
	movq	-8(%rbp), %rax
	movl	16(%rax), %r8d
	subl	-56(%rbp), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movl	%eax, 56(%rsi)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	addl	$6, %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 60(%rsi)
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.11
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	callq	splash_rectangle_union
.LBB2_5:                                # %if.end.14
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB2_12
# BB#7:                                 # %if.then.17
	leaq	-48(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rdi
	callq	pango_layout_get_pixel_extents
	cmpq	$0, -32(%rbp)
	je	.LBB2_9
# BB#8:                                 # %if.then.19
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	callq	splash_rectangle_union
.LBB2_9:                                # %if.end.20
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_layout_set_text
	leaq	-48(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	pango_layout_get_pixel_extents
	movl	$2, %ecx
	movq	-8(%rbp), %rax
	movl	16(%rax), %r8d
	subl	-56(%rbp), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movl	%eax, 72(%rsi)
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %eax
	movl	-52(%rbp), %ecx
	addl	$6, %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 76(%rsi)
	cmpq	$0, -32(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.34
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	callq	splash_rectangle_union
.LBB2_11:                               # %if.end.37
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.38
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	splash_position_layouts, .Lfunc_end2-splash_position_layouts
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4589866978952703325     # double 0.0722
.LCPI3_1:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI3_2:
	.quad	4604617168452267173     # double 0.71519999999999995
	.text
	.align	16, 0x90
	.type	splash_average_text_area,@function
splash_average_text_area:               # @splash_average_text_area
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %r8d
	leaq	-104(%rbp), %r9
	leaq	-88(%rbp), %r10
	movl	$12, %ecx
	movl	%ecx, %r11d
	leaq	-72(%rbp), %rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -60(%rbp)
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r11, %rdx
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r10, -176(%rbp)        # 8-byte Spill
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	memset
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	memset
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gdk_pixbuf_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.splash_average_text_area, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB3_43
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_bits_per_sample
	cmpl	$8, %eax
	jne	.LBB3_15
# BB#14:                                # %if.then.14
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.splash_average_text_area, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB3_43
.LBB3_16:                               # %if.end.16
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.17
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	leaq	-104(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	splash_position_layouts
	movabsq	$.L.str.11, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	splash_position_layouts
	leaq	-88(%rbp), %rdi
	leaq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gdk_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB3_42
# BB#18:                                # %if.then.25
	movl	-96(%rbp), %eax
	imull	-92(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-104(%rbp), %eax
	imull	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movl	-100(%rbp), %eax
	imull	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -140(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_21 Depth 2
	movl	-140(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB3_26
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -136(%rbp)
.LBB3_21:                               # %for.cond.40
                                        #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB3_24
# BB#22:                                # %for.body.43
                                        #   in Loop: Header=BB3_21 Depth=2
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-152(%rbp), %rax
	movzbl	2(%rax), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movl	-56(%rbp), %ecx
	movq	-152(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB3_21 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB3_21
.LBB3_24:                               # %for.end
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
# BB#25:                                # %for.inc.57
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB3_19
.LBB3_26:                               # %for.end.59
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	-132(%rbp), %eax
	xorl	%ecx, %ecx
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %esi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	-184(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	%eax, %r8d
	cvtsi2sdq	%r8, %xmm1
	movsd	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movl	%esi, %eax
	movl	%ecx, %edx
	divl	%edi
	movl	%eax, %r8d
	cvtsi2sdq	%r8, %xmm2
	movsd	.LCPI3_2(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movl	-64(%rbp), %eax
	movl	%ecx, %edx
	divl	%edi
	movl	%eax, %r8d
	cvtsi2sdq	%r8, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -60(%rbp)
	cmpl	$127, -60(%rbp)
	jle	.LBB3_28
# BB#27:                                # %cond.true
	movl	-60(%rbp), %eax
	subl	$223, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB3_29
.LBB3_28:                               # %cond.false
	movl	-60(%rbp), %eax
	addl	$223, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB3_29:                               # %cond.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	cmpl	$255, %eax
	jle	.LBB3_31
# BB#30:                                # %cond.true.79
	movl	$255, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB3_41
.LBB3_31:                               # %cond.false.80
	cmpl	$127, -60(%rbp)
	jle	.LBB3_33
# BB#32:                                # %cond.true.83
	movl	-60(%rbp), %eax
	subl	$223, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false.85
	movl	-60(%rbp), %eax
	addl	$223, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB3_34:                               # %cond.end.87
	movl	-196(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB3_36
# BB#35:                                # %cond.true.91
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB3_40
.LBB3_36:                               # %cond.false.92
	cmpl	$127, -60(%rbp)
	jle	.LBB3_38
# BB#37:                                # %cond.true.95
	movl	-60(%rbp), %eax
	subl	$223, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false.97
	movl	-60(%rbp), %eax
	addl	$223, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB3_39:                               # %cond.end.99
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB3_40:                               # %cond.end.101
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB3_41:                               # %cond.end.103
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
.LBB3_42:                               # %if.end.105
	movl	-60(%rbp), %eax
	shll	$8, %eax
	orl	-60(%rbp), %eax
	movw	%ax, %cx
	movq	-40(%rbp), %rdx
	movw	%cx, 8(%rdx)
	movq	-40(%rbp), %rdx
	movw	%cx, 6(%rdx)
	movq	-40(%rbp), %rdx
	movw	%cx, 4(%rdx)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdi
	callq	gtk_widget_get_colormap
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_colormap_alloc_color
	movl	%eax, -12(%rbp)
.LBB3_43:                               # %return
	movl	-12(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	splash_average_text_area, .Lfunc_end3-splash_average_text_area
	.cfi_endproc

	.align	16, 0x90
	.type	splash_area_expose,@function
splash_area_expose:                     # @splash_area_expose
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	callq	gdk_cairo_create
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-32(%rbp), %rdi
	callq	cairo_clip
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	56(%rax), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	60(%rax), %xmm1
	callq	cairo_move_to
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	72(%rax), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	76(%rax), %xmm1
	callq	cairo_move_to
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	splash_area_expose, .Lfunc_end4-splash_area_expose
	.cfi_endproc

	.globl	splash_destroy
	.align	16, 0x90
	.type	splash_destroy,@function
splash_destroy:                         # @splash_destroy
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
	cmpq	$0, splash
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movq	splash, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	movq	splash, %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	splash, %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	splash, %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	splash, %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	splash, %rax
	cmpq	$0, 104(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.2
	movq	splash, %rax
	movq	104(%rax), %rdi
	callq	g_timer_destroy
.LBB5_4:                                # %if.end.4
	jmp	.LBB5_5
.LBB5_5:                                # %do.body
	movl	$120, %eax
	movl	%eax, %edi
	movq	splash, %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
	movq	$0, splash
.LBB5_7:                                # %return
	popq	%rbp
	retq
.Lfunc_end5:
	.size	splash_destroy, .Lfunc_end5-splash_destroy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	splash_update
	.align	16, 0x90
	.type	splash_update,@function
splash_update:                          # @splash_update
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
# BB#1:                                 # %do.body
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB6_4
# BB#3:                                 # %if.then
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.splash_update, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_26
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.end
	cmpq	$0, splash
	jne	.LBB6_8
# BB#7:                                 # %if.then.2
	jmp	.LBB6_26
.LBB6_8:                                # %if.end.3
	leaq	-40(%rbp), %rcx
	movq	splash, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	splash_position_layouts
	cmpl	$0, -32(%rbp)
	jle	.LBB6_11
# BB#9:                                 # %land.lhs.true.5
	cmpl	$0, -28(%rbp)
	jle	.LBB6_11
# BB#10:                                # %if.then.7
	movq	splash, %rax
	movq	8(%rax), %rdi
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gtk_widget_queue_draw_area
.LBB6_11:                               # %if.end.10
	cmpq	$0, -8(%rbp)
	je	.LBB6_13
# BB#12:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movq	splash, %rax
	movq	88(%rax), %rsi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB6_21
.LBB6_13:                               # %land.lhs.true.14
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %lor.lhs.false.16
	movq	-16(%rbp), %rdi
	movq	splash, %rax
	movq	96(%rax), %rsi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB6_21
.LBB6_15:                               # %land.lhs.true.20
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	splash, %rax
	ucomisd	80(%rax), %xmm0
	jne	.LBB6_21
	jp	.LBB6_21
# BB#16:                                # %if.then.23
	cmpq	$0, -8(%rbp)
	je	.LBB6_18
# BB#17:                                # %if.then.25
	movq	splash, %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	splash, %rdi
	movq	%rax, 88(%rdi)
.LBB6_18:                               # %if.end.29
	cmpq	$0, -16(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.31
	movq	splash, %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	splash, %rdi
	movq	%rax, 96(%rdi)
.LBB6_20:                               # %if.end.35
	movq	splash, %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_progress_bar_pulse
	jmp	.LBB6_22
.LBB6_21:                               # %if.else.38
	movq	splash, %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction
.LBB6_22:                               # %if.end.42
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	splash, %rax
	movsd	%xmm0, 80(%rax)
	movq	splash, %rax
	cmpq	$0, 104(%rax)
	je	.LBB6_24
# BB#23:                                # %if.then.45
	callq	splash_timer_elapsed
.LBB6_24:                               # %if.end.46
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB6_26
# BB#25:                                # %if.then.49
	callq	gtk_main_iteration
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB6_26:                               # %if.end.51
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	splash_update, .Lfunc_end6-splash_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	splash_timer_elapsed,@function
splash_timer_elapsed:                   # @splash_timer_elapsed
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	splash, %rcx
	movq	104(%rcx), %rdi
	callq	g_timer_elapsed
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	splash, %rcx
	subsd	112(%rcx), %xmm1
	movq	splash, %rcx
	cmpq	$0, 88(%rcx)
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movq	splash, %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movabsq	$.L.str.11, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	splash, %rcx
	mulsd	80(%rcx), %xmm0
	movq	splash, %rcx
	cmpq	$0, 96(%rcx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	je	.LBB7_5
# BB#4:                                 # %cond.true.3
	movq	splash, %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.5
	movabsq	$.L.str.11, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_6:                                # %cond.end.6
	movq	-56(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.24, %rdi
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %rdx
	movb	$3, %al
	callq	g_printerr
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	splash, %rdx
	movsd	%xmm0, 112(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	splash_timer_elapsed, .Lfunc_end7-splash_timer_elapsed
	.cfi_endproc

	.align	16, 0x90
	.type	splash_rectangle_union,@function
splash_rectangle_union:                 # @splash_rectangle_union
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	jle	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB8_3
# BB#2:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gdk_rectangle_union
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB8_4:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	splash_rectangle_union, .Lfunc_end8-splash_rectangle_union
	.cfi_endproc

	.align	16, 0x90
	.type	splash_image_pick_from_dir,@function
splash_image_pick_from_dir:             # @splash_image_pick_from_dir
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
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	g_dir_open
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_11
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
.LBB9_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB9_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	jmp	.LBB9_2
.LBB9_4:                                # %while.end
	movq	-32(%rbp), %rdi
	callq	g_dir_close
	cmpq	$0, -48(%rbp)
	je	.LBB9_10
# BB#5:                                 # %if.then.7
	movq	-48(%rbp), %rdi
	callq	g_list_length
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	g_random_int_range
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_list_nth_data
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -64(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.13
	movabsq	$.L.str.19, %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB9_7:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	gdk_pixbuf_animation_new_from_file
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpl	$0, -12(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.16
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.20, %rcx
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB9_9:                                # %if.end.18
	movabsq	$g_free, %rsi
	movq	-48(%rbp), %rdi
	callq	g_list_free_full
.LBB9_10:                               # %if.end.19
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.20
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	splash_image_pick_from_dir, .Lfunc_end9-splash_image_pick_from_dir
	.cfi_endproc

	.type	splash,@object          # @splash
	.local	splash
	.comm	splash,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GUI"
	.size	.L.str, 9

	.type	.L__func__.splash_create,@object # @__func__.splash_create
.L__func__.splash_create:
	.asciz	"splash_create"
	.size	.L__func__.splash_create, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"splash == NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"type"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"type-hint"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"title"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP Startup"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"role"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-startup"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"window-position"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"resizable"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"delete-event"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"expose-event"
	.size	.L.str.12, 13

	.type	.L__func__.splash_update,@object # @__func__.splash_update
.L__func__.splash_update:
	.asciz	"splash_update"
	.size	.L__func__.splash_update, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"percentage >= 0.0 && percentage <= 1.0"
	.size	.L.str.13, 39

	.type	.L__func__.splash_average_text_area,@object # @__func__.splash_average_text_area
.L__func__.splash_average_text_area:
	.asciz	"splash_average_text_area"
	.size	.L__func__.splash_average_text_area, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gdk_pixbuf_get_bits_per_sample (pixbuf) == 8"
	.size	.L.str.15, 45

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Short text"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Somewhat longer text"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-splash.png"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Trying splash '%s' ... "
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"OK\n"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"failed\n"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"splashes"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"images"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%8g  %8g  -  %s %g%%  -  %s\n"
	.size	.L.str.24, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
