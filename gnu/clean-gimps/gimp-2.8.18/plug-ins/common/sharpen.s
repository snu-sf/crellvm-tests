	.text
	.file	"sharpen.bc"
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
	subq	$88, %rsp
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %r10
	movl	$1, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.16, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$88, %rsp
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
	subq	$112, %rsp
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
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.17, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	20(%rax), %ecx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$sharpen_params, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	sharpen_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_23
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.9
	cmpl	$4, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -48(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, sharpen_params
.LBB1_9:                                # %if.end.15
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.16
	movabsq	$.L.str.8, %rdi
	movabsq	$sharpen_params, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	movl	$1, -48(%rbp)
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_22
# BB#13:                                # %if.then.20
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_20
.LBB1_15:                               # %if.then.26
	movq	-56(%rbp), %rdi
	callq	sharpen
	cmpl	$1, -44(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.29
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.31
	cmpl	$0, -44(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.34
	movabsq	$.L.str.8, %rdi
	movabsq	$sharpen_params, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.36
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.37
	movl	$0, -48(%rbp)
.LBB1_21:                               # %if.end.38
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.39
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_23:                               # %return
	addq	$112, %rsp
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
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4636666922610458624     # double 99
.LCPI3_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	sharpen_dialog,@function
sharpen_dialog:                         # @sharpen_dialog
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
	subq	$288, %rsp              # imm = 0x120
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.19, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.22, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.23, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.24, %rsi
	movabsq	$preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	sharpen_params, %xmm3
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-208(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-224(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$sharpen_params, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sharpen_dialog, .Lfunc_end3-sharpen_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	sharpen,@function
sharpen:                                # @sharpen
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
	subq	$320, %rsp              # imm = 0x140
	leaq	-224(%rbp), %rsi
	leaq	-228(%rbp), %rdx
	leaq	-236(%rbp), %rcx
	leaq	-240(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	$0, -256(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_43
.LBB4_2:                                # %if.end
	movl	-228(%rbp), %eax
	addl	-240(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movabsq	$.L.str.28, %rdi
	movl	%eax, -244(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-56(%rbp), %rdi
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movl	-224(%rbp), %r8d
	movl	-228(%rbp), %ecx
	movl	-236(%rbp), %r9d
	movl	-240(%rbp), %r10d
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-224(%rbp), %edx
	movl	-228(%rbp), %ecx
	movl	-236(%rbp), %r8d
	movl	-240(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	callq	compute_luts
	movl	-236(%rbp), %eax
	imull	-244(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	$0, -212(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -212(%rbp)
	jge	.LBB4_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-220(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-212(%rbp), %rdi
	movq	%rax, -144(%rbp,%rdi,8)
	movslq	-220(%rbp), %rdi
	callq	g_malloc_n
	movslq	-212(%rbp), %rsi
	movq	%rax, -192(%rbp,%rsi,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB4_3
.LBB4_6:                                # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-220(%rbp), %rdi
	callq	g_malloc_n
	leaq	-56(%rbp), %rdi
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rsi
	movl	-224(%rbp), %edx
	movl	-228(%rbp), %ecx
	movl	-236(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-220(%rbp), %ecx
	movl	%ecx, -204(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB4_7:                                # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -204(%rbp)
	jle	.LBB4_10
# BB#8:                                 # %for.body.18
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movl	neg_lut(,%rax,4), %ecx
	movq	-200(%rbp), %rax
	movl	%ecx, (%rax)
# BB#9:                                 # %for.inc.21
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-204(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -204(%rbp)
	movq	-152(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movq	-200(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -200(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end.23
	movl	$1, -212(%rbp)
	movl	$1, -216(%rbp)
	movl	-244(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movl	%eax, -284(%rbp)        # 4-byte Spill
	ja	.LBB4_15
# BB#44:                                # %for.end.23
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_11:                               # %sw.bb
	movabsq	$gray_filter, %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB4_15
.LBB4_12:                               # %sw.bb.24
	movabsq	$graya_filter, %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB4_15
.LBB4_13:                               # %sw.bb.25
	movabsq	$rgb_filter, %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %sw.bb.26
	movabsq	$rgba_filter, %rax
	movq	%rax, -256(%rbp)
.LBB4_15:                               # %sw.epilog
	movl	-228(%rbp), %eax
	movl	%eax, -208(%rbp)
.LBB4_16:                               # %for.cond.27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_21 Depth 2
	movl	-208(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_38
# BB#17:                                # %for.body.30
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-208(%rbp), %eax
	addl	$1, %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_25
# BB#18:                                # %if.then.34
                                        #   in Loop: Header=BB4_16 Depth=1
	cmpl	$3, -216(%rbp)
	jl	.LBB4_20
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-216(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -216(%rbp)
.LBB4_20:                               # %if.end.39
                                        #   in Loop: Header=BB4_16 Depth=1
	leaq	-56(%rbp), %rdi
	movslq	-212(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rsi
	movl	-224(%rbp), %edx
	movl	-208(%rbp), %ecx
	addl	$1, %ecx
	movl	-236(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-220(%rbp), %ecx
	movl	%ecx, -204(%rbp)
	movslq	-212(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, -152(%rbp)
	movslq	-212(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rax
	movq	%rax, -200(%rbp)
.LBB4_21:                               # %for.cond.47
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -204(%rbp)
	jle	.LBB4_24
# BB#22:                                # %for.body.50
                                        #   in Loop: Header=BB4_21 Depth=2
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movl	neg_lut(,%rax,4), %ecx
	movq	-200(%rbp), %rax
	movl	%ecx, (%rax)
# BB#23:                                # %for.inc.53
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	-204(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -204(%rbp)
	movq	-152(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movq	-200(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -200(%rbp)
	jmp	.LBB4_21
.LBB4_24:                               # %for.end.57
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	movl	-212(%rbp), %eax
	addl	$1, %eax
	andl	$3, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB4_26
.LBB4_25:                               # %if.else
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-216(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -216(%rbp)
.LBB4_26:                               # %if.end.61
                                        #   in Loop: Header=BB4_16 Depth=1
	cmpl	$3, -216(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-256(%rbp), %rax
	movl	-236(%rbp), %edi
	movl	-212(%rbp), %ecx
	addl	$2, %ecx
	andl	$3, %ecx
	movslq	%ecx, %rdx
	movq	-144(%rbp,%rdx,8), %rsi
	movq	-160(%rbp), %rdx
	movl	-212(%rbp), %ecx
	addl	$1, %ecx
	andl	$3, %ecx
	movslq	%ecx, %r8
	movq	-192(%rbp,%r8,8), %r8
	movslq	-244(%rbp), %r9
	shlq	$2, %r9
	addq	%r9, %r8
	movl	-212(%rbp), %ecx
	addl	$2, %ecx
	andl	$3, %ecx
	movslq	%ecx, %r9
	movq	-192(%rbp,%r9,8), %r9
	movslq	-244(%rbp), %r10
	shlq	$2, %r10
	addq	%r10, %r9
	movl	-212(%rbp), %ecx
	addl	$3, %ecx
	andl	$3, %ecx
	movslq	%ecx, %r10
	movq	-192(%rbp,%r10,8), %r10
	movslq	-244(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %r10
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	callq	*%rax
	leaq	-104(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-224(%rbp), %edx
	movl	-208(%rbp), %ecx
	movl	-236(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	jmp	.LBB4_34
.LBB4_28:                               # %if.else.85
                                        #   in Loop: Header=BB4_16 Depth=1
	cmpl	$2, -216(%rbp)
	jne	.LBB4_33
# BB#29:                                # %if.then.88
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-208(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jne	.LBB4_31
# BB#30:                                # %if.then.91
                                        #   in Loop: Header=BB4_16 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-224(%rbp), %edx
	movl	-208(%rbp), %ecx
	movl	-236(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.93
                                        #   in Loop: Header=BB4_16 Depth=1
	leaq	-104(%rbp), %rdi
	movl	-240(%rbp), %eax
	subl	$1, %eax
	andl	$3, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp,%rcx,8), %rsi
	movl	-224(%rbp), %edx
	movl	-208(%rbp), %ecx
	movl	-236(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
.LBB4_32:                               # %if.end.97
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.98
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.99
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-208(%rbp), %eax
	andl	$15, %eax
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#35:                                # %if.then.103
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-208(%rbp), %eax
	subl	-228(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-240(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB4_36:                               # %if.end.108
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_37
.LBB4_37:                               # %for.inc.109
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB4_16
.LBB4_38:                               # %for.end.111
	movl	$0, -212(%rbp)
.LBB4_39:                               # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -212(%rbp)
	jge	.LBB4_42
# BB#40:                                # %for.body.115
                                        #   in Loop: Header=BB4_39 Depth=1
	movslq	-212(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdi
	callq	g_free
	movslq	-212(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#41:                                # %for.inc.120
                                        #   in Loop: Header=BB4_39 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB4_39
.LBB4_42:                               # %for.end.122
	movq	-160(%rbp), %rdi
	callq	g_free
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-224(%rbp), %esi
	movl	-228(%rbp), %edx
	movl	-236(%rbp), %ecx
	movl	-240(%rbp), %r8d
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_43:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sharpen, .Lfunc_end4-sharpen
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_11
	.quad	.LBB4_12
	.quad	.LBB4_13
	.quad	.LBB4_14

	.text
	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -160(%rbp)
	callq	compute_luts
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	movq	-8(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	$1, %edi
	movl	%edi, %esi
	movl	%eax, -148(%rbp)
	movl	-112(%rbp), %eax
	imull	-116(%rbp), %eax
	imull	-148(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)
	movl	-112(%rbp), %ecx
	imull	-116(%rbp), %ecx
	imull	-148(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)
	movl	-112(%rbp), %ecx
	imull	-116(%rbp), %ecx
	imull	-148(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rsi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	-116(%rbp), %r10d
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-64(%rbp), %rdi
	movl	-112(%rbp), %ecx
	imull	-148(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movq	-128(%rbp), %rsi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	-100(%rbp), %ecx
	imull	-116(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -92(%rbp)
	jle	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movl	neg_lut(,%rax,4), %edx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -88(%rbp)
	movl	%edx, (%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movl	-148(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%eax, -188(%rbp)        # 4-byte Spill
	ja	.LBB5_9
# BB#15:                                # %for.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_5:                                # %sw.bb
	movabsq	$gray_filter, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB5_10
.LBB5_6:                                # %sw.bb.18
	movabsq	$graya_filter, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB5_10
.LBB5_7:                                # %sw.bb.19
	movabsq	$rgb_filter, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB5_10
.LBB5_8:                                # %sw.bb.20
	movabsq	$rgba_filter, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB5_10
.LBB5_9:                                # %sw.default
	movabsq	$.L.str.27, %rdi
	movl	-148(%rbp), %esi
	movb	$0, %al
	callq	g_error
.LBB5_10:                               # %sw.epilog
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	callq	memcpy
	movq	-136(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-128(%rbp), %rsi
	movl	-100(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movslq	-100(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	-116(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rdx
	movslq	-100(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rdx
	movslq	-100(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movslq	-148(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -88(%rbp)
	movq	-136(%rbp), %rdx
	movslq	-100(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
.LBB5_11:                               # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -96(%rbp)
	jle	.LBB5_14
# BB#12:                                # %for.body.40
                                        #   in Loop: Header=BB5_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx
	movl	-112(%rbp), %edi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movslq	-100(%rbp), %r10
	subq	%r10, %rcx
	shlq	$2, %rcx
	addq	%rcx, %r9
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %r10
	movslq	-100(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %r10
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	%r10, %r9
	movq	-208(%rbp), %r10        # 8-byte Reload
	callq	*%r10
# BB#13:                                # %for.inc.45
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movl	-100(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-100(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end.53
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-112(%rbp), %eax
	imull	-148(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_update, .Lfunc_end5-preview_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8

	.text
	.align	16, 0x90
	.type	compute_luts,@function
compute_luts:                           # @compute_luts
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
	movl	$100, %eax
	subl	sharpen_params, %eax
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jge	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, -8(%rbp)
.LBB6_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB6_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	imull	$800, -4(%rbp), %eax    # imm = 0x320
	cltd
	idivl	-8(%rbp)
	movslq	-4(%rbp), %rcx
	movl	%eax, pos_lut(,%rcx,4)
	movslq	-4(%rbp), %rcx
	movl	pos_lut(,%rcx,4), %eax
	addl	$4, %eax
	movl	-4(%rbp), %esi
	shll	$3, %esi
	subl	%esi, %eax
	sarl	$3, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, neg_lut(,%rcx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	compute_luts, .Lfunc_end6-compute_luts
	.cfi_endproc

	.align	16, 0x90
	.type	gray_filter,@function
gray_filter:                            # @gray_filter
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movl	-4(%rbp), %edi
	subl	$2, %edi
	movl	%edi, -4(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB7_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movl	pos_lut(,%rax,4), %edx
	movq	-32(%rbp), %rax
	subl	-4(%rax), %edx
	movq	-32(%rbp), %rax
	subl	(%rax), %edx
	movq	-32(%rbp), %rax
	subl	4(%rax), %edx
	movq	-40(%rbp), %rax
	subl	-4(%rax), %edx
	movq	-40(%rbp), %rax
	subl	4(%rax), %edx
	movq	-48(%rbp), %rax
	subl	-4(%rax), %edx
	movq	-48(%rbp), %rax
	subl	(%rax), %edx
	movq	-48(%rbp), %rax
	subl	4(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	addl	$4, %edx
	sarl	$3, %edx
	movl	%edx, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB7_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$255, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB7_8
.LBB7_4:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB7_6
# BB#5:                                 # %cond.true.21
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false.22
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_7:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB7_8:                                # %cond.end.23
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-32(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_1
.LBB7_9:                                # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gray_filter, .Lfunc_end7-gray_filter
	.cfi_endproc

	.align	16, 0x90
	.type	graya_filter,@function
graya_filter:                           # @graya_filter
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movl	-4(%rbp), %edi
	subl	$2, %edi
	movl	%edi, -4(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB8_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movl	pos_lut(,%rax,4), %edx
	movq	-32(%rbp), %rax
	subl	-8(%rax), %edx
	movq	-32(%rbp), %rax
	subl	(%rax), %edx
	movq	-32(%rbp), %rax
	subl	8(%rax), %edx
	movq	-40(%rbp), %rax
	subl	-8(%rax), %edx
	movq	-40(%rbp), %rax
	subl	8(%rax), %edx
	movq	-48(%rbp), %rax
	subl	-8(%rax), %edx
	movq	-48(%rbp), %rax
	subl	(%rax), %edx
	movq	-48(%rbp), %rax
	subl	8(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	addl	$4, %edx
	sarl	$3, %edx
	movl	%edx, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB8_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$255, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB8_6
# BB#5:                                 # %cond.true.23
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false.24
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB8_7:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB8_8:                                # %cond.end.25
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	(%rdx), %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, -48(%rbp)
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_1
.LBB8_9:                                # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	graya_filter, .Lfunc_end8-graya_filter
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_filter,@function
rgb_filter:                             # @rgb_filter
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movl	-4(%rbp), %edi
	subl	$2, %edi
	movl	%edi, -4(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB9_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movl	pos_lut(,%rax,4), %edx
	movq	-32(%rbp), %rax
	subl	-12(%rax), %edx
	movq	-32(%rbp), %rax
	subl	(%rax), %edx
	movq	-32(%rbp), %rax
	subl	12(%rax), %edx
	movq	-40(%rbp), %rax
	subl	-12(%rax), %edx
	movq	-40(%rbp), %rax
	subl	12(%rax), %edx
	movq	-48(%rbp), %rax
	subl	-12(%rax), %edx
	movq	-48(%rbp), %rax
	subl	(%rax), %edx
	movq	-48(%rbp), %rax
	subl	12(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	addl	$4, %edx
	sarl	$3, %edx
	movl	%edx, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB9_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$255, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB9_8
.LBB9_4:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB9_6
# BB#5:                                 # %cond.true.25
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false.26
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB9_7:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB9_8:                                # %cond.end.27
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movl	pos_lut(,%rdx,4), %eax
	movq	-32(%rbp), %rdx
	subl	-8(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	4(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	16(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	-8(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	16(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	-8(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	4(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	16(%rdx), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB9_10
# BB#9:                                 # %cond.true.53
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$255, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB9_14
.LBB9_10:                               # %cond.false.54
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB9_12
# BB#11:                                # %cond.true.57
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false.58
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB9_13:                               # %cond.end.59
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB9_14:                               # %cond.end.61
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movl	pos_lut(,%rdx,4), %eax
	movq	-32(%rbp), %rdx
	subl	-4(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	8(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	20(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	-4(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	20(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	-4(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	8(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	20(%rdx), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB9_16
# BB#15:                                # %cond.true.88
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$255, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB9_20
.LBB9_16:                               # %cond.false.89
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB9_18
# BB#17:                                # %cond.true.92
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.93
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB9_19:                               # %cond.end.94
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB9_20:                               # %cond.end.96
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-32(%rbp), %rdx
	addq	$12, %rdx
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rdx
	addq	$12, %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	addq	$12, %rdx
	movq	%rdx, -48(%rbp)
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_1
.LBB9_21:                               # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rgb_filter, .Lfunc_end9-rgb_filter
	.cfi_endproc

	.align	16, 0x90
	.type	rgba_filter,@function
rgba_filter:                            # @rgba_filter
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	(%rcx), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movl	-4(%rbp), %edi
	subl	$2, %edi
	movl	%edi, -4(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB10_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movl	pos_lut(,%rax,4), %edx
	movq	-32(%rbp), %rax
	subl	-16(%rax), %edx
	movq	-32(%rbp), %rax
	subl	(%rax), %edx
	movq	-32(%rbp), %rax
	subl	16(%rax), %edx
	movq	-40(%rbp), %rax
	subl	-16(%rax), %edx
	movq	-40(%rbp), %rax
	subl	16(%rax), %edx
	movq	-48(%rbp), %rax
	subl	-16(%rax), %edx
	movq	-48(%rbp), %rax
	subl	(%rax), %edx
	movq	-48(%rbp), %rax
	subl	16(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %edx
	addl	$4, %edx
	sarl	$3, %edx
	movl	%edx, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB10_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$255, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB10_8
.LBB10_4:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB10_6
# BB#5:                                 # %cond.true.27
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false.28
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB10_7:                               # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB10_8:                               # %cond.end.29
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movl	pos_lut(,%rdx,4), %eax
	movq	-32(%rbp), %rdx
	subl	-12(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	4(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	20(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	-12(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	20(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	-12(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	4(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	20(%rdx), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB10_10
# BB#9:                                 # %cond.true.55
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$255, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB10_14
.LBB10_10:                              # %cond.false.56
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB10_12
# BB#11:                                # %cond.true.59
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_13
.LBB10_12:                              # %cond.false.60
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_13:                              # %cond.end.61
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB10_14:                              # %cond.end.63
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movl	pos_lut(,%rdx,4), %eax
	movq	-32(%rbp), %rdx
	subl	-8(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	8(%rdx), %eax
	movq	-32(%rbp), %rdx
	subl	24(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	-8(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	24(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	-8(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	8(%rdx), %eax
	movq	-48(%rbp), %rdx
	subl	24(%rdx), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB10_16
# BB#15:                                # %cond.true.90
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$255, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB10_20
.LBB10_16:                              # %cond.false.91
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB10_18
# BB#17:                                # %cond.true.94
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB10_19
.LBB10_18:                              # %cond.false.95
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB10_19:                              # %cond.end.96
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB10_20:                              # %cond.end.98
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	(%rdx), %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, -48(%rbp)
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB10_1
.LBB10_21:                              # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	rgba_filter, .Lfunc_end10-rgba_filter
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB11_3
# BB#2:                                 # %entry
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
.LBB11_3:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$4, %esi
	leaq	-32(%rbp), %r10
	movq	%r8, -8(%rbp)
	movq	%r10, %r8
	leaq	-208(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r10, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB11_1
.Lfunc_end11:
	.size	g_error, .Lfunc_end11-g_error
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.args, 96

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
	.asciz	"percent"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Percent sharpening (default = 10)"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-sharpen"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Make image sharper (less powerful than Unsharp Mask)"
	.size	.L.str.9, 53

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This plug-in selectively performs a convolution filter on an image."
	.size	.L.str.10, 68

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Michael Sweet <mike@easysw.com>"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Copyright 1997-1998 by Michael Sweet"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1.4.2 - 3 June 1998"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Sharpen..."
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.16, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	sharpen_params,@object  # @sharpen_params
	.data
	.align	4
sharpen_params:
	.long	10                      # 0xa
	.size	sharpen_params, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"sharpen"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Sharpen"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-sharpen"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-cancel"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-ok"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"invalidated"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_Sharpness:"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"value-changed"
	.size	.L.str.26, 14

	.type	neg_lut,@object         # @neg_lut
	.local	neg_lut
	.comm	neg_lut,1024,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Programmer stupidity error: img_bpp is %d\n"
	.size	.L.str.27, 43

	.type	pos_lut,@object         # @pos_lut
	.local	pos_lut
	.comm	pos_lut,1024,16
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Sharpening"
	.size	.L.str.28, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
