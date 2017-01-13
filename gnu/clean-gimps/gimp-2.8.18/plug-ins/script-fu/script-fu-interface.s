	.text
	.file	"script-fu-interface.bc"
	.globl	script_fu_interface_is_active
	.align	16, 0x90
	.type	script_fu_interface_is_active,@function
script_fu_interface_is_active:          # @script_fu_interface_is_active
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
	cmpq	$0, sf_interface
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_interface_is_active, .Lfunc_end0-script_fu_interface_is_active
	.cfi_endproc

	.globl	script_fu_interface_report_cc
	.align	16, 0x90
	.type	script_fu_interface_report_cc,@function
script_fu_interface_report_cc:          # @script_fu_interface_report_cc
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, sf_interface
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_14
.LBB1_2:                                # %if.end
	movq	sf_interface, %rax
	cmpq	$0, 48(%rax)
	je	.LBB1_7
# BB#3:                                 # %land.lhs.true
	movq	sf_interface, %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#4:                                 # %if.then.3
	movabsq	$.L.str, %rsi
	movq	sf_interface, %rax
	movl	56(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 56(%rax)
	movq	-8(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rsi
	movq	sf_interface, %rax
	movl	56(%rax), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	movq	sf_interface, %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB1_6:                                # %if.end.11
	jmp	.LBB1_11
.LBB1_7:                                # %if.else
	movq	sf_interface, %rax
	movl	$1, 56(%rax)
	movq	sf_interface, %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str, %rsi
	movq	sf_interface, %rdi
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.18
	movq	sf_interface, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB1_10
.LBB1_9:                                # %if.else.22
	movq	sf_interface, %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB1_10:                               # %if.end.26
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.27
	jmp	.LBB1_12
.LBB1_12:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB1_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB1_12 Depth=1
	callq	gtk_main_iteration
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_14:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	script_fu_interface_report_cc, .Lfunc_end1-script_fu_interface_report_cc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.text
	.globl	script_fu_interface
	.align	16, 0x90
	.type	script_fu_interface,@function
script_fu_interface:                    # @script_fu_interface
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$968, %rsp              # imm = 0x3C8
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpq	$0, sf_interface
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	sf_interface, %rax
	movq	40(%rax), %rsi
	movb	$0, %al
	callq	g_message
	movq	-112(%rbp), %rdi
	callq	g_free
	movl	$4, -28(%rbp)
	jmp	.LBB2_62
.LBB2_2:                                # %if.end
	jmp	.LBB2_3
.LBB2_3:                                # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_interface, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -28(%rbp)
	jmp	.LBB2_62
.LBB2_6:                                # %if.end.6
	jmp	.LBB2_7
.LBB2_7:                                # %do.end
	cmpl	$0, script_fu_interface.gtk_initted
	jne	.LBB2_11
# BB#8:                                 # %if.then.7
	jmp	.LBB2_9
.LBB2_9:                                # %do.body.8
	callq	gimp_locale_directory
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.7, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -216(%rbp)        # 8-byte Spill
# BB#10:                                # %do.end.13
	movabsq	$.L.str.9, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movl	$1, script_fu_interface.gtk_initted
.LBB2_11:                               # %if.end.14
	movl	$64, %eax
	movl	%eax, %edi
	movl	$3, sf_status
	callq	g_slice_alloc0
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, sf_interface
	movq	-40(%rbp), %rax
	movslq	56(%rax), %rdi
	callq	g_malloc0_n
	movq	sf_interface, %rsi
	movq	%rax, 16(%rsi)
	movq	-40(%rbp), %rdi
	callq	script_fu_script_get_title
	movabsq	$.L.str.10, %rdi
	movq	sf_interface, %rsi
	movq	%rax, 40(%rsi)
	callq	gettext
	movq	sf_interface, %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %rdi
	movl	$1, %r9d
	movabsq	$.L.str.13, %r10
	movl	$4294967290, %r11d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.14, %rbx
	movl	$4294967291, %r14d      # imm = 0xFFFFFFFB
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r15
	movq	(%r15), %r15
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movq	%r15, %r9
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r14d, -232(%rbp)       # 4-byte Spill
	movl	%r11d, -236(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	sf_interface, %rdx
	movq	%rax, (%rdx)
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.15, %rsi
	movabsq	$script_fu_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$script_fu_interface_quit, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	movl	56(%rax), %ecx
	subl	-44(%rbp), %ecx
	movl	%ecx, %edi
	callq	gtk_table_new
	movq	sf_interface, %r10
	movq	%rax, 8(%r10)
	movq	sf_interface, %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	sf_interface, %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	sf_interface, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	sf_interface, %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	%rax, -80(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -100(%rbp)
.LBB2_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_43 Depth 2
	movl	-100(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB2_61
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	$0, -120(%rbp)
	movl	$1056964608, -140(%rbp) # imm = 0x3F000000
	movq	$0, -152(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -160(%rbp)
	movslq	-100(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	64(%rdx), %rdx
	shlq	$7, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -168(%rbp)
	movl	-44(%rbp), %eax
	movl	-156(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -156(%rbp)
	movl	$.L.str.17, %eax
	movl	%eax, %edi
	callq	gettext
	movq	-168(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movb	%sil, %r8b
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	%r8b, %al
	callq	g_strdup_printf
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movl	(%rax), %r9d
	movl	%r9d, %eax
	movq	%rax, %rcx
	subq	$20, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	ja	.LBB2_52
# BB#63:                                # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_14:                               # %sw.bb
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-168(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	ja	.LBB2_20
# BB#65:                                # %sw.bb
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_15:                               # %sw.bb.61
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_image_combo_box_new
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_21
.LBB2_16:                               # %sw.bb.63
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_21
.LBB2_17:                               # %sw.bb.66
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_layer_combo_box_new
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_21
.LBB2_18:                               # %sw.bb.69
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_channel_combo_box_new
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_21
.LBB2_19:                               # %sw.bb.72
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_vectors_combo_box_new
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_21
.LBB2_20:                               # %sw.default
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_21
.LBB2_21:                               # %sw.epilog
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movq	-152(%rbp), %rdi
	movl	(%rdi), %ecx
	movq	-152(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_22:                               # %sw.bb.78
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.18, %rdi
	movl	$1, -160(%rbp)
	callq	gettext
	movl	$60, %esi
	movl	$15, %edx
	xorl	%r8d, %r8d
	movq	-168(%rbp), %rdi
	addq	$72, %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	gimp_color_button_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx
	movq	-168(%rbp), %rdi
	addq	$72, %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_23:                               # %sw.bb.87
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	$0, -136(%rbp)
	movq	-168(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movl	72(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-168(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_24:                               # %sw.bb.97
                                        #   in Loop: Header=BB2_12 Depth=1
	callq	gtk_entry_new
	movl	$100, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-120(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-120(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	jmp	.LBB2_52
.LBB2_25:                               # %sw.bb.104
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-120(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movl	$100, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi
	callq	gtk_widget_set_size_request
	callq	gtk_text_view_new
	movq	%rax, -176(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movq	-176(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	72(%rax), %rsi
	callq	gtk_text_buffer_set_text
	xorps	%xmm0, %xmm0
	movss	%xmm0, -140(%rbp)
	jmp	.LBB2_52
.LBB2_26:                               # %sw.bb.120
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-168(%rbp), %rax
	movl	68(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	je	.LBB2_27
	jmp	.LBB2_64
.LBB2_64:                               # %sw.bb.120
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	je	.LBB2_29
	jmp	.LBB2_28
.LBB2_27:                               # %sw.bb.122
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	sf_interface, %rax
	movq	8(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	-156(%rbp), %edx
	movq	-136(%rbp), %r10
	movq	-168(%rbp), %r11
	movsd	80(%r11), %xmm1         # xmm1 = mem[0],zero
	movq	-168(%rbp), %r11
	movsd	32(%r11), %xmm2         # xmm2 = mem[0],zero
	movq	-168(%rbp), %r11
	movsd	40(%r11), %xmm3         # xmm3 = mem[0],zero
	movq	-168(%rbp), %r11
	movsd	48(%r11), %xmm4         # xmm4 = mem[0],zero
	movq	-168(%rbp), %r11
	movsd	56(%r11), %xmm5         # xmm5 = mem[0],zero
	movq	-168(%rbp), %r11
	movl	64(%r11), %ebx
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movl	%ebx, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-568(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	-168(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-168(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	jmp	.LBB2_30
.LBB2_28:                               # %sw.default.148
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.22, %rdi
	movq	-168(%rbp), %rax
	movl	68(%rax), %esi
	movb	$0, %al
	callq	g_warning
.LBB2_29:                               # %sw.bb.152
                                        #   in Loop: Header=BB2_12 Depth=1
	leaq	-128(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	$1, -160(%rbp)
	movq	-168(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-168(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-168(%rbp), %rax
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-168(%rbp), %rax
	movsd	48(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-168(%rbp), %rax
	movsd	56(%rax), %xmm5         # xmm5 = mem[0],zero
	movq	-168(%rbp), %rax
	movl	64(%rax), %esi
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-128(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	%rax, 72(%rsi)
.LBB2_30:                               # %sw.epilog.179
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-168(%rbp), %rdi
	addq	$72, %rdi
	addq	$8, %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_31:                               # %sw.bb.187
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-168(%rbp), %rax
	cmpl	$14, (%rax)
	jne	.LBB2_33
# BB#32:                                # %if.then.191
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.24, %rdi
	callq	gettext
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_button_new
	movq	%rax, -120(%rbp)
	jmp	.LBB2_34
.LBB2_33:                               # %if.else.194
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_button_new
	movq	%rax, -120(%rbp)
.LBB2_34:                               # %if.end.197
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-168(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB2_36
# BB#35:                                # %if.then.200
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB2_36:                               # %if.end.207
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.26, %rsi
	movabsq	$script_fu_file_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdx
	movq	-168(%rbp), %rdi
	addq	$72, %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-632(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_37:                               # %sw.bb.211
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	72(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_font_select_button_new
	movabsq	$.L.str.28, %rsi
	movabsq	$script_fu_font_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_38:                               # %sw.bb.218
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	72(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_select_button_new
	movabsq	$.L.str.30, %rsi
	movabsq	$script_fu_palette_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_39:                               # %sw.bb.225
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.31, %rdi
	movl	$1, -160(%rbp)
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	72(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_pattern_select_button_new
	movabsq	$.L.str.32, %rsi
	movabsq	$script_fu_pattern_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-704(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_40:                               # %sw.bb.232
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.33, %rdi
	movl	$1, -160(%rbp)
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	72(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_gradient_select_button_new
	movabsq	$.L.str.34, %rsi
	movabsq	$script_fu_gradient_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-728(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_41:                               # %sw.bb.239
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$.L.str.35, %rdi
	movl	$1, -160(%rbp)
	callq	gettext
	movq	-168(%rbp), %rdi
	movq	72(%rdi), %rsi
	movq	-168(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-168(%rbp), %rdi
	movl	88(%rdi), %edx
	movq	-168(%rbp), %rdi
	movl	92(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_brush_select_button_new
	movabsq	$.L.str.36, %rsi
	movabsq	$script_fu_brush_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-168(%rbp), %r10
	addq	$72, %r10
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-744(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_42:                               # %sw.bb.253
                                        #   in Loop: Header=BB2_12 Depth=1
	callq	gtk_combo_box_text_new
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB2_43:                               # %for.cond.257
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -88(%rbp)
	je	.LBB2_49
# BB#44:                                # %for.body.259
                                        #   in Loop: Header=BB2_43 Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_text_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_combo_box_text_append_text
# BB#45:                                # %for.inc
                                        #   in Loop: Header=BB2_43 Depth=2
	cmpq	$0, -88(%rbp)
	je	.LBB2_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB2_43 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false
                                        #   in Loop: Header=BB2_43 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB2_48
.LBB2_48:                               # %cond.end
                                        #   in Loop: Header=BB2_43 Depth=2
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB2_43
.LBB2_49:                               # %for.end
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movl	80(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	movabsq	$.L.str.37, %rsi
	movabsq	$script_fu_combo_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-168(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_50:                               # %sw.bb.271
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_type_from_name
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movl	80(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdx
	movq	-168(%rbp), %r10
	addq	$72, %r10
	addq	$8, %r10
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-816(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movl	%eax, -820(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB2_52
.LBB2_51:                               # %sw.bb.285
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_52
.LBB2_52:                               # %sw.epilog.286
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB2_59
# BB#53:                                # %if.then.288
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB2_55
# BB#54:                                # %if.then.290
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	sf_interface, %rax
	movq	8(%rax), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movl	$2, %r9d
	movl	-156(%rbp), %edx
	movq	-136(%rbp), %rcx
	movss	-140(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movq	-120(%rbp), %r8
	movl	-160(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-136(%rbp), %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	g_free
	jmp	.LBB2_56
.LBB2_55:                               # %if.else.295
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	sf_interface, %rax
	movq	8(%rax), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$5, %r8d
	movl	$4, %r9d
	movq	-120(%rbp), %rsi
	movl	-156(%rbp), %r10d
	movl	-156(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -860(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -864(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
.LBB2_56:                               # %if.end.299
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpl	$0, -160(%rbp)
	je	.LBB2_58
# BB#57:                                # %if.then.301
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_size_group_add_widget
.LBB2_58:                               # %if.end.302
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_59
.LBB2_59:                               # %if.end.303
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-120(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	sf_interface, %rdx
	movq	16(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#60:                                # %for.inc.307
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB2_12
.LBB2_61:                               # %for.end.308
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -876(%rbp)        # 4-byte Spill
	movl	-876(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_progress_bar_new
	movq	sf_interface, %rsi
	movq	%rax, 32(%rsi)
	movq	-72(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	sf_interface, %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	movl	-892(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	sf_interface, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	sf_interface, %rsi
	movq	%rax, 24(%rsi)
	movq	sf_interface, %rax
	movq	24(%rax), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	sf_interface, %rax
	movq	24(%rax), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movq	sf_interface, %rax
	movq	24(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-72(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	sf_interface, %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
	movl	-932(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	sf_interface, %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_main
	movl	sf_status, %ecx
	movl	%ecx, -28(%rbp)
.LBB2_62:                               # %return
	movl	-28(%rbp), %eax
	addq	$968, %rsp              # imm = 0x3C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	script_fu_interface, .Lfunc_end2-script_fu_interface
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_14
	.quad	.LBB2_14
	.quad	.LBB2_14
	.quad	.LBB2_14
	.quad	.LBB2_14
	.quad	.LBB2_22
	.quad	.LBB2_23
	.quad	.LBB2_24
	.quad	.LBB2_24
	.quad	.LBB2_26
	.quad	.LBB2_37
	.quad	.LBB2_39
	.quad	.LBB2_41
	.quad	.LBB2_40
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_42
	.quad	.LBB2_38
	.quad	.LBB2_25
	.quad	.LBB2_50
	.quad	.LBB2_51
.LJTI2_1:
	.quad	.LBB2_15
	.quad	.LBB2_16
	.quad	.LBB2_17
	.quad	.LBB2_18
	.quad	.LBB2_19

	.text
	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
.Lfunc_end3:
	.size	g_message, .Lfunc_end3-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_response,@function
script_fu_response:                     # @script_fu_response
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	sf_interface, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_action_area
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_6
.LBB4_2:                                # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$-5, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB4_4
	jmp	.LBB4_7
.LBB4_7:                                # %if.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB4_5
	jmp	.LBB4_3
.LBB4_3:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	script_fu_reset
	jmp	.LBB4_6
.LBB4_4:                                # %sw.bb.4
	xorl	%esi, %esi
	movq	sf_interface, %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rdi
	callq	script_fu_ok
	movq	sf_interface, %rax
	movq	(%rax), %rdi
	callq	unset_transient_for
	movq	sf_interface, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB4_6
.LBB4_5:                                # %sw.default
	movl	$4, sf_status
	movq	sf_interface, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
.LBB4_6:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	script_fu_response, .Lfunc_end4-script_fu_response
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_interface_quit,@function
script_fu_interface_quit:               # @script_fu_interface_quit
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_interface_quit, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_20
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, sf_interface
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.script_fu_interface_quit, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_20
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movq	sf_interface, %rax
	movq	40(%rax), %rdi
	callq	g_free
	movl	$0, -12(%rbp)
.LBB5_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB5_17
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB5_11 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %edx
	movl	%edx, %esi
	addl	$-10, %esi
	subl	$4, %esi
	movl	%edx, -16(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	jb	.LBB5_13
	jmp	.LBB5_21
.LBB5_21:                               # %for.body
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$17, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jne	.LBB5_14
	jmp	.LBB5_13
.LBB5_13:                               # %sw.bb
                                        #   in Loop: Header=BB5_11 Depth=1
	movslq	-12(%rbp), %rax
	movq	sf_interface, %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_select_button_close_popup
	jmp	.LBB5_15
.LBB5_14:                               # %sw.default
                                        #   in Loop: Header=BB5_11 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %sw.epilog
                                        #   in Loop: Header=BB5_11 Depth=1
	jmp	.LBB5_16
.LBB5_16:                               # %for.inc
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_11
.LBB5_17:                               # %for.end
	movq	sf_interface, %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	sf_interface, %rax
	movq	48(%rax), %rdi
	callq	g_free
# BB#18:                                # %do.body.12
	movl	$64, %eax
	movl	%eax, %edi
	movq	sf_interface, %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#19:                                # %do.end.13
	movq	$0, sf_interface
	callq	gtk_main_quit
.LBB5_20:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	script_fu_interface_quit, .Lfunc_end5-script_fu_interface_quit
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_file_callback,@function
script_fu_file_callback:                # @script_fu_file_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	script_fu_file_callback, .Lfunc_end7-script_fu_file_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_font_callback,@function
script_fu_font_callback:                # @script_fu_font_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	script_fu_string_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	script_fu_font_callback, .Lfunc_end8-script_fu_font_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_palette_callback,@function
script_fu_palette_callback:             # @script_fu_palette_callback
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	script_fu_string_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	script_fu_palette_callback, .Lfunc_end9-script_fu_palette_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_pattern_callback,@function
script_fu_pattern_callback:             # @script_fu_pattern_callback
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
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	script_fu_string_update
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	script_fu_pattern_callback, .Lfunc_end10-script_fu_pattern_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_gradient_callback,@function
script_fu_gradient_callback:            # @script_fu_gradient_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	script_fu_string_update
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	script_fu_gradient_callback, .Lfunc_end11-script_fu_gradient_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_brush_callback,@function
script_fu_brush_callback:               # @script_fu_brush_callback
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
	subq	$64, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r10, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-64(%rbp), %rsi
	movq	%rax, (%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-28(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-32(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 20(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	script_fu_brush_callback, .Lfunc_end12-script_fu_brush_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_combo_callback,@function
script_fu_combo_callback:               # @script_fu_combo_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active
	movq	-16(%rbp), %rsi
	movl	%eax, 8(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	script_fu_combo_callback, .Lfunc_end13-script_fu_combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_string_update,@function
script_fu_string_update:                # @script_fu_string_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	script_fu_string_update, .Lfunc_end14-script_fu_string_update
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_reset,@function
script_fu_reset:                        # @script_fu_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	script_fu_script_reset
	movl	$0, -12(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB15_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	leaq	72(%rcx,%rax), %rax
	movq	%rax, -24(%rbp)
	movslq	-12(%rbp), %rax
	movq	sf_interface(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$20, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB15_17
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_3:                               # %sw.bb
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_17
.LBB15_4:                               # %sw.bb.7
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	jmp	.LBB15_17
.LBB15_5:                               # %sw.bb.9
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	jmp	.LBB15_17
.LBB15_6:                               # %sw.bb.12
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	jmp	.LBB15_17
.LBB15_7:                               # %sw.bb.15
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gtk_text_buffer_set_text
	jmp	.LBB15_17
.LBB15_8:                               # %sw.bb.23
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	jmp	.LBB15_17
.LBB15_9:                               # %sw.bb.26
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_17
.LBB15_10:                              # %sw.bb.30
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_font_select_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_font_select_button_set_font
	jmp	.LBB15_17
.LBB15_11:                              # %sw.bb.33
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_palette_select_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_select_button_set_palette
	jmp	.LBB15_17
.LBB15_12:                              # %sw.bb.36
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pattern_select_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_pattern_select_button_set_pattern
	jmp	.LBB15_17
.LBB15_13:                              # %sw.bb.39
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_gradient_select_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_gradient_select_button_set_gradient
	jmp	.LBB15_17
.LBB15_14:                              # %sw.bb.42
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_brush_select_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	16(%rdi), %edx
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_brush_select_button_set_brush
	jmp	.LBB15_17
.LBB15_15:                              # %sw.bb.48
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	jmp	.LBB15_17
.LBB15_16:                              # %sw.bb.51
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB15_17:                              # %sw.epilog
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_18
.LBB15_18:                              # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_1
.LBB15_19:                              # %for.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	script_fu_reset, .Lfunc_end15-script_fu_reset
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_3
	.quad	.LBB15_3
	.quad	.LBB15_3
	.quad	.LBB15_3
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_6
	.quad	.LBB15_8
	.quad	.LBB15_10
	.quad	.LBB15_12
	.quad	.LBB15_14
	.quad	.LBB15_13
	.quad	.LBB15_9
	.quad	.LBB15_9
	.quad	.LBB15_15
	.quad	.LBB15_11
	.quad	.LBB15_7
	.quad	.LBB15_16
	.quad	.LBB15_3

	.text
	.align	16, 0x90
	.type	script_fu_ok,@function
script_fu_ok:                           # @script_fu_ok
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	$0, -28(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB16_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	leaq	72(%rcx,%rax), %rax
	movq	%rax, -40(%rbp)
	movslq	-28(%rbp), %rax
	movq	sf_interface(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	shlq	$7, %rax
	movl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$20, %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	ja	.LBB16_7
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_3:                               # %sw.bb
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_7
.LBB16_4:                               # %sw.bb.6
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB16_7
.LBB16_5:                               # %sw.bb.11
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	leaq	-144(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_text_buffer_get_start_iter
	leaq	-224(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	leaq	-144(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdi
	callq	gtk_text_buffer_get_text
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB16_7
.LBB16_6:                               # %sw.bb.21
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_7
.LBB16_7:                               # %sw.epilog
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_8
.LBB16_8:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_1
.LBB16_9:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	script_fu_script_get_command
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	callq	g_string_new
	movabsq	$ts_gstring_output_func, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	ts_register_output_func
	movl	$1, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movq	-24(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	ts_interpret_string
	cmpl	$0, %eax
	je	.LBB16_11
# BB#10:                                # %if.then
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.3, %rdi
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_message
	movq	-232(%rbp), %rdi
	callq	g_free
.LBB16_11:                              # %if.end
	xorl	%edi, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	g_string_free
	movq	-24(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_free
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end16:
	.size	script_fu_ok, .Lfunc_end16-script_fu_ok
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_3
	.quad	.LBB16_3
	.quad	.LBB16_3
	.quad	.LBB16_3
	.quad	.LBB16_3
	.quad	.LBB16_3
	.quad	.LBB16_3
	.quad	.LBB16_4
	.quad	.LBB16_4
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_6
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_3

	.text
	.align	16, 0x90
	.type	unset_transient_for,@function
unset_transient_for:                    # @unset_transient_for
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.40, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gdk_atom_intern_static_string
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_property_delete
.LBB17_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	unset_transient_for, .Lfunc_end17-unset_transient_for
	.cfi_endproc

	.type	sf_interface,@object    # @sf_interface
	.local	sf_interface
	.comm	sf_interface,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-progress-"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s <%d>"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	script_fu_interface.gtk_initted,@object # @script_fu_interface.gtk_initted
	.local	script_fu_interface.gtk_initted
	.comm	script_fu_interface.gtk_initted,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s\n\n%s"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Script-Fu cannot process two scripts at the same time."
	.size	.L.str.4, 55

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"You are already running the \"%s\" script."
	.size	.L.str.5, 41

	.type	.L__func__.script_fu_interface,@object # @__func__.script_fu_interface
.L__func__.script_fu_interface:
	.asciz	"script_fu_interface"
	.size	.L__func__.script_fu_interface, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"script != NULL"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-script-fu"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"UTF-8"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"script-fu"
	.size	.L.str.9, 10

	.type	sf_status,@object       # @sf_status
	.data
	.align	4
sf_status:
	.long	3                       # 0x3
	.size	sf_status, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Script-Fu: %s"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-script-fu"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-reset"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-cancel"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-ok"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"response"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"destroy"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Script-Fu Color Selection"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"color-changed"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"toggled"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"spinbutton"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"unexpected adjustment type: %d"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"value-changed"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Script-Fu File Selection"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Script-Fu Folder Selection"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"selection-changed"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Script-Fu Font Selection"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"font-set"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Script-Fu Palette Selection"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"palette-set"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Script-Fu Pattern Selection"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"pattern-set"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Script-Fu Gradient Selection"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gradient-set"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Script-Fu Brush Selection"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"brush-set"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"changed"
	.size	.L.str.37, 8

	.type	.L__func__.script_fu_interface_quit,@object # @__func__.script_fu_interface_quit
.L__func__.script_fu_interface_quit:
	.asciz	"script_fu_interface_quit"
	.size	.L__func__.script_fu_interface_quit, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"sf_interface != NULL"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Error while executing %s:"
	.size	.L.str.39, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"WM_TRANSIENT_FOR"
	.size	.L.str.40, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
