	.text
	.file	"filter-pack.bc"
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
	subq	$216, %rsp
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
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	leaq	-112(%rbp), %r12
	movabsq	$.Lquery.args, %r13
	movl	$72, %r14d
                                        # kill: R14<def> R14D<kill>
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r12, %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r12, -152(%rbp)        # 8-byte Spill
	movq	%r15, -160(%rbp)        # 8-byte Spill
	movl	%r11d, -164(%rbp)       # 4-byte Spill
	movl	%ebx, -168(%rbp)        # 4-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movl	%r10d, -196(%rbp)       # 4-byte Spill
	callq	memcpy
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -200(%rbp)        # 4-byte Spill
	addq	$216, %rsp
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
	subq	$128, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -48(%rbp)
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
	movl	$21, run.values
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	callq	fp_init_filter_packs
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then
	movq	$0, mask
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_image_get_selection
	movl	%eax, %edi
	callq	gimp_drawable_get
	movq	%rax, mask
.LBB1_5:                                # %if.end
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_26
.LBB1_26:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_27
.LBB1_27:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.6, %rdi
	movabsq	$fpvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	drawable, %rsi
	movl	(%rsi), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_9
.LBB1_8:                                # %if.then.21
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	$0, -44(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_9:                                # %if.else.24
	callq	fp_dialog
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.27
	movl	$4, -44(%rbp)
.LBB1_11:                               # %if.end.28
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.29
	jmp	.LBB1_16
.LBB1_13:                               # %sw.bb.30
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	$1, -44(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.33
	movabsq	$.L.str.6, %rdi
	movabsq	$fpvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_23
# BB#17:                                # %if.then.35
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_21
# BB#18:                                # %if.then.39
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	drawable, %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	drawable, %rdi
	callq	fp
	cmpl	$0, -48(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.45
	movabsq	$.L.str.6, %rdi
	movabsq	$fpvals, %rax
	movl	$12344, %edx            # imm = 0x3038
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.47
	callq	gimp_displays_flush
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.49
	movl	$0, -44(%rbp)
.LBB1_22:                               # %if.end.50
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.51
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	cmpq	$0, mask
	je	.LBB1_25
# BB#24:                                # %if.then.53
	movq	mask, %rdi
	callq	gimp_drawable_detach
.LBB1_25:                               # %if.end.54
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	addq	$128, %rsp
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
	.type	fp_init_filter_packs,@function
fp_init_filter_packs:                   # @fp_init_filter_packs
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
	movl	$0, -4(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -8(%rbp)
.LBB3_3:                                # %for.cond.1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -8(%rbp)
	jge	.LBB3_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB3_3 Depth=2
	movabsq	$fpvals, %rax
	movq	%rax, %rcx
	addq	$9272, %rcx             # imm = 0x2438
	movq	%rax, %rdx
	addq	$3128, %rdx             # imm = 0xC38
	movq	%rax, %rsi
	addq	$6200, %rsi             # imm = 0x1838
	addq	$56, %rax
	movslq	-4(%rbp), %rdi
	movslq	-8(%rbp), %r8
	shlq	$10, %r8
	addq	%r8, %rax
	movl	$0, (%rax,%rdi,4)
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rdi
	shlq	$10, %rdi
	addq	%rdi, %rsi
	movl	$0, (%rsi,%rax,4)
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rdx
	movl	$0, (%rdx,%rax,4)
	movslq	-4(%rbp), %rax
	movslq	-8(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rcx
	movl	$0, (%rcx,%rax,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc.18
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end.20
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fp_init_filter_packs, .Lfunc_end3-fp_init_filter_packs
	.cfi_endproc

	.align	16, 0x90
	.type	fp_dialog,@function
fp_dialog:                              # @fp_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movq	drawable, %rdi
	movq	mask, %rsi
	cvttsd2si	fpvals+16, %edx
	movl	fpvals+32, %ecx
	callq	fp_reduce_image
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	movq	%rax, reduced
	callq	gimp_ui_init
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.22, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.23, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.24, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -116(%rbp)       # 4-byte Spill
	movl	%ebx, -120(%rbp)        # 4-byte Spill
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, dlg
	movq	dlg, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	dlg, %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.25, %rsi
	movabsq	$fp_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	dlg, %rdi
	movq	dlg, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	dlg, %rdi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	dlg, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	fp_advanced_dialog
	callq	fp_create_bna
	movq	%rax, -32(%rbp)
	movq	%rax, fp_frames
	callq	fp_create_rough
	movq	%rax, -64(%rbp)
	movq	%rax, fp_frames+16
	callq	fp_create_range
	movq	%rax, -72(%rbp)
	movq	%rax, fp_frames+24
	movq	dlg, %rdi
	callq	fp_create_circle_palette
	movq	%rax, -40(%rbp)
	movq	%rax, fp_frames+8
	movq	dlg, %rdi
	callq	fp_create_lnd
	movq	%rax, -48(%rbp)
	movq	%rax, fp_frames+40
	callq	fp_create_show
	movq	%rax, -56(%rbp)
	movq	%rax, fp_frames+32
	movq	dlg, %rdi
	callq	fp_create_msnls
	movq	%rax, -88(%rbp)
	movq	%rax, fp_frames+64
	callq	fp_create_pixels_select_by
	movq	%rax, -80(%rbp)
	movq	%rax, fp_frames+48
	callq	fp_create_control
	movl	$4, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, -96(%rbp)
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	dlg, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %r9d
	movl	$5, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-228(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-232(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$3, %r9d
	movl	$6, %r8d
	xorl	%r10d, %r10d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-252(%rbp), %ebx        # 4-byte Reload
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%ebx, %ecx
	movl	-256(%rbp), %r15d       # 4-byte Reload
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movl	%r15d, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -264(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -276(%rbp)        # 4-byte Spill
	movl	%r10d, -280(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$6, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -296(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$6, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$6, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -324(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	dlg, %rdi
	callq	gtk_widget_show
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	callq	gtk_main
	movl	FPint, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fp_dialog, .Lfunc_end4-fp_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	fp,@function
fp:                                     # @fp
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
	xorl	%esi, %esi
	movabsq	$fp_func, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterate2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fp, .Lfunc_end5-fp
	.cfi_endproc

	.align	16, 0x90
	.type	fp_reduce_image,@function
fp_reduce_image:                        # @fp_reduce_image
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	-56(%rbp), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, -84(%rbp)
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$32, %ecx
	movl	%ecx, %esi
	callq	g_malloc0_n
	movq	%rax, -112(%rbp)
	movl	-72(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_30
.LBB6_30:                               # %entry
	movl	-340(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_31
.LBB6_31:                               # %entry
	movl	-340(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_9
.LBB6_1:                                # %sw.bb
	movl	$0, -88(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movl	$0, -92(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -100(%rbp)
	jmp	.LBB6_10
.LBB6_2:                                # %sw.bb.3
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB6_29
.LBB6_4:                                # %if.end
	jmp	.LBB6_10
.LBB6_5:                                # %sw.bb.5
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %lor.lhs.false
	xorl	%eax, %eax
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-100(%rbp), %rdi
	movl	$2, %r8d
	movl	-88(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cltd
	idivl	%r8d
	subl	%eax, %r9d
	movl	-92(%rbp), %eax
	movl	-100(%rbp), %r10d
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	movl	-364(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movl	-100(%rbp), %r10d
	shll	$1, %r10d
	movq	-56(%rbp), %r11
	movl	4(%r11), %ebx
	movq	-56(%rbp), %r11
	movl	8(%r11), %r14d
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movl	%r9d, %edi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	%eax, %edx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	-352(%rbp), %r8d        # 4-byte Reload
	movl	-352(%rbp), %r9d        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	-392(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-360(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	-384(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	-376(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB6_8
.LBB6_7:                                # %if.then.16
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB6_29
.LBB6_8:                                # %if.end.17
	jmp	.LBB6_10
.LBB6_9:                                # %sw.default
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB6_29
.LBB6_10:                               # %sw.epilog
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.LBB6_12
# BB#11:                                # %if.then.18
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
	cvtsi2sdl	-96(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -80(%rbp)
.LBB6_13:                               # %if.end.30
	movl	$1, %eax
	movl	%eax, %esi
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-84(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movl	-80(%rbp), %ecx
	imull	-76(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -272(%rbp)
	movl	-80(%rbp), %ecx
	imull	-76(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)
	movl	-96(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)
	movslq	-96(%rbp), %rdi
	callq	g_malloc_n
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %r10d
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpq	$0, -64(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.48
	leaq	-264(%rbp), %rdi
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.49
	movl	$255, %esi
	movq	-144(%rbp), %rdi
	movslq	-96(%rbp), %rdx
	callq	memset
.LBB6_16:                               # %if.end.51
	movl	$0, -152(%rbp)
.LBB6_17:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
	movl	-152(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB6_28
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB6_17 Depth=1
	leaq	-216(%rbp), %rdi
	cvtsi2sdl	-152(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -164(%rbp)
	movq	-128(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	-164(%rbp), %eax
	movl	-96(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	cmpq	$0, -64(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.61
                                        #   in Loop: Header=BB6_17 Depth=1
	leaq	-264(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	-164(%rbp), %eax
	movl	-96(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
.LBB6_20:                               # %if.end.63
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	$0, -156(%rbp)
.LBB6_21:                               # %for.cond.64
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB6_26
# BB#22:                                # %for.body.67
                                        #   in Loop: Header=BB6_21 Depth=2
	leaq	-304(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-80(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -160(%rbp)
	movslq	-160(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	addl	-156(%rbp), %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-160(%rbp), %eax
	imull	-84(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -145(%rbp)
	movl	-160(%rbp), %eax
	imull	-84(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -146(%rbp)
	movl	-160(%rbp), %eax
	imull	-84(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -147(%rbp)
	movb	-145(%rbp), %sil
	movb	-146(%rbp), %r8b
	movzbl	%sil, %esi
	movzbl	%r8b, %edx
	movzbl	-147(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-304(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	movb	-145(%rbp), %r8b
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	movq	-120(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	movb	-146(%rbp), %r8b
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-120(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	movb	-147(%rbp), %r8b
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-120(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	movq	-272(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rsi,8)
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-272(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rsi,8)
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-272(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rsi,8)
	cmpl	$4, -84(%rbp)
	jne	.LBB6_24
# BB#23:                                # %if.then.134
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-160(%rbp), %eax
	imull	-84(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-152(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	-156(%rbp), %edi
	imull	-84(%rbp), %edi
	addl	%edi, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB6_24:                               # %if.end.146
                                        #   in Loop: Header=BB6_21 Depth=2
	jmp	.LBB6_25
.LBB6_25:                               # %for.inc
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB6_21
.LBB6_26:                               # %for.end
                                        #   in Loop: Header=BB6_17 Depth=1
	jmp	.LBB6_27
.LBB6_27:                               # %for.inc.147
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB6_17
.LBB6_28:                               # %for.end.149
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	movl	-80(%rbp), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-76(%rbp), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	movq	-272(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-136(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	%rcx, 24(%rdi)
	movq	-112(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB6_29:                               # %return
	movq	-48(%rbp), %rax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fp_reduce_image, .Lfunc_end6-fp_reduce_image
	.cfi_endproc

	.align	16, 0x90
	.type	fp_response,@function
fp_response:                            # @fp_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_5
.LBB7_5:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB7_3
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	callq	fp_reset_filter_packs
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb.1
	movl	$1, FPint
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB7_4
.LBB7_3:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB7_4:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fp_response, .Lfunc_end7-fp_response
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
.LCPI8_1:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_2:
	.quad	4632233691727265792     # double 50
.LCPI8_3:
	.quad	4638496509959077888     # double 125
.LCPI8_4:
	.quad	4617315517961601024     # double 5
.LCPI8_5:
	.quad	4607182418800017408     # double 1
.LCPI8_6:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI8_7:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	fp_advanced_dialog,@function
fp_advanced_dialog:                     # @fp_advanced_dialog
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
	subq	$608, %rsp              # imm = 0x260
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	.Lfp_advanced_dialog.rangeNames, %rdi
	movq	%rdi, -32(%rbp)
	movq	.Lfp_advanced_dialog.rangeNames+8, %rdi
	movq	%rdi, -24(%rbp)
	movq	.Lfp_advanced_dialog.rangeNames+16, %rdi
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	gtk_window_new
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, AW
	movq	AW, %rdi
	callq	gimp_help_connect
	movq	AW, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_title
	movq	AW, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movabsq	$.L.str.31, %rsi
	movabsq	$sub_dialog_destroy, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	AW, %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	AW, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
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
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_1, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movl	$1, %esi
	movss	%xmm0, -220(%rbp)       # 4-byte Spill
	movss	-220(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_aspect_frame_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -268(%rbp)       # 4-byte Spill
	movss	-268(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -272(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-272(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-272(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$128, %edx
	movq	%rax, AW+16
	movq	AW+16, %rdi
	callq	gtk_widget_set_size_request
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	AW+16, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	AW+16, %rdi
	callq	gtk_widget_show
	movq	AW+16, %rdi
	callq	fp_create_smoothness_graph
	callq	gimp_preview_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$15, %edx
	movq	%rax, AW+8
	movq	AW+8, %rdi
	callq	gtk_widget_set_size_request
	movq	-120(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	AW+8, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	AW+8, %rdi
	callq	gtk_widget_show
	movq	AW+8, %rdi
	movl	fpvals+28, %esi
	callq	fp_range_preview_spill
	movl	$3, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movl	$264, %esi              # imm = 0x108
	movl	$15, %edx
	movq	%rax, AW+24
	movq	AW+24, %rdi
	callq	gtk_widget_set_size_request
	movq	-112(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	AW+24, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	AW+24, %rdi
	callq	gtk_widget_show
	movl	$4906, %esi             # imm = 0x132A
	movq	AW+24, %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.33, %rsi
	movabsq	$fp_range_change_events, %rax
	movabsq	$fpvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	AW+24, %r10
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$0, -124(%rbp)
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -124(%rbp)
	jge	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.34, %rdi
	callq	gtk_label_new
	movl	$4, %ecx
	movslq	-124(%rbp), %rdi
	movq	%rax, fp_widgets+24(,%rdi,8)
	movq	%rax, -88(%rbp)
	movl	-124(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %ecx
	movl	-124(%rbp), %edx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-32(%rbp,%rsi,8), %rdi
	callq	gettext
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$700, %ecx              # imm = 0x2BC
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-88(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -396(%rbp)       # 4-byte Spill
	movss	-396(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %ecx
	xorl	%edx, %edx
	movl	$4, %r8d
	movq	-88(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	movl	%edx, -420(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	-124(%rbp), %r9d
	movl	%r9d, %eax
	movl	%edx, -424(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	addl	$1, %edx
	movl	-124(%rbp), %r9d
	movl	%r9d, %eax
	movl	%edx, -428(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	-124(%rbp), %r9d
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	addl	$1, %eax
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	-424(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, %edx
	movl	-428(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-432(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$5, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI8_7, %xmm4         # xmm4 = mem[0],zero
	movsd	fpvals+8, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-448(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	gtk_scale_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -72(%rbp)
	movq	%rax, fp_widgets+8
	movq	-72(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	movq	-72(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_value_pos
	movq	-80(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %ecx        # 4-byte Reload
	movl	-476(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rsi
	movabsq	$fp_scale_update, %rax
	movabsq	$fpvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	fpvals+16, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-520(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-520(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	gtk_scale_new
	movq	%rax, -72(%rbp)
	movq	%rax, fp_widgets+16
	movq	-80(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	movl	-532(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$100, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	movq	-72(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_value_pos
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rsi
	movabsq	$fp_preview_scale_update, %rax
	movabsq	$fpvals, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	update_range_labels
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fp_advanced_dialog, .Lfunc_end8-fp_advanced_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_bna,@function
fp_create_bna:                          # @fp_create_bna
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
	subq	$160, %rsp
	movabsq	$origPreview, %rdi
	leaq	-24(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$curPreview, %rdi
	leaq	-32(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-104(%rbp), %r9d        # 4-byte Reload
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-120(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	fp_create_bna, .Lfunc_end9-fp_create_bna
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI10_2:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	fp_create_rough,@function
fp_create_rough:                        # @fp_create_rough
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movsd	fpvals, %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	callq	gtk_scale_new
	movl	$60, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -24(%rbp)
	movq	%rax, fp_widgets
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_value_pos
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rsi
	movabsq	$fp_scale_update, %rax
	movabsq	$fpvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fp_create_rough, .Lfunc_end10-fp_create_rough
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_range,@function
fp_create_range:                        # @fp_create_range
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp49:
	.cfi_offset %rbx, -32
.Ltmp50:
	.cfi_offset %r14, -24
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movl	fpvals+24, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.46, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$fp_change_current_range, %rcx
	movabsq	$fpvals, %rdx
	addq	$24, %rdx
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	movl	%esi, %r9d
	movl	$2, %esi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fp_create_range, .Lfunc_end11-fp_create_range
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_circle_palette,@function
fp_create_circle_palette:               # @fp_create_circle_palette
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
	subq	$384, %rsp              # imm = 0x180
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	gtk_window_new
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	gimp_help_connect
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_title
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movabsq	$.L.str.31, %rsi
	movabsq	$sub_dialog_destroy, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$11, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-136(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$rPreview, %rdi
	leaq	-32(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$gPreview, %rdi
	leaq	-48(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$bPreview, %rdi
	leaq	-64(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$cPreview, %rdi
	leaq	-80(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$yPreview, %rdi
	leaq	-96(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$mPreview, %rdi
	leaq	-112(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$centerPreview, %rdi
	leaq	-128(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	leaq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	hue_red, %rdx
	callq	fp_create_table_entry
	leaq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	hue_green, %rdx
	callq	fp_create_table_entry
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	hue_blue, %rdx
	callq	fp_create_table_entry
	leaq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	hue_cyan, %rdx
	callq	fp_create_table_entry
	leaq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	hue_yellow, %rdx
	callq	fp_create_table_entry
	leaq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	hue_magenta, %rdx
	callq	fp_create_table_entry
	leaq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	current_val, %rdx
	callq	fp_create_table_entry
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %edx
	movl	$11, %ecx
	movl	$4, %r8d
	movl	$7, %r9d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -236(%rbp)       # 4-byte Spill
	movl	%r10d, -240(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$1, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -252(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$5, %ecx
	movl	$8, %r8d
	movl	$11, %r9d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -268(%rbp)       # 4-byte Spill
	movl	%r10d, -272(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$4, %r8d
	movl	$7, %r9d
	movl	$1, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -284(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %edx
	movl	$9, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$1, %r10d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -300(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %edx
	movl	$9, %ecx
	movl	$8, %r8d
	movl	$11, %r9d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -316(%rbp)       # 4-byte Spill
	movl	%r10d, -320(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %ecx
	movl	$7, %edx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-332(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-336(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -340(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -344(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-136(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fp_create_circle_palette, .Lfunc_end12-fp_create_circle_palette
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_lnd,@function
fp_create_lnd:                          # @fp_create_lnd
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
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	gtk_window_new
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_help_connect
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_title
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movabsq	$.L.str.31, %rsi
	movabsq	$sub_dialog_destroy, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$lighterPreview, %rdi
	leaq	-24(%rbp), %rsi
	movq	reduced, %rcx
	movl	(%rcx), %edx
	movq	reduced, %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	fp_create_preview
	movabsq	$middlePreview, %rdi
	leaq	-32(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$darkerPreview, %rdi
	leaq	-40(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	val_lighter, %rdx
	callq	fp_create_table_entry
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	current_val, %rdx
	callq	fp_create_table_entry
	leaq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	val_darker, %rdx
	callq	fp_create_table_entry
	movl	$1, %edi
	movl	$11, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$3, %edx
	movl	$1, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-168(%rbp), %r8d        # 4-byte Reload
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$7, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %edx
	movl	$11, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	fp_create_lnd, .Lfunc_end13-fp_create_lnd
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_show,@function
fp_create_show:                         # @fp_create_show
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movabsq	$.L.str.62, %rdi
	movl	fpvals+32, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.63, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.64, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$fp_change_selection, %rcx
	movabsq	$fpvals, %rdx
	addq	$32, %rdx
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	movl	%esi, %r9d
	movl	$2, %esi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	fp_create_show, .Lfunc_end14-fp_create_show
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_msnls,@function
fp_create_msnls:                        # @fp_create_msnls
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
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	gtk_window_new
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_help_connect
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_title
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movabsq	$.L.str.31, %rsi
	movabsq	$sub_dialog_destroy, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$minusSatPreview, %rdi
	leaq	-24(%rbp), %rsi
	movq	reduced, %rcx
	movl	(%rcx), %edx
	movq	reduced, %rcx
	movl	4(%rcx), %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	fp_create_preview
	movabsq	$SatPreview, %rdi
	leaq	-32(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	movabsq	$plusSatPreview, %rdi
	leaq	-40(%rbp), %rsi
	movq	reduced, %rax
	movl	(%rax), %edx
	movq	reduced, %rax
	movl	4(%rax), %ecx
	callq	fp_create_preview
	leaq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	sat_more, %rdx
	callq	fp_create_table_entry
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	current_val, %rdx
	callq	fp_create_table_entry
	leaq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	sat_less, %rdx
	callq	fp_create_table_entry
	movl	$1, %edi
	movl	$11, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$3, %edx
	movl	$1, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-168(%rbp), %r8d        # 4-byte Reload
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$7, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %edx
	movl	$11, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	fp_create_msnls, .Lfunc_end15-fp_create_msnls
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_pixels_select_by,@function
fp_create_pixels_select_by:             # @fp_create_pixels_select_by
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp68:
	.cfi_offset %rbx, -32
.Ltmp69:
	.cfi_offset %r14, -24
	movabsq	$.L.str.66, %rdi
	callq	gettext
	movabsq	$.L.str.67, %rdi
	movl	fpvals+28, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.68, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.69, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$fp_change_current_pixels_by, %rcx
	movabsq	$fpvals, %rdx
	addq	$28, %rdx
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	movl	%esi, %r9d
	movl	$2, %esi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fp_create_pixels_select_by, .Lfunc_end16-fp_create_pixels_select_by
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_control,@function
fp_create_control:                      # @fp_create_control
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
	subq	$96, %rsp
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -8(%rbp)
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.71, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$fp_show_hide_frame, %rsi
	movq	fp_frames+8, %rcx
	movzbl	fpvals+37, %edx
	andl	$2, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	fp_frames_checkbutton_in_box
	movabsq	$.L.str.72, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$fp_show_hide_frame, %rcx
	movq	fp_frames+64, %rdx
	movzbl	fpvals+37, %r8d
	andl	$4, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	fp_frames_checkbutton_in_box
	movabsq	$.L.str.73, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$fp_show_hide_frame, %rcx
	movq	fp_frames+40, %rdx
	movzbl	fpvals+37, %r8d
	andl	$8, %r8d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	fp_frames_checkbutton_in_box
	movabsq	$.L.str.74, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$fp_show_hide_frame, %rcx
	xorl	%r8d, %r8d
	movq	AW, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	fp_frames_checkbutton_in_box
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	fp_create_control, .Lfunc_end17-fp_create_control
	.cfi_endproc

	.align	16, 0x90
	.type	fp_refresh_previews,@function
fp_refresh_previews:                    # @fp_refresh_previews
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
	subq	$16, %rsp
	movabsq	$nudgeArray, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	fp_create_nudge
	xorl	%ecx, %ecx
	movq	origPreview, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	fp_render_preview
	movl	$1, %esi
	xorl	%edx, %edx
	movq	curPreview, %rdi
	callq	fp_render_preview
	movl	-4(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB18_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	xorl	%edx, %edx
	movq	rPreview, %rdi
	callq	fp_render_preview
	movl	$2, %esi
	movl	$1, %edx
	movq	gPreview, %rdi
	callq	fp_render_preview
	movl	$2, %edx
	movq	bPreview, %rdi
	movl	%edx, %esi
	callq	fp_render_preview
	movl	$2, %esi
	movl	$3, %edx
	movq	cPreview, %rdi
	callq	fp_render_preview
	movl	$2, %esi
	movl	$4, %edx
	movq	yPreview, %rdi
	callq	fp_render_preview
	movl	$2, %esi
	movl	$5, %edx
	movq	mPreview, %rdi
	callq	fp_render_preview
	movl	$1, %esi
	xorl	%edx, %edx
	movq	centerPreview, %rdi
	callq	fp_render_preview
.LBB18_2:                               # %if.end
	movl	-4(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then.3
	movl	$8, %esi
	movl	$1, %edx
	movq	lighterPreview, %rdi
	callq	fp_render_preview
	movl	$1, %esi
	xorl	%edx, %edx
	movq	middlePreview, %rdi
	callq	fp_render_preview
	movl	$8, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	darkerPreview, %rdi
	callq	fp_render_preview
.LBB18_4:                               # %if.end.4
	movl	-4(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB18_6
# BB#5:                                 # %if.then.7
	movl	$4, %esi
	movl	$1, %edx
	movq	plusSatPreview, %rdi
	callq	fp_render_preview
	movl	$1, %esi
	xorl	%edx, %edx
	movq	SatPreview, %rdi
	callq	fp_render_preview
	movl	$4, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	minusSatPreview, %rdi
	callq	fp_render_preview
.LBB18_6:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	fp_refresh_previews, .Lfunc_end18-fp_refresh_previews
	.cfi_endproc

	.align	16, 0x90
	.type	fp_reset_filter_packs,@function
fp_reset_filter_packs:                  # @fp_reset_filter_packs
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
	callq	fp_init_filter_packs
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	popq	%rbp
	retq
.Lfunc_end19:
	.size	fp_reset_filter_packs, .Lfunc_end19-fp_reset_filter_packs
	.cfi_endproc

	.align	16, 0x90
	.type	sub_dialog_destroy,@function
sub_dialog_destroy:                     # @sub_dialog_destroy
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	sub_dialog_destroy, .Lfunc_end20-sub_dialog_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_smoothness_graph,@function
fp_create_smoothness_graph:             # @fp_create_smoothness_graph
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
	subq	$99424, %rsp            # imm = 0x18460
	leaq	-99344(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	fp_create_nudge
	movl	$0, -99348(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	cmpl	$128, -99348(%rbp)
	jge	.LBB21_21
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$128, %eax
	subl	-99348(%rbp), %eax
	movl	%eax, -99360(%rbp)
	movl	$0, -99352(%rbp)
.LBB21_3:                               # %for.cond.1
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -99352(%rbp)      # imm = 0x100
	jge	.LBB21_19
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$32, %eax
	movl	-99348(%rbp), %ecx
	shll	$8, %ecx
	addl	-99352(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movb	$-1, -98320(%rbp,%rdx)
	movl	-99348(%rbp), %ecx
	shll	$8, %ecx
	addl	-99352(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movb	$-1, -98320(%rbp,%rdx)
	movl	-99348(%rbp), %ecx
	shll	$8, %ecx
	addl	-99352(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movb	$-1, -98320(%rbp,%rdx)
	movl	-99348(%rbp), %ecx
	movl	%eax, -99368(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-99368(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB21_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	$-1, -98320(%rbp,%rcx)
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$-128, -98320(%rbp,%rcx)
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	$-128, -98320(%rbp,%rcx)
.LBB21_6:                               # %if.end
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$32, %eax
	movl	-99352(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -99372(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-99372(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB21_8
# BB#7:                                 # %if.then.39
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	$-1, -98320(%rbp,%rcx)
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$-128, -98320(%rbp,%rcx)
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	$-128, -98320(%rbp,%rcx)
.LBB21_8:                               # %if.end.58
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$0, -99356(%rbp)
	movslq	-99352(%rbp), %rax
	movl	-99344(%rbp,%rax,4), %ecx
	cmpl	-99360(%rbp), %ecx
	jne	.LBB21_10
# BB#9:                                 # %if.then.62
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$1, -99356(%rbp)
.LBB21_10:                              # %if.end.63
                                        #   in Loop: Header=BB21_3 Depth=2
	cmpl	$255, -99352(%rbp)
	jge	.LBB21_15
# BB#11:                                # %if.then.65
                                        #   in Loop: Header=BB21_3 Depth=2
	movslq	-99352(%rbp), %rax
	movl	-99344(%rbp,%rax,4), %ecx
	movl	-99352(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	subl	-99344(%rbp,%rax,4), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -99364(%rbp)
	movl	-99360(%rbp), %eax
	movslq	-99352(%rbp), %rsi
	subl	-99344(%rbp,%rsi,4), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	-99364(%rbp), %eax
	jge	.LBB21_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-99360(%rbp), %eax
	movl	-99352(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	subl	-99344(%rbp,%rdx,4), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	-99364(%rbp), %eax
	jge	.LBB21_14
# BB#13:                                # %if.then.83
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$1, -99356(%rbp)
.LBB21_14:                              # %if.end.84
                                        #   in Loop: Header=BB21_3 Depth=2
	jmp	.LBB21_15
.LBB21_15:                              # %if.end.85
                                        #   in Loop: Header=BB21_3 Depth=2
	cmpl	$0, -99356(%rbp)
	je	.LBB21_17
# BB#16:                                # %if.then.87
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	$0, -98320(%rbp,%rcx)
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$0, -98320(%rbp,%rcx)
	movl	-99348(%rbp), %eax
	shll	$8, %eax
	addl	-99352(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	$0, -98320(%rbp,%rcx)
.LBB21_17:                              # %if.end.106
                                        #   in Loop: Header=BB21_3 Depth=2
	jmp	.LBB21_18
.LBB21_18:                              # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-99352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -99352(%rbp)
	jmp	.LBB21_3
.LBB21_19:                              # %for.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_20
.LBB21_20:                              # %for.inc.107
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-99348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -99348(%rbp)
	jmp	.LBB21_1
.LBB21_21:                              # %for.end.109
	movq	-8(%rbp), %rax
	movq	%rax, -99384(%rbp)      # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-99384(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$128, %r8d
	movl	$768, %r9d              # imm = 0x300
	leaq	-98320(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -99392(%rbp)      # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -99396(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-99396(%rbp), %r10d     # 4-byte Reload
	movl	%ecx, -99400(%rbp)      # 4-byte Spill
	movl	%r10d, %ecx
	movl	-99400(%rbp), %r11d     # 4-byte Reload
	movl	%r9d, -99404(%rbp)      # 4-byte Spill
	movl	%r11d, %r9d
	movq	-99392(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$768, 8(%rsp)           # imm = 0x300
	callq	gimp_preview_area_draw
	addq	$99424, %rsp            # imm = 0x18460
	popq	%rbp
	retq
.Lfunc_end21:
	.size	fp_create_smoothness_graph, .Lfunc_end21-fp_create_smoothness_graph
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
.LCPI22_1:
	.quad	4643176031446892544     # double 255
.LCPI22_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	fp_range_preview_spill,@function
fp_range_preview_spill:                 # @fp_range_preview_spill
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
	subq	$11728, %rsp            # imm = 0x2DD0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_3 Depth 2
	cmpl	$15, -16(%rbp)
	jge	.LBB22_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	$0, -20(%rbp)
.LBB22_3:                               # %for.cond.1
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB22_13
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	$32, %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -11620(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-11620(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB22_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	$-1, -11552(%rbp,%rcx)
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$-128, -11552(%rbp,%rcx)
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	$-128, -11552(%rbp,%rcx)
	jmp	.LBB22_11
.LBB22_6:                               # %if.else
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -11624(%rbp)      # 4-byte Spill
	je	.LBB22_8
	jmp	.LBB22_16
.LBB22_16:                              # %if.else
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-11624(%rbp), %eax      # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -11628(%rbp)      # 4-byte Spill
	je	.LBB22_9
	jmp	.LBB22_17
.LBB22_17:                              # %if.else
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-11624(%rbp), %eax      # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -11632(%rbp)      # 4-byte Spill
	jne	.LBB22_10
	jmp	.LBB22_7
.LBB22_7:                               # %sw.bb
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-20(%rbp), %eax
	movzbl	fpvals+36, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	movb	%dl, -11552(%rbp,%rsi)
	movl	-20(%rbp), %eax
	movzbl	fpvals+36, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movb	%dl, -11552(%rbp,%rsi)
	movl	-20(%rbp), %eax
	movzbl	fpvals+36, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movb	%dl, -11552(%rbp,%rsi)
	jmp	.LBB22_10
.LBB22_8:                               # %sw.bb.44
                                        #   in Loop: Header=BB22_3 Depth=2
	leaq	-11616(%rbp), %rdi
	movsd	.LCPI22_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI22_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movl	$256, %eax              # imm = 0x100
	movl	-20(%rbp), %ecx
	movzbl	fpvals+36, %edx
	subl	%edx, %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%eax, -11636(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-11636(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	callq	gimp_hsv_set
	leaq	-11616(%rbp), %rdi
	leaq	-11584(%rbp), %rsi
	callq	gimp_hsv_to_rgb
	leaq	-11584(%rbp), %rdi
	leaq	-11552(%rbp), %rsi
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %r8
	movq	%rsi, %r10
	addq	%r8, %r10
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %r8
	addq	%r8, %rsi
	movq	%rsi, -11648(%rbp)      # 8-byte Spill
	movq	%r9, %rsi
	movq	%r10, %rdx
	movq	-11648(%rbp), %rcx      # 8-byte Reload
	callq	gimp_rgb_get_uchar
	jmp	.LBB22_10
.LBB22_9:                               # %sw.bb.68
                                        #   in Loop: Header=BB22_3 Depth=2
	leaq	-11616(%rbp), %rdi
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	movl	$256, %eax              # imm = 0x100
	movl	-20(%rbp), %ecx
	movzbl	fpvals+36, %edx
	subl	%edx, %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%eax, -11652(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-11652(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm0, -11664(%rbp)     # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-11664(%rbp), %xmm2     # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_hsv_set
	leaq	-11616(%rbp), %rdi
	leaq	-11584(%rbp), %rsi
	callq	gimp_hsv_to_rgb
	leaq	-11584(%rbp), %rdi
	leaq	-11552(%rbp), %rsi
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %r8
	movq	%rsi, %r9
	addq	%r8, %r9
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %r8
	movq	%rsi, %r10
	addq	%r8, %r10
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	addl	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %r8
	addq	%r8, %rsi
	movq	%rsi, -11672(%rbp)      # 8-byte Spill
	movq	%r9, %rsi
	movq	%r10, %rdx
	movq	-11672(%rbp), %rcx      # 8-byte Reload
	callq	gimp_rgb_get_uchar
.LBB22_10:                              # %sw.epilog
                                        #   in Loop: Header=BB22_3 Depth=2
	jmp	.LBB22_11
.LBB22_11:                              # %if.end
                                        #   in Loop: Header=BB22_3 Depth=2
	jmp	.LBB22_12
.LBB22_12:                              # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_3
.LBB22_13:                              # %for.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_14
.LBB22_14:                              # %for.inc.93
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB22_1
.LBB22_15:                              # %for.end.95
	movq	-8(%rbp), %rax
	movq	%rax, -11680(%rbp)      # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-11680(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$15, %r8d
	movl	$768, %r9d              # imm = 0x300
	leaq	-11552(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -11688(%rbp)      # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -11692(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-11692(%rbp), %r10d     # 4-byte Reload
	movl	%ecx, -11696(%rbp)      # 4-byte Spill
	movl	%r10d, %ecx
	movl	-11696(%rbp), %r11d     # 4-byte Reload
	movl	%r9d, -11700(%rbp)      # 4-byte Spill
	movl	%r11d, %r9d
	movq	-11688(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$768, 8(%rsp)           # imm = 0x300
	callq	gimp_preview_area_draw
	addq	$11728, %rsp            # imm = 0x2DD0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	fp_range_preview_spill, .Lfunc_end22-fp_range_preview_spill
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	fp_range_change_events,@function
fp_range_change_events:                 # @fp_range_change_events
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	addl	$-2, %eax
	movl	%eax, %edx
	subl	$5, %eax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, -76(%rbp)         # 4-byte Spill
	ja	.LBB23_26
# BB#28:                                # %entry
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI23_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB23_1:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	draw_it
	jmp	.LBB23_27
.LBB23_2:                               # %sw.bb.1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movzbl	fpvals+38, %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	movzbl	fpvals+39, %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	movzbl	fpvals+36, %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB23_4
# BB#3:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
	movl	-48(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB23_5:                               # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	cmpl	-52(%rbp), %eax
	jge	.LBB23_10
# BB#6:                                 # %cond.true.20
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB23_8
# BB#7:                                 # %cond.true.23
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB23_9
.LBB23_8:                               # %cond.false.24
	movl	-48(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB23_9:                               # %cond.end.25
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB23_11
.LBB23_10:                              # %cond.false.27
	movl	-52(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB23_11:                              # %cond.end.28
	movl	-88(%rbp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_20
# BB#12:                                # %land.lhs.true
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB23_20
# BB#13:                                # %if.then
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB23_15
# BB#14:                                # %if.then.38
	movabsq	$fpvals, %rax
	addq	$38, %rax
	movq	%rax, fp_range_change_events.new
	jmp	.LBB23_19
.LBB23_15:                              # %if.else
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB23_17
# BB#16:                                # %if.then.41
	movabsq	$fpvals, %rax
	addq	$39, %rax
	movq	%rax, fp_range_change_events.new
	jmp	.LBB23_18
.LBB23_17:                              # %if.else.42
	movabsq	$fpvals, %rax
	addq	$36, %rax
	movq	%rax, fp_range_change_events.new
.LBB23_18:                              # %if.end
	jmp	.LBB23_19
.LBB23_19:                              # %if.end.43
	movq	AW+24(%rip), %rdi
	callq	gtk_widget_get_window
	movq	fp_range_change_events.new(%rip), %rdi
	movzbl	(%rdi), %esi
	movq	%rax, %rdi
	callq	slider_erase
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movb	%sil, %cl
	movq	fp_range_change_events.new, %rax
	movb	%cl, (%rax)
.LBB23_20:                              # %if.end.48
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	draw_it
	movq	AW+8, %rdi
	movl	fpvals+28, %esi
	callq	fp_range_preview_spill
	callq	update_range_labels
	movq	AW+16, %rdi
	callq	fp_create_smoothness_graph
	jmp	.LBB23_27
.LBB23_21:                              # %sw.bb.49
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	jmp	.LBB23_27
.LBB23_22:                              # %sw.bb.51
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jl	.LBB23_25
# BB#23:                                # %land.lhs.true.56
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jge	.LBB23_25
# BB#24:                                # %if.then.59
	movq	AW+24, %rdi
	callq	gtk_widget_get_window
	movq	fp_range_change_events.new, %rdi
	movzbl	(%rdi), %esi
	movq	%rax, %rdi
	callq	slider_erase
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	-60(%rbp), %esi
	movb	%sil, %cl
	movq	fp_range_change_events.new, %rax
	movb	%cl, (%rax)
	callq	draw_it
	movq	AW+8, %rdi
	movl	fpvals+28, %esi
	callq	fp_range_preview_spill
	callq	update_range_labels
	movq	AW+16, %rdi
	callq	fp_create_smoothness_graph
.LBB23_25:                              # %if.end.63
	movq	-40(%rbp), %rdi
	callq	gdk_event_request_motions
	jmp	.LBB23_27
.LBB23_26:                              # %sw.default
	jmp	.LBB23_27
.LBB23_27:                              # %sw.epilog
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	fp_range_change_events, .Lfunc_end23-fp_range_change_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_1
	.quad	.LBB23_22
	.quad	.LBB23_2
	.quad	.LBB23_26
	.quad	.LBB23_26
	.quad	.LBB23_21

	.text
	.align	16, 0x90
	.type	fp_scale_update,@function
fp_scale_update:                        # @fp_scale_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	fp_scale_update.prevValue, %xmm0 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB24_1
	jp	.LBB24_1
	jmp	.LBB24_5
.LBB24_1:                               # %if.then
	movabsq	$nudgeArray, %rdi
	callq	fp_create_nudge
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	cmpq	$0, AW
	je	.LBB24_4
# BB#2:                                 # %land.lhs.true
	movq	AW, %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB24_4
# BB#3:                                 # %if.then.5
	movq	AW+16, %rdi
	callq	fp_create_smoothness_graph
.LBB24_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, fp_scale_update.prevValue
.LBB24_5:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	fp_scale_update, .Lfunc_end24-fp_scale_update
	.cfi_endproc

	.align	16, 0x90
	.type	fp_preview_scale_update,@function
fp_preview_scale_update:                # @fp_preview_scale_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, fpvals+16
	callq	fp_redraw_all_windows
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	fp_preview_scale_update, .Lfunc_end25-fp_preview_scale_update
	.cfi_endproc

	.align	16, 0x90
	.type	update_range_labels,@function
update_range_labels:                    # @update_range_labels
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
	subq	$80, %rsp
	movq	fp_widgets+32, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$4, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.39, %rdx
	leaq	-4(%rbp), %rdi
	movzbl	fpvals+38, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	fp_widgets+48, %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-4(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	fp_widgets+64, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-4(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$4, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.39, %rdx
	leaq	-4(%rbp), %rdi
	movzbl	fpvals+39, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	fp_widgets+80, %rdx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-4(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	fp_widgets+96, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-4(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	fp_widgets+112, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	update_range_labels, .Lfunc_end26-update_range_labels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI27_1:
	.quad	4616189618054758400     # double 4
.LCPI27_2:
	.quad	4607182418800017408     # double 1
.LCPI27_3:
	.quad	4638707616191610880     # double 128
.LCPI27_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	fp_create_nudge,@function
fp_create_nudge:                        # @fp_create_nudge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_2, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	subsd	fpvals+8, %xmm0
	callq	pow
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	cmpl	$0, fpvals+24
	jne	.LBB27_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	movl	fpvals+24, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movzbl	fpvals+38(,%rcx), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB27_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	$2, %ecx
	movl	%eax, -12(%rbp)
	movl	fpvals+24, %eax
	movl	%eax, %edx
	movzbl	fpvals+38(,%rdx), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movsd	fpvals+8, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB27_4
	jp	.LBB27_4
	jmp	.LBB27_12
.LBB27_4:                               # %if.then
	movl	$0, -24(%rbp)
.LBB27_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB27_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB27_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB27_5 Depth=1
	movsd	.LCPI27_3, %xmm0        # xmm0 = mem[0],zero
	mulsd	fpvals, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-24(%rbp), %eax
	subl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	tanh
	movsd	.LCPI27_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_2, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB27_9
.LBB27_8:                               # %if.else
                                        #   in Loop: Header=BB27_5 Depth=1
	movsd	.LCPI27_3, %xmm0        # xmm0 = mem[0],zero
	mulsd	fpvals, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	tanh
	movsd	.LCPI27_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI27_2, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB27_9:                               # %if.end
                                        #   in Loop: Header=BB27_5 Depth=1
	jmp	.LBB27_10
.LBB27_10:                              # %for.inc
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB27_5
.LBB27_11:                              # %for.end
	jmp	.LBB27_21
.LBB27_12:                              # %if.else.32
	movl	$0, -24(%rbp)
.LBB27_13:                              # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB27_20
# BB#14:                                # %for.body.36
                                        #   in Loop: Header=BB27_13 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB27_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB27_13 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB27_17
# BB#16:                                # %cond.true.41
                                        #   in Loop: Header=BB27_13 Depth=1
	movsd	.LCPI27_3, %xmm0        # xmm0 = mem[0],zero
	mulsd	fpvals, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB27_18
.LBB27_17:                              # %cond.false.43
                                        #   in Loop: Header=BB27_13 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB27_18
.LBB27_18:                              # %cond.end.44
                                        #   in Loop: Header=BB27_13 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#19:                                # %for.inc.49
                                        #   in Loop: Header=BB27_13 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB27_13
.LBB27_20:                              # %for.end.51
	jmp	.LBB27_21
.LBB27_21:                              # %if.end.52
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	fp_create_nudge, .Lfunc_end27-fp_create_nudge
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4607182418800017408     # double 1
.LCPI28_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	draw_it,@function
draw_it:                                # @draw_it
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	AW+24, %rdi
	callq	gtk_widget_get_style
	movq	%rax, -16(%rbp)
	movq	AW+24, %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-16(%rbp), %rcx
	addq	$204, %rcx
	movzbl	fpvals+38, %edx
	movq	%rax, %rsi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-36(%rbp), %ecx         # 4-byte Reload
	callq	draw_slider
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-16(%rbp), %rdx
	addq	$204, %rdx
	movzbl	fpvals+39, %ecx
	movq	%rax, %rsi
	callq	draw_slider
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-16(%rbp), %rdx
	addq	$204, %rdx
	addq	$36, %rdx
	movzbl	fpvals+36, %ecx
	movq	%rax, %rsi
	callq	draw_slider
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	draw_it, .Lfunc_end28-draw_it
	.cfi_endproc

	.align	16, 0x90
	.type	slider_erase,@function
slider_erase:                           # @slider_erase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movl	$15, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	addl	$4, %esi
	subl	$7, %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gdk_window_clear_area
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	slider_erase, .Lfunc_end29-slider_erase
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4624070917402656768     # double 14
	.text
	.align	16, 0x90
	.type	draw_slider,@function
draw_slider:                            # @draw_slider
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	cairo_move_to
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	subl	$7, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	cairo_line_to
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	addl	$7, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	cairo_line_to
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-8(%rbp), %rdi
	callq	cairo_fill_preserve
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	draw_slider, .Lfunc_end30-draw_slider
	.cfi_endproc

	.align	16, 0x90
	.type	fp_redraw_all_windows,@function
fp_redraw_all_windows:                  # @fp_redraw_all_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	cmpq	$0, reduced
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	reduced, %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	reduced, %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	reduced, %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	reduced, %rax
	movq	%rax, %rdi
	callq	g_free
.LBB31_2:                               # %if.end
	movq	drawable, %rdi
	movq	mask, %rsi
	cvttsd2si	fpvals+16, %edx
	movl	fpvals+32, %ecx
	callq	fp_reduce_image
	movq	%rax, reduced
	movq	reduced, %rax
	movl	(%rax), %edi
	movq	reduced, %rax
	movl	4(%rax), %esi
	callq	fp_adjust_preview_sizes
	movq	fp_frames+8, %rdi
	callq	gtk_widget_queue_draw
	movq	fp_frames+64, %rdi
	callq	gtk_widget_queue_draw
	movq	fp_frames+40, %rdi
	callq	gtk_widget_queue_draw
	movq	dlg, %rdi
	callq	gtk_widget_queue_draw
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	popq	%rbp
	retq
.Lfunc_end31:
	.size	fp_redraw_all_windows, .Lfunc_end31-fp_redraw_all_windows
	.cfi_endproc

	.align	16, 0x90
	.type	fp_adjust_preview_sizes,@function
fp_adjust_preview_sizes:                # @fp_adjust_preview_sizes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	origPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	curPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	rPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	gPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	bPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	cPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	yPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	mPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	centerPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	lighterPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	darkerPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	middlePreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	minusSatPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	SatPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	plusSatPreview, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gtk_widget_set_size_request
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	fp_adjust_preview_sizes, .Lfunc_end32-fp_adjust_preview_sizes
	.cfi_endproc

	.align	16, 0x90
	.type	fp_create_preview,@function
fp_create_preview:                      # @fp_create_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, %rdi
	callq	gtk_frame_new
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.43, %rsi
	movabsq	$fp_preview_size_allocate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r8
	movq	(%r8), %r8
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	fp_create_preview, .Lfunc_end33-fp_create_preview
	.cfi_endproc

	.align	16, 0x90
	.type	fp_preview_size_allocate,@function
fp_preview_size_allocate:               # @fp_preview_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	fpvals+37, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	origPreview, %rsi
	jne	.LBB34_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	origPreview, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	fp_render_preview
	jmp	.LBB34_5
.LBB34_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	curPreview, %rax
	jne	.LBB34_4
# BB#3:                                 # %if.then.4
	movl	$1, %esi
	xorl	%edx, %edx
	movq	curPreview, %rdi
	callq	fp_render_preview
.LBB34_4:                               # %if.end
	jmp	.LBB34_5
.LBB34_5:                               # %if.end.5
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB34_27
# BB#6:                                 # %if.then.6
	movq	-8(%rbp), %rax
	cmpq	rPreview, %rax
	jne	.LBB34_8
# BB#7:                                 # %if.then.9
	movl	$2, %esi
	xorl	%edx, %edx
	movq	rPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_26
.LBB34_8:                               # %if.else.10
	movq	-8(%rbp), %rax
	cmpq	gPreview, %rax
	jne	.LBB34_10
# BB#9:                                 # %if.then.13
	movl	$2, %esi
	movl	$1, %edx
	movq	gPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_25
.LBB34_10:                              # %if.else.14
	movq	-8(%rbp), %rax
	cmpq	bPreview, %rax
	jne	.LBB34_12
# BB#11:                                # %if.then.17
	movl	$2, %eax
	movq	bPreview, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	fp_render_preview
	jmp	.LBB34_24
.LBB34_12:                              # %if.else.18
	movq	-8(%rbp), %rax
	cmpq	cPreview, %rax
	jne	.LBB34_14
# BB#13:                                # %if.then.21
	movl	$2, %esi
	movl	$3, %edx
	movq	cPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_23
.LBB34_14:                              # %if.else.22
	movq	-8(%rbp), %rax
	cmpq	yPreview, %rax
	jne	.LBB34_16
# BB#15:                                # %if.then.25
	movl	$2, %esi
	movl	$4, %edx
	movq	yPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_22
.LBB34_16:                              # %if.else.26
	movq	-8(%rbp), %rax
	cmpq	mPreview, %rax
	jne	.LBB34_18
# BB#17:                                # %if.then.29
	movl	$2, %esi
	movl	$5, %edx
	movq	mPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_21
.LBB34_18:                              # %if.else.30
	movq	-8(%rbp), %rax
	cmpq	centerPreview, %rax
	jne	.LBB34_20
# BB#19:                                # %if.then.33
	movl	$1, %esi
	xorl	%edx, %edx
	movq	centerPreview, %rdi
	callq	fp_render_preview
.LBB34_20:                              # %if.end.34
	jmp	.LBB34_21
.LBB34_21:                              # %if.end.35
	jmp	.LBB34_22
.LBB34_22:                              # %if.end.36
	jmp	.LBB34_23
.LBB34_23:                              # %if.end.37
	jmp	.LBB34_24
.LBB34_24:                              # %if.end.38
	jmp	.LBB34_25
.LBB34_25:                              # %if.end.39
	jmp	.LBB34_26
.LBB34_26:                              # %if.end.40
	jmp	.LBB34_27
.LBB34_27:                              # %if.end.41
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB34_37
# BB#28:                                # %if.then.44
	movq	-8(%rbp), %rax
	cmpq	lighterPreview, %rax
	jne	.LBB34_30
# BB#29:                                # %if.then.47
	movl	$8, %esi
	movl	$1, %edx
	movq	lighterPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_36
.LBB34_30:                              # %if.else.48
	movq	-8(%rbp), %rax
	cmpq	middlePreview, %rax
	jne	.LBB34_32
# BB#31:                                # %if.then.51
	movl	$1, %esi
	xorl	%edx, %edx
	movq	middlePreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_35
.LBB34_32:                              # %if.else.52
	movq	-8(%rbp), %rax
	cmpq	darkerPreview, %rax
	jne	.LBB34_34
# BB#33:                                # %if.then.55
	movl	$8, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	darkerPreview, %rdi
	callq	fp_render_preview
.LBB34_34:                              # %if.end.56
	jmp	.LBB34_35
.LBB34_35:                              # %if.end.57
	jmp	.LBB34_36
.LBB34_36:                              # %if.end.58
	jmp	.LBB34_37
.LBB34_37:                              # %if.end.59
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB34_47
# BB#38:                                # %if.then.62
	movq	-8(%rbp), %rax
	cmpq	plusSatPreview, %rax
	jne	.LBB34_40
# BB#39:                                # %if.then.65
	movl	$4, %esi
	movl	$1, %edx
	movq	plusSatPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_46
.LBB34_40:                              # %if.else.66
	movq	-8(%rbp), %rax
	cmpq	SatPreview, %rax
	jne	.LBB34_42
# BB#41:                                # %if.then.69
	movl	$1, %esi
	xorl	%edx, %edx
	movq	SatPreview, %rdi
	callq	fp_render_preview
	jmp	.LBB34_45
.LBB34_42:                              # %if.else.70
	movq	-8(%rbp), %rax
	cmpq	minusSatPreview, %rax
	jne	.LBB34_44
# BB#43:                                # %if.then.73
	movl	$4, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	minusSatPreview, %rdi
	callq	fp_render_preview
.LBB34_44:                              # %if.end.74
	jmp	.LBB34_45
.LBB34_45:                              # %if.end.75
	jmp	.LBB34_46
.LBB34_46:                              # %if.end.76
	jmp	.LBB34_47
.LBB34_47:                              # %if.end.77
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	fp_preview_size_allocate, .Lfunc_end34-fp_preview_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	fp_render_preview,@function
fp_render_preview:                      # @fp_render_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$3328, %rsp             # imm = 0xD00
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	drawable, %rdi
	movl	12(%rdi), %eax
	movl	%eax, -32(%rbp)
	movq	reduced, %rdi
	movl	(%rdi), %eax
	movl	%eax, -76(%rbp)
	movq	reduced, %rdi
	movl	4(%rdi), %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	shll	$2, %eax
	imull	-80(%rbp), %eax
	movslq	%eax, %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	cmpl	$4, -12(%rbp)
	jne	.LBB35_10
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
.LBB35_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_4 Depth 2
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB35_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	$0, -64(%rbp)
.LBB35_4:                               # %for.cond.5
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -64(%rbp)
	jge	.LBB35_7
# BB#5:                                 # %for.body.8
                                        #   in Loop: Header=BB35_4 Depth=2
	leaq	-3184(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax,%rcx,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB35_4 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB35_4
.LBB35_7:                               # %for.end
                                        #   in Loop: Header=BB35_2 Depth=1
	leaq	-3184(%rbp), %rax
	movl	$256, %ecx              # imm = 0x100
	movl	-16(%rbp), %edx
	movl	-44(%rbp), %esi
	movzbl	fpvals+36, %edi
	addl	%edi, %esi
	movq	%rax, -3200(%rbp)       # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -3204(%rbp)       # 4-byte Spill
	cltd
	idivl	%ecx
	movslq	%edx, %r8
	movl	-3204(%rbp), %ecx       # 4-byte Reload
	imull	nudgeArray(,%r8,4), %ecx
	movslq	-44(%rbp), %r8
	movslq	fpvals+28, %r9
	shlq	$10, %r9
	movq	-3200(%rbp), %r10       # 8-byte Reload
	addq	%r9, %r10
	addl	(%r10,%r8,4), %ecx
	movl	%ecx, (%r10,%r8,4)
# BB#8:                                 # %for.inc.20
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB35_2
.LBB35_9:                               # %for.end.22
	jmp	.LBB35_10
.LBB35_10:                              # %if.end
	movl	$0, -36(%rbp)
.LBB35_11:                              # %for.cond.23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_13 Depth 2
                                        #       Child Loop BB35_33 Depth 3
                                        #       Child Loop BB35_40 Depth 3
                                        #         Child Loop BB35_46 Depth 4
                                        #       Child Loop BB35_67 Depth 3
                                        #         Child Loop BB35_69 Depth 4
	movl	-36(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB35_115
# BB#12:                                # %for.body.26
                                        #   in Loop: Header=BB35_11 Depth=1
	movl	$0, -40(%rbp)
.LBB35_13:                              # %for.cond.27
                                        #   Parent Loop BB35_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_33 Depth 3
                                        #       Child Loop BB35_40 Depth 3
                                        #         Child Loop BB35_46 Depth 4
                                        #       Child Loop BB35_67 Depth 3
                                        #         Child Loop BB35_69 Depth 4
	movl	-40(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB35_113
# BB#14:                                # %for.body.30
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	reduced, %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, -104(%rbp)
	movl	%eax, -92(%rbp)
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	reduced, %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, -100(%rbp)
	movl	%eax, -88(%rbp)
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	reduced, %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, -96(%rbp)
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB35_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -3208(%rbp)       # 4-byte Spill
	jmp	.LBB35_17
.LBB35_16:                              # %cond.false
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -3208(%rbp)       # 4-byte Spill
.LBB35_17:                              # %cond.end
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3208(%rbp), %eax       # 4-byte Reload
	cmpl	-96(%rbp), %eax
	jge	.LBB35_22
# BB#18:                                # %cond.true.72
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB35_20
# BB#19:                                # %cond.true.77
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -3212(%rbp)       # 4-byte Spill
	jmp	.LBB35_21
.LBB35_20:                              # %cond.false.79
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -3212(%rbp)       # 4-byte Spill
.LBB35_21:                              # %cond.end.81
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3212(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3216(%rbp)       # 4-byte Spill
	jmp	.LBB35_23
.LBB35_22:                              # %cond.false.83
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-96(%rbp), %eax
	movl	%eax, -3216(%rbp)       # 4-byte Spill
.LBB35_23:                              # %cond.end.85
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3216(%rbp), %eax       # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.LBB35_25
# BB#24:                                # %cond.true.91
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -3220(%rbp)       # 4-byte Spill
	jmp	.LBB35_26
.LBB35_25:                              # %cond.false.93
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -3220(%rbp)       # 4-byte Spill
.LBB35_26:                              # %cond.end.95
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3220(%rbp), %eax       # 4-byte Reload
	cmpl	-96(%rbp), %eax
	jle	.LBB35_31
# BB#27:                                # %cond.true.100
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.LBB35_29
# BB#28:                                # %cond.true.105
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -3224(%rbp)       # 4-byte Spill
	jmp	.LBB35_30
.LBB35_29:                              # %cond.false.107
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -3224(%rbp)       # 4-byte Spill
.LBB35_30:                              # %cond.end.109
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3224(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3228(%rbp)       # 4-byte Spill
	jmp	.LBB35_32
.LBB35_31:                              # %cond.false.111
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-96(%rbp), %eax
	movl	%eax, -3228(%rbp)       # 4-byte Spill
.LBB35_32:                              # %cond.end.113
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3228(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -60(%rbp)
	movl	$0, -44(%rbp)
.LBB35_33:                              # %for.cond.116
                                        #   Parent Loop BB35_11 Depth=1
                                        #     Parent Loop BB35_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -44(%rbp)
	jge	.LBB35_39
# BB#34:                                # %for.body.119
                                        #   in Loop: Header=BB35_33 Depth=3
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	cmpl	-56(%rbp), %ecx
	je	.LBB35_37
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB35_33 Depth=3
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	cmpl	-52(%rbp), %ecx
	je	.LBB35_37
# BB#36:                                # %if.then.128
                                        #   in Loop: Header=BB35_33 Depth=3
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	movl	%ecx, -60(%rbp)
.LBB35_37:                              # %if.end.131
                                        #   in Loop: Header=BB35_33 Depth=3
	jmp	.LBB35_38
.LBB35_38:                              # %for.inc.132
                                        #   in Loop: Header=BB35_33 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB35_33
.LBB35_39:                              # %for.end.134
                                        #   in Loop: Header=BB35_13 Depth=2
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %rcx
	movq	reduced, %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$0, -64(%rbp)
.LBB35_40:                              # %for.cond.142
                                        #   Parent Loop BB35_11 Depth=1
                                        #     Parent Loop BB35_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB35_46 Depth 4
	cmpl	$3, -64(%rbp)
	jge	.LBB35_64
# BB#41:                                # %for.body.145
                                        #   in Loop: Header=BB35_40 Depth=3
	movslq	-64(%rbp), %rax
	cmpl	$0, fpvals+44(,%rax,4)
	jne	.LBB35_43
# BB#42:                                # %if.then.148
                                        #   in Loop: Header=BB35_40 Depth=3
	jmp	.LBB35_63
.LBB35_43:                              # %if.end.149
                                        #   in Loop: Header=BB35_40 Depth=3
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	reduced, %rsi
	movq	16(%rsi), %rsi
	mulsd	(%rsi,%rdx,8), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB35_62
# BB#44:                                # %if.then.161
                                        #   in Loop: Header=BB35_40 Depth=3
	movabsq	$fpvals, %rax
	addq	$9272, %rax             # imm = 0x2438
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rax
	cvtsi2sdl	(%rax,%rcx,4), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -3188(%rbp)
	movl	-52(%rbp), %esi
	cmpl	-56(%rbp), %esi
	je	.LBB35_61
# BB#45:                                # %if.then.171
                                        #   in Loop: Header=BB35_40 Depth=3
	movl	$0, -44(%rbp)
.LBB35_46:                              # %for.cond.172
                                        #   Parent Loop BB35_11 Depth=1
                                        #     Parent Loop BB35_13 Depth=2
                                        #       Parent Loop BB35_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -44(%rbp)
	jge	.LBB35_60
# BB#47:                                # %for.body.175
                                        #   in Loop: Header=BB35_46 Depth=4
	movslq	-44(%rbp), %rax
	movl	-92(%rbp,%rax,4), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB35_52
# BB#48:                                # %if.then.180
                                        #   in Loop: Header=BB35_46 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	addl	-3188(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	jle	.LBB35_50
# BB#49:                                # %cond.true.186
                                        #   in Loop: Header=BB35_46 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	addl	-3188(%rbp), %ecx
	movl	%ecx, -3232(%rbp)       # 4-byte Spill
	jmp	.LBB35_51
.LBB35_50:                              # %cond.false.190
                                        #   in Loop: Header=BB35_46 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -3232(%rbp)       # 4-byte Spill
.LBB35_51:                              # %cond.end.191
                                        #   in Loop: Header=BB35_46 Depth=4
	movl	-3232(%rbp), %eax       # 4-byte Reload
	movslq	-44(%rbp), %rcx
	movl	%eax, -104(%rbp,%rcx,4)
	jmp	.LBB35_58
.LBB35_52:                              # %if.else
                                        #   in Loop: Header=BB35_46 Depth=4
	movslq	-44(%rbp), %rax
	movl	-92(%rbp,%rax,4), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB35_57
# BB#53:                                # %if.then.199
                                        #   in Loop: Header=BB35_46 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	subl	-3188(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB35_55
# BB#54:                                # %cond.true.204
                                        #   in Loop: Header=BB35_46 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	subl	-3188(%rbp), %ecx
	movl	%ecx, -3236(%rbp)       # 4-byte Spill
	jmp	.LBB35_56
.LBB35_55:                              # %cond.false.208
                                        #   in Loop: Header=BB35_46 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -3236(%rbp)       # 4-byte Spill
.LBB35_56:                              # %cond.end.209
                                        #   in Loop: Header=BB35_46 Depth=4
	movl	-3236(%rbp), %eax       # 4-byte Reload
	movslq	-44(%rbp), %rcx
	movl	%eax, -104(%rbp,%rcx,4)
.LBB35_57:                              # %if.end.213
                                        #   in Loop: Header=BB35_46 Depth=4
	jmp	.LBB35_58
.LBB35_58:                              # %if.end.214
                                        #   in Loop: Header=BB35_46 Depth=4
	jmp	.LBB35_59
.LBB35_59:                              # %for.inc.215
                                        #   in Loop: Header=BB35_46 Depth=4
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB35_46
.LBB35_60:                              # %for.end.217
                                        #   in Loop: Header=BB35_40 Depth=3
	jmp	.LBB35_61
.LBB35_61:                              # %if.end.218
                                        #   in Loop: Header=BB35_40 Depth=3
	movabsq	$fpvals, %rax
	movq	%rax, %rcx
	addq	$3128, %rcx             # imm = 0xC38
	movq	%rax, %rdx
	addq	$6200, %rdx             # imm = 0x1838
	addq	$56, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rsi
	movslq	-64(%rbp), %rdi
	shlq	$10, %rdi
	addq	%rdi, %rax
	cvtsi2sdl	(%rax,%rsi,4), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -104(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-64(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rdx
	cvtsi2sdl	(%rdx,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -100(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-64(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rcx
	cvtsi2sdl	(%rcx,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -96(%rbp)
.LBB35_62:                              # %if.end.249
                                        #   in Loop: Header=BB35_40 Depth=3
	jmp	.LBB35_63
.LBB35_63:                              # %for.inc.250
                                        #   in Loop: Header=BB35_40 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB35_40
.LBB35_64:                              # %for.end.252
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-36(%rbp), %eax
	movl	-76(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	imull	%ecx, %eax
	movl	-40(%rbp), %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	movl	fpvals+28(%rip), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	movq	reduced(%rip), %rdi
	movq	16(%rdi), %rdi
	movsd	(%rdi,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI35_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	fpvals+36(%rip), %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	movl	%eax, %edx
	addl	%ecx, %edx
	andl	$-256, %edx
	subl	%edx, %eax
	movslq	%eax, %rsi
	cvtsi2sdl	nudgeArray(,%rsi,4), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -3240(%rbp)       # 4-byte Spill
	movl	%ecx, -3244(%rbp)       # 4-byte Spill
	je	.LBB35_65
	jmp	.LBB35_116
.LBB35_116:                             # %for.end.252
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3240(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -3248(%rbp)       # 4-byte Spill
	je	.LBB35_66
	jmp	.LBB35_117
.LBB35_117:                             # %for.end.252
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3240(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -3252(%rbp)       # 4-byte Spill
	je	.LBB35_88
	jmp	.LBB35_89
.LBB35_65:                              # %sw.bb
                                        #   in Loop: Header=BB35_13 Depth=2
	movslq	-16(%rbp), %rax
	movl	colorSign(,%rax,4), %ecx
	imull	-48(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movslq	-16(%rbp), %rax
	movl	colorSign+24(,%rax,4), %ecx
	imull	-48(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movslq	-16(%rbp), %rax
	movl	colorSign+48(,%rax,4), %ecx
	imull	-48(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	jmp	.LBB35_90
.LBB35_66:                              # %sw.bb.286
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	$0, -64(%rbp)
.LBB35_67:                              # %for.cond.287
                                        #   Parent Loop BB35_11 Depth=1
                                        #     Parent Loop BB35_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB35_69 Depth 4
	cmpl	$3, -64(%rbp)
	jge	.LBB35_87
# BB#68:                                # %for.body.290
                                        #   in Loop: Header=BB35_67 Depth=3
	leaq	-3184(%rbp), %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rax
	cvtsi2sdl	(%rax,%rcx,4), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -3192(%rbp)
	movl	$0, -44(%rbp)
.LBB35_69:                              # %for.cond.299
                                        #   Parent Loop BB35_11 Depth=1
                                        #     Parent Loop BB35_13 Depth=2
                                        #       Parent Loop BB35_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -44(%rbp)
	jge	.LBB35_85
# BB#70:                                # %for.body.302
                                        #   in Loop: Header=BB35_69 Depth=4
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB35_83
# BB#71:                                # %if.then.305
                                        #   in Loop: Header=BB35_69 Depth=4
	movslq	-44(%rbp), %rax
	movl	-92(%rbp,%rax,4), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB35_76
# BB#72:                                # %if.then.310
                                        #   in Loop: Header=BB35_69 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	addl	-3192(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	jle	.LBB35_74
# BB#73:                                # %cond.true.316
                                        #   in Loop: Header=BB35_69 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	addl	-3192(%rbp), %ecx
	movl	%ecx, -3256(%rbp)       # 4-byte Spill
	jmp	.LBB35_75
.LBB35_74:                              # %cond.false.320
                                        #   in Loop: Header=BB35_69 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -3256(%rbp)       # 4-byte Spill
.LBB35_75:                              # %cond.end.321
                                        #   in Loop: Header=BB35_69 Depth=4
	movl	-3256(%rbp), %eax       # 4-byte Reload
	movslq	-44(%rbp), %rcx
	movl	%eax, -104(%rbp,%rcx,4)
	jmp	.LBB35_82
.LBB35_76:                              # %if.else.325
                                        #   in Loop: Header=BB35_69 Depth=4
	movslq	-44(%rbp), %rax
	movl	-92(%rbp,%rax,4), %ecx
	cmpl	-56(%rbp), %ecx
	jne	.LBB35_81
# BB#77:                                # %if.then.330
                                        #   in Loop: Header=BB35_69 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	subl	-3192(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB35_79
# BB#78:                                # %cond.true.336
                                        #   in Loop: Header=BB35_69 Depth=4
	movslq	-44(%rbp), %rax
	movl	-104(%rbp,%rax,4), %ecx
	subl	-3192(%rbp), %ecx
	movl	%ecx, -3260(%rbp)       # 4-byte Spill
	jmp	.LBB35_80
.LBB35_79:                              # %cond.false.340
                                        #   in Loop: Header=BB35_69 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -3260(%rbp)       # 4-byte Spill
.LBB35_80:                              # %cond.end.341
                                        #   in Loop: Header=BB35_69 Depth=4
	movl	-3260(%rbp), %eax       # 4-byte Reload
	movslq	-44(%rbp), %rcx
	movl	%eax, -104(%rbp,%rcx,4)
.LBB35_81:                              # %if.end.345
                                        #   in Loop: Header=BB35_69 Depth=4
	jmp	.LBB35_82
.LBB35_82:                              # %if.end.346
                                        #   in Loop: Header=BB35_69 Depth=4
	jmp	.LBB35_83
.LBB35_83:                              # %if.end.347
                                        #   in Loop: Header=BB35_69 Depth=4
	jmp	.LBB35_84
.LBB35_84:                              # %for.inc.348
                                        #   in Loop: Header=BB35_69 Depth=4
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB35_69
.LBB35_85:                              # %for.end.350
                                        #   in Loop: Header=BB35_67 Depth=3
	jmp	.LBB35_86
.LBB35_86:                              # %for.inc.351
                                        #   in Loop: Header=BB35_67 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB35_67
.LBB35_87:                              # %for.end.353
                                        #   in Loop: Header=BB35_13 Depth=2
	jmp	.LBB35_90
.LBB35_88:                              # %sw.bb.354
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-16(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-16(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-16(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB35_90
.LBB35_89:                              # %sw.default
                                        #   in Loop: Header=BB35_13 Depth=2
	jmp	.LBB35_90
.LBB35_90:                              # %sw.epilog
                                        #   in Loop: Header=BB35_13 Depth=2
	cmpl	$255, -104(%rbp)
	jle	.LBB35_92
# BB#91:                                # %cond.true.367
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	$255, %eax
	movl	%eax, -3264(%rbp)       # 4-byte Spill
	jmp	.LBB35_96
.LBB35_92:                              # %cond.false.368
                                        #   in Loop: Header=BB35_13 Depth=2
	cmpl	$0, -104(%rbp)
	jge	.LBB35_94
# BB#93:                                # %cond.true.372
                                        #   in Loop: Header=BB35_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, -3268(%rbp)       # 4-byte Spill
	jmp	.LBB35_95
.LBB35_94:                              # %cond.false.373
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -3268(%rbp)       # 4-byte Spill
.LBB35_95:                              # %cond.end.375
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3268(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3264(%rbp)       # 4-byte Spill
.LBB35_96:                              # %cond.end.377
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3264(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$255, -100(%rbp)
	jle	.LBB35_98
# BB#97:                                # %cond.true.389
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	$255, %eax
	movl	%eax, -3272(%rbp)       # 4-byte Spill
	jmp	.LBB35_102
.LBB35_98:                              # %cond.false.390
                                        #   in Loop: Header=BB35_13 Depth=2
	cmpl	$0, -100(%rbp)
	jge	.LBB35_100
# BB#99:                                # %cond.true.394
                                        #   in Loop: Header=BB35_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, -3276(%rbp)       # 4-byte Spill
	jmp	.LBB35_101
.LBB35_100:                             # %cond.false.395
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-100(%rbp), %eax
	movl	%eax, -3276(%rbp)       # 4-byte Spill
.LBB35_101:                             # %cond.end.397
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3276(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3272(%rbp)       # 4-byte Spill
.LBB35_102:                             # %cond.end.399
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3272(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$255, -96(%rbp)
	jle	.LBB35_104
# BB#103:                               # %cond.true.411
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	$255, %eax
	movl	%eax, -3280(%rbp)       # 4-byte Spill
	jmp	.LBB35_108
.LBB35_104:                             # %cond.false.412
                                        #   in Loop: Header=BB35_13 Depth=2
	cmpl	$0, -96(%rbp)
	jge	.LBB35_106
# BB#105:                               # %cond.true.416
                                        #   in Loop: Header=BB35_13 Depth=2
	xorl	%eax, %eax
	movl	%eax, -3284(%rbp)       # 4-byte Spill
	jmp	.LBB35_107
.LBB35_106:                             # %cond.false.417
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-96(%rbp), %eax
	movl	%eax, -3284(%rbp)       # 4-byte Spill
.LBB35_107:                             # %cond.end.419
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3284(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3280(%rbp)       # 4-byte Spill
.LBB35_108:                             # %cond.end.421
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-3280(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$4, -32(%rbp)
	jne	.LBB35_110
# BB#109:                               # %if.then.432
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	reduced, %rsi
	movq	8(%rsi), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	jmp	.LBB35_111
.LBB35_110:                             # %if.else.447
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
.LBB35_111:                             # %if.end.454
                                        #   in Loop: Header=BB35_13 Depth=2
	jmp	.LBB35_112
.LBB35_112:                             # %for.inc.455
                                        #   in Loop: Header=BB35_13 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB35_13
.LBB35_113:                             # %for.end.457
                                        #   in Loop: Header=BB35_11 Depth=1
	jmp	.LBB35_114
.LBB35_114:                             # %for.inc.458
                                        #   in Loop: Header=BB35_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB35_11
.LBB35_115:                             # %for.end.460
	movq	-8(%rbp), %rax
	movq	%rax, -3296(%rbp)       # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-3296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -3304(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -3308(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-3308(%rbp), %ecx       # 4-byte Reload
	movq	-3304(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$3328, %rsp             # imm = 0xD00
	popq	%rbp
	retq
.Lfunc_end35:
	.size	fp_render_preview, .Lfunc_end35-fp_render_preview
	.cfi_endproc

	.align	16, 0x90
	.type	fp_change_current_range,@function
fp_change_current_range:                # @fp_change_current_range
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB36_5
# BB#1:                                 # %if.then
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	cmpq	$0, AW
	je	.LBB36_4
# BB#2:                                 # %land.lhs.true
	movq	AW, %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB36_4
# BB#3:                                 # %if.then.6
	movq	AW+16, %rdi
	callq	fp_create_smoothness_graph
.LBB36_4:                               # %if.end
	jmp	.LBB36_5
.LBB36_5:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	fp_change_current_range, .Lfunc_end36-fp_change_current_range
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI37_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	fp_create_table_entry,@function
fp_create_table_entry:                  # @fp_create_table_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI37_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-24(%rbp), %rax
	cmpq	current_val, %rax
	je	.LBB37_2
# BB#1:                                 # %if.then
	callq	gtk_button_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -112(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$4, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.49, %rsi
	movabsq	$fp_selection_made, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB37_3
.LBB37_2:                               # %if.else
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -144(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$4, 24(%rsp)
	callq	gtk_table_attach
.LBB37_3:                               # %if.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	fp_create_table_entry, .Lfunc_end37-fp_create_table_entry
	.cfi_endproc

	.align	16, 0x90
	.type	fp_selection_made,@function
fp_selection_made:                      # @fp_selection_made
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	fpvals+28, %rsi
	movl	$1, fpvals+44(,%rsi,4)
	movq	-16(%rbp), %rsi
	cmpq	hue_red, %rsi
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movl	$2, %edi
	xorl	%esi, %esi
	callq	update_current_fp
	jmp	.LBB38_29
.LBB38_2:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	hue_green, %rax
	jne	.LBB38_4
# BB#3:                                 # %if.then.2
	movl	$2, %edi
	movl	$1, %esi
	callq	update_current_fp
	jmp	.LBB38_28
.LBB38_4:                               # %if.else.3
	movq	-16(%rbp), %rax
	cmpq	hue_blue, %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.5
	movl	$2, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	update_current_fp
	jmp	.LBB38_27
.LBB38_6:                               # %if.else.6
	movq	-16(%rbp), %rax
	cmpq	hue_cyan, %rax
	jne	.LBB38_8
# BB#7:                                 # %if.then.8
	movl	$2, %edi
	movl	$3, %esi
	callq	update_current_fp
	jmp	.LBB38_26
.LBB38_8:                               # %if.else.9
	movq	-16(%rbp), %rax
	cmpq	hue_yellow, %rax
	jne	.LBB38_10
# BB#9:                                 # %if.then.11
	movl	$2, %edi
	movl	$4, %esi
	callq	update_current_fp
	jmp	.LBB38_25
.LBB38_10:                              # %if.else.12
	movq	-16(%rbp), %rax
	cmpq	hue_magenta, %rax
	jne	.LBB38_12
# BB#11:                                # %if.then.14
	movl	$2, %edi
	movl	$5, %esi
	callq	update_current_fp
	jmp	.LBB38_24
.LBB38_12:                              # %if.else.15
	movq	-16(%rbp), %rax
	cmpq	val_darker, %rax
	jne	.LBB38_14
# BB#13:                                # %if.then.17
	movl	$8, %edi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	callq	update_current_fp
	jmp	.LBB38_23
.LBB38_14:                              # %if.else.18
	movq	-16(%rbp), %rax
	cmpq	val_lighter, %rax
	jne	.LBB38_16
# BB#15:                                # %if.then.20
	movl	$8, %edi
	movl	$1, %esi
	callq	update_current_fp
	jmp	.LBB38_22
.LBB38_16:                              # %if.else.21
	movq	-16(%rbp), %rax
	cmpq	sat_more, %rax
	jne	.LBB38_18
# BB#17:                                # %if.then.23
	movl	$4, %edi
	movl	$1, %esi
	callq	update_current_fp
	jmp	.LBB38_21
.LBB38_18:                              # %if.else.24
	movq	-16(%rbp), %rax
	cmpq	sat_less, %rax
	jne	.LBB38_20
# BB#19:                                # %if.then.26
	movl	$4, %edi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	callq	update_current_fp
.LBB38_20:                              # %if.end
	jmp	.LBB38_21
.LBB38_21:                              # %if.end.27
	jmp	.LBB38_22
.LBB38_22:                              # %if.end.28
	jmp	.LBB38_23
.LBB38_23:                              # %if.end.29
	jmp	.LBB38_24
.LBB38_24:                              # %if.end.30
	jmp	.LBB38_25
.LBB38_25:                              # %if.end.31
	jmp	.LBB38_26
.LBB38_26:                              # %if.end.32
	jmp	.LBB38_27
.LBB38_27:                              # %if.end.33
	jmp	.LBB38_28
.LBB38_28:                              # %if.end.34
	jmp	.LBB38_29
.LBB38_29:                              # %if.end.35
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	fp_selection_made, .Lfunc_end38-fp_selection_made
	.cfi_endproc

	.align	16, 0x90
	.type	update_current_fp,@function
update_current_fp:                      # @update_current_fp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB39_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB39_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	$nudgeArray, %eax
	movl	%eax, %edi
	callq	fp_create_nudge
	movl	-12(%rbp), %eax
	movzbl	fpvals+36(%rip), %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	movl	%eax, %edx
	addl	%ecx, %edx
	andl	$-256, %edx
	subl	%edx, %eax
	movslq	%eax, %rdi
	movl	nudgeArray(,%rdi,4), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	je	.LBB39_3
	jmp	.LBB39_10
.LBB39_10:                              # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB39_4
	jmp	.LBB39_11
.LBB39_11:                              # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB39_5
	jmp	.LBB39_6
.LBB39_3:                               # %sw.bb
                                        #   in Loop: Header=BB39_1 Depth=1
	movabsq	$fpvals, %rax
	movq	%rax, %rcx
	addq	$3128, %rcx             # imm = 0xC38
	movq	%rax, %rdx
	addq	$6200, %rdx             # imm = 0x1838
	addq	$56, %rax
	movslq	-8(%rbp), %rsi
	movl	colorSign(,%rsi,4), %edi
	imull	-16(%rbp), %edi
	movslq	-12(%rbp), %rsi
	movslq	fpvals+28, %r8
	shlq	$10, %r8
	addq	%r8, %rax
	addl	(%rax,%rsi,4), %edi
	movl	%edi, (%rax,%rsi,4)
	movslq	-8(%rbp), %rax
	movl	colorSign+24(,%rax,4), %edi
	imull	-16(%rbp), %edi
	movslq	-12(%rbp), %rax
	movslq	fpvals+28, %rsi
	shlq	$10, %rsi
	addq	%rsi, %rdx
	addl	(%rdx,%rax,4), %edi
	movl	%edi, (%rdx,%rax,4)
	movslq	-8(%rbp), %rax
	movl	colorSign+48(,%rax,4), %edi
	imull	-16(%rbp), %edi
	movslq	-12(%rbp), %rax
	movslq	fpvals+28, %rdx
	shlq	$10, %rdx
	addq	%rdx, %rcx
	addl	(%rcx,%rax,4), %edi
	movl	%edi, (%rcx,%rax,4)
	jmp	.LBB39_7
.LBB39_4:                               # %sw.bb.24
                                        #   in Loop: Header=BB39_1 Depth=1
	movabsq	$fpvals, %rax
	addq	$9272, %rax             # imm = 0x2438
	movl	-8(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movslq	fpvals+28, %rsi
	shlq	$10, %rsi
	addq	%rsi, %rax
	addl	(%rax,%rdx,4), %ecx
	movl	%ecx, (%rax,%rdx,4)
	jmp	.LBB39_7
.LBB39_5:                               # %sw.bb.31
                                        #   in Loop: Header=BB39_1 Depth=1
	movabsq	$fpvals, %rax
	movq	%rax, %rcx
	addq	$3128, %rcx             # imm = 0xC38
	movq	%rax, %rdx
	addq	$6200, %rdx             # imm = 0x1838
	addq	$56, %rax
	movl	-8(%rbp), %esi
	imull	-16(%rbp), %esi
	movslq	-12(%rbp), %rdi
	movslq	fpvals+28, %r8
	shlq	$10, %r8
	addq	%r8, %rax
	addl	(%rax,%rdi,4), %esi
	movl	%esi, (%rax,%rdi,4)
	movl	-8(%rbp), %esi
	imull	-16(%rbp), %esi
	movslq	-12(%rbp), %rax
	movslq	fpvals+28, %rdi
	shlq	$10, %rdi
	addq	%rdi, %rdx
	addl	(%rdx,%rax,4), %esi
	movl	%esi, (%rdx,%rax,4)
	movl	-8(%rbp), %esi
	imull	-16(%rbp), %esi
	movslq	-12(%rbp), %rax
	movslq	fpvals+28, %rdx
	shlq	$10, %rdx
	addq	%rdx, %rcx
	addl	(%rcx,%rax,4), %esi
	movl	%esi, (%rcx,%rax,4)
	jmp	.LBB39_7
.LBB39_6:                               # %sw.default
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_7
.LBB39_7:                               # %sw.epilog
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_8
.LBB39_8:                               # %for.inc
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB39_1
.LBB39_9:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	update_current_fp, .Lfunc_end39-update_current_fp
	.cfi_endproc

	.align	16, 0x90
	.type	fp_change_selection,@function
fp_change_selection:                    # @fp_change_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB40_2
# BB#1:                                 # %if.then
	callq	fp_redraw_all_windows
.LBB40_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	fp_change_selection, .Lfunc_end40-fp_change_selection
	.cfi_endproc

	.align	16, 0x90
	.type	fp_change_current_pixels_by,@function
fp_change_current_pixels_by:            # @fp_change_current_pixels_by
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB41_6
# BB#1:                                 # %if.then
	movzbl	fpvals+37, %edi
	callq	fp_refresh_previews
	cmpq	$0, AW
	je	.LBB41_5
# BB#2:                                 # %land.lhs.true
	movq	AW, %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB41_5
# BB#3:                                 # %land.lhs.true.6
	cmpq	$0, AW+8
	je	.LBB41_5
# BB#4:                                 # %if.then.8
	movq	AW+8, %rdi
	movl	fpvals+28, %esi
	callq	fp_range_preview_spill
.LBB41_5:                               # %if.end
	jmp	.LBB41_6
.LBB41_6:                               # %if.end.9
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	fp_change_current_pixels_by, .Lfunc_end41-fp_change_current_pixels_by
	.cfi_endproc

	.align	16, 0x90
	.type	fp_frames_checkbutton_in_box,@function
fp_frames_checkbutton_in_box:           # @fp_frames_checkbutton_in_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	fp_frames_checkbutton_in_box, .Lfunc_end42-fp_frames_checkbutton_in_box
	.cfi_endproc

	.align	16, 0x90
	.type	fp_show_hide_frame,@function
fp_show_hide_frame:                     # @fp_show_hide_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzbl	fpvals+37, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB43_2
# BB#1:                                 # %if.then
	jmp	.LBB43_25
.LBB43_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB43_14
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	jne	.LBB43_13
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	cmpq	fp_frames+8, %rdi
	jne	.LBB43_6
# BB#5:                                 # %if.then.10
	movzbl	fpvals+37, %eax
	orl	$2, %eax
	movb	%al, %cl
	movb	%cl, fpvals+37
	jmp	.LBB43_12
.LBB43_6:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	fp_frames+64, %rax
	jne	.LBB43_8
# BB#7:                                 # %if.then.15
	movzbl	fpvals+37, %eax
	orl	$4, %eax
	movb	%al, %cl
	movb	%cl, fpvals+37
	jmp	.LBB43_11
.LBB43_8:                               # %if.else.19
	movq	-16(%rbp), %rax
	cmpq	fp_frames+40, %rax
	jne	.LBB43_10
# BB#9:                                 # %if.then.22
	movzbl	fpvals+37, %eax
	orl	$8, %eax
	movb	%al, %cl
	movb	%cl, fpvals+37
.LBB43_10:                              # %if.end.26
	jmp	.LBB43_11
.LBB43_11:                              # %if.end.27
	jmp	.LBB43_12
.LBB43_12:                              # %if.end.28
	movzbl	fpvals+37, %eax
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	%ecx, %eax
	movl	%eax, %edi
	callq	fp_refresh_previews
	movq	AW+16, %rdi
	callq	fp_create_smoothness_graph
	movq	AW+8, %rdi
	movl	fpvals+28, %esi
	callq	fp_range_preview_spill
.LBB43_13:                              # %if.end.30
	jmp	.LBB43_25
.LBB43_14:                              # %if.else.31
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB43_24
# BB#15:                                # %if.then.34
	movq	-16(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	cmpq	fp_frames+8, %rdi
	jne	.LBB43_17
# BB#16:                                # %if.then.37
	movzbl	fpvals+37, %eax
	andl	$-3, %eax
	movb	%al, %cl
	movb	%cl, fpvals+37
	jmp	.LBB43_23
.LBB43_17:                              # %if.else.41
	movq	-16(%rbp), %rax
	cmpq	fp_frames+64, %rax
	jne	.LBB43_19
# BB#18:                                # %if.then.44
	movzbl	fpvals+37, %eax
	andl	$-5, %eax
	movb	%al, %cl
	movb	%cl, fpvals+37
	jmp	.LBB43_22
.LBB43_19:                              # %if.else.48
	movq	-16(%rbp), %rax
	cmpq	fp_frames+40, %rax
	jne	.LBB43_21
# BB#20:                                # %if.then.51
	movzbl	fpvals+37, %eax
	andl	$-9, %eax
	movb	%al, %cl
	movb	%cl, fpvals+37
.LBB43_21:                              # %if.end.55
	jmp	.LBB43_22
.LBB43_22:                              # %if.end.56
	jmp	.LBB43_23
.LBB43_23:                              # %if.end.57
	jmp	.LBB43_24
.LBB43_24:                              # %if.end.58
	jmp	.LBB43_25
.LBB43_25:                              # %if.end.59
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	fp_show_hide_frame, .Lfunc_end43-fp_show_hide_frame
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	fp_func,@function
fp_func:                                # @fp_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -48(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, -60(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movl	%edx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	2(%rcx), %edx
	movl	%edx, -52(%rbp)
	movl	-60(%rbp), %edx
	movb	%dl, %r8b
	movl	-56(%rbp), %edx
	movb	%dl, %r9b
	movl	-52(%rbp), %edx
	movb	%dl, %r10b
	movq	%rax, %rdi
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movzbl	%r10b, %ecx
	callq	gimp_rgb_set_uchar
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	movl	$0, -44(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_27 Depth 2
                                        #     Child Loop BB44_34 Depth 2
	cmpl	$3, -44(%rbp)
	jge	.LBB44_70
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movslq	-44(%rbp), %rax
	cmpl	$0, fpvals+44(,%rax,4)
	jne	.LBB44_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_69
.LBB44_4:                               # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB44_5
	jmp	.LBB44_75
.LBB44_75:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB44_6
	jmp	.LBB44_76
.LBB44_76:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB44_7
	jmp	.LBB44_8
.LBB44_5:                               # %sw.bb
                                        #   in Loop: Header=BB44_1 Depth=1
	movsd	.LCPI44_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB44_8
.LBB44_6:                               # %sw.bb.17
                                        #   in Loop: Header=BB44_1 Depth=1
	movsd	.LCPI44_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB44_8
.LBB44_7:                               # %sw.bb.20
                                        #   in Loop: Header=BB44_1 Depth=1
	movsd	.LCPI44_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
.LBB44_8:                               # %sw.epilog
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB44_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB44_11
.LBB44_10:                              # %cond.false
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB44_11:                              # %cond.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	cmpl	-52(%rbp), %eax
	jge	.LBB44_16
# BB#12:                                # %cond.true.32
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB44_14
# BB#13:                                # %cond.true.37
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB44_15
.LBB44_14:                              # %cond.false.39
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB44_15:                              # %cond.end.41
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB44_17
.LBB44_16:                              # %cond.false.43
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB44_17:                              # %cond.end.45
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB44_19
# BB#18:                                # %cond.true.51
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB44_20
.LBB44_19:                              # %cond.false.53
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB44_20:                              # %cond.end.55
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	cmpl	-52(%rbp), %eax
	jle	.LBB44_25
# BB#21:                                # %cond.true.60
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB44_23
# BB#22:                                # %cond.true.65
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB44_24
.LBB44_23:                              # %cond.false.67
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB44_24:                              # %cond.end.69
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB44_26
.LBB44_25:                              # %cond.false.71
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB44_26:                              # %cond.end.73
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	addl	-136(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -140(%rbp)
	movl	$0, -40(%rbp)
.LBB44_27:                              # %for.cond.75
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB44_33
# BB#28:                                # %for.body.78
                                        #   in Loop: Header=BB44_27 Depth=2
	movslq	-40(%rbp), %rax
	movl	-60(%rbp,%rax,4), %ecx
	cmpl	-136(%rbp), %ecx
	je	.LBB44_31
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB44_27 Depth=2
	movslq	-40(%rbp), %rax
	movl	-60(%rbp,%rax,4), %ecx
	cmpl	-132(%rbp), %ecx
	je	.LBB44_31
# BB#30:                                # %if.then.87
                                        #   in Loop: Header=BB44_27 Depth=2
	movslq	-40(%rbp), %rax
	movl	-60(%rbp,%rax,4), %ecx
	movl	%ecx, -140(%rbp)
.LBB44_31:                              # %if.end.90
                                        #   in Loop: Header=BB44_27 Depth=2
	jmp	.LBB44_32
.LBB44_32:                              # %for.inc
                                        #   in Loop: Header=BB44_27 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB44_27
.LBB44_33:                              # %for.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	$0, -40(%rbp)
.LBB44_34:                              # %for.cond.91
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB44_50
# BB#35:                                # %for.body.94
                                        #   in Loop: Header=BB44_34 Depth=2
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	je	.LBB44_48
# BB#36:                                # %if.then.97
                                        #   in Loop: Header=BB44_34 Depth=2
	movslq	-40(%rbp), %rax
	movl	-60(%rbp,%rax,4), %ecx
	cmpl	-132(%rbp), %ecx
	jne	.LBB44_41
# BB#37:                                # %if.then.102
                                        #   in Loop: Header=BB44_34 Depth=2
	movabsq	$fpvals, %rax
	addq	$9272, %rax             # imm = 0x2438
	movslq	-40(%rbp), %rcx
	movl	-60(%rbp,%rcx,4), %edx
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rax
	addl	(%rax,%rcx,4), %edx
	cmpl	-140(%rbp), %edx
	jle	.LBB44_39
# BB#38:                                # %cond.true.112
                                        #   in Loop: Header=BB44_34 Depth=2
	movabsq	$fpvals, %rax
	addq	$9272, %rax             # imm = 0x2438
	movslq	-40(%rbp), %rcx
	movl	-60(%rbp,%rcx,4), %edx
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rax
	addl	(%rax,%rcx,4), %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB44_40
.LBB44_39:                              # %cond.false.120
                                        #   in Loop: Header=BB44_34 Depth=2
	movl	-140(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB44_40:                              # %cond.end.121
                                        #   in Loop: Header=BB44_34 Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	movslq	-40(%rbp), %rcx
	movl	%eax, -60(%rbp,%rcx,4)
	jmp	.LBB44_47
.LBB44_41:                              # %if.else
                                        #   in Loop: Header=BB44_34 Depth=2
	movslq	-40(%rbp), %rax
	movl	-60(%rbp,%rax,4), %ecx
	cmpl	-136(%rbp), %ecx
	jne	.LBB44_46
# BB#42:                                # %if.then.129
                                        #   in Loop: Header=BB44_34 Depth=2
	movabsq	$fpvals, %rax
	addq	$9272, %rax             # imm = 0x2438
	movslq	-40(%rbp), %rcx
	movl	-60(%rbp,%rcx,4), %edx
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rax
	subl	(%rax,%rcx,4), %edx
	cmpl	-140(%rbp), %edx
	jge	.LBB44_44
# BB#43:                                # %cond.true.138
                                        #   in Loop: Header=BB44_34 Depth=2
	movabsq	$fpvals, %rax
	addq	$9272, %rax             # imm = 0x2438
	movslq	-40(%rbp), %rcx
	movl	-60(%rbp,%rcx,4), %edx
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rax
	subl	(%rax,%rcx,4), %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB44_45
.LBB44_44:                              # %cond.false.146
                                        #   in Loop: Header=BB44_34 Depth=2
	movl	-140(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB44_45:                              # %cond.end.147
                                        #   in Loop: Header=BB44_34 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	movslq	-40(%rbp), %rcx
	movl	%eax, -60(%rbp,%rcx,4)
.LBB44_46:                              # %if.end.151
                                        #   in Loop: Header=BB44_34 Depth=2
	jmp	.LBB44_47
.LBB44_47:                              # %if.end.152
                                        #   in Loop: Header=BB44_34 Depth=2
	jmp	.LBB44_48
.LBB44_48:                              # %if.end.153
                                        #   in Loop: Header=BB44_34 Depth=2
	jmp	.LBB44_49
.LBB44_49:                              # %for.inc.154
                                        #   in Loop: Header=BB44_34 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB44_34
.LBB44_50:                              # %for.end.156
                                        #   in Loop: Header=BB44_1 Depth=1
	movabsq	$fpvals, %rax
	movq	%rax, %rcx
	addq	$3128, %rcx             # imm = 0xC38
	movq	%rax, %rdx
	addq	$6200, %rdx             # imm = 0x1838
	addq	$56, %rax
	movslq	-48(%rbp), %rsi
	movslq	-44(%rbp), %rdi
	shlq	$10, %rdi
	addq	%rdi, %rax
	movl	(%rax,%rsi,4), %r8d
	addl	-60(%rbp), %r8d
	movl	%r8d, -60(%rbp)
	movslq	-48(%rbp), %rax
	movslq	-44(%rbp), %rsi
	shlq	$10, %rsi
	addq	%rsi, %rdx
	movl	(%rdx,%rax,4), %r8d
	addl	-56(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	movslq	-48(%rbp), %rax
	movslq	-44(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rcx
	movl	(%rcx,%rax,4), %r8d
	addl	-52(%rbp), %r8d
	movl	%r8d, -52(%rbp)
	cmpl	$255, -60(%rbp)
	jle	.LBB44_52
# BB#51:                                # %cond.true.178
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	$255, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB44_56
.LBB44_52:                              # %cond.false.179
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpl	$0, -60(%rbp)
	jge	.LBB44_54
# BB#53:                                # %cond.true.183
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB44_55
.LBB44_54:                              # %cond.false.184
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB44_55:                              # %cond.end.186
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB44_56:                              # %cond.end.188
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$255, -56(%rbp)
	jle	.LBB44_58
# BB#57:                                # %cond.true.194
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	$255, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB44_62
.LBB44_58:                              # %cond.false.195
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpl	$0, -56(%rbp)
	jge	.LBB44_60
# BB#59:                                # %cond.true.199
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB44_61
.LBB44_60:                              # %cond.false.200
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB44_61:                              # %cond.end.202
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB44_62:                              # %cond.end.204
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	cmpl	$255, -52(%rbp)
	jle	.LBB44_64
# BB#63:                                # %cond.true.210
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	$255, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB44_68
.LBB44_64:                              # %cond.false.211
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB44_66
# BB#65:                                # %cond.true.215
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB44_67
.LBB44_66:                              # %cond.false.216
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB44_67:                              # %cond.end.218
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB44_68:                              # %cond.end.220
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB44_69:                              # %for.inc.223
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB44_1
.LBB44_70:                              # %for.end.225
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-56(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movl	$3, -36(%rbp)
.LBB44_71:                              # %for.cond.235
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB44_74
# BB#72:                                # %for.body.238
                                        #   in Loop: Header=BB44_71 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#73:                                # %for.inc.243
                                        #   in Loop: Header=BB44_71 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB44_71
.LBB44_74:                              # %for.end.245
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	fp_func, .Lfunc_end44-fp_func
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
	.asciz	"Input image (used for indexed images)"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.Lquery.args,@object    # @query.args
	.section	.rodata,"a",@progbits
	.align	16
.Lquery.args:
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
	.size	.Lquery.args, 72

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"plug-in-filter-pack"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Interactively modify the image colors"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Interactively modify the image colors."
	.size	.L.str.8, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Pavel Grinfeld (pavel@ml.com)"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"27th March 1997"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Filter Pack..."
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Colors/Modify"
	.size	.L.str.13, 22

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
	.type	mask,@object            # @mask
	.local	mask
	.comm	mask,8,8
	.type	fpvals,@object          # @fpvals
	.data
	.align	8
fpvals:
	.quad	4598175219545276416     # double 0.25
	.quad	4603579539098121011     # double 0.59999999999999998
	.quad	4635329916471083008     # double 80
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.ascii	" \340\377"
	.zero	3
	.zero	12
	.zero	3072
	.zero	3072
	.zero	3072
	.zero	3072
	.size	fpvals, 12344

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"FP can only be used on RGB images."
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"FP can only be run interactively."
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Applying filter pack"
	.size	.L.str.18, 21

	.type	reduced,@object         # @reduced
	.local	reduced
	.comm	reduced,8,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"filter-pack"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Filter Pack Simulation"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-filter-pack"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-reset"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-cancel"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-ok"
	.size	.L.str.24, 7

	.type	dlg,@object             # @dlg
	.local	dlg
	.comm	dlg,8,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"response"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"destroy"
	.size	.L.str.26, 8

	.type	fp_frames,@object       # @fp_frames
	.local	fp_frames
	.comm	fp_frames,72,8
	.type	FPint,@object           # @FPint
	.local	FPint
	.comm	FPint,4,4
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Shadows:"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Midtones:"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Highlights:"
	.size	.L.str.29, 12

	.type	.Lfp_advanced_dialog.rangeNames,@object # @fp_advanced_dialog.rangeNames
	.section	.rodata,"a",@progbits
	.align	16
.Lfp_advanced_dialog.rangeNames:
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.size	.Lfp_advanced_dialog.rangeNames, 24

	.type	AW,@object              # @AW
	.local	AW
	.comm	AW,32,8
	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"Advanced Filter Pack Options"
	.size	.L.str.30, 29

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"delete-event"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Affected Range"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"event"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"-"
	.size	.L.str.34, 2

	.type	fp_widgets,@object      # @fp_widgets
	.local	fp_widgets
	.comm	fp_widgets,120,8
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"value-changed"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Preview Size"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"ctrlButton"
	.size	.L.str.37, 11

	.type	fp_range_change_events.new,@object # @fp_range_change_events.new
	.local	fp_range_change_events.new
	.comm	fp_range_change_events.new,8,8
	.type	fp_scale_update.prevValue,@object # @fp_scale_update.prevValue
	.data
	.align	8
fp_scale_update.prevValue:
	.quad	4598175219545276416     # double 0.25
	.size	fp_scale_update.prevValue, 8

	.type	nudgeArray,@object      # @nudgeArray
	.local	nudgeArray
	.comm	nudgeArray,1024,16
	.type	origPreview,@object     # @origPreview
	.local	origPreview
	.comm	origPreview,8,8
	.type	curPreview,@object      # @curPreview
	.local	curPreview
	.comm	curPreview,8,8
	.type	rPreview,@object        # @rPreview
	.local	rPreview
	.comm	rPreview,8,8
	.type	gPreview,@object        # @gPreview
	.local	gPreview
	.comm	gPreview,8,8
	.type	bPreview,@object        # @bPreview
	.local	bPreview
	.comm	bPreview,8,8
	.type	cPreview,@object        # @cPreview
	.local	cPreview
	.comm	cPreview,8,8
	.type	yPreview,@object        # @yPreview
	.local	yPreview
	.comm	yPreview,8,8
	.type	mPreview,@object        # @mPreview
	.local	mPreview
	.comm	mPreview,8,8
	.type	centerPreview,@object   # @centerPreview
	.local	centerPreview
	.comm	centerPreview,8,8
	.type	lighterPreview,@object  # @lighterPreview
	.local	lighterPreview
	.comm	lighterPreview,8,8
	.type	darkerPreview,@object   # @darkerPreview
	.local	darkerPreview
	.comm	darkerPreview,8,8
	.type	middlePreview,@object   # @middlePreview
	.local	middlePreview
	.comm	middlePreview,8,8
	.type	minusSatPreview,@object # @minusSatPreview
	.local	minusSatPreview
	.comm	minusSatPreview,8,8
	.type	SatPreview,@object      # @SatPreview
	.local	SatPreview
	.comm	SatPreview,8,8
	.type	plusSatPreview,@object  # @plusSatPreview
	.local	plusSatPreview
	.comm	plusSatPreview,8,8
	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"0"
	.size	.L.str.38, 2

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%d"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"255"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Original:"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Current:"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"size-allocate"
	.size	.L.str.43, 14

	.type	colorSign,@object       # @colorSign
	.section	.rodata,"a",@progbits
	.align	16
colorSign:
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.size	colorSign, 72

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"Roughness"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Sha_dows"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Midtones"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"H_ighlights"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Hue Variations"
	.size	.L.str.48, 15

	.type	hue_red,@object         # @hue_red
	.data
	.align	8
hue_red:
	.quad	.L.str.54
	.size	hue_red, 8

	.type	hue_green,@object       # @hue_green
	.align	8
hue_green:
	.quad	.L.str.55
	.size	hue_green, 8

	.type	hue_blue,@object        # @hue_blue
	.align	8
hue_blue:
	.quad	.L.str.56
	.size	hue_blue, 8

	.type	hue_cyan,@object        # @hue_cyan
	.align	8
hue_cyan:
	.quad	.L.str.57
	.size	hue_cyan, 8

	.type	hue_yellow,@object      # @hue_yellow
	.align	8
hue_yellow:
	.quad	.L.str.58
	.size	hue_yellow, 8

	.type	hue_magenta,@object     # @hue_magenta
	.align	8
hue_magenta:
	.quad	.L.str.59
	.size	hue_magenta, 8

	.type	current_val,@object     # @current_val
	.align	8
current_val:
	.quad	.L.str.42
	.size	current_val, 8

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"clicked"
	.size	.L.str.49, 8

	.type	val_darker,@object      # @val_darker
	.data
	.align	8
val_darker:
	.quad	.L.str.50
	.size	val_darker, 8

	.type	val_lighter,@object     # @val_lighter
	.align	8
val_lighter:
	.quad	.L.str.51
	.size	val_lighter, 8

	.type	sat_more,@object        # @sat_more
	.align	8
sat_more:
	.quad	.L.str.52
	.size	sat_more, 8

	.type	sat_less,@object        # @sat_less
	.align	8
sat_less:
	.quad	.L.str.53
	.size	sat_less, 8

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"Darker:"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Lighter:"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"More Sat:"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Less Sat:"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Red:"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Green:"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Blue:"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Cyan:"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Yellow:"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Magenta:"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Value Variations"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Show"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Entire image"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Se_lection only"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Selec_tion in context"
	.size	.L.str.64, 22

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Saturation Variations"
	.size	.L.str.65, 22

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Select Pixels By"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"H_ue"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Satu_ration"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"V_alue"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Windows"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"_Hue"
	.size	.L.str.71, 5

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"_Saturation"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"_Value"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"A_dvanced"
	.size	.L.str.74, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
