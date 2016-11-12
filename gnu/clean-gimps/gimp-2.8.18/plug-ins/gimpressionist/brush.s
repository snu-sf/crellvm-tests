	.text
	.file	"brush.bc"
	.globl	brush_restore
	.align	16, 0x90
	.type	brush_restore,@function
brush_restore:                          # @brush_restore
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
	movabsq	$pcvals, %rax
	addq	$104, %rax
	movq	brush_list, %rdi
	movq	%rax, %rsi
	callq	reselect
	movq	brush_gamma_adjust, %rdi
	movsd	pcvals+56, %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	brush_relief_adjust, %rdi
	movsd	pcvals+32, %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	brush_aspect_adjust, %rdi
	movsd	pcvals+3352, %xmm0      # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	popq	%rbp
	retq
.Lfunc_end0:
	.size	brush_restore, .Lfunc_end0-brush_restore
	.cfi_endproc

	.globl	brush_store
	.align	16, 0x90
	.type	brush_store,@function
brush_store:                            # @brush_store
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
	movq	brush_gamma_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+56
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brush_store, .Lfunc_end1-brush_store
	.cfi_endproc

	.globl	brush_free
	.align	16, 0x90
	.type	brush_free,@function
brush_free:                             # @brush_free
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
	movq	last_selected_brush, %rdi
	callq	g_free
	popq	%rbp
	retq
.Lfunc_end2:
	.size	brush_free, .Lfunc_end2-brush_free
	.cfi_endproc

	.globl	brush_get_selected
	.align	16, 0x90
	.type	brush_get_selected,@function
brush_get_selected:                     # @brush_get_selected
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, brush_from_file
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$pcvals, %rax
	addq	$104, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	brush_reload
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movabsq	$brushppm, %rdi
	movq	-8(%rbp), %rsi
	callq	ppm_copy
.LBB3_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	brush_get_selected, .Lfunc_end3-brush_get_selected
	.cfi_endproc

	.globl	brush_reload
	.align	16, 0x90
	.type	brush_reload,@function
brush_reload:                           # @brush_reload
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$brush_reload.cache, %rdi
	callq	ppm_kill
	movb	$0, brush_reload.lastfn
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	$brush_reload.lastfn, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %if.then.1
	movabsq	$brush_reload.lastfn, %rdi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	callq	g_strlcpy
	movabsq	$brush_reload.cache, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	ppm_kill
	movabsq	$brush_reload.cache, %rsi
	movq	-8(%rbp), %rdi
	callq	ppm_load
.LBB4_4:                                # %if.end.3
	movabsq	$brush_reload.cache, %rdi
	movq	-16(%rbp), %rsi
	callq	ppm_copy
	movq	-8(%rbp), %rdi
	callq	set_colorbrushes
.LBB4_5:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	brush_reload, .Lfunc_end4-brush_reload
	.cfi_endproc

	.globl	set_colorbrushes
	.align	16, 0x90
	.type	set_colorbrushes,@function
set_colorbrushes:                       # @set_colorbrushes
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
	movq	-8(%rbp), %rdi
	callq	file_is_color
	movl	%eax, pcvals+3388
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	set_colorbrushes, .Lfunc_end5-set_colorbrushes
	.cfi_endproc

	.align	16, 0x90
	.type	file_is_color,@function
file_is_color:                          # @file_is_color
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB6_2
# BB#1:                                 # %land.rhs
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB6_2:                                # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_is_color, .Lfunc_end6-file_is_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	4621819117588971520     # double 10
.LCPI7_3:
	.quad	-4616189618054758400    # double -1
.LCPI7_4:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI7_6:
	.quad	4602678819172646912     # double 0.5
.LCPI7_7:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_5:
	.long	1056964608              # float 0.5
	.text
	.globl	create_brushpage
	.align	16, 0x90
	.type	create_brushpage,@function
create_brushpage:                       # @create_brushpage
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
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
.Ltmp24:
	.cfi_offset %rbx, -24
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -96(%rbp)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$brush_select_file, %rsi
	movq	-24(%rbp), %rdi
	callq	create_one_column_list
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, brush_list
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, brush_list_store
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -112(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$100, %ecx
	movq	%rax, -64(%rbp)
	movq	%rax, brush_preview
	movq	brush_preview, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rsi
	movabsq	$brush_preview_size_allocate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	brush_preview, %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI7_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm5         # xmm5 = mem[0],zero
	movsd	pcvals+56, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-256(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movq	%rax, brush_gamma_adjust
	movq	brush_gamma_adjust, %rsi
	callq	gtk_scale_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$100, %esi
	movl	$30, %edx
	movq	%rax, %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rsi
	movabsq	$update_brush_preview, %rax
	movabsq	$pcvals, %rdi
	addq	$104, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	brush_gamma_adjust, %r10
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movabsq	$.L.str.5, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$validdrawable, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movabsq	$brushdmenuselect, %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-376(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-40(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.7, %rsi
	movabsq	$savebrush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %ecx        # 4-byte Reload
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movsd	pcvals+3352, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI7_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r11d
	xorps	%xmm3, %xmm3
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movsd	-488(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm3, -520(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm3
	movaps	%xmm5, %xmm4
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-520(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-520(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -524(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, brush_aspect_adjust
	movq	-104(%rbp), %rdi
	movq	brush_aspect_adjust, %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.3, %rsi
	movabsq	$brush_asepct_adjust_cb, %rax
	movabsq	$pcvals, %rcx
	addq	$3352, %rcx             # imm = 0xD18
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	brush_aspect_adjust, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	movsd	pcvals+32, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-592(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-592(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, brush_relief_adjust
	movq	-104(%rbp), %rdi
	movq	brush_relief_adjust, %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$pcvals, %rcx
	addq	$32, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	brush_relief_adjust, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	xorl	%esi, %esi
	movq	-112(%rbp), %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	brush_select
	movabsq	$.L.str.13, %rdi
	movabsq	$pcvals, %rax
	addq	$104, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdx
	callq	readdirintolist
	movq	brush_list, %rdi
	callq	gtk_widget_grab_focus
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	gtk_notebook_append_page_menu
	movl	%eax, -612(%rbp)        # 4-byte Spill
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	create_brushpage, .Lfunc_end7-create_brushpage
	.cfi_endproc

	.align	16, 0x90
	.type	brush_select_file,@function
brush_select_file:                      # @brush_select_file
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, brush_from_file
	movl	%eax, %edi
	callq	preset_save_button_set_sensitive
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	brush_select
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	brush_select_file, .Lfunc_end8-brush_select_file
	.cfi_endproc

	.align	16, 0x90
	.type	brush_preview_size_allocate,@function
brush_preview_size_allocate:            # @brush_preview_size_allocate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	brush_list, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	brush_select
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	brush_preview_size_allocate, .Lfunc_end9-brush_preview_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4621819117588971520     # double 10
.LCPI10_2:
	.quad	4636737291354636288     # double 100
.LCPI10_3:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	update_brush_preview,@function
update_brush_preview:                   # @update_brush_preview
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, brush_from_file
.LBB10_2:                               # %if.end
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB10_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, brush_from_file
	je	.LBB10_5
# BB#4:                                 # %if.then.3
	jmp	.LBB10_35
.LBB10_5:                               # %if.else
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	cmpl	$0, brush_from_file
	je	.LBB10_7
# BB#6:                                 # %if.then.5
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	brush_reload
	jmp	.LBB10_10
.LBB10_7:                               # %if.else.6
	cmpq	$0, brushppm+8
	je	.LBB10_9
# BB#8:                                 # %if.then.7
	movabsq	$brushppm, %rdi
	leaq	-48(%rbp), %rsi
	callq	ppm_copy
.LBB10_9:                               # %if.end.8
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.9
	movq	-8(%rbp), %rdi
	callq	set_colorbrushes
	movq	brush_gamma_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_11
	jp	.LBB10_11
	jmp	.LBB10_16
.LBB10_11:                              # %if.then.12
	movl	$0, -12(%rbp)
.LBB10_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB10_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB10_12 Depth=1
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	.LCPI10_3(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm1, -320(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movb	%cl, -304(%rbp,%rdx)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_12
.LBB10_15:                              # %for.end
	jmp	.LBB10_21
.LBB10_16:                              # %if.else.16
	movl	$0, -12(%rbp)
.LBB10_17:                              # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB10_20
# BB#18:                                # %for.body.20
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movb	%cl, -304(%rbp,%rdx)
# BB#19:                                # %for.inc.24
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_17
.LBB10_20:                              # %for.end.26
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.27
	cvtsi2sdl	-44(%rbp), %xmm0
	movq	brush_aspect_adjust, %rdi
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -308(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jle	.LBB10_23
# BB#22:                                # %cond.true
	movl	-48(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false
	movl	-308(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB10_24:                              # %cond.end
	movl	-340(%rbp), %eax        # 4-byte Reload
	leaq	-48(%rbp), %rdi
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -32(%rbp)
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	-308(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	resize_fast
	leaq	-48(%rbp), %rdi
	movl	$100, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	padbrush
	movl	$0, -12(%rbp)
.LBB10_25:                              # %for.cond.45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_28 Depth 2
	cmpl	$100, -12(%rbp)
	jge	.LBB10_34
# BB#26:                                # %for.body.48
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-12(%rbp), %eax
	imull	-48(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -312(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB10_32
# BB#27:                                # %if.then.55
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	$0, -16(%rbp)
.LBB10_28:                              # %for.cond.56
                                        #   Parent Loop BB10_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB10_31
# BB#29:                                # %for.body.60
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	-312(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movb	-304(%rbp,%rdx), %dil
	imull	$100, -12(%rbp), %eax
	addl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#30:                                # %for.inc.70
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB10_28
.LBB10_31:                              # %for.end.72
                                        #   in Loop: Header=BB10_25 Depth=1
	jmp	.LBB10_32
.LBB10_32:                              # %if.end.73
                                        #   in Loop: Header=BB10_25 Depth=1
	jmp	.LBB10_33
.LBB10_33:                              # %for.inc.74
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_25
.LBB10_34:                              # %for.end.76
	leaq	-48(%rbp), %rdi
	callq	ppm_kill
.LBB10_35:                              # %if.end.77
	movq	brush_preview, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$100, %edx
	movl	$2, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-364(%rbp), %ecx        # 4-byte Reload
	movl	-364(%rbp), %r8d        # 4-byte Reload
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$100, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	update_brush_preview, .Lfunc_end10-update_brush_preview
	.cfi_endproc

	.align	16, 0x90
	.type	validdrawable,@function
validdrawable:                          # @validdrawable
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_rgb
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB11_2
# BB#1:                                 # %lor.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB11_2:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	validdrawable, .Lfunc_end11-validdrawable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	brushdmenuselect,@function
brushdmenuselect:                       # @brushdmenuselect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-84(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$-1, -84(%rbp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_25
.LBB12_2:                               # %if.end
	cmpl	$2, brush_from_file
	jne	.LBB12_4
# BB#3:                                 # %if.then.4
	jmp	.LBB12_25
.LBB12_4:                               # %if.end.5
	cmpl	$0, brush_from_file
	je	.LBB12_6
# BB#5:                                 # %if.then.6
	xorl	%edi, %edi
	callq	preset_save_button_set_sensitive
.LBB12_6:                               # %if.end.7
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	brush_gamma_adjust, %rdi
	callq	gtk_adjustment_set_value
	xorps	%xmm0, %xmm0
	movq	brush_aspect_adjust, %rdi
	callq	gtk_adjustment_set_value
	movl	-84(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movq	-136(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bpp
	movabsq	$brushppm, %rdi
	movl	%eax, -88(%rbp)
	callq	ppm_kill
	movabsq	$brushppm, %rdi
	movl	-116(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	-120(%rbp), %r9d
	subl	-112(%rbp), %r9d
	movl	%eax, %esi
	movl	%r9d, %edx
	callq	ppm_new
	movl	$1, %eax
	movl	%eax, %esi
	movabsq	$brushppm, %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	imull	$3, (%rcx), %eax
	movl	%eax, -140(%rbp)
	movl	-116(%rbp), %eax
	subl	-108(%rbp), %eax
	imull	-88(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rsi
	movl	-116(%rbp), %r9d
	subl	-108(%rbp), %r9d
	movl	-120(%rbp), %r10d
	subl	-112(%rbp), %r10d
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$3, -88(%rbp)
	jne	.LBB12_12
# BB#7:                                 # %if.then.20
	movl	-116(%rbp), %eax
	subl	-108(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -144(%rbp)
	movl	$0, -124(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB12_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB12_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB12_8 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-96(%rbp), %ecx
	movl	-116(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
	movq	-104(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-124(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	-72(%rbp), %rdi
	movslq	-144(%rbp), %rdx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB12_8
.LBB12_11:                              # %for.end
	jmp	.LBB12_21
.LBB12_12:                              # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$3, -88(%rbp)
	cmovgl	%ecx, %eax
	movl	%eax, -148(%rbp)
	movl	$0, -124(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB12_13:                              # %for.cond.31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_15 Depth 2
	movl	-96(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB12_20
# BB#14:                                # %for.body.34
                                        #   in Loop: Header=BB12_13 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movl	-124(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-72(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-96(%rbp), %ecx
	movl	-116(%rbp), %r8d
	subl	-108(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-108(%rbp), %ecx
	movl	%ecx, -92(%rbp)
.LBB12_15:                              # %for.cond.40
                                        #   Parent Loop BB12_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB12_18
# BB#16:                                # %for.body.43
                                        #   in Loop: Header=BB12_15 Depth=2
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	$1, %edx
	movq	-80(%rbp), %rsi
	movb	(%rsi), %dil
	movq	-168(%rbp), %rsi
	movq	%rsi, %r8
	addq	$1, %r8
	movq	%r8, -168(%rbp)
	movb	%dil, (%rsi)
	cmpl	$0, -148(%rbp)
	movl	%eax, %r9d
	cmovnel	%edx, %r9d
	movslq	%r9d, %rsi
	movq	-80(%rbp), %r8
	movb	(%r8,%rsi), %dil
	movq	-168(%rbp), %rsi
	movq	%rsi, %r8
	addq	$1, %r8
	movq	%r8, -168(%rbp)
	movb	%dil, (%rsi)
	cmpl	$0, -148(%rbp)
	cmovnel	%ecx, %eax
	movslq	%eax, %rsi
	movq	-80(%rbp), %r8
	movb	(%r8,%rsi), %dil
	movq	-168(%rbp), %rsi
	movq	%rsi, %r8
	addq	$1, %r8
	movq	%r8, -168(%rbp)
	movb	%dil, (%rsi)
	movl	-48(%rbp), %eax
	movq	-80(%rbp), %rsi
	movslq	%eax, %r8
	addq	%r8, %rsi
	movq	%rsi, -80(%rbp)
# BB#17:                                # %for.inc.56
                                        #   in Loop: Header=BB12_15 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB12_15
.LBB12_18:                              # %for.end.58
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_19
.LBB12_19:                              # %for.inc.59
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB12_13
.LBB12_20:                              # %for.end.62
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.63
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpl	$3, -88(%rbp)
	jl	.LBB12_23
# BB#22:                                # %if.then.66
	movl	$1, pcvals+3388
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.67
	movl	$0, pcvals+3388
.LBB12_24:                              # %if.end.68
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$0, brush_from_file
	callq	update_brush_preview
.LBB12_25:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	brushdmenuselect, .Lfunc_end12-brushdmenuselect
	.cfi_endproc

	.align	16, 0x90
	.type	savebrush,@function
savebrush:                              # @savebrush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	callq	parsepath
	movq	%rax, -40(%rbp)
	cmpq	$0, brushppm+8
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.17, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.18, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movq	-48(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_free
	movabsq	$.L.str.19, %rsi
	movabsq	$gtk_widget_destroyed, %rdx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	leaq	-32(%rbp), %rdi
	movq	-32(%rbp), %rbx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$savebrush_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB13_3:                               # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	savebrush, .Lfunc_end13-savebrush
	.cfi_endproc

	.align	16, 0x90
	.type	brush_asepct_adjust_cb,@function
brush_asepct_adjust_cb:                 # @brush_asepct_adjust_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_double_adjustment_update
	movabsq	$pcvals, %rax
	addq	$104, %rax
	movq	%rax, %rdi
	callq	update_brush_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	brush_asepct_adjust_cb, .Lfunc_end14-brush_asepct_adjust_cb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	brush_select,@function
brush_select:                           # @brush_select
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	cmpl	$0, brush_dont_update
	je	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_17
.LBB15_2:                               # %if.end
	cmpl	$0, brush_from_file
	jne	.LBB15_4
# BB#3:                                 # %if.then.1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	update_brush_preview
	jmp	.LBB15_17
.LBB15_4:                               # %if.end.2
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB15_16
# BB#5:                                 # %if.then.4
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, last_selected_brush
	jne	.LBB15_7
# BB#6:                                 # %if.then.6
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	%rax, last_selected_brush
	jmp	.LBB15_13
.LBB15_7:                               # %if.else
	movq	last_selected_brush, %rdi
	movq	-72(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_11
# BB#8:                                 # %if.then.10
	cmpl	$0, -12(%rbp)
	jne	.LBB15_10
# BB#9:                                 # %if.then.12
	jmp	.LBB15_17
.LBB15_10:                              # %if.end.13
	jmp	.LBB15_12
.LBB15_11:                              # %if.else.14
	movq	last_selected_brush, %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	%rax, last_selected_brush
.LBB15_12:                              # %if.end.16
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.17
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movl	$1, brush_dont_update
	movq	brush_gamma_adjust, %rdi
	callq	gtk_adjustment_set_value
	xorps	%xmm0, %xmm0
	movq	brush_aspect_adjust, %rdi
	callq	gtk_adjustment_set_value
	movl	$0, brush_dont_update
	cmpq	$0, -72(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.19
	movabsq	$.L.str.13, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movabsq	$pcvals, %rdx
	addq	$104, %rdx
	movl	$200, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_strlcpy
	movq	-64(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	update_brush_preview
.LBB15_15:                              # %if.end.22
	jmp	.LBB15_16
.LBB15_16:                              # %if.end.23
	jmp	.LBB15_17
.LBB15_17:                              # %cleanup
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	brush_select, .Lfunc_end15-brush_select
	.cfi_endproc

	.align	16, 0x90
	.type	padbrush,@function
padbrush:                               # @padbrush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-19(%rbp), %rax
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	%r9d, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rax, %rdi
	movl	%r8d, %esi
	movq	%r10, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	memset
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	subl	(%rdi), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	subl	4(%rdi), %eax
	cltd
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	subl	4(%rdi), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	%eax, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	ppm_pad
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	padbrush, .Lfunc_end16-padbrush
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_message, .Lfunc_end17-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	savebrush_response,@function
savebrush_response:                     # @savebrush_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$brushppm, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	callq	ppm_save
	callq	brushlistrefresh
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	savebrush_response, .Lfunc_end18-savebrush_response
	.cfi_endproc

	.align	16, 0x90
	.type	brushlistrefresh,@function
brushlistrefresh:                       # @brushlistrefresh
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	movq	brush_list_store, %rdi
	callq	gtk_list_store_clear
	movabsq	$.L.str.13, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	brush_list, %rsi
	callq	readdirintolist
	popq	%rbp
	retq
.Lfunc_end19:
	.size	brushlistrefresh, .Lfunc_end19-brushlistrefresh
	.cfi_endproc

	.type	brush_list,@object      # @brush_list
	.local	brush_list
	.comm	brush_list,8,8
	.type	brush_gamma_adjust,@object # @brush_gamma_adjust
	.local	brush_gamma_adjust
	.comm	brush_gamma_adjust,8,8
	.type	brush_relief_adjust,@object # @brush_relief_adjust
	.local	brush_relief_adjust
	.comm	brush_relief_adjust,8,8
	.type	brush_aspect_adjust,@object # @brush_aspect_adjust
	.local	brush_aspect_adjust
	.comm	brush_aspect_adjust,8,8
	.type	last_selected_brush,@object # @last_selected_brush
	.local	last_selected_brush
	.comm	last_selected_brush,8,8
	.type	brush_from_file,@object # @brush_from_file
	.data
	.align	4
brush_from_file:
	.long	2                       # 0x2
	.size	brush_from_file, 4

	.type	brushppm,@object        # @brushppm
	.local	brushppm
	.comm	brushppm,16,8
	.type	brush_reload.lastfn,@object # @brush_reload.lastfn
	.local	brush_reload.lastfn
	.comm	brush_reload.lastfn,256,16
	.type	brush_reload.cache,@object # @brush_reload.cache
	.local	brush_reload.cache
	.comm	brush_reload.cache,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_Brush"
	.size	.L.str, 7

	.type	brush_list_store,@object # @brush_list_store
	.local	brush_list_store
	.comm	brush_list_store,8,8
	.type	brush_preview,@object   # @brush_preview
	.local	brush_preview
	.comm	brush_preview,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"size-allocate"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gamma:"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"value-changed"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Changes the gamma (brightness) of the selected brush"
	.size	.L.str.4, 53

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Select:"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-save-as"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"clicked"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Aspect ratio:"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Specifies the aspect ratio of the brush"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"label"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Relief:"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Specifies the amount of embossing to apply to the image (in percent)"
	.size	.L.str.12, 69

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Brushes"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	".ppm"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Can only save drawables!"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Save Brush"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-cancel"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gtk-save"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"destroy"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"response"
	.size	.L.str.20, 9

	.type	brush_dont_update,@object # @brush_dont_update
	.local	brush_dont_update
	.comm	brush_dont_update,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
