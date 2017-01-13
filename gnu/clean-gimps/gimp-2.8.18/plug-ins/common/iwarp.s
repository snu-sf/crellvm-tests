	.text
	.file	"iwarp.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	subq	$104, %rsp
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	movq	%rax, destdrawable
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, imageID
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_11
.LBB1_4:                                # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_13
.LBB1_13:                               # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_14
.LBB1_14:                               # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB1_9
	jmp	.LBB1_5
.LBB1_5:                                # %sw.bb
	movabsq	$.L.str.6, %rdi
	movabsq	$iwarp_vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	iwarp_dialog
	cmpl	$0, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then.17
	callq	iwarp
.LBB1_7:                                # %if.end
	movabsq	$.L.str.6, %rdi
	movabsq	$iwarp_vals, %rax
	movl	$48, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_10
.LBB1_8:                                # %sw.bb.20
	movl	$1, -48(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %sw.default
	jmp	.LBB1_10
.LBB1_10:                               # %sw.epilog
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_12:                               # %if.end.21
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %edx
	movl	%edx, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	movq	srcimage, %rdi
	callq	g_free
	movq	dstimage, %rdi
	callq	g_free
	movq	deform_vectors, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	deform_area_vectors, %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_dialog,@function
iwarp_dialog:                           # @iwarp_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$248, %rsp
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.16, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	callq	iwarp_init
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.19, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.20, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.21, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -84(%rbp)        # 4-byte Spill
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movq	-40(%rbp), %rdi
	callq	iwarp_dialog_response_update
	movabsq	$.L.str.22, %rsi
	movabsq	$iwarp_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r11
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	iwarp_preview_build
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_hint_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	iwarp_settings_dialog
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	iwarp_animate_dialog
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	preview_width, %edx
	movl	preview_height, %r8d
	movl	%ecx, %edi
	movl	%ecx, %esi
	movl	%r8d, %ecx
	callq	iwarp_update_preview
	callq	gtk_main
	movl	wint, %ecx
	movl	%ecx, -28(%rbp)
.LBB3_3:                                # %return
	movl	-28(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	iwarp_dialog, .Lfunc_end3-iwarp_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	iwarp,@function
iwarp:                                  # @iwarp
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
	subq	$96, %rsp
	cmpl	$1, image_bpp
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$3, image_bpp
	jne	.LBB4_3
.LBB4_2:                                # %if.then
	movl	$0, layer_alpha
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$1, layer_alpha
.LBB4_4:                                # %if.end
	cmpl	$1, animate_num_frames
	jle	.LBB4_22
# BB#5:                                 # %land.lhs.true
	cmpl	$0, do_animate
	je	.LBB4_22
# BB#6:                                 # %if.then.3
	movl	$4, %eax
	movl	%eax, %esi
	movslq	animate_num_frames, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	cmpl	$0, do_animate_reverse
	je	.LBB4_8
# BB#7:                                 # %if.then.5
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, animate_deform_value
	movl	animate_num_frames, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	imageID, %edi
	callq	gimp_image_undo_group_start
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.8
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, animate_deform_value
	movl	animate_num_frames, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB4_9:                                # %if.end.12
	movl	imageID, %edi
	callq	gimp_image_get_active_layer
	movl	%eax, -8(%rbp)
	movl	$0, frame_number
	movl	$0, -4(%rbp)
.LBB4_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	animate_num_frames, %eax
	jge	.LBB4_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_layer_copy
	movslq	-4(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-4(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_layer_add_alpha
	movslq	-4(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_item_set_name
	movq	-32(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_free
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	imageID, %edi
	movslq	-4(%rbp), %rsi
	movq	-16(%rbp), %r8
	movl	(%r8,%rsi,4), %esi
	callq	gimp_image_insert_layer
	movslq	-4(%rbp), %r8
	movq	-16(%rbp), %r9
	movl	(%r9,%r8,4), %edi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	movabsq	$.L.str.54, %rdi
	movq	%rax, destdrawable
	callq	gettext
	movl	frame_number, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_progress_init_printf
	xorps	%xmm0, %xmm0
	movsd	animate_deform_value, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jbe	.LBB4_13
# BB#12:                                # %if.then.35
                                        #   in Loop: Header=BB4_10 Depth=1
	callq	iwarp_frame
.LBB4_13:                               # %if.end.36
                                        #   in Loop: Header=BB4_10 Depth=1
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, animate_deform_value
	movl	frame_number, %eax
	addl	$1, %eax
	movl	%eax, frame_number
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_10
.LBB4_15:                               # %for.end
	cmpl	$0, do_animate_ping_pong
	je	.LBB4_21
# BB#16:                                # %if.then.39
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$0, -4(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB4_17:                               # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	animate_num_frames, %eax
	jge	.LBB4_20
# BB#18:                                # %for.body.45
                                        #   in Loop: Header=BB4_17 Depth=1
	cvtsi2sdl	-4(%rbp), %xmm0
	movl	animate_num_frames, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	animate_num_frames, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_layer_copy
	movl	%eax, -8(%rbp)
	movl	imageID, %edi
	callq	gimp_image_undo_group_end
	movl	-8(%rbp), %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_layer_add_alpha
	movabsq	$.L.str.53, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movl	-4(%rbp), %ecx
	addl	animate_num_frames, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	gimp_item_set_name
	movq	-40(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	imageID, %edi
	movl	-8(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#19:                                # %for.inc.64
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_17
.LBB4_20:                               # %for.end.66
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB4_21:                               # %if.end.68
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.69
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, animate_deform_value
	callq	iwarp_frame
.LBB4_23:                               # %if.end.70
	cmpq	$0, tile
	je	.LBB4_25
# BB#24:                                # %if.then.72
	xorl	%esi, %esi
	movq	tile, %rdi
	callq	gimp_tile_unref
	movq	$0, tile
.LBB4_25:                               # %if.end.73
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	iwarp, .Lfunc_end4-iwarp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
.LCPI5_2:
	.quad	4607182418800017408     # double 1
.LCPI5_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI5_4:
	.quad	4643000109586448384     # double 250
	.text
	.align	16, 0x90
	.type	iwarp_init,@function
iwarp_init:                             # @iwarp_init
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
	subq	$48, %rsp
	movabsq	$xl, %rsi
	movabsq	$yl, %rdx
	movabsq	$sel_width, %rcx
	movabsq	$sel_height, %r8
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB5_10
.LBB5_2:                                # %if.end
	movl	xl, %eax
	addl	sel_width, %eax
	movl	%eax, xh
	movl	yl, %eax
	addl	sel_height, %eax
	movl	%eax, yh
	movq	drawable, %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, image_bpp
	movq	drawable, %rcx
	movl	(%rcx), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.8
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_layer_get_lock_alpha
	movl	%eax, lock_alpha
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movl	$0, lock_alpha
.LBB5_5:                                # %if.end.11
	movl	image_bpp, %eax
	movl	%eax, preview_bpp
	callq	gimp_tile_width
	movl	%eax, tile_width
	callq	gimp_tile_height
	movl	%eax, tile_height
	movl	sel_width, %eax
	cltd
	idivl	tile_width
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	gimp_tile_cache_ntiles
	callq	iwarp_preview_init
	callq	iwarp_cpy_images
	movl	$16, %eax
	movl	%eax, %esi
	movl	preview_width, %eax
	imull	preview_height, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$251001, %ecx           # imm = 0x3D479
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, deform_vectors
	callq	g_malloc_n
	movq	%rax, deform_area_vectors
	movl	$0, -8(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$250, -8(%rbp)
	jge	.LBB5_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_4, %xmm4         # xmm4 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm5
	divsd	%xmm4, %xmm5
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movsd	%xmm3, -32(%rbp)        # 8-byte Spill
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	cos
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movslq	-8(%rbp), %rax
	movsd	%xmm0, filter(,%rax,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB5_6
.LBB5_9:                                # %for.end
	movl	$1, -4(%rbp)
.LBB5_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	iwarp_init, .Lfunc_end5-iwarp_init
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_dialog_response_update,@function
iwarp_dialog_response_update:           # @iwarp_dialog_response_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	iwarp_changed, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	iwarp_changed, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	iwarp_dialog_response_update, .Lfunc_end6-iwarp_dialog_response_update
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_response,@function
iwarp_response:                         # @iwarp_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB7_6
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB7_7
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	callq	iwarp_cpy_images
	movl	$0, -28(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	preview_width, %ecx
	imull	preview_height, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	deform_vectors, %rax
	movsd	%xmm0, 8(%rax)
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	deform_vectors, %rax
	movsd	%xmm0, (%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_2
.LBB7_5:                                # %for.end
	xorl	%eax, %eax
	movl	$0, iwarp_changed
	movl	preview_width, %edx
	movl	preview_height, %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	iwarp_update_preview
	movq	-8(%rbp), %rdi
	callq	iwarp_dialog_response_update
	jmp	.LBB7_8
.LBB7_6:                                # %sw.bb.3
	movl	$1, wint
.LBB7_7:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB7_8:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	iwarp_response, .Lfunc_end7-iwarp_response
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	iwarp_preview_build,@function
iwarp_preview_build:                    # @iwarp_preview_build
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	movss	-28(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, %esi
	callq	gtk_aspect_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	%rax, preview
	movq	preview, %rdi
	movl	preview_width, %esi
	movl	preview_height, %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	preview, %rdi
	callq	gtk_widget_show
	movl	$808, %esi              # imm = 0x328
	movq	preview, %rdi
	callq	gtk_widget_add_events
	movabsq	$.L.str.26, %rsi
	movabsq	$iwarp_realize_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	preview, %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$iwarp_event_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	preview, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$iwarp_resize_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	preview, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	iwarp_preview_build, .Lfunc_end8-iwarp_preview_build
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4621819117588971520     # double 10
.LCPI9_2:
	.quad	4576918229304087675     # double 0.01
.LCPI9_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI9_4:
	.quad	4617315517961601024     # double 5
.LCPI9_5:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI9_6:
	.quad	4643000109586448384     # double 250
	.text
	.align	16, 0x90
	.type	iwarp_settings_dialog,@function
iwarp_settings_dialog:                  # @iwarp_settings_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$848, %rsp              # imm = 0x350
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	movl	iwarp_vals+16, %r8d
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rdi
	leaq	-144(%rbp), %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	leaq	-144(%rbp), %rsi
	addq	$8, %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_radio_button_update, %r9
	movabsq	$iwarp_vals, %r10
	addq	$16, %r10
	movl	$2, %ecx
	movl	$4, %edx
	movl	$3, %r8d
	movl	$1, %r11d
	movl	$5, %ebx
	leaq	-144(%rbp), %r14
	addq	$16, %r14
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-196(%rbp), %r15d       # 4-byte Reload
	movl	%r8d, -268(%rbp)        # 4-byte Spill
	movl	%r15d, %r8d
	movq	-208(%rbp), %r9         # 8-byte Reload
	movl	$2, (%rsp)
	movq	$0, 8(%rsp)
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	movl	$4, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movl	$3, 72(%rsp)
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, 80(%rsp)
	movq	-248(%rbp), %r12        # 8-byte Reload
	movq	%r12, 88(%rsp)
	movl	$1, 96(%rsp)
	movq	-256(%rbp), %r12        # 8-byte Reload
	movq	%r12, 104(%rsp)
	movq	%rax, 112(%rsp)
	movl	$5, 120(%rsp)
	movq	%r14, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, %al
	movl	%ebx, -272(%rbp)        # 4-byte Spill
	movl	%r11d, -276(%rbp)       # 4-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -148(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -148(%rbp)
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-148(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movslq	-148(%rbp), %rdi
	movq	-144(%rbp,%rdi,8), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_hide
	movq	-64(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-148(%rbp), %rsi
	movq	-144(%rbp,%rsi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movslq	-148(%rbp), %rsi
	movq	-144(%rbp,%rsi,8), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movslq	-148(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdi
	callq	gtk_widget_show
	movslq	-148(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %ecx        # 4-byte Reload
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$4, %r9d
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_1, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cvtsi2sdl	iwarp_vals, %xmm5
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$iwarp_vals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movsd	iwarp_vals+8, %xmm1     # xmm1 = mem[0],zero
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-448(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-448(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -452(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$iwarp_vals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	iwarp_vals+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$iwarp_vals, %rdi
	addq	$20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rbx
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	iwarp_vals+24, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-88(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$iwarp_vals, %rdi
	addq	$24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rbx
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rcx
	movl	$2, %r8d
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-576(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movq	-104(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	$100, %r9d
	movl	$5, %r10d
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_5, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	cvtsi2sdl	iwarp_vals+40, %xmm4
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-616(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -624(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-624(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-624(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -628(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$iwarp_vals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$5, %r9d
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorps	%xmm0, %xmm0
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movsd	iwarp_vals+32, %xmm5    # xmm5 = mem[0],zero
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-680(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-680(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -684(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$iwarp_vals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	-56(%rbp), %rsi
	movq	%rsi, -720(%rbp)        # 8-byte Spill
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	-720(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -732(%rbp)        # 4-byte Spill
	addq	$848, %rsp              # imm = 0x350
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	iwarp_settings_dialog, .Lfunc_end9-iwarp_settings_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611686018427387904     # double 2
.LCPI10_1:
	.quad	4636737291354636288     # double 100
.LCPI10_2:
	.quad	4607182418800017408     # double 1
.LCPI10_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	iwarp_animate_dialog,@function
iwarp_animate_dialog:                   # @iwarp_animate_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp45:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
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
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	do_animate, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$do_animate, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rcx
	movl	$2, %r8d
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movq	-48(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	$100, %r9d
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	animate_num_frames, %xmm5
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-188(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-200(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-200(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -204(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$animate_num_frames, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$5, %r11d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -236(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$do_animate_reverse, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %r9d
	movl	$2, %r8d
	movl	$5, %r11d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -268(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$do_animate_ping_pong, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	-40(%rbp), %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -316(%rbp)        # 4-byte Spill
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	iwarp_animate_dialog, .Lfunc_end10-iwarp_animate_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_update_preview,@function
iwarp_update_preview:                   # @iwarp_update_preview
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
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %ecx
	cmpl	preview_width, %ecx
	jle	.LBB11_2
# BB#1:                                 # %cond.true
	movl	preview_width, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB11_6
.LBB11_2:                               # %cond.false
	cmpl	$0, -4(%rbp)
	jge	.LBB11_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false.3
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB11_5:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB11_6:                               # %cond.end.4
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	preview_height, %eax
	jle	.LBB11_8
# BB#7:                                 # %cond.true.7
	movl	preview_height, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB11_12
.LBB11_8:                               # %cond.false.8
	cmpl	$0, -8(%rbp)
	jge	.LBB11_10
# BB#9:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.11
	movl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB11_11:                              # %cond.end.12
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB11_12:                              # %cond.end.14
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	preview_width, %eax
	jle	.LBB11_14
# BB#13:                                # %cond.true.17
	movl	preview_width, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB11_18
.LBB11_14:                              # %cond.false.18
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB11_16
# BB#15:                                # %cond.true.20
	movl	-4(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false.21
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB11_17:                              # %cond.end.22
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB11_18:                              # %cond.end.24
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cmpl	preview_height, %eax
	jle	.LBB11_20
# BB#19:                                # %cond.true.27
	movl	preview_height, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB11_24
.LBB11_20:                              # %cond.false.28
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB11_22
# BB#21:                                # %cond.true.30
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB11_23
.LBB11_22:                              # %cond.false.31
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB11_23:                              # %cond.end.32
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB11_24:                              # %cond.end.34
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.LBB11_27
# BB#25:                                # %land.lhs.true
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB11_27
# BB#26:                                # %if.then
	movq	preview, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	subl	-4(%rbp), %ecx
	movl	-16(%rbp), %r8d
	subl	-8(%rbp), %r8d
	movq	drawable, %rdi
	movl	(%rdi), %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	callq	gimp_drawable_type
	movq	dstimage, %r9
	movl	-8(%rbp), %ecx
	imull	preview_width, %ecx
	addl	-4(%rbp), %ecx
	imull	preview_bpp, %ecx
	movslq	%ecx, %r10
	addq	%r10, %r9
	movl	preview_width, %ecx
	imull	preview_bpp, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	-72(%rbp), %edx         # 4-byte Reload
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movl	%eax, %r9d
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw
.LBB11_27:                              # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	iwarp_update_preview, .Lfunc_end11-iwarp_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_message, .Lfunc_end12-g_message
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	iwarp_preview_init,@function
iwarp_preview_init:                     # @iwarp_preview_init
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
	subq	$128, %rsp
	movq	$0, -80(%rbp)
	cvtsi2sdl	sel_width, %xmm0
	cvtsi2sdl	max_current_preview_width, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	cvtsi2sdl	sel_height, %xmm0
	cvtsi2sdl	max_current_preview_height, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pre2img
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pre2img
.LBB13_3:                               # %if.end
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jb	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jb	.LBB13_6
# BB#5:                                 # %if.then.10
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pre2img
.LBB13_6:                               # %if.end.11
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	divsd	pre2img, %xmm0
	movsd	%xmm0, img2pre
	cvtsi2sdl	sel_width, %xmm0
	divsd	pre2img, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, preview_width
	cvtsi2sdl	sel_height, %xmm0
	divsd	pre2img, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, preview_height
	cmpq	$0, srcimage
	je	.LBB13_8
# BB#7:                                 # %if.then.19
	movl	$1, %eax
	movl	%eax, %edx
	movq	srcimage, %rdi
	movl	preview_width, %eax
	imull	preview_height, %eax
	imull	image_bpp, %eax
	movslq	%eax, %rsi
	callq	g_realloc_n
	movq	%rax, srcimage
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.22
	movl	$1, %eax
	movl	%eax, %esi
	movl	preview_width, %eax
	imull	preview_height, %eax
	imull	image_bpp, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, srcimage
	movl	preview_width, %ecx
	imull	preview_height, %ecx
	imull	preview_bpp, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, dstimage
.LBB13_9:                               # %if.end.31
	movl	$1, %eax
	movl	%eax, %esi
	movl	sel_width, %eax
	imull	image_bpp, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -80(%rbp)
	movq	drawable, %rsi
	movl	xl, %edx
	movl	yl, %r8d
	movl	sel_width, %r9d
	movl	sel_height, %r10d
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -4(%rbp)
.LBB13_10:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_12 Depth 2
                                        #       Child Loop BB13_14 Depth 3
	movl	-4(%rbp), %eax
	cmpl	preview_height, %eax
	jge	.LBB13_21
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB13_10 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	xl, %edx
	movsd	pre2img, %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addl	yl, %eax
	movl	sel_width, %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	movl	$0, -8(%rbp)
.LBB13_12:                              # %for.cond.40
                                        #   Parent Loop BB13_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_14 Depth 3
	movl	-8(%rbp), %eax
	cmpl	preview_width, %eax
	jge	.LBB13_19
# BB#13:                                # %for.body.43
                                        #   in Loop: Header=BB13_12 Depth=2
	movq	srcimage, %rax
	movl	-4(%rbp), %ecx
	imull	preview_width, %ecx
	addl	-8(%rbp), %ecx
	imull	image_bpp, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movsd	pre2img, %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB13_14:                              # %for.cond.50
                                        #   Parent Loop BB13_10 Depth=1
                                        #     Parent Loop BB13_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB13_17
# BB#15:                                # %for.body.53
                                        #   in Loop: Header=BB13_14 Depth=3
	movl	-12(%rbp), %eax
	imull	image_bpp, %eax
	addl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%sil, (%rcx)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB13_14 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_14
.LBB13_17:                              # %for.end
                                        #   in Loop: Header=BB13_12 Depth=2
	jmp	.LBB13_18
.LBB13_18:                              # %for.inc.56
                                        #   in Loop: Header=BB13_12 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB13_12
.LBB13_19:                              # %for.end.58
                                        #   in Loop: Header=BB13_10 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %for.inc.59
                                        #   in Loop: Header=BB13_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_10
.LBB13_21:                              # %for.end.61
	movq	-80(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	iwarp_preview_init, .Lfunc_end13-iwarp_preview_init
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_cpy_images,@function
iwarp_cpy_images:                       # @iwarp_cpy_images
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
	movq	dstimage, %rdi
	movq	srcimage, %rsi
	movl	preview_width, %eax
	imull	preview_height, %eax
	imull	preview_bpp, %eax
	movslq	%eax, %rdx
	callq	memcpy
	popq	%rbp
	retq
.Lfunc_end14:
	.size	iwarp_cpy_images, .Lfunc_end14-iwarp_cpy_images
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_realize_callback,@function
iwarp_realize_callback:                 # @iwarp_realize_callback
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$34, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	iwarp_realize_callback, .Lfunc_end15-iwarp_realize_callback
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_event_callback,@function
iwarp_event_callback:                   # @iwarp_event_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB16_8
	jmp	.LBB16_16
.LBB16_16:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB16_1
	jmp	.LBB16_17
.LBB16_17:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB16_2
	jmp	.LBB16_14
.LBB16_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, lastx
	movq	-32(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, lasty
	jmp	.LBB16_15
.LBB16_2:                               # %sw.bb.2
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB16_7
# BB#3:                                 # %if.then
	cmpl	$2, iwarp_vals+16
	jne	.LBB16_5
# BB#4:                                 # %if.then.5
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	movl	lastx, %edx
	movl	lasty, %ecx
	callq	iwarp_move
	jmp	.LBB16_6
.LBB16_5:                               # %if.else
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	iwarp_deform
.LBB16_6:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	iwarp_dialog_response_update
.LBB16_7:                               # %if.end.14
	jmp	.LBB16_15
.LBB16_8:                               # %sw.bb.15
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB16_13
# BB#9:                                 # %if.then.19
	cmpl	$2, iwarp_vals+16
	jne	.LBB16_11
# BB#10:                                # %if.then.22
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-48(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	movl	lastx, %edx
	movl	lasty, %ecx
	callq	iwarp_move
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.27
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-48(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	iwarp_deform
.LBB16_12:                              # %if.end.32
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, lastx
	movq	-48(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, lasty
.LBB16_13:                              # %if.end.37
	movq	-48(%rbp), %rdi
	callq	gdk_event_request_motions
	jmp	.LBB16_15
.LBB16_14:                              # %sw.default
	jmp	.LBB16_15
.LBB16_15:                              # %sw.epilog
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	iwarp_event_callback, .Lfunc_end16-iwarp_event_callback
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_resize_callback,@function
iwarp_resize_callback:                  # @iwarp_resize_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, resize_idle
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	resize_idle, %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB17_2:                               # %if.end
	movl	$300, %edi              # imm = 0x12C
	movabsq	$iwarp_resize_idle, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_idle_add_full
	movl	%eax, resize_idle
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	iwarp_resize_callback, .Lfunc_end17-iwarp_resize_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	iwarp_move,@function
iwarp_move:                             # @iwarp_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	-8(%rbp), %ecx
	subl	-16(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -24(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	cvtsi2sdl	iwarp_vals, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -64(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	cvttsd2si	-48(%rbp), %eax
	movl	%eax, -68(%rbp)
	cvttsd2si	-56(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	callq	iwarp_deform
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	iwarp_move, .Lfunc_end18-iwarp_move
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
.LCPI19_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI19_2:
	.quad	4607182418800017408     # double 1
.LCPI19_3:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	iwarp_deform,@function
iwarp_deform:                           # @iwarp_deform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorps	%xmm2, %xmm2
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -96(%rbp)
	movsd	%xmm2, -104(%rbp)
	movb	$-1, -149(%rbp)
	movl	-4(%rbp), %esi
	cmpl	iwarp_vals, %esi
	jge	.LBB19_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	xorl	%eax, %eax
	subl	iwarp_vals, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB19_3:                               # %cond.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	addl	iwarp_vals, %eax
	cmpl	preview_width, %eax
	jl	.LBB19_5
# BB#4:                                 # %cond.true.3
	movl	preview_width, %eax
	subl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false.6
	movl	iwarp_vals, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB19_6:                               # %cond.end.7
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	cmpl	iwarp_vals, %eax
	jge	.LBB19_8
# BB#7:                                 # %cond.true.10
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB19_9
.LBB19_8:                               # %cond.false.12
	xorl	%eax, %eax
	subl	iwarp_vals, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB19_9:                               # %cond.end.14
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-8(%rbp), %eax
	addl	iwarp_vals, %eax
	cmpl	preview_height, %eax
	jl	.LBB19_11
# BB#10:                                # %cond.true.18
	movl	preview_height, %eax
	subl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB19_12
.LBB19_11:                              # %cond.false.21
	movl	iwarp_vals, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB19_12:                              # %cond.end.22
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	iwarp_vals, %eax
	imull	iwarp_vals, %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB19_13:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_15 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB19_69
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB19_15:                              # %for.cond.25
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB19_67
# BB#16:                                # %for.body.27
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	imull	$250, %eax, %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -64(%rbp)
	cmpl	$250, -64(%rbp)
	jge	.LBB19_65
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-8(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	%ecx, %eax
	movl	preview_width(%rip), %ecx
	imull	%ecx, %eax
	movl	-4(%rbp), %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	iwarp_vals(%rip), %ecx
	addl	%ecx, %eax
	movl	%ecx, %edx
	leal	1(%rdx,%rdx), %esi
	imull	%esi, %eax
	movl	-28(%rbp), %esi
	addl	%esi, %eax
	addl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	iwarp_vals+16(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rdi
	subq	$5, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	ja	.LBB19_23
# BB#80:                                # %if.then
                                        #   in Loop: Header=BB19_15 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI19_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB19_18:                              # %sw.bb
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	mulsd	filter(,%rax,8), %xmm0
	mulsd	iwarp_vals+8, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB19_24
.LBB19_19:                              # %sw.bb.50
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	mulsd	filter(,%rax,8), %xmm0
	mulsd	iwarp_vals+8, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB19_24
.LBB19_20:                              # %sw.bb.59
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	movsd	filter(,%rax,8), %xmm1  # xmm1 = mem[0],zero
	mulsd	iwarp_vals+8, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB19_24
.LBB19_21:                              # %sw.bb.69
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	movsd	filter(,%rax,8), %xmm1  # xmm1 = mem[0],zero
	mulsd	iwarp_vals+8, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB19_24
.LBB19_22:                              # %sw.bb.79
                                        #   in Loop: Header=BB19_15 Depth=2
	movslq	-64(%rbp), %rax
	movsd	filter(,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	iwarp_vals+8, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB19_24
.LBB19_23:                              # %sw.default
                                        #   in Loop: Header=BB19_15 Depth=2
	jmp	.LBB19_24
.LBB19_24:                              # %sw.epilog
                                        #   in Loop: Header=BB19_15 Depth=2
	cmpl	$3, iwarp_vals+16
	jne	.LBB19_26
# BB#25:                                # %if.then.87
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	.LCPI19_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	iwarp_vals+8, %xmm1
	movslq	-64(%rbp), %rax
	mulsd	filter(,%rax,8), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	deform_vectors, %rax
	mulsd	(%rax), %xmm0
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	deform_area_vectors, %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	deform_vectors, %rax
	mulsd	8(%rax), %xmm0
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	deform_area_vectors, %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB19_51
.LBB19_26:                              # %if.else
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	.LCPI19_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_3, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	iwarp_vals, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -112(%rbp)
	movl	-4(%rbp), %eax
	addl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_28
# BB#27:                                # %if.then.113
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-4(%rbp), %eax
	addl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB19_28:                              # %if.end
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-8(%rbp), %eax
	addl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_30
# BB#29:                                # %if.then.121
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-8(%rbp), %eax
	addl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB19_30:                              # %if.end.125
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_32
# BB#31:                                # %if.then.128
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB19_32:                              # %if.end.129
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_width, %eax
	subl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_34
# BB#33:                                # %if.then.136
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_width, %eax
	subl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB19_34:                              # %if.end.142
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_36
# BB#35:                                # %if.then.145
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB19_36:                              # %if.end.146
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_height, %eax
	subl	-8(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_38
# BB#37:                                # %if.then.153
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_height, %eax
	subl	-8(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-128(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB19_38:                              # %if.end.159
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_40
# BB#39:                                # %if.then.162
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB19_40:                              # %if.end.163
                                        #   in Loop: Header=BB19_15 Depth=2
	leaq	-136(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-136(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_42
# BB#41:                                # %if.then.181
                                        #   in Loop: Header=BB19_15 Depth=2
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -136(%rbp)
	jmp	.LBB19_45
.LBB19_42:                              # %if.else.185
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movl	preview_width, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_44
# BB#43:                                # %if.then.194
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_width, %eax
	subl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB19_44:                              # %if.end.199
                                        #   in Loop: Header=BB19_15 Depth=2
	jmp	.LBB19_45
.LBB19_45:                              # %if.end.200
                                        #   in Loop: Header=BB19_15 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-144(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_47
# BB#46:                                # %if.then.208
                                        #   in Loop: Header=BB19_15 Depth=2
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	subl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -144(%rbp)
	jmp	.LBB19_50
.LBB19_47:                              # %if.else.212
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movl	preview_height, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_49
# BB#48:                                # %if.then.221
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_height, %eax
	subl	-8(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -144(%rbp)
.LBB19_49:                              # %if.end.226
                                        #   in Loop: Header=BB19_15 Depth=2
	jmp	.LBB19_50
.LBB19_50:                              # %if.end.227
                                        #   in Loop: Header=BB19_15 Depth=2
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	deform_area_vectors, %rax
	movsd	%xmm0, (%rax)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	deform_area_vectors, %rax
	movsd	%xmm0, 8(%rax)
.LBB19_51:                              # %if.end.234
                                        #   in Loop: Header=BB19_15 Depth=2
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	deform_area_vectors, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	deform_area_vectors, %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, lock_alpha
	je	.LBB19_55
# BB#52:                                # %land.lhs.true
                                        #   in Loop: Header=BB19_15 Depth=2
	cmpl	$4, image_bpp
	je	.LBB19_54
# BB#53:                                # %lor.lhs.false
                                        #   in Loop: Header=BB19_15 Depth=2
	cmpl	$2, image_bpp
	jne	.LBB19_55
.LBB19_54:                              # %if.then.253
                                        #   in Loop: Header=BB19_15 Depth=2
	leaq	-148(%rbp), %rdi
	movl	-4(%rbp), %eax
	addl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-8(%rbp), %eax
	addl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	iwarp_preview_get_point
	movl	image_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	movb	-148(%rbp,%rdi), %cl
	movb	%cl, -149(%rbp)
.LBB19_55:                              # %if.end.261
                                        #   in Loop: Header=BB19_15 Depth=2
	leaq	-148(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	iwarp_preview_get_point
	cmpl	$0, lock_alpha
	jne	.LBB19_59
# BB#56:                                # %land.lhs.true.264
                                        #   in Loop: Header=BB19_15 Depth=2
	cmpl	$4, image_bpp
	je	.LBB19_58
# BB#57:                                # %lor.lhs.false.267
                                        #   in Loop: Header=BB19_15 Depth=2
	cmpl	$2, image_bpp
	jne	.LBB19_59
.LBB19_58:                              # %if.then.270
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	image_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movb	-148(%rbp,%rcx), %dl
	movb	%dl, -149(%rbp)
.LBB19_59:                              # %if.end.274
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	preview_bpp(%rip), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%eax, -196(%rbp)        # 4-byte Spill
	ja	.LBB19_64
# BB#81:                                # %if.end.274
                                        #   in Loop: Header=BB19_15 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI19_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB19_60:                              # %sw.bb.275
                                        #   in Loop: Header=BB19_15 Depth=2
	movb	-148(%rbp), %al
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-147(%rbp), %al
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-146(%rbp), %al
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-149(%rbp), %al
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	jmp	.LBB19_64
.LBB19_61:                              # %sw.bb.295
                                        #   in Loop: Header=BB19_15 Depth=2
	movb	-148(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-147(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-146(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	jmp	.LBB19_64
.LBB19_62:                              # %sw.bb.311
                                        #   in Loop: Header=BB19_15 Depth=2
	movb	-148(%rbp), %al
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-149(%rbp), %al
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	dstimage, %rsi
	movb	%al, (%rsi,%rdx)
	jmp	.LBB19_64
.LBB19_63:                              # %sw.bb.321
                                        #   in Loop: Header=BB19_15 Depth=2
	movb	-148(%rbp), %al
	movslq	-36(%rbp), %rcx
	movq	dstimage, %rdx
	movb	%al, (%rdx,%rcx)
.LBB19_64:                              # %sw.epilog.325
                                        #   in Loop: Header=BB19_15 Depth=2
	jmp	.LBB19_65
.LBB19_65:                              # %if.end.326
                                        #   in Loop: Header=BB19_15 Depth=2
	jmp	.LBB19_66
.LBB19_66:                              # %for.inc
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_15
.LBB19_67:                              # %for.end
                                        #   in Loop: Header=BB19_13 Depth=1
	jmp	.LBB19_68
.LBB19_68:                              # %for.inc.327
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_13
.LBB19_69:                              # %for.end.329
	movl	-52(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB19_70:                              # %for.cond.330
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_72 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB19_79
# BB#71:                                # %for.body.333
                                        #   in Loop: Header=BB19_70 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB19_72:                              # %for.cond.334
                                        #   Parent Loop BB19_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB19_77
# BB#73:                                # %for.body.337
                                        #   in Loop: Header=BB19_72 Depth=2
	movl	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	imull	$250, %eax, %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -64(%rbp)
	cmpl	$250, -64(%rbp)
	jge	.LBB19_75
# BB#74:                                # %if.then.345
                                        #   in Loop: Header=BB19_72 Depth=2
	movl	-32(%rbp), %eax
	addl	-8(%rbp), %eax
	imull	preview_width, %eax
	addl	-28(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	iwarp_vals, %eax
	movl	iwarp_vals, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	addl	-28(%rbp), %eax
	addl	iwarp_vals, %eax
	movl	%eax, -40(%rbp)
	movslq	-36(%rbp), %rdx
	shlq	$4, %rdx
	addq	deform_vectors, %rdx
	movslq	-40(%rbp), %rsi
	shlq	$4, %rsi
	addq	deform_area_vectors, %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rdx)
	movq	8(%rsi), %rsi
	movq	%rsi, 8(%rdx)
.LBB19_75:                              # %if.end.360
                                        #   in Loop: Header=BB19_72 Depth=2
	jmp	.LBB19_76
.LBB19_76:                              # %for.inc.361
                                        #   in Loop: Header=BB19_72 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_72
.LBB19_77:                              # %for.end.363
                                        #   in Loop: Header=BB19_70 Depth=1
	jmp	.LBB19_78
.LBB19_78:                              # %for.inc.364
                                        #   in Loop: Header=BB19_70 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_70
.LBB19_79:                              # %for.end.366
	movl	$1, iwarp_changed
	movl	-4(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-8(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	-4(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movl	-8(%rbp), %esi
	addl	-56(%rbp), %esi
	addl	$1, %esi
	movl	%eax, %edi
	movl	%esi, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-200(%rbp), %ecx        # 4-byte Reload
	callq	iwarp_update_preview
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	iwarp_deform, .Lfunc_end19-iwarp_deform
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI19_0:
	.quad	.LBB19_18
	.quad	.LBB19_19
	.quad	.LBB19_22
	.quad	.LBB19_23
	.quad	.LBB19_21
	.quad	.LBB19_20
.LJTI19_1:
	.quad	.LBB19_63
	.quad	.LBB19_62
	.quad	.LBB19_61
	.quad	.LBB19_60

	.text
	.align	16, 0x90
	.type	iwarp_get_deform_vector,@function
iwarp_get_deform_vector:                # @iwarp_get_deform_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jb	.LBB20_5
# BB#1:                                 # %land.lhs.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	preview_width, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_5
# BB#2:                                 # %land.lhs.true.3
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB20_5
# BB#3:                                 # %land.lhs.true.6
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	preview_height, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_5
# BB#4:                                 # %if.then
	cvttsd2si	-8(%rbp), %eax
	movl	%eax, -40(%rbp)
	cvttsd2si	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-44(%rbp), %eax
	imull	preview_width, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	subsd	(%rcx), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-36(%rbp), %eax
	addl	preview_width, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	preview_width, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	preview_width, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	subsd	(%rcx), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	subsd	8(%rcx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-36(%rbp), %eax
	addl	preview_width, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	preview_width, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	preview_width, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	deform_vectors, %rcx
	subsd	8(%rcx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-88(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-72(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB20_6
.LBB20_5:                               # %if.else
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB20_6:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end20:
	.size	iwarp_get_deform_vector, .Lfunc_end20-iwarp_get_deform_vector
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_preview_get_point,@function
iwarp_preview_get_point:                # @iwarp_preview_get_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	cvttsd2si	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	cvttsd2si	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, iwarp_vals+20
	je	.LBB21_6
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rdx
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	iwarp_preview_get_pixel
	leaq	-88(%rbp), %rdx
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	-32(%rbp), %edi
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	movl	-108(%rbp), %esi        # 4-byte Reload
	callq	iwarp_preview_get_pixel
	leaq	-96(%rbp), %rdx
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	addl	$1, %esi
	callq	iwarp_preview_get_pixel
	leaq	-104(%rbp), %rdx
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	-32(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -112(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	movl	-112(%rbp), %esi        # 4-byte Reload
	callq	iwarp_preview_get_pixel
	movl	$0, -36(%rbp)
.LBB21_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB21_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB21_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%edx, %esi
	cvtsi2sdl	%esi, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movslq	-36(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%edx, %esi
	cvtsi2sdl	%esi, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %dil
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dil, (%rcx,%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_2
.LBB21_5:                               # %for.end
	jmp	.LBB21_11
.LBB21_6:                               # %if.else
	leaq	-80(%rbp), %rdx
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	iwarp_preview_get_pixel
	movl	$0, -36(%rbp)
.LBB21_7:                               # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB21_10
# BB#8:                                 # %for.body.43
                                        #   in Loop: Header=BB21_7 Depth=1
	movslq	-36(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#9:                                 # %for.inc.48
                                        #   in Loop: Header=BB21_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_7
.LBB21_10:                              # %for.end.50
	jmp	.LBB21_11
.LBB21_11:                              # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	iwarp_preview_get_point, .Lfunc_end21-iwarp_preview_get_point
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_preview_get_pixel,@function
iwarp_preview_get_pixel:                # @iwarp_preview_get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB22_4
# BB#1:                                 # %lor.lhs.false
	movl	-4(%rbp), %eax
	cmpl	preview_width, %eax
	jge	.LBB22_4
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -8(%rbp)
	jl	.LBB22_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-8(%rbp), %eax
	cmpl	preview_height, %eax
	jl	.LBB22_5
.LBB22_4:                               # %if.then
	movabsq	$iwarp_preview_get_pixel.black, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB22_6
.LBB22_5:                               # %if.end
	movq	srcimage, %rax
	movl	-8(%rbp), %ecx
	imull	preview_width, %ecx
	addl	-4(%rbp), %ecx
	imull	image_bpp, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB22_6:                               # %return
	popq	%rbp
	retq
.Lfunc_end22:
	.size	iwarp_preview_get_pixel, .Lfunc_end22-iwarp_preview_get_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_resize_idle,@function
iwarp_resize_idle:                      # @iwarp_resize_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-24(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movl	$0, resize_idle
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	preview_width, %eax
	movl	%eax, -36(%rbp)
	movl	preview_height, %eax
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, max_current_preview_width
	movl	-12(%rbp), %eax
	movl	%eax, max_current_preview_height
	callq	iwarp_preview_init
	movl	$16, %eax
	movl	%eax, %esi
	movl	preview_width, %eax
	movl	%eax, -44(%rbp)
	movl	preview_height, %eax
	movl	%eax, -48(%rbp)
	movl	preview_width, %eax
	imull	preview_height, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -32(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	preview_width, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, preview_width
	movl	-40(%rbp), %ecx
	movl	%ecx, preview_height
	movl	$0, -56(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_3 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB23_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$0, -52(%rbp)
.LBB23_3:                               # %for.cond.4
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB23_6
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB23_3 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	shlq	$4, %rdx
	addq	-32(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	shlq	$4, %rsi
	addq	-32(%rbp), %rsi
	addq	$8, %rsi
	movq	%rdx, %rdi
	callq	iwarp_get_deform_vector
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB23_3
.LBB23_6:                               # %for.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_7
.LBB23_7:                               # %for.inc.19
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB23_1
.LBB23_8:                               # %for.end.21
	movl	-44(%rbp), %eax
	movl	%eax, preview_width
	movl	-48(%rbp), %eax
	movl	%eax, preview_height
	movq	deform_vectors, %rcx
	movq	%rcx, %rdi
	callq	g_free
	movq	-32(%rbp), %rcx
	movq	%rcx, deform_vectors
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	iwarp_scale_preview
	xorl	%eax, %eax
	movl	preview_width, %edx
	movl	preview_height, %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	iwarp_update_preview
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	iwarp_resize_idle, .Lfunc_end23-iwarp_resize_idle
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_scale_preview,@function
iwarp_scale_preview:                    # @iwarp_scale_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$1, %eax
	movl	%eax, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	preview_bpp, %eax
	movslq	%eax, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movl	$0, -24(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
                                        #       Child Loop BB24_7 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB24_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$0, -20(%rbp)
.LBB24_3:                               # %for.cond.3
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_7 Depth 3
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB24_15
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB24_3 Depth=2
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-4(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvttsd2si	-40(%rbp), %eax
	movl	%eax, -76(%rbp)
	cvttsd2si	-48(%rbp), %eax
	movl	%eax, -80(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-76(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB24_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB24_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB24_6:                               # %if.end
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	$0, -28(%rbp)
.LBB24_7:                               # %for.cond.24
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	preview_bpp, %eax
	jge	.LBB24_13
# BB#8:                                 # %for.body.27
                                        #   in Loop: Header=BB24_7 Depth=3
	movl	-80(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-76(%rbp), %eax
	imull	preview_bpp, %eax
	addl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB24_10
# BB#9:                                 # %if.then.34
                                        #   in Loop: Header=BB24_7 Depth=3
	movl	-68(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	preview_bpp, %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB24_11
.LBB24_10:                              # %if.else
                                        #   in Loop: Header=BB24_7 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB24_11:                              # %if.end.37
                                        #   in Loop: Header=BB24_7 Depth=3
	movslq	-68(%rbp), %rax
	movl	%eax, %ecx
	movq	dstimage(%rip), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm0
	movl	preview_bpp(%rip), %edi
	addl	%edi, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	subl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movslq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	dstimage(%rip), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm0
	movl	preview_bpp(%rip), %edi
	addl	%edi, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	subl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %r8b
	movl	-24(%rbp), %ecx
	imull	-4(%rbp), %ecx
	addl	-20(%rbp), %ecx
	imull	preview_bpp, %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-112(%rbp), %rdx
	movb	%r8b, (%rdx,%rax)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB24_7 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB24_7
.LBB24_13:                              # %for.end
                                        #   in Loop: Header=BB24_3 Depth=2
	jmp	.LBB24_14
.LBB24_14:                              # %for.inc.76
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB24_3
.LBB24_15:                              # %for.end.78
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_16
.LBB24_16:                              # %for.inc.79
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB24_1
.LBB24_17:                              # %for.end.81
	movq	dstimage, %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	movq	%rdi, dstimage
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	iwarp_scale_preview, .Lfunc_end24-iwarp_scale_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	iwarp_frame,@function
iwarp_frame:                            # @iwarp_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	leaq	-48(%rbp), %rdi
	movl	$1, %eax
	movl	$0, -88(%rbp)
	movl	yh, %ecx
	subl	yl, %ecx
	movl	xh, %edx
	subl	xl, %edx
	imull	%edx, %ecx
	movl	%ecx, -92(%rbp)
	movq	destdrawable, %rsi
	movl	xl, %edx
	movl	yl, %ecx
	movl	xh, %r8d
	subl	xl, %r8d
	movl	yh, %r9d
	subl	yl, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	xorl	%eax, %eax
	movb	%al, %r10b
	cmpl	$0, layer_alpha
	movb	%r10b, -121(%rbp)       # 1-byte Spill
	jne	.LBB25_2
# BB#1:                                 # %land.rhs
	movq	destdrawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -121(%rbp)         # 1-byte Spill
.LBB25_2:                               # %land.end
	movb	-121(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, do_animate
	jne	.LBB25_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB25_4:                               # %if.end
	movl	$1, %edi
	leaq	-48(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -56(%rbp)
.LBB25_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_8 Depth 2
                                        #       Child Loop BB25_10 Depth 3
                                        #         Child Loop BB25_19 Depth 4
                                        #         Child Loop BB25_14 Depth 4
	cmpq	$0, -56(%rbp)
	je	.LBB25_33
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, iwarp_vals+24
	jne	.LBB25_30
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB25_8:                               # %for.cond.11
                                        #   Parent Loop BB25_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_10 Depth 3
                                        #         Child Loop BB25_19 Depth 4
                                        #         Child Loop BB25_14 Depth 4
	movl	-76(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB25_29
# BB#9:                                 # %for.body.14
                                        #   in Loop: Header=BB25_8 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB25_10:                              # %for.cond.15
                                        #   Parent Loop BB25_5 Depth=1
                                        #     Parent Loop BB25_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB25_19 Depth 4
                                        #         Child Loop BB25_14 Depth 4
	movl	-80(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB25_27
# BB#11:                                # %for.body.19
                                        #   in Loop: Header=BB25_10 Depth=3
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movl	-80(%rbp), %eax
	subl	xl, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movl	-76(%rbp), %eax
	subl	yl, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	xorps	%xmm0, %xmm0
	movsd	animate_deform_value, %xmm1 # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	animate_deform_value, %xmm1 # xmm1 = mem[0],zero
	mulsd	-112(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB25_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB25_10 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_18
.LBB25_13:                              # %if.then.33
                                        #   in Loop: Header=BB25_10 Depth=3
	leaq	-96(%rbp), %rdi
	movsd	pre2img, %xmm0          # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	cvtsi2sdl	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	pre2img, %xmm1          # xmm1 = mem[0],zero
	mulsd	-112(%rbp), %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	callq	iwarp_get_point
	movl	$0, -84(%rbp)
.LBB25_14:                              # %for.cond.40
                                        #   Parent Loop BB25_5 Depth=1
                                        #     Parent Loop BB25_8 Depth=2
                                        #       Parent Loop BB25_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-84(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB25_17
# BB#15:                                # %for.body.43
                                        #   in Loop: Header=BB25_14 Depth=4
	movslq	-84(%rbp), %rax
	movb	-96(%rbp,%rax), %cl
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%cl, (%rax)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB25_14 Depth=4
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB25_14
.LBB25_17:                              # %for.end
                                        #   in Loop: Header=BB25_10 Depth=3
	jmp	.LBB25_23
.LBB25_18:                              # %if.else
                                        #   in Loop: Header=BB25_10 Depth=3
	leaq	-96(%rbp), %rdx
	movl	-80(%rbp), %edi
	movl	-76(%rbp), %esi
	callq	iwarp_get_pixel
	movl	$0, -84(%rbp)
.LBB25_19:                              # %for.cond.46
                                        #   Parent Loop BB25_5 Depth=1
                                        #     Parent Loop BB25_8 Depth=2
                                        #       Parent Loop BB25_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-84(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB25_22
# BB#20:                                # %for.body.49
                                        #   in Loop: Header=BB25_19 Depth=4
	movslq	-84(%rbp), %rax
	movb	-96(%rbp,%rax), %cl
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%cl, (%rax)
# BB#21:                                # %for.inc.53
                                        #   in Loop: Header=BB25_19 Depth=4
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB25_19
.LBB25_22:                              # %for.end.55
                                        #   in Loop: Header=BB25_10 Depth=3
	jmp	.LBB25_23
.LBB25_23:                              # %if.end.56
                                        #   in Loop: Header=BB25_10 Depth=3
	cmpl	$0, -116(%rbp)
	je	.LBB25_25
# BB#24:                                # %if.then.58
                                        #   in Loop: Header=BB25_10 Depth=3
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$-1, (%rax)
.LBB25_25:                              # %if.end.60
                                        #   in Loop: Header=BB25_10 Depth=3
	jmp	.LBB25_26
.LBB25_26:                              # %for.inc.61
                                        #   in Loop: Header=BB25_10 Depth=3
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB25_10
.LBB25_27:                              # %for.end.63
                                        #   in Loop: Header=BB25_8 Depth=2
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#28:                                # %for.inc.64
                                        #   in Loop: Header=BB25_8 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB25_8
.LBB25_29:                              # %for.end.66
                                        #   in Loop: Header=BB25_5 Depth=1
	cvtsi2sdl	-88(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB25_31
.LBB25_30:                              # %if.else.70
                                        #   in Loop: Header=BB25_5 Depth=1
	leaq	-88(%rbp), %rax
	movsd	iwarp_vals+32, %xmm0    # xmm0 = mem[0],zero
	mulsd	iwarp_vals+32, %xmm0
	movsd	%xmm0, supersample_threshold_2
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	-12(%rbp), %edx
	movq	-48(%rbp), %r8
	movl	-28(%rbp), %r9d
	movl	-92(%rbp), %r10d
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-136(%rbp), %ecx        # 4-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	iwarp_supersample
.LBB25_31:                              # %if.end.82
                                        #   in Loop: Header=BB25_5 Depth=1
	jmp	.LBB25_32
.LBB25_32:                              # %for.inc.83
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -56(%rbp)
	jmp	.LBB25_5
.LBB25_33:                              # %for.end.85
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	destdrawable, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	destdrawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	destdrawable, %rcx
	movl	(%rcx), %edi
	movl	xl, %esi
	movl	yl, %edx
	movl	xh, %r8d
	subl	xl, %r8d
	movl	yh, %r9d
	subl	yl, %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -148(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	iwarp_frame, .Lfunc_end25-iwarp_frame
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_get_point,@function
iwarp_get_point:                        # @iwarp_get_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-60(%rbp), %rdx
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	cvttsd2si	-8(%rbp), %eax
	movl	%eax, -76(%rbp)
	cvttsd2si	-16(%rbp), %eax
	movl	%eax, -80(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	iwarp_get_pixel
	leaq	-64(%rbp), %rdx
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	-80(%rbp), %esi
	movl	%eax, %edi
	callq	iwarp_get_pixel
	leaq	-68(%rbp), %rdx
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	iwarp_get_pixel
	leaq	-72(%rbp), %rdx
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	-80(%rbp), %esi
	addl	$1, %esi
	movl	%eax, %edi
	callq	iwarp_get_pixel
	cmpl	$0, layer_alpha
	je	.LBB26_8
# BB#1:                                 # %if.then
	movl	image_bpp(%rip), %eax
	decl	%eax
	movslq	%eax, %rcx
	movzbl	-60(%rbp,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	image_bpp(%rip), %eax
	decl	%eax
	movslq	%eax, %rcx
	movzbl	-64(%rbp,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	image_bpp(%rip), %eax
	decl	%eax
	movslq	%eax, %rcx
	movzbl	-68(%rbp,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	image_bpp(%rip), %eax
	decl	%eax
	movslq	%eax, %rcx
	movzbl	-72(%rbp,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	cvttsd2si	%xmm1, %eax
	movb	%al, %dl
	movl	image_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movl	image_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rsi
	cmpb	$0, (%rsi,%rcx)
	je	.LBB26_7
# BB#2:                                 # %if.then.41
	movl	$0, -84(%rbp)
.LBB26_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	image_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB26_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB26_3 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-84(%rbp), %rax
	movzbl	-60(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movzbl	-64(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-84(%rbp), %rax
	movzbl	-68(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movzbl	-72(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB26_3
.LBB26_6:                               # %for.end
	jmp	.LBB26_7
.LBB26_7:                               # %if.end
	jmp	.LBB26_13
.LBB26_8:                               # %if.else
	movl	$0, -84(%rbp)
.LBB26_9:                               # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB26_12
# BB#10:                                # %for.body.89
                                        #   in Loop: Header=BB26_9 Depth=1
	movslq	-84(%rbp), %rax
	movzbl	-60(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-64(%rbp,%rax), %edx
	subl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movslq	-84(%rbp), %rax
	movzbl	-68(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	-72(%rbp,%rax), %edx
	subl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %sil
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rdi
	movb	%sil, (%rdi,%rax)
# BB#11:                                # %for.inc.124
                                        #   in Loop: Header=BB26_9 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB26_9
.LBB26_12:                              # %for.end.126
	jmp	.LBB26_13
.LBB26_13:                              # %if.end.127
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	iwarp_get_point, .Lfunc_end26-iwarp_get_point
	.cfi_endproc

	.align	16, 0x90
	.type	iwarp_get_pixel,@function
iwarp_get_pixel:                        # @iwarp_get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %esi
	cmpl	xl, %esi
	jl	.LBB27_14
# BB#1:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	cmpl	xh, %eax
	jge	.LBB27_14
# BB#2:                                 # %land.lhs.true.2
	movl	-8(%rbp), %eax
	cmpl	yl, %eax
	jl	.LBB27_14
# BB#3:                                 # %land.lhs.true.4
	movl	-8(%rbp), %eax
	cmpl	yh, %eax
	jge	.LBB27_14
# BB#4:                                 # %if.then
	movl	-4(%rbp), %eax
	cltd
	idivl	tile_width
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	tile_height
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	iwarp_get_pixel.old_col, %eax
	jne	.LBB27_6
# BB#5:                                 # %lor.lhs.false
	movl	-32(%rbp), %eax
	cmpl	iwarp_get_pixel.old_row, %eax
	je	.LBB27_9
.LBB27_6:                               # %if.then.9
	cmpq	$0, tile
	je	.LBB27_8
# BB#7:                                 # %if.then.10
	xorl	%esi, %esi
	movq	tile, %rdi
	callq	gimp_tile_unref
.LBB27_8:                               # %if.end
	xorl	%esi, %esi
	movq	drawable, %rdi
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_drawable_get_tile
	movq	%rax, tile
	movq	tile, %rdi
	callq	gimp_tile_ref
	movl	-28(%rbp), %ecx
	movl	%ecx, iwarp_get_pixel.old_col
	movl	-32(%rbp), %ecx
	movl	%ecx, iwarp_get_pixel.old_row
.LBB27_9:                               # %if.end.11
	movq	tile, %rax
	movq	24(%rax), %rax
	movq	tile, %rcx
	movl	(%rcx), %edx
	movl	-8(%rbp), %esi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	idivl	tile_height
	movl	-52(%rbp), %esi         # 4-byte Reload
	imull	%edx, %esi
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	tile_width
	addl	%edx, %esi
	imull	image_bpp, %esi
	movl	%esi, %edx
	movl	%edx, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	%rcx, %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB27_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB27_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB27_10 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB27_10 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB27_10
.LBB27_13:                              # %for.end
	jmp	.LBB27_15
.LBB27_14:                              # %if.else
	movq	-16(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.LBB27_15:                              # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	iwarp_get_pixel, .Lfunc_end27-iwarp_get_pixel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4602678819172646912     # double 0.5
.LCPI28_1:
	.quad	-4620693217682128896    # double -0.5
.LCPI28_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	iwarp_supersample,@function
iwarp_supersample:                      # @iwarp_supersample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp100:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movl	$16, %r11d
	movl	%r11d, %ebx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	%r10, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movq	%rbx, %rsi
	callq	g_malloc_n
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -56(%rbp)
.LBB28_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB28_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB28_1 Depth=1
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	img2pre, %xmm2          # xmm2 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rsi
	shlq	$4, %rsi
	addq	-88(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rsi
	shlq	$4, %rsi
	addq	-88(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB28_1
.LBB28_4:                               # %for.end
	movl	-16(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB28_5:                               # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_7 Depth 2
                                        #       Child Loop BB28_9 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB28_16
# BB#6:                                 # %for.body.25
                                        #   in Loop: Header=BB28_5 Depth=1
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_1, %xmm1        # xmm1 = mem[0],zero
	movsd	img2pre, %xmm2          # xmm2 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm3
	addsd	%xmm3, %xmm1
	cvtsi2sdl	xl, %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	callq	iwarp_get_deform_vector
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
	movl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB28_7:                               # %for.cond.42
                                        #   Parent Loop BB28_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_9 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB28_14
# BB#8:                                 # %for.body.45
                                        #   in Loop: Header=BB28_7 Depth=2
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	img2pre, %xmm2          # xmm2 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	leaq	-68(%rbp), %rsi
	xorl	%edx, %edx
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rdi
	movsd	animate_deform_value, %xmm1 # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	animate_deform_value, %xmm1 # xmm1 = mem[0],zero
	mulsd	-112(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	-80(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	-80(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movl	$0, -68(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	-88(%rbp), %rcx
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %r8
	shlq	$4, %r8
	addq	-88(%rbp), %r8
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %r9
	shlq	$4, %r9
	addq	-80(%rbp), %r9
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %r10
	shlq	$4, %r10
	addq	-80(%rbp), %r10
	cvtsi2sdl	-64(%rbp), %xmm1
	cvtsi2sdl	-60(%rbp), %xmm2
	movsd	(%rcx), %xmm3           # xmm3 = mem[0],zero
	movsd	8(%rcx), %xmm4          # xmm4 = mem[0],zero
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movsd	8(%r8), %xmm6           # xmm6 = mem[0],zero
	movsd	(%r9), %xmm7            # xmm7 = mem[0],zero
	movsd	8(%r9), %xmm8           # xmm8 = mem[0],zero
	movsd	(%r10), %xmm9           # xmm9 = mem[0],zero
	movsd	8(%r10), %xmm10         # xmm10 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -160(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm8, %xmm5
	movaps	%xmm9, %xmm6
	movaps	%xmm10, %xmm7
	movsd	-152(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, (%rsp)
	movsd	-160(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 8(%rsp)
	movsd	-144(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 16(%rsp)
	callq	iwarp_getsample
	movq	-32(%rbp), %rcx
	movl	-60(%rbp), %eax
	subl	-16(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rcx
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	imull	image_bpp, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -136(%rbp)
	movl	$0, -56(%rbp)
.LBB28_9:                               # %for.cond.94
                                        #   Parent Loop BB28_5 Depth=1
                                        #     Parent Loop BB28_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB28_12
# BB#10:                                # %for.body.97
                                        #   in Loop: Header=BB28_9 Depth=3
	movslq	-56(%rbp), %rax
	movl	-128(%rbp,%rax,4), %eax
	cltd
	idivl	-68(%rbp)
	movb	%al, %cl
	movq	-136(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -136(%rbp)
	movb	%cl, (%rsi)
# BB#11:                                # %for.inc.101
                                        #   in Loop: Header=BB28_9 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB28_9
.LBB28_12:                              # %for.end.103
                                        #   in Loop: Header=BB28_7 Depth=2
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
# BB#13:                                # %for.inc.105
                                        #   in Loop: Header=BB28_7 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB28_7
.LBB28_14:                              # %for.end.107
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
# BB#15:                                # %for.inc.108
                                        #   in Loop: Header=BB28_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB28_5
.LBB28_16:                              # %for.end.110
	movq	-48(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	iwarp_supersample, .Lfunc_end28-iwarp_supersample
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	iwarp_getsample,@function
iwarp_getsample:                        # @iwarp_getsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movsd	32(%rbp), %xmm8         # xmm8 = mem[0],zero
	movsd	24(%rbp), %xmm9         # xmm9 = mem[0],zero
	movsd	16(%rbp), %xmm10        # xmm10 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -40(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -56(%rbp)
	movsd	%xmm10, -72(%rbp)
	movsd	%xmm9, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movsd	%xmm8, -112(%rbp)
	movl	-100(%rbp), %edx
	cmpl	iwarp_vals+40, %edx
	jge	.LBB29_2
# BB#1:                                 # %lor.lhs.false
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	iwarp_supersample_test
	cmpl	$0, %eax
	jne	.LBB29_7
.LBB29_2:                               # %if.then
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	leaq	-220(%rbp), %rdi
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	pre2img, %xmm0          # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	pre2img, %xmm1          # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	callq	iwarp_get_point
	movl	$0, -116(%rbp)
.LBB29_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB29_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB29_3 Depth=1
	movslq	-116(%rbp), %rax
	movzbl	-220(%rbp,%rax), %ecx
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB29_3
.LBB29_6:                               # %for.end
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB29_12
.LBB29_7:                               # %if.else
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	leaq	-220(%rbp), %rdi
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	pre2img, %xmm0          # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	pre2img, %xmm1          # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	callq	iwarp_get_point
	movl	$0, -116(%rbp)
.LBB29_8:                               # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	image_bpp, %eax
	jge	.LBB29_11
# BB#9:                                 # %for.body.33
                                        #   in Loop: Header=BB29_8 Depth=1
	movslq	-116(%rbp), %rax
	movzbl	-220(%rbp,%rax), %ecx
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
# BB#10:                                # %for.inc.40
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB29_8
.LBB29_11:                              # %for.end.42
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm2
	subsd	-112(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm1
	addsd	-112(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm2
	addsd	-112(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	img2pre, %xmm0          # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	xl, %xmm2
	subsd	%xmm2, %xmm1
	subsd	-112(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	img2pre, %xmm1          # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	yl, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	callq	iwarp_get_deform_vector
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	animate_deform_value, %xmm0 # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	movsd	-152(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-144(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-216(%rbp), %xmm7       # xmm7 = mem[0],zero
	movsd	-208(%rbp), %xmm8       # xmm8 = mem[0],zero
	movsd	-200(%rbp), %xmm9       # xmm9 = mem[0],zero
	movsd	-192(%rbp), %xmm10      # xmm10 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -248(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm8, %xmm5
	movaps	%xmm9, %xmm6
	movaps	%xmm10, %xmm7
	movsd	-232(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, (%rsp)
	movsd	-240(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 8(%rsp)
	movl	%ecx, %edx
	movsd	-248(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 16(%rsp)
	callq	iwarp_getsample
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-152(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-144(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-24(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-168(%rbp), %xmm7       # xmm7 = mem[0],zero
	movsd	-160(%rbp), %xmm8       # xmm8 = mem[0],zero
	movsd	-216(%rbp), %xmm9       # xmm9 = mem[0],zero
	movsd	-208(%rbp), %xmm10      # xmm10 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -264(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -272(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm8, %xmm5
	movaps	%xmm9, %xmm6
	movaps	%xmm10, %xmm7
	movsd	-256(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, (%rsp)
	movsd	-264(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 8(%rsp)
	movl	%ecx, %edx
	movsd	-272(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 16(%rsp)
	callq	iwarp_getsample
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-112(%rbp), %xmm1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-200(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-192(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-216(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-208(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-184(%rbp), %xmm7       # xmm7 = mem[0],zero
	movsd	-176(%rbp), %xmm8       # xmm8 = mem[0],zero
	movsd	-48(%rbp), %xmm9        # xmm9 = mem[0],zero
	movsd	-40(%rbp), %xmm10       # xmm10 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -296(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm8, %xmm5
	movaps	%xmm9, %xmm6
	movaps	%xmm10, %xmm7
	movsd	-280(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, (%rsp)
	movsd	-288(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 8(%rsp)
	movl	%ecx, %edx
	movsd	-296(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 16(%rsp)
	callq	iwarp_getsample
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-112(%rbp), %xmm1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-216(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-208(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-168(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-160(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-56(%rbp), %xmm8        # xmm8 = mem[0],zero
	movsd	-184(%rbp), %xmm9       # xmm9 = mem[0],zero
	movsd	-176(%rbp), %xmm10      # xmm10 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -320(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm4
	movaps	%xmm8, %xmm5
	movaps	%xmm9, %xmm6
	movaps	%xmm10, %xmm7
	movsd	-304(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, (%rsp)
	movsd	-312(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 8(%rsp)
	movl	%ecx, %edx
	movsd	-320(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 16(%rsp)
	callq	iwarp_getsample
.LBB29_12:                              # %if.end
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end29:
	.size	iwarp_getsample, .Lfunc_end29-iwarp_getsample
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	iwarp_supersample_test,@function
iwarp_supersample_test:                 # @iwarp_supersample_test
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	subsd	(%rcx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	subsd	8(%rcx), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	supersample_threshold_2, %xmm0
	jbe	.LBB30_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB30_9
.LBB30_2:                               # %if.end
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-40(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	supersample_threshold_2, %xmm0
	jbe	.LBB30_4
# BB#3:                                 # %if.then.17
	movl	$1, -4(%rbp)
	jmp	.LBB30_9
.LBB30_4:                               # %if.end.18
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-32(%rbp), %rax
	addsd	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	supersample_threshold_2, %xmm0
	jbe	.LBB30_6
# BB#5:                                 # %if.then.30
	movl	$1, -4(%rbp)
	jmp	.LBB30_9
.LBB30_6:                               # %if.end.31
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-40(%rbp), %rax
	addsd	8(%rax), %xmm0
	movq	-24(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	supersample_threshold_2, %xmm0
	jbe	.LBB30_8
# BB#7:                                 # %if.then.43
	movl	$1, -4(%rbp)
	jmp	.LBB30_9
.LBB30_8:                               # %if.end.44
	movl	$0, -4(%rbp)
.LBB30_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	iwarp_supersample_test, .Lfunc_end30-iwarp_supersample_test
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-iwarp"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Use mouse control to warp image areas"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Interactive warping of the specified drawable"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Norbert Schmitz"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_IWarp..."
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.13, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UTF-8"
	.size	.L.str.15, 6

	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	destdrawable,@object    # @destdrawable
	.local	destdrawable
	.comm	destdrawable,8,8
	.type	imageID,@object         # @imageID
	.local	imageID
	.comm	imageID,4,4
	.type	iwarp_vals,@object      # @iwarp_vals
	.data
	.align	8
iwarp_vals:
	.long	20                      # 0x14
	.zero	4
	.quad	4599075939470750515     # double 0.29999999999999999
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	4611686018427387904     # double 2
	.long	2                       # 0x2
	.zero	4
	.size	iwarp_vals, 48

	.type	srcimage,@object        # @srcimage
	.local	srcimage
	.comm	srcimage,8,8
	.type	dstimage,@object        # @dstimage
	.local	dstimage
	.comm	dstimage,8,8
	.type	deform_vectors,@object  # @deform_vectors
	.local	deform_vectors
	.comm	deform_vectors,8,8
	.type	deform_area_vectors,@object # @deform_area_vectors
	.local	deform_area_vectors
	.comm	deform_area_vectors,8,8
	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"iwarp"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"IWarp"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-iwarp"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-reset"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-cancel"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-ok"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"response"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"destroy"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Click and drag in the preview to define the distortions to apply to the image."
	.size	.L.str.24, 79

	.type	preview_width,@object   # @preview_width
	.local	preview_width
	.comm	preview_width,4,4
	.type	preview_height,@object  # @preview_height
	.local	preview_height
	.comm	preview_height,4,4
	.type	wint,@object            # @wint
	.local	wint
	.comm	wint,4,4
	.type	xl,@object              # @xl
	.local	xl
	.comm	xl,4,4
	.type	yl,@object              # @yl
	.local	yl
	.comm	yl,4,4
	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Region affected by plug-in is empty"
	.size	.L.str.25, 36

	.type	xh,@object              # @xh
	.local	xh
	.comm	xh,4,4
	.type	yh,@object              # @yh
	.local	yh
	.comm	yh,4,4
	.type	image_bpp,@object       # @image_bpp
	.local	image_bpp
	.comm	image_bpp,4,4
	.type	lock_alpha,@object      # @lock_alpha
	.local	lock_alpha
	.comm	lock_alpha,4,4
	.type	preview_bpp,@object     # @preview_bpp
	.local	preview_bpp
	.comm	preview_bpp,4,4
	.type	tile_width,@object      # @tile_width
	.local	tile_width
	.comm	tile_width,4,4
	.type	tile_height,@object     # @tile_height
	.local	tile_height
	.comm	tile_height,4,4
	.type	filter,@object          # @filter
	.local	filter
	.comm	filter,2000,16
	.type	max_current_preview_width,@object # @max_current_preview_width
	.data
	.align	4
max_current_preview_width:
	.long	320                     # 0x140
	.size	max_current_preview_width, 4

	.type	max_current_preview_height,@object # @max_current_preview_height
	.align	4
max_current_preview_height:
	.long	320                     # 0x140
	.size	max_current_preview_height, 4

	.type	pre2img,@object         # @pre2img
	.local	pre2img
	.comm	pre2img,8,8
	.type	img2pre,@object         # @img2pre
	.local	img2pre
	.comm	img2pre,8,8
	.type	iwarp_changed,@object   # @iwarp_changed
	.local	iwarp_changed
	.comm	iwarp_changed,4,4
	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"realize"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"event"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"size-allocate"
	.size	.L.str.28, 14

	.type	lastx,@object           # @lastx
	.local	lastx
	.comm	lastx,4,4
	.type	lasty,@object           # @lasty
	.local	lasty
	.comm	lasty,4,4
	.type	iwarp_preview_get_pixel.black,@object # @iwarp_preview_get_pixel.black
	.local	iwarp_preview_get_pixel.black
	.comm	iwarp_preview_get_pixel.black,4,1
	.type	resize_idle,@object     # @resize_idle
	.local	resize_idle
	.comm	resize_idle,4,4
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Deform Mode"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Move"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Grow"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"S_wirl CCW"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Remo_ve"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"S_hrink"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Sw_irl CW"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Deform radius:"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"D_eform amount:"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Bilinear"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"toggled"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Adaptive s_upersample"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"active"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"sensitive"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Ma_x depth:"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Thresho_ld:"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Settings"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"A_nimate"
	.size	.L.str.47, 9

	.type	do_animate,@object      # @do_animate
	.local	do_animate
	.comm	do_animate,4,4
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Number of _frames:"
	.size	.L.str.48, 19

	.type	animate_num_frames,@object # @animate_num_frames
	.data
	.align	4
animate_num_frames:
	.long	2                       # 0x2
	.size	animate_num_frames, 4

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"R_everse"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"clicked"
	.size	.L.str.50, 8

	.type	do_animate_reverse,@object # @do_animate_reverse
	.local	do_animate_reverse
	.comm	do_animate_reverse,4,4
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Ping pong"
	.size	.L.str.51, 11

	.type	do_animate_ping_pong,@object # @do_animate_ping_pong
	.local	do_animate_ping_pong
	.comm	do_animate_ping_pong,4,4
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_Animate"
	.size	.L.str.52, 9

	.type	layer_alpha,@object     # @layer_alpha
	.local	layer_alpha
	.comm	layer_alpha,4,4
	.type	animate_deform_value,@object # @animate_deform_value
	.data
	.align	8
animate_deform_value:
	.quad	4607182418800017408     # double 1
	.size	animate_deform_value, 8

	.type	frame_number,@object    # @frame_number
	.local	frame_number
	.comm	frame_number,4,4
	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"Frame %d"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Warping Frame %d"
	.size	.L.str.54, 17

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Ping pong"
	.size	.L.str.55, 10

	.type	tile,@object            # @tile
	.local	tile
	.comm	tile,8,8
	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Warping"
	.size	.L.str.56, 8

	.type	supersample_threshold_2,@object # @supersample_threshold_2
	.local	supersample_threshold_2
	.comm	supersample_threshold_2,8,8
	.type	iwarp_get_pixel.old_col,@object # @iwarp_get_pixel.old_col
	.data
	.align	4
iwarp_get_pixel.old_col:
	.long	4294967295              # 0xffffffff
	.size	iwarp_get_pixel.old_col, 4

	.type	iwarp_get_pixel.old_row,@object # @iwarp_get_pixel.old_row
	.align	4
iwarp_get_pixel.old_row:
	.long	4294967295              # 0xffffffff
	.size	iwarp_get_pixel.old_row, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
