	.text
	.file	"polar-coords.bc"
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$8, %r11d
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
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
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
	subq	$192, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
	movl	$21, run.values
	movl	-52(%rbp), %esi
	movl	%esi, run.values+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -128(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, img_width
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	movl	%eax, img_height
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movabsq	$sel_x1, %rsi
	movabsq	$sel_y1, %rdx
	movabsq	$sel_width, %rcx
	movabsq	$sel_height, %r8
	movl	%eax, img_has_alpha
	movq	-48(%rbp), %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_32
.LBB1_4:                                # %if.end
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	sel_x1, %eax
	addl	sel_width, %eax
	movl	%eax, sel_x2
	movl	sel_y1, %eax
	addl	sel_height, %eax
	movl	%eax, sel_y2
	movl	sel_x1, %eax
	addl	sel_x2, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, cen_x
	movl	sel_y1, %eax
	addl	sel_y2, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, cen_y
	movl	sel_width, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movl	sel_height, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_6
# BB#5:                                 # %if.then.27
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-64(%rbp), %xmm1
	movsd	%xmm1, scale_x
	movsd	%xmm0, scale_y
	jmp	.LBB1_10
.LBB1_6:                                # %if.else
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB1_8
# BB#7:                                 # %if.then.31
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, scale_x
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, scale_y
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.33
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, scale_x
	movsd	%xmm0, scale_y
.LBB1_9:                                # %if.end.34
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.35
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_background
	xorps	%xmm0, %xmm0
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	movl	$back_color, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	gimp_drawable_get_color_uchar
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.35
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.35
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB1_18
	jmp	.LBB1_19
.LBB1_11:                               # %sw.bb
	movabsq	$.L.str.16, %rdi
	movabsq	$pcvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	polarize_dialog
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.41
	jmp	.LBB1_32
.LBB1_13:                               # %if.end.42
	jmp	.LBB1_20
.LBB1_14:                               # %sw.bb.43
	cmpl	$8, -12(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.46
	movl	$1, -52(%rbp)
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.47
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pcvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pcvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, pcvals+16
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, pcvals+20
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, pcvals+24
.LBB1_17:                               # %if.end.62
	jmp	.LBB1_20
.LBB1_18:                               # %sw.bb.63
	movabsq	$.L.str.16, %rdi
	movabsq	$pcvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %sw.default
	jmp	.LBB1_20
.LBB1_20:                               # %sw.epilog
	cmpl	$3, -52(%rbp)
	jne	.LBB1_28
# BB#21:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#22:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_28
.LBB1_23:                               # %if.then.73
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-164(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-172(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	polarize
	cmpl	$1, -56(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.82
	callq	gimp_displays_flush
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB1_25:                               # %if.end.84
	cmpl	$0, -56(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.87
	movabsq	$.L.str.16, %rdi
	movabsq	$pcvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.89
	jmp	.LBB1_31
.LBB1_28:                               # %if.else.90
	cmpl	$3, -52(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.93
	movl	$0, -52(%rbp)
.LBB1_30:                               # %if.end.94
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.95
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_32:                               # %return
	addq	$192, %rsp
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4645023210981556224     # double 359
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4624633867356078080     # double 15
.LCPI3_3:
	.quad	4636737291354636288     # double 100
.LCPI3_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	polarize_dialog,@function
polarize_dialog:                        # @polarize_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$560, %rsp              # imm = 0x230
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.26, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movabsq	$.L.str.28, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.29, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.30, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rsi
	movabsq	$dialog_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	pcvals, %xmm1           # xmm1 = mem[0],zero
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-224(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-240(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-240(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pcvals+8, %xmm1         # xmm1 = mem[0],zero
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-304(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-304(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pcvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.36, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$pcvals, %rdx
	addq	$16, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$pcvals, %rdx
	addq	$20, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+24, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$pcvals, %rdx
	addq	$24, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-84(%rbp), %eax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	polarize_dialog, .Lfunc_end3-polarize_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	polarize,@function
polarize:                               # @polarize
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
	subq	$64, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-56(%rbp), %rdi
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_background
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_rgn_iterator_new
	movabsq	$polarize_func, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_rgn_iterator_dest
	movq	-16(%rbp), %rdi
	callq	gimp_rgn_iterator_free
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	polarize, .Lfunc_end4-polarize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -116(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -116(%rbp)
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-144(%rbp), %rax
	movslq	-116(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-116(%rbp), %rcx
	movq	%rax, -176(%rbp,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-104(%rbp), %rdi
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_background
	leaq	-104(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-104(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_get_color_uchar
	leaq	-104(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$2, %esi
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movq	-16(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -40(%rbp)
.LBB5_5:                                # %for.cond.8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_11 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_19
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	$0, -36(%rbp)
.LBB5_7:                                # %for.cond.11
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_17
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB5_7 Depth=2
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_preview_untransform
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	callq	calc_undistorted_coords
	cmpl	$0, %eax
	je	.LBB5_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB5_7 Depth=2
	leaq	-144(%rbp), %rcx
	movq	-128(%rbp), %rdi
	cvttsd2si	-24(%rbp), %esi
	cvttsd2si	-32(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-144(%rbp), %rcx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-128(%rbp), %rdi
	addsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvttsd2si	-32(%rbp), %edx
	addq	$4, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-144(%rbp), %rcx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-128(%rbp), %rdi
	cvttsd2si	-24(%rbp), %esi
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	addq	$8, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-144(%rbp), %rcx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-128(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	addq	$12, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-176(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-120(%rbp), %esi
	movl	img_has_alpha, %edx
	callq	gimp_bilinear_pixels_8
	jmp	.LBB5_15
.LBB5_10:                               # %if.else
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	$0, -116(%rbp)
.LBB5_11:                               # %for.cond.36
                                        #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB5_14
# BB#12:                                # %for.body.39
                                        #   in Loop: Header=BB5_11 Depth=3
	movslq	-116(%rbp), %rax
	movb	-68(%rbp,%rax), %cl
	movslq	-116(%rbp), %rax
	movq	-64(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#13:                                # %for.inc.44
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end.46
                                        #   in Loop: Header=BB5_7 Depth=2
	jmp	.LBB5_15
.LBB5_15:                               # %if.end
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-120(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#16:                                # %for.inc.47
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_7
.LBB5_17:                               # %for.end.49
                                        #   in Loop: Header=BB5_5 Depth=1
	jmp	.LBB5_18
.LBB5_18:                               # %for.inc.50
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_5
.LBB5_19:                               # %for.end.52
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-52(%rbp), %eax
	imull	-120(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-112(%rbp), %rdi
	callq	g_free
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialog_update_preview, .Lfunc_end5-dialog_update_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI6_1:
	.quad	4640537203540230144     # double 180
.LCPI6_2:
	.quad	4611686018427387904     # double 2
.LCPI6_3:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI6_4:
	.quad	4616991696741409234     # double 4.7123889803846897
.LCPI6_5:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI6_6:
	.quad	4607182418800017408     # double 1
.LCPI6_7:
	.quad	4636737291354636288     # double 100
.LCPI6_9:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_8:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	calc_undistorted_coords,@function
calc_undistorted_coords:                # @calc_undistorted_coords
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
	subq	$272, %rsp              # imm = 0x110
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm5, -48(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -212(%rbp)
	movl	img_width, %eax
	movl	%eax, -208(%rbp)
	movl	img_height, %eax
	movl	%eax, -216(%rbp)
	movl	-208(%rbp), %eax
	subl	-204(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-216(%rbp), %eax
	subl	-212(%rbp), %eax
	movl	%eax, -96(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm0
	divsd	%xmm4, %xmm0
	movsd	%xmm0, -72(%rbp)
	cvtsi2sdl	-96(%rbp), %xmm0
	divsd	%xmm4, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	pcvals, %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	pcvals+8, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -184(%rbp)
	cmpl	$0, pcvals+24
	je	.LBB6_37
# BB#1:                                 # %if.then
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	cen_x, %xmm0
	jb	.LBB6_9
# BB#2:                                 # %if.then.6
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	cen_y, %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %if.then.9
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	cen_x, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	cen_y, %xmm1
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %if.else
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	cen_y, %xmm1            # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_6
# BB#5:                                 # %if.then.16
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	cen_x, %xmm0
	movsd	cen_y, %xmm1            # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.21
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.22
	jmp	.LBB6_18
.LBB6_9:                                # %if.else.23
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	cen_x, %xmm1            # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_17
# BB#10:                                # %if.then.26
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	cen_y, %xmm1            # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_12
# BB#11:                                # %if.then.29
	movsd	cen_x, %xmm0            # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	cen_y, %xmm1            # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB6_16
.LBB6_12:                               # %if.else.35
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	cen_y, %xmm0
	jbe	.LBB6_14
# BB#13:                                # %if.then.38
	movsd	cen_x, %xmm0            # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	cen_y, %xmm1
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB6_15
.LBB6_14:                               # %if.else.43
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB6_15:                               # %if.end.44
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.45
	jmp	.LBB6_17
.LBB6_17:                               # %if.end.46
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.47
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	cen_x, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	cen_x, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	cen_y, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	cen_y, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -104(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	cen_x, %xmm0
	jne	.LBB6_19
	jp	.LBB6_19
	jmp	.LBB6_20
.LBB6_19:                               # %if.then.58
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	cen_y, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	cen_x, %xmm1
	divsd	%xmm1, %xmm0
	movapd	.LCPI6_8(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.63
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB6_21:                               # %if.end.64
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-216(%rbp), %eax
	subl	-212(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-208(%rbp), %eax
	subl	-204(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_26
# BB#22:                                # %if.then.72
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	cen_x, %xmm0
	jne	.LBB6_24
	jp	.LBB6_24
# BB#23:                                # %if.then.75
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	cen_y, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB6_25
.LBB6_24:                               # %if.else.78
	movsd	cen_x, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
.LBB6_25:                               # %if.end.82
	jmp	.LBB6_27
.LBB6_26:                               # %if.else.83
	movsd	cen_y, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB6_27:                               # %if.end.87
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -136(%rbp)
	movsd	cen_y, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	cen_x, %xmm1            # xmm1 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_29
# BB#28:                                # %cond.true
	movsd	cen_y, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false
	movsd	cen_x, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB6_30:                               # %cond.end
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_7, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-192(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	subsd	-176(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-184(%rbp), %xmm0
	callq	fmod
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, pcvals+16
	je	.LBB6_32
# BB#31:                                # %if.then.110
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movl	-208(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-208(%rbp), %eax
	subl	-204(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -144(%rbp)
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.119
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movl	-208(%rbp), %eax
	subl	-204(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	cvtsi2sdl	-204(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
.LBB6_33:                               # %if.end.127
	cmpl	$0, pcvals+20
	je	.LBB6_35
# BB#34:                                # %if.then.129
	movl	-216(%rbp), %eax
	subl	-212(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-136(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	cvtsi2sdl	-212(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB6_36
.LBB6_35:                               # %if.else.136
	cvtsi2sdl	-216(%rbp), %xmm0
	movl	-216(%rbp), %eax
	subl	-212(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	-136(%rbp), %xmm1
	mulsd	-104(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB6_36:                               # %if.end.143
	jmp	.LBB6_74
.LBB6_37:                               # %if.else.144
	cmpl	$0, pcvals+16
	je	.LBB6_39
# BB#38:                                # %if.then.146
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-208(%rbp), %xmm1
	subsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB6_40
.LBB6_39:                               # %if.else.152
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB6_40:                               # %if.end.158
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-184(%rbp), %xmm0
	callq	fmod
	movsd	.LCPI6_4, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB6_42
# BB#41:                                # %if.then.163
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB6_49
.LBB6_42:                               # %if.else.165
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_44
# BB#43:                                # %if.then.168
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	jmp	.LBB6_48
.LBB6_44:                               # %if.else.170
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_46
# BB#45:                                # %if.then.173
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB6_47
.LBB6_46:                               # %if.else.175
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB6_47:                               # %if.end.176
	jmp	.LBB6_48
.LBB6_48:                               # %if.end.177
	jmp	.LBB6_49
.LBB6_49:                               # %if.end.178
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	tan
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_50
	jp	.LBB6_50
	jmp	.LBB6_51
.LBB6_50:                               # %if.then.182
	movsd	.LCPI6_6, %xmm0         # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB6_52
.LBB6_51:                               # %if.else.184
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB6_52:                               # %if.end.185
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm1
	cvtsi2sdl	-92(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_57
# BB#53:                                # %if.then.191
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_55
	jp	.LBB6_55
# BB#54:                                # %if.then.194
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB6_56
.LBB6_55:                               # %if.else.197
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
.LBB6_56:                               # %if.end.201
	jmp	.LBB6_58
.LBB6_57:                               # %if.else.202
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB6_58:                               # %if.end.206
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -136(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_60
# BB#59:                                # %cond.true.217
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB6_61
.LBB6_60:                               # %cond.false.220
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-204(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB6_61:                               # %cond.end.223
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_7, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-192(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	subsd	-176(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	cmpl	$0, pcvals+20
	je	.LBB6_63
# BB#62:                                # %if.then.231
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB6_64
.LBB6_63:                               # %if.else.237
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-216(%rbp), %xmm1
	subsd	-16(%rbp), %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB6_64:                               # %if.end.243
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB6_66
# BB#65:                                # %if.then.250
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB6_73
.LBB6_66:                               # %if.else.253
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_68
# BB#67:                                # %if.then.256
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB6_72
.LBB6_68:                               # %if.else.259
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_70
# BB#69:                                # %if.then.262
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB6_71
.LBB6_70:                               # %if.else.265
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB6_71:                               # %if.end.268
	jmp	.LBB6_72
.LBB6_72:                               # %if.end.269
	jmp	.LBB6_73
.LBB6_73:                               # %if.end.270
	jmp	.LBB6_74
.LBB6_74:                               # %if.end.271
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_9, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	-144(%rbp), %xmm2
	cvttsd2si	%xmm2, %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, -160(%rbp)
	addsd	-152(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_77
# BB#75:                                # %land.lhs.true
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	img_width, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_77
# BB#76:                                # %cond.true.284
	xorl	%eax, %eax
	movb	%al, %cl
	movb	$1, %dl
	testb	$1, %dl
	movb	%cl, -257(%rbp)         # 1-byte Spill
	jne	.LBB6_78
	jmp	.LBB6_81
.LBB6_77:                               # %cond.false.285
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	movb	%cl, -257(%rbp)         # 1-byte Spill
	jne	.LBB6_78
	jmp	.LBB6_81
.LBB6_78:                               # %land.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	xorps	%xmm0, %xmm0
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -258(%rbp)         # 1-byte Spill
	jb	.LBB6_80
# BB#79:                                # %land.rhs.288
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	img_height, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%cl
	movb	%cl, -258(%rbp)         # 1-byte Spill
.LBB6_80:                               # %land.end
	movb	-258(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	cmpl	$0, %ecx
	setne	%al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB6_81:                               # %land.end.295
	movb	-257(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB6_83
# BB#82:                                # %if.then.297
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB6_83:                               # %if.end.298
	movl	-36(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end6:
	.size	calc_undistorted_coords, .Lfunc_end6-calc_undistorted_coords
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	polarize_func,@function
polarize_func:                          # @polarize_func
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
	subq	$112, %rsp
	leaq	-40(%rbp), %rax
	leaq	-48(%rbp), %r9
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	%rax, %rdi
	movq	%r9, %rsi
	callq	calc_undistorted_coords
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rax
	leaq	-64(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	movq	%rax, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rdi
	cvttsd2si	-40(%rbp), %esi
	cvttsd2si	-48(%rbp), %edx
	movq	%rax, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-56(%rbp), %rcx
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	addsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvttsd2si	-48(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-60(%rbp), %rcx
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	cvttsd2si	-40(%rbp), %esi
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-64(%rbp), %rcx
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-40(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-20(%rbp), %esi
	movl	img_has_alpha, %edx
	callq	gimp_bilinear_pixels_8
	jmp	.LBB7_7
.LBB7_2:                                # %if.else
	movl	$0, -108(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-108(%rbp), %rax
	movb	back_color(,%rax), %cl
	movslq	-108(%rbp), %rax
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
	jmp	.LBB7_7
.LBB7_7:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	polarize_func, .Lfunc_end7-polarize_func
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.args, 192

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
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"circle"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Circle depth in %"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"angle"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Offset angle"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"backwards"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Map backwards { TRUE, FALSE }"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"inverse"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Map from top { TRUE, FALSE }"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"polrec"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Polar to rectangular { TRUE, FALSE }"
	.size	.L.str.15, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-polar-coords"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Convert image to or from polar coordinates"
	.size	.L.str.17, 43

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Remaps and image from rectangular coordinates to polar coordinates or vice versa"
	.size	.L.str.18, 81

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Daniel Dunbar and Federico Mena Quintero"
	.size	.L.str.19, 41

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"July 1997, 0.5"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"P_olar Coordinates..."
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.23, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	img_width,@object       # @img_width
	.local	img_width
	.comm	img_width,4,4
	.type	img_height,@object      # @img_height
	.local	img_height
	.comm	img_height,4,4
	.type	img_has_alpha,@object   # @img_has_alpha
	.local	img_has_alpha
	.comm	img_has_alpha,4,4
	.type	sel_x1,@object          # @sel_x1
	.local	sel_x1
	.comm	sel_x1,4,4
	.type	sel_y1,@object          # @sel_y1
	.local	sel_y1
	.comm	sel_y1,4,4
	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	sel_x2,@object          # @sel_x2
	.local	sel_x2
	.comm	sel_x2,4,4
	.type	sel_y2,@object          # @sel_y2
	.local	sel_y2
	.comm	sel_y2,4,4
	.type	cen_x,@object           # @cen_x
	.local	cen_x
	.comm	cen_x,8,8
	.type	cen_y,@object           # @cen_y
	.local	cen_y
	.comm	cen_y,8,8
	.type	scale_x,@object         # @scale_x
	.local	scale_x
	.comm	scale_x,8,8
	.type	scale_y,@object         # @scale_y
	.local	scale_y
	.comm	scale_y,8,8
	.type	back_color,@object      # @back_color
	.local	back_color
	.comm	back_color,4,1
	.type	pcvals,@object          # @pcvals
	.data
	.align	8
pcvals:
	.quad	4636737291354636288     # double 100
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.size	pcvals, 32

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"polar-coords"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Polar Coordinates"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-polar-coords"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-cancel"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-ok"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"invalidated"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Circle _depth in percent:"
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"value-changed"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Offset _angle:"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Map backwards"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"If checked the mapping will begin at the right side, as opposed to beginning at the left."
	.size	.L.str.36, 90

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"toggled"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Map from _top"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"If unchecked the mapping will put the bottom row in the middle and the top row on the outside.  If checked it will be the opposite."
	.size	.L.str.39, 132

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"To _polar"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"If unchecked the image will be circularly mapped onto a rectangle.  If checked the image will be mapped onto a circle."
	.size	.L.str.41, 119

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Polar coordinates"
	.size	.L.str.42, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
