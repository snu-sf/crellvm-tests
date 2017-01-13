	.text
	.file	"imap_preview.bc"
	.globl	preview_get_width
	.align	16, 0x90
	.type	preview_get_width,@function
preview_get_width:                      # @preview_get_width
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	preview_user_data
	movl	40(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	preview_get_width, .Lfunc_end0-preview_get_width
	.cfi_endproc

	.align	16, 0x90
	.type	preview_user_data,@function
preview_user_data:                      # @preview_user_data
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	preview_user_data, .Lfunc_end1-preview_user_data
	.cfi_endproc

	.globl	preview_get_height
	.align	16, 0x90
	.type	preview_get_height,@function
preview_get_height:                     # @preview_get_height
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	preview_user_data
	movl	44(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	preview_get_height, .Lfunc_end2-preview_get_height
	.cfi_endproc

	.globl	preview_set_tmp_obj
	.align	16, 0x90
	.type	preview_set_tmp_obj,@function
preview_set_tmp_obj:                    # @preview_set_tmp_obj
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, _tmp_obj
	popq	%rbp
	retq
.Lfunc_end3:
	.size	preview_set_tmp_obj, .Lfunc_end3-preview_set_tmp_obj
	.cfi_endproc

	.globl	preview_unset_tmp_obj
	.align	16, 0x90
	.type	preview_unset_tmp_obj,@function
preview_unset_tmp_obj:                  # @preview_unset_tmp_obj
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
	movq	_tmp_obj, %rdi
	cmpq	-8(%rbp), %rdi
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, _tmp_obj
.LBB4_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	preview_unset_tmp_obj, .Lfunc_end4-preview_unset_tmp_obj
	.cfi_endproc

	.globl	preview_zoom
	.align	16, 0x90
	.type	preview_zoom,@function
preview_zoom:                           # @preview_zoom
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	40(%rdi), %esi
	imull	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %esi
	imull	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 52(%rdi)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_queue_resize
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	render_preview
	callq	preview_redraw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_zoom, .Lfunc_end5-preview_zoom
	.cfi_endproc

	.align	16, 0x90
	.type	render_preview,@function
render_preview:                         # @render_preview
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
	movq	8(%rsi), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_type
	movl	%eax, %edi
	subl	$2, %eax
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jb	.LBB6_1
	jmp	.LBB6_5
.LBB6_5:                                # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB6_2
	jmp	.LBB6_6
.LBB6_6:                                # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jb	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	render_rgb_image
	jmp	.LBB6_4
.LBB6_2:                                # %sw.bb.1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	render_gray_image
	jmp	.LBB6_4
.LBB6_3:                                # %sw.bb.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	render_indexed_image
.LBB6_4:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	render_preview, .Lfunc_end6-render_preview
	.cfi_endproc

	.globl	preview_set_cursor
	.align	16, 0x90
	.type	preview_set_cursor,@function
preview_set_cursor:                     # @preview_set_cursor
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	104(%rdi), %esi
	movl	%esi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gdk_cursor_new_for_display
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_get_window
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_unref
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 104(%rax)
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	preview_set_cursor, .Lfunc_end7-preview_set_cursor
	.cfi_endproc

	.globl	make_preview
	.align	16, 0x90
	.type	make_preview,@function
make_preview:                           # @make_preview
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$112, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	gimp_preview_area_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16150, %esi            # imm = 0x3F16
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.1, %rsi
	movabsq	$preview_expose, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$1, %r9d
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.2, %rsi
	movabsq	$preview_size_allocate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$7, %esi
	movabsq	$target_table, %rdx
	movl	$2, %r9d
	movq	-64(%rbp), %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_drag_dest_set
	movabsq	$.L.str.3, %rsi
	movabsq	$handle_drop, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_width
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-40(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	movq	-40(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-40(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	48(%rcx), %esi
	movq	-40(%rbp), %rcx
	movl	52(%rcx), %edx
	callq	gtk_widget_set_size_request
	movl	$3, %eax
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_set_can_focus
	movq	-104(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -208(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movl	$768, %esi              # imm = 0x300
	movq	-80(%rbp), %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.4, %rsi
	movabsq	$arrow_cb, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$2, %esi
	callq	gtk_arrow_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gimp_ruler_new
	movabsq	$.L.str.5, %rsi
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	368(%rcx), %rcx
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$7, %r10d
	movl	$4, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$7, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -260(%rbp)        # 4-byte Spill
	movl	%r10d, -264(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gimp_ruler_new
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %r11
	movq	%rax, 32(%r11)
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %r11
	movq	(%r11), %r11
	movq	368(%r11), %r11
	movq	-96(%rbp), %r14
	movq	%rax, %rdi
	movq	%r11, %rdx
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$4, %ebx
	movl	$7, %r15d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$7, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r15d, -284(%rbp)       # 4-byte Spill
	movl	%ebx, -288(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-40(%rbp), %rax
	cmpl	$600, 40(%rax)          # imm = 0x258
	jle	.LBB8_2
# BB#1:                                 # %cond.true
	movl	$600, %eax              # imm = 0x258
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
.LBB8_3:                                # %cond.end
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$400, 44(%rcx)          # imm = 0x190
	jle	.LBB8_5
# BB#4:                                 # %cond.true.47
	movl	$400, %eax              # imm = 0x190
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false.48
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
.LBB8_6:                                # %cond.end.50
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	movq	-72(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-104(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -324(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-320(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -328(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_hadjustment
	movabsq	$.L.str.6, %rsi
	movabsq	$scroll_adj_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rbx
	movq	24(%rbx), %rbx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$scroll_adj_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_vadjustment
	movabsq	$.L.str.6, %rsi
	movabsq	$scroll_adj_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, %rdi
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$scroll_adj_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_add_with_viewport
	xorl	%edi, %edi
	movq	-48(%rbp), %rsi
	callq	gtk_scrollbar_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r9d
	movl	$3, %r10d
	movl	$6, %r11d
	xorl	%r14d, %r14d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -428(%rbp)       # 4-byte Spill
	movl	%r11d, -432(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movq	-56(%rbp), %rsi
	callq	gtk_scrollbar_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movl	$1, %r8d
	movl	$6, %r9d
	xorl	%r10d, %r10d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -444(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-444(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-448(%rbp), %r14d       # 4-byte Reload
	movl	%r9d, -452(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -456(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %r8d
	movq	-40(%rbp), %rdi
	movl	44(%rdi), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	render_preview
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	make_preview, .Lfunc_end8-make_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	preview_expose,@function
preview_expose:                         # @preview_expose
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
	movq	-8(%rbp), %rdi
	callq	preview_get_width
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	preview_get_height
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_cairo_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	draw_grid
	movq	-24(%rbp), %rdi
	callq	draw_shapes
	cmpq	$0, _tmp_obj
	je	.LBB9_2
# BB#1:                                 # %if.then
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -40(%rbp)
	movq	_tmp_obj, %rax
	movl	20(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, 20(%rax)
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cairo_set_dash
	movq	_tmp_obj, %rdi
	movq	-24(%rbp), %rsi
	callq	object_draw
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	preview_expose, .Lfunc_end9-preview_expose
	.cfi_endproc

	.align	16, 0x90
	.type	preview_size_allocate,@function
preview_size_allocate:                  # @preview_size_allocate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	addq	$56, %rdx
	movq	%rdx, %rsi
	callq	render_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	preview_size_allocate, .Lfunc_end10-preview_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	handle_drop,@function
handle_drop:                            # @handle_drop
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
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length
	cmpl	$0, %eax
	jl	.LBB11_6
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB11_6
# BB#2:                                 # %if.then
	callq	get_shapes
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %edi
	callq	get_real_coord
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %edi
	callq	get_real_coord
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	object_list_find
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true.7
	movq	-64(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB11_5
# BB#4:                                 # %if.then.9
	movq	-64(%rbp), %rdi
	callq	edit_object_command_new
	movq	%rax, %rdi
	callq	command_list_add
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_data
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_url
	movq	-64(%rbp), %rdi
	callq	object_emit_update_signal
	movl	$1, -44(%rbp)
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.12
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %ecx
	callq	gtk_drag_finish
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	handle_drop, .Lfunc_end11-handle_drop
	.cfi_endproc

	.align	16, 0x90
	.type	arrow_cb,@function
arrow_cb:                               # @arrow_cb
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$1, 52(%rdx)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	do_main_popup_menu
.LBB12_2:                               # %if.end
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	arrow_cb, .Lfunc_end12-arrow_cb
	.cfi_endproc

	.align	16, 0x90
	.type	scroll_adj_changed,@function
scroll_adj_changed:                     # @scroll_adj_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gtk_adjustment_get_value
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_ruler_set_range
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	scroll_adj_changed, .Lfunc_end13-scroll_adj_changed
	.cfi_endproc

	.align	16, 0x90
	.type	render_rgb_image,@function
render_rgb_image:                       # @render_rgb_image
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp48:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	callq	get_map_info
	movl	60(%rax), %ecx
	movl	%ecx, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
.LBB14_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-68(%rbp), %eax
	imull	-92(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %ecx
	imull	-80(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	$0, -64(%rbp)
.LBB14_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB14_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-64(%rbp), %eax
	imull	-68(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	imull	-92(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB14_3
.LBB14_6:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB14_7:                               # %for.cond.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
                                        #       Child Loop BB14_22 Depth 3
                                        #       Child Loop BB14_27 Depth 3
                                        #       Child Loop BB14_13 Depth 3
                                        #       Child Loop BB14_34 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB14_42
# BB#8:                                 # %for.body.17
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-60(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	%edx, -128(%rbp)        # 4-byte Spill
	cltd
	idivl	-80(%rbp)
	movl	-68(%rbp), %r8d
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	movl	$0, -64(%rbp)
.LBB14_9:                               # %for.cond.20
                                        #   Parent Loop BB14_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_22 Depth 3
                                        #       Child Loop BB14_27 Depth 3
                                        #       Child Loop BB14_13 Depth 3
                                        #       Child Loop BB14_34 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB14_40
# BB#10:                                # %for.body.23
                                        #   in Loop: Header=BB14_9 Depth=2
	movslq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB14_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_9 Depth=2
	movslq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB14_17
.LBB14_12:                              # %if.then.34
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	$0, -104(%rbp)
.LBB14_13:                              # %for.cond.35
                                        #   Parent Loop BB14_7 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB14_16
# BB#14:                                # %for.body.38
                                        #   in Loop: Header=BB14_13 Depth=3
	movslq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-104(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#15:                                # %for.inc.43
                                        #   in Loop: Header=BB14_13 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB14_13
.LBB14_16:                              # %for.end.45
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_32
.LBB14_17:                              # %if.else
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	$8, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-132(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$4, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	-60(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -136(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	cmpl	$4, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	-136(%rbp), %edi        # 4-byte Reload
	xorl	%edx, %edi
	cmpl	$0, %edi
	je	.LBB14_19
# BB#18:                                # %if.then.52
                                        #   in Loop: Header=BB14_9 Depth=2
	movb	$-64, -105(%rbp)
	jmp	.LBB14_20
.LBB14_19:                              # %if.else.53
                                        #   in Loop: Header=BB14_9 Depth=2
	movb	$-128, -105(%rbp)
.LBB14_20:                              # %if.end.54
                                        #   in Loop: Header=BB14_9 Depth=2
	movslq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB14_26
# BB#21:                                # %if.then.60
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	$0, -104(%rbp)
.LBB14_22:                              # %for.cond.61
                                        #   Parent Loop BB14_7 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB14_25
# BB#23:                                # %for.body.64
                                        #   in Loop: Header=BB14_22 Depth=3
	movb	-105(%rbp), %al
	movslq	-104(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
# BB#24:                                # %for.inc.67
                                        #   in Loop: Header=BB14_22 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB14_22
.LBB14_25:                              # %for.end.69
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_31
.LBB14_26:                              # %if.else.70
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	$0, -104(%rbp)
.LBB14_27:                              # %for.cond.71
                                        #   Parent Loop BB14_7 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB14_30
# BB#28:                                # %for.body.74
                                        #   in Loop: Header=BB14_27 Depth=3
	movl	$255, %eax
	movslq	-104(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movslq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	imull	%edi, %esi
	movzbl	-105(%rbp), %edi
	movslq	-96(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %r8d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	imull	%r9d, %edi
	addl	%edi, %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %r10b
	movslq	-104(%rbp), %rcx
	movq	-56(%rbp), %r11
	movb	%r10b, (%r11,%rcx)
# BB#29:                                # %for.inc.91
                                        #   in Loop: Header=BB14_27 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB14_27
.LBB14_30:                              # %for.end.93
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_31
.LBB14_31:                              # %if.end.94
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_32
.LBB14_32:                              # %if.end.95
                                        #   in Loop: Header=BB14_9 Depth=2
	cmpl	$0, -112(%rbp)
	je	.LBB14_38
# BB#33:                                # %if.then.97
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	$1000, %eax             # imm = 0x3E8
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$299, %edx, %edx        # imm = 0x12B
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	$587, %esi, %esi        # imm = 0x24B
	addl	%esi, %edx
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	$114, %esi, %esi
	addl	%esi, %edx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-144(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movb	%dil, -121(%rbp)
	movl	$0, -104(%rbp)
.LBB14_34:                              # %for.cond.111
                                        #   Parent Loop BB14_7 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB14_37
# BB#35:                                # %for.body.114
                                        #   in Loop: Header=BB14_34 Depth=3
	movb	-121(%rbp), %al
	movslq	-104(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
# BB#36:                                # %for.inc.117
                                        #   in Loop: Header=BB14_34 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB14_34
.LBB14_37:                              # %for.end.119
                                        #   in Loop: Header=BB14_9 Depth=2
	jmp	.LBB14_38
.LBB14_38:                              # %if.end.120
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	-96(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#39:                                # %for.inc.121
                                        #   in Loop: Header=BB14_9 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB14_9
.LBB14_40:                              # %for.end.123
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_41
.LBB14_41:                              # %for.inc.124
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB14_7
.LBB14_42:                              # %for.end.126
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movq	-40(%rbp), %rsi
	imull	$3, -76(%rbp), %r9d
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-168(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -172(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-172(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	render_rgb_image, .Lfunc_end14-render_rgb_image
	.cfi_endproc

	.align	16, 0x90
	.type	render_gray_image,@function
render_gray_image:                      # @render_gray_image
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
	subq	$144, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movq	-16(%rbp), %rsi
	movl	32(%rsi), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %eax
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rsi
	movl	52(%rsi), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	imull	-52(%rbp), %eax
	movslq	%eax, %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movl	-64(%rbp), %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movslq	-64(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movl	$0, -48(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax
	imull	-56(%rbp), %eax
	cltd
	idivl	-64(%rbp)
	imull	-52(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_1
.LBB15_4:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB15_5:                               # %for.cond.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB15_12
# BB#6:                                 # %for.body.14
                                        #   in Loop: Header=BB15_5 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %eax
	imull	-60(%rbp), %eax
	movl	%edx, -100(%rbp)        # 4-byte Spill
	cltd
	idivl	-68(%rbp)
	movl	-56(%rbp), %r8d
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	movl	$0, -48(%rbp)
.LBB15_7:                               # %for.cond.17
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_10
# BB#8:                                 # %for.body.20
                                        #   in Loop: Header=BB15_7 Depth=2
	movslq	-48(%rbp), %rax
	movq	-80(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
# BB#9:                                 # %for.inc.25
                                        #   in Loop: Header=BB15_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_7
.LBB15_10:                              # %for.end.27
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_11
.LBB15_11:                              # %for.inc.28
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_5
.LBB15_12:                              # %for.end.30
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %r9d
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %r8d
	movq	-32(%rbp), %rsi
	movl	-64(%rbp), %r10d
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	render_gray_image, .Lfunc_end15-render_gray_image
	.cfi_endproc

	.align	16, 0x90
	.type	render_indexed_image,@function
render_indexed_image:                   # @render_indexed_image
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp55:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	callq	get_map_info
	movl	60(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
.LBB16_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	leaq	-124(%rbp), %rsi
	movl	%eax, %edi
	callq	gimp_image_get_colormap
	movl	$1, %edi
	movl	%edi, %esi
	movq	%rax, -112(%rbp)
	movl	-68(%rbp), %edi
	imull	-92(%rbp), %edi
	movslq	%edi, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %ecx
	imull	-80(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	$0, -64(%rbp)
.LBB16_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB16_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	-64(%rbp), %eax
	imull	-68(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	imull	-92(%rbp), %eax
	movslq	-64(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB16_3
.LBB16_6:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB16_7:                               # %for.cond.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_9 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB16_17
# BB#8:                                 # %for.body.21
                                        #   in Loop: Header=BB16_7 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-60(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	%edx, -144(%rbp)        # 4-byte Spill
	cltd
	idivl	-80(%rbp)
	movl	-68(%rbp), %r8d
	movl	-144(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	movl	$0, -64(%rbp)
.LBB16_9:                               # %for.cond.24
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB16_15
# BB#10:                                # %for.body.27
                                        #   in Loop: Header=BB16_9 Depth=2
	movslq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.35
                                        #   in Loop: Header=BB16_9 Depth=2
	movl	$1000, %eax             # imm = 0x3E8
	movq	-120(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$299, %edx, %edx        # imm = 0x12B
	movq	-120(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	$587, %esi, %esi        # imm = 0x24B
	addl	%esi, %edx
	movq	-120(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	$114, %esi, %esi
	addl	%esi, %edx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-148(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movb	%dil, -137(%rbp)
	movb	-137(%rbp), %dil
	movq	-56(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -56(%rbp)
	movb	%dil, (%rcx)
	movb	-137(%rbp), %dil
	movq	-56(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -56(%rbp)
	movb	%dil, (%rcx)
	movb	-137(%rbp), %dil
	movq	-56(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -56(%rbp)
	movb	%dil, (%rcx)
	jmp	.LBB16_13
.LBB16_12:                              # %if.else
                                        #   in Loop: Header=BB16_9 Depth=2
	movq	-120(%rbp), %rax
	movb	(%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-120(%rbp), %rax
	movb	1(%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-120(%rbp), %rax
	movb	2(%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
.LBB16_13:                              # %if.end.56
                                        #   in Loop: Header=BB16_9 Depth=2
	jmp	.LBB16_14
.LBB16_14:                              # %for.inc.57
                                        #   in Loop: Header=BB16_9 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB16_9
.LBB16_15:                              # %for.end.59
                                        #   in Loop: Header=BB16_7 Depth=1
	jmp	.LBB16_16
.LBB16_16:                              # %for.inc.60
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB16_7
.LBB16_17:                              # %for.end.62
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movq	-40(%rbp), %rsi
	imull	$3, -76(%rbp), %r9d
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-176(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -180(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-180(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	render_indexed_image, .Lfunc_end16-render_indexed_image
	.cfi_endproc

	.type	_tmp_obj,@object        # @_tmp_obj
	.local	_tmp_obj
	.comm	_tmp_obj,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"preview"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"expose-event"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"size-allocate"
	.size	.L.str.2, 14

	.type	target_table,@object    # @target_table
	.section	.rodata,"a",@progbits
	.align	16
target_table:
	.quad	.L.str.8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.9
	.long	0                       # 0x0
	.long	2                       # 0x2
	.size	target_table, 32

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"drag-data-received"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"button-press-event"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"motion-notify-event"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"changed"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"value-changed"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"STRING"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"text/plain"
	.size	.L.str.9, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
