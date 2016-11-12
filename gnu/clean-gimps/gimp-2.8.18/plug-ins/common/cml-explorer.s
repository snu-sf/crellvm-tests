	.text
	.file	"cml-explorer.bc"
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
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %esi
	movl	%esi, drawable_id
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
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_17
.LBB1_17:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_18
.LBB1_18:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_10
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$CML_explorer_vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	CML_explorer_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_16
.LBB1_5:                                # %if.end
	jmp	.LBB1_10
.LBB1_6:                                # %sw.bb.8
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	CML_load_parameter_file
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.13
	jmp	.LBB1_16
.LBB1_8:                                # %if.end.14
	jmp	.LBB1_10
.LBB1_9:                                # %sw.bb.15
	movabsq	$.L.str.8, %rdi
	movabsq	$CML_explorer_vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_10:                               # %sw.epilog
	movl	$32, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%edi, %edi
	callq	CML_main_function
	movl	%eax, -44(%rbp)
	cmpl	$1, -48(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.18
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_12:                               # %if.end.20
	cmpl	$0, -48(%rbp)
	jne	.LBB1_15
# BB#13:                                # %land.lhs.true
	cmpl	$3, -44(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.23
	movabsq	$.L.str.8, %rdi
	movabsq	$CML_explorer_vals, %rax
	movl	$584, %edx              # imm = 0x248
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.25
	movq	mem_chank0, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	mem_chank1, %rdi
	callq	g_free
	movq	mem_chank2, %rdi
	callq	g_free
	movl	$21, run.values
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8
.LBB1_16:                               # %return
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4751297606873776128     # double 4294967295
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4621819117588971520     # double 10
.LCPI3_4:
	.quad	4636737291354636288     # double 100
.LCPI3_5:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	CML_explorer_dialog,@function
CML_explorer_dialog:                    # @CML_explorer_dialog
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
	subq	$1288, %rsp             # imm = 0x508
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.19, %rdi
	movl	$1, %esi
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
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -220(%rbp)        # 4-byte Spill
	movl	%r10d, -224(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	movl	$1, CML_preview_defer
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
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
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -288(%rbp)       # 4-byte Spill
	movss	-288(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -292(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-292(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-292(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$64, %esi
	movl	$220, %edx
	movq	%rax, preview
	movq	preview, %rdi
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	preview, %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_button_box_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_preview_update_callback, %rax
	movabsq	$CML_explorer_vals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movq	-80(%rbp), %rcx
	movq	%rcx, random_sensitives
	movl	$1, random_sensitives+8
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_set_or_randomize_seed_callback, %rax
	movabsq	$CML_explorer_vals, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	-80(%rbp), %rcx
	movq	%rcx, random_sensitives+16
	movl	$1, random_sensitives+24
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_set_or_randomize_seed_callback, %rax
	movabsq	$CML_explorer_vals, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movl	$1, %edi
	movq	-80(%rbp), %rcx
	movq	%rcx, random_sensitives+32
	movl	$0, random_sensitives+40
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_button_box_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_load_from_file_callback, %rax
	movabsq	$CML_explorer_vals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_save_to_file_callback, %rax
	movabsq	$CML_explorer_vals, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-40(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$CML_explorer_vals, %rdi
	xorl	%esi, %esi
	callq	CML_dialog_channel_panel_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	-104(%rbp), %rsi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movabsq	$CML_explorer_vals, %rdx
	addq	$104, %rdx
	movl	$1, %esi
	movq	%rdx, %rdi
	movl	%eax, -500(%rbp)        # 4-byte Spill
	callq	CML_dialog_channel_panel_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	-104(%rbp), %rsi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movabsq	$CML_explorer_vals, %rdx
	addq	$208, %rdx
	movl	$2, %esi
	movq	%rdx, %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	CML_dialog_channel_panel_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	-104(%rbp), %rsi
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	CML_dialog_advanced_panel_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	-104(%rbp), %rsi
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	$1, %edi
	movl	%eax, -596(%rbp)        # 4-byte Spill
	callq	gtk_size_group_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -112(%rbp)
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-120(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-144(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$10, %edi
	movabsq	$initial_value_names, %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	CML_explorer_vals+312, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$CML_initial_value_menu_update, %rdi
	movabsq	$CML_explorer_vals, %r11
	addq	$312, %r11              # imm = 0x138
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %r14
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-664(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$widget_pointers, %rcx
	addq	$1080, %rcx             # imm = 0x438
	movabsq	$CML_explorer_vals, %rdx
	addq	$312, %rdx              # imm = 0x138
	movq	-136(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	CML_explorer_menu_entry_init
	movq	-120(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r10d
	movq	-136(%rbp), %r8
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-120(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$130, %r8d
	movl	$3, %r9d
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	CML_explorer_vals+316, %xmm3
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-728(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -736(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-736(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-736(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -160(%rbp)
	movq	-112(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$widget_pointers, %rax
	addq	$1104, %rax             # imm = 0x450
	movabsq	$CML_explorer_vals, %rcx
	addq	$316, %rcx              # imm = 0x13C
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	CML_explorer_int_entry_init
	movq	-120(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$130, %r8d
	movl	$3, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	CML_explorer_vals+320, %xmm1
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-776(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-776(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-776(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -780(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -160(%rbp)
	movq	-112(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$widget_pointers, %rax
	addq	$1128, %rax             # imm = 0x468
	movabsq	$CML_explorer_vals, %rcx
	addq	$320, %rcx              # imm = 0x140
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	CML_explorer_int_entry_init
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-120(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-144(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$130, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	CML_explorer_vals+324, %xmm1
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -848(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -852(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -856(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-856(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -864(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-864(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-864(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-864(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -160(%rbp)
	movq	-112(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$widget_pointers, %rax
	addq	$1152, %rax             # imm = 0x480
	movabsq	$CML_explorer_vals, %rcx
	addq	$324, %rcx              # imm = 0x144
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	CML_explorer_int_entry_init
	movabsq	$.L.str.42, %rdi
	movq	-120(%rbp), %rax
	movq	%rax, random_sensitives+48
	movl	$0, random_sensitives+56
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_set_or_randomize_seed_callback, %rax
	movabsq	$CML_explorer_vals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-888(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rdi
	movq	-80(%rbp), %rcx
	movq	%rcx, random_sensitives+64
	movl	$1, random_sensitives+72
	movq	-80(%rbp), %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	-152(%rbp), %rsi
	movq	%rsi, -920(%rbp)        # 8-byte Spill
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	-920(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	$1, %edi
	movl	%eax, -932(%rbp)        # 4-byte Spill
	callq	gtk_size_group_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -168(%rbp)
	callq	gtk_box_new
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-208(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -184(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-176(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-184(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movabsq	$channel_names, %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	copy_source, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdi
	movabsq	$copy_source, %r11
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-200(%rbp), %r14
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-992(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movl	%eax, -996(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-176(%rbp), %rcx
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r10d
	movq	-200(%rbp), %r8
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$3, %edi
	movabsq	$channel_names, %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	copy_destination, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rcx
	movabsq	$copy_destination, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-200(%rbp), %r11
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	callq	g_signal_connect_data
	movq	-176(%rbp), %rcx
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-200(%rbp), %r8
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$3, %r10d
	movl	$6, %ebx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -1084(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$CML_copy_parameters_callback, %rax
	movabsq	$CML_explorer_vals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rdi
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -184(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-176(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-184(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %edi
	movabsq	$load_channel_names, %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selective_load_source, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdi
	movabsq	$selective_load_source, %r11
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-200(%rbp), %r14
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%r14, %rdi
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	movq	%r11, %rcx
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	callq	g_signal_connect_data
	movq	-176(%rbp), %rcx
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r10d
	movq	-200(%rbp), %r8
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movl	$4, %edi
	movabsq	$load_channel_names, %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selective_load_destination, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rcx
	movabsq	$selective_load_destination, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-200(%rbp), %r11
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	callq	g_signal_connect_data
	movq	-176(%rbp), %rcx
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-200(%rbp), %r8
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-96(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	-208(%rbp), %rsi
	movq	%rsi, -1248(%rbp)       # 8-byte Spill
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	callq	CML_initial_value_sensitives_update
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$256, %esi              # imm = 0x100
	callq	cairo_format_stride_for_width
	movl	%eax, img_stride
	movl	img_stride, %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movl	$1, %esi
	movl	$256, %r9d              # imm = 0x100
	movq	%rax, img
	movq	img, %rdi
	movl	img_stride, %r8d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	cairo_image_surface_create_for_data
	movq	%rax, buffer
	movl	$0, CML_preview_defer
	callq	preview_update
	movq	-32(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	img, %rdi
	callq	g_free
	movq	buffer, %rdi
	callq	cairo_surface_destroy
	movl	-84(%rbp), %eax
	addq	$1288, %rsp             # imm = 0x508
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CML_explorer_dialog, .Lfunc_end3-CML_explorer_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4607092346807469998     # double 0.98999999999999999
	.text
	.align	16, 0x90
	.type	CML_load_parameter_file,@function
CML_load_parameter_file:                # @CML_load_parameter_file
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
	subq	$1568, %rsp             # imm = 0x620
	movabsq	$.L.str.159, %rax
	movabsq	$.LCML_load_parameter_file.old2new_function_id, %rcx
	movl	$40, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-416(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	$0, -356(%rbp)
	movl	$1, -360(%rbp)
	movl	$0, -364(%rbp)
	movl	$0, -368(%rbp)
	movq	%r8, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-1464(%rbp), %rsi       # 8-byte Reload
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.160, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	-1480(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_53
.LBB4_2:                                # %if.else
	leaq	-40(%rbp), %rsi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1448(%rbp)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -1448(%rbp)
	movsd	-1448(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB4_4
	jp	.LBB4_4
# BB#3:                                 # %if.then.6
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1448(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else.7
	cmpl	$0, -40(%rbp)
	jne	.LBB4_8
# BB#5:                                 # %if.then.9
	leaq	-40(%rbp), %rsi
	movl	$1, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	movsd	%xmm0, -1448(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.12
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-1440(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	movq	%rax, -1488(%rbp)       # 8-byte Spill
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.14
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.15
	xorps	%xmm0, %xmm0
	movsd	-1448(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_13
	jp	.LBB4_13
# BB#10:                                # %if.then.17
	cmpl	$0, -20(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.19
	movabsq	$.L.str.161, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	%eax, -1492(%rbp)       # 4-byte Spill
.LBB4_12:                               # %if.end.22
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -1496(%rbp)       # 4-byte Spill
	jmp	.LBB4_53
.LBB4_13:                               # %if.end.24
	cmpl	$0, -20(%rbp)
	je	.LBB4_19
# BB#14:                                # %if.then.26
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-1448(%rbp), %xmm0
	jbe	.LBB4_16
# BB#15:                                # %if.then.28
	movabsq	$.L.str.162, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB4_16:                               # %if.end.31
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-1448(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_18
# BB#17:                                # %if.then.33
	movabsq	$.L.str.163, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB4_18:                               # %if.end.36
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.37
	movl	$0, -36(%rbp)
.LBB4_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -40(%rbp)
	movb	%cl, -1513(%rbp)        # 1-byte Spill
	je	.LBB4_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB4_20 Depth=1
	cmpl	$3, -36(%rbp)
	setl	%al
	movb	%al, -1513(%rbp)        # 1-byte Spill
.LBB4_22:                               # %land.end
                                        #   in Loop: Header=BB4_20 Depth=1
	movb	-1513(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_23
	jmp	.LBB4_35
.LBB4_23:                               # %for.body
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-1440(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB4_25
# BB#24:                                # %if.then.43
	movl	$0, -40(%rbp)
	jmp	.LBB4_35
.LBB4_25:                               # %if.end.44
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-352(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, (%rsi)
	ucomisd	-1448(%rbp), %xmm0
	jbe	.LBB4_27
# BB#26:                                # %if.then.47
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-352(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movslq	(%rdx), %rcx
	movl	-416(%rbp,%rcx,4), %esi
	movslq	-36(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	%esi, (%rax)
.LBB4_27:                               # %if.end.56
                                        #   in Loop: Header=BB4_20 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-1448(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_29
# BB#28:                                # %if.then.58
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-352(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 4(%rsi)
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.62
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-352(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$0, 4(%rax)
.LBB4_30:                               # %if.end.66
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rdi
	movl	%eax, 8(%rdi)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movl	%eax, 12(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	%xmm0, 24(%rcx)
	movsd	-1448(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_32
# BB#31:                                # %if.then.80
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-352(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 32(%rsi)
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.84
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-352(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$2, 32(%rax)
.LBB4_33:                               # %if.end.88
                                        #   in Loop: Header=BB4_20 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$104, %rax, %rax
	addq	%rax, %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rdi
	movl	%eax, 48(%rdi)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 56(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 64(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 72(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 80(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-40(%rbp), %rsi
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, 88(%rcx)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gdouble
	leaq	-352(%rbp), %rcx
	movslq	-36(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	%xmm0, 96(%rcx)
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_20
.LBB4_35:                               # %for.end
	cmpl	$0, -40(%rbp)
	je	.LBB4_42
# BB#36:                                # %if.then.114
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-1440(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB4_38
# BB#37:                                # %if.then.118
	movl	$1, -1452(%rbp)
	jmp	.LBB4_39
.LBB4_38:                               # %if.else.119
	leaq	-1452(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-1452(%rbp), %rsi
	movl	%eax, -356(%rbp)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-1452(%rbp), %rsi
	movl	%eax, -360(%rbp)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	leaq	-1452(%rbp), %rsi
	movl	%eax, -364(%rbp)
	movq	-32(%rbp), %rdi
	callq	parse_line_to_gint
	movl	%eax, -368(%rbp)
.LBB4_39:                               # %if.end.124
	cmpl	$0, -1452(%rbp)
	jne	.LBB4_41
# BB#40:                                # %if.then.126
	movl	$0, -356(%rbp)
	movl	$1, -360(%rbp)
	movl	$0, -364(%rbp)
	movl	$0, -368(%rbp)
.LBB4_41:                               # %if.end.127
	jmp	.LBB4_42
.LBB4_42:                               # %if.end.128
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -1520(%rbp)       # 4-byte Spill
# BB#43:                                # %if.end.130
	cmpl	$0, -40(%rbp)
	jne	.LBB4_47
# BB#44:                                # %if.then.132
	cmpl	$0, -20(%rbp)
	je	.LBB4_46
# BB#45:                                # %if.then.134
	movabsq	$.L.str.164, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	%eax, -1524(%rbp)       # 4-byte Spill
.LBB4_46:                               # %if.end.137
	jmp	.LBB4_52
.LBB4_47:                               # %if.else.138
	cmpl	$0, selective_load_source
	je	.LBB4_49
# BB#48:                                # %lor.lhs.false
	cmpl	$0, selective_load_destination
	jne	.LBB4_50
.LBB4_49:                               # %if.then.141
	movabsq	$CML_explorer_vals, %rax
	movq	%rax, %rcx
	addq	$208, %rcx
	movl	$104, %edx
	movl	%edx, %esi
	leaq	-352(%rbp), %rdi
	movq	%rax, %r8
	addq	$104, %r8
	movq	%rdi, %r9
	movq	%rdi, -1536(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1544(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movq	-1544(%rbp), %rdx       # 8-byte Reload
	movq	%r8, -1552(%rbp)        # 8-byte Spill
	movq	%rcx, -1560(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1536(%rbp), %rax       # 8-byte Reload
	addq	$104, %rax
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-1544(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movq	-1536(%rbp), %rax       # 8-byte Reload
	addq	$208, %rax
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-1544(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movl	-356(%rbp), %r10d
	movl	%r10d, CML_explorer_vals+312
	movl	-360(%rbp), %r10d
	movl	%r10d, CML_explorer_vals+316
	movl	-364(%rbp), %r10d
	movl	%r10d, CML_explorer_vals+320
	movl	-368(%rbp), %r10d
	movl	%r10d, CML_explorer_vals+324
	jmp	.LBB4_51
.LBB4_50:                               # %if.else.145
	movl	$104, %eax
	movl	%eax, %edx
	leaq	-352(%rbp), %rcx
	movabsq	$CML_explorer_vals, %rsi
	movl	selective_load_destination, %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	movl	selective_load_source, %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB4_51:                               # %if.end.149
	movabsq	$CML_explorer_vals, %rax
	addq	$328, %rax              # imm = 0x148
	movl	$255, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strncpy
	movq	%rax, -1568(%rbp)       # 8-byte Spill
.LBB4_52:                               # %if.end.151
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_53:                               # %return
	movl	-4(%rbp), %eax
	addq	$1568, %rsp             # imm = 0x620
	popq	%rbp
	retq
.Lfunc_end4:
	.size	CML_load_parameter_file, .Lfunc_end4-CML_load_parameter_file
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4643176031446892544     # double 255
.LCPI5_2:
	.quad	4643140847074803712     # double 254
.LCPI5_3:
	.quad	4611686018427387904     # double 2
.LCPI5_4:
	.quad	4643211215818981376     # double 256
.LCPI5_5:
	.quad	4621819117588971520     # double 10
.LCPI5_6:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	CML_main_function,@function
CML_main_function:                      # @CML_main_function
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
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
.Ltmp26:
	.cfi_offset %rbx, -24
	movl	%edi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -184(%rbp)
	movl	$1, -188(%rbp)
	movl	drawable_id, %edi
	callq	gimp_drawable_get
	leaq	-140(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rax, -24(%rbp)
	movl	drawable_id, %edi
	callq	gimp_drawable_mask_bounds
	movl	drawable_id, %edi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	%eax, -164(%rbp)
	movl	%eax, -172(%rbp)
	movl	drawable_id, %edi
	callq	gimp_drawable_is_gray
	xorl	%edi, %edi
	movl	$1, %r9d
	movl	$3, %r10d
	movl	%eax, -168(%rbp)
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	cmovnel	%r9d, %r10d
	cmpl	$0, -172(%rbp)
	cmovnel	%r9d, %edi
	addl	%edi, %r10d
	movl	%r10d, -216(%rbp)
	movl	%r10d, -208(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB5_6
# BB#1:                                 # %if.then
	movl	$64, %eax
	movl	$0, -164(%rbp)
	movl	$3, -216(%rbp)
	movl	-144(%rbp), %ecx
	subl	-140(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_3
# BB#2:                                 # %if.then.7
	movl	-140(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -144(%rbp)
.LBB5_3:                                # %if.end
	movl	$220, %eax
	movl	-152(%rbp), %ecx
	subl	-148(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_5
# BB#4:                                 # %if.then.11
	movl	-148(%rbp), %eax
	addl	$220, %eax
	movl	%eax, -152(%rbp)
.LBB5_5:                                # %if.end.13
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.14
	movl	-144(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	-152(%rbp), %eax
	subl	-148(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	imull	-216(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-196(%rbp), %eax
	imull	-208(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-196(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	CML_explorer_vals+316
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	movl	-200(%rbp), %eax
	imull	-196(%rbp), %eax
	movl	%eax, -180(%rbp)
	cmpl	$1, -180(%rbp)
	jge	.LBB5_8
# BB#7:                                 # %if.then.22
	movl	$0, -12(%rbp)
	jmp	.LBB5_144
.LBB5_8:                                # %if.end.23
	movl	CML_explorer_vals+316, %eax
	movl	%eax, -188(%rbp)
	movslq	mem_chank0_size, %rcx
	imull	$9, -192(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB5_10
# BB#9:                                 # %if.then.29
	movq	mem_chank0, %rax
	movq	%rax, %rdi
	callq	g_free
	imull	$9, -192(%rbp), %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, mem_chank0_size
	movslq	mem_chank0_size, %rdi
	callq	g_malloc
	movq	%rax, mem_chank0
.LBB5_10:                               # %if.end.36
	movq	mem_chank0, %rax
	movq	%rax, -232(%rbp)
	movq	mem_chank0, %rax
	movslq	-192(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movq	mem_chank0, %rax
	movl	-192(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movq	mem_chank0, %rax
	imull	$3, -192(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movq	mem_chank0, %rax
	movl	-192(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	mem_chank0, %rax
	imull	$5, -192(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	mem_chank0, %rax
	imull	$6, -192(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)
	movq	mem_chank0, %rax
	imull	$7, -192(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	mem_chank0, %rax
	movl	-192(%rbp), %edx
	shll	$3, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movl	mem_chank1_size, %edx
	movl	-212(%rbp), %esi
	imull	-188(%rbp), %esi
	cmpl	%esi, %edx
	jge	.LBB5_12
# BB#11:                                # %if.then.61
	movq	mem_chank1, %rdi
	callq	g_free
	movl	-212(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, mem_chank1_size
	movslq	mem_chank1_size, %rdi
	callq	g_malloc
	movq	%rax, mem_chank1
.LBB5_12:                               # %if.end.65
	movq	mem_chank1, %rax
	movq	%rax, -136(%rbp)
	movl	mem_chank2_size, %ecx
	movl	-220(%rbp), %edx
	imull	-188(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB5_14
# BB#13:                                # %if.then.69
	movq	mem_chank2, %rdi
	callq	g_free
	movl	-220(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, mem_chank2_size
	movslq	mem_chank2_size, %rdi
	callq	g_malloc
	movq	%rax, mem_chank2
.LBB5_14:                               # %if.end.73
	movq	mem_chank2, %rax
	movq	%rax, -128(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.75
	leaq	-72(%rbp), %rdi
	movl	$1, %eax
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB5_16:                               # %if.end.76
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -384(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	callq	g_rand_new
	movq	%rax, gr
	cmpl	$8, CML_explorer_vals+312
	jne	.LBB5_18
# BB#17:                                # %if.then.80
	movq	gr, %rdi
	movl	CML_explorer_vals+324, %esi
	callq	g_rand_set_seed
.LBB5_18:                               # %if.end.81
	movl	$0, -204(%rbp)
.LBB5_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-204(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB5_59
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	CML_explorer_vals+8(%rip), %eax
	addl	$-3, %eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movl	%eax, -396(%rbp)        # 4-byte Spill
	ja	.LBB5_29
# BB#145:                               # %for.body
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_21:                               # %sw.bb
                                        #   in Loop: Header=BB5_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-204(%rbp), %rdi
	movq	-280(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_30
.LBB5_22:                               # %sw.bb.85
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	$511, %eax              # imm = 0x1FF
	movl	-204(%rbp), %ecx
	movl	%eax, -400(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-400(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$255, %edx
	movl	%edx, %edi
	callq	abs
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-204(%rbp), %rsi
	movq	-280(%rbp), %r8
	movsd	%xmm1, (%r8,%rsi,8)
	jmp	.LBB5_30
.LBB5_23:                               # %sw.bb.92
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rdi
	movq	-280(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_30
.LBB5_24:                               # %sw.bb.96
                                        #   in Loop: Header=BB5_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-204(%rbp), %rdi
	movq	-280(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_30
.LBB5_25:                               # %sw.bb.100
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-204(%rbp), %eax
	movl	CML_explorer_vals+32, %ecx
	shll	$1, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	jmp	.LBB5_28
.LBB5_27:                               # %cond.false
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	CML_explorer_vals+56, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
.LBB5_28:                               # %cond.end
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-204(%rbp), %rax
	movq	-280(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB5_30
.LBB5_29:                               # %sw.default
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	CML_explorer_vals+56, %xmm0 # xmm0 = mem[0],zero
	movslq	-204(%rbp), %rax
	movq	-280(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB5_30:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	CML_explorer_vals+112(%rip), %eax
	addl	$-3, %eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movl	%eax, -420(%rbp)        # 4-byte Spill
	ja	.LBB5_39
# BB#146:                               # %sw.epilog
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_31:                               # %sw.bb.111
                                        #   in Loop: Header=BB5_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-204(%rbp), %rdi
	movq	-288(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_40
.LBB5_32:                               # %sw.bb.115
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	$511, %eax              # imm = 0x1FF
	movl	-204(%rbp), %ecx
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-424(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$255, %edx
	movl	%edx, %edi
	callq	abs
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-204(%rbp), %rsi
	movq	-288(%rbp), %r8
	movsd	%xmm1, (%r8,%rsi,8)
	jmp	.LBB5_40
.LBB5_33:                               # %sw.bb.123
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rdi
	movq	-288(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_40
.LBB5_34:                               # %sw.bb.127
                                        #   in Loop: Header=BB5_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-204(%rbp), %rdi
	movq	-288(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_40
.LBB5_35:                               # %sw.bb.131
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-204(%rbp), %eax
	movl	CML_explorer_vals+136, %ecx
	shll	$1, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_37
# BB#36:                                # %cond.true.136
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	jmp	.LBB5_38
.LBB5_37:                               # %cond.false.138
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	CML_explorer_vals+160, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
.LBB5_38:                               # %cond.end.139
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-204(%rbp), %rax
	movq	-288(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB5_40
.LBB5_39:                               # %sw.default.143
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	CML_explorer_vals+160, %xmm0 # xmm0 = mem[0],zero
	movslq	-204(%rbp), %rax
	movq	-288(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB5_40:                               # %sw.epilog.146
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	CML_explorer_vals+216(%rip), %eax
	addl	$-3, %eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movl	%eax, -444(%rbp)        # 4-byte Spill
	ja	.LBB5_49
# BB#147:                               # %sw.epilog.146
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_41:                               # %sw.bb.147
                                        #   in Loop: Header=BB5_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-204(%rbp), %rdi
	movq	-296(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_50
.LBB5_42:                               # %sw.bb.151
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	$511, %eax              # imm = 0x1FF
	movl	-204(%rbp), %ecx
	movl	%eax, -448(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-448(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$255, %edx
	movl	%edx, %edi
	callq	abs
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-204(%rbp), %rsi
	movq	-296(%rbp), %r8
	movsd	%xmm1, (%r8,%rsi,8)
	jmp	.LBB5_50
.LBB5_43:                               # %sw.bb.159
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rdi
	movq	-296(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_50
.LBB5_44:                               # %sw.bb.163
                                        #   in Loop: Header=BB5_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-204(%rbp), %rdi
	movq	-296(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	jmp	.LBB5_50
.LBB5_45:                               # %sw.bb.167
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-204(%rbp), %eax
	movl	CML_explorer_vals+240, %ecx
	shll	$1, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_47
# BB#46:                                # %cond.true.172
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	jmp	.LBB5_48
.LBB5_47:                               # %cond.false.174
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	CML_explorer_vals+264, %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
.LBB5_48:                               # %cond.end.175
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	-456(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-204(%rbp), %rax
	movq	-296(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB5_50
.LBB5_49:                               # %sw.default.179
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	CML_explorer_vals+264, %xmm0 # xmm0 = mem[0],zero
	movslq	-204(%rbp), %rax
	movq	-296(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB5_50:                               # %sw.epilog.182
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	CML_explorer_vals+312(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$9, %rdx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	ja	.LBB5_57
# BB#148:                               # %sw.epilog.182
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_3(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_51:                               # %sw.bb.183
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	.LCPI5_6, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	CML_explorer_vals+312, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-204(%rbp), %rax
	movq	-248(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-204(%rbp), %rax
	movq	-240(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-204(%rbp), %rax
	movq	-232(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB5_57
.LBB5_52:                               # %sw.bb.192
                                        #   in Loop: Header=BB5_19 Depth=1
	jmp	.LBB5_57
.LBB5_53:                               # %sw.bb.193
                                        #   in Loop: Header=BB5_19 Depth=1
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	movl	$256, %eax              # imm = 0x100
	movl	-204(%rbp), %ecx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-476(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-204(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movsd	%xmm1, (%rdi,%rsi,8)
	movslq	-204(%rbp), %rsi
	movq	-240(%rbp), %rdi
	movsd	%xmm1, (%rdi,%rsi,8)
	movslq	-204(%rbp), %rsi
	movq	-232(%rbp), %rdi
	movsd	%xmm1, (%rdi,%rsi,8)
	jmp	.LBB5_57
.LBB5_54:                               # %sw.bb.203
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	$511, %eax              # imm = 0x1FF
	movl	-204(%rbp), %ecx
	movl	%eax, -480(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-480(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$255, %edx
	movl	%edx, %edi
	callq	abs
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-204(%rbp), %rsi
	movq	-248(%rbp), %r8
	movsd	%xmm1, (%r8,%rsi,8)
	movslq	-204(%rbp), %rsi
	movq	-240(%rbp), %r8
	movsd	%xmm1, (%r8,%rsi,8)
	movslq	-204(%rbp), %rsi
	movq	-232(%rbp), %r8
	movsd	%xmm1, (%r8,%rsi,8)
	jmp	.LBB5_57
.LBB5_55:                               # %sw.bb.215
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rdi
	movq	-232(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rax
	movq	-240(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rax
	movq	-248(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
	jmp	.LBB5_57
.LBB5_56:                               # %sw.bb.225
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	gr, %rdi
	callq	g_rand_double
	movslq	-204(%rbp), %rdi
	movq	-248(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	movslq	-204(%rbp), %rax
	movq	-240(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
	movslq	-204(%rbp), %rax
	movq	-232(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
.LBB5_57:                               # %sw.epilog.233
                                        #   in Loop: Header=BB5_19 Depth=1
	jmp	.LBB5_58
.LBB5_58:                               # %for.inc
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB5_19
.LBB5_59:                               # %for.end
	cmpl	$3, CML_explorer_vals+312
	jne	.LBB5_72
# BB#60:                                # %if.then.236
	movl	$0, -300(%rbp)
.LBB5_61:                               # %for.cond.238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_66 Depth 2
	movl	-300(%rbp), %eax
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %edx
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	CML_explorer_vals+316
	cmpl	%eax, %ecx
	jge	.LBB5_63
# BB#62:                                # %cond.true.242
                                        #   in Loop: Header=BB5_61 Depth=1
	movl	-192(%rbp), %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB5_64
.LBB5_63:                               # %cond.false.243
                                        #   in Loop: Header=BB5_61 Depth=1
	movl	-196(%rbp), %eax
	cltd
	idivl	CML_explorer_vals+316
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB5_64:                               # %cond.end.245
                                        #   in Loop: Header=BB5_61 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	-484(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_71
# BB#65:                                # %for.body.249
                                        #   in Loop: Header=BB5_61 Depth=1
	leaq	-120(%rbp), %rdi
	leaq	-304(%rbp), %rsi
	movl	-140(%rbp), %eax
	movl	-300(%rbp), %ecx
	imull	CML_explorer_vals+316, %ecx
	addl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_pixel
	movl	$0, -320(%rbp)
.LBB5_66:                               # %for.cond.252
                                        #   Parent Loop BB5_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -320(%rbp)
	jge	.LBB5_69
# BB#67:                                # %for.body.255
                                        #   in Loop: Header=BB5_66 Depth=2
	movslq	-320(%rbp), %rax
	movzbl	-304(%rbp,%rax), %ecx
	movslq	-320(%rbp), %rax
	movl	%ecx, -316(%rbp,%rax,4)
# BB#68:                                # %for.inc.261
                                        #   in Loop: Header=BB5_66 Depth=2
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB5_66
.LBB5_69:                               # %for.end.263
                                        #   in Loop: Header=BB5_61 Depth=1
	leaq	-316(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgb_to_hsv_int
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-316(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-300(%rbp), %rax
	movq	-232(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	cvtsi2sdl	-312(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-300(%rbp), %rax
	movq	-240(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	cvtsi2sdl	-308(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-300(%rbp), %rax
	movq	-248(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
# BB#70:                                # %for.inc.284
                                        #   in Loop: Header=BB5_61 Depth=1
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB5_61
.LBB5_71:                               # %for.end.286
	jmp	.LBB5_72
.LBB5_72:                               # %if.end.287
	cmpl	$0, -16(%rbp)
	jne	.LBB5_74
# BB#73:                                # %if.then.289
	movabsq	$.L.str.165, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB5_74:                               # %if.end.292
	movl	$0, -204(%rbp)
.LBB5_75:                               # %for.cond.293
                                        # =>This Inner Loop Header: Depth=1
	movl	-204(%rbp), %eax
	cmpl	CML_explorer_vals+320, %eax
	jge	.LBB5_78
# BB#76:                                # %for.body.296
                                        #   in Loop: Header=BB5_75 Depth=1
	leaq	-232(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-248(%rbp), %rcx
	leaq	-256(%rbp), %r8
	leaq	-264(%rbp), %r9
	leaq	-272(%rbp), %rax
	leaq	-280(%rbp), %rdi
	leaq	-288(%rbp), %r10
	leaq	-296(%rbp), %r11
	movl	-192(%rbp), %ebx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movq	%rax, (%rsp)
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	CML_compute_next_step
# BB#77:                                # %for.inc.297
                                        #   in Loop: Header=BB5_75 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB5_75
.LBB5_78:                               # %for.end.299
	movl	$0, -160(%rbp)
.LBB5_79:                               # %for.cond.300
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_87 Depth 2
                                        #       Child Loop BB5_91 Depth 3
                                        #         Child Loop BB5_95 Depth 4
                                        #           Child Loop BB5_102 Depth 5
	movl	-160(%rbp), %eax
	cmpl	-200(%rbp), %eax
	jge	.LBB5_140
# BB#80:                                # %for.body.303
                                        #   in Loop: Header=BB5_79 Depth=1
	movl	-200(%rbp), %eax
	movl	-160(%rbp), %ecx
	addl	-188(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_82
# BB#81:                                # %if.then.307
                                        #   in Loop: Header=BB5_79 Depth=1
	movl	-200(%rbp), %eax
	subl	-160(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB5_82:                               # %if.end.309
                                        #   in Loop: Header=BB5_79 Depth=1
	cmpl	$0, CML_explorer_vals
	je	.LBB5_85
# BB#83:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_79 Depth=1
	cmpl	$0, CML_explorer_vals+104
	je	.LBB5_85
# BB#84:                                # %lor.lhs.false.314
                                        #   in Loop: Header=BB5_79 Depth=1
	cmpl	$0, CML_explorer_vals+208
	jne	.LBB5_86
.LBB5_85:                               # %if.then.317
                                        #   in Loop: Header=BB5_79 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	-196(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
.LBB5_86:                               # %if.end.319
                                        #   in Loop: Header=BB5_79 Depth=1
	leaq	-232(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-248(%rbp), %rcx
	leaq	-256(%rbp), %r8
	leaq	-264(%rbp), %r9
	leaq	-272(%rbp), %rax
	leaq	-280(%rbp), %rdi
	leaq	-288(%rbp), %r10
	leaq	-296(%rbp), %r11
	movl	-192(%rbp), %ebx
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movq	%rax, (%rsp)
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	CML_compute_next_step
	movl	$0, -156(%rbp)
.LBB5_87:                               # %for.cond.320
                                        #   Parent Loop BB5_79 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_91 Depth 3
                                        #         Child Loop BB5_95 Depth 4
                                        #           Child Loop BB5_102 Depth 5
	movl	-156(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB5_135
# BB#88:                                # %for.body.323
                                        #   in Loop: Header=BB5_87 Depth=2
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movsd	CML_explorer_vals+80, %xmm2 # xmm2 = mem[0],zero
	subsd	CML_explorer_vals+72, %xmm2
	movslq	-156(%rbp), %rax
	movq	-232(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm2
	addsd	CML_explorer_vals+72, %xmm2
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -324(%rbp)
	movl	%edx, -336(%rbp)
	movsd	CML_explorer_vals+184, %xmm1 # xmm1 = mem[0],zero
	subsd	CML_explorer_vals+176, %xmm1
	movslq	-156(%rbp), %rax
	movq	-240(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm1
	addsd	CML_explorer_vals+176, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, -328(%rbp)
	movl	%edx, -340(%rbp)
	movsd	CML_explorer_vals+288, %xmm1 # xmm1 = mem[0],zero
	subsd	CML_explorer_vals+280, %xmm1
	movslq	-156(%rbp), %rax
	movq	-248(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm1
	addsd	CML_explorer_vals+280, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -332(%rbp)
	movl	%edx, -344(%rbp)
	cmpl	$0, -168(%rbp)
	jne	.LBB5_90
# BB#89:                                # %if.then.346
                                        #   in Loop: Header=BB5_87 Depth=2
	leaq	-324(%rbp), %rdi
	leaq	-328(%rbp), %rsi
	leaq	-332(%rbp), %rdx
	callq	gimp_hsv_to_rgb_int
.LBB5_90:                               # %if.end.347
                                        #   in Loop: Header=BB5_87 Depth=2
	movl	$0, -352(%rbp)
.LBB5_91:                               # %for.cond.348
                                        #   Parent Loop BB5_79 Depth=1
                                        #     Parent Loop BB5_87 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_95 Depth 4
                                        #           Child Loop BB5_102 Depth 5
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-352(%rbp), %eax
	cmpl	CML_explorer_vals+316, %eax
	movb	%cl, -513(%rbp)         # 1-byte Spill
	jge	.LBB5_93
# BB#92:                                # %land.rhs
                                        #   in Loop: Header=BB5_91 Depth=3
	movl	-160(%rbp), %eax
	addl	-352(%rbp), %eax
	cmpl	-200(%rbp), %eax
	setl	%cl
	movb	%cl, -513(%rbp)         # 1-byte Spill
.LBB5_93:                               # %land.end
                                        #   in Loop: Header=BB5_91 Depth=3
	movb	-513(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_94
	jmp	.LBB5_133
.LBB5_94:                               # %for.body.354
                                        #   in Loop: Header=BB5_91 Depth=3
	movl	$0, -348(%rbp)
.LBB5_95:                               # %for.cond.355
                                        #   Parent Loop BB5_79 Depth=1
                                        #     Parent Loop BB5_87 Depth=2
                                        #       Parent Loop BB5_91 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_102 Depth 5
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-348(%rbp), %eax
	cmpl	CML_explorer_vals+316, %eax
	movb	%cl, -514(%rbp)         # 1-byte Spill
	jge	.LBB5_97
# BB#96:                                # %land.rhs.358
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-156(%rbp), %eax
	imull	CML_explorer_vals+316, %eax
	addl	-348(%rbp), %eax
	cmpl	-196(%rbp), %eax
	setl	%cl
	movb	%cl, -514(%rbp)         # 1-byte Spill
.LBB5_97:                               # %land.end.363
                                        #   in Loop: Header=BB5_95 Depth=4
	movb	-514(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_98
	jmp	.LBB5_131
.LBB5_98:                               # %for.body.364
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, CML_explorer_vals
	je	.LBB5_101
# BB#99:                                # %lor.lhs.false.367
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, CML_explorer_vals+104
	je	.LBB5_101
# BB#100:                               # %lor.lhs.false.370
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, CML_explorer_vals+208
	jne	.LBB5_119
.LBB5_101:                              # %if.then.373
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	$0, -372(%rbp)
.LBB5_102:                              # %for.cond.376
                                        #   Parent Loop BB5_79 Depth=1
                                        #     Parent Loop BB5_87 Depth=2
                                        #       Parent Loop BB5_91 Depth=3
                                        #         Parent Loop BB5_95 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-372(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB5_105
# BB#103:                               # %for.body.379
                                        #   in Loop: Header=BB5_102 Depth=5
	movl	-352(%rbp), %eax
	imull	-212(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	CML_explorer_vals+316, %ecx
	addl	-348(%rbp), %ecx
	imull	-208(%rbp), %ecx
	addl	%ecx, %eax
	addl	-372(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movslq	-372(%rbp), %rdx
	movl	%eax, -368(%rbp,%rdx,4)
# BB#104:                               # %for.inc.391
                                        #   in Loop: Header=BB5_102 Depth=5
	movl	-372(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -372(%rbp)
	jmp	.LBB5_102
.LBB5_105:                              # %for.end.393
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, -176(%rbp)
	je	.LBB5_108
# BB#106:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, CML_explorer_vals+208
	jne	.LBB5_108
# BB#107:                               # %if.then.397
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-368(%rbp), %eax
	movl	%eax, -332(%rbp)
	jmp	.LBB5_118
.LBB5_108:                              # %if.else
                                        #   in Loop: Header=BB5_95 Depth=4
	leaq	-368(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgb_to_hsv_int
	cmpl	$0, CML_explorer_vals
	jne	.LBB5_110
# BB#109:                               # %cond.true.406
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-368(%rbp), %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB5_111
.LBB5_110:                              # %cond.false.408
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-336(%rbp), %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB5_111:                              # %cond.end.409
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-520(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)
	cmpl	$0, CML_explorer_vals+104
	jne	.LBB5_113
# BB#112:                               # %cond.true.413
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-364(%rbp), %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB5_114
.LBB5_113:                              # %cond.false.415
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-340(%rbp), %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB5_114:                              # %cond.end.416
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)
	cmpl	$0, CML_explorer_vals+208
	jne	.LBB5_116
# BB#115:                               # %cond.true.420
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-360(%rbp), %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jmp	.LBB5_117
.LBB5_116:                              # %cond.false.422
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-344(%rbp), %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB5_117:                              # %cond.end.423
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-528(%rbp), %eax        # 4-byte Reload
	leaq	-324(%rbp), %rdi
	leaq	-328(%rbp), %rsi
	leaq	-332(%rbp), %rdx
	movl	%eax, -332(%rbp)
	callq	gimp_hsv_to_rgb_int
.LBB5_118:                              # %if.end.425
                                        #   in Loop: Header=BB5_95 Depth=4
	jmp	.LBB5_119
.LBB5_119:                              # %if.end.426
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-352(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	CML_explorer_vals+316, %ecx
	addl	-348(%rbp), %ecx
	imull	-216(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -356(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB5_123
# BB#120:                               # %if.then.433
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-332(%rbp), %eax
	movb	%al, %cl
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	cmpl	$0, -16(%rbp)
	je	.LBB5_122
# BB#121:                               # %if.then.439
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-332(%rbp), %eax
	movb	%al, %cl
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-332(%rbp), %eax
	movb	%al, %cl
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB5_122:                              # %if.end.448
                                        #   in Loop: Header=BB5_95 Depth=4
	jmp	.LBB5_124
.LBB5_123:                              # %if.else.449
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-324(%rbp), %eax
	movb	%al, %cl
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-328(%rbp), %eax
	movb	%al, %cl
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-332(%rbp), %eax
	movb	%al, %cl
	movl	-356(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB5_124:                              # %if.end.462
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, -164(%rbp)
	je	.LBB5_126
# BB#125:                               # %if.then.464
                                        #   in Loop: Header=BB5_95 Depth=4
	movslq	-356(%rbp), %rax
	movq	-128(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
.LBB5_126:                              # %if.end.467
                                        #   in Loop: Header=BB5_95 Depth=4
	cmpl	$0, -16(%rbp)
	jne	.LBB5_129
# BB#127:                               # %land.lhs.true.469
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	$100, %eax
	movl	-184(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -184(%rbp)
	movl	-180(%rbp), %edx
	movl	%eax, -532(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-532(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$1, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-536(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_129
# BB#128:                               # %if.then.476
                                        #   in Loop: Header=BB5_95 Depth=4
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-180(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -540(%rbp)        # 4-byte Spill
.LBB5_129:                              # %if.end.481
                                        #   in Loop: Header=BB5_95 Depth=4
	jmp	.LBB5_130
.LBB5_130:                              # %for.inc.482
                                        #   in Loop: Header=BB5_95 Depth=4
	movl	-348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)
	jmp	.LBB5_95
.LBB5_131:                              # %for.end.484
                                        #   in Loop: Header=BB5_91 Depth=3
	jmp	.LBB5_132
.LBB5_132:                              # %for.inc.485
                                        #   in Loop: Header=BB5_91 Depth=3
	movl	-352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -352(%rbp)
	jmp	.LBB5_91
.LBB5_133:                              # %for.end.487
                                        #   in Loop: Header=BB5_87 Depth=2
	jmp	.LBB5_134
.LBB5_134:                              # %for.inc.488
                                        #   in Loop: Header=BB5_87 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB5_87
.LBB5_135:                              # %for.end.490
                                        #   in Loop: Header=BB5_79 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB5_137
# BB#136:                               # %if.then.492
                                        #   in Loop: Header=BB5_79 Depth=1
	movq	preview, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-160(%rbp), %edx
	movl	-196(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movq	-128(%rbp), %rsi
	movl	-220(%rbp), %r10d
	movq	%rax, %rdi
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-564(%rbp), %r9d        # 4-byte Reload
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	jmp	.LBB5_138
.LBB5_137:                              # %if.else.495
                                        #   in Loop: Header=BB5_79 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	-196(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
.LBB5_138:                              # %if.end.497
                                        #   in Loop: Header=BB5_79 Depth=1
	jmp	.LBB5_139
.LBB5_139:                              # %for.inc.498
                                        #   in Loop: Header=BB5_79 Depth=1
	movl	CML_explorer_vals+316, %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB5_79
.LBB5_140:                              # %for.end.500
	cmpl	$0, -16(%rbp)
	je	.LBB5_142
# BB#141:                               # %if.then.502
	movq	preview, %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB5_143
.LBB5_142:                              # %if.else.503
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-24(%rbp), %rdi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-140(%rbp), %esi
	movl	-148(%rbp), %edx
	movl	-144(%rbp), %r8d
	subl	-140(%rbp), %r8d
	movl	-152(%rbp), %r9d
	subl	-148(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-24(%rbp), %rdi
	movl	%eax, -576(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
.LBB5_143:                              # %if.end.510
	movq	gr, %rdi
	callq	g_rand_free
	movl	$3, -12(%rbp)
.LBB5_144:                              # %return
	movl	-12(%rbp), %eax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	CML_main_function, .Lfunc_end5-CML_main_function
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_21
	.quad	.LBB5_23
	.quad	.LBB5_22
	.quad	.LBB5_23
	.quad	.LBB5_24
	.quad	.LBB5_22
	.quad	.LBB5_25
.LJTI5_1:
	.quad	.LBB5_31
	.quad	.LBB5_33
	.quad	.LBB5_32
	.quad	.LBB5_33
	.quad	.LBB5_34
	.quad	.LBB5_32
	.quad	.LBB5_35
.LJTI5_2:
	.quad	.LBB5_41
	.quad	.LBB5_43
	.quad	.LBB5_42
	.quad	.LBB5_43
	.quad	.LBB5_44
	.quad	.LBB5_42
	.quad	.LBB5_45
.LJTI5_3:
	.quad	.LBB5_51
	.quad	.LBB5_51
	.quad	.LBB5_51
	.quad	.LBB5_52
	.quad	.LBB5_53
	.quad	.LBB5_54
	.quad	.LBB5_55
	.quad	.LBB5_56
	.quad	.LBB5_55
	.quad	.LBB5_56

	.text
	.align	16, 0x90
	.type	CML_preview_update_callback,@function
CML_preview_update_callback:            # @CML_preview_update_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	widget_pointers+1152, %rsi
	movq	%rsi, -40(%rbp)
	movq	widget_pointers+1160, %rsi
	movq	%rsi, -32(%rbp)
	movq	widget_pointers+1168, %rsi
	movq	%rsi, -24(%rbp)
	callq	preview_update
	movl	$1, CML_preview_defer
	cmpq	$0, -40(%rbp)
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	leaq	-40(%rbp), %rdi
	callq	*-24(%rbp)
.LBB6_3:                                # %if.end
	movl	$0, CML_preview_defer
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CML_preview_update_callback, .Lfunc_end6-CML_preview_update_callback
	.cfi_endproc

	.align	16, 0x90
	.type	CML_set_or_randomize_seed_callback,@function
CML_set_or_randomize_seed_callback:     # @CML_set_or_randomize_seed_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, CML_preview_defer(%rip)
	movl	CML_explorer_vals+312(%rip), %eax
	addl	$-6, %eax
	movl	%eax, %esi
	subl	$3, %eax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB7_5
# BB#13:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movl	$8, CML_explorer_vals+312
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.1
	movl	$9, CML_explorer_vals+312
	jmp	.LBB7_6
.LBB7_3:                                # %sw.bb.2
	movl	$6, CML_explorer_vals+312
	jmp	.LBB7_6
.LBB7_4:                                # %sw.bb.3
	movl	$7, CML_explorer_vals+312
	jmp	.LBB7_6
.LBB7_5:                                # %sw.default
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	cmpq	$0, widget_pointers+1152
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true
	cmpq	$0, widget_pointers+1168
	je	.LBB7_9
# BB#8:                                 # %if.then
	movabsq	$widget_pointers, %rax
	addq	$1152, %rax             # imm = 0x480
	movq	%rax, %rdi
	callq	*widget_pointers+1168
.LBB7_9:                                # %if.end
	cmpq	$0, widget_pointers+1080
	je	.LBB7_12
# BB#10:                                # %land.lhs.true.6
	cmpq	$0, widget_pointers+1096
	je	.LBB7_12
# BB#11:                                # %if.then.8
	movabsq	$widget_pointers, %rax
	addq	$1080, %rax             # imm = 0x438
	movq	%rax, %rdi
	callq	*widget_pointers+1096
.LBB7_12:                               # %if.end.9
	callq	CML_initial_value_sensitives_update
	movl	$0, CML_preview_defer
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	CML_set_or_randomize_seed_callback, .Lfunc_end7-CML_set_or_randomize_seed_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4

	.text
	.align	16, 0x90
	.type	CML_load_from_file_callback,@function
CML_load_from_file_callback:            # @CML_load_from_file_callback
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp36:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, CML_load_from_file_callback.dialog
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.22, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.28, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, CML_load_from_file_callback.dialog
	movq	CML_load_from_file_callback.dialog, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	CML_load_from_file_callback.dialog, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.53, %rsi
	movabsq	$CML_load_from_file_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	CML_load_from_file_callback.dialog, %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	CML_load_from_file_callback.dialog, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB8_2:                                # %if.end
	movl	$CML_explorer_vals+328, %eax
	movl	%eax, %edi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB8_4
# BB#3:                                 # %if.then.12
	movq	CML_load_from_file_callback.dialog, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$CML_explorer_vals, %rsi
	addq	$328, %rsi              # imm = 0x148
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB8_4:                                # %if.end.16
	movq	CML_load_from_file_callback.dialog, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	CML_load_from_file_callback, .Lfunc_end8-CML_load_from_file_callback
	.cfi_endproc

	.align	16, 0x90
	.type	CML_save_to_file_callback,@function
CML_save_to_file_callback:              # @CML_save_to_file_callback
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp40:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, CML_save_to_file_callback.dialog
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.22, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.29, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, CML_save_to_file_callback.dialog
	movq	CML_save_to_file_callback.dialog, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	CML_save_to_file_callback.dialog, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	CML_save_to_file_callback.dialog, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.53, %rsi
	movabsq	$CML_save_to_file_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	CML_save_to_file_callback.dialog, %rbx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	CML_save_to_file_callback.dialog, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB9_2:                                # %if.end
	movl	$CML_explorer_vals+328, %eax
	movl	%eax, %edi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB9_4
# BB#3:                                 # %if.then.15
	movq	CML_save_to_file_callback.dialog, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$CML_explorer_vals, %rsi
	addq	$328, %rsi              # imm = 0x148
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB9_4:                                # %if.end.19
	movq	CML_save_to_file_callback.dialog, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	CML_save_to_file_callback, .Lfunc_end9-CML_save_to_file_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4576918229304087675     # double 0.01
.LCPI10_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_3:
	.quad	4621819117588971520     # double 10
.LCPI10_4:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_5:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	CML_dialog_channel_panel_new,@function
CML_dialog_channel_panel_new:           # @CML_dialog_channel_panel_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$784, %rsp              # imm = 0x310
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
	movl	$13, %eax
	movl	$3, %ecx
	xorl	%edx, %edx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -84(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$13, %edi
	movabsq	$function_names, %rsi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$CML_explorer_menu_update, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	-24(%rbp), %r11
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$widget_pointers, %rcx
	movslq	-84(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	imulq	$360, %rsi, %rsi        # imm = 0x168
	addq	%rsi, %rcx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	CML_explorer_menu_entry_init
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.123, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI10_5, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-48(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$15, %edi
	movabsq	$composition_names, %rsi
	movl	-84(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_new_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$CML_explorer_menu_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r10
	addq	$4, %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$widget_pointers, %rcx
	movslq	-84(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	imulq	$360, %rsi, %rsi        # imm = 0x168
	addq	%rsi, %rcx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	CML_explorer_menu_entry_init
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.124, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI10_5, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-48(%rbp), %r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$10, %edi
	movabsq	$arrange_names, %rsi
	movl	-84(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_new_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.35, %rsi
	movabsq	$CML_explorer_menu_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r10
	addq	$8, %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$widget_pointers, %rcx
	movslq	-84(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	imulq	$360, %rsi, %rsi        # imm = 0x168
	addq	%rsi, %rcx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rcx, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	CML_explorer_menu_entry_init
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.125, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI10_5, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-48(%rbp), %r8
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.126, %rdi
	movl	-84(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-56(%rbp), %rsi
	movl	-84(%rbp), %r8d
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movabsq	$widget_pointers, %rax
	movslq	-84(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rax
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rax
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	addq	$12, %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	callq	CML_explorer_toggle_entry_init
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.127, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %ecx
	movl	$1, %edx
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-24(%rbp), %r10
	movsd	16(%r10), %xmm1         # xmm1 = mem[0],zero
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	-324(%rbp), %ebx        # 4-byte Reload
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-360(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-360(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-24(%rbp), %rdi
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %r14d       # 4-byte Reload
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-408(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-408(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -412(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.129, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	movsd	.LCPI10_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_0, %xmm3        # xmm3 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-24(%rbp), %rdi
	cvtsi2sdl	32(%rdi), %xmm4
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	-428(%rbp), %ebx        # 4-byte Reload
	movl	%edx, -444(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-464(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -472(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-472(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-472(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_int_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.130, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_4, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-24(%rbp), %rdi
	cvtsi2sdl	48(%rdi), %xmm3
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	-484(%rbp), %ebx        # 4-byte Reload
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-520(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -528(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-528(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-528(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_int_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.131, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -540(%rbp)        # 4-byte Spill
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_0, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-24(%rbp), %rdi
	movsd	56(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	-540(%rbp), %r14d       # 4-byte Reload
	movl	%edx, -556(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -580(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.132, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -596(%rbp)        # 4-byte Spill
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_0, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-24(%rbp), %rdi
	movsd	64(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	-596(%rbp), %r14d       # 4-byte Reload
	movl	%edx, -612(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-632(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-632(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -636(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.133, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -652(%rbp)        # 4-byte Spill
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-24(%rbp), %rdi
	movsd	72(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	-652(%rbp), %r14d       # 4-byte Reload
	movl	%edx, -668(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-688(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-688(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-688(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -692(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.134, %rdi
	movl	-84(%rbp), %edx
	movl	%edx, -708(%rbp)        # 4-byte Spill
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$130, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-24(%rbp), %rdi
	movsd	80(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movl	-708(%rbp), %r14d       # 4-byte Reload
	movl	%edx, -724(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-744(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-744(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-744(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -748(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -72(%rbp)
	movslq	-84(%rbp), %rax
	movslq	-28(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	$2, %r8d
	movl	%r8d, %edi
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	-84(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	callq	g_malloc_n
	movabsq	$.L.str.135, %rdi
	movq	%rax, -80(%rbp)
	movslq	-28(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-64(%rbp), %rsi
	movl	-84(%rbp), %r8d
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$function_graph_new, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -768(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$784, %rsp              # imm = 0x310
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	CML_dialog_channel_panel_new, .Lfunc_end10-CML_dialog_channel_panel_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4576918229304087675     # double 0.01
.LCPI11_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	CML_dialog_advanced_panel_new,@function
CML_dialog_advanced_panel_new:          # @CML_dialog_advanced_panel_new
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp49:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	movl	$12, %esi
	movl	$0, -44(%rbp)
	movl	$12, -48(%rbp)
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -52(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -52(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$CML_explorer_vals, %rax
	movslq	-52(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movslq	-52(%rbp), %rax
	movq	channel_names(,%rax,8), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.141, %rdi
	movl	-44(%rbp), %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$130, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-64(%rbp), %rdi
	movsd	40(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-168(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rax
	movslq	-52(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-44(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.142, %rdi
	movl	-44(%rbp), %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$130, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %r9d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-64(%rbp), %rsi
	movsd	88(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-180(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	-196(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-224(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -228(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rax
	movslq	-52(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$88, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
	movl	-44(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.143, %rdi
	movl	-44(%rbp), %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$130, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %r9d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-64(%rbp), %rsi
	movsd	96(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-244(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	-260(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -276(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -292(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$widget_pointers, %rcx
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rax
	movslq	-52(%rbp), %rdi
	imulq	$360, %rdi, %rdi        # imm = 0x168
	addq	%rdi, %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$96, %rax
	movq	%rcx, %rdi
	movq	%rax, %rdx
	callq	CML_explorer_double_entry_init
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	CML_dialog_advanced_panel_new, .Lfunc_end11-CML_dialog_advanced_panel_new
	.cfi_endproc

	.align	16, 0x90
	.type	CML_initial_value_menu_update,@function
CML_initial_value_menu_update:          # @CML_initial_value_menu_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	CML_initial_value_sensitives_update
	callq	preview_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	CML_initial_value_menu_update, .Lfunc_end12-CML_initial_value_menu_update
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_menu_entry_init,@function
CML_explorer_menu_entry_init:           # @CML_explorer_menu_entry_init
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
	movabsq	$CML_explorer_menu_entry_change_value, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	CML_explorer_menu_entry_init, .Lfunc_end13-CML_explorer_menu_entry_init
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_int_entry_init,@function
CML_explorer_int_entry_init:            # @CML_explorer_int_entry_init
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
	movabsq	$.L.str.137, %rax
	movabsq	$CML_explorer_int_adjustment_update, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$CML_explorer_int_entry_change_value, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	CML_explorer_int_entry_init, .Lfunc_end14-CML_explorer_int_entry_init
	.cfi_endproc

	.align	16, 0x90
	.type	CML_copy_parameters_callback,@function
CML_copy_parameters_callback:           # @CML_copy_parameters_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	copy_source, %eax
	cmpl	copy_destination, %eax
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.157, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB15_10
.LBB15_2:                               # %if.end
	movabsq	$widget_pointers, %rax
	movl	$104, %ecx
	movl	%ecx, %edx
	movslq	copy_destination, %rsi
	movq	channel_params(,%rsi,8), %rsi
	movslq	copy_source, %rdi
	movq	channel_params(,%rdi,8), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	memcpy
	movl	$1, CML_preview_defer
	movslq	copy_destination, %rax
	imulq	$360, %rax, %rax        # imm = 0x168
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -20(%rbp)
	jge	.LBB15_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB15_7
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	*%rax
.LBB15_7:                               # %if.end.16
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_8
.LBB15_8:                               # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_3
.LBB15_9:                               # %for.end
	movl	$0, CML_preview_defer
	callq	preview_update
.LBB15_10:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	CML_copy_parameters_callback, .Lfunc_end15-CML_copy_parameters_callback
	.cfi_endproc

	.align	16, 0x90
	.type	CML_initial_value_sensitives_update,@function
CML_initial_value_sensitives_update:    # @CML_initial_value_sensitives_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$6, %eax
	movl	$0, -4(%rbp)
	cmpl	CML_explorer_vals+312, %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$9, CML_explorer_vals+312
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	andl	%esi, %edx
	movl	%edx, -8(%rbp)
	cmpl	CML_explorer_vals+312, %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$7, CML_explorer_vals+312
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	andl	%edx, %eax
	movl	%eax, -12(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$5, %rax
	jae	.LBB16_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movabsq	$random_sensitives, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movabsq	$random_sensitives, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdi
	movl	-8(%rbp), %esi
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %r8d
	cmpl	-12(%rbp), %r8d
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	andl	%r8d, %esi
	callq	gtk_widget_set_sensitive
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB16_1
.LBB16_6:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	CML_initial_value_sensitives_update, .Lfunc_end16-CML_initial_value_sensitives_update
	.cfi_endproc

	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, CML_preview_defer
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	CML_main_function
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB17_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	preview_update, .Lfunc_end17-preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	CML_load_from_file_response,@function
CML_load_from_file_response:            # @CML_load_from_file_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB18_22
# BB#1:                                 # %if.then
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	xorl	%esi, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	CML_load_parameter_file
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpl	$0, -40(%rbp)
	je	.LBB18_21
# BB#2:                                 # %if.then.4
	movl	$1, CML_preview_defer
	movl	$0, -36(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
	cmpl	$3, -36(%rbp)
	jge	.LBB18_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movabsq	$widget_pointers, %rax
	movslq	-36(%rbp), %rcx
	imulq	$360, %rcx, %rcx        # imm = 0x168
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB18_5:                               # %for.cond.6
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$15, -52(%rbp)
	jge	.LBB18_11
# BB#6:                                 # %for.body.8
                                        #   in Loop: Header=BB18_5 Depth=2
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_5 Depth=2
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB18_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB18_5 Depth=2
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	*%rax
.LBB18_9:                               # %if.end
                                        #   in Loop: Header=BB18_5 Depth=2
	jmp	.LBB18_10
.LBB18_10:                              # %for.inc
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB18_5
.LBB18_11:                              # %for.end
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_12
.LBB18_12:                              # %for.inc.19
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB18_3
.LBB18_13:                              # %for.end.21
	movabsq	$widget_pointers, %rax
	addq	$1080, %rax             # imm = 0x438
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB18_14:                              # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -52(%rbp)
	jge	.LBB18_20
# BB#15:                                # %for.body.24
                                        #   in Loop: Header=BB18_14 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB18_14 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB18_18
# BB#17:                                # %if.then.34
                                        #   in Loop: Header=BB18_14 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	*%rax
.LBB18_18:                              # %if.end.40
                                        #   in Loop: Header=BB18_14 Depth=1
	jmp	.LBB18_19
.LBB18_19:                              # %for.inc.41
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB18_14
.LBB18_20:                              # %for.end.43
	movl	$0, CML_preview_defer
	callq	preview_update
.LBB18_21:                              # %if.end.44
	jmp	.LBB18_22
.LBB18_22:                              # %if.end.45
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_hide
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	CML_load_from_file_response, .Lfunc_end18-CML_load_from_file_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	CML_save_to_file_response,@function
CML_save_to_file_response:              # @CML_save_to_file_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	jmp	.LBB19_11
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_4
# BB#3:                                 # %if.then.3
	jmp	.LBB19_11
.LBB19_4:                               # %if.end.4
	movabsq	$.L.str.56, %rsi
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_6
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_6:                               # %if.end.12
	movabsq	$.L.str.58, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.59, %rsi
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	fprintf
	movabsq	$.L.str.60, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -44(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB19_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -44(%rbp)
	jge	.LBB19_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB19_7 Depth=1
	movabsq	$.L.str.61, %rsi
	movl	$104, %eax
	movl	%eax, %edx
	leaq	-200(%rbp), %rcx
	movslq	-44(%rbp), %rdi
	movq	channel_params(,%rdi,8), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	memcpy
	movq	-40(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	movq	channel_names(,%rcx,8), %rdx
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.62, %rsi
	movq	-40(%rbp), %rdi
	movl	-200(%rbp), %edx
	movslq	-200(%rbp), %rcx
	movq	function_names(,%rcx,8), %rcx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.63, %rsi
	movq	-40(%rbp), %rdi
	movl	-196(%rbp), %edx
	movslq	-196(%rbp), %rcx
	movq	composition_names(,%rcx,8), %rcx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.64, %rsi
	movq	-40(%rbp), %rdi
	movl	-192(%rbp), %edx
	movslq	-192(%rbp), %rcx
	movq	arrange_names(,%rcx,8), %rcx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.67, %rcx
	movabsq	$.L.str.66, %rdi
	movq	-40(%rbp), %r8
	movl	-188(%rbp), %edx
	cmpl	$0, -188(%rbp)
	cmovneq	%rdi, %rcx
	movq	%r8, %rdi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.69, %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.70, %rsi
	movq	-40(%rbp), %rdi
	movl	-168(%rbp), %edx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.71, %rsi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.72, %rsi
	movq	-40(%rbp), %rdi
	movl	-152(%rbp), %edx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.73, %rsi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.74, %rsi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.75, %rsi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.76, %rsi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -388(%rbp)        # 4-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.77, %rsi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.78, %rsi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -420(%rbp)        # 4-byte Spill
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB19_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB19_7
.LBB19_10:                              # %for.end
	movabsq	$.L.str.79, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.80, %rsi
	movq	-40(%rbp), %rdi
	movl	CML_explorer_vals+312, %edx
	movslq	CML_explorer_vals+312, %rcx
	movq	initial_value_names(,%rcx,8), %rcx
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.81, %rsi
	movq	-40(%rbp), %rdi
	movl	CML_explorer_vals+316, %edx
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.82, %rsi
	movq	-40(%rbp), %rdi
	movl	CML_explorer_vals+320, %edx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.83, %rsi
	movq	-40(%rbp), %rdi
	movl	CML_explorer_vals+324, %edx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movl	%eax, -440(%rbp)        # 4-byte Spill
	callq	fclose
	movabsq	$.L.str.84, %rdi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movabsq	$CML_explorer_vals, %rcx
	addq	$328, %rcx              # imm = 0x148
	movl	$255, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movq	-32(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB19_11:                              # %return
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end19:
	.size	CML_save_to_file_response, .Lfunc_end19-CML_save_to_file_response
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
.Lfunc_end20:
	.size	g_message, .Lfunc_end20-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_menu_update,@function
CML_explorer_menu_update:               # @CML_explorer_menu_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	preview_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	CML_explorer_menu_update, .Lfunc_end21-CML_explorer_menu_update
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_toggle_entry_init,@function
CML_explorer_toggle_entry_init:         # @CML_explorer_toggle_entry_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.136, %rax
	movabsq	$CML_explorer_toggle_update, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$CML_explorer_toggle_entry_change_value, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	CML_explorer_toggle_entry_init, .Lfunc_end22-CML_explorer_toggle_entry_init
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_double_entry_init,@function
CML_explorer_double_entry_init:         # @CML_explorer_double_entry_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.137, %rax
	movabsq	$CML_explorer_double_adjustment_update, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$CML_explorer_double_entry_change_value, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	CML_explorer_double_entry_init, .Lfunc_end23-CML_explorer_double_entry_init
	.cfi_endproc

	.align	16, 0x90
	.type	function_graph_new,@function
function_graph_new:                     # @function_graph_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp89:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.138, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.139, %rdi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movq	%r11, -80(%rbp)         # 8-byte Spill
	callq	gimp_dialog_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	callq	gtk_frame_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movl	$256, %ecx              # imm = 0x100
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.140, %rsi
	movabsq	$function_graph_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	movq	-32(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gtk_widget_destroy
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	function_graph_new, .Lfunc_end24-function_graph_new
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_toggle_update,@function
CML_explorer_toggle_update:             # @CML_explorer_toggle_update
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	callq	preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	CML_explorer_toggle_update, .Lfunc_end25-CML_explorer_toggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_toggle_entry_change_value,@function
CML_explorer_toggle_entry_change_value: # @CML_explorer_toggle_entry_change_value
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	CML_explorer_toggle_entry_change_value, .Lfunc_end26-CML_explorer_toggle_entry_change_value
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_double_adjustment_update,@function
CML_explorer_double_adjustment_update:  # @CML_explorer_double_adjustment_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	callq	preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	CML_explorer_double_adjustment_update, .Lfunc_end27-CML_explorer_double_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_double_entry_change_value,@function
CML_explorer_double_entry_change_value: # @CML_explorer_double_entry_change_value
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	CML_explorer_double_entry_change_value, .Lfunc_end28-CML_explorer_double_entry_change_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
.LCPI29_1:
	.quad	4643176031446892544     # double 255
.LCPI29_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	function_graph_expose,@function
function_graph_expose:                  # @function_graph_expose
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-72(%rbp), %rdi
	callq	cairo_clip
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	callq	cairo_set_line_width
	movq	buffer, %rdi
	callq	cairo_surface_flush
	movl	$0, -36(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_6 Depth 2
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB29_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	xorl	%eax, %eax
	movl	$127, -44(%rbp)
	movl	$127, -48(%rbp)
	movl	$127, -52(%rbp)
	cmpl	-56(%rbp), %eax
	jg	.LBB29_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB29_1 Depth=1
	cmpl	$2, -56(%rbp)
	jg	.LBB29_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB29_1 Depth=1
	movsd	.LCPI29_1, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	subsd	72(%rax), %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-64(%rbp), %rax
	addsd	72(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	-56(%rbp), %rax
	movl	%ecx, -52(%rbp,%rax,4)
.LBB29_5:                               # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	leaq	-52(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_hsv_to_rgb_int
	movl	$0, -40(%rbp)
.LBB29_6:                               # %for.cond.20
                                        #   Parent Loop BB29_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB29_11
# BB#7:                                 # %for.body.23
                                        #   in Loop: Header=BB29_6 Depth=2
	jmp	.LBB29_8
.LBB29_8:                               # %do.body
                                        #   in Loop: Header=BB29_6 Depth=2
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movq	img, %rdx
	movl	-40(%rbp), %eax
	imull	img_stride, %eax
	movl	-36(%rbp), %esi
	shll	$2, %esi
	addl	%esi, %eax
	movslq	%eax, %rdi
	movb	%cl, (%rdx,%rdi)
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movq	img, %rdx
	movl	-40(%rbp), %eax
	imull	img_stride, %eax
	movl	-36(%rbp), %esi
	shll	$2, %esi
	addl	%esi, %eax
	movslq	%eax, %rdi
	movb	%cl, 1(%rdx,%rdi)
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movq	img, %rdx
	movl	-40(%rbp), %eax
	imull	img_stride, %eax
	movl	-36(%rbp), %esi
	shll	$2, %esi
	addl	%esi, %eax
	movslq	%eax, %rdi
	movb	%cl, 2(%rdx,%rdi)
# BB#9:                                 # %do.end
                                        #   in Loop: Header=BB29_6 Depth=2
	jmp	.LBB29_10
.LBB29_10:                              # %for.inc
                                        #   in Loop: Header=BB29_6 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB29_6
.LBB29_11:                              # %for.end
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_12
.LBB29_12:                              # %for.inc.47
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB29_1
.LBB29_13:                              # %for.end.49
	movq	buffer, %rdi
	callq	cairo_surface_mark_dirty
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rdi
	movq	buffer, %rsi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface
	movq	-72(%rbp), %rdi
	callq	cairo_paint
	movsd	.LCPI29_2, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	xorps	%xmm0, %xmm0
	movsd	.LCPI29_1, %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rdi
	callq	cairo_move_to
	movsd	.LCPI29_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-72(%rbp), %rdi
	callq	cairo_line_to
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	$516, %rsi              # imm = 0x204
	callq	gdk_cairo_set_source_color
	movq	-72(%rbp), %rdi
	callq	cairo_stroke
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movsd	56(%rsi), %xmm1         # xmm1 = mem[0],zero
	callq	logistic_function
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB29_15
# BB#14:                                # %cond.true
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB29_19
.LBB29_15:                              # %cond.false
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	logistic_function
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB29_17
# BB#16:                                # %cond.true.57
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB29_18
.LBB29_17:                              # %cond.false.58
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	logistic_function
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB29_18:                              # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB29_19:                              # %cond.end.61
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	$255, %eax
	movsd	.LCPI29_1, %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -40(%rbp)
	movq	-72(%rbp), %rdi
	subl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movl	$0, -36(%rbp)
.LBB29_20:                              # %for.cond.67
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB29_29
# BB#21:                                # %for.body.70
                                        #   in Loop: Header=BB29_20 Depth=1
	movsd	.LCPI29_1, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	logistic_function
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB29_23
# BB#22:                                # %cond.true.77
                                        #   in Loop: Header=BB29_20 Depth=1
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB29_27
.LBB29_23:                              # %cond.false.78
                                        #   in Loop: Header=BB29_20 Depth=1
	movsd	.LCPI29_1, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	logistic_function
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB29_25
# BB#24:                                # %cond.true.85
                                        #   in Loop: Header=BB29_20 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB29_26
.LBB29_25:                              # %cond.false.86
                                        #   in Loop: Header=BB29_20 Depth=1
	movsd	.LCPI29_1, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	logistic_function
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB29_26:                              # %cond.end.91
                                        #   in Loop: Header=BB29_20 Depth=1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB29_27:                              # %cond.end.93
                                        #   in Loop: Header=BB29_20 Depth=1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$255, %eax
	movsd	.LCPI29_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -40(%rbp)
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	subl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
# BB#28:                                # %for.inc.100
                                        #   in Loop: Header=BB29_20 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB29_20
.LBB29_29:                              # %for.end.102
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-72(%rbp), %rdi
	callq	cairo_stroke
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	function_graph_expose, .Lfunc_end29-function_graph_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4607182418800017408     # double 1
.LCPI30_1:
	.quad	4602678819172646912     # double 0.5
.LCPI30_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI30_3:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI30_4:
	.quad	4611686018427387904     # double 2
.LCPI30_5:
	.quad	4616189618054758400     # double 4
.LCPI30_6:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	logistic_function,@function
logistic_function:                      # @logistic_function
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, -52(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-52(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$12, %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	ja	.LBB30_47
# BB#123:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI30_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB30_1:                               # %sw.bb
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB30_122
.LBB30_2:                               # %sw.bb.6
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_4
# BB#3:                                 # %cond.true
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB30_8
.LBB30_4:                               # %cond.false
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	ucomisd	64(%rax), %xmm0
	jbe	.LBB30_6
# BB#5:                                 # %cond.true.11
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB30_7
.LBB30_6:                               # %cond.false.12
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB30_7:                               # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB30_8:                               # %cond.end.14
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB30_122
.LBB30_9:                               # %sw.bb.16
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI30_5, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm2, -104(%rbp)       # 8-byte Spill
	callq	pow
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB30_47
.LBB30_10:                              # %sw.bb.22
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI30_5, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	subsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	callq	pow
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_47
.LBB30_11:                              # %sw.bb.32
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB30_47
.LBB30_12:                              # %sw.bb.36
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_47
.LBB30_13:                              # %sw.bb.44
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_47
.LBB30_14:                              # %sw.bb.49
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_47
.LBB30_15:                              # %sw.bb.58
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI30_4, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	64(%rax), %xmm1
	ucomisd	-40(%rbp), %xmm0
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	jbe	.LBB30_17
# BB#16:                                # %cond.true.63
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB30_18
.LBB30_17:                              # %cond.false.64
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB30_18:                              # %cond.end.66
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB30_47
.LBB30_19:                              # %sw.bb.69
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI30_4, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	64(%rax), %xmm1
	ucomisd	-40(%rbp), %xmm0
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	jbe	.LBB30_21
# BB#20:                                # %cond.true.74
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB30_22
.LBB30_21:                              # %cond.false.75
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB30_22:                              # %cond.end.77
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_47
.LBB30_23:                              # %sw.bb.84
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_28
# BB#24:                                # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB30_26
# BB#25:                                # %cond.true.90
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB30_27
.LBB30_26:                              # %cond.false.93
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
.LBB30_27:                              # %cond.end.95
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI30_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI30_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI30_2, %xmm4        # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	divsd	-32(%rbp), %xmm4
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -200(%rbp)       # 8-byte Spill
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	movsd	%xmm2, -216(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	-32(%rbp), %xmm1
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	jmp	.LBB30_32
.LBB30_28:                              # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB30_30
# BB#29:                                # %cond.true.108
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB30_31
.LBB30_30:                              # %cond.false.111
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
.LBB30_31:                              # %cond.end.113
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI30_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI30_0, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
.LBB30_32:                              # %if.end
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB30_34
# BB#33:                                # %if.then.122
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB30_34:                              # %if.end.124
	jmp	.LBB30_47
.LBB30_35:                              # %sw.bb.125
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_40
# BB#36:                                # %if.then.128
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB30_38
# BB#37:                                # %cond.true.132
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB30_39
.LBB30_38:                              # %cond.false.135
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
.LBB30_39:                              # %cond.end.137
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI30_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI30_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI30_2, %xmm4        # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	divsd	-32(%rbp), %xmm4
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -248(%rbp)       # 8-byte Spill
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	movsd	%xmm2, -264(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	-32(%rbp), %xmm1
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	jmp	.LBB30_44
.LBB30_40:                              # %if.else.147
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB30_42
# BB#41:                                # %cond.true.151
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB30_43
.LBB30_42:                              # %cond.false.154
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
.LBB30_43:                              # %cond.end.156
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI30_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI30_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI30_0, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
.LBB30_44:                              # %if.end.163
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB30_46
# BB#45:                                # %if.then.166
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB30_46:                              # %if.end.168
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB30_47:                              # %sw.epilog
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$14, %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	ja	.LBB30_121
# BB#124:                               # %sw.epilog
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	.LJTI30_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB30_48:                              # %sw.bb.173
	jmp	.LBB30_121
.LBB30_49:                              # %sw.bb.174
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB30_51
# BB#50:                                # %cond.true.177
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB30_52
.LBB30_51:                              # %cond.false.178
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB30_52:                              # %cond.end.179
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_121
.LBB30_53:                              # %sw.bb.181
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB30_55
# BB#54:                                # %cond.true.185
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB30_56
.LBB30_55:                              # %cond.false.187
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
.LBB30_56:                              # %cond.end.188
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_121
.LBB30_57:                              # %sw.bb.190
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB30_62
# BB#58:                                # %if.then.193
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB30_60
# BB#59:                                # %cond.true.197
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB30_61
.LBB30_60:                              # %cond.false.199
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB30_61:                              # %cond.end.200
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_62:                              # %if.end.202
	jmp	.LBB30_121
.LBB30_63:                              # %sw.bb.203
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_68
# BB#64:                                # %if.then.206
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB30_66
# BB#65:                                # %cond.true.210
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB30_67
.LBB30_66:                              # %cond.false.212
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB30_67:                              # %cond.end.213
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_68:                              # %if.end.215
	jmp	.LBB30_121
.LBB30_69:                              # %sw.bb.216
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	ucomisd	-48(%rbp), %xmm1
	jbe	.LBB30_71
# BB#70:                                # %cond.true.220
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	jmp	.LBB30_72
.LBB30_71:                              # %cond.false.222
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
.LBB30_72:                              # %cond.end.223
	movsd	-336(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_121
.LBB30_73:                              # %sw.bb.225
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB30_78
# BB#74:                                # %if.then.228
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	ucomisd	-48(%rbp), %xmm1
	jbe	.LBB30_76
# BB#75:                                # %cond.true.232
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -344(%rbp)       # 8-byte Spill
	jmp	.LBB30_77
.LBB30_76:                              # %cond.false.234
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB30_77:                              # %cond.end.235
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_78:                              # %if.end.237
	jmp	.LBB30_121
.LBB30_79:                              # %sw.bb.238
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_84
# BB#80:                                # %if.then.241
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	ucomisd	-48(%rbp), %xmm1
	jbe	.LBB30_82
# BB#81:                                # %cond.true.245
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	jmp	.LBB30_83
.LBB30_82:                              # %cond.false.247
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
.LBB30_83:                              # %cond.end.248
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_84:                              # %if.end.250
	jmp	.LBB30_121
.LBB30_85:                              # %sw.bb.251
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_87
# BB#86:                                # %cond.true.254
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	jmp	.LBB30_88
.LBB30_87:                              # %cond.false.255
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
.LBB30_88:                              # %cond.end.256
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_121
.LBB30_89:                              # %sw.bb.258
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_91
# BB#90:                                # %cond.true.262
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	jmp	.LBB30_92
.LBB30_91:                              # %cond.false.264
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
.LBB30_92:                              # %cond.end.265
	movsd	-368(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_121
.LBB30_93:                              # %sw.bb.267
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB30_98
# BB#94:                                # %if.then.270
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_96
# BB#95:                                # %cond.true.274
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	jmp	.LBB30_97
.LBB30_96:                              # %cond.false.276
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
.LBB30_97:                              # %cond.end.277
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_98:                              # %if.end.279
	jmp	.LBB30_121
.LBB30_99:                              # %sw.bb.280
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_104
# BB#100:                               # %if.then.283
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_102
# BB#101:                               # %cond.true.287
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	jmp	.LBB30_103
.LBB30_102:                             # %cond.false.289
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
.LBB30_103:                             # %cond.end.290
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_104:                             # %if.end.292
	jmp	.LBB30_121
.LBB30_105:                             # %sw.bb.293
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_107
# BB#106:                               # %cond.true.297
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	jmp	.LBB30_108
.LBB30_107:                             # %cond.false.299
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
.LBB30_108:                             # %cond.end.300
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB30_121
.LBB30_109:                             # %sw.bb.302
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB30_114
# BB#110:                               # %if.then.305
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_112
# BB#111:                               # %cond.true.309
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -400(%rbp)       # 8-byte Spill
	jmp	.LBB30_113
.LBB30_112:                             # %cond.false.311
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
.LBB30_113:                             # %cond.end.312
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_114:                             # %if.end.314
	jmp	.LBB30_121
.LBB30_115:                             # %sw.bb.315
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_120
# BB#116:                               # %if.then.318
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_118
# BB#117:                               # %cond.true.322
	movsd	.LCPI30_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -408(%rbp)       # 8-byte Spill
	jmp	.LBB30_119
.LBB30_118:                             # %cond.false.324
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
.LBB30_119:                             # %cond.end.325
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB30_120:                             # %if.end.327
	jmp	.LBB30_121
.LBB30_121:                             # %sw.epilog.328
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB30_122:                             # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end30:
	.size	logistic_function, .Lfunc_end30-logistic_function
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI30_0:
	.quad	.LBB30_1
	.quad	.LBB30_1
	.quad	.LBB30_2
	.quad	.LBB30_9
	.quad	.LBB30_10
	.quad	.LBB30_11
	.quad	.LBB30_12
	.quad	.LBB30_13
	.quad	.LBB30_14
	.quad	.LBB30_15
	.quad	.LBB30_19
	.quad	.LBB30_23
	.quad	.LBB30_35
.LJTI30_1:
	.quad	.LBB30_48
	.quad	.LBB30_49
	.quad	.LBB30_53
	.quad	.LBB30_69
	.quad	.LBB30_85
	.quad	.LBB30_89
	.quad	.LBB30_105
	.quad	.LBB30_57
	.quad	.LBB30_63
	.quad	.LBB30_73
	.quad	.LBB30_79
	.quad	.LBB30_93
	.quad	.LBB30_99
	.quad	.LBB30_109
	.quad	.LBB30_115

	.text
	.align	16, 0x90
	.type	CML_explorer_menu_entry_change_value,@function
CML_explorer_menu_entry_change_value:   # @CML_explorer_menu_entry_change_value
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	CML_explorer_menu_entry_change_value, .Lfunc_end31-CML_explorer_menu_entry_change_value
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_int_adjustment_update,@function
CML_explorer_int_adjustment_update:     # @CML_explorer_int_adjustment_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_int_adjustment_update
	callq	preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	CML_explorer_int_adjustment_update, .Lfunc_end32-CML_explorer_int_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	CML_explorer_int_entry_change_value,@function
CML_explorer_int_entry_change_value:    # @CML_explorer_int_entry_change_value
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cvtsi2sdl	(%rax), %xmm0
	callq	gtk_adjustment_set_value
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	CML_explorer_int_entry_change_value, .Lfunc_end33-CML_explorer_int_entry_change_value
	.cfi_endproc

	.align	16, 0x90
	.type	parse_line_to_gdouble,@function
parse_line_to_gdouble:                  # @parse_line_to_gdouble
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
	subq	$1072, %rsp             # imm = 0x430
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, (%rsi)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB34_11
.LBB34_2:                               # %if.end
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-1056(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB34_4
# BB#3:                                 # %if.then.1
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB34_11
.LBB34_4:                               # %if.end.2
	leaq	-1056(%rbp), %rax
	movq	%rax, -1064(%rbp)
.LBB34_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-1064(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB34_10
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-1064(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB34_8
# BB#7:                                 # %if.then.8
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB34_11
.LBB34_8:                               # %if.else
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-1064(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1064(%rbp)
# BB#9:                                 # %if.end.9
                                        #   in Loop: Header=BB34_5 Depth=1
	jmp	.LBB34_5
.LBB34_10:                              # %while.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-1064(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -8(%rbp)
.LBB34_11:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbp
	retq
.Lfunc_end34:
	.size	parse_line_to_gdouble, .Lfunc_end34-parse_line_to_gdouble
	.cfi_endproc

	.align	16, 0x90
	.type	parse_line_to_gint,@function
parse_line_to_gint:                     # @parse_line_to_gint
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
	subq	$1072, %rsp             # imm = 0x430
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, (%rsi)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB35_11
.LBB35_2:                               # %if.end
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-1056(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB35_4
# BB#3:                                 # %if.then.1
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB35_11
.LBB35_4:                               # %if.end.2
	leaq	-1056(%rbp), %rax
	movq	%rax, -1064(%rbp)
.LBB35_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-1064(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB35_10
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-1064(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB35_8
# BB#7:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB35_11
.LBB35_8:                               # %if.else
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-1064(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1064(%rbp)
# BB#9:                                 # %if.end.9
                                        #   in Loop: Header=BB35_5 Depth=1
	jmp	.LBB35_5
.LBB35_10:                              # %while.end
	movq	-1064(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -4(%rbp)
.LBB35_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbp
	retq
.Lfunc_end35:
	.size	parse_line_to_gint, .Lfunc_end35-parse_line_to_gint
	.cfi_endproc

	.align	16, 0x90
	.type	CML_compute_next_step,@function
CML_compute_next_step:                  # @CML_compute_next_step
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
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp126:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-92(%rbp), %esi
	movl	-12(%rbp), %edx
	cmpl	$0, -92(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jge	.LBB36_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB36_8
.LBB36_4:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_6
# BB#5:                                 # %cond.true.3
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB36_7
.LBB36_6:                               # %cond.false.4
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB36_7:                               # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB36_8:                               # %cond.end.5
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	cmpl	$0, -92(%rbp)
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jge	.LBB36_10
# BB#9:                                 # %cond.true.8
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB36_14
.LBB36_10:                              # %cond.false.10
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_12
# BB#11:                                # %cond.true.12
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB36_13
.LBB36_12:                              # %cond.false.14
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB36_13:                              # %cond.end.15
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB36_14:                              # %cond.end.17
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	cmpl	$0, -92(%rbp)
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	jge	.LBB36_16
# BB#15:                                # %cond.true.22
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB36_20
.LBB36_16:                              # %cond.false.24
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_18
# BB#17:                                # %cond.true.26
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB36_19
.LBB36_18:                              # %cond.false.28
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB36_19:                              # %cond.end.29
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB36_20:                              # %cond.end.31
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movabsq	$CML_explorer_vals, %rcx
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	(%rsi,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	-136(%rbp), %edx        # 4-byte Reload
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	CML_next_value
	movslq	-92(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	%xmm0, (%rdi,%rcx,8)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB36_1
.LBB36_22:                              # %for.end
	movl	$0, -92(%rbp)
.LBB36_23:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_44
# BB#24:                                # %for.body.39
                                        #   in Loop: Header=BB36_23 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-92(%rbp), %esi
	movl	-12(%rbp), %edx
	cmpl	$0, -92(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jge	.LBB36_26
# BB#25:                                # %cond.true.41
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB36_30
.LBB36_26:                              # %cond.false.43
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_28
# BB#27:                                # %cond.true.45
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB36_29
.LBB36_28:                              # %cond.false.47
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB36_29:                              # %cond.end.48
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB36_30:                              # %cond.end.50
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	cmpl	$0, -92(%rbp)
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jge	.LBB36_32
# BB#31:                                # %cond.true.55
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB36_36
.LBB36_32:                              # %cond.false.57
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_34
# BB#33:                                # %cond.true.59
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB36_35
.LBB36_34:                              # %cond.false.61
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB36_35:                              # %cond.end.62
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB36_36:                              # %cond.end.64
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	cmpl	$0, -92(%rbp)
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	jge	.LBB36_38
# BB#37:                                # %cond.true.69
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB36_42
.LBB36_38:                              # %cond.false.71
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_40
# BB#39:                                # %cond.true.73
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB36_41
.LBB36_40:                              # %cond.false.75
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB36_41:                              # %cond.end.76
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB36_42:                              # %cond.end.78
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movabsq	$CML_explorer_vals, %rcx
	addq	$104, %rcx
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	(%rsi,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movl	-192(%rbp), %edx        # 4-byte Reload
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	CML_next_value
	movslq	-92(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	%xmm0, (%rdi,%rcx,8)
# BB#43:                                # %for.inc.85
                                        #   in Loop: Header=BB36_23 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB36_23
.LBB36_44:                              # %for.end.87
	movl	$0, -92(%rbp)
.LBB36_45:                              # %for.cond.88
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_66
# BB#46:                                # %for.body.90
                                        #   in Loop: Header=BB36_45 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-92(%rbp), %esi
	movl	-12(%rbp), %edx
	cmpl	$0, -92(%rbp)
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jge	.LBB36_48
# BB#47:                                # %cond.true.92
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB36_52
.LBB36_48:                              # %cond.false.94
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_50
# BB#49:                                # %cond.true.96
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB36_51
.LBB36_50:                              # %cond.false.98
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB36_51:                              # %cond.end.99
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB36_52:                              # %cond.end.101
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	cmpl	$0, -92(%rbp)
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jge	.LBB36_54
# BB#53:                                # %cond.true.106
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB36_58
.LBB36_54:                              # %cond.false.108
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_56
# BB#55:                                # %cond.true.110
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB36_57
.LBB36_56:                              # %cond.false.112
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB36_57:                              # %cond.end.113
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB36_58:                              # %cond.end.115
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	cmpl	$0, -92(%rbp)
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	jge	.LBB36_60
# BB#59:                                # %cond.true.120
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-12(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB36_64
.LBB36_60:                              # %cond.false.122
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB36_62
# BB#61:                                # %cond.true.124
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB36_63
.LBB36_62:                              # %cond.false.126
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB36_63:                              # %cond.end.127
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB36_64:                              # %cond.end.129
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	movabsq	$CML_explorer_vals, %rcx
	addq	$208, %rcx
	movslq	%eax, %rdx
	movq	-88(%rbp), %rsi
	movq	(%rsi), %rsi
	movsd	(%rsi,%rdx,8), %xmm2    # xmm2 = mem[0],zero
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movl	-248(%rbp), %edx        # 4-byte Reload
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	CML_next_value
	movslq	-92(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	%xmm0, (%rdi,%rcx,8)
# BB#65:                                # %for.inc.136
                                        #   in Loop: Header=BB36_45 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB36_45
.LBB36_66:                              # %for.end.138
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	CML_compute_next_step, .Lfunc_end36-CML_compute_next_step
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4607182418800017408     # double 1
.LCPI37_1:
	.quad	4611686018427387904     # double 2
.LCPI37_2:
	.quad	-4616189618054758400    # double -1
.LCPI37_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	CML_next_value,@function
CML_next_value:                         # @CML_next_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$784, %rsp              # imm = 0x310
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rcx), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, %rdi
	subq	$9, %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	ja	.LBB37_95
# BB#143:                               # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI37_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB37_1:                               # %sw.bb
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	subsd	(%rcx,%rax,8), %xmm0
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	logistic_function
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$1, -108(%rbp)
.LBB37_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	32(%rdx), %esi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-148(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB37_17
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB37_2 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	jge	.LBB37_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB37_9
.LBB37_5:                               # %cond.false
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_7
# BB#6:                                 # %cond.true.12
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB37_8
.LBB37_7:                               # %cond.false.15
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB37_8:                               # %cond.end
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB37_9:                               # %cond.end.17
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	subsd	(%rdx,%rcx,8), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	jge	.LBB37_11
# BB#10:                                # %cond.true.27
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB37_15
.LBB37_11:                              # %cond.false.30
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_13
# BB#12:                                # %cond.true.33
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB37_14
.LBB37_13:                              # %cond.false.36
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB37_14:                              # %cond.end.38
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB37_15:                              # %cond.end.40
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	subsd	(%rdx,%rcx,8), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB37_2
.LBB37_17:                              # %for.end
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movl	32(%rcx), %edx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-212(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$1, %edx
	jne	.LBB37_31
# BB#18:                                # %if.then
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	jge	.LBB37_20
# BB#19:                                # %cond.true.54
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB37_24
.LBB37_20:                              # %cond.false.57
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_22
# BB#21:                                # %cond.true.60
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB37_23
.LBB37_22:                              # %cond.false.63
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB37_23:                              # %cond.end.65
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB37_24:                              # %cond.end.67
	movl	-236(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	subsd	(%rdx,%rcx,8), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-232(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	jge	.LBB37_26
# BB#25:                                # %cond.true.77
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB37_30
.LBB37_26:                              # %cond.false.80
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_28
# BB#27:                                # %cond.true.83
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB37_29
.LBB37_28:                              # %cond.false.86
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB37_29:                              # %cond.end.88
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB37_30:                              # %cond.end.90
	movl	-268(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	subsd	(%rdx,%rcx,8), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-264(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB37_31:                              # %if.end
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm1
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rdi
	subsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	%xmm2, -288(%rbp)       # 8-byte Spill
	callq	logistic_function
	movsd	.LCPI37_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	subsd	-32(%rbp), %xmm1
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movsd	%xmm2, -304(%rbp)       # 8-byte Spill
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-296(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdi
	mulsd	(%rdi,%rax,8), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_126
.LBB37_32:                              # %sw.bb.120
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	logistic_function
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$1, -108(%rbp)
.LBB37_33:                              # %for.cond.125
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	32(%rdx), %esi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-316(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB37_48
# BB#34:                                # %for.body.130
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB37_36
# BB#35:                                # %cond.true.134
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB37_40
.LBB37_36:                              # %cond.false.137
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_38
# BB#37:                                # %cond.true.141
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB37_39
.LBB37_38:                              # %cond.false.144
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB37_39:                              # %cond.end.146
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB37_40:                              # %cond.end.148
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	jge	.LBB37_42
# BB#41:                                # %cond.true.155
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB37_46
.LBB37_42:                              # %cond.false.158
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_44
# BB#43:                                # %cond.true.162
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB37_45
.LBB37_44:                              # %cond.false.165
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB37_45:                              # %cond.end.167
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB37_46:                              # %cond.end.169
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-340(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	-336(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	(%rdx,%rcx,8), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
# BB#47:                                # %for.inc.175
                                        #   in Loop: Header=BB37_33 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB37_33
.LBB37_48:                              # %for.end.177
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movl	32(%rcx), %edx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-348(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$1, %edx
	jne	.LBB37_62
# BB#49:                                # %if.then.182
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB37_51
# BB#50:                                # %cond.true.186
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB37_55
.LBB37_51:                              # %cond.false.189
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_53
# BB#52:                                # %cond.true.193
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB37_54
.LBB37_53:                              # %cond.false.196
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB37_54:                              # %cond.end.198
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB37_55:                              # %cond.end.200
	movl	-352(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	jge	.LBB37_57
# BB#56:                                # %cond.true.207
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB37_61
.LBB37_57:                              # %cond.false.210
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_59
# BB#58:                                # %cond.true.214
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB37_60
.LBB37_59:                              # %cond.false.217
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB37_60:                              # %cond.end.219
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB37_61:                              # %cond.end.221
	movl	-372(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI37_1, %xmm0        # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	(%rdx,%rcx,8), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-104(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
.LBB37_62:                              # %if.end.228
	movq	-40(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	logistic_function
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -400(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	logistic_function
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -416(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-416(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdi
	mulsd	(%rdi,%rax,8), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_126
.LBB37_63:                              # %sw.bb.251
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	logistic_function
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$1, -108(%rbp)
.LBB37_64:                              # %for.cond.257
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	32(%rdx), %esi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-428(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB37_79
# BB#65:                                # %for.body.262
                                        #   in Loop: Header=BB37_64 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	jge	.LBB37_67
# BB#66:                                # %cond.true.267
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB37_71
.LBB37_67:                              # %cond.false.270
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_69
# BB#68:                                # %cond.true.274
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB37_70
.LBB37_69:                              # %cond.false.277
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
.LBB37_70:                              # %cond.end.279
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB37_71:                              # %cond.end.281
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-452(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-448(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	jge	.LBB37_73
# BB#72:                                # %cond.true.291
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB37_77
.LBB37_73:                              # %cond.false.294
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_75
# BB#74:                                # %cond.true.298
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB37_76
.LBB37_75:                              # %cond.false.301
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB37_76:                              # %cond.end.303
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB37_77:                              # %cond.end.305
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-480(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-464(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
# BB#78:                                # %for.inc.313
                                        #   in Loop: Header=BB37_64 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB37_64
.LBB37_79:                              # %for.end.315
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movl	32(%rcx), %edx
	movl	%eax, -492(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-492(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$1, %edx
	jne	.LBB37_93
# BB#80:                                # %if.then.320
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	jge	.LBB37_82
# BB#81:                                # %cond.true.325
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB37_86
.LBB37_82:                              # %cond.false.328
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_84
# BB#83:                                # %cond.true.332
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB37_85
.LBB37_84:                              # %cond.false.335
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB37_85:                              # %cond.end.337
	movl	-520(%rbp), %eax        # 4-byte Reload
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB37_86:                              # %cond.end.339
	movl	-516(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-512(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -528(%rbp)       # 8-byte Spill
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	jge	.LBB37_88
# BB#87:                                # %cond.true.349
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB37_92
.LBB37_88:                              # %cond.false.352
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_90
# BB#89:                                # %cond.true.356
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB37_91
.LBB37_90:                              # %cond.false.359
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB37_91:                              # %cond.end.361
	movl	-552(%rbp), %eax        # 4-byte Reload
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB37_92:                              # %cond.end.363
	movl	-548(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-544(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-536(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-528(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB37_93:                              # %if.end.372
	movq	-40(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -568(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	logistic_function
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-560(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -584(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-576(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdi
	mulsd	(%rdi,%rax,8), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_126
.LBB37_94:                              # %sw.bb.393
	jmp	.LBB37_95
.LBB37_95:                              # %sw.default
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	logistic_function
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$1, -108(%rbp)
.LBB37_96:                              # %for.cond.398
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	32(%rdx), %esi
	movl	%eax, -596(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-596(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB37_111
# BB#97:                                # %for.body.403
                                        #   in Loop: Header=BB37_96 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	jge	.LBB37_99
# BB#98:                                # %cond.true.408
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB37_103
.LBB37_99:                              # %cond.false.411
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_101
# BB#100:                               # %cond.true.415
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB37_102
.LBB37_101:                             # %cond.false.418
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB37_102:                             # %cond.end.420
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB37_103:                             # %cond.end.422
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-616(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -632(%rbp)       # 8-byte Spill
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	jge	.LBB37_105
# BB#104:                               # %cond.true.432
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB37_109
.LBB37_105:                             # %cond.false.435
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_107
# BB#106:                               # %cond.true.439
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB37_108
.LBB37_107:                             # %cond.false.442
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB37_108:                             # %cond.end.444
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB37_109:                             # %cond.end.446
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-652(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-648(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-640(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-632(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
# BB#110:                               # %for.inc.454
                                        #   in Loop: Header=BB37_96 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB37_96
.LBB37_111:                             # %for.end.456
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	movl	32(%rcx), %edx
	movl	%eax, -660(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-660(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$1, %edx
	jne	.LBB37_125
# BB#112:                               # %if.then.461
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	$0, %ecx
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	jge	.LBB37_114
# BB#113:                               # %cond.true.466
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	jmp	.LBB37_118
.LBB37_114:                             # %cond.false.469
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_116
# BB#115:                               # %cond.true.473
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jmp	.LBB37_117
.LBB37_116:                             # %cond.false.476
	movl	-12(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
.LBB37_117:                             # %cond.end.478
	movl	-688(%rbp), %eax        # 4-byte Reload
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB37_118:                             # %cond.end.480
	movl	-684(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-680(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	-672(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	cmpl	$0, %eax
	movsd	%xmm1, -696(%rbp)       # 8-byte Spill
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	jge	.LBB37_120
# BB#119:                               # %cond.true.490
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB37_124
.LBB37_120:                             # %cond.false.493
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB37_122
# BB#121:                               # %cond.true.497
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB37_123
.LBB37_122:                             # %cond.false.500
	movl	-12(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB37_123:                             # %cond.end.502
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB37_124:                             # %cond.end.504
	movl	-716(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-712(%rbp), %rdi        # 8-byte Reload
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-704(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-696(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB37_125:                             # %if.end.513
	movq	-40(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -736(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	logistic_function
	movsd	-736(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -752(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	logistic_function
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-744(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-752(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-728(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdi
	mulsd	(%rdi,%rax,8), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB37_126:                             # %sw.epilog
	movq	gr, %rdi
	callq	g_rand_double
	movq	-40(%rbp), %rdi
	movsd	88(%rdi), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB37_128
# BB#127:                               # %if.then.536
	movq	gr, %rdi
	callq	g_rand_double
	movsd	.LCPI37_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI37_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI37_3, %xmm3        # xmm3 = mem[0],zero
	cmpltsd	%xmm3, %xmm0
	movaps	%xmm0, %xmm3
	andpd	%xmm1, %xmm3
	andnpd	%xmm2, %xmm0
	orpd	%xmm3, %xmm0
	movq	-40(%rbp), %rdi
	mulsd	96(%rdi), %xmm0
	movq	gr, %rdi
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	callq	g_rand_double
	movsd	-760(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB37_128:                             # %if.end.545
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB37_135
# BB#129:                               # %if.then.546
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB37_131
# BB#130:                               # %if.then.549
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_134
.LBB37_131:                             # %if.else
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB37_133
# BB#132:                               # %if.then.555
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-768(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB37_133:                             # %if.end.558
	jmp	.LBB37_134
.LBB37_134:                             # %if.end.559
	jmp	.LBB37_142
.LBB37_135:                             # %if.else.560
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB37_137
# BB#136:                               # %cond.true.563
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	jmp	.LBB37_141
.LBB37_137:                             # %cond.false.564
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB37_139
# BB#138:                               # %cond.true.567
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	jmp	.LBB37_140
.LBB37_139:                             # %cond.false.568
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
.LBB37_140:                             # %cond.end.569
	movsd	-784(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
.LBB37_141:                             # %cond.end.571
	movsd	-776(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB37_142:                             # %if.end.573
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$784, %rsp              # imm = 0x310
	popq	%rbp
	retq
.Lfunc_end37:
	.size	CML_next_value, .Lfunc_end37-CML_next_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI37_0:
	.quad	.LBB37_94
	.quad	.LBB37_32
	.quad	.LBB37_1
	.quad	.LBB37_94
	.quad	.LBB37_94
	.quad	.LBB37_94
	.quad	.LBB37_63
	.quad	.LBB37_63
	.quad	.LBB37_63
	.quad	.LBB37_94

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.args, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ru-_mode"
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
	.asciz	"Input image (not used)"
	.size	.L.str.3, 23

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
	.asciz	"parameter-filename"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of parameter file. CML_explorer makes an image with its settings."
	.size	.L.str.7, 75

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-cml-explorer"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Create abstract Coupled-Map Lattice patterns"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Make an image of Coupled-Map Lattice (CML). CML is a kind of Cellula Automata on continuous (value) domain. In GIMP_RUN_NONINTERACTIVE, the name of a prameter file is passed as the 4th arg. You can control CML_explorer via parameter file."
	.size	.L.str.10, 239

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Shuji Narazaki (narazaki@InetQ.or.jp); http://www.inetq.or.jp/~narazaki/TheGIMP/"
	.size	.L.str.11, 81

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Shuji Narazaki"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1997"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"CML _Explorer..."
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.16, 31

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	drawable_id,@object     # @drawable_id
	.local	drawable_id
	.comm	drawable_id,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	CML_explorer_vals,@object # @CML_explorer_vals
	.data
	.align	8
CML_explorer_vals:
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	4602678819172646912     # double 0.5
	.quad	4604480259023595110     # double 0.69999999999999996
	.long	2                       # 0x2
	.zero	4
	.quad	0                       # double 0
	.long	1                       # 0x1
	.zero	4
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4591870180066957722     # double 0.10000000000000001
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4603579539098121011     # double 0.59999999999999998
	.quad	4591870180066957722     # double 0.10000000000000001
	.long	2                       # 0x2
	.zero	4
	.quad	0                       # double 0
	.long	1                       # 0x1
	.zero	4
	.quad	4608983858650965606     # double 1.3999999999999999
	.quad	4606281698874543309     # double 0.90000000000000002
	.quad	0                       # double 0
	.quad	4606281698874543309     # double 0.90000000000000002
	.quad	0                       # double 0
	.quad	4591870180066957722     # double 0.10000000000000001
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4602678819172646912     # double 0.5
	.quad	4596373779694328218     # double 0.20000000000000001
	.long	2                       # 0x2
	.zero	4
	.quad	0                       # double 0
	.long	1                       # 0x1
	.zero	4
	.quad	4611686018427387904     # double 2
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4606281698874543309     # double 0.90000000000000002
	.quad	0                       # double 0
	.quad	4591870180066957722     # double 0.10000000000000001
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	256
	.size	CML_explorer_vals, 584

	.type	mem_chank0,@object      # @mem_chank0
	.local	mem_chank0
	.comm	mem_chank0,8,8
	.type	mem_chank1,@object      # @mem_chank1
	.local	mem_chank1
	.comm	mem_chank1,8,8
	.type	mem_chank2,@object      # @mem_chank2
	.local	mem_chank2
	.comm	mem_chank2,8,8
	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"cml-explorer"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Coupled-Map-Lattice Explorer"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-cml-explorer"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-cancel"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-ok"
	.size	.L.str.23, 7

	.type	CML_preview_defer,@object # @CML_preview_defer
	.local	CML_preview_defer
	.comm	CML_preview_defer,4,4
	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"New Seed"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"clicked"
	.size	.L.str.25, 8

	.type	random_sensitives,@object # @random_sensitives
	.local	random_sensitives
	.comm	random_sensitives,80,16
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Fix Seed"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Random Seed"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-open"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-save"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Hue"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Sat_uration"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Value"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Advanced"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Channel Independent Parameters"
	.size	.L.str.34, 31

	.type	initial_value_names,@object # @initial_value_names
	.data
	.align	16
initial_value_names:
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.size	initial_value_names, 80

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"changed"
	.size	.L.str.35, 8

	.type	widget_pointers,@object # @widget_pointers
	.local	widget_pointers
	.comm	widget_pointers,1440,16
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Initial value:"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Zoom scale:"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"label"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Start offset:"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Seed of Random (only for \"From Seed\" Modes)"
	.size	.L.str.40, 44

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Seed:"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Switch to \"From seed\" With the Last Seed"
	.size	.L.str.42, 41

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\"Fix seed\" button is an alias of me.\nThe same seed produces the same image, if (1) the widths of images are same (this is the reason why image on drawable is different from preview), and (2) all mutation rates equal to zero."
	.size	.L.str.43, 225

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"O_thers"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Copy Settings"
	.size	.L.str.45, 14

	.type	channel_names,@object   # @channel_names
	.data
	.align	16
channel_names:
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.size	channel_names, 24

	.type	copy_source,@object     # @copy_source
	.local	copy_source
	.comm	copy_source,4,4
	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"Source channel:"
	.size	.L.str.46, 16

	.type	copy_destination,@object # @copy_destination
	.local	copy_destination
	.comm	copy_destination,4,4
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Destination channel:"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Copy Parameters"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Selective Load Settings"
	.size	.L.str.49, 24

	.type	load_channel_names,@object # @load_channel_names
	.data
	.align	16
load_channel_names:
	.quad	.L.str.158
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.size	load_channel_names, 32

	.type	selective_load_source,@object # @selective_load_source
	.local	selective_load_source
	.comm	selective_load_source,4,4
	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"Source channel in file:"
	.size	.L.str.50, 24

	.type	selective_load_destination,@object # @selective_load_destination
	.local	selective_load_destination
	.comm	selective_load_destination,4,4
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Misc Ops."
	.size	.L.str.51, 11

	.type	img_stride,@object      # @img_stride
	.local	img_stride
	.comm	img_stride,4,4
	.type	img,@object             # @img
	.local	img
	.comm	img,8,8
	.type	buffer,@object          # @buffer
	.local	buffer
	.comm	buffer,8,8
	.type	CML_load_from_file_callback.dialog,@object # @CML_load_from_file_callback.dialog
	.local	CML_load_from_file_callback.dialog
	.comm	CML_load_from_file_callback.dialog,8,8
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Load CML Explorer Parameters"
	.size	.L.str.52, 29

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"response"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"delete-event"
	.size	.L.str.54, 13

	.type	CML_save_to_file_callback.dialog,@object # @CML_save_to_file_callback.dialog
	.local	CML_save_to_file_callback.dialog
	.comm	CML_save_to_file_callback.dialog,8,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Save CML Explorer Parameters"
	.size	.L.str.55, 29

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"wb"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.57, 36

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"; This is a parameter file for CML_explorer\n"
	.size	.L.str.58, 45

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"; File format version: %1.1f\n"
	.size	.L.str.59, 30

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	";\n"
	.size	.L.str.60, 3

	.type	channel_params,@object  # @channel_params
	.data
	.align	16
channel_params:
	.quad	CML_explorer_vals
	.quad	CML_explorer_vals+104
	.quad	CML_explorer_vals+208
	.size	channel_params, 24

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"\t%s\n"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Function_type    : %d (%s)\n"
	.size	.L.str.62, 28

	.type	function_names,@object  # @function_names
	.data
	.align	16
function_names:
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.size	function_names, 104

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"Compostion_type  : %d (%s)\n"
	.size	.L.str.63, 28

	.type	composition_names,@object # @composition_names
	.data
	.align	16
composition_names:
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.size	composition_names, 120

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"Arrange          : %d (%s)\n"
	.size	.L.str.64, 28

	.type	arrange_names,@object   # @arrange_names
	.data
	.align	16
arrange_names:
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.size	arrange_names, 80

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"Cyclic_range     : %d (%s)\n"
	.size	.L.str.65, 28

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"TRUE"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"FALSE"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Mod. rate        : %s\n"
	.size	.L.str.68, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Env_sensitivtiy  : %s\n"
	.size	.L.str.69, 23

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Diffusion dist.  : %d\n"
	.size	.L.str.70, 23

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Ch. sensitivity  : %s\n"
	.size	.L.str.71, 23

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Num. of Subranges: %d\n"
	.size	.L.str.72, 23

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Power_factor     : %s\n"
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Parameter_k      : %s\n"
	.size	.L.str.74, 23

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Range_low        : %s\n"
	.size	.L.str.75, 23

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Range_high       : %s\n"
	.size	.L.str.76, 23

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Mutation_rate    : %s\n"
	.size	.L.str.77, 23

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Mutation_distance: %s\n"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\n"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Initial value  : %d (%s)\n"
	.size	.L.str.80, 26

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Zoom scale     : %d\n"
	.size	.L.str.81, 21

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Start offset   : %d\n"
	.size	.L.str.82, 21

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Random seed    : %d\n"
	.size	.L.str.83, 21

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Parameters were saved to '%s'"
	.size	.L.str.84, 30

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Keep image's values"
	.size	.L.str.85, 20

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Keep the first value"
	.size	.L.str.86, 21

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Fill with parameter k"
	.size	.L.str.87, 22

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"k{x(1-x)}^p"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"k{x(1-x)}^p stepped"
	.size	.L.str.89, 20

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"kx^p"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"kx^p stepped"
	.size	.L.str.91, 13

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"k(1-x^p)"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"k(1-x^p) stepped"
	.size	.L.str.93, 17

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Delta function"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Delta function stepped"
	.size	.L.str.95, 23

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"sin^p-based function"
	.size	.L.str.96, 21

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"sin^p, stepped"
	.size	.L.str.97, 15

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"None"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Max (x, -)"
	.size	.L.str.99, 11

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Max (x+d, -)"
	.size	.L.str.100, 13

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Max (x-d, -)"
	.size	.L.str.101, 13

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Min (x, -)"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Min (x+d, -)"
	.size	.L.str.103, 13

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Min (x-d, -)"
	.size	.L.str.104, 13

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Max (x+d, -), (x < 0.5)"
	.size	.L.str.105, 24

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Max (x+d, -), (0.5 < x)"
	.size	.L.str.106, 24

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Max (x-d, -), (x < 0.5)"
	.size	.L.str.107, 24

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Max (x-d, -), (0.5 < x)"
	.size	.L.str.108, 24

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Min (x+d, -), (x < 0.5)"
	.size	.L.str.109, 24

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Min (x+d, -), (0.5 < x)"
	.size	.L.str.110, 24

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Min (x-d, -), (x < 0.5)"
	.size	.L.str.111, 24

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Min (x-d, -), (0.5 < x)"
	.size	.L.str.112, 24

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Standard"
	.size	.L.str.113, 9

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Use average value"
	.size	.L.str.114, 18

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Use reverse value"
	.size	.L.str.115, 18

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"With random power (0,10)"
	.size	.L.str.116, 25

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"With random power (0,1)"
	.size	.L.str.117, 24

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"With gradient power (0,1)"
	.size	.L.str.118, 26

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Multiply rand. value (0,1)"
	.size	.L.str.119, 27

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Multiply rand. value (0,2)"
	.size	.L.str.120, 27

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Multiply gradient (0,1)"
	.size	.L.str.121, 24

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"With p and random (0,1)"
	.size	.L.str.122, 24

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Function type:"
	.size	.L.str.123, 15

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Composition:"
	.size	.L.str.124, 13

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Misc arrange:"
	.size	.L.str.125, 14

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Use cyclic range"
	.size	.L.str.126, 17

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Mod. rate:"
	.size	.L.str.127, 11

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Env. sensitivity:"
	.size	.L.str.128, 18

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Diffusion dist.:"
	.size	.L.str.129, 17

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"# of subranges:"
	.size	.L.str.130, 16

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"P(ower factor):"
	.size	.L.str.131, 16

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Parameter k:"
	.size	.L.str.132, 13

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Range low:"
	.size	.L.str.133, 11

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Range high:"
	.size	.L.str.134, 12

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Plot a Graph of the Settings"
	.size	.L.str.135, 29

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"toggled"
	.size	.L.str.136, 8

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"value-changed"
	.size	.L.str.137, 14

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Graph of the Current Settings"
	.size	.L.str.138, 30

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gtk-close"
	.size	.L.str.139, 10

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"expose-event"
	.size	.L.str.140, 13

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Ch. sensitivity:"
	.size	.L.str.141, 17

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Mutation rate:"
	.size	.L.str.142, 15

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Mutation dist.:"
	.size	.L.str.143, 16

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"All black"
	.size	.L.str.144, 10

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"All gray"
	.size	.L.str.145, 9

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"All white"
	.size	.L.str.146, 10

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"The first row of the image"
	.size	.L.str.147, 27

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Continuous gradient"
	.size	.L.str.148, 20

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Continuous grad. w/o gap"
	.size	.L.str.149, 25

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Random, ch. independent"
	.size	.L.str.150, 24

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Random shared"
	.size	.L.str.151, 14

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Randoms from seed"
	.size	.L.str.152, 18

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Randoms from seed (shared)"
	.size	.L.str.153, 27

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Hue"
	.size	.L.str.154, 4

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Saturation"
	.size	.L.str.155, 11

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Value"
	.size	.L.str.156, 6

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Warning: the source and the destination are the same channel."
	.size	.L.str.157, 62

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"(None)"
	.size	.L.str.158, 7

	.type	.LCML_load_parameter_file.old2new_function_id,@object # @CML_load_parameter_file.old2new_function_id
	.section	.rodata,"a",@progbits
	.align	16
.LCML_load_parameter_file.old2new_function_id:
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	2                       # 0x2
	.size	.LCML_load_parameter_file.old2new_function_id, 40

	.type	.L.str.159,@object      # @.str.159
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.159:
	.asciz	"rb"
	.size	.L.str.159, 3

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.160, 36

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Error: it's not CML parameter file."
	.size	.L.str.161, 36

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Warning: '%s' is an old format file."
	.size	.L.str.162, 37

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Warning: '%s' is a parameter file for a newer version of CML Explorer."
	.size	.L.str.163, 71

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"Error: failed to load parameters"
	.size	.L.str.164, 33

	.type	mem_chank0_size,@object # @mem_chank0_size
	.local	mem_chank0_size
	.comm	mem_chank0_size,4,4
	.type	mem_chank1_size,@object # @mem_chank1_size
	.local	mem_chank1_size
	.comm	mem_chank1_size,4,4
	.type	mem_chank2_size,@object # @mem_chank2_size
	.local	mem_chank2_size
	.comm	mem_chank2_size,4,4
	.type	gr,@object              # @gr
	.local	gr
	.comm	gr,8,8
	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"CML Explorer: evoluting"
	.size	.L.str.165, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
