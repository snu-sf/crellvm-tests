	.text
	.file	"animation-play.bc"
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
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.14, %rdx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_plugin_icon_register
	movl	%eax, -84(%rbp)         # 4-byte Spill
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
	subq	$80, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.15, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$1, -44(%rbp)
	jne	.LBB1_5
# BB#3:                                 # %land.lhs.true
	cmpl	$3, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then
	movl	$1, -48(%rbp)
.LBB1_5:                                # %if.end
	cmpl	$3, -48(%rbp)
	jne	.LBB1_9
# BB#6:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, image_id
	callq	do_playback
	cmpl	$1, -44(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	callq	gimp_displays_flush
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB1_8:                                # %if.end.12
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.13
	movl	$21, run.values
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$80, %rsp
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
	.type	do_playback,@function
do_playback:                            # @do_playback
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
	subq	$16, %rsp
	movl	image_id, %edi
	callq	gimp_image_width
	movl	%eax, width
	movl	image_id, %edi
	callq	gimp_image_height
	movabsq	$total_frames, %rsi
	movl	%eax, height
	movl	image_id, %edi
	callq	gimp_image_get_layers
	movq	%rax, layers
	movl	image_id, %edi
	callq	gimp_image_base_type
	movl	%eax, imagetype
	cmpl	$2, imagetype
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$ncolours, %rsi
	movl	image_id, %edi
	callq	gimp_image_get_colormap
	movq	%rax, palette
	jmp	.LBB3_9
.LBB3_2:                                # %if.else
	cmpl	$1, imagetype
	jne	.LBB3_8
# BB#3:                                 # %if.then.6
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, palette
	movl	$0, -4(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB3_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-4(%rbp), %eax
	movb	%al, %cl
	imull	$3, -4(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	palette, %rsi
	movb	%cl, (%rsi,%rdx)
	imull	$3, -4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	palette, %rsi
	movb	%cl, (%rsi,%rdx)
	imull	$3, -4(%rbp), %eax
	movslq	%eax, %rdx
	movq	palette, %rsi
	movb	%cl, (%rsi,%rdx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_4
.LBB3_7:                                # %for.end
	movl	$256, ncolours          # imm = 0x100
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.16
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$0, frame_number
	callq	gimp_tile_cache_size
	callq	init_preview
	movl	image_id, %edi
	callq	gimp_image_base_type
	movl	image_id, %edi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	gimp_image_get_name
	movl	-8(%rbp), %edi          # 4-byte Reload
	movq	%rax, %rsi
	callq	build_dialog
	movq	preview_data, %rdi
	callq	total_alpha_preview
	xorl	%edi, %edi
	callq	render_frame
	callq	show_frame
	callq	gtk_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	do_playback, .Lfunc_end3-do_playback
	.cfi_endproc

	.align	16, 0x90
	.type	init_preview,@function
init_preview:                           # @init_preview
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
	subq	$16, %rsp
	movl	width, %eax
	imull	height, %eax
	imull	$3, %eax, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, preview_data
	movl	width, %ecx
	imull	height, %ecx
	shrl	$3, %ecx
	addl	$1, %ecx
	addl	height, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, shape_preview_mask
	imull	$3, width, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, preview_alpha1_data
	imull	$3, width, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, preview_alpha2_data
	movl	$0, -4(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB4_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	imull	$3, -4(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	preview_alpha1_data, %rdx
	movb	$102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	preview_alpha1_data, %rdx
	movb	$102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	preview_alpha1_data, %rdx
	movb	$102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	preview_alpha2_data, %rdx
	movb	$-102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	preview_alpha2_data, %rdx
	movb	$-102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	preview_alpha2_data, %rdx
	movb	$-102, (%rdx,%rcx)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	imull	$3, -4(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	preview_alpha1_data, %rdx
	movb	$-102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	preview_alpha1_data, %rdx
	movb	$-102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	preview_alpha1_data, %rdx
	movb	$-102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	preview_alpha2_data, %rdx
	movb	$102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	preview_alpha2_data, %rdx
	movb	$102, (%rdx,%rcx)
	imull	$3, -4(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	preview_alpha2_data, %rdx
	movb	$102, (%rdx,%rcx)
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_6
.LBB4_6:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_1
.LBB4_7:                                # %for.end
	movq	preview_data, %rax
	movq	%rax, drawing_area_data
	movq	preview_data, %rax
	movq	%rax, shape_drawing_area_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_preview, .Lfunc_end4-init_preview
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	build_dialog,@function
build_dialog:                           # @build_dialog
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
	subq	$496, %rsp              # imm = 0x1F0
	movabsq	$.L.str.17, %rax
	movl	$1, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	callq	gtk_window_new
	movq	%rax, window
	movq	window, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	window, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-96(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.21, %rsi
	movabsq	$window_destroy, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	window, %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$popup_menu, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	window, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	window, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_help_connect
	movq	window, %rdi
	callq	ui_manager_new
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, ui_manager
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	window, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_tool_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_separator_tool_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_separator_tool_item_set_draw
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tool_item_set_expand
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -216(%rbp)       # 4-byte Spill
	movss	-216(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -220(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-220(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-220(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movq	%rax, drawing_area
	movq	drawing_area, %rdi
	movl	width, %esi
	movl	height, %edx
	callq	gtk_widget_set_size_request
	movl	$256, %esi              # imm = 0x100
	movq	drawing_area, %rdi
	callq	gtk_widget_add_events
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	drawing_area, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	drawing_area, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	drawing_area, %r10
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_progress_bar_new
	movq	%rax, progress
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	progress, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_end
	movq	progress, %rdi
	callq	gtk_widget_show
	callq	gtk_combo_box_text_new
	movq	%rax, speedcombo
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	speedcombo, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	speedcombo, %rdi
	callq	gtk_widget_show
	movl	$0, -100(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -100(%rbp)
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movl	-100(%rbp), %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	get_fps
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -112(%rbp)
	movq	speedcombo, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_text_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_text_append_text
	movq	-112(%rbp), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	speedcombo, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	movabsq	$.L.str.27, %rsi
	movabsq	$fpscombo_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	speedcombo, %rdx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	-336(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rdi
	movq	speedcombo, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gtk_combo_box_text_new
	movq	%rax, speedcombo
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	speedcombo, %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	speedcombo, %rdi
	callq	gtk_widget_show
	movl	$0, -100(%rbp)
.LBB5_5:                                # %for.cond.57
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -100(%rbp)
	jge	.LBB5_8
# BB#6:                                 # %for.body.59
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-100(%rbp), %edi
	callq	get_duration_factor
	movabsq	$.L.str.29, %rdi
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	movq	speedcombo, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_text_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_text_append_text
	movq	-120(%rbp), %rdi
	callq	g_free
# BB#7:                                 # %for.inc.66
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end.68
	movq	speedcombo, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	movabsq	$.L.str.27, %rsi
	movabsq	$speedcombo_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	speedcombo, %rdx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	-384(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	speedcombo, %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	cmpl	$2, total_frames
	jge	.LBB5_10
# BB#9:                                 # %if.then
	movabsq	$.L.str.31, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.32, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.33, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_action_set_sensitive
.LBB5_10:                               # %if.end
	movabsq	$.L.str.34, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_action_set_sensitive
	movq	window, %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_window_new
	movq	%rax, shape_window
	callq	gtk_drawing_area_new
	movq	%rax, shape_drawing_area
	movq	shape_drawing_area, %rdi
	movl	width, %esi
	movl	height, %edx
	callq	gtk_widget_set_size_request
	movq	shape_window, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	shape_drawing_area, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_show
	movl	$256, %esi              # imm = 0x100
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_add_events
	movq	shape_window, %rdi
	callq	gtk_widget_realize
	movq	shape_window, %rdi
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_window_set_back_pixmap
	movq	shape_window, %rdi
	callq	gtk_widget_get_display
	movl	$60, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -88(%rbp)
	movq	shape_window, %rdi
	callq	gtk_widget_get_window
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-88(%rbp), %rdi
	callq	gdk_cursor_unref
	movabsq	$.L.str.25, %rsi
	movabsq	$shape_pressed, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	shape_window, %rcx
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$shape_released, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	shape_window, %rdi
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$shape_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	shape_window, %rdi
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	shape_window, %rcx
	movq	%rcx, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	%r9d, %edi
	movl	$8, %r9d
	movl	%r9d, %esi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_malloc0_n
	movabsq	$.L.str.37, %rsi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.38, %rsi
	movabsq	$repaint_da, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	drawing_area, %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	-472(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$maybeblocked_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	shape_drawing_area, %rdi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	-480(%rbp), %r8         # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gdk_get_default_root_window
	movq	%rax, root_win
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	build_dialog, .Lfunc_end5-build_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	total_alpha_preview,@function
total_alpha_preview:                    # @total_alpha_preview
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB6_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	imull	$3, -12(%rbp), %eax
	imull	width, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-8(%rbp), %rcx
	movq	preview_alpha1_data, %rsi
	imull	$3, width, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	imull	$3, -12(%rbp), %eax
	imull	width, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-8(%rbp), %rcx
	movq	preview_alpha2_data, %rsi
	imull	$3, width, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	callq	memcpy
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_6
.LBB6_6:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	total_alpha_preview, .Lfunc_end6-total_alpha_preview
	.cfi_endproc

	.align	16, 0x90
	.type	render_frame,@function
render_frame:                           # @render_frame
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp29:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_style
	movq	%rax, -24(%rbp)
	movq	drawing_area, %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	total_frames, %ecx
	jl	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.83, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	total_frames, %edx
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_quit
.LBB7_2:                                # %if.end
	movl	total_frames, %eax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movq	layers, %rsi
	movl	(%rsi,%rdx,4), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	cmpq	$0, drawable
	jne	.LBB7_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.84, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gtk_main_quit
	jmp	.LBB7_228
.LBB7_4:                                # %if.end.8
	movl	frame_number, %edi
	callq	get_frame_disposal
	movl	%eax, -120(%rbp)
	movq	drawable, %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_width
	cmpl	$0, %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then.12
	movq	window, %rdi
	callq	gtk_widget_destroy
.LBB7_6:                                # %if.end.13
	cmpl	$2, -120(%rbp)
	je	.LBB7_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB7_10
.LBB7_8:                                # %land.lhs.true
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_10
# BB#9:                                 # %if.then.19
	movq	preview_data, %rdi
	callq	total_alpha_preview
.LBB7_10:                               # %if.end.20
	movl	render_frame.rawwidth, %eax
	imull	render_frame.rawheight, %eax
	imull	render_frame.rawbpp, %eax
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_drawable_width
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	-168(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	movq	drawable, %rcx
	movl	(%rcx), %eax
	movl	%edi, -172(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	callq	gimp_drawable_bpp
	movl	-172(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	movl	-164(%rbp), %eax        # 4-byte Reload
	cmpl	%edi, %eax
	je	.LBB7_14
# BB#11:                                # %if.then.31
	cmpq	$0, render_frame.rawframe
	je	.LBB7_13
# BB#12:                                # %if.then.33
	movq	render_frame.rawframe, %rdi
	callq	g_free
.LBB7_13:                               # %if.end.34
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	-176(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	movq	drawable, %rcx
	movl	(%rcx), %eax
	movl	%edi, -180(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	callq	gimp_drawable_bpp
	movl	-180(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	movslq	%edi, %rdi
	callq	g_malloc
	movq	%rax, render_frame.rawframe
.LBB7_14:                               # %if.end.44
	movq	drawable(%rip), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, render_frame.rawwidth(%rip)
	movq	drawable(%rip), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	movl	%eax, render_frame.rawheight(%rip)
	movq	drawable(%rip), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, render_frame.rawbpp(%rip)
	movq	drawable(%rip), %rcx
	movl	4(%rcx), %r8d
	movl	8(%rcx), %r9d
	movq	%rsp, %rdx
	movl	$0, 8(%rdx)
	movl	$0, (%rdx)
	leaq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	render_frame.rawframe(%rip), %rsi
	movq	drawable(%rip), %rdi
	movl	4(%rdi), %r8d
	movl	8(%rdi), %r9d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %edx        # 4-byte Reload
	movl	-196(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_get_rect
	movq	drawable(%rip), %rsi
	movl	(%rsi), %edi
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	gimp_drawable_offsets
	movl	imagetype(%rip), %ecx
	testl	%ecx, %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	je	.LBB7_15
	jmp	.LBB7_229
.LBB7_229:                              # %if.end.44
	movl	-204(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jb	.LBB7_121
	jmp	.LBB7_227
.LBB7_15:                               # %sw.bb
	movl	render_frame.rawwidth, %eax
	cmpl	width, %eax
	jne	.LBB7_48
# BB#16:                                # %land.lhs.true.57
	movl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jne	.LBB7_48
# BB#17:                                # %land.lhs.true.60
	cmpl	$0, -84(%rbp)
	jne	.LBB7_48
# BB#18:                                # %land.lhs.true.63
	cmpl	$0, -88(%rbp)
	jne	.LBB7_48
# BB#19:                                # %if.then.66
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_38
# BB#20:                                # %if.then.70
	movq	preview_data, %rax
	movq	%rax, -104(%rbp)
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	render_frame.rawwidth, %ecx
	imull	render_frame.rawheight, %ecx
	movl	%ecx, -108(%rbp)
.LBB7_21:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	$0, %eax
	je	.LBB7_25
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_24
# BB#23:                                # %if.then.76
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB7_21
.LBB7_24:                               # %if.end.78
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	%dl, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	%dl, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	%dl, (%rax)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB7_21
.LBB7_25:                               # %while.end
	cmpl	$0, detached
	je	.LBB7_37
# BB#26:                                # %if.then.86
	movq	render_frame.rawframe, %rax
	addq	$3, %rax
	movq	%rax, -96(%rbp)
	movl	$0, -112(%rbp)
.LBB7_27:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
	movl	-112(%rbp), %eax
	cmpl	render_frame.rawheight, %eax
	jge	.LBB7_36
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB7_27 Depth=1
	movl	$8, %eax
	movl	-112(%rbp), %ecx
	movl	render_frame.rawwidth, %edx
	addl	$7, %edx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-212(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	imull	%eax, %ecx
	movl	%ecx, -116(%rbp)
	movl	$0, -108(%rbp)
.LBB7_29:                               # %for.cond.92
                                        #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	render_frame.rawwidth, %eax
	jge	.LBB7_34
# BB#30:                                # %for.body.95
                                        #   in Loop: Header=BB7_29 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB7_32
# BB#31:                                # %if.then.99
                                        #   in Loop: Header=BB7_29 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movl	-108(%rbp), %edx
	andl	$7, %edx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-216(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-116(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -224(%rbp)        # 4-byte Spill
	cltd
	movl	-220(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %r8
	movq	shape_preview_mask, %r9
	movsbl	(%r9,%r8), %eax
	movl	-224(%rbp), %esi        # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB7_32:                               # %if.end.107
                                        #   in Loop: Header=BB7_29 Depth=2
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB7_29 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_29
.LBB7_34:                               # %for.end
                                        #   in Loop: Header=BB7_27 Depth=1
	jmp	.LBB7_35
.LBB7_35:                               # %for.inc.109
                                        #   in Loop: Header=BB7_27 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_27
.LBB7_36:                               # %for.end.111
	jmp	.LBB7_37
.LBB7_37:                               # %if.end.112
	jmp	.LBB7_44
.LBB7_38:                               # %if.else
	movl	render_frame.rawwidth, %eax
	cmpl	width, %eax
	jne	.LBB7_41
# BB#39:                                # %land.lhs.true.115
	movl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jne	.LBB7_41
# BB#40:                                # %if.then.118
	movq	preview_data, %rdi
	movq	render_frame.rawframe, %rsi
	movl	width, %eax
	imull	height, %eax
	imull	$3, %eax, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
.LBB7_41:                               # %if.end.122
	cmpl	$0, detached
	je	.LBB7_43
# BB#42:                                # %if.then.124
	movl	$255, %esi
	movl	$8, %eax
	movq	shape_preview_mask, %rdi
	movl	render_frame.rawwidth, %ecx
	imull	render_frame.rawheight, %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-228(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	render_frame.rawheight, %eax
	movslq	%eax, %r8
	movq	%r8, %rdx
	callq	memset
.LBB7_43:                               # %if.end.129
	jmp	.LBB7_44
.LBB7_44:                               # %if.end.130
	cmpl	$0, detached
	je	.LBB7_46
# BB#45:                                # %if.then.132
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-248(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-244(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
	jmp	.LBB7_47
.LBB7_46:                               # %if.else.137
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	%esi, -260(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -264(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-264(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-260(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
.LBB7_47:                               # %if.end.144
	jmp	.LBB7_120
.LBB7_48:                               # %if.else.145
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_82
# BB#49:                                # %if.then.149
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB7_50:                               # %for.cond.150
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	movl	-112(%rbp), %eax
	movl	render_frame.rawheight, %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_64
# BB#51:                                # %for.body.154
                                        #   in Loop: Header=BB7_50 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_52:                               # %for.cond.155
                                        #   Parent Loop BB7_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	render_frame.rawwidth, %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_62
# BB#53:                                # %for.body.159
                                        #   in Loop: Header=BB7_52 Depth=2
	cmpl	$0, -108(%rbp)
	jl	.LBB7_60
# BB#54:                                # %land.lhs.true.162
                                        #   in Loop: Header=BB7_52 Depth=2
	movl	-108(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB7_60
# BB#55:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB7_52 Depth=2
	cmpl	$0, -112(%rbp)
	jl	.LBB7_60
# BB#56:                                # %land.lhs.true.168
                                        #   in Loop: Header=BB7_52 Depth=2
	movl	-112(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB7_60
# BB#57:                                # %if.then.171
                                        #   in Loop: Header=BB7_52 Depth=2
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB7_59
# BB#58:                                # %if.then.176
                                        #   in Loop: Header=BB7_52 Depth=2
	movq	-96(%rbp), %rax
	movb	(%rax), %cl
	movl	-112(%rbp), %edx
	imull	width, %edx
	addl	-108(%rbp), %edx
	imull	$3, %edx, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	preview_data, %rsi
	movb	%cl, (%rsi,%rax)
	movq	-96(%rbp), %rax
	movb	1(%rax), %cl
	movl	-112(%rbp), %edx
	imull	width, %edx
	addl	-108(%rbp), %edx
	imull	$3, %edx, %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	preview_data, %rsi
	movb	%cl, (%rsi,%rax)
	movq	-96(%rbp), %rax
	movb	2(%rax), %cl
	movl	-112(%rbp), %edx
	imull	width, %edx
	addl	-108(%rbp), %edx
	imull	$3, %edx, %edx
	addl	$2, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	preview_data, %rsi
	movb	%cl, (%rsi,%rax)
.LBB7_59:                               # %if.end.196
                                        #   in Loop: Header=BB7_52 Depth=2
	jmp	.LBB7_60
.LBB7_60:                               # %if.end.197
                                        #   in Loop: Header=BB7_52 Depth=2
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#61:                                # %for.inc.199
                                        #   in Loop: Header=BB7_52 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_52
.LBB7_62:                               # %for.end.201
                                        #   in Loop: Header=BB7_50 Depth=1
	jmp	.LBB7_63
.LBB7_63:                               # %for.inc.202
                                        #   in Loop: Header=BB7_50 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_50
.LBB7_64:                               # %for.end.204
	cmpl	$0, detached
	je	.LBB7_81
# BB#65:                                # %if.then.206
	movq	render_frame.rawframe, %rax
	addq	$3, %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB7_66:                               # %for.cond.208
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_68 Depth 2
	movl	-112(%rbp), %eax
	movl	render_frame.rawheight, %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_80
# BB#67:                                # %for.body.212
                                        #   in Loop: Header=BB7_66 Depth=1
	movl	-112(%rbp), %eax
	movl	width, %ecx
	addl	$7, %ecx
	shrl	$3, %ecx
	imull	%ecx, %eax
	movl	%eax, -116(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_68:                               # %for.cond.216
                                        #   Parent Loop BB7_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	render_frame.rawwidth, %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_78
# BB#69:                                # %for.body.220
                                        #   in Loop: Header=BB7_68 Depth=2
	cmpl	$0, -108(%rbp)
	jl	.LBB7_76
# BB#70:                                # %land.lhs.true.223
                                        #   in Loop: Header=BB7_68 Depth=2
	movl	-108(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB7_76
# BB#71:                                # %land.lhs.true.226
                                        #   in Loop: Header=BB7_68 Depth=2
	cmpl	$0, -112(%rbp)
	jl	.LBB7_76
# BB#72:                                # %land.lhs.true.229
                                        #   in Loop: Header=BB7_68 Depth=2
	movl	-112(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB7_76
# BB#73:                                # %if.then.232
                                        #   in Loop: Header=BB7_68 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB7_75
# BB#74:                                # %if.then.236
                                        #   in Loop: Header=BB7_68 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movl	-108(%rbp), %edx
	andl	$7, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-268(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-116(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -276(%rbp)        # 4-byte Spill
	cltd
	movl	-272(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %r8
	movq	shape_preview_mask, %r9
	movsbl	(%r9,%r8), %eax
	movl	-276(%rbp), %esi        # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB7_75:                               # %if.end.246
                                        #   in Loop: Header=BB7_68 Depth=2
	jmp	.LBB7_76
.LBB7_76:                               # %if.end.247
                                        #   in Loop: Header=BB7_68 Depth=2
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#77:                                # %for.inc.249
                                        #   in Loop: Header=BB7_68 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_68
.LBB7_78:                               # %for.end.251
                                        #   in Loop: Header=BB7_66 Depth=1
	jmp	.LBB7_79
.LBB7_79:                               # %for.inc.252
                                        #   in Loop: Header=BB7_66 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_66
.LBB7_80:                               # %for.end.254
	jmp	.LBB7_81
.LBB7_81:                               # %if.end.255
	jmp	.LBB7_96
.LBB7_82:                               # %if.else.256
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB7_83:                               # %for.cond.257
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_85 Depth 2
	movl	-112(%rbp), %eax
	movl	render_frame.rawheight, %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_95
# BB#84:                                # %for.body.261
                                        #   in Loop: Header=BB7_83 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_85:                               # %for.cond.262
                                        #   Parent Loop BB7_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	render_frame.rawwidth, %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_93
# BB#86:                                # %for.body.266
                                        #   in Loop: Header=BB7_85 Depth=2
	cmpl	$0, -108(%rbp)
	jl	.LBB7_91
# BB#87:                                # %land.lhs.true.269
                                        #   in Loop: Header=BB7_85 Depth=2
	movl	-108(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB7_91
# BB#88:                                # %land.lhs.true.272
                                        #   in Loop: Header=BB7_85 Depth=2
	cmpl	$0, -112(%rbp)
	jl	.LBB7_91
# BB#89:                                # %land.lhs.true.275
                                        #   in Loop: Header=BB7_85 Depth=2
	movl	-112(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB7_91
# BB#90:                                # %if.then.278
                                        #   in Loop: Header=BB7_85 Depth=2
	movq	-96(%rbp), %rax
	movb	(%rax), %cl
	movl	-112(%rbp), %edx
	imull	width, %edx
	addl	-108(%rbp), %edx
	imull	$3, %edx, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	preview_data, %rsi
	movb	%cl, (%rsi,%rax)
	movq	-96(%rbp), %rax
	movb	1(%rax), %cl
	movl	-112(%rbp), %edx
	imull	width, %edx
	addl	-108(%rbp), %edx
	imull	$3, %edx, %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	preview_data, %rsi
	movb	%cl, (%rsi,%rax)
	movq	-96(%rbp), %rax
	movb	2(%rax), %cl
	movl	-112(%rbp), %edx
	imull	width, %edx
	addl	-108(%rbp), %edx
	imull	$3, %edx, %edx
	addl	$2, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	preview_data, %rsi
	movb	%cl, (%rsi,%rax)
.LBB7_91:                               # %if.end.298
                                        #   in Loop: Header=BB7_85 Depth=2
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -96(%rbp)
# BB#92:                                # %for.inc.300
                                        #   in Loop: Header=BB7_85 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_85
.LBB7_93:                               # %for.end.302
                                        #   in Loop: Header=BB7_83 Depth=1
	jmp	.LBB7_94
.LBB7_94:                               # %for.inc.303
                                        #   in Loop: Header=BB7_83 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_83
.LBB7_95:                               # %for.end.305
	jmp	.LBB7_96
.LBB7_96:                               # %if.end.306
	cmpl	$0, detached
	je	.LBB7_108
# BB#97:                                # %if.then.308
	cmpl	$2, -120(%rbp)
	je	.LBB7_106
# BB#98:                                # %land.lhs.true.311
	cmpl	$0, -12(%rbp)
	je	.LBB7_106
# BB#99:                                # %if.then.314
	cmpl	$0, -88(%rbp)
	jle	.LBB7_101
# BB#100:                               # %cond.true
	movl	-88(%rbp), %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB7_102
.LBB7_101:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB7_102
.LBB7_102:                              # %cond.end
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jae	.LBB7_104
# BB#103:                               # %cond.true.321
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB7_105
.LBB7_104:                              # %cond.false.323
	movl	height, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB7_105:                              # %cond.end.324
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	-124(%rbp), %r8d
	movl	width, %r9d
	movl	-128(%rbp), %r10d
	subl	-124(%rbp), %r10d
	cmpl	$1, total_frames
	cmovel	%esi, %ecx
	movq	preview_data, %r11
	imull	$3, -124(%rbp), %esi
	imull	width, %esi
	movl	%esi, %esi
	movl	%esi, %ebx
	addq	%rbx, %r11
	imull	$3, width, %esi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	%esi, -300(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	-304(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	movl	-300(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gdk_draw_rgb_image
	jmp	.LBB7_107
.LBB7_106:                              # %if.else.336
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	%esi, -316(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -320(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-320(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-316(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
.LBB7_107:                              # %if.end.343
	jmp	.LBB7_119
.LBB7_108:                              # %if.else.344
	cmpl	$2, -120(%rbp)
	je	.LBB7_117
# BB#109:                               # %land.lhs.true.347
	cmpl	$0, -12(%rbp)
	je	.LBB7_117
# BB#110:                               # %if.then.350
	cmpl	$0, -88(%rbp)
	jle	.LBB7_112
# BB#111:                               # %cond.true.354
	movl	-88(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB7_113
.LBB7_112:                              # %cond.false.355
	xorl	%eax, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB7_113
.LBB7_113:                              # %cond.end.356
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jae	.LBB7_115
# BB#114:                               # %cond.true.362
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB7_116
.LBB7_115:                              # %cond.false.364
	movl	height, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB7_116:                              # %cond.end.365
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	-132(%rbp), %r8d
	movl	width, %r9d
	movl	-136(%rbp), %r10d
	subl	-132(%rbp), %r10d
	cmpl	$1, total_frames
	cmovel	%esi, %ecx
	movq	preview_data, %r11
	imull	$3, -132(%rbp), %esi
	imull	width, %esi
	movl	%esi, %esi
	movl	%esi, %ebx
	addq	%rbx, %r11
	imull	$3, width, %esi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	%esi, -340(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	-344(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	movl	-340(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gdk_draw_rgb_image
	jmp	.LBB7_118
.LBB7_117:                              # %if.else.378
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -360(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-360(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-356(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
.LBB7_118:                              # %if.end.385
	jmp	.LBB7_119
.LBB7_119:                              # %if.end.386
	jmp	.LBB7_120
.LBB7_120:                              # %if.end.387
	jmp	.LBB7_227
.LBB7_121:                              # %sw.bb.388
	movl	render_frame.rawwidth, %eax
	cmpl	width, %eax
	jne	.LBB7_154
# BB#122:                               # %land.lhs.true.391
	movl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jne	.LBB7_154
# BB#123:                               # %land.lhs.true.394
	cmpl	$0, -84(%rbp)
	jne	.LBB7_154
# BB#124:                               # %land.lhs.true.397
	cmpl	$0, -88(%rbp)
	jne	.LBB7_154
# BB#125:                               # %if.then.400
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_144
# BB#126:                               # %if.then.404
	movq	preview_data, %rax
	movq	%rax, -104(%rbp)
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	render_frame.rawwidth, %ecx
	imull	render_frame.rawheight, %ecx
	movl	%ecx, -108(%rbp)
.LBB7_127:                              # %while.cond.406
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	$0, %eax
	je	.LBB7_131
# BB#128:                               # %while.body.409
                                        #   in Loop: Header=BB7_127 Depth=1
	movq	-96(%rbp), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_130
# BB#129:                               # %if.then.412
                                        #   in Loop: Header=BB7_127 Depth=1
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB7_127
.LBB7_130:                              # %if.end.415
                                        #   in Loop: Header=BB7_127 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movb	%sil, (%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movb	%sil, (%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movb	%sil, (%rax)
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB7_127
.LBB7_131:                              # %while.end.435
	cmpl	$0, detached
	je	.LBB7_143
# BB#132:                               # %if.then.437
	movq	render_frame.rawframe, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movl	$0, -112(%rbp)
.LBB7_133:                              # %for.cond.439
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_135 Depth 2
	movl	-112(%rbp), %eax
	cmpl	render_frame.rawheight, %eax
	jge	.LBB7_142
# BB#134:                               # %for.body.442
                                        #   in Loop: Header=BB7_133 Depth=1
	movl	$8, %eax
	movl	-112(%rbp), %ecx
	movl	render_frame.rawwidth, %edx
	addl	$7, %edx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-364(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	imull	%eax, %ecx
	movl	%ecx, -116(%rbp)
	movl	$0, -108(%rbp)
.LBB7_135:                              # %for.cond.446
                                        #   Parent Loop BB7_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	render_frame.rawwidth, %eax
	jge	.LBB7_140
# BB#136:                               # %for.body.449
                                        #   in Loop: Header=BB7_135 Depth=2
	movq	-96(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_138
# BB#137:                               # %if.then.451
                                        #   in Loop: Header=BB7_135 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movl	-108(%rbp), %edx
	andl	$7, %edx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-368(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-116(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -376(%rbp)        # 4-byte Spill
	cltd
	movl	-372(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %r8
	movq	shape_preview_mask, %r9
	movsbl	(%r9,%r8), %eax
	movl	-376(%rbp), %esi        # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB7_138:                              # %if.end.461
                                        #   in Loop: Header=BB7_135 Depth=2
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
# BB#139:                               # %for.inc.463
                                        #   in Loop: Header=BB7_135 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_135
.LBB7_140:                              # %for.end.465
                                        #   in Loop: Header=BB7_133 Depth=1
	jmp	.LBB7_141
.LBB7_141:                              # %for.inc.466
                                        #   in Loop: Header=BB7_133 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_133
.LBB7_142:                              # %for.end.468
	jmp	.LBB7_143
.LBB7_143:                              # %if.end.469
	jmp	.LBB7_150
.LBB7_144:                              # %if.else.470
	movq	preview_data, %rax
	movq	%rax, -104(%rbp)
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	render_frame.rawwidth, %ecx
	imull	render_frame.rawheight, %ecx
	movl	%ecx, -108(%rbp)
.LBB7_145:                              # %while.cond.472
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, %eax
	je	.LBB7_147
# BB#146:                               # %while.body.475
                                        #   in Loop: Header=BB7_145 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movb	%sil, (%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movb	%sil, (%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movb	%sil, (%rax)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB7_145
.LBB7_147:                              # %while.end.495
	cmpl	$0, detached
	je	.LBB7_149
# BB#148:                               # %if.then.497
	movl	$255, %esi
	movl	$8, %eax
	movq	shape_preview_mask, %rdi
	movl	render_frame.rawwidth, %ecx
	imull	render_frame.rawheight, %ecx
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-380(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	render_frame.rawheight, %eax
	movslq	%eax, %r8
	movq	%r8, %rdx
	callq	memset
.LBB7_149:                              # %if.end.502
	jmp	.LBB7_150
.LBB7_150:                              # %if.end.503
	cmpl	$0, detached
	je	.LBB7_152
# BB#151:                               # %if.then.505
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-392(%rbp), %rax        # 8-byte Reload
	movl	%esi, -396(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -400(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-400(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-396(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
	jmp	.LBB7_153
.LBB7_152:                              # %if.else.512
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	%esi, -412(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -416(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-416(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-412(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
.LBB7_153:                              # %if.end.519
	jmp	.LBB7_226
.LBB7_154:                              # %if.else.520
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_188
# BB#155:                               # %if.then.524
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB7_156:                              # %for.cond.525
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_158 Depth 2
	movl	-112(%rbp), %eax
	movl	render_frame.rawheight, %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_170
# BB#157:                               # %for.body.529
                                        #   in Loop: Header=BB7_156 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_158:                              # %for.cond.530
                                        #   Parent Loop BB7_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	render_frame.rawwidth, %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_168
# BB#159:                               # %for.body.534
                                        #   in Loop: Header=BB7_158 Depth=2
	cmpl	$0, -108(%rbp)
	jl	.LBB7_166
# BB#160:                               # %land.lhs.true.537
                                        #   in Loop: Header=BB7_158 Depth=2
	movl	-108(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB7_166
# BB#161:                               # %land.lhs.true.540
                                        #   in Loop: Header=BB7_158 Depth=2
	cmpl	$0, -112(%rbp)
	jl	.LBB7_166
# BB#162:                               # %land.lhs.true.543
                                        #   in Loop: Header=BB7_158 Depth=2
	movl	-112(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB7_166
# BB#163:                               # %if.then.546
                                        #   in Loop: Header=BB7_158 Depth=2
	movq	-96(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_165
# BB#164:                               # %if.then.549
                                        #   in Loop: Header=BB7_158 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movl	-112(%rbp), %ecx
	imull	width, %ecx
	addl	-108(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	preview_data, %rdx
	movb	%sil, (%rdx,%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movl	-112(%rbp), %ecx
	imull	width, %ecx
	addl	-108(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	preview_data, %rdx
	movb	%sil, (%rdx,%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movl	-112(%rbp), %ecx
	imull	width, %ecx
	addl	-108(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	preview_data, %rdx
	movb	%sil, (%rdx,%rax)
.LBB7_165:                              # %if.end.583
                                        #   in Loop: Header=BB7_158 Depth=2
	jmp	.LBB7_166
.LBB7_166:                              # %if.end.584
                                        #   in Loop: Header=BB7_158 Depth=2
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
# BB#167:                               # %for.inc.586
                                        #   in Loop: Header=BB7_158 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_158
.LBB7_168:                              # %for.end.588
                                        #   in Loop: Header=BB7_156 Depth=1
	jmp	.LBB7_169
.LBB7_169:                              # %for.inc.589
                                        #   in Loop: Header=BB7_156 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_156
.LBB7_170:                              # %for.end.591
	cmpl	$0, detached
	je	.LBB7_187
# BB#171:                               # %if.then.593
	movq	render_frame.rawframe, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB7_172:                              # %for.cond.595
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_174 Depth 2
	movl	-112(%rbp), %eax
	movl	render_frame.rawheight, %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_186
# BB#173:                               # %for.body.599
                                        #   in Loop: Header=BB7_172 Depth=1
	movl	-112(%rbp), %eax
	movl	width, %ecx
	addl	$7, %ecx
	shrl	$3, %ecx
	imull	%ecx, %eax
	movl	%eax, -116(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_174:                              # %for.cond.603
                                        #   Parent Loop BB7_172 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	render_frame.rawwidth, %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_184
# BB#175:                               # %for.body.607
                                        #   in Loop: Header=BB7_174 Depth=2
	cmpl	$0, -108(%rbp)
	jl	.LBB7_182
# BB#176:                               # %land.lhs.true.610
                                        #   in Loop: Header=BB7_174 Depth=2
	movl	-108(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB7_182
# BB#177:                               # %land.lhs.true.613
                                        #   in Loop: Header=BB7_174 Depth=2
	cmpl	$0, -112(%rbp)
	jl	.LBB7_182
# BB#178:                               # %land.lhs.true.616
                                        #   in Loop: Header=BB7_174 Depth=2
	movl	-112(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB7_182
# BB#179:                               # %if.then.619
                                        #   in Loop: Header=BB7_174 Depth=2
	movq	-96(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_181
# BB#180:                               # %if.then.621
                                        #   in Loop: Header=BB7_174 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movl	-108(%rbp), %edx
	andl	$7, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-420(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-116(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -428(%rbp)        # 4-byte Spill
	cltd
	movl	-424(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %r8
	movq	shape_preview_mask, %r9
	movsbl	(%r9,%r8), %eax
	movl	-428(%rbp), %esi        # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
.LBB7_181:                              # %if.end.631
                                        #   in Loop: Header=BB7_174 Depth=2
	jmp	.LBB7_182
.LBB7_182:                              # %if.end.632
                                        #   in Loop: Header=BB7_174 Depth=2
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
# BB#183:                               # %for.inc.634
                                        #   in Loop: Header=BB7_174 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_174
.LBB7_184:                              # %for.end.636
                                        #   in Loop: Header=BB7_172 Depth=1
	jmp	.LBB7_185
.LBB7_185:                              # %for.inc.637
                                        #   in Loop: Header=BB7_172 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_172
.LBB7_186:                              # %for.end.639
	jmp	.LBB7_187
.LBB7_187:                              # %if.end.640
	jmp	.LBB7_202
.LBB7_188:                              # %if.else.641
	movq	render_frame.rawframe, %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB7_189:                              # %for.cond.642
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_191 Depth 2
	movl	-112(%rbp), %eax
	movl	render_frame.rawheight, %ecx
	addl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_201
# BB#190:                               # %for.body.646
                                        #   in Loop: Header=BB7_189 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_191:                              # %for.cond.647
                                        #   Parent Loop BB7_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movl	render_frame.rawwidth, %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_199
# BB#192:                               # %for.body.651
                                        #   in Loop: Header=BB7_191 Depth=2
	cmpl	$0, -108(%rbp)
	jl	.LBB7_197
# BB#193:                               # %land.lhs.true.654
                                        #   in Loop: Header=BB7_191 Depth=2
	movl	-108(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB7_197
# BB#194:                               # %land.lhs.true.657
                                        #   in Loop: Header=BB7_191 Depth=2
	cmpl	$0, -112(%rbp)
	jl	.LBB7_197
# BB#195:                               # %land.lhs.true.660
                                        #   in Loop: Header=BB7_191 Depth=2
	movl	-112(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB7_197
# BB#196:                               # %if.then.663
                                        #   in Loop: Header=BB7_191 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movl	-112(%rbp), %ecx
	imull	width, %ecx
	addl	-108(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	preview_data, %rdx
	movb	%sil, (%rdx,%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movl	-112(%rbp), %ecx
	imull	width, %ecx
	addl	-108(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	preview_data, %rdx
	movb	%sil, (%rdx,%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	palette, %rdx
	movb	(%rdx,%rax), %sil
	movl	-112(%rbp), %ecx
	imull	width, %ecx
	addl	-108(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	preview_data, %rdx
	movb	%sil, (%rdx,%rax)
.LBB7_197:                              # %if.end.697
                                        #   in Loop: Header=BB7_191 Depth=2
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
# BB#198:                               # %for.inc.699
                                        #   in Loop: Header=BB7_191 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_191
.LBB7_199:                              # %for.end.701
                                        #   in Loop: Header=BB7_189 Depth=1
	jmp	.LBB7_200
.LBB7_200:                              # %for.inc.702
                                        #   in Loop: Header=BB7_189 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_189
.LBB7_201:                              # %for.end.704
	jmp	.LBB7_202
.LBB7_202:                              # %if.end.705
	cmpl	$0, detached
	je	.LBB7_214
# BB#203:                               # %if.then.707
	cmpl	$2, -120(%rbp)
	je	.LBB7_212
# BB#204:                               # %land.lhs.true.710
	cmpl	$0, -12(%rbp)
	je	.LBB7_212
# BB#205:                               # %if.then.713
	cmpl	$0, -88(%rbp)
	jle	.LBB7_207
# BB#206:                               # %cond.true.717
	movl	-88(%rbp), %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB7_208
.LBB7_207:                              # %cond.false.718
	xorl	%eax, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB7_208
.LBB7_208:                              # %cond.end.719
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jae	.LBB7_210
# BB#209:                               # %cond.true.725
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jmp	.LBB7_211
.LBB7_210:                              # %cond.false.727
	movl	height, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB7_211:                              # %cond.end.728
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	-140(%rbp), %r8d
	movl	width, %r9d
	movl	-144(%rbp), %r10d
	subl	-140(%rbp), %r10d
	cmpl	$1, total_frames
	cmovel	%esi, %ecx
	movq	preview_data, %r11
	imull	$3, -140(%rbp), %esi
	imull	width, %esi
	movl	%esi, %esi
	movl	%esi, %ebx
	addq	%rbx, %r11
	imull	$3, width, %esi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	%esi, -452(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	-456(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	movl	-452(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gdk_draw_rgb_image
	jmp	.LBB7_213
.LBB7_212:                              # %if.else.741
	movq	shape_preview_mask, %rdi
	callq	reshape_from_bitmap
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	%esi, -468(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -472(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-472(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-468(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
.LBB7_213:                              # %if.end.748
	jmp	.LBB7_225
.LBB7_214:                              # %if.else.749
	cmpl	$2, -120(%rbp)
	je	.LBB7_223
# BB#215:                               # %land.lhs.true.752
	cmpl	$0, -12(%rbp)
	je	.LBB7_223
# BB#216:                               # %if.then.755
	cmpl	$0, -88(%rbp)
	jle	.LBB7_218
# BB#217:                               # %cond.true.759
	movl	-88(%rbp), %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB7_219
.LBB7_218:                              # %cond.false.760
	xorl	%eax, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB7_219
.LBB7_219:                              # %cond.end.761
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	cmpl	height, %eax
	jae	.LBB7_221
# BB#220:                               # %cond.true.767
	movl	-88(%rbp), %eax
	addl	render_frame.rawheight, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB7_222
.LBB7_221:                              # %cond.false.769
	movl	height, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB7_222:                              # %cond.end.770
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	-148(%rbp), %r8d
	movl	width, %r9d
	movl	-152(%rbp), %r10d
	subl	-148(%rbp), %r10d
	cmpl	$1, total_frames
	cmovel	%esi, %ecx
	movq	preview_data, %r11
	imull	$3, -148(%rbp), %esi
	imull	width, %esi
	movl	%esi, %esi
	movl	%esi, %ebx
	addq	%rbx, %r11
	imull	$3, width, %esi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	%esi, -492(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	-496(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	movl	-492(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gdk_draw_rgb_image
	jmp	.LBB7_224
.LBB7_223:                              # %if.else.783
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	872(%rdi), %rdi
	movl	width, %r8d
	movl	height, %r9d
	cmpl	$1, total_frames
	cmovel	%esi, %edx
	movq	preview_data, %r10
	imull	$3, width, %esi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	%esi, -508(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -512(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-512(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	-508(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 16(%rsp)
	callq	gdk_draw_rgb_image
.LBB7_224:                              # %if.end.790
	jmp	.LBB7_225
.LBB7_225:                              # %if.end.791
	jmp	.LBB7_226
.LBB7_226:                              # %if.end.792
	jmp	.LBB7_227
.LBB7_227:                              # %sw.epilog
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB7_228:                              # %return
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	render_frame, .Lfunc_end7-render_frame
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607173411600762667     # double 0.99899999999999999
	.text
	.align	16, 0x90
	.type	show_frame,@function
show_frame:                             # @show_frame
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
	subq	$32, %rsp
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	progress(%rip), %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	frame_number(%rip), %ecx
	movl	%ecx, %esi
	cvtsi2ssq	%rsi, %xmm0
	cvtsi2sdl	total_frames, %xmm1
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction
	movabsq	$.L.str.87, %rdi
	callq	gettext
	movl	frame_number, %ecx
	addl	$1, %ecx
	movl	total_frames, %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	movq	progress, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	show_frame, .Lfunc_end8-show_frame
	.cfi_endproc

	.align	16, 0x90
	.type	window_destroy,@function
window_destroy:                         # @window_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, playing
	je	.LBB9_2
# BB#1:                                 # %if.then
	callq	remove_timer
.LBB9_2:                                # %if.end
	cmpq	$0, shape_window
	je	.LBB9_4
# BB#3:                                 # %if.then.2
	movq	shape_window, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB9_4:                                # %if.end.4
	callq	gtk_main_quit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	window_destroy, .Lfunc_end9-window_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	popup_menu,@function
popup_menu:                             # @popup_menu
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
	subq	$96, %rsp
	movabsq	$.L.str.39, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ui_manager, %rdi
	movq	%rax, %rsi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_set_screen
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -16(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB10_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpq	$0, -16(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB10_5
# BB#4:                                 # %cond.true.7
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.8
	callq	gtk_get_current_event_time
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_6:                               # %cond.end.10
	movl	-68(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_menu_popup
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	popup_menu, .Lfunc_end10-popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	ui_manager_new,@function
ui_manager_new:                         # @ui_manager_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_ui_manager_new
	movabsq	$.L.str.73, %rdi
	movq	%rax, -16(%rbp)
	callq	gtk_action_group_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_action_group_set_translation_domain
	movabsq	$ui_manager_new.actions, %rsi
	movl	$8, %edx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_actions
	movabsq	$ui_manager_new.toggle_actions, %rsi
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdi
	callq	gtk_action_group_add_toggle_actions
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_accel_group
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_add_accel_group
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, %rdi
	callq	gtk_accel_group_lock
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.74, %rsi
	movq	$-1, %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string
	cmpq	$0, -32(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.75, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	leaq	-32(%rbp), %rdi
	callq	g_clear_error
.LBB11_2:                               # %if.end
	movabsq	$.L.str.76, %rsi
	movq	$-1, %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string
	cmpq	$0, -32(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB11_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.75, %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	leaq	-32(%rbp), %rdi
	callq	g_clear_error
.LBB11_4:                               # %if.end.11
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ui_manager_new, .Lfunc_end11-ui_manager_new
	.cfi_endproc

	.align	16, 0x90
	.type	button_press,@function
button_press:                           # @button_press
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	popup_menu
	movl	%eax, -4(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB12_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	button_press, .Lfunc_end12-button_press
	.cfi_endproc

	.align	16, 0x90
	.type	get_fps,@function
get_fps:                                # @get_fps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$8, %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	ja	.LBB13_10
# BB#12:                                # %entry
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_1:                               # %sw.bb
	movl	$10, -4(%rbp)
	jmp	.LBB13_11
.LBB13_2:                               # %sw.bb.1
	movl	$12, -4(%rbp)
	jmp	.LBB13_11
.LBB13_3:                               # %sw.bb.2
	movl	$15, -4(%rbp)
	jmp	.LBB13_11
.LBB13_4:                               # %sw.bb.3
	movl	$24, -4(%rbp)
	jmp	.LBB13_11
.LBB13_5:                               # %sw.bb.4
	movl	$25, -4(%rbp)
	jmp	.LBB13_11
.LBB13_6:                               # %sw.bb.5
	movl	$30, -4(%rbp)
	jmp	.LBB13_11
.LBB13_7:                               # %sw.bb.6
	movl	$50, -4(%rbp)
	jmp	.LBB13_11
.LBB13_8:                               # %sw.bb.7
	movl	$60, -4(%rbp)
	jmp	.LBB13_11
.LBB13_9:                               # %sw.bb.8
	movl	$72, -4(%rbp)
	jmp	.LBB13_11
.LBB13_10:                              # %sw.default
	movl	$10, -4(%rbp)
.LBB13_11:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	get_fps, .Lfunc_end13-get_fps
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_1
	.quad	.LBB13_2
	.quad	.LBB13_3
	.quad	.LBB13_4
	.quad	.LBB13_5
	.quad	.LBB13_6
	.quad	.LBB13_7
	.quad	.LBB13_8
	.quad	.LBB13_9

	.text
	.align	16, 0x90
	.type	fpscombo_changed,@function
fpscombo_changed:                       # @fpscombo_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active
	movl	%eax, %edi
	callq	get_fps
	movl	$1000, %edi             # imm = 0x3E8
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-28(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movl	%eax, default_frame_duration
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	fpscombo_changed, .Lfunc_end14-fpscombo_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4620693217682128896     # double 8
.LCPI15_1:
	.quad	4616189618054758400     # double 4
.LCPI15_2:
	.quad	4611686018427387904     # double 2
.LCPI15_3:
	.quad	4607182418800017408     # double 1
.LCPI15_4:
	.quad	4602678819172646912     # double 0.5
.LCPI15_5:
	.quad	4598175219545276416     # double 0.25
.LCPI15_6:
	.quad	4593671619917905920     # double 0.125
	.text
	.align	16, 0x90
	.type	get_duration_factor,@function
get_duration_factor:                    # @get_duration_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$6, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB15_8
# BB#10:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movsd	.LCPI15_6, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_2:                               # %sw.bb.1
	movsd	.LCPI15_5, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_3:                               # %sw.bb.2
	movsd	.LCPI15_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_4:                               # %sw.bb.3
	movsd	.LCPI15_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_5:                               # %sw.bb.4
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_6:                               # %sw.bb.5
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_7:                               # %sw.bb.6
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %sw.default
	movsd	.LCPI15_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB15_9:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_duration_factor, .Lfunc_end15-get_duration_factor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_1
	.quad	.LBB15_2
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7

	.text
	.align	16, 0x90
	.type	speedcombo_changed,@function
speedcombo_changed:                     # @speedcombo_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active
	movabsq	$.L.str.34, %rsi
	movl	%eax, duration_index
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$3, duration_index
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.78, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$6, duration_index
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.79, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$0, duration_index
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	speedcombo_changed, .Lfunc_end16-speedcombo_changed
	.cfi_endproc

	.align	16, 0x90
	.type	shape_pressed,@function
shape_pressed:                          # @shape_pressed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	button_press
	cmpl	$0, %eax
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB17_7
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB17_6
# BB#3:                                 # %if.then.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_5
# BB#4:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB17_7
.LBB17_5:                               # %if.end.6
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movl	$536, %edx              # imm = 0x218
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gdk_pointer_grab
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_window_raise
.LBB17_6:                               # %if.end.13
	movl	$0, -4(%rbp)
.LBB17_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	shape_pressed, .Lfunc_end17-shape_pressed
	.cfi_endproc

	.align	16, 0x90
	.type	shape_released,@function
shape_released:                         # @shape_released
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
	callq	gdk_flush
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	shape_released, .Lfunc_end18-shape_released
	.cfi_endproc

	.align	16, 0x90
	.type	shape_motion,@function
shape_motion:                           # @shape_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-32(%rbp), %rax
	leaq	-36(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	root_win, %rdi
	movq	%rax, %rsi
	callq	gdk_window_get_pointer
	movl	-28(%rbp), %r8d
	andl	$256, %r8d              # imm = 0x100
	cmpl	$0, %r8d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB19_4
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB19_6
.LBB19_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rsi
	subl	(%rsi), %ecx
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rsi
	subl	4(%rsi), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_window_move
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	shape_released
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB19_5:                               # %if.end.9
	movl	$0, -4(%rbp)
.LBB19_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	shape_motion, .Lfunc_end19-shape_motion
	.cfi_endproc

	.align	16, 0x90
	.type	repaint_da,@function
repaint_da:                             # @repaint_da
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	872(%rdx), %rsi
	movl	width, %r10d
	movl	height, %r11d
	cmpl	$1, total_frames
	cmovel	%r9d, %r8d
	movq	drawing_area_data, %rdx
	imull	$3, width, %r9d
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gdk_draw_rgb_image
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	repaint_da, .Lfunc_end20-repaint_da
	.cfi_endproc

	.align	16, 0x90
	.type	maybeblocked_expose,@function
maybeblocked_expose:                    # @maybeblocked_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$0, playing
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	repaint_sda
	movl	%eax, -4(%rbp)
.LBB21_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	maybeblocked_expose, .Lfunc_end21-maybeblocked_expose
	.cfi_endproc

	.align	16, 0x90
	.type	remove_timer,@function
remove_timer:                           # @remove_timer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, timer
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	timer, %edi
	callq	g_source_remove
	movl	$0, timer
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB22_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	remove_timer, .Lfunc_end22-remove_timer
	.cfi_endproc

	.align	16, 0x90
	.type	step_callback,@function
step_callback:                          # @step_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, playing
	je	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.77, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, %rdi
	callq	gtk_action_activate
.LBB23_2:                               # %if.end
	callq	do_step
	callq	show_frame
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	step_callback, .Lfunc_end23-step_callback
	.cfi_endproc

	.align	16, 0x90
	.type	rewind_callback,@function
rewind_callback:                        # @rewind_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, playing
	je	.LBB24_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.77, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, %rdi
	callq	gtk_action_activate
.LBB24_2:                               # %if.end
	movl	$0, frame_number
	movl	frame_number, %edi
	callq	render_frame
	callq	show_frame
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	rewind_callback, .Lfunc_end24-rewind_callback
	.cfi_endproc

	.align	16, 0x90
	.type	help_callback,@function
help_callback:                          # @help_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.6, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_standard_help_func
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	help_callback, .Lfunc_end25-help_callback
	.cfi_endproc

	.align	16, 0x90
	.type	close_callback,@function
close_callback:                         # @close_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	close_callback, .Lfunc_end26-close_callback
	.cfi_endproc

	.align	16, 0x90
	.type	speed_up_callback,@function
speed_up_callback:                      # @speed_up_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, duration_index
	jle	.LBB27_2
# BB#1:                                 # %if.then
	movl	duration_index, %eax
	addl	$-1, %eax
	movl	%eax, duration_index
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rdi
	cmpl	$0, duration_index
	setg	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.34, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$3, duration_index
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.78, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movl	$1, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_action_set_sensitive
	callq	update_combobox
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	speed_up_callback, .Lfunc_end27-speed_up_callback
	.cfi_endproc

	.align	16, 0x90
	.type	speed_down_callback,@function
speed_down_callback:                    # @speed_down_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$6, duration_index
	jge	.LBB28_2
# BB#1:                                 # %if.then
	movl	duration_index, %eax
	addl	$1, %eax
	movl	%eax, duration_index
.LBB28_2:                               # %if.end
	movq	-8(%rbp), %rdi
	cmpl	$6, duration_index
	setl	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.34, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$3, duration_index
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.79, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movl	$1, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_action_set_sensitive
	callq	update_combobox
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	speed_down_callback, .Lfunc_end28-speed_down_callback
	.cfi_endproc

	.align	16, 0x90
	.type	speed_reset_callback,@function
speed_reset_callback:                   # @speed_reset_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movl	$3, duration_index
	movq	-8(%rbp), %rdi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.78, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movl	$1, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.79, %rsi
	movq	ui_manager, %rdi
	callq	gtk_ui_manager_get_action
	movl	$1, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_action_set_sensitive
	callq	update_combobox
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	speed_reset_callback, .Lfunc_end29-speed_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	play_callback,@function
play_callback:                          # @play_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, playing
	je	.LBB30_2
# BB#1:                                 # %if.then
	callq	remove_timer
.LBB30_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, playing
	cmpl	$0, playing
	je	.LBB30_4
# BB#3:                                 # %if.then.2
	movabsq	$advance_frame_callback, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	frame_number(%rip), %edi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	callq	get_frame_duration
	movl	%eax, %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm0
	movl	duration_index(%rip), %edi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	get_duration_factor
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rdx
	movl	%edx, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	g_timeout_add
	movl	%eax, timer
.LBB30_4:                               # %if.end.7
	movq	-8(%rbp), %rax
	cmpl	$0, playing
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB30_6
# BB#5:                                 # %cond.true
	movabsq	$.L.str.81, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB30_7
.LBB30_6:                               # %cond.false
	movabsq	$.L.str.68, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB30_7:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.80, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	play_callback, .Lfunc_end30-play_callback
	.cfi_endproc

	.align	16, 0x90
	.type	detach_callback,@function
detach_callback:                        # @detach_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	detached, %eax
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.82, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB31_8
.LBB31_2:                               # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, detached
	cmpl	$0, detached
	je	.LBB31_6
# BB#3:                                 # %if.then.1
	movl	width, %eax
	imull	height, %eax
	imull	$3, %eax, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, drawing_area_data
	movq	drawing_area_data, %rdi
	callq	total_alpha_preview
	movq	shape_window, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	drawing_area, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	drawing_area, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB31_5
# BB#4:                                 # %if.then.9
	movq	drawing_area, %rdi
	callq	gtk_widget_get_window
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin
	movq	shape_window, %rdx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %ecx
	addl	$6, %ecx
	movl	-20(%rbp), %r8d
	addl	$6, %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%r8d, %edx
	callq	gtk_window_move
.LBB31_5:                               # %if.end.15
	movq	shape_window, %rdi
	callq	gtk_widget_show
	movq	shape_drawing_area, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gdk_window_set_back_pixmap
	xorl	%esi, %esi
	movq	shape_preview_mask, %rdi
	movl	width, %ecx
	imull	height, %ecx
	shrl	$3, %ecx
	addl	height, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	memset
	movl	frame_number, %edi
	callq	render_frame
	jmp	.LBB31_7
.LBB31_6:                               # %if.else
	movq	drawing_area_data, %rdi
	callq	g_free
	movq	shape_drawing_area_data, %rdi
	movq	%rdi, drawing_area_data
	movl	frame_number, %edi
	callq	render_frame
	movq	shape_window, %rdi
	callq	gtk_widget_hide
.LBB31_7:                               # %if.end.20
	movq	drawing_area, %rdi
	callq	gtk_widget_queue_draw
.LBB31_8:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	detach_callback, .Lfunc_end31-detach_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
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
	je	.LBB32_2
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
.LBB32_2:                               # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end32:
	.size	g_warning, .Lfunc_end32-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	do_step,@function
do_step:                                # @do_step
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movl	frame_number, %eax
	addl	$1, %eax
	xorl	%edx, %edx
	divl	total_frames
	movl	%edx, frame_number
	movl	frame_number, %edi
	callq	render_frame
	popq	%rbp
	retq
.Lfunc_end33:
	.size	do_step, .Lfunc_end33-do_step
	.cfi_endproc

	.align	16, 0x90
	.type	update_combobox,@function
update_combobox:                        # @update_combobox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	speedcombo, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	duration_index, %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	update_combobox, .Lfunc_end34-update_combobox
	.cfi_endproc

	.align	16, 0x90
	.type	get_frame_duration,@function
get_frame_duration:                     # @get_frame_duration
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -20(%rbp)
	movl	total_frames, %edi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	movq	layers, %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	parse_ms_tag
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB35_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	jg	.LBB35_4
# BB#3:                                 # %if.then.2
	movl	default_frame_duration, %eax
	movl	%eax, -20(%rbp)
.LBB35_4:                               # %if.end.3
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	get_frame_duration, .Lfunc_end35-get_frame_duration
	.cfi_endproc

	.align	16, 0x90
	.type	advance_frame_callback,@function
advance_frame_callback:                 # @advance_frame_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$advance_frame_callback, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	remove_timer
	movl	frame_number(%rip), %eax
	incl	%eax
	movl	total_frames(%rip), %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %edi
	callq	get_frame_duration
	movl	%eax, %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	duration_index(%rip), %edi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	get_duration_factor
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rsi
	movl	%esi, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	g_timeout_add
	movl	%eax, timer
	callq	do_step
	callq	show_frame
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	advance_frame_callback, .Lfunc_end36-advance_frame_callback
	.cfi_endproc

	.align	16, 0x90
	.type	parse_ms_tag,@function
parse_ms_tag:                           # @parse_ms_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB37_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	is_ms_tag
	cmpl	$0, %eax
	je	.LBB37_4
# BB#3:                                 # %if.then
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB37_7
.LBB37_4:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_5
.LBB37_5:                               # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB37_1
.LBB37_6:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB37_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	parse_ms_tag, .Lfunc_end37-parse_ms_tag
	.cfi_endproc

	.align	16, 0x90
	.type	is_ms_tag,@function
is_ms_tag:                              # @is_ms_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB38_35
.LBB38_2:                               # %if.end
	movl	$1, -40(%rbp)
.LBB38_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -45(%rbp)          # 1-byte Spill
	jge	.LBB38_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB38_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -45(%rbp)         # 1-byte Spill
.LBB38_5:                               # %land.end
                                        #   in Loop: Header=BB38_3 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_6
	jmp	.LBB38_7
.LBB38_6:                               # %while.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB38_3
.LBB38_7:                               # %while.end
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB38_9
# BB#8:                                 # %lor.lhs.false
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	jne	.LBB38_10
.LBB38_9:                               # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB38_35
.LBB38_10:                              # %if.end.19
	jmp	.LBB38_11
.LBB38_11:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	imull	$10, -36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	subl	$48, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
# BB#12:                                # %do.cond
                                        #   in Loop: Header=BB38_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -46(%rbp)          # 1-byte Spill
	jge	.LBB38_14
# BB#13:                                # %land.rhs.26
                                        #   in Loop: Header=BB38_11 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -46(%rbp)         # 1-byte Spill
.LBB38_14:                              # %land.end.35
                                        #   in Loop: Header=BB38_11 Depth=1
	movb	-46(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_11
# BB#15:                                # %do.end
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$2, %eax
	jg	.LBB38_17
# BB#16:                                # %if.then.39
	movl	$0, -4(%rbp)
	jmp	.LBB38_35
.LBB38_17:                              # %if.end.40
	jmp	.LBB38_18
.LBB38_18:                              # %while.cond.41
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -47(%rbp)          # 1-byte Spill
	jge	.LBB38_20
# BB#19:                                # %land.rhs.44
                                        #   in Loop: Header=BB38_18 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -47(%rbp)         # 1-byte Spill
.LBB38_20:                              # %land.end.50
                                        #   in Loop: Header=BB38_18 Depth=1
	movb	-47(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_21
	jmp	.LBB38_22
.LBB38_21:                              # %while.body.51
                                        #   in Loop: Header=BB38_18 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB38_18
.LBB38_22:                              # %while.end.53
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$2, %eax
	jle	.LBB38_25
# BB#23:                                # %lor.lhs.false.57
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$77, %edi
	jne	.LBB38_25
# BB#24:                                # %lor.lhs.false.64
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$83, %edi
	je	.LBB38_26
.LBB38_25:                              # %if.then.72
	movl	$0, -4(%rbp)
	jmp	.LBB38_35
.LBB38_26:                              # %if.end.73
	movl	-40(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
.LBB38_27:                              # %while.cond.75
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -48(%rbp)          # 1-byte Spill
	jge	.LBB38_29
# BB#28:                                # %land.rhs.78
                                        #   in Loop: Header=BB38_27 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -48(%rbp)         # 1-byte Spill
.LBB38_29:                              # %land.end.84
                                        #   in Loop: Header=BB38_27 Depth=1
	movb	-48(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_30
	jmp	.LBB38_31
.LBB38_30:                              # %while.body.85
                                        #   in Loop: Header=BB38_27 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB38_27
.LBB38_31:                              # %while.end.87
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$1, %eax
	jl	.LBB38_33
# BB#32:                                # %lor.lhs.false.91
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$41, %edx
	je	.LBB38_34
.LBB38_33:                              # %if.then.97
	movl	$0, -4(%rbp)
	jmp	.LBB38_35
.LBB38_34:                              # %if.end.98
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -4(%rbp)
.LBB38_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	is_ms_tag, .Lfunc_end38-is_ms_tag
	.cfi_endproc

	.align	16, 0x90
	.type	repaint_sda,@function
repaint_sda:                            # @repaint_sda
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	872(%rdx), %rsi
	movl	width, %r10d
	movl	height, %r11d
	cmpl	$1, total_frames
	cmovel	%r9d, %r8d
	movq	shape_drawing_area_data, %rdx
	imull	$3, width, %r9d
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gdk_draw_rgb_image
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	repaint_sda, .Lfunc_end39-repaint_sda
	.cfi_endproc

	.align	16, 0x90
	.type	get_frame_disposal,@function
get_frame_disposal:                     # @get_frame_disposal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	total_frames, %edi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	movq	layers, %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	parse_disposal_tag
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	get_frame_disposal, .Lfunc_end40-get_frame_disposal
	.cfi_endproc

	.align	16, 0x90
	.type	reshape_from_bitmap,@function
reshape_from_bitmap:                    # @reshape_from_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, reshape_from_bitmap.prev_bitmap
	je	.LBB41_2
# BB#1:                                 # %lor.lhs.false
	movq	reshape_from_bitmap.prev_bitmap, %rdi
	movq	-8(%rbp), %rsi
	movl	width, %eax
	imull	height, %eax
	shrl	$3, %eax
	addl	height, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB41_5
.LBB41_2:                               # %if.then
	movq	shape_window, %rdi
	callq	gtk_widget_get_window
	movq	-8(%rbp), %rsi
	movl	width, %edx
	movl	height, %ecx
	movq	%rax, %rdi
	callq	gdk_bitmap_create_from_data
	xorl	%ecx, %ecx
	movq	%rax, -16(%rbp)
	movq	shape_window, %rdi
	movq	-16(%rbp), %rsi
	movl	%ecx, %edx
	callq	gtk_widget_shape_combine_mask
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpq	$0, reshape_from_bitmap.prev_bitmap
	jne	.LBB41_4
# BB#3:                                 # %if.then.5
	movl	width, %eax
	imull	height, %eax
	shrl	$3, %eax
	addl	height, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, reshape_from_bitmap.prev_bitmap
.LBB41_4:                               # %if.end
	movq	reshape_from_bitmap.prev_bitmap, %rdi
	movq	-8(%rbp), %rsi
	movl	width, %eax
	imull	height, %eax
	shrl	$3, %eax
	addl	height, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
.LBB41_5:                               # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	reshape_from_bitmap, .Lfunc_end41-reshape_from_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	parse_disposal_tag,@function
parse_disposal_tag:                     # @parse_disposal_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB42_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB42_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB42_1 Depth=1
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	is_disposal_tag
	cmpl	$0, %eax
	je	.LBB42_4
# BB#3:                                 # %if.then
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB42_7
.LBB42_4:                               # %if.end
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_5
.LBB42_5:                               # %for.inc
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB42_1
.LBB42_6:                               # %for.end
	movl	$0, -4(%rbp)
.LBB42_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	parse_disposal_tag, .Lfunc_end42-parse_disposal_tag
	.cfi_endproc

	.align	16, 0x90
	.type	is_disposal_tag,@function
is_disposal_tag:                        # @is_disposal_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$9, %rax
	je	.LBB43_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB43_8
.LBB43_2:                               # %if.end
	movabsq	$.L.str.85, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB43_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movl	$9, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB43_8
.LBB43_4:                               # %if.else
	movabsq	$.L.str.86, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB43_6
# BB#5:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movl	$9, (%rax)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB43_8
.LBB43_6:                               # %if.end.7
	jmp	.LBB43_7
.LBB43_7:                               # %if.end.8
	movl	$0, -4(%rbp)
.LBB43_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	is_disposal_tag, .Lfunc_end43-is_disposal_tag
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
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable (unused)"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-animationplay"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Preview a GIMP layer-based animation"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Adam D. Moss <adam@gimp.org>"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997, 1998..."
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Playback..."
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, INDEXED*, GRAY*"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Animation"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-media-play"
	.size	.L.str.14, 15

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"UTF-8"
	.size	.L.str.16, 6

	.type	image_id,@object        # @image_id
	.local	image_id
	.comm	image_id,4,4
	.type	width,@object           # @width
	.local	width
	.comm	width,4,4
	.type	height,@object          # @height
	.local	height
	.comm	height,4,4
	.type	total_frames,@object    # @total_frames
	.local	total_frames
	.comm	total_frames,4,4
	.type	layers,@object          # @layers
	.local	layers
	.comm	layers,8,8
	.type	imagetype,@object       # @imagetype
	.local	imagetype
	.comm	imagetype,4,4
	.type	ncolours,@object        # @ncolours
	.local	ncolours
	.comm	ncolours,4,4
	.type	palette,@object         # @palette
	.local	palette
	.comm	palette,8,8
	.type	frame_number,@object    # @frame_number
	.local	frame_number
	.comm	frame_number,4,4
	.type	preview_data,@object    # @preview_data
	.local	preview_data
	.comm	preview_data,8,8
	.type	shape_preview_mask,@object # @shape_preview_mask
	.local	shape_preview_mask
	.comm	shape_preview_mask,8,8
	.type	preview_alpha1_data,@object # @preview_alpha1_data
	.local	preview_alpha1_data
	.comm	preview_alpha1_data,8,8
	.type	preview_alpha2_data,@object # @preview_alpha2_data
	.local	preview_alpha2_data
	.comm	preview_alpha2_data,8,8
	.type	drawing_area_data,@object # @drawing_area_data
	.local	drawing_area_data
	.comm	drawing_area_data,8,8
	.type	shape_drawing_area_data,@object # @shape_drawing_area_data
	.local	shape_drawing_area_data
	.comm	shape_drawing_area_data,8,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"animation-play"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Animation Playback:"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" "
	.size	.L.str.19, 2

	.type	window,@object          # @window
	.local	window
	.comm	window,8,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"animation-playback"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"destroy"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"popup-menu"
	.size	.L.str.22, 11

	.type	ui_manager,@object      # @ui_manager
	.local	ui_manager
	.comm	ui_manager,8,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/anim-play-toolbar"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/anim-play-toolbar/space"
	.size	.L.str.24, 25

	.type	drawing_area,@object    # @drawing_area
	.local	drawing_area
	.comm	drawing_area,8,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"button-press-event"
	.size	.L.str.25, 19

	.type	progress,@object        # @progress
	.local	progress
	.comm	progress,8,8
	.type	speedcombo,@object      # @speedcombo
	.local	speedcombo
	.comm	speedcombo,8,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%d fps"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"changed"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Default framerate"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%g\303\227"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Playback speed"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/ui/anim-play-toolbar/play"
	.size	.L.str.31, 27

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"/ui/anim-play-toolbar/step"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/ui/anim-play-toolbar/rewind"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/anim-play-popup/speed-reset"
	.size	.L.str.34, 29

	.type	shape_window,@object    # @shape_window
	.local	shape_window
	.comm	shape_window,8,8
	.type	shape_drawing_area,@object # @shape_drawing_area
	.local	shape_drawing_area
	.comm	shape_drawing_area,8,8
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"button-release-event"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"motion-notify-event"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"cursor-offset"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"expose-event"
	.size	.L.str.38, 13

	.type	root_win,@object        # @root_win
	.local	root_win
	.comm	root_win,8,8
	.type	playing,@object         # @playing
	.local	playing
	.comm	playing,4,4
	.type	timer,@object           # @timer
	.local	timer
	.comm	timer,4,4
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/anim-play-popup"
	.size	.L.str.39, 17

	.type	ui_manager_new.actions,@object # @ui_manager_new.actions
	.data
	.align	16
ui_manager_new.actions:
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	0
	.quad	.L.str.43
	.quad	step_callback
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	0
	.quad	0
	.quad	.L.str.46
	.quad	rewind_callback
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	0
	.quad	0
	.quad	0
	.quad	help_callback
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	0
	.quad	close_callback
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	close_callback
	.quad	.L.str.55
	.quad	0
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	speed_up_callback
	.quad	.L.str.59
	.quad	0
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	speed_down_callback
	.quad	.L.str.63
	.quad	0
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	speed_reset_callback
	.size	ui_manager_new.actions, 384

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"step"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-media-next"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Step"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Step to next frame"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"rewind"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-media-rewind"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Rewind the animation"
	.size	.L.str.46, 21

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"help"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gtk-help"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"close"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gtk-close"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"<control>W"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"quit"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gtk-quit"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"<control>Q"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"speed-up"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Faster"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"<control>L"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Increase the speed of the animation"
	.size	.L.str.58, 36

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"speed-down"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Slower"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<control>J"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Decrease the speed of the animation"
	.size	.L.str.62, 36

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"speed-reset"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Reset speed"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"<control>K"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Reset the speed of the animation"
	.size	.L.str.66, 33

	.type	ui_manager_new.toggle_actions,@object # @ui_manager_new.toggle_actions
	.data
	.align	16
ui_manager_new.toggle_actions:
	.quad	.L.str.67
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	.L.str.68
	.quad	play_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	0
	.quad	.L.str.72
	.quad	detach_callback
	.long	0                       # 0x0
	.zero	4
	.size	ui_manager_new.toggle_actions, 112

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"play"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Start playback"
	.size	.L.str.68, 15

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"detach"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gtk-convert"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Detach"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Detach the animation from the dialog window"
	.size	.L.str.72, 44

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Actions"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"<ui>  <toolbar name=\"anim-play-toolbar\">    <toolitem action=\"play\" />    <toolitem action=\"step\" />    <toolitem action=\"rewind\" />    <separator />    <toolitem action=\"detach\" />    <separator name=\"space\" />    <toolitem action=\"help\" />  </toolbar>  <accelerator action=\"close\" />  <accelerator action=\"quit\" /></ui>"
	.size	.L.str.74, 322

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"error parsing ui: %s"
	.size	.L.str.75, 21

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"<ui>  <popup name=\"anim-play-popup\">    <menuitem action=\"play\" />    <menuitem action=\"step\" />    <menuitem action=\"rewind\" />    <separator />    <menuitem action=\"speed-down\" />    <menuitem action=\"speed-up\" />    <menuitem action=\"speed-reset\" />    <separator />    <menuitem action=\"detach\" />    <menuitem action=\"close\" />  </popup></ui>"
	.size	.L.str.76, 348

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/anim-play-toolbar/play"
	.size	.L.str.77, 24

	.type	duration_index,@object  # @duration_index
	.data
	.align	4
duration_index:
	.long	3                       # 0x3
	.size	duration_index, 4

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"/anim-play-popup/speed-down"
	.size	.L.str.78, 28

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"/anim-play-popup/speed-up"
	.size	.L.str.79, 26

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"tooltip"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Stop playback"
	.size	.L.str.81, 14

	.type	default_frame_duration,@object # @default_frame_duration
	.data
	.align	4
default_frame_duration:
	.long	100                     # 0x64
	.size	default_frame_duration, 4

	.type	detached,@object        # @detached
	.local	detached
	.comm	detached,4,4
	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"detached state and toggle action got out of sync"
	.size	.L.str.82, 49

	.type	render_frame.rawframe,@object # @render_frame.rawframe
	.local	render_frame.rawframe
	.comm	render_frame.rawframe,8,8
	.type	render_frame.rawwidth,@object # @render_frame.rawwidth
	.local	render_frame.rawwidth
	.comm	render_frame.rawwidth,4,4
	.type	render_frame.rawheight,@object # @render_frame.rawheight
	.local	render_frame.rawheight
	.comm	render_frame.rawheight,4,4
	.type	render_frame.rawbpp,@object # @render_frame.rawbpp
	.local	render_frame.rawbpp
	.comm	render_frame.rawbpp,4,4
	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"playback: Asked for frame number %d in a %d-frame animation!\n"
	.size	.L.str.83, 62

	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Tried to display an invalid layer."
	.size	.L.str.84, 35

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"(combine)"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"(replace)"
	.size	.L.str.86, 10

	.type	reshape_from_bitmap.prev_bitmap,@object # @reshape_from_bitmap.prev_bitmap
	.local	reshape_from_bitmap.prev_bitmap
	.comm	reshape_from_bitmap.prev_bitmap,8,8
	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Frame %d of %d"
	.size	.L.str.87, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
