	.text
	.file	"script-fu-server.bc"
	.globl	script_fu_server_quit
	.align	16, 0x90
	.type	script_fu_server_quit,@function
script_fu_server_quit:                  # @script_fu_server_quit
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
	movl	$1, script_fu_done
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_server_quit, .Lfunc_end0-script_fu_server_quit
	.cfi_endproc

	.globl	script_fu_server_get_mode
	.align	16, 0x90
	.type	script_fu_server_get_mode,@function
script_fu_server_get_mode:              # @script_fu_server_get_mode
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
	movl	server_mode, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	script_fu_server_get_mode, .Lfunc_end1-script_fu_server_get_mode
	.cfi_endproc

	.globl	script_fu_server_run
	.align	16, 0x90
	.type	script_fu_server_run,@function
script_fu_server_run:                   # @script_fu_server_run
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -48(%rbp)
	movl	%esi, %edi
	callq	ts_set_run_mode
	movl	-48(%rbp), %esi
	testl	%esi, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_12
.LBB2_12:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB2_4
	jmp	.LBB2_13
.LBB2_13:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB2_9
	jmp	.LBB2_10
.LBB2_1:                                # %sw.bb
	callq	server_interface
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movl	$1, server_mode
	movq	sint+24, %rdi
	movl	sint+32, %esi
	movq	sint+40, %rdx
	callq	server_start
.LBB2_3:                                # %if.end
	jmp	.LBB2_11
.LBB2_4:                                # %sw.bb.1
	movl	$1, server_mode
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	movabsq	$.L.str, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %esi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rdx
	movq	%rax, %rdi
	callq	server_start
	jmp	.LBB2_11
.LBB2_9:                                # %sw.bb.19
	movabsq	$.L.str.1, %rdi
	movl	$1, -44(%rbp)
	movb	$0, %al
	callq	g_warning
.LBB2_10:                               # %sw.default
	jmp	.LBB2_11
.LBB2_11:                               # %sw.epilog
	movabsq	$script_fu_server_run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, script_fu_server_run.values
	movl	-44(%rbp), %edx
	movl	%edx, script_fu_server_run.values+8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	script_fu_server_run, .Lfunc_end2-script_fu_server_run
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	server_interface,@function
server_interface:                       # @server_interface
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
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.29, %r9
	movabsq	$.L.str.30, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -108(%rbp)       # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.32, %rsi
	movabsq	$response_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rbx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r8, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	%rax, sint
	movq	sint, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	sint, %r8
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movq	%rax, sint+8
	movq	sint+8, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	sint+8, %r8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-268(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movq	%rax, sint+16
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	sint+16, %r8
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %ecx        # 4-byte Reload
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	movl	$6, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-48(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_main
	movl	sint+48, %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	server_interface, .Lfunc_end3-server_interface
	.cfi_endproc

	.align	16, 0x90
	.type	server_start,@function
server_start:                           # @server_start
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
	subq	$160, %rsp
	movabsq	$.L.str.12, %rax
	xorl	%ecx, %ecx
	movl	$48, %r8d
	movl	%r8d, %r9d
	leaq	-88(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r10, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	memset
	movl	$33, -88(%rbp)
	movl	$1, -80(%rbp)
	movl	-12(%rbp), %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	getaddrinfo
	movl	%eax, -92(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free
	cmpl	$0, -92(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	-92(%rbp), %edi
	callq	gai_strerror
	movabsq	$.L.str.13, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB4_23
.LBB4_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -96(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB4_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$2, -96(%rbp)
	setl	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB4_5:                                # %land.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_6
	jmp	.LBB4_10
.LBB4_6:                                # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	make_socket
	movl	$5, %esi
	movslq	-96(%rbp), %rdi
	movl	%eax, server_socks(,%rdi,4)
	movslq	-96(%rbp), %rdi
	movl	server_socks(,%rdi,4), %edi
	callq	listen
	cmpl	$0, %eax
	jge	.LBB4_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.14, %rdi
	callq	print_socket_api_error
	jmp	.LBB4_23
.LBB4_8:                                # %if.end.11
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %for.end
	movl	-96(%rbp), %eax
	movl	%eax, server_socks_used
	cmpq	$0, -24(%rbp)
	je	.LBB4_13
# BB#11:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_13
# BB#12:                                # %if.then.13
	movabsq	$.L.str.15, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, server_log_file
	jmp	.LBB4_14
.LBB4_13:                               # %if.else
	movq	$0, server_log_file
.LBB4_14:                               # %if.end.15
	cmpq	$0, server_log_file
	jne	.LBB4_16
# BB#15:                                # %if.then.17
	movq	stdout, %rax
	movq	%rax, server_log_file
.LBB4_16:                               # %if.end.18
	movabsq	$g_direct_hash, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$g_free, %rdx
	movq	%rcx, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_hash_table_new_full
	movq	%rax, clients
	callq	server_progress_install
	movabsq	$.L.str.16, %rdi
	movq	%rax, -112(%rbp)
	movb	$0, %al
	callq	server_log
.LBB4_17:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
	cmpl	$0, script_fu_done
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB4_18
	jmp	.LBB4_22
.LBB4_18:                               # %while.body
                                        #   in Loop: Header=BB4_17 Depth=1
	xorl	%edi, %edi
	callq	script_fu_server_listen
.LBB4_19:                               # %while.cond.22
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, command_queue
	je	.LBB4_21
# BB#20:                                # %while.body.24
                                        #   in Loop: Header=BB4_19 Depth=2
	movq	command_queue, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	execute_command
	movq	command_queue, %rdi
	movq	-120(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_list_remove
	movq	%rax, command_queue
	movl	queue_length, %edx
	addl	$-1, %edx
	movl	%edx, queue_length
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB4_19
.LBB4_21:                               # %while.end
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_17
.LBB4_22:                               # %while.end.27
	movq	-112(%rbp), %rdi
	callq	server_progress_uninstall
	callq	server_quit
.LBB4_23:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	server_start, .Lfunc_end4-server_start
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.globl	script_fu_server_listen
	.align	16, 0x90
	.type	script_fu_server_listen,@function
script_fu_server_listen:                # @script_fu_server_listen
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
	subq	$1504, %rsp             # imm = 0x5E0
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rax
	movl	$1000, %ecx             # imm = 0x3E8
	movl	-4(%rbp), %edx
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	movq	%rsi, -16(%rbp)
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -32(%rbp)
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
	leaq	-160(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1376(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -168(%rbp)
	movl	%edi, %eax
	movl	%eax, -172(%rbp)
# BB#4:                                 # %do.end
	movl	$0, -164(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	cmpl	server_socks_used, %eax
	jge	.LBB6_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$64, %eax
	movl	$1, %ecx
	movl	%ecx, %edx
	movslq	-164(%rbp), %rsi
	movl	server_socks(,%rsi,4), %ecx
	movl	%eax, -1380(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -1392(%rbp)       # 8-byte Spill
	cltd
	movl	-1380(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	movq	-1392(%rbp), %rsi       # 8-byte Reload
	shlq	%cl, %rsi
	movslq	-164(%rbp), %rdi
	movl	server_socks(,%rdi,4), %edx
	movl	%edx, %eax
	cltd
	movl	-1380(%rbp), %r8d       # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %rdi
	orq	-160(%rbp,%rdi,8), %rsi
	movq	%rsi, -160(%rbp,%rdi,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
	movabsq	$script_fu_server_add_fd, %rsi
	leaq	-160(%rbp), %rax
	movq	clients, %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movl	$1024, %edi             # imm = 0x400
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %r8
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	select
	cmpl	$0, %eax
	jge	.LBB6_10
# BB#9:                                 # %if.then.14
	movabsq	$.L.str.2, %rdi
	callq	print_socket_api_error
	jmp	.LBB6_23
.LBB6_10:                               # %if.end.15
	movl	$0, -164(%rbp)
.LBB6_11:                               # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	cmpl	server_socks_used, %eax
	jge	.LBB6_22
# BB#12:                                # %for.body.19
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movl	$128, -1348(%rbp)
	movslq	-164(%rbp), %rdx
	movl	server_socks(,%rdx,4), %esi
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1396(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	movq	-160(%rbp,%rdi,8), %rdi
	movslq	-164(%rbp), %r8
	movl	server_socks(,%r8,4), %eax
	cltd
	idivl	%esi
	movl	%edx, %edx
	movl	%edx, %r8d
	movq	%rcx, -1408(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-1408(%rbp), %r8        # 8-byte Reload
	shlq	%cl, %r8
	andq	%r8, %rdi
	cmpq	$0, %rdi
	jne	.LBB6_14
# BB#13:                                # %if.then.33
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_21
.LBB6_14:                               # %if.end.34
                                        #   in Loop: Header=BB6_11 Depth=1
	leaq	-1348(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movl	server_socks(,%rcx,4), %edi
	movq	%rax, %rsi
	callq	accept
	movl	%eax, -1352(%rbp)
	cmpl	$0, -1352(%rbp)
	jge	.LBB6_16
# BB#15:                                # %if.then.40
	movabsq	$.L.str.3, %rdi
	callq	print_socket_api_error
	jmp	.LBB6_23
.LBB6_16:                               # %if.end.41
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	leaq	-1344(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	callq	strncpy
	movl	-1348(%rbp), %esi
	movq	%rsp, %rcx
	movl	$1, (%rcx)
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-304(%rbp), %rdi
	movl	$1025, %r9d             # imm = 0x401
	movq	-1416(%rbp), %rdx       # 8-byte Reload
	movq	%rcx, -1424(%rbp)       # 8-byte Spill
	movl	%r9d, %ecx
	movq	-1424(%rbp), %r10       # 8-byte Reload
	movl	%r8d, -1428(%rbp)       # 4-byte Spill
	movq	%r10, %r8
	movl	-1428(%rbp), %r9d       # 4-byte Reload
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	getnameinfo
	movq	clients(%rip), %rdi
	movslq	-1352(%rbp), %rsi
	movq	-1416(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -1448(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	movq	%rsi, -1464(%rbp)       # 8-byte Spill
	callq	g_strdup
	movq	-1448(%rbp), %rdi       # 8-byte Reload
	movq	-1464(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movzwl	-304(%rbp), %ecx
	movl	%ecx, %r9d
	subl	$2, %r9d
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	movl	%ecx, -1472(%rbp)       # 4-byte Spill
	movl	%r9d, -1476(%rbp)       # 4-byte Spill
	je	.LBB6_17
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.41
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	-1472(%rbp), %eax       # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -1480(%rbp)       # 4-byte Spill
	je	.LBB6_18
	jmp	.LBB6_19
.LBB6_17:                               # %sw.bb
                                        #   in Loop: Header=BB6_11 Depth=1
	movzwl	-302(%rbp), %eax
	sarl	$8, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movzwl	-302(%rbp), %edx
	shll	$8, %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	orl	%edx, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	%eax, -1356(%rbp)
	jmp	.LBB6_20
.LBB6_18:                               # %sw.bb.63
                                        #   in Loop: Header=BB6_11 Depth=1
	movzwl	-302(%rbp), %eax
	sarl	$8, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movzwl	-302(%rbp), %edx
	shll	$8, %edx
	movw	%dx, %cx
	movzwl	%cx, %edx
	orl	%edx, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	movl	%eax, -1356(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %sw.default
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$0, -1356(%rbp)
.LBB6_20:                               # %sw.epilog
                                        #   in Loop: Header=BB6_11 Depth=1
	movabsq	$.L.str.5, %rdi
	leaq	-1344(%rbp), %rsi
	movl	-1356(%rbp), %edx
	movb	$0, %al
	callq	server_log
.LBB6_21:                               # %for.inc.78
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB6_11
.LBB6_22:                               # %for.end.80
	movabsq	$script_fu_server_read_fd, %rsi
	leaq	-160(%rbp), %rax
	movq	clients, %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach_remove
	movl	%eax, -1484(%rbp)       # 4-byte Spill
.LBB6_23:                               # %return
	addq	$1504, %rsp             # imm = 0x5E0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	script_fu_server_listen, .Lfunc_end6-script_fu_server_listen
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_server_add_fd,@function
script_fu_server_add_fd:                # @script_fu_server_add_fd
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
	movl	$64, %eax
	movl	$1, %ecx
	movl	%ecx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%edx, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-28(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %r8
	movq	-8(%rbp), %rsi
	movl	%esi, %edx
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %r9d         # 4-byte Reload
	idivl	%r9d
	movslq	%eax, %rsi
	movq	-24(%rbp), %rdi
	orq	(%rdi,%rsi,8), %r8
	movq	%r8, (%rdi,%rsi,8)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	script_fu_server_add_fd, .Lfunc_end7-script_fu_server_add_fd
	.cfi_endproc

	.align	16, 0x90
	.type	print_socket_api_error,@function
print_socket_api_error:                 # @print_socket_api_error
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	perror
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	print_socket_api_error, .Lfunc_end8-print_socket_api_error
	.cfi_endproc

	.align	16, 0x90
	.type	server_log,@function
server_log:                             # @server_log
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB9_4
# BB#3:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB9_4:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -216(%rbp)
	movq	-360(%rbp), %r8         # 8-byte Reload
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-224(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdi
	movq	%r9, %rsi
	callq	g_strdup_vprintf
	leaq	-32(%rbp), %rcx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	server_log_file, %rsi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	fputs
	movq	-40(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	g_free
	movq	server_log_file, %rcx
	cmpq	stdout, %rcx
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	server_log_file, %rdi
	callq	fflush
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB9_2:                                # %if.end
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	server_log, .Lfunc_end9-server_log
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_server_read_fd,@function
script_fu_server_read_fd:               # @script_fu_server_read_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	%edx, %r8d
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %r8d
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-60(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movl	-36(%rbp), %eax
	cltd
	idivl	%r8d
	movl	%edx, %edx
	movl	%edx, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdi, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-72(%rbp), %rdi         # 8-byte Reload
	shlq	%cl, %rdi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	je	.LBB10_10
# BB#1:                                 # %if.then
	movl	-36(%rbp), %edi
	callq	read_from_client
	cmpl	$0, %eax
	jge	.LBB10_9
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.6, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	server_log
	movl	-36(%rbp), %edi
	callq	close
	movq	command_queue, %rsi
	movq	%rsi, -48(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB10_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	command_queue, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB10_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-56(%rbp), %rax
	movl	$-1, 8(%rax)
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_3
.LBB10_8:                               # %for.end
	movl	$1, -4(%rbp)
	jmp	.LBB10_11
.LBB10_9:                               # %if.end.11
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.12
	movl	$0, -4(%rbp)
.LBB10_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	script_fu_server_read_fd, .Lfunc_end10-script_fu_server_read_fd
	.cfi_endproc

	.align	16, 0x90
	.type	read_from_client,@function
read_from_client:                       # @read_from_client
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	%edi, -8(%rbp)
	movl	$0, -60(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -60(%rbp)
	jge	.LBB11_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%ecx, %ecx
	movl	$3, %eax
	leaq	-19(%rbp), %rdx
	movl	-8(%rbp), %edi
	movslq	-60(%rbp), %rsi
	addq	%rsi, %rdx
	subl	-60(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	recv
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jge	.LBB11_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB11_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_5:                               # %if.end
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	server_log
	movl	$-1, -4(%rbp)
	jmp	.LBB11_23
.LBB11_6:                               # %if.end.8
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -56(%rbp)
	jne	.LBB11_8
# BB#7:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB11_23
.LBB11_8:                               # %if.end.12
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-56(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_1
.LBB11_9:                               # %for.end
	movzbl	-19(%rbp), %eax
	cmpl	$71, %eax
	je	.LBB11_11
# BB#10:                                # %if.then.16
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	server_log
	movl	$-1, -4(%rbp)
	jmp	.LBB11_23
.LBB11_11:                              # %if.end.17
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-18(%rbp), %eax
	shll	$8, %eax
	movzbl	-17(%rbp), %ecx
	orl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movl	$0, -60(%rbp)
.LBB11_12:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB11_19
# BB#13:                                # %for.body.28
                                        #   in Loop: Header=BB11_12 Depth=1
	xorl	%ecx, %ecx
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rdx
	addq	%rdx, %rax
	movl	-52(%rbp), %esi
	subl	-60(%rbp), %esi
	movslq	%esi, %rdx
	movq	%rax, %rsi
	callq	recv
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jg	.LBB11_18
# BB#14:                                # %if.then.37
                                        #   in Loop: Header=BB11_12 Depth=1
	cmpl	$0, -56(%rbp)
	jge	.LBB11_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_12 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB11_17
# BB#16:                                # %if.then.43
                                        #   in Loop: Header=BB11_12 Depth=1
	jmp	.LBB11_12
.LBB11_17:                              # %if.end.44
	movabsq	$.L.str.9, %rdi
	movl	-60(%rbp), %esi
	movl	-52(%rbp), %edx
	movb	$0, %al
	callq	server_log
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB11_23
.LBB11_18:                              # %if.end.45
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-56(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_12
.LBB11_19:                              # %for.end.47
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	request_no, %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, request_no
	movq	-16(%rbp), %rax
	movl	%r8d, 12(%rax)
	movq	command_queue, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, command_queue
	movl	queue_length, %r8d
	addl	$1, %r8d
	movl	%r8d, queue_length
	movq	clients, %rdi
	movq	-16(%rbp), %rax
	movslq	8(%rax), %rsi
	callq	g_hash_table_lookup
	leaq	-48(%rbp), %rdi
	movq	%rax, -40(%rbp)
	callq	time
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %esi
	cmpq	$0, -40(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB11_21
# BB#20:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_22
.LBB11_21:                              # %cond.false
	movabsq	$.L.str.11, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_22
.LBB11_22:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	ctime
	movabsq	$.L.str.10, %rdi
	movl	queue_length, %r9d
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	server_log
	movl	$0, -4(%rbp)
.LBB11_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	read_from_client, .Lfunc_end11-read_from_client
	.cfi_endproc

	.align	16, 0x90
	.type	make_socket,@function
make_socket:                            # @make_socket
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	callq	socket
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rdi
	callq	print_socket_api_error
	callq	gimp_quit
.LBB12_2:                               # %if.end
	movl	$1, %esi
	movl	$2, %edx
	movl	$4, %r8d
	leaq	-16(%rbp), %rax
	movl	-12(%rbp), %edi
	movq	%rax, %rcx
	callq	setsockopt
	movq	-8(%rbp), %rcx
	cmpl	$10, 4(%rcx)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jne	.LBB12_6
# BB#3:                                 # %if.then.4
	movl	$41, %esi
	movl	$26, %edx
	movl	$4, %r8d
	leaq	-16(%rbp), %rax
	movl	$1, -16(%rbp)
	movl	-12(%rbp), %edi
	movq	%rax, %rcx
	callq	setsockopt
	cmpl	$0, %eax
	jge	.LBB12_5
# BB#4:                                 # %if.then.7
	movabsq	$.L.str.18, %rdi
	callq	print_socket_api_error
	callq	gimp_quit
.LBB12_5:                               # %if.end.8
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.9
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	callq	bind
	cmpl	$0, %eax
	jge	.LBB12_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.19, %rdi
	callq	print_socket_api_error
	callq	gimp_quit
.LBB12_8:                               # %if.end.13
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	make_socket, .Lfunc_end12-make_socket
	.cfi_endproc

	.align	16, 0x90
	.type	server_progress_install,@function
server_progress_install:                # @server_progress_install
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp44:
	.cfi_offset %rbx, -24
	leaq	-120(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$server_progress_set_value, %rdx
	movabsq	$server_progress_set_text, %rdi
	movabsq	$server_progress_end, %r8
	movabsq	$server_progress_start, %r9
	xorl	%ecx, %ecx
	movl	$112, %r10d
	movl	%r10d, %r11d
	movq	%rax, %rbx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	callq	memset
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -112(%rbp)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -104(%rbp)
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%r8, -96(%rbp)
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	gimp_progress_install_vtable
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	server_progress_install, .Lfunc_end13-server_progress_install
	.cfi_endproc

	.align	16, 0x90
	.type	execute_command,@function
execute_command:                        # @execute_command
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
	subq	$112, %rsp
	movabsq	$.L.str.20, %rax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	server_log
	leaq	-40(%rbp), %rdi
	callq	time
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_string_new
	movabsq	$ts_gstring_output_func, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	ts_register_output_func
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ts_interpret_string
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movl	$1, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	server_log
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movl	$0, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	ts_get_success_msg
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_assign
	leaq	-48(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	time
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	difftime
	leaq	-48(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	ctime
	movabsq	$.L.str.22, %rdi
	movl	-84(%rbp), %esi         # 4-byte Reload
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rdx
	movb	$1, %al
	callq	server_log
.LBB14_3:                               # %if.end
	xorl	%eax, %eax
	movl	$1, %ecx
	movb	$71, -20(%rbp)
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -19(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	shrq	$8, %rsi
	movb	%sil, %dl
	movb	%dl, -18(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	andq	$255, %rsi
	movb	%sil, %dl
	movb	%dl, -17(%rbp)
	movl	$0, -56(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -56(%rbp)
	jge	.LBB14_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jle	.LBB14_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	leaq	-20(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %edi
	movslq	-56(%rbp), %r8
	addq	%r8, %rsi
	callq	send
	cmpq	$0, %rax
	jge	.LBB14_8
# BB#7:                                 # %if.then.23
	movabsq	$.L.str.23, %rdi
	callq	print_socket_api_error
	movl	$0, -4(%rbp)
	jmp	.LBB14_18
.LBB14_8:                               # %if.end.24
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_9
.LBB14_9:                               # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB14_4
.LBB14_10:                              # %for.end
	movl	$0, -56(%rbp)
.LBB14_11:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB14_17
# BB#12:                                # %for.body.30
                                        #   in Loop: Header=BB14_11 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jle	.LBB14_15
# BB#13:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB14_11 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %edi
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movslq	-56(%rbp), %r8
	addq	%r8, %rsi
	callq	send
	cmpq	$0, %rax
	jge	.LBB14_15
# BB#14:                                # %if.then.42
	movabsq	$.L.str.23, %rdi
	callq	print_socket_api_error
	movl	$0, -4(%rbp)
	jmp	.LBB14_18
.LBB14_15:                              # %if.end.43
                                        #   in Loop: Header=BB14_11 Depth=1
	jmp	.LBB14_16
.LBB14_16:                              # %for.inc.44
                                        #   in Loop: Header=BB14_11 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB14_11
.LBB14_17:                              # %for.end.46
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_free
	movl	$0, -4(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB14_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	execute_command, .Lfunc_end14-execute_command
	.cfi_endproc

	.align	16, 0x90
	.type	server_progress_uninstall,@function
server_progress_uninstall:              # @server_progress_uninstall
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_progress_uninstall
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	server_progress_uninstall, .Lfunc_end15-server_progress_uninstall
	.cfi_endproc

	.align	16, 0x90
	.type	server_quit,@function
server_quit:                            # @server_quit
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	server_socks_used, %eax
	jge	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movslq	-4(%rbp), %rax
	movl	server_socks(,%rax,4), %edi
	callq	close
	movl	%eax, -20(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	cmpq	$0, clients
	je	.LBB16_6
# BB#5:                                 # %if.then
	movabsq	$script_fu_server_shutdown_fd, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	clients, %rdi
	callq	g_hash_table_foreach
	movq	clients, %rdi
	callq	g_hash_table_destroy
	movq	$0, clients
.LBB16_6:                               # %if.end
	jmp	.LBB16_7
.LBB16_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, command_queue
	je	.LBB16_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	command_queue, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB16_7
.LBB16_9:                               # %while.end
	movq	command_queue, %rdi
	callq	g_list_free
	movq	$0, command_queue
	movl	$0, queue_length
	movq	server_log_file, %rdi
	cmpq	stdout, %rdi
	je	.LBB16_11
# BB#10:                                # %if.then.3
	movq	server_log_file, %rdi
	callq	fclose
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB16_11:                              # %if.end.5
	movq	$0, server_log_file
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	server_quit, .Lfunc_end16-server_quit
	.cfi_endproc

	.align	16, 0x90
	.type	server_progress_start,@function
server_progress_start:                  # @server_progress_start
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	server_progress_start, .Lfunc_end17-server_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	server_progress_end,@function
server_progress_end:                    # @server_progress_end
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	server_progress_end, .Lfunc_end18-server_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	server_progress_set_text,@function
server_progress_set_text:               # @server_progress_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	server_progress_set_text, .Lfunc_end19-server_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	server_progress_set_value,@function
server_progress_set_value:              # @server_progress_set_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	server_progress_set_value, .Lfunc_end20-server_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_server_shutdown_fd,@function
script_fu_server_shutdown_fd:           # @script_fu_server_shutdown_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%edx, %ecx
	movl	%ecx, %edi
	movl	%eax, %esi
	callq	shutdown
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	script_fu_server_shutdown_fd, .Lfunc_end21-script_fu_server_shutdown_fd
	.cfi_endproc

	.align	16, 0x90
	.type	response_callback,@function
response_callback:                      # @response_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	sint+40, %rdi
	callq	g_free
	movq	sint+24, %rdi
	callq	g_free
	movq	sint+8, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, sint+32
	movq	sint+16, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, sint+40
	movq	sint, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, sint+24
	movl	$1, sint+48
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	response_callback, .Lfunc_end22-response_callback
	.cfi_endproc

	.type	script_fu_done,@object  # @script_fu_done
	.local	script_fu_done
	.comm	script_fu_done,4,4
	.type	server_mode,@object     # @server_mode
	.local	server_mode
	.comm	server_mode,4,4
	.type	script_fu_server_run.values,@object # @script_fu_server_run.values
	.local	script_fu_server_run.values
	.comm	script_fu_server_run.values,40,16
	.type	sint,@object            # @sint
	.data
	.align	8
sint:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	10008                   # 0x2718
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	sint, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"127.0.0.1"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Script-Fu server does not handle \"GIMP_RUN_WITH_LAST_VALS\""
	.size	.L.str.1, 59

	.type	server_socks_used,@object # @server_socks_used
	.local	server_socks_used
	.comm	server_socks_used,4,4
	.type	server_socks,@object    # @server_socks
	.local	server_socks
	.comm	server_socks,8,4
	.type	clients,@object         # @clients
	.local	clients
	.comm	clients,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"select"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"accept"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(error during host address lookup)"
	.size	.L.str.4, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Server: connect from host %s, port %d.\n"
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Server: disconnect from host %s.\n"
	.size	.L.str.6, 34

	.type	command_queue,@object   # @command_queue
	.local	command_queue
	.comm	command_queue,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Error reading command header.\n"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error in script-fu command transmission.\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Error reading command.  Read %d out of %d bytes.\n"
	.size	.L.str.9, 50

	.type	request_no,@object      # @request_no
	.local	request_no
	.comm	request_no,4,4
	.type	queue_length,@object    # @queue_length
	.local	queue_length
	.comm	queue_length,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Received request #%d from IP address %s: %s on %s,[Request queue length: %d]"
	.size	.L.str.10, 77

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<invalid>"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%d"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"getaddrinfo: %s\n"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"listen"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"a"
	.size	.L.str.15, 2

	.type	server_log_file,@object # @server_log_file
	.local	server_log_file
	.comm	server_log_file,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Script-Fu server initialized and listening...\n"
	.size	.L.str.16, 47

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"socket"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"setsockopt"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"bind"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Processing request #%d\n"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s\n"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Request #%d processed in %f seconds, finishing on %s"
	.size	.L.str.22, 53

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"send"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-script-fu"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"script-fu"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Script-Fu Server Options"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-script-fu"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"plug-in-script-fu-server"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-cancel"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Start Server"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"response"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"destroy"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Listen on IP:"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"10008"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Server port:"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Server logfile:"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-warning"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Listening on an IP address other than 127.0.0.1 (especially 0.0.0.0) can allow attackers to remotely execute arbitrary code on this machine."
	.size	.L.str.39, 141


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
