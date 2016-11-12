	.text
	.file	"gimpdisplayshell-layer-select.bc"
	.globl	gimp_display_shell_layer_select_init
	.align	16, 0x90
	.type	gimp_display_shell_layer_select_init,@function
gimp_display_shell_layer_select_init:   # @gimp_display_shell_layer_select_init
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_layer_select_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.14
	jmp	.LBB0_15
.LBB0_14:                               # %if.end.15
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	348(%rax), %edx
	callq	layer_select_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	layer_select_advance
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_window
	xorl	%esi, %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gdk_keyboard_grab
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB0_15:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_layer_select_init, .Lfunc_end0-gimp_display_shell_layer_select_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	layer_select_new,@function
layer_select_new:                       # @layer_select_new
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
	subq	$240, %rsp
	movl	$40, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movl	$1, %edi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	callq	gtk_window_new
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_title
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movl	$3328, %esi             # imm = 0xD00
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.4, %rsi
	movabsq	$layer_select_events, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_frame_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	callq	gtk_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-40(%rbp), %rax
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
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
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
	movss	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -164(%rbp)       # 4-byte Spill
	movss	-164(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -168(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-168(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-168(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	-20(%rbp), %ecx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_view_new_by_types
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	layer_select_new, .Lfunc_end1-layer_select_new
	.cfi_endproc

	.align	16, 0x90
	.type	layer_select_advance,@function
layer_select_advance:                   # @layer_select_advance
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_14
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB2_4
# BB#3:                                 # %if.then.1
	jmp	.LBB2_14
.LBB2_4:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_index
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jge	.LBB2_6
# BB#5:                                 # %if.then.10
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_9
.LBB2_6:                                # %if.else
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB2_8
# BB#7:                                 # %if.then.12
	movl	$0, -48(%rbp)
.LBB2_8:                                # %if.end.13
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.14
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_list_nth_data
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_list_free
	cmpq	$0, -32(%rbp)
	je	.LBB2_14
# BB#10:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB2_14
# BB#11:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB2_13:                               # %if.end.30
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.31
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	layer_select_advance, .Lfunc_end2-layer_select_advance
	.cfi_endproc

	.align	16, 0x90
	.type	layer_select_events,@function
layer_select_events:                    # @layer_select_events
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$4, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_16
.LBB3_16:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB3_2
	jmp	.LBB3_17
.LBB3_17:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB3_6
	jmp	.LBB3_13
.LBB3_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	20(%rax), %esi
	callq	layer_select_destroy
	jmp	.LBB3_14
.LBB3_2:                                # %sw.bb.1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65056, %edx            # imm = 0xFE20
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB3_4
	jmp	.LBB3_20
.LBB3_20:                               # %sw.bb.1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$65289, %eax            # imm = 0xFF09
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jne	.LBB3_5
	jmp	.LBB3_3
.LBB3_3:                                # %sw.bb.2
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	layer_select_advance
	jmp	.LBB3_5
.LBB3_4:                                # %sw.bb.3
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	callq	layer_select_advance
.LBB3_5:                                # %sw.epilog
	movl	$1, -4(%rbp)
	jmp	.LBB3_15
.LBB3_6:                                # %sw.bb.4
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	addl	$-65505, %edx           # imm = 0xFFFFFFFFFFFF001F
	subl	$2, %edx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	jb	.LBB3_9
	jmp	.LBB3_18
.LBB3_18:                               # %sw.bb.4
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	$-65507, %eax           # imm = 0xFFFFFFFFFFFF001D
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jb	.LBB3_8
	jmp	.LBB3_19
.LBB3_19:                               # %sw.bb.4
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	$-65513, %eax           # imm = 0xFFFFFFFFFFFF0017
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	ja	.LBB3_10
	jmp	.LBB3_7
.LBB3_7:                                # %sw.bb.6
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-9, %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB3_10
.LBB3_8:                                # %sw.bb.7
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB3_10
.LBB3_9:                                # %sw.bb.10
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 24(%rax)
.LBB3_10:                               # %sw.epilog.13
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_12
# BB#11:                                # %if.then
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	20(%rax), %esi
	callq	layer_select_destroy
.LBB3_12:                               # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB3_15
.LBB3_13:                               # %sw.default
	jmp	.LBB3_14
.LBB3_14:                               # %sw.epilog.17
	movl	$0, -4(%rbp)
.LBB3_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	layer_select_events, .Lfunc_end3-layer_select_events
	.cfi_endproc

	.align	16, 0x90
	.type	layer_select_destroy,@function
layer_select_destroy:                   # @layer_select_destroy
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gtk_widget_get_display
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gdk_display_keyboard_ungrab
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_get_active_layer
	movq	-24(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_image_flush
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	movl	$40, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	layer_select_destroy, .Lfunc_end4-layer_select_destroy
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_layer_select_init,@object # @__func__.gimp_display_shell_layer_select_init
.L__func__.gimp_display_shell_layer_select_init:
	.asciz	"gimp_display_shell_layer_select_init"
	.size	.L__func__.gimp_display_shell_layer_select_init, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-layer-select"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Layer Select"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"event"
	.size	.L.str.4, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
