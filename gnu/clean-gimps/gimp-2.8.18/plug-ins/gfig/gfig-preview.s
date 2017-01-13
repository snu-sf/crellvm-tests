	.text
	.file	"gfig-preview.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4645744490609377280     # double 400
	.text
	.globl	make_preview
	.align	16, 0x90
	.type	make_preview,@function
make_preview:                           # @make_preview
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp3:
	.cfi_offset %rbx, -24
	callq	gtk_drawing_area_new
	movq	gfig_context, %rcx
	movq	%rax, 32(%rcx)
	movq	gfig_context, %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3862, %esi             # imm = 0xF16
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str, %rsi
	movabsq	$gfig_preview_realize, %rax
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	gfig_context, %rdi
	movq	32(%rdi), %rdi
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.1, %rsi
	movabsq	$gfig_preview_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	gfig_context, %rdi
	movq	32(%rdi), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.2, %rsi
	movabsq	$gfig_preview_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$1, %r9d
	movq	gfig_context, %rdi
	movq	32(%rdi), %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	gfig_context, %rcx
	movq	32(%rcx), %rdi
	movl	preview_width, %esi
	movl	preview_height, %edx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_size_request
	xorl	%edx, %edx
	movl	%edx, %edi
	callq	gtk_frame_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movl	$3, %edx
	xorl	%esi, %esi
	movl	%edx, %edi
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-116(%rbp), %edx        # 4-byte Reload
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r9d
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movq	gfig_context, %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -136(%rbp)       # 4-byte Spill
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	xorl	%edi, %edi
	callq	gimp_ruler_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm1
	movq	%rax, %rdi
	callq	gimp_ruler_set_range
	movq	gfig_context, %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	368(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$4, %r10d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -204(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gimp_ruler_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	preview_height, %xmm1
	movq	%rax, %rdi
	callq	gimp_ruler_set_range
	movq	gfig_context, %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	368(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$4, %r11d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -260(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	xorl	%ecx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	callq	make_pos_info
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_preview, .Lfunc_end0-make_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_preview_realize,@function
gfig_preview_realize:                   # @gfig_preview_realize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -16(%rbp)
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$34, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gdk_cursor_new_for_display
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_window_set_cursor
	movq	-8(%rbp), %rdi
	callq	gfig_grid_colours
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gfig_preview_realize, .Lfunc_end1-gfig_preview_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_preview_events,@function
gfig_preview_events:                    # @gfig_preview_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	(%rsi), %eax
	addl	$-2, %eax
	movl	%eax, %esi
	subl	$7, %eax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB2_48
# BB#51:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_1:                                # %sw.bb
	jmp	.LBB2_49
.LBB2_2:                                # %sw.bb.1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -44(%rbp)
# BB#3:                                 # %do.body
	cmpl	$0, need_to_scale
	jne	.LBB2_5
# BB#4:                                 # %if.then
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movl	$205, %edx
	movabsq	$.L__func__.gfig_preview_events, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %do.end
	cmpl	$11, selvals+140
	jb	.LBB2_15
# BB#8:                                 # %if.then.8
	cmpl	$0, selvals+120
	jne	.LBB2_10
# BB#9:                                 # %if.then.9
	movl	-48(%rbp), %edi
	callq	gfig_invscale_x
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edi
	callq	gfig_invscale_y
	movl	%eax, -44(%rbp)
.LBB2_10:                               # %if.end.15
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	callq	object_operation_start
	cmpl	$0, selvals+12
	je	.LBB2_14
# BB#11:                                # %if.then.17
	movq	-32(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB2_13
# BB#12:                                # %if.then.20
	leaq	-48(%rbp), %rax
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	find_grid_pos
.LBB2_13:                               # %if.end.21
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.22
	jmp	.LBB2_21
.LBB2_15:                               # %if.else.23
	cmpl	$0, selvals+12
	je	.LBB2_20
# BB#16:                                # %if.then.25
	movq	-32(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB2_18
# BB#17:                                # %if.then.29
	leaq	-48(%rbp), %rax
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	find_grid_pos
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.30
	leaq	-48(%rbp), %rax
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	find_grid_pos
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	callq	object_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB2_21:                               # %if.end.35
	jmp	.LBB2_49
.LBB2_22:                               # %sw.bb.36
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, selvals+12
	je	.LBB2_24
# BB#23:                                # %if.then.44
	leaq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$3, 52(%rcx)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	find_grid_pos
.LBB2_24:                               # %if.end.48
	cmpl	$11, selvals+140
	jb	.LBB2_28
# BB#25:                                # %if.then.51
	cmpl	$0, selvals+120
	jne	.LBB2_27
# BB#26:                                # %if.then.53
	movl	-48(%rbp), %edi
	callq	gfig_invscale_x
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edi
	callq	gfig_invscale_y
	movl	%eax, -44(%rbp)
.LBB2_27:                               # %if.end.60
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	callq	object_operation_end
	jmp	.LBB2_32
.LBB2_28:                               # %if.else.63
	cmpq	$0, obj_creating
	je	.LBB2_30
# BB#29:                                # %if.then.65
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	callq	object_end
	jmp	.LBB2_31
.LBB2_30:                               # %if.else.68
	jmp	.LBB2_49
.LBB2_31:                               # %if.end.69
	jmp	.LBB2_32
.LBB2_32:                               # %if.end.70
	callq	gfig_paint_callback
	jmp	.LBB2_49
.LBB2_33:                               # %sw.bb.71
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, selvals+12
	je	.LBB2_35
# BB#34:                                # %if.then.79
	leaq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	48(%rcx), %edx
	andl	$1024, %edx             # imm = 0x400
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	find_grid_pos
.LBB2_35:                               # %if.end.82
	cmpl	$11, selvals+140
	jb	.LBB2_39
# BB#36:                                # %if.then.85
	cmpl	$0, selvals+120
	jne	.LBB2_38
# BB#37:                                # %if.then.87
	movl	-48(%rbp), %edi
	callq	gfig_invscale_x
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edi
	callq	gfig_invscale_y
	movl	%eax, -44(%rbp)
.LBB2_38:                               # %if.end.94
	leaq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	callq	object_operation
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	gfig_pos_update
	movl	$0, -4(%rbp)
	jmp	.LBB2_50
.LBB2_39:                               # %if.end.99
	cmpq	$0, obj_creating
	je	.LBB2_41
# BB#40:                                # %if.then.101
	leaq	-48(%rbp), %rdi
	movq	obj_creating, %rax
	movq	8(%rax), %rax
	callq	*40(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB2_41:                               # %if.end.102
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	gfig_pos_update
	jmp	.LBB2_49
.LBB2_42:                               # %sw.bb.105
	movl	obj_show_single, %eax
	movl	%eax, gfig_preview_events.tmp_show_single
	cmpl	$-1, %eax
	je	.LBB2_44
# BB#43:                                # %if.then.108
	movl	$-1, obj_show_single
	callq	draw_grid_clear
.LBB2_44:                               # %if.end.109
	jmp	.LBB2_49
.LBB2_45:                               # %sw.bb.110
	cmpl	$-1, gfig_preview_events.tmp_show_single
	je	.LBB2_47
# BB#46:                                # %if.then.113
	movl	gfig_preview_events.tmp_show_single, %eax
	movl	%eax, obj_show_single
	callq	draw_grid_clear
.LBB2_47:                               # %if.end.114
	jmp	.LBB2_49
.LBB2_48:                               # %sw.default
	jmp	.LBB2_49
.LBB2_49:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB2_50:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gfig_preview_events, .Lfunc_end2-gfig_preview_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_1
	.quad	.LBB2_33
	.quad	.LBB2_2
	.quad	.LBB2_48
	.quad	.LBB2_48
	.quad	.LBB2_22
	.quad	.LBB2_42
	.quad	.LBB2_45

	.text
	.align	16, 0x90
	.type	gfig_preview_expose,@function
gfig_preview_expose:                    # @gfig_preview_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_cairo_create
	movq	%rax, -24(%rbp)
	movq	gfig_context, %rax
	cmpl	$0, 4(%rax)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	draw_background
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	draw_grid
	movl	$1, %esi
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	96(%rdi), %rdi
	movq	-24(%rbp), %rdx
	callq	draw_objects
	cmpq	$0, obj_creating
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	obj_creating, %rcx
	movq	%rcx, %rsi
	callq	g_list_prepend
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	draw_objects
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB3_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gfig_preview_expose, .Lfunc_end3-gfig_preview_expose
	.cfi_endproc

	.align	16, 0x90
	.type	make_pos_info,@function
make_pos_info:                          # @make_pos_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -8(%rbp)
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	callq	gfig_pos_labels
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gfig_pos_enable
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	make_pos_info, .Lfunc_end4-make_pos_info
	.cfi_endproc

	.globl	gfig_pos_enable
	.align	16, 0x90
	.type	gfig_pos_enable,@function
gfig_pos_enable:                        # @gfig_pos_enable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	selvals+72, %eax
	movl	%eax, -20(%rbp)
	movq	pos_label, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gfig_pos_enable, .Lfunc_end5-gfig_pos_enable
	.cfi_endproc

	.align	16, 0x90
	.type	draw_background,@function
draw_background:                        # @draw_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, back_pixbuf
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$2, %ecx
	movq	gfig_context, %rax
	movl	8(%rax), %edi
	movl	preview_width, %esi
	movl	preview_height, %edx
	callq	gimp_image_get_thumbnail
	movq	%rax, back_pixbuf
.LBB6_2:                                # %if.end
	cmpq	$0, back_pixbuf
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movq	back_pixbuf, %rsi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gdk_cairo_set_source_pixbuf
	movq	-8(%rbp), %rdi
	callq	cairo_paint
.LBB6_4:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	draw_background, .Lfunc_end6-draw_background
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_invscale_x,@function
gfig_invscale_x:                        # @gfig_invscale_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$0, selvals+120
	jne	.LBB7_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-8(%rbp), %xmm0
	mulsd	scale_x_factor, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gfig_invscale_x, .Lfunc_end7-gfig_invscale_x
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_invscale_y,@function
gfig_invscale_y:                        # @gfig_invscale_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$0, selvals+120
	jne	.LBB8_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-8(%rbp), %xmm0
	mulsd	scale_y_factor, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_3:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gfig_invscale_y, .Lfunc_end8-gfig_invscale_y
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_pos_update,@function
gfig_pos_update:                        # @gfig_pos_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	x_pos_val, %esi
	cmpl	-4(%rbp), %esi
	jne	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	movl	y_pos_val, %eax
	cmpl	-8(%rbp), %eax
	je	.LBB9_5
.LBB9_2:                                # %land.lhs.true
	cmpl	$-1, pos_tag
	jne	.LBB9_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$0, selvals+72
	je	.LBB9_5
# BB#4:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-4(%rbp), %eax
	movl	%eax, x_pos_val
	movl	-8(%rbp), %eax
	movl	%eax, y_pos_val
	callq	gfig_pos_update_labels
.LBB9_5:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gfig_pos_update, .Lfunc_end9-gfig_pos_update
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_pos_update_labels,@function
gfig_pos_update_labels:                 # @gfig_pos_update_labels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$gfig_pos_update_labels.buf, %rax
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdx
	movq	%rdi, -8(%rbp)
	movl	$-1, pos_tag
	movl	x_pos_val, %ecx
	movl	y_pos_val, %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_snprintf
	movq	pos_label, %rdx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gfig_pos_update_labels.buf, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gfig_pos_update_labels, .Lfunc_end10-gfig_pos_update_labels
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_pos_labels,@function
gfig_pos_labels:                        # @gfig_pos_labels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gtk_label_new
	movq	%rax, pos_label
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	pos_label, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	pos_label, %rdi
	callq	gtk_widget_show
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdx
	xorl	%ecx, %ecx
	leaq	-272(%rbp), %rdi
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	-304(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movq	pos_label, %rdx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-272(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-16(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gfig_pos_labels, .Lfunc_end11-gfig_pos_labels
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"realize"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"event"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"expose-event"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"motion-notify-event"
	.size	.L.str.3, 20

	.type	pos_label,@object       # @pos_label
	.local	pos_label
	.comm	pos_label,8,8
	.type	status_label_dname,@object # @status_label_dname
	.bss
	.globl	status_label_dname
	.align	8
status_label_dname:
	.quad	0
	.size	status_label_dname, 8

	.type	status_label_fname,@object # @status_label_fname
	.globl	status_label_fname
	.align	8
status_label_fname:
	.quad	0
	.size	status_label_fname, 8

	.type	gfig_preview_events.tmp_show_single,@object # @gfig_preview_events.tmp_show_single
	.local	gfig_preview_events.tmp_show_single
	.comm	gfig_preview_events.tmp_show_single,4,4
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gfig-preview.c"
	.size	.L.str.4, 15

	.type	.L__func__.gfig_preview_events,@object # @__func__.gfig_preview_events
.L__func__.gfig_preview_events:
	.asciz	"gfig_preview_events"
	.size	.L__func__.gfig_preview_events, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"need_to_scale == 0"
	.size	.L.str.5, 19

	.type	x_pos_val,@object       # @x_pos_val
	.local	x_pos_val
	.comm	x_pos_val,4,4
	.type	y_pos_val,@object       # @y_pos_val
	.local	y_pos_val
	.comm	y_pos_val,4,4
	.type	pos_tag,@object         # @pos_tag
	.data
	.align	4
pos_tag:
	.long	4294967295              # 0xffffffff
	.size	pos_tag, 4

	.type	gfig_pos_update_labels.buf,@object # @gfig_pos_update_labels.buf
	.local	gfig_pos_update_labels.buf
	.comm	gfig_pos_update_labels.buf,256,16
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%d, %d"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Object Details"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"XY position:"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
