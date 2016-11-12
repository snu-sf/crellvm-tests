	.text
	.file	"border-average.bc"
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r10
	movl	$1, %r11d
	movl	$5, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -28(%rbp)         # 4-byte Spill
	movl	%r11d, -32(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.20, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$72, %rsp
	popq	%rbx
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
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.21, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-92(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$borderaverage_data, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	borderaverage_data, %ecx
	movl	%ecx, borderaverage_thickness
	movl	borderaverage_data+4, %ecx
	movl	%ecx, borderaverage_bucket_exponent
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	borderaverage_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	$0, -56(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.12
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.13
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.14
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, borderaverage_thickness
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, borderaverage_bucket_exponent
.LBB1_10:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.24
	movabsq	$.L.str.12, %rdi
	movabsq	$borderaverage_data, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	borderaverage_data, %ecx
	movl	%ecx, borderaverage_thickness
	movl	borderaverage_data+4, %ecx
	movl	%ecx, borderaverage_bucket_exponent
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_22
# BB#14:                                # %if.then.27
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_20
# BB#15:                                # %if.then.30
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-88(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	borderaverage
	cmpl	$1, -92(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.34
	leaq	-88(%rbp), %rdi
	callq	gimp_context_set_foreground
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.36
	cmpl	$0, -92(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.38
	movabsq	$.L.str.12, %rdi
	movabsq	$borderaverage_data, %rax
	movl	$8, %edx
	movl	borderaverage_thickness, %ecx
	movl	%ecx, borderaverage_data
	movl	borderaverage_bucket_exponent, %ecx
	movl	%ecx, borderaverage_data+4
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.40
	jmp	.LBB1_21
.LBB1_20:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_21:                               # %if.end.41
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.42
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$3, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movl	$10, run.values+40
	movq	-88(%rbp), %rax
	movq	%rax, run.values+48
	movq	-80(%rbp), %rax
	movq	%rax, run.values+56
	movq	-72(%rbp), %rax
	movq	%rax, run.values+64
	movq	-64(%rbp), %rax
	movq	%rax, run.values+72
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$160, %rsp
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
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	borderaverage_dialog,@function
borderaverage_dialog:                   # @borderaverage_dialog
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
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp15:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	.Lborderaverage_dialog.labels+64(%rip), %rsi
	movq	%rsi, -128(%rbp)
	movaps	.Lborderaverage_dialog.labels+48(%rip), %xmm1
	movaps	%xmm1, -144(%rbp)
	movaps	.Lborderaverage_dialog.labels+32(%rip), %xmm1
	movaps	%xmm1, -160(%rbp)
	movaps	.Lborderaverage_dialog.labels+16(%rip), %xmm1
	movaps	%xmm1, -176(%rbp)
	movaps	.Lborderaverage_dialog.labels(%rip), %xmm1
	movaps	%xmm1, -192(%rbp)
	movl	$.L.str.33, %edi
                                        # kill: RDI<def> EDI<kill>
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	callq	gimp_ui_init
	movl	$.L.str.34, %eax
	movl	%eax, %edi
	callq	gettext
	movq	%rsp, %rdi
	movq	$0, 32(%rdi)
	movl	$-5, 24(%rdi)
	movq	$.L.str.37, 16(%rdi)
	movl	$-6, 8(%rdi)
	movq	$.L.str.36, (%rdi)
	movl	$.L.str.35, %ecx
	movl	%ecx, %esi
	movl	$gimp_standard_help_func, %ecx
	movl	%ecx, %r8d
	movl	$.L.str.12, %ecx
	movl	%ecx, %r9d
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movb	%cl, %r10b
	movq	%rax, %rdi
	movb	%r10b, %al
	movb	%r10b, -209(%rbp)       # 1-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %ecx
	movq	%rax, %rdi
	movb	-209(%rbp), %al         # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %ecx
	movl	$12, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%edx, -240(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-240(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	-236(%rbp), %edx        # 4-byte Reload
	movl	-236(%rbp), %ecx        # 4-byte Reload
	movl	-208(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$.L.str.38, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	-208(%rbp), %edx        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	-208(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %esi
	movl	-208(%rbp), %edi        # 4-byte Reload
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$.L.str.39, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	-208(%rbp), %edx        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	-208(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	-236(%rbp), %edi        # 4-byte Reload
	callq	gtk_size_group_new
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_size_group_add_widget
	movq	-96(%rbp), %rdi
	callq	g_object_unref
	movl	-12(%rbp), %edi
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	gimp_image_get_resolution
	movl	-12(%rbp), %edi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	%eax, -76(%rbp)
	movq	%rsp, %rdx
	movl	$1, 8(%rdx)
	movl	$4, (%rdx)
	movl	$.L.str.40, %ecx
	movl	%ecx, %edx
	movl	-236(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	movl	-236(%rbp), %ecx        # 4-byte Reload
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	-208(%rbp), %r9d        # 4-byte Reload
	callq	gimp_size_entry_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	-208(%rbp), %edx        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	-208(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-208(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_set_unit
	movq	-72(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-208(%rbp), %esi        # 4-byte Reload
	movl	-236(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-72(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-204(%rbp), %esi        # 4-byte Reload
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	borderaverage_thickness, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movabsq	$.L.str.41, %rsi
	movabsq	$thickness_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
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
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movl	$9, %edi
	leaq	-192(%rbp), %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	borderaverage_bucket_exponent, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdi
	movabsq	$borderaverage_bucket_exponent, %r11
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
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
	movq	-64(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-100(%rbp), %eax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	borderaverage_dialog, .Lfunc_end3-borderaverage_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	borderaverage,@function
borderaverage:                          # @borderaverage
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
	subq	$160, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$8, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	borderaverage_bucket_exponent, %r8d
	movl	%r8d, -64(%rbp)
	subl	-64(%rbp), %edx
	movl	%edx, -68(%rbp)
	imull	$3, -68(%rbp), %edx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	%rax, -112(%rbp)
	movl	-68(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movl	%edx, -60(%rbp)
	movl	$0, -84(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -88(%rbp)
.LBB4_3:                                # %for.cond.4
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_10
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	$0, -92(%rbp)
.LBB4_5:                                # %for.cond.8
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_8
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-84(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-88(%rbp), %edx
	movl	-68(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	addl	%edx, %eax
	addl	-92(%rbp), %eax
	movslq	%eax, %rsi
	movq	-80(%rbp), %rdi
	movl	$0, (%rdi,%rsi,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc.16
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %for.end.18
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc.19
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end.21
	leaq	-20(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-20(%rbp), %edi
	movl	%edi, -136(%rbp)
	movl	-28(%rbp), %edi
	movl	%edi, -128(%rbp)
	movl	-24(%rbp), %edi
	movl	%edi, -132(%rbp)
	movl	-32(%rbp), %edi
	movl	%edi, -124(%rbp)
	movl	-64(%rbp), %edi
	movl	%edi, -120(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edi
	movl	%edi, -36(%rbp)
	movl	-24(%rbp), %edi
	subl	-20(%rbp), %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%edi, -152(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-152(%rbp), %edi        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-156(%rbp), %r9d        # 4-byte Reload
	divl	%r9d
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	$1, %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterator_new
	movabsq	$borderaverage_func, %rsi
	leaq	-136(%rbp), %rcx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rcx, %rdx
	callq	gimp_rgn_iterator_src
	movq	-104(%rbp), %rdi
	callq	gimp_rgn_iterator_free
	movl	$0, -40(%rbp)
	movb	$0, -41(%rbp)
	movb	$0, -42(%rbp)
	movb	$0, -43(%rbp)
	movl	$0, -84(%rbp)
.LBB4_13:                               # %for.cond.38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_17 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_26
# BB#14:                                # %for.body.41
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$0, -88(%rbp)
.LBB4_15:                               # %for.cond.42
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_17 Depth 3
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_24
# BB#16:                                # %for.body.45
                                        #   in Loop: Header=BB4_15 Depth=2
	movl	$0, -92(%rbp)
.LBB4_17:                               # %for.cond.46
                                        #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_22
# BB#18:                                # %for.body.49
                                        #   in Loop: Header=BB4_17 Depth=3
	movl	-84(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-88(%rbp), %edx
	movl	-68(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	addl	%edx, %eax
	addl	-92(%rbp), %eax
	movslq	%eax, %rsi
	movq	-80(%rbp), %rdi
	movl	(%rdi,%rsi,4), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_20
# BB#19:                                # %if.then
                                        #   in Loop: Header=BB4_17 Depth=3
	movl	$1, %eax
	movl	-84(%rbp), %ecx
	movl	-68(%rbp), %edx
	shll	$1, %edx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-160(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-88(%rbp), %esi
	movl	-68(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	addl	-92(%rbp), %edx
	movslq	%edx, %rdi
	movq	-80(%rbp), %r8
	movl	(%r8,%rdi,4), %edx
	movl	%edx, -40(%rbp)
	movl	-84(%rbp), %edx
	movl	-64(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %esi
	shll	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	movl	-88(%rbp), %edx
	movl	-64(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %esi
	shll	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movb	%cl, -42(%rbp)
	movl	-92(%rbp), %edx
	movl	-64(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	addl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, -43(%rbp)
.LBB4_20:                               # %if.end
                                        #   in Loop: Header=BB4_17 Depth=3
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc.81
                                        #   in Loop: Header=BB4_17 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB4_17
.LBB4_22:                               # %for.end.83
                                        #   in Loop: Header=BB4_15 Depth=2
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc.84
                                        #   in Loop: Header=BB4_15 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB4_15
.LBB4_24:                               # %for.end.86
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               # %for.inc.87
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB4_13
.LBB4_26:                               # %for.end.89
	movl	$255, %r8d
	movq	-16(%rbp), %rdi
	movb	-41(%rbp), %al
	movb	-42(%rbp), %cl
	movzbl	%al, %esi
	movzbl	%cl, %edx
	movzbl	-43(%rbp), %ecx
	callq	gimp_rgba_set_uchar
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	borderaverage, .Lfunc_end4-borderaverage
	.cfi_endproc

	.align	16, 0x90
	.type	thickness_callback,@function
thickness_callback:                     # @thickness_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, borderaverage_thickness
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	thickness_callback, .Lfunc_end5-thickness_callback
	.cfi_endproc

	.align	16, 0x90
	.type	borderaverage_func,@function
borderaverage_func:                     # @borderaverage_func
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	(%rdx), %esi
	addl	borderaverage_thickness, %esi
	cmpl	%esi, %ecx
	jl	.LBB6_4
# BB#1:                                 # %lor.lhs.false
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	borderaverage_thickness, %edx
	cmpl	%edx, %eax
	jge	.LBB6_4
# BB#2:                                 # %lor.lhs.false.2
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %edx
	addl	borderaverage_thickness, %edx
	cmpl	%edx, %eax
	jl	.LBB6_4
# BB#3:                                 # %lor.lhs.false.5
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	borderaverage_thickness, %edx
	cmpl	%edx, %eax
	jl	.LBB6_5
.LBB6_4:                                # %if.then
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	callq	add_new_color
.LBB6_5:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	borderaverage_func, .Lfunc_end6-borderaverage_func
	.cfi_endproc

	.align	16, 0x90
	.type	add_new_color,@function
add_new_color:                          # @add_new_color
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
	movl	$8, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	subl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	-28(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
	cmpl	$1, -4(%rbp)
	jle	.LBB7_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	-28(%rbp), %edx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-40(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -30(%rbp)
	cmpl	$2, -4(%rbp)
	jle	.LBB7_5
# BB#4:                                 # %cond.true.9
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	-28(%rbp), %edx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-48(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.13
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_6
.LBB7_6:                                # %cond.end.14
	movl	-52(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -31(%rbp)
	movzbl	-29(%rbp), %eax
	movl	-36(%rbp), %edx
	shll	$1, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movzbl	-30(%rbp), %edx
	movl	-36(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	addl	%edx, %eax
	movzbl	-31(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rdi
	movl	(%rdi,%rsi,4), %eax
	addl	$1, %eax
	movl	%eax, (%rdi,%rsi,4)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	add_new_color, .Lfunc_end7-add_new_color
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args, 120

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
	.asciz	"thickness"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Border size to take in count"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bucket-exponent"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Bits for bucket size (default=4: 16 Levels)"
	.size	.L.str.9, 44

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.size	query.return_vals, 24

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"borderaverage"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The average color of the specified border."
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-borderaverage"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Set foreground to the average color of the image border"
	.size	.L.str.13, 56

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Philipp Klaus"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Internet Access AG"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1998"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Border Average..."
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"RGB*"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"<Image>/Colors/Info"
	.size	.L.str.20, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,120,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"UTF-8"
	.size	.L.str.22, 6

	.type	borderaverage_data,@object # @borderaverage_data
	.data
	.align	4
borderaverage_data:
	.long	3                       # 0x3
	.long	4                       # 0x4
	.size	borderaverage_data, 8

	.type	borderaverage_thickness,@object # @borderaverage_thickness
	.align	4
borderaverage_thickness:
	.long	3                       # 0x3
	.size	borderaverage_thickness, 4

	.type	borderaverage_bucket_exponent,@object # @borderaverage_bucket_exponent
	.align	4
borderaverage_bucket_exponent:
	.long	4                       # 0x4
	.size	borderaverage_bucket_exponent, 4

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"Border Average"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"1"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"2"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"4"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"8"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"16"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"32"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"64"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"128"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"256"
	.size	.L.str.32, 4

	.type	.Lborderaverage_dialog.labels,@object # @borderaverage_dialog.labels
	.section	.rodata,"a",@progbits
	.align	16
.Lborderaverage_dialog.labels:
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.size	.Lborderaverage_dialog.labels, 72

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"border-average"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Borderaverage"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-border-average"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-cancel"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-ok"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Border Size"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Thickness:"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%a"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"value-changed"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Number of Colors"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Bucket size:"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"changed"
	.size	.L.str.44, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
