	.text
	.file	"pagecurl.bc"
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
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$7, %r11d
	movabsq	$query.args, %rbx
	movabsq	$query.return_vals, %r14
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-40(%rbp), %r15         # 8-byte Reload
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	movl	%r10d, -48(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$88, %rsp
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
	subq	$128, %rsp
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
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	callq	set_default_params
	movabsq	$.L.str.16, %rdi
	movabsq	$curl, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$run.values, %rsi
	movq	-32(%rbp), %rdi
	movl	$2, (%rdi)
	movq	-40(%rbp), %rdi
	movq	%rsi, (%rdi)
	movl	$21, run.values
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8
	movl	$14, run.values+40
	movl	$-1, run.values+48
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %ecx
	movl	%ecx, image_id
	movl	-52(%rbp), %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movl	-52(%rbp), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_41
.LBB1_4:                                # %land.lhs.true
	movabsq	$sel_x, %rsi
	movabsq	$sel_y, %rdx
	movabsq	$true_sel_width, %rcx
	movabsq	$true_sel_height, %r8
	movl	-52(%rbp), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB1_41
# BB#5:                                 # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_44
.LBB1_44:                               # %if.then
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_45
.LBB1_45:                               # %if.then
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_32
	jmp	.LBB1_33
.LBB1_6:                                # %sw.bb
	callq	dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.16
	jmp	.LBB1_43
.LBB1_8:                                # %if.end
	jmp	.LBB1_34
.LBB1_9:                                # %sw.bb.17
	cmpl	$7, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.18
	movl	$1, -48(%rbp)
.LBB1_11:                               # %if.end.19
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#12:                                # %if.then.21
	movq	-24(%rbp), %rax
	cmpl	$2, 128(%rax)
	jle	.LBB1_14
# BB#13:                                # %cond.true
	movl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_14:                               # %cond.false
	movq	-24(%rbp), %rax
	cmpl	$0, 128(%rax)
	jge	.LBB1_16
# BB#15:                                # %cond.true.30
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %cond.false.31
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB1_17:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_18:                               # %cond.end.35
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, curl
	movq	-24(%rbp), %rcx
	cmpl	$4, 168(%rcx)
	jle	.LBB1_20
# BB#19:                                # %cond.true.41
	movl	$4, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_24
.LBB1_20:                               # %cond.false.42
	movq	-24(%rbp), %rax
	cmpl	$1, 168(%rax)
	jge	.LBB1_22
# BB#21:                                # %cond.true.47
	movl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %cond.false.48
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB1_23:                               # %cond.end.52
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_24:                               # %cond.end.54
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, curl+20
	movq	-24(%rbp), %rcx
	cmpl	$1, 208(%rcx)
	jle	.LBB1_26
# BB#25:                                # %cond.true.60
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_30
.LBB1_26:                               # %cond.false.61
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	jge	.LBB1_28
# BB#27:                                # %cond.true.66
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false.67
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB1_29:                               # %cond.end.71
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_30:                               # %cond.end.73
	movl	-116(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%eax, curl+24
	movq	-24(%rbp), %rsi
	cmpl	$0, 248(%rsi)
	cmovnel	%edx, %ecx
	movl	%ecx, curl+16
.LBB1_31:                               # %if.end.80
	jmp	.LBB1_34
.LBB1_32:                               # %sw.bb.81
	jmp	.LBB1_34
.LBB1_33:                               # %sw.default
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_40
# BB#35:                                # %if.then.83
	movl	-52(%rbp), %edi
	callq	page_curl
	movl	%eax, run.values+48
	cmpl	$1, -44(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.86
	callq	gimp_displays_flush
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_37:                               # %if.end.88
	cmpl	$0, -44(%rbp)
	jne	.LBB1_39
# BB#38:                                # %if.then.90
	movabsq	$.L.str.16, %rdi
	movabsq	$curl, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.92
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.93
	jmp	.LBB1_42
.LBB1_41:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_42:                               # %if.end.94
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_43:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	set_default_params,@function
set_default_params:                     # @set_default_params
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
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	$0, curl
	movsd	%xmm0, curl+8
	movl	$1, curl+16
	movl	$1, curl+20
	movl	$0, curl+24
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_default_params, .Lfunc_end3-set_default_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	dialog,@function
dialog:                                 # @dialog
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
	pushq	%rbx
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp18:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-16(%rbp), %rdi
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
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
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$3, %edi
	movl	$2, %esi
	movl	$1, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	callq	gtk_image_new
	movq	%rax, curl_image
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movq	curl_image, %rsi
	movq	%rax, %rdi
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r9d        # 4-byte Reload
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	curl_image, %rdi
	callq	gtk_widget_show
	callq	curl_pixbuf_update
	movq	$0, -56(%rbp)
	movl	$1, -80(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -80(%rbp)
	jg	.LBB4_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB4_5:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	dialog.name(,%rdx,8), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	curl+20, %ecx
	cmpl	-80(%rbp), %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movslq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	$1, %r8b
	movq	-56(%rbp), %rsi
	cmpl	$2, -80(%rbp)
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movb	%r8b, -257(%rbp)        # 1-byte Spill
	je	.LBB4_7
# BB#6:                                 # %lor.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$3, -80(%rbp)
	sete	%al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB4_7:                                # %lor.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-257(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	movl	$1, %edx
	xorl	%esi, %esi
	testb	$1, %al
	cmovnel	%esi, %edx
	cmpl	$2, -80(%rbp)
	movl	%edx, -264(%rbp)        # 4-byte Spill
	movb	%cl, -265(%rbp)         # 1-byte Spill
	je	.LBB4_9
# BB#8:                                 # %lor.rhs.48
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$3, -80(%rbp)
	sete	%al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB4_9:                                # %lor.end.51
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-265(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	movl	$2, %edx
	movl	$1, %esi
	testb	$1, %al
	cmovnel	%esi, %edx
	cmpl	$3, -80(%rbp)
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movb	%cl, -273(%rbp)         # 1-byte Spill
	je	.LBB4_11
# BB#10:                                # %lor.rhs.55
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$4, -80(%rbp)
	sete	%al
	movb	%al, -273(%rbp)         # 1-byte Spill
.LBB4_11:                               # %lor.end.58
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-273(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	movl	$2, %edx
	xorl	%esi, %esi
	testb	$1, %al
	cmovnel	%esi, %edx
	cmpl	$3, -80(%rbp)
	movl	%edx, -280(%rbp)        # 4-byte Spill
	movb	%cl, -281(%rbp)         # 1-byte Spill
	je	.LBB4_13
# BB#12:                                # %lor.rhs.62
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$4, -80(%rbp)
	sete	%al
	movb	%al, -281(%rbp)         # 1-byte Spill
.LBB4_13:                               # %lor.end.65
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-281(%rbp), %al         # 1-byte Reload
	movl	$5, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$3, %edi
	movl	$1, %r8d
	testb	$1, %al
	cmovnel	%r8d, %edi
	movq	-256(%rbp), %r9         # 8-byte Reload
	movl	%edi, -288(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movq	-248(%rbp), %r10        # 8-byte Reload
	movl	%esi, -292(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	-264(%rbp), %r8d        # 4-byte Reload
	movl	%edx, -296(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-272(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-280(%rbp), %r8d        # 4-byte Reload
	movl	-288(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_radio_button_update, %rdi
	movabsq	$curl, %r10
	addq	$20, %r10
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rbx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$curl_pixbuf_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	-320(%rbp), %r8         # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -336(%rbp)        # 8-byte Spill
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_1
.LBB4_15:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	$0, -56(%rbp)
	movl	$0, -84(%rbp)
.LBB4_16:                               # %for.cond.79
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -84(%rbp)
	jg	.LBB4_22
# BB#17:                                # %for.body.82
                                        #   in Loop: Header=BB4_16 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB4_19
# BB#18:                                # %cond.true.85
                                        #   in Loop: Header=BB4_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false.86
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB4_20:                               # %cond.end.90
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movslq	-84(%rbp), %rcx
	movq	dialog.name.39(,%rcx,8), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	curl+24, %edx
	cmpl	-84(%rbp), %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movslq	-84(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_radio_button_update, %rax
	movabsq	$curl, %rdi
	addq	$24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$curl_pixbuf_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -440(%rbp)        # 8-byte Spill
# BB#21:                                # %for.inc.106
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB4_16
.LBB4_22:                               # %for.end.108
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	curl+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$curl, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %r9d
	movl	$1, %ecx
	movabsq	$.L.str.44, %rdx
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rax, %r8
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	movl	%r11d, -508(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_prepend
	movq	-64(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movabsq	$.L.str.44, %rdi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-528(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -540(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %r8
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_prepend
	movq	-64(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %r9d
	movabsq	$.L.str.47, %rsi
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -572(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-572(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	movl	%r11d, -576(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_prepend
	movq	-32(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$curl, %rdi
	movl	curl, %ecx
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-616(%rbp), %rdx        # 8-byte Reload
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-16(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -644(%rbp)        # 4-byte Spill
	movl	-644(%rbp), %ecx        # 4-byte Reload
	movl	-644(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movaps	%xmm1, %xmm3
	mulsd	curl+8, %xmm3
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -672(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -676(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -680(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-680(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-688(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -696(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-696(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm2, -704(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm2
	movsd	-704(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-704(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-688(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-688(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$curl, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-712(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -720(%rbp)        # 8-byte Spill
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialog, .Lfunc_end4-dialog
	.cfi_endproc

	.align	16, 0x90
	.type	page_curl,@function
page_curl:                              # @page_curl
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
	movl	%edi, -4(%rbp)
	movl	image_id, %edi
	callq	gimp_image_undo_group_start
	movabsq	$.L.str.50, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	-4(%rbp), %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	init_calculation
	movl	-4(%rbp), %edi
	callq	do_curl_effect
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	clear_curled_region
	movl	image_id, %edi
	callq	gimp_image_undo_group_end
	movl	-8(%rbp), %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	page_curl, .Lfunc_end5-page_curl
	.cfi_endproc

	.align	16, 0x90
	.type	curl_pixbuf_update,@function
curl_pixbuf_update:                     # @curl_pixbuf_update
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
	movl	curl+20(%rip), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB6_5
# BB#8:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movl	$0, -12(%rbp)
	jmp	.LBB6_6
.LBB6_2:                                # %sw.bb.1
	movl	$1, -12(%rbp)
	jmp	.LBB6_6
.LBB6_3:                                # %sw.bb.2
	movl	$2, -12(%rbp)
	jmp	.LBB6_6
.LBB6_4:                                # %sw.bb.3
	movl	$3, -12(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %sw.default
	jmp	.LBB6_7
.LBB6_6:                                # %sw.epilog
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	curl+24, %eax
	shll	$2, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movslq	-12(%rbp), %rsi
	movq	curl_pixbufs(,%rsi,8), %rsi
	callq	gdk_pixbuf_new_from_inline
	movq	%rax, -8(%rbp)
	movq	curl_image, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_pixbuf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_7:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	curl_pixbuf_update, .Lfunc_end6-curl_pixbuf_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_4
	.quad	.LBB6_3

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	dialog_scale_update,@function
dialog_scale_update:                    # @dialog_scale_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_scale_update, .Lfunc_end7-dialog_scale_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4611686018427387904    # double -2
.LCPI8_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI8_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	init_calculation,@function
init_calculation:                       # @init_calculation
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
	subq	$352, %rsp              # imm = 0x160
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_layer_add_alpha
	leaq	-84(%rbp), %rsi
	movl	image_id, %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_get_layers
	movq	%rax, -80(%rbp)
	movl	$0, drawable_position
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	drawable_position, %eax
	cmpl	-84(%rbp), %eax
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jge	.LBB8_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	drawable_position, %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-4(%rbp), %edx
	setne	%sil
	movb	%sil, -125(%rbp)        # 1-byte Spill
.LBB8_3:                                # %land.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-125(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_5
.LBB8_4:                                # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	drawable_position, %eax
	addl	$1, %eax
	movl	%eax, drawable_position
	jmp	.LBB8_1
.LBB8_5:                                # %while.end
	movl	curl+24(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB8_6
	jmp	.LBB8_9
.LBB8_9:                                # %while.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB8_7
	jmp	.LBB8_8
.LBB8_6:                                # %sw.bb
	movl	true_sel_width, %eax
	movl	%eax, sel_width
	movl	true_sel_height, %eax
	movl	%eax, sel_height
	jmp	.LBB8_8
.LBB8_7:                                # %sw.bb.3
	movl	true_sel_height, %eax
	movl	%eax, sel_width
	movl	true_sel_width, %eax
	movl	%eax, sel_height
.LBB8_8:                                # %sw.epilog
	cvtsi2sdl	sel_height, %xmm0
	cvtsi2sdl	sel_width, %xmm1
	divsd	%xmm1, %xmm0
	callq	atan
	movabsq	$center, %rdi
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	cvtsi2sdl	sel_width, %xmm0
	addsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_vector2_set
	movabsq	$left_tangent, %rdi
	movsd	center+8, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, radius
	movsd	radius, %xmm0           # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	sin
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	movd	%rdi, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	radius, %xmm0           # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_vector2_set
	movabsq	$left_tangent, %rax
	movabsq	$center, %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector2_add
	leaq	-56(%rbp), %rdi
	movabsq	$left_tangent, %rsi
	movabsq	$center, %rdx
	callq	gimp_vector2_sub
	leaq	-72(%rbp), %rdi
	cvtsi2sdl	sel_width, %xmm0
	subsd	center, %xmm0
	cvtsi2sdl	sel_height, %xmm1
	subsd	center+8, %xmm1
	callq	gimp_vector2_set
	leaq	-56(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	gimp_vector2_inner_product
	leaq	-56(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gimp_vector2_length
	leaq	-72(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gimp_vector2_length
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	acos
	movabsq	$right_tangent, %rdi
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	callq	sin
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -304(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector2_set
	movabsq	$right_tangent, %rax
	movabsq	$center, %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector2_add
	leaq	-120(%rbp), %rdi
	cvtsi2sdl	sel_width, %xmm0
	cvtsi2sdl	sel_height, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, diagl_slope
	cvtsi2sdl	sel_width, %xmm0
	subsd	right_tangent, %xmm0
	cvtsi2sdl	sel_height, %xmm1
	subsd	right_tangent+8, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, diagr_slope
	movsd	right_tangent+8, %xmm0  # xmm0 = mem[0],zero
	subsd	left_tangent+8, %xmm0
	movsd	right_tangent, %xmm1    # xmm1 = mem[0],zero
	subsd	left_tangent, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, diagb_slope
	cvtsi2sdl	sel_width, %xmm0
	subsd	center, %xmm0
	cvtsi2sdl	sel_height, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, diagm_slope
	callq	gimp_context_get_foreground
	leaq	-120(%rbp), %rdi
	movabsq	$fore_color, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rdx, %rcx
	addq	$2, %rcx
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	leaq	-120(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-120(%rbp), %rdi
	movabsq	$back_color, %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end8:
	.size	init_calculation, .Lfunc_end8-init_calculation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
.LCPI9_2:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI9_3:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI9_4:
	.quad	4589866978952703325     # double 0.0722
.LCPI9_5:
	.quad	4602678819172646912     # double 0.5
.LCPI9_6:
	.quad	4607182418800017408     # double 1
.LCPI9_7:
	.quad	4590068740216009523     # double 0.074999999999999997
.LCPI9_8:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI9_9:
	.quad	4643211215818981376     # double 256
.LCPI9_10:
	.quad	4609434218613702656     # double 1.5
.LCPI9_11:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI9_12:
	.quad	4643210863975260488     # double 255.99000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_13:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	do_curl_effect,@function
do_curl_effect:                         # @do_curl_effect
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
	subq	$448, %rsp              # imm = 0x1C0
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -240(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -16(%rbp)
	movl	image_id(%rip), %edi
	movl	$.L.str.14, %eax
	movl	%eax, %ecx
	movl	%edi, -244(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	movl	true_sel_width(%rip), %edx
	movl	true_sel_height(%rip), %ecx
	movl	-16(%rbp), %esi
	testl	%esi, %esi
	sete	%r8b
	movzbl	%r8b, %esi
	movl	%esi, %edi
	leal	1(%rdi,%rdi), %r8d
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movl	-244(%rbp), %edi        # 4-byte Reload
	movl	%esi, -248(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-248(%rbp), %r9d        # 4-byte Reload
	callq	gimp_layer_new
	movl	%eax, %edi
	callq	gimp_drawable_get
	movq	%rax, curl_layer(%rip)
	movl	(%rax), %ecx
	movl	%ecx, -228(%rbp)
	movl	image_id(%rip), %edi
	movq	curl_layer(%rip), %rax
	movl	(%rax), %esi
	movl	-4(%rbp), %ecx
	movl	%edi, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -256(%rbp)        # 4-byte Spill
	callq	gimp_item_get_parent
	movl	drawable_position(%rip), %ecx
	movl	-252(%rbp), %edi        # 4-byte Reload
	movl	-256(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_insert_layer
	movq	curl_layer(%rip), %r10
	movl	(%r10), %edi
	movl	$3, %esi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_drawable_fill
	movl	-4(%rbp), %edi
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_drawable_offsets
	movq	curl_layer(%rip), %rdx
	movl	(%rdx), %edi
	movl	sel_x(%rip), %ecx
	movl	-20(%rbp), %r8d
	addl	%r8d, %ecx
	movl	sel_y(%rip), %r8d
	movl	-24(%rbp), %r9d
	addl	%r9d, %r8d
	movl	%ecx, %esi
	movl	%r8d, %edx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_offsets
	movq	curl_layer(%rip), %r10
	movl	4(%r10), %ecx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	-280(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %r10d
	leal	2(%r10,%r10), %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	curl_layer(%rip), %rsi
	movl	true_sel_width(%rip), %r8d
	movl	true_sel_height(%rip), %r9d
	movq	%rsp, %rdi
	movl	$1, 8(%rdi)
	movl	$1, (%rdi)
	leaq	-216(%rbp), %rdi
	movl	-248(%rbp), %edx        # 4-byte Reload
	movl	-248(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_init
	movl	sel_width(%rip), %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	movl	sel_height(%rip), %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm1
	leaq	-88(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_vector2_set
	movq	-288(%rbp), %rdi        # 8-byte Reload
	callq	gimp_vector2_length
	movsd	%xmm0, -112(%rbp)
	cvtsi2sdl	sel_width(%rip), %xmm0
	movsd	right_tangent(%rip), %xmm1 # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movapd	.LCPI9_1(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	cvtsi2sdl	sel_height(%rip), %xmm2
	movsd	right_tangent+8(%rip), %xmm3 # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm2
	xorpd	%xmm1, %xmm2
	leaq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	movaps	%xmm2, %xmm1
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_vector2_set
	movq	-296(%rbp), %rdi        # 8-byte Reload
	callq	gimp_vector2_length
	movsd	%xmm0, -120(%rbp)
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	callq	gimp_vector2_inner_product
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	callq	acos
	movsd	%xmm0, -56(%rbp)
	movzbl	fore_color(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI9_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	fore_color+1(%rip), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI9_3(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movzbl	fore_color+2(%rip), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI9_4(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	movsd	.LCPI9_5(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %r11b
	movb	%r11b, -153(%rbp)
	movzbl	back_color(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movzbl	back_color+1(%rip), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	back_color+2(%rip), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm4, %xmm1
	addsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %r11b
	movb	%r11b, -154(%rbp)
	movl	curl(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_79
.LBB9_79:                               # %entry
	movl	-300(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_80
.LBB9_80:                               # %entry
	movl	-300(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_1:                                # %sw.bb
	jmp	.LBB9_4
.LBB9_2:                                # %sw.bb.57
	xorl	%esi, %esi
	movq	curl_layer, %rax
	movl	(%rax), %edi
	callq	get_gradient_samples
	movq	%rax, -240(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %sw.bb.60
	movl	$1, %esi
	movq	curl_layer, %rax
	movl	(%rax), %edi
	callq	get_gradient_samples
	movq	%rax, -240(%rbp)
.LBB9_4:                                # %sw.epilog
	movl	$1, %edi
	leaq	-216(%rbp), %rsi
	movl	sel_width, %eax
	shll	$1, %eax
	imull	sel_height, %eax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	-200(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -224(%rbp)
.LBB9_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_31 Depth 4
                                        #         Child Loop BB9_47 Depth 4
                                        #         Child Loop BB9_40 Depth 4
	cmpq	$0, -224(%rbp)
	je	.LBB9_78
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-188(%rbp), %ecx
	movl	%ecx, -24(%rbp)
.LBB9_7:                                # %for.cond.69
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_31 Depth 4
                                        #         Child Loop BB9_47 Depth 4
                                        #         Child Loop BB9_40 Depth 4
	movl	-24(%rbp), %eax
	movl	-188(%rbp), %ecx
	addl	-180(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_76
# BB#8:                                 # %for.body.74
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-192(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB9_9:                                # %for.cond.76
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_31 Depth 4
                                        #         Child Loop BB9_47 Depth 4
                                        #         Child Loop BB9_40 Depth 4
	movl	-20(%rbp), %eax
	movl	-192(%rbp), %ecx
	addl	-184(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_74
# BB#10:                                # %for.body.81
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	curl+24(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	je	.LBB9_11
	jmp	.LBB9_81
.LBB9_81:                               # %for.body.81
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-312(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB9_20
	jmp	.LBB9_29
.LBB9_11:                               # %sw.bb.82
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$1, curl+20
	je	.LBB9_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$4, curl+20
	jne	.LBB9_14
.LBB9_13:                               # %cond.true
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-20(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	sel_width, %eax
	subl	$1, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB9_15:                               # %cond.end
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -8(%rbp)
	cmpl	$3, curl+20
	je	.LBB9_17
# BB#16:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$4, curl+20
	jne	.LBB9_18
.LBB9_17:                               # %cond.true.95
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-24(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.96
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	sel_height, %eax
	subl	$1, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB9_19:                               # %cond.end.99
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	jmp	.LBB9_29
.LBB9_20:                               # %sw.bb.101
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$1, curl+20
	je	.LBB9_22
# BB#21:                                # %lor.lhs.false.104
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$2, curl+20
	jne	.LBB9_23
.LBB9_22:                               # %cond.true.107
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-24(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB9_24
.LBB9_23:                               # %cond.false.108
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	sel_width, %eax
	subl	$1, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB9_24:                               # %cond.end.111
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -8(%rbp)
	cmpl	$2, curl+20
	je	.LBB9_26
# BB#25:                                # %lor.lhs.false.115
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$3, curl+20
	jne	.LBB9_27
.LBB9_26:                               # %cond.true.118
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-20(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB9_28
.LBB9_27:                               # %cond.false.119
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	sel_height, %eax
	subl	$1, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB9_28:                               # %cond.end.122
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
.LBB9_29:                               # %sw.epilog.124
                                        #   in Loop: Header=BB9_9 Depth=3
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	left_of_diagl
	cmpl	$0, %eax
	je	.LBB9_35
# BB#30:                                # %if.then
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	$0, -28(%rbp)
.LBB9_31:                               # %for.cond.129
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	ja	.LBB9_34
# BB#32:                                # %for.body.132
                                        #   in Loop: Header=BB9_31 Depth=4
	movslq	-28(%rbp), %rax
	movq	-144(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB9_31 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_31
.LBB9_34:                               # %for.end
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_72
.LBB9_35:                               # %if.else
                                        #   in Loop: Header=BB9_9 Depth=3
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	right_of_diagr
	cmpl	$0, %eax
	jne	.LBB9_39
# BB#36:                                # %lor.lhs.false.137
                                        #   in Loop: Header=BB9_9 Depth=3
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	right_of_diagm
	cmpl	$0, %eax
	je	.LBB9_44
# BB#37:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_9 Depth=3
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	below_diagb
	cmpl	$0, %eax
	je	.LBB9_44
# BB#38:                                # %land.lhs.true.146
                                        #   in Loop: Header=BB9_9 Depth=3
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	inside_circle
	cmpl	$0, %eax
	jne	.LBB9_44
.LBB9_39:                               # %if.then.151
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	$0, -28(%rbp)
.LBB9_40:                               # %for.cond.152
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	ja	.LBB9_43
# BB#41:                                # %for.body.155
                                        #   in Loop: Header=BB9_40 Depth=4
	movslq	-28(%rbp), %rax
	movq	-144(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#42:                                # %for.inc.158
                                        #   in Loop: Header=BB9_40 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_40
.LBB9_43:                               # %for.end.160
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_71
.LBB9_44:                               # %if.else.161
                                        #   in Loop: Header=BB9_9 Depth=3
	leaq	-72(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	xorl	%eax, %eax
	movl	sel_width, %ecx
	subl	-8(%rbp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	sel_height, %ecx
	subl	-12(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	callq	gimp_vector2_inner_product
	leaq	-72(%rbp), %rdi
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	callq	gimp_vector2_length
	mulsd	-112(%rbp), %xmm0
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	acos
	movsd	%xmm0, -128(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	inside_circle
	cmpl	$0, %eax
	jne	.LBB9_46
# BB#45:                                # %lor.lhs.false.179
                                        #   in Loop: Header=BB9_9 Depth=3
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	below_diagb
	cmpl	$0, %eax
	je	.LBB9_54
.LBB9_46:                               # %if.then.184
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$0, -28(%rbp)
.LBB9_47:                               # %for.cond.186
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB9_50
# BB#48:                                # %for.body.189
                                        #   in Loop: Header=BB9_47 Depth=4
	movslq	-28(%rbp), %rax
	movq	-144(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#49:                                # %for.inc.192
                                        #   in Loop: Header=BB9_47 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_47
.LBB9_50:                               # %for.end.194
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$0, curl+16
	je	.LBB9_52
# BB#51:                                # %cond.true.196
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	.LCPI9_13(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB9_53
.LBB9_52:                               # %cond.false.201
                                        #   in Loop: Header=BB9_9 Depth=3
	xorl	%eax, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB9_53
.LBB9_53:                               # %cond.end.202
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-348(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB9_70
.LBB9_54:                               # %if.else.207
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	curl(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	je	.LBB9_55
	jmp	.LBB9_82
.LBB9_82:                               # %if.else.207
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-352(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jb	.LBB9_59
	jmp	.LBB9_69
.LBB9_55:                               # %sw.bb.208
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	.LCPI9_10, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI9_11, %xmm0        # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movsd	%xmm1, -368(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB9_57
# BB#56:                                # %if.then.214
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	back_color(%rip), %eax
	cvtsi2sdl	%eax, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI9_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movzbl	fore_color(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	back_color+1(%rip), %eax
	cvtsi2sdl	%eax, %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movzbl	fore_color+1(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	back_color+2(%rip), %eax
	cvtsi2sdl	%eax, %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm1
	movzbl	fore_color+2(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %eax
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movb	%cl, 2(%rdx)
	jmp	.LBB9_58
.LBB9_57:                               # %if.else.245
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-154(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI9_6(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movzbl	-153(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB9_58:                               # %if.end
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	curl+8(%rip), %xmm1     # xmm1 = mem[0],zero
	movsd	.LCPI9_6(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm2
	movsd	.LCPI9_12(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB9_69
.LBB9_59:                               # %sw.bb.263
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	.LCPI9_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_8, %xmm2         # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	-56(%rbp), %xmm3
	mulsd	-128(%rbp), %xmm2
	divsd	-56(%rbp), %xmm2
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm3, -384(%rbp)       # 8-byte Spill
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-384(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB9_61
# BB#60:                                # %cond.true.272
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	.LCPI9_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB9_65
.LBB9_61:                               # %cond.false.273
                                        #   in Loop: Header=BB9_9 Depth=3
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB9_63
# BB#62:                                # %cond.true.276
                                        #   in Loop: Header=BB9_9 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	jmp	.LBB9_64
.LBB9_63:                               # %cond.false.277
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
.LBB9_64:                               # %cond.end.278
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
.LBB9_65:                               # %cond.end.280
                                        #   in Loop: Header=BB9_9 Depth=3
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-240(%rbp), %rax
	movsd	.LCPI9_9(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movl	%ecx, %edx
	imull	-200(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB9_67
# BB#66:                                # %if.then.287
                                        #   in Loop: Header=BB9_9 Depth=3
	movq	-168(%rbp), %rax
	movb	(%rax), %cl
	movq	-144(%rbp), %rax
	movb	%cl, (%rax)
	movq	-168(%rbp), %rax
	movb	1(%rax), %cl
	movq	-144(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-168(%rbp), %rax
	movb	2(%rax), %cl
	movq	-144(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB9_68
.LBB9_67:                               # %if.else.294
                                        #   in Loop: Header=BB9_9 Depth=3
	movq	-168(%rbp), %rax
	movb	(%rax), %cl
	movq	-144(%rbp), %rax
	movb	%cl, (%rax)
.LBB9_68:                               # %if.end.297
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	curl+8(%rip), %xmm2     # xmm2 = mem[0],zero
	movsd	.LCPI9_6(%rip), %xmm3   # xmm3 = mem[0],zero
	movaps	%xmm3, %xmm4
	subsd	%xmm2, %xmm4
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %sil
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB9_69:                               # %sw.epilog.308
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_70
.LBB9_70:                               # %if.end.309
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_71
.LBB9_71:                               # %if.end.310
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_72
.LBB9_72:                               # %if.end.311
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-200(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#73:                                # %for.inc.315
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_9
.LBB9_74:                               # %for.end.317
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-196(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
# BB#75:                                # %for.inc.320
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_7
.LBB9_76:                               # %for.end.322
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-184(%rbp), %eax
	movl	-180(%rbp), %ecx
	imull	%ecx, %eax
	movl	-36(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm0
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -412(%rbp)        # 4-byte Spill
# BB#77:                                # %for.inc.331
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-224(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -224(%rbp)
	jmp	.LBB9_5
.LBB9_78:                               # %for.end.333
	movsd	.LCPI9_6, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	curl_layer, %rdi
	movl	%eax, -416(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	xorl	%esi, %esi
	movq	curl_layer, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	curl_layer, %rcx
	movl	(%rcx), %edi
	movq	curl_layer, %rcx
	movl	4(%rcx), %ecx
	movq	curl_layer, %rdx
	movl	8(%rdx), %r8d
	movl	%esi, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %edx        # 4-byte Reload
	movl	%eax, -424(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	curl_layer, %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	movq	-240(%rbp), %rdi
	callq	g_free
	movl	-228(%rbp), %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	do_curl_effect, .Lfunc_end9-do_curl_effect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	clear_curled_region,@function
clear_curled_region:                    # @clear_curled_region
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
	subq	$272, %rsp              # imm = 0x110
	movl	%edi, -4(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	sel_width, %edi
	shll	$1, %edi
	imull	sel_height, %edi
	movl	%edi, -180(%rbp)
	movl	-180(%rbp), %edi
	shrl	$1, %edi
	movl	%edi, -176(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-196(%rbp), %edi        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-200(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movq	-192(%rbp), %rsi
	movl	sel_x, %ecx
	movl	sel_y, %r8d
	movl	true_sel_width, %r9d
	movl	true_sel_height, %r10d
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	movl	$1, %eax
	movq	-192(%rbp), %rsi
	movl	sel_x, %edx
	movl	sel_y, %ecx
	movl	true_sel_width, %r8d
	movl	true_sel_height, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-104(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -172(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -112(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_5 Depth 3
                                        #         Child Loop BB10_26 Depth 4
	cmpq	$0, -112(%rbp)
	je	.LBB10_41
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -128(%rbp)
.LBB10_3:                               # %for.cond.9
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
                                        #         Child Loop BB10_26 Depth 4
	movl	-128(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB10_39
# BB#4:                                 # %for.body.14
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -124(%rbp)
.LBB10_5:                               # %for.cond.16
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_26 Depth 4
	movl	-124(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB10_37
# BB#6:                                 # %for.body.21
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	curl+24(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB10_7
	jmp	.LBB10_42
.LBB10_42:                              # %for.body.21
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB10_16
	jmp	.LBB10_25
.LBB10_7:                               # %sw.bb
                                        #   in Loop: Header=BB10_5 Depth=3
	cmpl	$1, curl+20
	je	.LBB10_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_5 Depth=3
	cmpl	$4, curl+20
	jne	.LBB10_10
.LBB10_9:                               # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-124(%rbp), %eax
	subl	sel_x, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	sel_width, %eax
	subl	$1, %eax
	movl	-124(%rbp), %ecx
	subl	sel_x, %ecx
	subl	%ecx, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB10_11:                              # %cond.end
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	cmpl	$3, curl+20
	je	.LBB10_13
# BB#12:                                # %lor.lhs.false.32
                                        #   in Loop: Header=BB10_5 Depth=3
	cmpl	$4, curl+20
	jne	.LBB10_14
.LBB10_13:                              # %cond.true.35
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-128(%rbp), %eax
	subl	sel_y, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB10_15
.LBB10_14:                              # %cond.false.37
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	sel_height, %eax
	subl	$1, %eax
	movl	-128(%rbp), %ecx
	subl	sel_y, %ecx
	subl	%ecx, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB10_15:                              # %cond.end.41
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	jmp	.LBB10_25
.LBB10_16:                              # %sw.bb.43
                                        #   in Loop: Header=BB10_5 Depth=3
	cmpl	$1, curl+20
	je	.LBB10_18
# BB#17:                                # %lor.lhs.false.46
                                        #   in Loop: Header=BB10_5 Depth=3
	cmpl	$2, curl+20
	jne	.LBB10_19
.LBB10_18:                              # %cond.true.49
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-128(%rbp), %eax
	subl	sel_y, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false.51
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	sel_width, %eax
	subl	$1, %eax
	movl	-128(%rbp), %ecx
	subl	sel_y, %ecx
	subl	%ecx, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB10_20:                              # %cond.end.55
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	cmpl	$2, curl+20
	je	.LBB10_22
# BB#21:                                # %lor.lhs.false.59
                                        #   in Loop: Header=BB10_5 Depth=3
	cmpl	$3, curl+20
	jne	.LBB10_23
.LBB10_22:                              # %cond.true.62
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-124(%rbp), %eax
	subl	sel_x, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false.64
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	sel_height, %eax
	subl	$1, %eax
	movl	-124(%rbp), %ecx
	subl	sel_x, %ecx
	subl	%ecx, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB10_24:                              # %cond.end.68
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
.LBB10_25:                              # %sw.epilog
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	$0, -132(%rbp)
.LBB10_26:                              # %for.cond.70
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        #       Parent Loop BB10_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-132(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jae	.LBB10_29
# BB#27:                                # %for.body.73
                                        #   in Loop: Header=BB10_26 Depth=4
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB10_26 Depth=4
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB10_26
.LBB10_29:                              # %for.end
                                        #   in Loop: Header=BB10_5 Depth=3
	cvtsi2sdl	-116(%rbp), %xmm0
	cvtsi2sdl	-120(%rbp), %xmm1
	callq	right_of_diagr
	cmpl	$0, %eax
	jne	.LBB10_33
# BB#30:                                # %lor.lhs.false.79
                                        #   in Loop: Header=BB10_5 Depth=3
	cvtsi2sdl	-116(%rbp), %xmm0
	cvtsi2sdl	-120(%rbp), %xmm1
	callq	right_of_diagm
	cmpl	$0, %eax
	je	.LBB10_34
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_5 Depth=3
	cvtsi2sdl	-116(%rbp), %xmm0
	cvtsi2sdl	-120(%rbp), %xmm1
	callq	below_diagb
	cmpl	$0, %eax
	je	.LBB10_34
# BB#32:                                # %land.lhs.true.88
                                        #   in Loop: Header=BB10_5 Depth=3
	cvtsi2sdl	-116(%rbp), %xmm0
	cvtsi2sdl	-120(%rbp), %xmm1
	callq	inside_circle
	cmpl	$0, %eax
	jne	.LBB10_34
.LBB10_33:                              # %if.then
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB10_35
.LBB10_34:                              # %if.else
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-172(%rbp), %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB10_35:                              # %if.end
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-88(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movl	-40(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#36:                                # %for.inc.103
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB10_5
.LBB10_37:                              # %for.end.105
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-36(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-84(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#38:                                # %for.inc.111
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB10_3
.LBB10_39:                              # %for.end.113
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	imull	%ecx, %eax
	movl	-176(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -176(%rbp)
	movl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm0
	movl	-180(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -236(%rbp)        # 4-byte Spill
# BB#40:                                # %for.inc.122
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -112(%rbp)
	jmp	.LBB10_1
.LBB10_41:                              # %for.end.124
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-192(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movl	-4(%rbp), %edi
	callq	gimp_drawable_merge_shadow
	movl	-4(%rbp), %edi
	movl	sel_x, %esi
	movl	sel_y, %edx
	movl	true_sel_width, %ecx
	movl	true_sel_height, %r8d
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-192(%rbp), %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clear_curled_region, .Lfunc_end10-clear_curled_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI11_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI11_2:
	.quad	4589866978952703325     # double 0.0722
.LCPI11_3:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_gradient_samples,@function
get_gradient_samples:                   # @get_gradient_samples
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
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	callq	gimp_context_get_gradient
	movl	$256, %esi              # imm = 0x100
	leaq	-20(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %edx
	callq	gimp_gradient_get_uniform_samples
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_free
	movl	-4(%rbp), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -60(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -64(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB11_3:                               # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -72(%rbp)
	movl	-60(%rbp), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
.LBB11_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB11_16
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-76(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	-76(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	shlq	$3, %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_11
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	$0, -80(%rbp)
.LBB11_7:                               # %for.cond.12
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -80(%rbp)
	jge	.LBB11_10
# BB#8:                                 # %for.body.15
                                        #   in Loop: Header=BB11_7 Depth=2
	movslq	-80(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI11_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB11_7 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB11_7
.LBB11_10:                              # %for.end
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_12
.LBB11_11:                              # %if.else
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI11_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI11_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI11_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
.LBB11_12:                              # %if.end
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB11_14
# BB#13:                                # %if.then.33
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI11_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi,%rax)
.LBB11_14:                              # %if.end.39
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc.40
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB11_4
.LBB11_16:                              # %for.end.42
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	get_gradient_samples, .Lfunc_end11-get_gradient_samples
	.cfi_endproc

	.align	16, 0x90
	.type	left_of_diagl,@function
left_of_diagl:                          # @left_of_diagl
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	sel_width, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	sel_height, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	diagl_slope, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	left_of_diagl, .Lfunc_end12-left_of_diagl
	.cfi_endproc

	.align	16, 0x90
	.type	right_of_diagr,@function
right_of_diagr:                         # @right_of_diagr
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	sel_width, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	sel_height, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	diagr_slope, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	right_of_diagr, .Lfunc_end13-right_of_diagr
	.cfi_endproc

	.align	16, 0x90
	.type	right_of_diagm,@function
right_of_diagm:                         # @right_of_diagm
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	sel_width, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	sel_height, %xmm3
	subsd	%xmm3, %xmm2
	mulsd	diagm_slope, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	right_of_diagm, .Lfunc_end14-right_of_diagm
	.cfi_endproc

	.align	16, 0x90
	.type	below_diagb,@function
below_diagb:                            # @below_diagb
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	right_tangent+8, %xmm1  # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	subsd	right_tangent, %xmm2
	mulsd	diagb_slope, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	below_diagb, .Lfunc_end15-below_diagb
	.cfi_endproc

	.align	16, 0x90
	.type	inside_circle,@function
inside_circle:                          # @inside_circle
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
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	center, %xmm0           # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movsd	center+8, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	radius, %xmm1           # xmm1 = mem[0],zero
	mulsd	radius, %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	inside_circle, .Lfunc_end16-inside_circle
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.size	query.args, 168

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
	.asciz	"colors"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FG- and BG-Color (0), Current gradient (1), Current gradient reversed (2)"
	.size	.L.str.7, 74

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"edge"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Edge to curl (1-4, clockwise, starting in the lower right edge)"
	.size	.L.str.9, 64

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"orientation"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Vertical (0), Horizontal (1)"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"shade"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Shade the region under the curl (1) or not (0)"
	.size	.L.str.13, 47

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.return_vals, 24

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Curl Layer"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The new layer with the curl."
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-pagecurl"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Curl up one of the image corners"
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"This plug-in creates a pagecurl-effect."
	.size	.L.str.18, 40

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Federico Mena Quintero and Simon Budig"
	.size	.L.str.19, 39

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"July 2004, 1.0"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Pagecurl..."
	.size	.L.str.21, 13

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
	.comm	run.values,80,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	curl,@object            # @curl
	.local	curl
	.comm	curl,32,8
	.type	image_id,@object        # @image_id
	.local	image_id
	.comm	image_id,4,4
	.type	sel_x,@object           # @sel_x
	.local	sel_x
	.comm	sel_x,4,4
	.type	sel_y,@object           # @sel_y
	.local	sel_y
	.comm	sel_y,4,4
	.type	true_sel_width,@object  # @true_sel_width
	.local	true_sel_width
	.comm	true_sel_width,4,4
	.type	true_sel_height,@object # @true_sel_height
	.local	true_sel_height
	.comm	true_sel_height,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"pagecurl"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Pagecurl Effect"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-pagecurl"
	.size	.L.str.28, 14

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
	.asciz	"Curl Location"
	.size	.L.str.31, 14

	.type	curl_image,@object      # @curl_image
	.local	curl_image
	.comm	curl_image,8,8
	.type	dialog.name,@object     # @dialog.name
	.data
	.align	16
dialog.name:
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.size	dialog.name, 32

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"Lower right"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Lower left"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Upper left"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Upper right"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-item-data"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"toggled"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Curl Orientation"
	.size	.L.str.38, 17

	.type	dialog.name.39,@object  # @dialog.name.39
	.data
	.align	16
dialog.name.39:
	.quad	.L.str.40
	.quad	.L.str.41
	.size	dialog.name.39, 16

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"_Vertical"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Horizontal"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Shade under curl"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Current gradient (reversed)"
	.size	.L.str.43, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-tool-blend"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Current gradient"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Foreground / background colors"
	.size	.L.str.46, 31

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-default-colors"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Opacity:"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"value-changed"
	.size	.L.str.49, 14

	.type	curl_pixbufs,@object    # @curl_pixbufs
	.data
	.align	16
curl_pixbufs:
	.quad	curl0
	.quad	curl1
	.quad	curl2
	.quad	curl3
	.quad	curl4
	.quad	curl5
	.quad	curl6
	.quad	curl7
	.size	curl_pixbufs, 64

	.type	curl0,@object           # @curl0
	.section	.rodata,"a",@progbits
	.align	4
curl0:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314333\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314333\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314\314\314\314333\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\000\000\000fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\231\231\231\000\000\000fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\377\377\377\314\314\314\000\000\000\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377fff333fff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\231\231\231\000\000\000ffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\314\314\314\377\377\377\314\314\314333333ffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\377\377\377\377\377\377\231\231\231\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\377\377\377\377\377\377\314\314\314333fff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\314\314\314fff\000\000\000fff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\231\231\231333\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\377\377\377\377\377\377\377\377\377\231\231\231333\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231333\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000333333\314\314\314\377\377\377\377\377\377\377\377\377\231\231\231fff\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314333\377\377\377\377\377\377\314\314\314fff333fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231333\314\314\314\231\231\231333\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231ffffff333fff333fff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231fffffffff333333\000\000\000fff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffff333333\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffff333333\000\000\000\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231fffffffff333333\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231fffffffff333333\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffff333333333\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231fffffffff333333\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000"
	.size	curl0, 3325

	.type	curl1,@object           # @curl1
	.align	4
curl1:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314333\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314333\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314333\314\314\314\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\000\000\000\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\000\000\000\231\231\231\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\000\000\000\314\314\314\377\377\377fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fff333fff\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314ffffff\000\000\000\231\231\231\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314ffffff333333\314\314\314\377\377\377\314\314\314333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\231\231\231\377\377\377\377\377\377\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fff333\314\314\314\377\377\377\377\377\377\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fff\000\000\000fff\314\314\314\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314333\231\231\231\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000333\231\231\231\377\377\377\377\377\377\377\377\377\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314333\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000fff\231\231\231\377\377\377\377\377\377\377\377\377\314\314\314333333\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff333fff\314\314\314\377\377\377\377\377\377333\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000333\231\231\231\314\314\314333\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fff333fff333ffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fff\000\000\000333333fffffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000333333ffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000\000\000\000333333ffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000333333fffffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000333333fffffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000333333333ffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000333333fffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	curl1, 3325

	.type	curl2,@object           # @curl2
	.align	4
curl2:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231fffffffff333333\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffff333333333\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231fffffffff333333\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231fffffffff333333\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffff333333\000\000\000\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffff333333\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231fffffffff333333\000\000\000fff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231ffffff333fff333fff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231333\314\314\314\231\231\231333\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314333\377\377\377\377\377\377\314\314\314fff333fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000333333\314\314\314\377\377\377\377\377\377\377\377\377\231\231\231fff\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231333\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\377\377\377\377\377\377\377\377\377\231\231\231333\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\231\231\231333\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\314\314\314fff\000\000\000fff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\377\377\377\377\377\377\314\314\314333fff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\377\377\377\377\377\377\231\231\231\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\314\314\314\377\377\377\314\314\314333333ffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\231\231\231\000\000\000ffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377fff333fff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\377\377\377\314\314\314\000\000\000\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\231\231\231\000\000\000fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\000\000\000fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314\314\314\314333\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314333\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314333\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	curl2, 3325

	.type	curl3,@object           # @curl3
	.align	4
curl3:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000333333fffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000333333333ffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000333333fffffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000333333fffffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000\000\000\000333333ffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000333333ffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fff\000\000\000333333fffffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fff333fff333ffffff\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000333\231\231\231\314\314\314333\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff333fff\314\314\314\377\377\377\377\377\377333\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000fff\231\231\231\377\377\377\377\377\377\377\377\377\314\314\314333333\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314333\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000333\231\231\231\377\377\377\377\377\377\377\377\377\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314333\231\231\231\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fff\000\000\000fff\314\314\314\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fff333\314\314\314\377\377\377\377\377\377\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\231\231\231\377\377\377\377\377\377\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314ffffff333333\314\314\314\377\377\377\314\314\314333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314ffffff\000\000\000\231\231\231\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fff333fff\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\000\000\000\314\314\314\377\377\377fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\000\000\000\231\231\231\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\000\000\000\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314333\314\314\314\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314333\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314333\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	curl3, 3325

	.type	curl4,@object           # @curl4
	.align	4
curl4:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231\231\231\231fff\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231fffffffff\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffffffffff\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000333\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231fffffffff333333\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff333\314\314\314\231\231\231\231\231\231ffffffffffff333333333\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\314\314\314333\231\231\231fffffffff333333333333\000\000\000\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377333ffffff333333333\000\000\000\000\000\000\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314333333333\000\000\000\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000\000\000\000\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333333\000\000\000fff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff\000\000\000\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314fff333\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\314\314\314\231\231\231333\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\377\377\377\231\231\231333\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\314\314\314fff\000\000\000333\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314\377\377\377\231\231\231\000\000\000333ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\000\000\000\314\314\314\314\314\314\000\000\000\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\000\000\000\314\314\314333333fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\000\000\000\000\000\000333\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000333fff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000"
	.size	curl4, 3325

	.type	curl5,@object           # @curl5
	.align	4
curl5:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000fff\231\231\231\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000fffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000ffffffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000333333fffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314333\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000333333333ffffffffffff\231\231\231\231\231\231\314\314\314333fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\000\000\000333333333333fffffffff\231\231\231333\314\314\314\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\000\000\000\000\000\000333333333ffffff333\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\000\000\000333333333\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\000\000\000\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fff\000\000\000333333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000\000\000\000fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000333fff\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000333\231\231\231\314\314\314\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000333\231\231\231\377\377\377\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314333\000\000\000fff\314\314\314\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff333\000\000\000\231\231\231\377\377\377\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000\000\000\000\314\314\314\314\314\314\000\000\000\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff333333\314\314\314\000\000\000\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314333\000\000\000\000\000\000\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fff333\000\000\000\000"
	.size	curl5, 3325

	.type	curl6,@object           # @curl6
	.align	4
curl6:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!\000\000\000333fff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\000\000\000\000\000\000333\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\000\000\000\314\314\314333333fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\000\000\000\314\314\314\314\314\314\000\000\000\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\000\000\000\314\314\314\377\377\377\231\231\231\000\000\000333ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\314\314\314fff\000\000\000333\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\231\231\231\377\377\377\377\377\377\231\231\231333\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\314\314\314\231\231\231333\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314fff333\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000fff\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff\000\000\000\000\000\000\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000ffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333333\000\000\000fff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000\000\000\000\314\314\314\314\314\314fffffffff\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314333333333\000\000\000\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377333ffffff333333333\000\000\000\000\000\000\314\314\314\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000333fff\231\231\231\314\314\314333\231\231\231fffffffff333333333333\000\000\000\314\314\314\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000fff333\314\314\314\231\231\231\231\231\231ffffffffffff333333333\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000333\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231fffffffff333333\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231ffffffffffff\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231fffffffff\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231\231\231\231fff\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\377\377\377\314\314\314\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\231\231\231\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\314\314\314\231\231\231\231\231\231\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\231\231\231\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\314\314\314\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	curl6, 3325

	.type	curl7,@object           # @curl7
	.align	4
curl7:
	.asciz	"GdkP\000\000\f\374\001\001\000\001\000\000\000d\000\000\000!\000\000\000!fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fff333\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314333\000\000\000\000\000\000\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff333333\314\314\314\000\000\000\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000\000\000\000\314\314\314\314\314\314\000\000\000\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff333\000\000\000\231\231\231\377\377\377\314\314\314\000\000\000\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314333\000\000\000fff\314\314\314\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000333\231\231\231\377\377\377\377\377\377\231\231\231\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314\000\000\000333\231\231\231\314\314\314\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000333fff\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\000\000\000\000\000\000fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314fff\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\000\000\000333\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314fffffffff\314\314\314\314\314\314\314\314\314ffffff\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fffffffff\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\314\314\314fff\000\000\000333333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000fffffffff\314\314\314\314\314\314\000\000\000\000\000\000333fff\231\231\231\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\314\314\314fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\000\000\000333333333\314\314\314\377\377\377\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\314\314\314\000\000\000\000\000\000333333333ffffff333\377\377\377\377\377\377\314\314\314\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\314\314\314\000\000\000333333333333fffffffff\231\231\231333\314\314\314\231\231\231fff333\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000333333333ffffffffffff\231\231\231\231\231\231\314\314\314333fff\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000333333fffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314333\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000ffffffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000fffffffff\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000fff\231\231\231\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\231\231\231\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\314\314\314\377\377\377\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\231\231\231\231\231\231\314\314\314\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\231\231\231\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\314\314\314\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\314\314\314\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\314\314\314\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	curl7, 3325

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"Page Curl"
	.size	.L.str.50, 10

	.type	drawable_position,@object # @drawable_position
	.local	drawable_position
	.comm	drawable_position,4,4
	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	center,@object          # @center
	.local	center
	.comm	center,16,8
	.type	radius,@object          # @radius
	.local	radius
	.comm	radius,8,8
	.type	left_tangent,@object    # @left_tangent
	.local	left_tangent
	.comm	left_tangent,16,8
	.type	right_tangent,@object   # @right_tangent
	.local	right_tangent
	.comm	right_tangent,16,8
	.type	diagl_slope,@object     # @diagl_slope
	.local	diagl_slope
	.comm	diagl_slope,8,8
	.type	diagr_slope,@object     # @diagr_slope
	.local	diagr_slope
	.comm	diagr_slope,8,8
	.type	diagb_slope,@object     # @diagb_slope
	.local	diagb_slope
	.comm	diagb_slope,8,8
	.type	diagm_slope,@object     # @diagm_slope
	.local	diagm_slope
	.comm	diagm_slope,8,8
	.type	fore_color,@object      # @fore_color
	.local	fore_color
	.comm	fore_color,3,1
	.type	back_color,@object      # @back_color
	.local	back_color
	.comm	back_color,3,1
	.type	curl_layer,@object      # @curl_layer
	.local	curl_layer
	.comm	curl_layer,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
