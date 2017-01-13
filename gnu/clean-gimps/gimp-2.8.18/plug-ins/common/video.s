	.text
	.file	"video.bc"
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movl	$1, %r10d
	movl	$6, %r11d
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
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.19, %rsi
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.20, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-52(%rbp), %ecx
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
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$vvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	video_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_23
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.6
	cmpl	$6, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.7
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.8
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, vvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, vvals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, vvals+8
.LBB1_10:                               # %if.end.20
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.21
	movabsq	$.L.str.12, %rdi
	movabsq	$vvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	cmpl	$3, -56(%rbp)
	jne	.LBB1_22
# BB#14:                                # %if.then.27
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_20
# BB#15:                                # %if.then.30
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
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
	movq	-48(%rbp), %rdi
	callq	video
	cmpl	$1, -52(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.36
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.38
	cmpl	$0, -52(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.41
	movabsq	$.L.str.12, %rdi
	movabsq	$vvals, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.43
	jmp	.LBB1_21
.LBB1_20:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_21:                               # %if.end.44
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.45
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_23:                               # %return
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
	.type	video_dialog,@function
video_dialog:                           # @video_dialog
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
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.23, %rdi
	movl	$1, %esi
	movq	$0, -56(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.25, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.26, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -60(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -60(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movq	pattern_name(,%rax,8), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movslq	-60(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.29, %rsi
	movabsq	$video_radio_update, %rax
	movabsq	$vvals, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	vvals, %r9d
	cmpl	-60(%rbp), %r9d
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$100, %ecx
	movq	%rax, preview
	movq	preview, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	preview, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$video_toggle_update, %rax
	movabsq	$vvals, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	vvals+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$video_toggle_update, %rax
	movabsq	$vvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	vvals+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	video_render_preview
	movl	$1, in_main_loop
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -64(%rbp)
	movl	$0, in_main_loop
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-64(%rbp), %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	video_dialog, .Lfunc_end3-video_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	video,@function
video:                                  # @video
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
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterator_new
	movabsq	$video_func, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_rgn_iterator_src_dest
	movq	-16(%rbp), %rdi
	callq	gimp_rgn_iterator_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	video, .Lfunc_end4-video
	.cfi_endproc

	.align	16, 0x90
	.type	video_radio_update,@function
video_radio_update:                     # @video_radio_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	cmpl	$0, in_main_loop
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	video_render_preview
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	video_radio_update, .Lfunc_end5-video_radio_update
	.cfi_endproc

	.align	16, 0x90
	.type	video_toggle_update,@function
video_toggle_update:                    # @video_toggle_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	cmpl	$0, in_main_loop
	je	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	video_render_preview
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	video_toggle_update, .Lfunc_end6-video_toggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	video_render_preview,@function
video_render_preview:                   # @video_render_preview
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
	subq	$30064, %rsp            # imm = 0x7570
	movl	%edi, -4(%rbp)
	cmpl	$-1, vvals
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, vvals
	jmp	.LBB7_14
.LBB7_2:                                # %if.end
	movl	$0, -12(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	cmpl	$100, -12(%rbp)
	jge	.LBB7_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$0, -8(%rbp)
.LBB7_5:                                # %for.cond.2
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$100, -8(%rbp)
	jge	.LBB7_11
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, -4(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB7_5 Depth=2
	imull	$3, -8(%rbp), %eax
	addl	$0, %eax
	imull	$100, -12(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movb	preview_raw(,%rdx), %sil
	imull	$100, -12(%rbp), %eax
	addl	-8(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movb	%sil, -30016(%rbp,%rdx)
	imull	$3, -8(%rbp), %eax
	addl	$1, %eax
	imull	$100, -12(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movb	preview_raw(,%rdx), %sil
	imull	$100, -12(%rbp), %eax
	addl	-8(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%sil, -30016(%rbp,%rdx)
	imull	$3, -8(%rbp), %eax
	addl	$2, %eax
	imull	$100, -12(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movb	preview_raw(,%rdx), %sil
	imull	$100, -12(%rbp), %eax
	addl	-8(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movb	%sil, -30016(%rbp,%rdx)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	$3, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-30016(%rbp), %rcx
	movabsq	$preview_raw, %rdx
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	imull	$100, -12(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -8(%rbp), %r10d
	addl	%r10d, %eax
	movslq	%eax, %r11
	addq	%r11, %rdx
	imull	$100, -12(%rbp), %eax
	addl	-8(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %r11
	addq	%r11, %rcx
	callq	video_func
.LBB7_9:                                # %if.end.50
                                        #   in Loop: Header=BB7_5 Depth=2
	jmp	.LBB7_10
.LBB7_10:                               # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_11:                               # %for.end
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %for.inc.51
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_3
.LBB7_13:                               # %for.end.53
	movq	preview, %rax
	movq	%rax, -30024(%rbp)      # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-30024(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$100, %edx
	movl	$300, %r8d              # imm = 0x12C
	leaq	-30016(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -30032(%rbp)      # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -30036(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-30036(%rbp), %r9d      # 4-byte Reload
	movl	%ecx, -30040(%rbp)      # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -30044(%rbp)      # 4-byte Spill
	movl	%r9d, %r8d
	movl	-30040(%rbp), %r9d      # 4-byte Reload
	movq	-30032(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$300, 8(%rsp)           # imm = 0x12C
	callq	gimp_preview_area_draw
.LBB7_14:                               # %return
	addq	$30064, %rsp            # imm = 0x7570
	popq	%rbp
	retq
.Lfunc_end7:
	.size	video_render_preview, .Lfunc_end7-video_render_preview
	.cfi_endproc

	.align	16, 0x90
	.type	video_func,@function
video_func:                             # @video_func
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	cmpl	$0, vvals+8
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$pattern, %rax
	movslq	vvals, %rcx
	movl	pattern_width(,%rcx,4), %edx
	movl	-4(%rbp), %esi
	movslq	vvals, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -68(%rbp)         # 4-byte Spill
	cltd
	idivl	pattern_height(,%rcx,4)
	movl	-68(%rbp), %esi         # 4-byte Reload
	imull	%edx, %esi
	movl	-8(%rbp), %edx
	movslq	vvals, %rcx
	movl	%edx, %eax
	cltd
	idivl	pattern_width(,%rcx,4)
	addl	%edx, %esi
	movslq	%esi, %rcx
	movslq	vvals, %rdi
	imulq	$432, %rdi, %rdi        # imm = 0x1B0
	movq	-64(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movl	(%r8,%rcx,4), %edx
	movl	%edx, -48(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movabsq	$pattern, %rax
	movslq	vvals, %rcx
	movl	pattern_width(,%rcx,4), %edx
	movl	-8(%rbp), %esi
	movslq	vvals, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -84(%rbp)         # 4-byte Spill
	cltd
	idivl	pattern_height(,%rcx,4)
	movl	-84(%rbp), %esi         # 4-byte Reload
	imull	%edx, %esi
	movl	-4(%rbp), %edx
	movslq	vvals, %rcx
	movl	%edx, %eax
	cltd
	idivl	pattern_width(,%rcx,4)
	addl	%edx, %esi
	movslq	%esi, %rcx
	movslq	vvals, %rdi
	imulq	$432, %rdi, %rdi        # imm = 0x1B0
	movq	-80(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movl	(%r8,%rcx,4), %edx
	movl	%edx, -48(%rbp)
.LBB8_3:                                # %if.end
	movl	$0, -44(%rbp)
.LBB8_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$3, -44(%rbp)
	jge	.LBB8_15
# BB#6:                                 # %if.then.25
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB8_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB8_9
.LBB8_8:                                # %cond.false
                                        #   in Loop: Header=BB8_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB8_9
.LBB8_9:                                # %cond.end
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$0, vvals+4
	je	.LBB8_14
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movl	%edx, -52(%rbp)
	cmpl	$255, -52(%rbp)
	jge	.LBB8_12
# BB#11:                                # %cond.true.43
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.44
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	$255, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_13:                               # %cond.end.45
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB8_14:                               # %if.end.50
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.51
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB8_16:                               # %if.end.56
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_17
.LBB8_17:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_4
.LBB8_18:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	video_func, .Lfunc_end8-video_func
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
	.size	query.args, 144

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
	.asciz	"pattern-number"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Type of RGB pattern to use"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"additive"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Whether the function adds the result to the original image"
	.size	.L.str.9, 59

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"rotated"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Whether to rotate the RGB pattern by ninety degrees"
	.size	.L.str.11, 52

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-video"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Simulate distortion produced by a fuzzy or low-res monitor"
	.size	.L.str.13, 59

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"This function simulates the degradation of being on an old low-dotpitch RGB video monitor to the specified drawable."
	.size	.L.str.14, 117

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Adam D. Moss (adam@foxbox.org)"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2nd March 1997"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Vi_deo..."
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RGB*"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.19, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"UTF-8"
	.size	.L.str.21, 6

	.type	vvals,@object           # @vvals
	.data
	.align	4
vvals:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	vvals, 12

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"Video"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"video"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-video"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-cancel"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-ok"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Video Pattern"
	.size	.L.str.27, 14

	.type	pattern_name,@object    # @pattern_name
	.data
	.align	16
pattern_name:
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.size	pattern_name, 72

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"gimp-item-data"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"toggled"
	.size	.L.str.29, 8

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Additive"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Rotated"
	.size	.L.str.31, 9

	.type	in_main_loop,@object    # @in_main_loop
	.local	in_main_loop
	.comm	in_main_loop,4,4
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Staggered"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Large staggered"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"S_triped"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Wide-striped"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Lo_ng-staggered"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_3x3"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Larg_e 3x3"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Hex"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Dots"
	.size	.L.str.40, 6

	.type	preview_raw,@object     # @preview_raw
	.section	.rodata,"a",@progbits
	.align	16
preview_raw:
	.ascii	"\337\351\362\337\351\362\333\345\356\334\346\357\340\352\363\341\353\364\341\353\364\342\354\365\342\350\363\344\352\365\343\351\364\342\347\362\346\354\367\344\352\365\344\352\365\343\351\364\344\352\365\350\356\371\350\356\371\344\352\365\350\356\371\347\355\370\346\354\367\346\354\367\343\351\364\346\354\367\347\355\370\347\355\370\344\352\365\336\344\356\321\330\343\314\321\333\304\305\312\265\264\264\251\241\232\237\221\201\237\214v\243\213s\237\205k\232~f\221w]\213pU\221sU\214lM\213kJ\200dF{dG{_D\200_D\207fK\216oQ\220rQ\216rO\215rK\213qI\215mH\215kJ\212nR\220|e\224\204q\222\201k\223~f\214qV\205iJ\204gE\202gG\207kO\206lR\214qZ\221xb\226|h\226\177k\226\202n\235\212v\235\214y\242\224\202\250\236\214\252\243\221\262\255\233\301\271\250\324\307\271\334\320\304\342\331\320\351\341\331\361\354\350\357\354\353\362\360\360\373\371\373\375\372\377\374\372\377\373\372\377\372\372\377\370\370\377\370\370\377\365\367\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\334\345\357\336\347\361\336\347\361\336\347\361\336\347\361\336\347\361\334\345\357\342\350\362\342\350\363\343\351\364\346\353\367\344\351\362\351\355\367\352\356\370\347\354\365\346\353\367\347\356\370\347\356\370\344\352\365\343\352\364\344\352\365\346\355\367\342\351\363\350\356\371\346\353\367\344\351\365\344\353\367\346\356\371\345\353\370\333\342\355\323\331\342\306\313\322\270\270\270\257\252\247\246\232\221\243\220\200\240\210p\243\211o\234\177g\224v_\221uZ\214qV\216oT\214lM\207fH\177aC~_A}_A\202cE\205fG\210hG\213mJ\214nI\215qJ\214pF\213kE\210iF\205hJ\210pS\215x^\216y`\213u[\200fL\177dCz^;{`?~eG\205kR\212s\\\213u`\224}k\226\200o\223~l\227\204r\231\211x\231\212y\231\217~\242\233\212\253\245\225\272\262\242\307\277\262\323\313\301\335\325\314\350\342\335\357\350\346\361\352\352\365\361\362\364\361\365\365\365\371\366\366\373\365\365\371\372\372\377\372\372\377\372\372\377\370\371\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\341\346\361\341\346\361\341\346\361\341\346\361\342\350\363\342\350\363\341\346\361\343\351\364\344\350\362\346\352\364\347\353\365\346\352\364\351\355\367\352\356\370\347\353\365\352\356\370\342\351\362\346\355\367\346\355\367\343\353\364\344\354\365\343\353\364\347\356\370\343\353\364\351\353\365\347\354\370\346\355\372\341\352\371\327\341\356\320\331\342\312\320\326\271\275\300\257\257\256\253\245\240\245\230\215\243\215|\232\200k\235\177g\227ya\222u^\216pW\214mS\212kQ\205eJ\205cG\207dG\205aC\202aA\202bC\207hG\212kH\207gD\210iC\212kC\213lC\210iC\202fC~a?\201cE\206jM\206lP\200fLw^Ft[<oT2rX7lU8{cJ\204oY\205p_\212wh\220{k\220{k\215{j\216~n\220\203t\220\206w\226\216\200\234\226\210\250\243\226\261\255\242\310\303\272\323\317\311\341\334\330\353\344\344\356\352\353\367\363\365\363\361\365\365\366\372\370\371\375\366\367\373\372\373\377\372\373\377\372\373\377\372\373\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\337\344\357\337\344\357\341\346\361\342\347\362\342\347\362\342\350\363\342\347\362\344\352\365\343\347\361\351\355\367\344\350\362\347\353\365\347\353\365\352\356\370\346\352\364\351\355\367\346\353\364\347\355\365\347\355\365\346\354\364\354\361\373\352\356\370\352\356\370\345\352\363\345\351\363\347\354\370\345\354\370\334\344\361\331\342\353\313\320\327\273\275\300\250\251\251\250\246\242\251\241\231\244\227\212\240\214|\237\206q\226zc\216r[\207lV\213nT\212lR\205gN\202bG}\\@\177]@\204cD\206fF\204dE\207hG\212kH\207hE\206gB\206gB\207hA\206gC}a>{_>x]>rV9sX=oV>hP9gP4fM/gO3kT9wbIzgP\201p\\\206ub\210vd\215xg\221\177o\216}o\206{m\177wj\201zm\212\205z\226\224\211\237\237\226\274\274\265\311\311\303\331\327\325\345\343\343\353\353\353\363\362\364\365\365\371\364\364\370\370\371\375\372\373\377\371\372\376\372\373\377\372\373\377\372\373\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\336\344\356\337\344\357\341\346\361\342\350\363\341\346\361\342\350\363\342\347\362\346\354\367\344\350\362\346\352\364\347\353\365\346\352\364\346\352\364\351\355\367\346\352\364\347\353\365\351\355\367\346\352\364\346\352\364\346\352\364\353\360\372\352\356\370\353\360\372\353\357\371\351\355\367\344\352\365\336\346\361\326\335\350\312\321\331\276\300\303\253\253\253\243\240\235\242\233\222\240\227\214\237\220\201\237\212y\230\202l\216u`\214r]\204jT\202gL\201dJ}`Fz\\@\177aC\202bC\210gG\214lL\207gH\206fF\207hE\205fC\205fC\210iG\207gD\200c@{_=x[;qT7kP5mS:oV>hP:bJ3fN5cK4cN7fT=hYBteOxiS\205ub\206te\207vh~pcsi^ng]rme}zr\221\221\211\241\243\235\271\273\266\307\311\305\332\332\332\347\347\347\354\356\356\363\364\367\365\365\371\365\366\372\371\372\376\372\373\377\371\372\376\372\373\377\372\373\377\372\373\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\336\344\356\337\344\357\337\344\357\341\346\361\342\347\362\342\350\363\342\350\363\343\351\364\347\353\365\347\353\365\351\355\367\351\355\367\346\352\364\353\357\371\347\353\365\351\355\367\345\350\363\353\356\367\353\356\367\346\351\364\355\360\371\356\361\372\363\366\377\353\360\372\350\356\371\341\346\361\334\343\354\322\327\337\300\303\307\260\257\257\236\227\222\230\220\210\235\215\201\234\215\177\232\211y\232\211w\220|h\212u`\201jV~eO\204iN{aGy^Cz^B{]?\206gH\212jJ\210hG\207hG\204dD\204cB\200`@\205eD\214lK\210hG\200a@w[;mQ3iN3gL2fM5fN7eL7\\E/[E0YE0YG2WH4[M8eXCbVArcQsbTteYqeZkcZmhbrpk\204\202~\226\226\223\251\254\252\300\303\301\320\322\322\334\337\340\350\353\354\354\357\363\364\366\370\364\365\370\366\367\373\371\372\376\372\373\377\372\373\377\372\373\377\372\373\377\372\373\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\336\344\356\337\344\357\337\344\357\341\346\361\344\352\365\342\347\362\341\346\361\350\356\371\344\350\362\346\352\364\345\351\363\351\355\367\351\355\367\346\352\364\352\356\370\347\353\365\354\356\370\354\355\370\355\356\371\356\357\372\362\363\376\363\364\377\363\364\377\362\364\376\350\356\371\332\342\354\321\332\343\276\304\312\254\254\254\236\231\225\216\205{\214\177r\213yg\221\177l\213|i\210xf\201p]\205s^xdPxbLzaGw]CtY?w\\@{^@\204eF\212kK\207hG\205fC\202cA\201aA\202bC\204dE\207gH\210iJ\201bDwZ<lO3aF,_D,mR;hP:bJ6[F1SA,N=)K<)H<)G;*NC3NC3WJ=_QEZODf\\Twoj\207\203\177\212\211\210\234\234\234\257\260\262\304\310\314\323\326\331\341\344\347\344\347\353\352\355\361\360\363\367\363\366\372\366\370\373\371\372\376\370\371\375\370\371\375\372\373\377\370\371\375\366\367\373\371\372\376\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\336\344\356\341\346\361\342\350\363\343\351\364\336\344\356\347\355\370\343\351\364\344\352\365\346\352\364\351\355\367\351\355\367\347\353\365\353\360\372\352\356\370\351\355\367\353\360\372\356\356\372\361\361\375\365\365\377\365\365\377\365\365\377\365\365\377\361\361\375\362\363\376\344\354\367\327\337\351\310\316\326\260\265\267\235\234\232\222\212\202\206vj\204r`\202lV\200mVzjV\177o]\205vd\201r_udOwdMs[At[@rY?u]?y\\?\177bC\202eE\206fF\205fC\202cA\202bA\201bD~_A\206eJ\212iO}_AwZ<oS7fK0`G.aH1aH4[D1P>(I8#E7#B6#?3#A7)C:.D<1D;/NC8UKAskc\222\215\212\244\241\241\243\243\244\265\266\272\317\320\325\337\340\350\345\345\354\356\356\365\356\356\365\360\360\367\361\362\373\364\364\373\365\366\372\370\371\375\366\367\373\370\371\375\371\372\376\370\371\375\366\367\373\372\373\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\342\347\362\342\350\363\343\351\364\343\351\364\343\351\364\344\352\365\346\354\367\337\344\357\331\334\346\340\344\356\353\360\372\353\360\372\352\356\370\356\362\375\353\360\372\357\363\376\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\364\364\376\357\360\373\333\344\355\317\330\341\272\301\310\245\246\250\214\212\207\204zqwgWxbMy`GwbItcM{lZ~rb}n\\weQs`Jr[@nW<sZ@nW:uY<z]?y]=~a>{\\:xZ8xY9{\\>\177`C\205eJ\202bIz[Ax[>sW;oT9nR;]C/[C0W@-Q>'G9 C6\037A5\"=2$ND8TKB\\TM`VMaVKe\\S\200xq\236\232\230\265\264\265\277\277\302\324\326\334\345\347\361\357\356\372\357\356\372\366\365\377\365\364\376\364\363\375\365\364\376\364\363\375\365\365\371\366\367\373\366\367\373\366\367\373\370\371\375\366\367\373\372\373\377\372\373\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\344\352\362\342\352\363\340\351\363\340\351\363\350\357\371\351\354\362\340\340\340\226\222\222ljg}}|\253\256\260\336\345\354\346\356\367\352\363\373\363\367\377\360\363\371\363\365\372\370\370\377\364\363\377\364\361\375\365\363\377\363\363\377\363\365\377\345\352\363\331\340\353\307\313\325\261\263\270\227\226\227\206~z}mcs_QqZHt\\Ew`IwbN~jW~lZ~lZ\201jXwbMrZ>rW<uY=mQ5tW9xY;wY;xY:wZ7rT3rS4uY=tXA\201fT\205o`\212q]\213oU\200eLy_EuYBtZAcK4[B-VA(M; I:!H:%SG6yoa\221\212\200\226\221\211\240\226\212\223\204s\205vf\227\211{\251\234\222\273\264\262\316\314\316\340\343\351\353\355\367\357\357\373\356\356\372\365\365\377\365\365\377\366\365\377\365\364\376\366\366\373\361\362\370\364\371\373\351\355\354\345\351\347\346\353\355\372\373\377\370\370\377\373\372\377\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\346\352\355\344\352\362\345\356\370\343\360\371\343\352\361\361\361\361\327\314\310\244\224\212\204xfQK=GF@\\``\205\216\222\300\311\316\343\351\356\363\367\372\365\367\371\361\361\365\366\364\376\364\360\377\362\356\377\363\363\377\347\354\365\330\342\350\320\324\335\267\270\300\242\240\244\213\205\205\205yt}mbtaTnXJlU>s[Cu^F{dM\177gR\177gSu]Jx_LsY=uZ=rV9sV:uU;wV;yX=xZ;w[8tV5qR4wZ@\205kW\224\200r\227\212\202\237\212}\235\202m\223xb\213pX\205iP\223w\\\202fKsW<gN0hO0fQ3bP6wfQ\237\223\200\266\255\237\252\244\230\254\237\216\250\220x\244\213r\256\224|\267\240\214\314\272\256\331\320\314\336\336\340\345\345\354\344\342\350\352\352\361\362\362\371\365\366\377\364\364\370\361\361\365\337\337\341\263\265\270\217\226\226sypmrf\211\213\206\344\344\350\370\365\377\374\372\377\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\350\354\361\345\353\363\345\356\370\346\360\371\356\367\375\352\352\354\342\332\327\251\232\220\230\204nwgTB;/C@:<=<GMNrz}\312\317\322\355\362\364\364\366\373\361\361\373\364\363\377\362\360\377\346\350\364\336\346\356\322\333\337\300\300\303\247\247\250\220\216\216}xu\204|u\205yo{m`qaQgU6lY8oZ<o[>nY?oZBoZDq[EqZ?r[?nU;qV<uY@{^Cy[BuX<uW:tU7oQ4uW=\224{d\251\223\201\253\234\215\253\225\204\242\206o\236\201i\227x^\220sW\231z\\\227wX\215nN\207fE\216nL\212kK\206jL\214qW\243\213s\260\231\203\250\223~\250\216v\243\206i\246\207i\267\225w\274\233\200\302\247\222\312\270\252\314\300\272\314\303\300\337\327\327\335\331\332\361\360\362\344\345\346\307\310\311\226\226\226__^FGH@CBMODYVD\207\177s\320\310\310\370\364\373\370\372\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\351\354\362\346\353\364\347\356\370\347\356\370\353\361\367\363\363\365\353\344\342\300\261\253\264\231\200\210oVhWBD:+=7/330588JQS\221\226\227\323\326\331\364\365\376\362\364\376\356\357\375\333\340\353\327\340\347\303\313\317\253\252\250\224\221\215\202}y}wp\207\200w\221\210}\205|owl[iY8`O-bQ1hV;hV<q^G~jUyfRzcKzaHs\\Ct[C~cK\210kS\200dL}^E{\\BzZA{]Cz]E\213s[\234\206q\254\231\207\246\216z\231|d\237\201h\236~d\240\177b\235{Z\232wU\232wT\235xT\251\201]\243~Y\235vU\234uU\237zZ\235wW\234vX\236xY\244\200\\\260\207e\262\210d\264\212g\265\221s\264\226~\270\242\220\276\253\236\320\304\272\302\271\263\246\245\242\202\202\200MNKAA=?>8;;9GGCE?/l^E\246\224}\334\313\306\377\372\377\360\365\377\365\366\377\365\365\377\365\365\377\365\365\377\365\365\377\351\354\362\353\357\367\352\357\370\356\364\375\355\361\371\360\360\364\372\365\367\332\320\315\315\256\226\262\224v\204iMbO5A4\"<6,33/577132RUU\222\225\231\326\333\341\325\332\342\325\333\342\300\311\314\253\262\262\232\225\216\206\177vxqh{ti\200ym\210\201s\202{lldU`P5_M2fU;r^G\177kW\214we\224\177n\226\200q\224\200g\220x`\206nV\206mU\213rY\216t[\213qX\216qY\206fP\213mX\212oY\210oY\223|f\210s]\227\201l\227~i\216rZ\236\200f\235}b\236}^\234yV\235yU\237yS\240vR\246zW\242uQ\235qM\237pK\240sL\230iC\235mF\254\177Z\270\215h\256\177W\257~V\260\200X\262\210d\261\220r\322\267\236\306\260\235\220\202t`XO873:;8/0-99274+>93C<3YJ4\227\201a\312\261\230\364\337\327\376\371\375\360\366\377\365\366\377\365\365\377\365\365\377\365\365\377\365\365\377\356\360\372\356\361\372\353\357\367\357\363\373\360\361\372\364\364\370\367\365\371\345\341\341\326\275\254\311\255\223\265\225t\220tPfP1=1\0365/&,+'873664788SWW\211\216\221\264\273\273\247\254\253\225\230\225\214\203y~titi^ti]uk]tk[ogWeZK`L7lVA}dP\222zh\230\177n\231\200r\230\177r\243\211{\244\213s\236\206l\227~d\220v]\222x^\232}e\236\203i\226yb\221u`\206kY\232\202q\234\204u\242\214z\205p_\201l\\\210q]\246\213u\251\215u\240\202g\237}`\240}\\\245~Z\245~X\242vQ\240tP\235pL\232mI\234nH\236oH\235kB\234j@\243tM\270\214f\256\177W\256}T\250yQ\245\200[\234\177a\231\204jl]KA7-84.TUPGJGHJF0/(?9,A6)[J9\205qS\270\241~\340\310\261\377\357\353\376\372\377\360\365\377\365\366\377\365\365\377\365\365\377\365\365\377\365\365\377\355\360\371\356\360\372\360\361\371\364\366\376\364\364\373\364\364\370\366\366\373\357\356\362\337\320\311\306\260\235\312\257\216\265\223i\231zP]G(?1 1) (%\036)(\"22-563*-*BDAjkg\205\204~\202xnwk`reYrdVoaRi[Jn^LrbOyaM\177fQ\215s^\235\201k\244\210r\224yd\213p[\215r[\221wZ\213tW\214qV\223w\\\224v\\\232|b\235}b\215pY\212r^\250\222\200\234\213|\204uj\246\225\212\260\236\223\221}p\214xg\275\244\220\261\227\202\252\216v\254\214p\244\203c\240|X\240zU\236tQ\236rO\230mI\221gC\222jB\231pG\245zP\237uJ\223iC\235qM\227kF\230mF\230rL\213mNubJ>5&-'\0360-'qqm\257\266\265\210\221\222^a^10(A8)M:'\201eJ\257\227t\314\271\231\350\334\312\377\372\372\372\370\377\365\370\377\365\365\377\365\365\377\365\365\377\365\365\377\365\365\377\352\356\370\355\357\371\360\360\372\363\363\372\364\364\373\363\363\372\367\367\376\364\365\373\347\345\345\307\272\260\310\260\222\307\244x\273\231g\232{TaK16)\033/(\036($\0340/(893 \"\035\032\032\027<<5>:3[PGn_Uxh\\\206tf\200kZ\213wb\207q[\216w`\224w_\214oS\215qT\220rT\216rQ\213oL\220tP\215rM\222vW\210kN\204gJ\252\213l\231y[\230vY\226sW\222x^\216ze\302\262\242\257\243\227\251\236\227\274\260\252\272\251\244\252\230\221\275\250\235\264\240\217\244\215{\244\212u\237\203h\227xZ\232xW\242}X\243~Y\240wU\224pL\221lH\224oJ\232uO\243\177W\237|R\222lG\222iG\220eA\207c?tU6H6\0371*\035\037\036\027&&!  \036x~~]im~\212\2157;:0-%9. sU<\270\222o\315\261\216\317\303\250\350\344\333\370\370\375\365\365\377\371\371\376\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\356\360\365\356\360\365\360\361\367\361\363\370\361\364\373\362\364\371\361\364\370\360\364\372\345\347\354\320\312\304\303\263\233\312\260\204\311\247s\274\232h\232}R`H+<-\035,#\027% \027\034\034\024\035\035\025\030\030\021\" \025\"\035\023#\033\020C9*g[K\202sa\216{g\250\216x\224w^\231y_\234|a\220rU\220uS\215pM\224uO\226uM\222qI\223pJ\226sQ\222nN\213iG\252\206c\223pM\220mJ\227sO\226wW\221z`\300\255\232\302\261\247\315\300\271\322\304\275\306\263\247\223|m\264\227\200\242\205h\227v[\226vW\226sT\226sP\242{X\242zU\242|V\245~Z\234tS\232tR\237|X\235{W\232yU\232yU\221pP\216lPwZ>O7\037;*\0302(\0333/&\034\035\030\027\027\025BDCu|}isuU\\\\13-7/#`M7\242\177[\327\260\204\323\272\230\316\303\262\347\347\347\363\366\377\363\364\377\372\370\375\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\350\352\357\350\352\357\351\354\362\351\355\365\353\360\367\356\361\367\353\356\364\356\361\365\357\360\370\333\330\327\307\273\252\312\266\220\315\257\200\312\251x\302\235o\237|S[B*9*\027+$\025$\"\025\032\032\017 \036\022\034\031\f\"\034\r\037\031\013 \033\f*$\026E>.zm\\\226\203n\232\200k\243\206n\260\216s\231z\\\224uS\226vP\234{R\226qJ\226oH\224jH\221gF\221gF\215c@\227mI\222kD\215e=\224lE\236yT\213mN\235\204m\237\214}\302\256\243\270\245\226\237\205p\205fH\226pJ\231mG\234nH\232mG\231mG\226iD\235pJ\231mG\236tN\242zU\235tR\235vR\237yV\232vT\235yX\231wV\207kOr[DG4!- \022/$\030$\034\024,'\037&#\035\036\035\031'(%|\177|\231\234\231ttl61%QB,\207nO\316\252~\334\267\211\327\300\242\335\322\307\355\355\357\362\365\376\365\365\377\371\366\375\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\347\351\365\344\346\362\344\345\362\346\347\362\346\346\357\352\352\363\350\346\357\351\350\357\346\342\355\341\333\334\323\304\270\312\262\230\307\251\204\320\255\206\316\250\202\302\235y\244\203cbJ/E5\0362*\030($\024#\036\017\032\025\b#\033\f\036\027\t$\035\020 \034\022-(\037GA9\227\215\202\243\225\213\230\207y\243\205g\242\200^\242\177Z\227tI\220i@\221i?\227mD\227kF\227iD\230jE\223fA\224f@\222f>\220d9\220e:\216e<\214gB\220pQ\237\203k\242\210p\231}d\210iJ\221lF\232pF\244tL\240pH\234lD\235nF\236nF\234lD\231jB\240sL\237tN\243{T\252\203\\\244~Y\245\200[\242~Z\214iFoS7S=(H4\037<,\0329+\0335(\0311'\0322'\0333,!3.&sofqnd<8-SH6wbI\301\244\200\326\260\207\337\274\224\323\274\245\332\320\311\350\350\354\357\363\373\363\366\377\371\370\375\367\367\376\365\365\377\365\365\377\365\365\377\365\365\377\334\336\354\332\332\345\326\325\335\325\321\327\333\325\330\340\330\333\333\323\326\331\321\323\332\320\323\327\311\306\320\275\257\307\257\226\306\251\211\312\251\206\315\250\204\311\242\177\312\243|\261\216igO/C2\031=1\032+!\0165(\024=.\0317'\024?0\035;. I@4\240\227\215\304\274\265\300\272\265\246\234\224\244\202c\237zV\244{R\244yL\235pB\231l?\236mC\236mD\234lD\232i@\231h>\230h=\227i;\230i:\221b3\207Z,\177T(\177Y1\204a<{Y7\210d@\224lB\232nA\242rC\242pE\243pE\244rE\244rG\245rG\240oB\246sH\243sJ\253\200V\262\207_\257\205[\256\205]\264\214e\240zT\207c?\200aChO7kT:`I0W@*T>(P;$G3\035Q?+K=,I<,WK:TH5o\\C\302\247\206\331\272\222\337\274\224\331\267\226\325\276\253\342\330\323\354\354\356\356\363\372\361\365\375\365\367\372\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\324\324\324\312\310\306\306\300\273\302\265\255\274\253\240\267\247\234\261\242\227\253\234\220\262\236\221\254\230\205\264\236\206\301\251\212\304\250\204\304\245~\311\247\177\310\242|\320\246}\311\241w\265\222iuZ6M8\032J7\033YD)\\F+aB$lK/W<$y`J\240\212x\213zm\244\227\214\236\221\204\235{X\242yQ\253\177S\234l=\237o?\234l<\237o@\242rC\237k?\232f;\231e9\234l<\231i9\235l;\223b1\214[)\201R!\204W(\207[.\214`4\216b5\236p@\240o<\245sA\240o?\252yH\246uE\245tD\243rB\243rB\252yH\242sE\303\225h\276\221e\256\202W\270\216d\273\221g\253\202Y\236vN\230uQ\216pQ\240\201b\212kK\200`@qR2\177^<\204c@uX9cI/hQ6[F-~gJ\303\252\207\337\300\232\334\271\217\335\271\222\332\272\233\325\276\253\345\331\323\353\352\354\356\360\365\361\366\373\364\370\373\370\370\377\365\365\377\365\365\377\365\365\377\365\365\377\324\314\275\306\274\251\273\253\224\257\230~\250\220t\226\177c\230\203i\220{b\222yZ\221vW\235\205b\262\232t\301\247~\304\247|\307\251|\315\252~\320\251\177\317\252}\311\245y\273\230mxY3cF$rS4{[:~T.{O*{P,~V5\236z[\202dK}dN\223{d\220lH\237vN\237rE\240l@\240l=\232g8\242qA\236o@\231g9\232h;\232h;\224c3\236m=\236l;\231g5\223a.\216]-\224b1\221a/\234m9\242q>\244q?\250vD\242q@\245tD\245tD\244tD\250wG\251xG\240p@\242qA\250xI\253|M\261\202T\256\200R\273\215`\276\221e\270\215b\260\206\\\242{S\234vP\234uN\227qI\227oG\221h@\232qG\230nC\224lE\212fA\201_<\205gB\303\243}\342\302\232\341\277\227\334\274\224\332\270\220\331\270\230\317\270\242\340\321\310\353\344\344\355\355\361\363\365\372\362\366\371\370\370\377\365\365\377\364\364\376\361\361\373\364\364\376\302\256\224\267\240\204\264\225u\254\211f\242\177[\232|X\251\216n\231\200b\224sO\216oJ\223wS\236\203a\274\240~\301\245~\301\243z\314\253\201\314\254\203\317\255\203\314\251}\314\247y\300\233n\202^6fB\036\210b<\204Z3\212\\5\205T,\204V-\221e<\205\\7\242\177[\257\215k\227uO\215g@\227j@\234h<\246n@\224a3\237o@\243vG\236o@\232j;\243rE\237o?\236n=\237o=\231i8\231i9\231j<\227g7\227g5\234k9\252yF\252yH\261\201R\244uG\244uG\237qB\253|M\252{M\251{K\235oA\245vG\256~O\245tD\262\202Q\257\200O\264\204U\260\202S\262\206X\266\211[\262\206X\251|M\235pA\254~P\240sE\243uG\245wI\235o?\256\200R\256\203W\266\213_\300\231n\326\261\205\332\267\214\327\266\216\333\275\225\332\271\220\322\260\213\315\260\224\327\303\265\343\331\326\354\350\353\364\364\370\364\366\376\365\365\377\364\364\376\363\363\375\361\361\373\360\360\372\265\227}\254\213o\252\201a\243vR\242uQ\242{Z\254\213p\237\202h\223nJ\220lH\222sT\232\177e\265\232\177\276\242\205\273\234|\301\240~\302\245\202\311\253\205\323\265\210\325\260\202\323\253{\303\227j\216d;yN*\267\221k\221jC\220f<\200T(\207Z.\205[/}W/\202`8\250\207`\245\177X\213^7\235i>\245oA\237m?\242tF\251~N\257\201S\231j>\242sE\235n?\240p@\240p@\232k;\235pD\237qJ\227j=\237p@\240p@\254}L\256\201T\251zS\246|R\232nA\240tH\246zM\254\200S\252}P\254\177Q\261\205W\253|L\266\203Q\264\202P\257~L\254}L\253|M\251|M\252}O\257~L\251vA\251t?\253wC\251wD\261\200M\256}K\257~L\242sC\272\214\\\320\242s\327\253}\331\261\203\341\277\223\331\274\222\325\273\223\320\261\206\301\236r\301\243\202\311\264\237\331\311\302\350\337\341\357\352\361\367\365\377\365\365\377\364\364\376\361\361\373\360\360\372\361\361\373\252\205f\244|\\\244yV\232nJ\235pL\226lK\226sT\220qQ\213e?\216hE\226sW\234}d\251\215w\275\242\211\275\242\207\275\242\203\276\247\204\302\247\202\312\257\206\324\262\210\323\256\177\323\252y\310\232h\223f8\215hC\244}V\243xM\232j=\222_4\214Z/\204V-{R)yS.\206^7\230jC\246xK\246xJ\257\201S\257\205V\260\210X\254\177S\235nF\250{O\246zM\257\202S\242tE\242rC\242pF\231iA\226g<\251|P\234qG\244zN\243yO\246|S\244zQ\220g<\264\207Z\267\212\\\274\220`\260\204W\264\207Z\262\206Y\264\207Z\272\214]\260\202S\270\212[\252|M\251{K\242rC\245vF\250vD\250t?\257zC\256zC\266\200I\304\216W\264\205L\257\201J\252|H\322\242p\323\250w\325\254~\337\272\215\333\272\221\327\273\221\325\271\221\320\260\204\307\241r\304\243~\310\256\222\326\304\266\345\334\330\353\347\352\355\354\365\363\363\372\361\361\370\361\361\370\361\361\370\362\362\371\251\201Z\243xT\235qM\231lH\231nJ\216hB\202_:}]6\204`7\177[7\204cB\206iM\220u[\260\226|\276\246\211\273\242\203\307\254\212\304\251\206\307\253\210\306\252\201\317\255\203\317\253y\322\246p\272\215V\240wL\230mB\254yN\256xJ\250n@\232c6\216Y.\205S*\202S-\214^7\227k@\257\203X\246\177P\244}O\265\217`\252\203U\250zS\246xR\245{P\257\204X\257\202T\243uH\246sH\264~Q\245pD\224f<\265\212`\261\210`\242|U\227qG\237xM\226mD\240vL\267\213`\276\222a\261\207U\300\223b\256\203V\274\221f\303\231p\253\202Y\260\207\\\260\204X\253\200S\253|M\244tD\242p>\231i8\240o<\261}F\275\206N\310\217T\267\203H\252y?\301\221W\325\244m\327\252w\325\254z\331\264\207\337\277\226\332\275\225\326\272\220\316\262\210\304\241v\274\223h\300\236t\310\255\214\324\300\252\333\320\306\345\341\341\351\350\357\352\353\361\352\353\356\355\355\361\360\360\364\364\364\370\246\177X\236sO\223gD\227jF\232nJ\223lF\202_:\201`9\204`8\200\\8\177^<{]@\206kP\253\220u\304\255\220\303\255\215\310\255\216\312\260\220\315\262\222\312\256\212\323\262\212\317\253\177\316\245r\317\243n\276\222e\232nA\230g7\260|I\260vE\244k:\232d6\223_4\231g?\240pH\244xL\240vL\262\211[\243}O\273\226g\256\210[\251{U\253\200V\252\200U\253\203V\236tH\251{N\256{O\267\202U\237k?\230j@\252~W\262\213d\250\202Z\235uM\235uM\240vM\244zQ\254\200U\261\205W\270\216\\\251}P\253\200T\276\223i\253\202Y\256\206]\253\204X\256\203W\260\203U\261\202T\240p@\240n=\242p>\253zG\275\207P\310\220V\307\217V\267\204J\317\237d\326\247n\331\254v\324\247u\326\257\177\334\270\213\332\271\220\324\266\217\310\252\202\267\231p\265\221f\270\217d\275\230n\304\247\204\316\271\237\323\307\270\334\326\324\343\342\350\350\351\354\355\355\361\356\356\362\363\363\367\364\364\370\242yQ\227kF\222fA\216a<\216c>\216g@\215gA\212h@\210d;\202]8~\\9tU6}_C\227{`\267\237\201\303\254\215\312\256\222\307\254\220\306\255\217\303\250\213\300\243\201\302\240y\307\241t\310\237n\307\235j\301\224a\235l9\240l7\256wA\243l6\232f3\224b1\237mC\244sJ\261\202W\251~R\237uK\226qD\242}Q\232tI\236sL\250|T\235uL\232tI\227nC\230l@\242pF\243oC\227e;\235nF\237vN\226pJ\245\200Z\244~V\234uM\245}U\230oF\253\200V\264\211Z\254\202S\261\206W\264\211^\243yP\235uM\252\203[\236uL\262\207[\251|N\261\202T\266\205T\260~L\250vD\261~K\303\215V\306\220X\272\203K\304\223W\325\246m\325\251t\324\252w\325\256|\335\271\214\337\274\221\326\267\220\324\266\217\316\257\210\300\237v\265\217d\262\207]\270\222h\300\240y\314\263\225\323\302\262\327\320\313\337\336\340\352\353\356\363\363\367\360\360\364\365\365\371\361\361\365\234qJ\223hC\223f@\212[6\212^8\214a;\222lE\221nC\216i@\205b:}X4wS4{[<\213nQ\254\224w\303\255\217\304\250\214\275\243\211\300\247\213\300\250\213\302\250\210\307\251\204\310\246~\276\231m\304\233h\323\246p\303\221Z\242m6\237h0\236h0\237k5\230f3\253yL\251{M\234oB\254\200S\232qF\232tI\243~T\220iA\223hC\274\222h\276\226m\254\206\\\243zP\237sH\250wN\230f=\216`6\212`6\234tM\204a=\250\204_\246\200Z\231wM\257\210_\253\202Y\226nD\266\217_\266\216]\265\215_\223mC\240xP\227pI\235uM\262\213_\252\177R\256\202T\267\207X\273\211X\257|J\261\177K\300\213U\314\226^\274\206N\300\215S\324\241h\325\250q\324\253w\316\251v\323\260\201\326\264\207\332\276\223\324\267\217\310\252\204\303\242{\265\222i\256\206]\262\207]\270\220f\276\233t\306\252\211\316\272\245\326\314\303\337\337\337\350\351\354\356\356\362\360\360\364\361\361\365\363\363\367\223jA\216a<\221b=\212Z6\214]8\214`;\222jB\223oF\220mD\214g?\200Z5{U3\200Z;\213lM\242\211k\301\253\215\304\253\214\273\240\205\264\232\200\262\233\177\265\237\177\275\241\177\300\241{\274\232o\276\226c\307\233f\310\226^\270\202J\245n5\237h2\232f0\234j6\226g8\250yJ\237rC\234qD\236tI\226qG\242}S\221lE\221gC\251\200X\275\225l\224pH\222jB\242wM\240pH\222a9\215^6\215a<\223nI\204b?\246\202]\240\177W\231uM\262\213d\231rK\234tK\262\215_\262\213]\252\204W\252\202Y\245}V\230qK\250\201X\254\204X\257\204X\267\212\\\266\207X\300\216]\262\177M\303\217Z\306\221Z\301\213S\274\206N\324\236f\325\247o\323\251u\317\247v\315\254{\325\266\207\327\273\221\322\267\217\304\250\202\301\242|\267\224n\256\207`\254\204Z\261\206[\267\213`\275\226j\302\242}\314\266\234\326\312\275\335\333\331\353\354\357\350\351\354\355\355\361\357\357\363\361\361\365\216a<\215`:\220`:\215]7\220c<\227jD\232rI\216i@\207e=\210b;\204\\4\202W4zT3\224sS\250\217q\266\242\205\302\251\212\266\236\200\262\234\177\257\233}\261\236~\267\240}\270\235v\270\231o\276\226e\301\224a\307\224`\304\216W\260x@\251r<\250s?\237l:\246vF\244uE\232n@\232oC\210`7\242zQ\216iB\251\203\\\236sO\222lG\221lF\234xN\237xN\254\201V\230kB\232kC\223e>\224iE\220jD\223pM\236}Y\242\202Z\240|U\264\215g\236xS\242{Q\260\213^\261\213^\262\216a\276\226m\234vP\227qL\252\203[\231qG\250}Q\261\205W\274\214]\300\216]\266\203Q\301\215Y\301\214U\300\212S\304\216W\327\242l\326\251r\316\246t\314\251y\320\262\204\324\274\217\315\263\212\310\256\206\301\246\200\276\236x\262\220j\245~V\237tM\246|R\265\211[\300\224f\303\234u\310\256\216\320\302\261\326\323\320\344\345\350\351\352\355\355\355\361\356\356\362\356\356\362\216d;\215^7\214]6\220`9\220`:\227jA\231pG\216i?}\\5\200[4\177W/\177S/{R0~^>\230\200b\260\235\177\303\253\213\272\244\201\261\234|\257\233}\253\230x\257\232v\264\234u\273\236t\274\225f\302\224e\307\224b\300\213U\302\212R\257yC\252vC\265\201N\251wF\246wF\243vG\234qD\232qF\226oG\246\177X\273\224m\253\201]\245~X\215iC\237|S\246\177W\262\207]\242tM\243sK\236oH\236uL\243~Y\237}Z\235{X\236}Y\246\203]\267\222k\245\200Z\237yR\240|P\274\227h\272\225g\265\216f\235xR\235wQ\235uM\222lA\264\210\\\270\212\\\270\211[\276\215\\\303\217\\\276\212T\276\211R\311\223[\317\231b\324\242j\325\251t\316\247v\315\254{\312\261\202\320\271\214\322\273\221\311\261\213\301\247\200\275\236y\256\211d\237wP\235sJ\251~S\261\203U\270\212\\\275\230l\301\246\204\314\276\250\322\320\312\335\336\341\351\352\355\355\355\361\355\355\361\356\356\362\212_4\206W/\207X1\205V/\210Z4\204Z3\207^6\213c<}X2\200Y2\177X1yQ-oK*tW9\226|b\254\227|\304\254\210\301\251\206\302\254\214\310\262\222\300\253\213\274\245\204\270\240|\265\230t\270\226o\273\221g\303\223d\303\215X\303\213T\273\204M\261}I\265\202P\273\216X\234p@\252}P\231qG\240yR\227rN\235yU\265\220k\256\210b\240{U\234vP\264\216g\246\177W\257\210_\251\200X\244wQ\236qI\254\203Z\272\223l\242\177Z\235yU\232yT\243\177Z\275\232r\237|V\253\210b\232xO\274\232o\261\217d\253\210b\245\203]\243\177Y\252\203\\\242zQ\245zP\266\211[\276\217^\301\216[\306\222^\303\217Z\304\220[\315\231c\322\244l\317\243n\320\251y\322\256\201\315\257\202\315\263\212\312\262\216\311\261\215\314\263\221\301\245\204\267\226t\236wQ\230mF\240pH\245vK\254\200U\266\217c\272\226k\276\235|\312\265\240\324\315\306\337\337\341\344\345\350\346\350\355\350\353\357\356\360\365\214^4\212\\2\206X1\205[2\201U0}T/{R-~W0yP-{S/zR0sP.sS4}cI\230\202l\257\234\205\303\252\207\274\244\200\272\245\205\264\240\202\261\234\202\267\237\202\272\241\203\273\237\202\264\225t\273\230q\301\225g\315\230c\312\221Y\301\212S\260|I\256~O\273\217X\273\222^\237yJ\246\177X\237|X\246\204a\250\210d\253\213e\253\206`\237yS\257\211a\274\226n\256\207`\260\212c\256\207`\252\203[\250\177V\265\213b\264\213c\253\205]\251\203]\237zV\232vR\267\224n\274\233s\256\216g\261\220i\254\213d\264\223l\257\217h\266\226n\253\210d\243\177Z\230rK\264\214b\303\227j\302\222a\304\222_\304\220[\301\216Y\307\230d\311\236i\315\243q\316\252|\306\244y\312\255\204\306\253\203\310\257\212\320\267\230\314\263\225\306\254\215\266\233z\253\211g\244zV\230kE\240l@\244pD\252\200W\262\215d\266\217h\273\227t\307\253\224\324\311\301\335\333\335\342\342\346\350\351\357\347\353\363\351\355\365\212\\2\210Z0\214]6\212`6\216a<\205\\6{R-tN({R0zR0qK+tS2\214mR\243\213t\237\216}\256\237\215\301\251\210\272\241\201\266\242\204\262\237\204\264\240\207\265\240\205\257\226{\253\217s\250\214i\261\217i\276\223g\312\226c\317\231d\316\230c\302\221^\270\212[\273\221\\\303\231f\275\226h\260\211a\252\207c\232yW\264\224n\261\221k\266\222l\254\206_\253\206_\265\217h\253\206_\246\200Z\302\234u\232tL\253\202Y\270\217f\246~W\262\213d\261\213d\244\200[\242\177Z\265\223m\261\220i\264\223l\260\217h\251\212c\272\231r\275\234t\276\235v\215lH\231uR\265\216h\315\243y\314\240s\312\234l\310\231d\306\226`\300\220_\311\233k\333\256\200\325\252~\304\241v\301\240x\303\245\177\310\252\206\312\261\216\316\265\225\307\257\220\276\244\205\260\222s\236{Y\240wR\223e>\243pB\244sB\251~S\261\214b\267\222e\272\224n\274\240\204\311\274\257\326\322\323\340\340\342\342\343\350\346\352\362\347\353\365\207Z0\206X/\221b:\215c9\220c=\212`9\204Z4}V/sK*qI)rM.xU9\231{b\260\232\204\240\222\204\230\213\177\275\245\207\266\241\200\264\237\200\251\230~\242\221w\244\220w\257\226}\253\222v\253\216k\262\222j\304\234p\315\236m\314\231f\312\227e\307\230h\304\226h\312\241n\303\234j\273\226i\267\222k\265\221m\265\225q\236\201\\\260\221j\265\222i\270\223k\257\212b\264\220g\236{T\254\211a\262\216f\243|T\260\210^\267\216e\246~W\265\217h\267\222k\261\217i\227uQ\254\212d\300\240x\254\213d\272\231r\262\222j\300\240x\273\233s\274\233s\240\177Z\262\216j\302\234u\275\224l\301\227k\310\233n\317\240p\317\241n\317\241r\311\235q\310\235r\303\233r\274\230q\304\243~\300\242\177\307\253\210\312\257\216\316\265\223\307\256\216\276\244\204\264\225t\246\203_\227pI\222c<\236l=\244r@\251\200R\257\212[\265\216`\270\224h\270\232|\302\262\243\322\316\316\331\327\331\341\341\345\343\346\356\347\354\365\201T+\204V-\210Z3\210^4\205X3\201X2\204Z4\202[4\200V5wO/xS3rP4\220sZ\244\217z\266\247\231\250\233\216\264\235}\272\243\201\272\245\206\262\240\204\265\242\206\267\241\206\267\237\202\262\231z\253\216k\267\225l\300\234p\312\242t\324\250w\327\252{\300\226h\301\230i\300\227f\303\235n\314\246{\276\231t\266\224p\261\222n\253\215g\250\214b\266\225l\272\227n\261\216e\262\220f\242\200X\265\222i\274\232q\245\202X\267\216e\270\221h\250\202Z\254\211a\300\233t\273\230q\231vS\266\225p\267\226n\273\233s\264\223l\275\234t\304\243|\275\234t\264\223l\275\231t\304\237z\275\230r\314\245}\323\252\177\333\263\206\326\257\177\312\241r\311\237s\311\240w\311\241y\304\236x\300\236x\275\235y\276\241~\316\257\217\320\263\222\317\263\221\307\255\214\270\235|\242\202b\231uR\221f@\221a9\230f4\243r@\251\202R\260\212Z\265\215]\267\220a\272\233x\303\261\236\316\310\306\327\323\324\341\341\345\341\345\354\342\352\363\205X.\207Z0\214]6\206\\2\201U0{R-~U/{T.\204\\8~Y4yR1mK,wW<~fO\232\211t\236\215y\274\240~\273\237|\264\233{\262\233}\253\223v\243\213n\256\221s\253\214l\254\216i\266\226n\304\242x\320\254\201\312\246x\303\234p\314\247y\302\234o\306\237q\302\234q\306\240y\273\230s\300\236y\272\234x\266\231q\265\232q\264\224k\264\223i\250\210_\265\223i\261\220g\267\226l\257\217f\260\215c\243|T\253\207[\246\203Z\256\214b\272\227n\265\223k\254\214f\264\223l\257\217h\270\230q\270\230q\300\240x\276\235v\265\224m\301\240x\303\236y\266\223n\265\220k\273\226o\276\230q\314\247}\317\252}\317\252}\331\262\207\333\265\215\333\266\217\325\262\213\314\252\205\304\245\200\303\245\201\315\257\212\320\263\220\317\263\221\314\256\215\306\251\207\253\214i\234wS\234qJ\227f=\231h8\242r@\250\201Q\254\206X\264\213Z\266\212]\265\223o\275\252\226\311\300\275\327\321\322\340\337\341\344\346\355\344\351\362\212\\2\213]3\213\\5\205[2}Q,yP+yP+{T.uQ-xS.sN)nJ&hG&hJ,\215uW\250\217q\300\240x\306\245}\274\237{\270\236|\267\233{\276\242\202\266\225s\272\230t\266\227p\267\231p\301\241x\315\255\204\316\254\202\317\255\201\311\245y\312\247z\317\250}\315\244{\302\236y\310\244\200\300\241{\272\235x\267\234t\273\240v\270\231o\270\230o\262\221h\267\226l\262\221h\262\221h\250\210_\254\211_\235zO\251\206\\\237|S\264\222i\250\207_\265\223k\265\224m\267\227p\261\220i\261\220i\265\224m\270\230q\270\230q\262\222j\267\226n\300\236x\301\235x\315\251\204\306\242}\320\255\206\316\253\202\315\253\202\311\247}\316\253\202\327\264\212\331\265\213\323\261\210\311\247\177\300\240y\301\242|\312\253\204\312\254\210\314\256\213\276\240~\256\221n\232yW\230rL\243wO\230f<\226b6\237pB\243zO\246\200U\262\206Y\266\213_\262\216k\272\243\220\312\276\272\326\320\320\333\331\335\335\340\346\336\344\356\205X.\210Z0\205V/\202X/\177S.zQ,{R-\210a:zW0sP(rK#nG\037sM&qP(z[7\220qK\270\224i\311\245y\272\231r\253\215i\251\211f\235|Z\254\210d\257\213f\254\214d\261\224k\273\236v\303\246\177\303\244}\303\242y\320\260\204\322\257\203\317\253\177\316\247\200\304\240|\317\254\211\314\256\211\276\240z\264\233r\266\233p\266\230n\266\225l\266\225l\262\221h\265\224k\254\214c\232zR\251\206\\\232wM\266\223h\237~U\264\222i\232zT\256\216g\253\213e\262\223m\257\217h\254\213d\300\240x\276\235v\261\220i\264\223l\303\241y\316\254\206\314\250\203\314\250\203\314\250\203\323\261\212\311\250\201\315\255\206\325\264\215\315\255\204\314\252\177\310\245z\301\240t\274\233q\276\236v\274\236u\275\237v\303\245\177\310\252\206\265\227t\236\201_\220oM\222kG\242sK\232f;\227c8\236kA\240wO\246\177W\260\206\\\266\210_\266\220p\273\241\220\310\273\266\324\314\314\332\330\332\334\337\345\343\350\361\201P&\204T+\202V/\200W1~W0yS-}U-\222jA\213gBxT/sN(mG oH\"uQ,xT/\215jF\250\205Z\303\240t\272\226i\260\214`\246\177W\256\210^\253\203[\253\203[\272\227l\304\241v\311\247}\306\245{\302\242y\302\242y\270\230o\310\250|\312\247|\307\245|\315\252\202\300\236y\273\234v\274\235w\266\231q\265\232q\264\230n\253\217e\266\231q\262\224o\262\221o\265\223m\234yV\261\214g\227uQ\266\224n\246\203]\264\223k\227xQ\250\210`\245\210_\267\231p\264\225n\251\213f\267\231t\273\235x\272\234x\304\246\200\272\233t\306\245}\310\246~\312\251\200\315\253\204\303\240y\303\242}\314\254\205\317\257\211\307\244|\315\251~\315\251~\320\260\204\317\257\203\315\255\200\306\244y\301\237t\304\242z\301\237z\246\205a\226sP\220kF\221h@\230h@\227e;\226c9\230h@\235rG\246|P\252\200U\260\210`\262\221q\270\237\212\300\263\253\322\311\306\332\330\331\342\343\346\335\340\350\205Q(\204Q)\202T.}Q-{U/tN)uO)\204^7\200\\9wS0uP+sH%rJ#wN)zT.\205_:\224rI\272\226i\274\225f\273\220`\264\207Y\262\206Y\266\215c\273\224i\302\234o\307\241r\303\240t\317\254\177\322\257\203\320\260\204\311\247}\307\246|\311\247}\307\245|\306\244{\276\235v\307\251\202\273\235x\264\231t\262\230q\253\225i\252\223j\261\226t\253\216p\257\214o\265\223q\231vS\254\211f\223qP\264\221n\245\203`\256\215i\226vQ\262\224k\252\215c\270\234s\253\217k\254\220m\266\230y\273\235\200\303\245\207\261\225r\315\257\212\315\256\206\276\235t\307\247~\306\245}\307\246~\314\253\203\306\245}\317\256\207\324\256\210\320\247}\310\244x\317\255\201\317\256\201\317\255\201\307\242v\303\233r\302\235s\303\236u\264\216g\245~V\232qI\220d<\213\\4\222a8\221a8\226f>\232mA\242vH\250\202S\253\212b\251\215n\266\241\211\301\265\254\317\310\303\325\322\321\337\336\340\343\343\351~O*\177O)\201Q*}M&yK%rI'lK*mN/sS1wS0wL(tF uG\035}L#\206X-~R*\212e=\256\211]\274\224d\270\212\\\262\205V\270\215^\303\231n\312\243x\317\251{\327\262\204\325\262\205\314\250}\320\255\201\315\254\202\307\246|\307\246~\315\256\206\314\255\207\275\236y\265\230t\250\214i\267\233y\253\222p\270\236~\257\226p\254\224p\251\216n\253\216p\261\217n\235{W\242~X\245\202]\216lJ\243\200]\237}[\252\211e\234}X\256\220k\256\220k\254\217k\257\222p\240\203d\310\252\214\250\212o\256\221u\304\246\210\275\240}\301\243~\320\257\212\326\264\216\311\250\201\311\250\201\314\252\201\311\247\177\310\250|\320\254\201\332\262\210\326\261\205\325\263\207\316\255\200\323\257\203\326\261\205\323\252\177\314\244{\307\242x\265\217d\242zP\221g=\224f?\223c:\216^5\221b:\227h@\231mA\237sF\245}Q\243\203\\\245\212l\261\234\207\304\271\261\315\304\301\320\316\316\336\335\337\343\343\351uJ-xJ(}I#zG\036\177O)oI*\215nUt\\H\204jQ}_AqO-sK$sD\034wH!zM%tI#\210`8\242xM\266\211[\264\205U\264\210W\272\220a\301\232k\304\240t\311\242w\311\242w\316\252~\311\245y\303\240w\311\247\177\310\247~\310\247\200\304\247\204\300\245\203\274\240~\276\244\204\244\214m\257\226w\256\226w\266\236\200\266\235~\257\226v\250\216o\236\202a\257\214i\234{S\244\201W\234zP\234{S\221pL\227xR\221rO\254\213i\262\223t\256\217p\264\225u\251\214n\270\233~\237\201h\260\222z\262\224z\264\227{\300\242\203\306\246\207\317\256\215\304\242\200\312\251\204\311\250\201\314\253\201\322\262\203\312\252z\322\256\201\334\263\211\331\264\207\327\264\210\320\260\204\323\257\203\324\260\204\312\243z\302\233o\304\234p\273\221g\251\200U\230mB\223d=\224d<\224c:\223c;\227h@\230l@\234qG\237wN\227vU\235\204k\260\236\215\301\267\262\314\305\304\317\315\317\334\335\340\337\342\350yQ1zO,~O*\201R.{P0\200_F\257\226\202\246\224\205\232\213z\205q\\iO5lJ(qL'nJ&hG&yX7\216e<\251|P\266\207V\265\205T\274\216[\310\235j\312\244t\315\250y\320\251\177\324\255\202\315\251~\314\250\177\310\246~\307\246~\301\237z\267\231t\261\226t\272\237}\273\241\202\272\241\201\251\220s\236\206i\260\231|\246\217s\260\226z\265\233}\262\230x\256\221n\240\200Z\251\206_\234zP\221pH\235yU\227uR\216nL\222rQ\246\207f\244\206h\272\232}\270\232|\250\212l\236\201f\223v_\244\206p\266\230\200\245\210l\235\200c\310\250\210\265\223t\264\223r\304\243~\301\241z\275\234r\302\243u\311\252y\315\250{\324\254\202\325\261\205\326\263\207\333\272\215\324\261\206\325\261\205\323\252\201\312\240t\304\227j\306\231k\262\205X\242uI\226j>\224e=\245tL\226f?\223d=\224f?\227mC\227rL\226xZ\235\207p\265\246\231\304\273\273\316\310\312\323\322\326\331\334\342\335\340\350zR*~S0yR1zX;rU>\222we\205qb\254\232\214\227\211y\222}hrW<kI(\216hB\214iE\207hI\236\200b\224iB\252{M\267\207W\275\215[\302\224a\316\244p\317\251v\314\251y\323\254\201\325\256\205\312\246~\322\255\207\323\261\210\320\257\212\314\252\205\304\243~\272\232y\253\215n\250\211j\256\223u\267\236\177\227}a\260\230z\243\212n\254\223w\274\242\202\262\226t\250\213g\243\202\\\240}Z\237{X\230uS\224rP\234zX\230wV\221pP\230yY\243\205f\251\212k\274\235}\252\214m\215qT\213nT\251\212p\266\227|\260\222u\262\223t\251\211h\261\220n\261\220l\261\220k\276\235v\306\245{\315\255\200\307\247z\306\241u\323\252\177\325\261\205\320\255\201\322\262\205\325\263\207\324\260\204\316\246|\323\246y\311\232i\310\230h\267\207X\240rE\224d<\223d=\231jB\216_8\216_9\221b:\222iA\224pL\227{^\235\212v\266\251\237\304\275\276\314\310\314\321\321\325\326\332\341\334\337\347\201T'\201Y2z[=\216yd\226\205u\200rd\210xi\252\226\203\232\204l\216rVwS0yO%uG!iB\036\246\203a\266\226w\230iB\256~O\274\212Y\275\213W\314\236f\322\247r\316\253v\312\251x\320\250\177\320\251\201\306\241y\311\243}\306\242}\303\242}\301\240|\300\236y\267\226t\274\233y\265\225s\267\227w\260\222s\245\211lu\\@\210oS\256\225u\310\260\214\257\225o\243\211a\227vQ\220nM\250\203e\224pU\220mQ\230uY\230vY\223sS\222rR\236\200_\237\201^\264\226r\232~[\224vX\210lQ\264\227{\265\227z\243\205f\244\210e\253\215g\267\227p\302\241y\314\253\203\306\245}\273\233s\273\233s\303\242y\311\246{\312\243z\315\250{\323\257\203\323\262\205\323\257\203\323\256\201\317\247}\324\245w\310\227d\311\231g\300\220`\253}O\231iA\226f>\216`9\216_9\226b>\226hA\227nF\226rN\230}b\243\220~\266\253\242\307\300\303\315\312\316\321\321\327\326\332\341\327\335\347\201Q\"xQ(x]A\254\236\212\256\244\230~tg}m\\\214t]~^?\201[5\204V+~L\032xC\026}N#}U0\242zX\250vL\264\177S\275\207W\304\221_\310\231d\314\242o\315\247w\324\261\202\322\256\201\315\246~\311\243}\276\231t\272\226r\266\224p\265\224q\265\223o\264\220l\250\204`\261\217k\257\214i\251\207f\267\227w\250\211j\204hL\235\205e\276\245\200\242\207`\234\201X\230xS\230vV\236z_\235x_\221mU\215lR\220oT\231yY\224vR\231|X\243\205a\262\225q\235\202`\213qP\243\210i\224x[\221tU\232}Z\237\203]\253\212b\262\221h\273\231o\274\232q\270\227o\262\222j\267\227p\300\236y\304\237z\311\241w\317\254\201\323\260\205\317\255\203\312\250~\315\250{\315\243y\312\235n\304\221_\302\221`\273\212Z\265\206W\243uH\232jA\216`9\222c;\223d=\224f@\227kF\224rP\235\203j\257\234\214\273\262\253\312\304\307\321\315\323\323\323\331\327\332\342\325\334\345yL&uK)qQ2\265\227}\242\206kw[AkI-kE&rJ\"zN#\177M yH\027\200M\036}M \205X+\215a6\242qA\264\202P\275\211V\303\222`\301\225g\301\232o\312\251\202\316\260\213\324\260\204\311\242w\302\234q\303\234t\273\224m\301\231r\266\216j\273\221m\300\226h\261\207[\234uJ\235wO\245\202]\236}\\\266\230z\234\200d\254\222u\261\227w\256\220l\215lJ\220nK\227xW\220rT\215pR\227z]\213mT\223u\\\212lJ\205f?\240\200W\254\211f\252\217t\243\217w\253\226|\236\204l\235}csS4\223oJ\236{O\257\204Z\262\203]\266\207_\265\212_\275\223h\272\226i\272\230n\265\227k\276\236r\304\242x\312\253\206\322\263\221\323\264\222\314\254\205\314\251}\315\247s\316\240p\314\233m\304\223b\300\216]\267\207U\250yI\232l>\227g;\222e8\220c7\220f<\222iG\227tX\237\205q\254\232\221\273\260\256\306\277\277\317\315\316\322\322\326\322\325\335\324\332\343zL%xM*qM.{Z?{Z?iJ-lG(oF$oE\033qD\030uD\027zI\030wF\025zK\035\204V(\220b4\240n=\261~K\272\207T\300\220_\315\240q\312\243z\332\271\223\304\244\204\301\237v\301\236t\300\233t\300\232r\302\232s\310\234t\300\225n\257\201[\273\222d\257\207[\251\202X\242|U\210fB\240\177\\\265\224t\253\215n\274\235~\253\214l\245\203`\207dA\214iE\224rP\216oO\215oO\216pQ\220qX\256\215r\254\212h\223tI\226tJ\242\177Z\235}]\232|]\242\202c\270\225x\202^AuR0\234uM\250\202T\245|S\250yV\251yS\236oH\242qI\257\203X\267\215c\267\216e\301\235r\303\241y\302\244\177\307\251\212\320\261\222\312\253\206\302\240u\307\243n\317\240p\312\231l\306\224c\274\213Y\260\177L\246wF\236oA\231j>\223e8\220c7\220f<\224lH\226uT\245\213t\250\227\211\275\263\254\310\301\276\315\311\313\321\321\325\330\331\340\331\336\351\177M${N(uN-nL0nM1kH*{Q/oD oD\032sD\031sC\024rA\020tC\023xH\030\200P$\224e7\244r@\264\201N\273\210U\300\220_\272\216a\275\226n\303\242}\303\245\203\275\236y\275\235x\270\225q\266\220j\272\221i\252\177U\231kD\242tK\251\204Z\252\205^\235yU\222oL\202`?\212gE\253\210e\242\200]\243\201_\236zW\221lF\207b;\221jC\212gC\213kI\224uO\230wV\237|`\264\221t\215jF\201_4\224qE\242|U\243{T\224kC\221jC\246\177\\}[9\210eC\242\200Z\243\202Y\244\201^\262\212j\252\177\\\223e@\214]6\212Y2\243rK\266\206_\272\222k\273\231t\265\226t\264\226w\276\237\200\276\237z\306\243w\304\236n\302\224e\310\226h\307\226f\275\215[\260\177L\245uD\237pB\230h=\222e8\222e8\221e:\227oG\236|Y\257\223w\253\231\204\272\261\242\300\272\267\310\304\305\320\320\324\331\333\342\334\342\354{I\037xH\"\212_<tO0gG(\177X7\244wQ}N'qE\031sE\027uE\026yF\024yF\024\207T%\214\\,\227g8\242p>\262\177M\267\204Q\274\214[\276\222e\270\221i\266\225q\270\231z\274\237\200\260\222s\253\213g\260\213e\244|T\220f<\223e8\242tF\251\204_\253\211g\256\215k\234|[\213lLuU5\234xS\234vP\223nI\223mF\226mD\214c;\214d=\206b=\240~X\230uQ\230vS\232wZ\250\203d\202]8zU)\212d6\230pH\231pG\214b8xS.yX7O6\034{dG}fIkV8cP4iR6fK*rM(qI!rF\037\202V1\223hD\244~[\246\204b\245\206g\257\220p\265\227v\273\234v\302\240u\303\236p\303\225h\302\220c\302\221a\276\216\\\266\205R\253{J\240rD\231j>\226f;\223c8\223f=\232qI\237{V\240\206g\250\226{\260\245\221\270\261\255\311\305\306\326\326\332\336\340\347\334\341\354\200N$tE\037\220dAxS4iI)tN.tJ'qD\036yJ\036wE\030xG\026~H\026\205N\034\212U$\224`1\237o?\252wD\264\201N\270\204Q\272\213Z\270\213^\264\215e\275\235x\264\225u\262\230x\257\221r\244\203a\224pL\205^8{Q(wJ\036\201R(yY6lQ3_H,_I.s\\?Y@\"lO,\206a;\220hA\231nG\221g=\221e:\221h?\226qK\215lJ\227uQ\230vS\231uX\222mO\207b=\205a3\226pA\232qI\234uN\221mI[@$N9 7*\026$\034\r\032\023\007\030\022\006\036\030\b\037\030\005#\026\000<%\004I,\007iH }Z6\221qP\222rR\244\202c\246\207g\257\220p\265\227t\270\231t\276\233r\273\225k\267\213`\274\213]\265\205V\265\204R\253zH\252zJ\244uG\236mA\231j>\230j<\231l?\234rH\246\200Z\232\177^\237\214p\250\235\211\300\271\265\326\324\325\331\331\335\336\340\347\334\341\354~L#sG!qI(}Y<\264\220r\200\\=qH&uI$xJ\034xG\027{H\025\200K\026\206P\033\213W#\215\\+\216\\.\237m;\260}J\267\204Q\265\205T\267\213^\273\227k\274\233w\266\227w\253\214n\237\177`\237}[\224oJzT/`:\024U.\007?\034\0001\032\002+\032\004*\035\b \025\005\034\023\003 \025\0033#\007[C\037{U/\215d<\216c9\226kA\224lE\237{V\226uT\227xT\224sR\235{_\226sW\204b?\213h<\202_4\227qL\221pO\224wYmX>(\036\016\r\013\003\023\021\007\026\022\007\030\022\007\034\026\007\031\022\0017(\013Z?\027]>\027gJ$lT2o\\?\204iN\214kP\232|^\267\230w\266\231u\257\220k\266\223l\272\223l\266\207_\265\204W\261\201R\267\207U\261\200M\253{J\246wH\243sG\237oB\232j;\232l>\227mC\242}X\250\212l\236\212r\264\247\230\310\301\276\315\311\312\322\322\326\331\333\342\333\341\353wI#oE\"hE'\221oS\307\244\206\243\202a\244|[\210\\8yH\036{J\031\201M\032\206N\033\215T \216Y$\231e5\246rC\254yG\257|J\260}J\262\203R\273\217b\270\224i\266\225q\274\235}\267\225t\236zY\216lI~Y5rM(kE\036hA\031iF\034V<\031(\030\002\037\025\004\026\021\003\021\016\003\026\021\002\022\013\000;*\013\207b;\216f>\212a9\222iA\234vP\224sR\215pR\223vV\235\177_\230x_\226uZ\232yW\234zPsR+wV4nQ4_G/\245\222v) \017\016\013\002\020\f\002\023\f\000#\026\004=*\023bI-\177]:\177W/uM&hE#w\\@\236\212t\235\203m\232y^\232|^\250\214j\275\240{\272\233t\275\233t\275\227r\274\215f\265\204W\257\177O\254|J\254{I\256}M\251zK\244sG\244tD\237n=\232k=\222h>\227pN\250\210o\250\222\200\276\260\246\311\301\277\320\316\317\325\325\331\324\326\337\331\340\351yM(mD!hD&mN2y[=\205aC\207`?zO,sA\027zH\026\200L\030\205J\030\220W#\224]*\234i6\242n>\245r?\251vD\257~L\272\213Z\267\214`\266\216f\270\230s\270\227v\253\206e\234xU\213gE\200\\9~X3~W0~W/zU,\204h?gP-2%\r\030\023\004\016\f\002\016\013\000\020\013\000$\032\003nL'wP*zS,\221jC\243\177Y\235\177]\230|`\216rT\244\206h\230y`\227x^\246\205d\222sK\236}T\216nL`D)?)\0231!\020 \026\006$\031\006/!\bO8\031sU0\201^<\202Z<\202T1\201N(\177M'\204W8\200\\D\244\212x\230{h\207fK\204fH\226yW\250\212e\266\227q\273\230t\267\222n\300\222l\270\211[\265\205V\254|J\253yG\260\200N\256}M\242sE\240p@\234j9\231j;\231jB\240xW\246\206p\252\222\205\270\251\242\301\272\270\315\313\314\317\317\323\330\332\343\330\337\350xM)uI%wH\"zH \200L \177K }J {H\035\200H\026\177J\025\201G\026\202K\031\204N\034\214V%\223`-\227c/\243p:\252zD\254\177Q\260\205Z\256\207`\273\227q\265\220k\253\210e\231xX\202aAhH(nK(zR.\206Z6\177R,~S)\201]0\207d8\204_9eC J-\017;\"\007-\031\003-\031\000S1\020e@\036yU0\220lG\237\177[\254\216k\231~\\\223uV\245\203g\227vZ\235{]\235{Z\224rO\220oKtU2O6\0307#\013;#\013G-\021Y:\033a?\034{S,\201V+uL$oE!tF ~L#\220[4\230eB~R5gC+kH+qN+\212gC\222pK\236~W\262\220k\267\224p\300\235y\267\220i\264\210\\\253|M\253yG\250t?\254wB\254yD\254yE\243tC\243tE\232l>\232mA\240wR\245\203g\251\225\201\262\247\235\275\271\266\306\305\306\317\317\323\326\332\341\334\337\351qI$oC\036wF\036uA\027{D\030{D\030{E\032{F\031\201I\025~D\023\200F\025\205N\033\204P\034\210R!\210V$\232f2\242p8\242p<\242uF\251\200U\245\177X\267\222l\302\233u\267\221l\226tS\205dCrQ0uQ-\212a<\205Y4{N(yO%kD\031g?\027qH uJ&uK'c?\034Y:\030I-\fH'\007T2\021\205`<\207fD\243\203_\251\214h\231}[\232{[\235y]\234y[\236}\\\236|[\224rOkL*`C D,\020K5\032fI,qR2hG%mG\"mE\035h?\026f;\027g<\030m@\032xI\"\220`7\215`:\221gF\231sU\227tR\214jD\231uP\246\203]\251\210c\244\204`\236\200\\\252\214h\254\210c\254\201V\246xK\250vE\250s?\253v@\250s=\251vA\240p@\236oA\234m?\240pE\244|T\250\207i\254\227\203\267\255\242\300\274\271\312\312\312\321\322\325\324\330\337\331\334\346lD nB\035uC\033xD\030{D\030}E\030}G\031~H\033~F\022\201G\026\202H\027~H\026{G\024\206P\037\207T\"\223_+\235h1\243p;\234n?\223l@\234uN\250\204_\264\215g\257\211d\227vT\251\206c\256\207d\244}W\237tN\243yO\231nD\177U,kC\033g>\026k=\027oB\034tG!oE!nH#a?\033V5\024\\9\033uQ0\227uQ\250\205b\254\214i\250\214i\235}]\242\177b\256\214k\254\212i\236|[\220oM}\\:uU4[?\"YA%\244\207f\260\217lqP.qL(c>\031iB\033zN)yP*\200T-\210Z4\220g>\237xP\252\207a\251\210f\253\213g\256\214g\260\217j\252\212f\253\214g\236\201^\226yW\221vU\220oM\222kD\227mC\237pB\242p>\245q>\243p;\245s?\237o?\232l>\231j<\232mA\234tM\237~`\242\215x\256\244\230\275\271\266\311\311\311\325\326\331\330\334\343\335\341\353sJ%yK%qA\030uB\026{C\025{C\025zE\030zF\026\201I\025\200F\025\177E\024{E\024\177K\027\204O\036\214Y&\223_+\232e0\223`.\216b4\226nE\244\200Y\246\205]\244\203^\260\214h\265\223o\266\223n\267\223n\267\221l\257\211a\236vO\232rJ\215e=}S,xL'sE uF\036\201P(\201R+zO+tK(`=\037\235vU\234yV\243\200]\253\211g\256\216k\257\221o\235}]\254\212i\235{Z\251\206d\252\210e\237}[\232yW\207fD~_A_D)iM0rT5\201_=wT0mH$oI#oG#{Q.\221h@\232sL\244\202Y\252\211a\265\233s\265\233t\267\234v\270\231t\300\242\177\274\240}\272\236{\270\236~\274\242\202\274\243\204\272\234{\260\214h\246}U\236qD\227g8\237m:\243p;\245s?\236o>\231j<\232l>\234oB\231qJ\236}_\245\220|\267\256\242\303\277\274\312\312\312\323\324\327\332\336\345\335\341\353\210_7oC\033{I\037xE\026wA\020{E\024xD\024yC\025~F\022x?\016z@\020\200J\030\200L\031\205P\037\212W$\212W$\215Z(\234m<\244yL\256\207`\256\215i\265\227s\261\225r\276\237z\304\245\200\276\237z\275\233y\302\240}\306\242}\270\227q\257\213f\227sN\201[9\202Y6\177U.wI\"\204U-\177Q*}S/xP/zW9\222mO\243~_\251\207f\250\206d\261\217k\250\210d\253\210e\262\220m\246\204a\243\200]\245\203`\243\201_\236}\\\223rQ\207hIoS7bF*nQ1\204cA\204b?uR/zU1zW3wU4\205c@\236\200[\250\213g\257\225o\267\240y\250\222j\270\240|\273\240\200\267\235}\301\247\206\275\244\205\306\255\217\303\254\215\301\253\215\307\255\216\274\233y\270\222m\270\215b\261\202R\244s@\243q=\236l9\237p?\235n?\231j<\232kA\232sL\235~_\250\223~\274\262\246\306\302\277\316\316\316\326\327\332\330\334\343\336\342\354xO'lB\030xG\033{G\030~H\026~H\026{G\027\200M\032\201I\025\202H\027\204I\030\204M\033\204P\034\204O\036\204R \212X'\226d6\244wJ\257\207_\270\231s\276\243\202\307\257\216\316\267\225\311\261\221\304\252\210\276\243\202\267\234{\266\233z\272\237}\273\241\200\267\234{\266\233y\231z\\\227uT\223oI\215e=yQ*\201Z4\207c?{X8\224qU\232w[\244\201e\244\201c\253\211g\260\215j\262\220m\254\211f\236|Y\245\203_\253\210e\240~]\244\202a\232vX\223pS\213lM{]?lP1oR2\177^=\212iG\206dB\226rN\230vT\227zZ\251\216n\270\237\201\265\240\203\257\230{\254\226u\272\242\177\274\243\202\275\245\207\274\243\204\267\237\202\307\260\224\306\262\225\306\262\225\300\254\222\304\256\222\310\251\212\306\243\177\300\230n\262\206X\252{J\245tA\236m;\234m<\232l>\227i;\230j?\230pI\246\205g\260\233\206\270\255\242\304\300\275\326\326\326\337\340\343\334\340\347\336\342\354nF\036rG\034sD\026wE\024\200H\026\200K\026}I\026\201M\032\200H\024}C\022\177E\024\204M\033\202N\032\205P\037\206T\"\223`.\235mD\252}W\260\213g\266\233y\274\247\212\275\251\214\312\272\234\314\274\236\311\262\225\300\251\213\272\243\206\274\247\210\275\247\212\302\254\216\275\251\214\273\245\211\251\221w\243\211j\227zW\206f>\214jA\215mF\205eD\213jN\216mS\230vZ\242\177c\250\205g\243\201_\261\216k\244\201^\234yV\242\202Z\237|X\243\200]\236|[\242\201`\230vY\232w[\216oP\206iIy]=~_?}^>\205fC\205dC\224rP\235\201b\252\224w\272\246\214\264\243\213\252\230\203\265\243\212\262\233\201\275\240\203\267\237\201\270\242\205\257\232}\306\261\225\275\252\216\274\252\217\275\255\224\272\252\222\265\240\206\262\227{\266\225s\272\223l\267\213^\261\202R\251xG\246uC\236p@\232l>\227i;\230j?\234tM\244\205f\262\235\210\275\264\251\304\300\275\315\315\315\327\330\333\334\340\347\336\342\354\216b6\202U)qC\025zG\025{E\023\177J\026}I\026~H\027\177J\025\202I\030\205J\030\202I\032\201M\032\206R\"\204S#\220^/\224iB\244\177[\260\217o\274\243\206\301\260\225\303\265\233\307\273\240\311\273\241\301\257\223\303\261\225\301\256\221\274\251\215\273\251\217\261\237\205\273\251\220\300\256\226\310\264\236\273\250\213\253\223q\231~X\227xQ\206jF\212oN\212oS\214lS\237~c\236|a\251\207h\246\204b\254\211f\242\177]\231vS\244\201^\245\203_\244\203`\236}\\\244\201c\231uY\232w[\214lO\212kLy[=\200bC\200`@\220pP\220qP\235~\\\254\224w\272\254\223\301\264\233\273\256\232\270\251\227\272\250\223\275\245\216\276\241\207\272\240\205\265\240\206\266\243\207\276\252\221\303\263\233\303\263\234\273\253\224\265\245\217\272\250\220\301\250\213\304\244\204\301\233t\273\220d\265\206V\244tB\244tB\235n>\235n?\231j<\232kA\236vO\246\205g\251\223~\267\254\240\311\304\301\320\320\320\326\327\332\335\340\346\335\341\353\206T)yH\036s?\024{E\030{E\024\202H\027\201K\025\202J\027}F\030\201J\034~F\027~H\032\200K\036~M#\204U-\223fA\242~[\264\224t\276\245\211\300\255\226\310\272\246\312\276\254\306\273\251\304\270\245\272\254\227\267\250\221\262\242\210\257\237\202\300\255\220\302\255\224\307\260\234\302\255\234\307\266\244\314\272\244\307\256\224\260\225u\232}[\212pO\177iI\207oQ\216kY\234|f\234\177c\230\177]\251\217i\252\213f\250\205b\242\200^\244\203e\234{^\246\205g\232y[\226uY\227vZ\230vZ\213pUzaH}cI\205iL\200bD\214nP\227z^\254\221u\274\252\227\311\276\263\315\302\267\303\267\252\300\265\244\300\263\240\270\252\224\266\246\216\265\244\214\265\244\214\274\253\227\304\263\243\307\270\252\302\264\247\300\263\244\274\261\240\275\257\230\274\250\212\272\236\177\261\220k\275\224j\275\221c\270\211[\256\177O\252{K\242rC\232l>\232jA\230lH\243\177b\257\226~\267\251\230\307\277\272\324\317\314\324\324\324\333\335\341\334\337\347wD\033yE\034}G\034\201M\035\200H\031\205J\030\202I\025\201K\026\202K\035\202K\035\202I\032\206N\036\210R$\230f9\250{N\262\207]\257\212h\275\235}\307\254\222\320\273\245\314\275\250\304\265\243\307\272\250\302\265\243\276\263\242\301\265\241\272\255\225\257\241\207\236\216u\264\243\215\311\266\243\314\270\252\306\271\251\320\301\257\316\272\243\270\236\203\250\216o\216uW\215vX\212qV\224q^\223pZ\242\205g\267\234w\251\216h\236\200\\\240}Z\232wX\250\205g\235z]\235z]\237{^\231vY\224rU\223pS\212oS{cJx_E\204iM\213oS\220uZ\220x`\245\216w\303\264\246\322\314\304\311\301\267\300\270\255\301\271\252\304\272\253\301\267\245\273\261\236\274\257\233\275\257\232\300\262\240\303\266\246\306\270\255\304\266\251\267\252\232\256\241\217\257\237\207\267\241\204\267\234{\270\227o\260\210\\\264\207Y\262\202R\254|L\243tC\236p@\234l=\235kB\237rN\244\201c\246\214u\261\242\220\302\271\263\316\310\306\322\322\322\330\331\334\330\333\343yE\034}J }G\034}F\030\200H\031\206K\032\202I\025\202K\025\205P\033\204O\033\212T\037\214W\"\220['\220_-\210\\0\204Z0\224mI\250\206d\251\214p\252\223{\272\250\222\276\255\232\300\257\234\310\270\246\276\266\246\300\270\250\275\266\243\274\263\236\267\254\230\246\234\212\262\244\226\310\273\256\312\303\266\331\320\302\333\313\270\307\262\234\253\223|\220w`\226{e\213oX\244\177i\243\177g\231y[\251\214h\243\204_\231xU\251\206c\242~]\236z[\234wX\237z[\242}^\240{]\230tV\223oP\216qT\201kPxaF~eK\206lR\210qZ\242\214z\310\267\246\324\311\277\316\314\306\302\277\271\275\271\260\270\263\252\265\256\243\257\247\232\256\247\230\264\255\235\265\255\236\267\257\240\275\263\247\275\261\245\266\250\230\273\253\230\267\247\217\260\235\203\266\236\200\265\227t\274\227o\264\210\\\254}L\243sB\244r@\242rA\240p@\236oA\235mD\236rN\243\177a\246\214u\246\227\205\265\254\247\301\274\272\314\312\313\323\324\327\332\335\345zG\035{H\036}G\034\204O\037\204K\034\213P\036\212P\033\212S\034\206P\033\202M\030\204N\030{E\020}I\026zK\032\201U'\222g;\242zS\243~\\\244\205f\275\243\211\302\256\226\303\261\234\306\264\237\301\260\233\274\267\252\302\276\261\303\276\262\273\267\247\266\261\241\266\261\242\270\263\246\265\256\243\252\251\237\302\277\265\327\316\302\325\307\270\272\246\225\215ue\212p^\213o\\\240|e\237{c\243\177b\252\210f\243\200]\254\211f\267\224r\236z[\242\200^\244\202`\232vW\231tV\237z[\230vV\222mO\215rT\202mP\177iM~hM\177iS\240\215z\314\275\256\326\313\301\312\306\300\270\270\263\254\254\251\253\253\245\236\234\225\244\242\231\252\246\235\256\253\241\265\263\247\266\265\250\266\262\250\267\261\247\274\263\246\273\256\236\275\255\230\303\261\227\275\251\214\257\226w\267\231t\266\222f\274\216`\273\213Z\257|J\240n<\232j9\230i:\232l>\235kB\235qM\237{^\252\220y\262\243\221\270\260\252\300\273\271\312\310\310\316\317\322\326\331\341zG\035{H\036\201K\037\201M\035\210P \212O\035\210N\032\207P\032\204O\032\204P\032~H\023\204N\030\200M\032\207W&\210[-\222g;\236vO\254\205d\276\236~\300\246\213\274\246\217\274\252\225\270\247\222\267\247\223\266\262\246\261\257\243\244\242\227\253\251\236\260\257\244\250\247\235\250\247\235\274\274\261\301\301\272\276\276\267\266\264\254\312\302\270\314\277\264\220}q\202l^\212q`\223t\\\235{`\250\204g\251\207f\240~]\244\202c\243\202f\234}`\231y[\232y[\220oT\227wZ\226uW\230wZ\224sV\210nS\201mTzeLcP:\177mY\264\247\230\311\301\267\260\255\250\257\260\255\272\276\271\264\266\263\250\252\244\236\236\232\220\220\213\243\243\235\246\246\240\247\250\240\250\252\237\251\252\240\251\245\234\245\235\222\261\245\225\270\251\222\272\250\216\267\244\206\260\230z\237\202`\250\205]\261\207[\254}L\254|J\243q@\243sB\237p@\234l=\235kB\237rN\244\201c\252\220y\262\243\221\276\266\257\314\306\304\314\312\312\322\323\326\324\327\337tA\030wD\033\177J\036\201K\035\204K\034\206K\032\207N\031\207P\032\177K\027}H\024\201L\030\205P\033\210T!\205U&\213_3\222h>\244{W\303\240}\272\234\177\266\236\205\252\230\203\254\233\210\266\246\222\307\270\246\276\270\253\272\267\254\264\262\252\250\247\240\250\250\240\265\266\254\256\257\243\236\237\223\224\224\215\256\256\250\315\315\305\302\300\271\276\266\255\226\212~xhY\212ud\223xb\236\201i\242\201g\246\204g\245\203g\235}c\222w^\222v^\227y`\220uZ\223w\\\220uZ\215rW\215qX\222v[\214t]\207s_q^JfVCoaR\220\210|\251\251\241\277\302\275\307\314\306\265\270\263\233\236\230\222\224\217\235\236\230\245\245\241\246\246\242\242\241\236\255\256\246\262\266\254\267\267\256\303\301\270\303\275\262\300\270\250\266\252\226\274\255\223\267\246\214\265\236\203\275\242\201\266\225p\256\205]\253~Q\243vH\237rC\235o?\232k=\231j<\231h?\235qM\246\202d\254\223{\266\250\226\276\265\257\311\303\301\311\307\310\316\317\322\323\327\340zG\035zG\035\200J\036\177J\032\204K\034\206K\032\207N\031\207N\033\206N\037\202K\035\206N\036\210P \206R\"\222_5\244wJ\256\203Y\262\216j\243\203d\251\217u\242\215x\265\245\221\306\271\247\307\272\250\274\256\236\273\265\247\257\253\240\257\254\245\252\250\244\254\253\246\251\252\240\225\230\213\230\232\215\231\230\217\236\236\230\256\256\251\252\253\245\276\275\265\232\224\210`VG\224\206q\240\212t\242\211p\237\201i\231za\234~f\231\177i\213s`\207o[\214s]\205lV\214s]\213r[\213r[\213r[\226|e\232\202o\206pb\205rbM>1VL@\260\255\241\267\273\262\235\250\240\246\254\246\235\237\230\212\213\203\177\177y\213\213\205\221\220\214\230\226\222\235\232\226\237\237\226\217\222\205\241\242\227\236\235\222\251\245\232\261\252\234\273\262\237\276\263\234\272\255\223\276\256\225\261\231|\245\207c\260\213e\267\215c\264\210\\\250|O\231m?\236o@\236o@\235kB\234oK\237{^\244\213s\253\234\213\272\263\254\302\275\273\312\310\310\322\323\326\326\332\341xE\033zG\035\201K\036\202K\035\210P\036\210P\035\207P\032\206P\033\201K\035\206P\"\206N!\221W)\230b4\227e:\220a:\224lE\232xW\261\222t\264\232\200\267\243\215\265\246\223\261\245\225\257\242\223\262\247\226\266\257\241\264\255\242\264\260\250\265\263\256\253\253\245\233\234\223\234\235\221\232\234\215\223\222\211\230\230\221\235\236\230\264\266\257\264\265\253\221\221\203kfT\232\220z\242\220z\257\231\202\224ze\232\177i\236\204n\177iXhVHl[J\\K9o\\I\205p\\\220{g\210t`\220ze\236\211t\235\210v\235\207{\224\202tgZMVOC\222\220\205\221\227\215\214\230\220\230\240\230\237\240\227\250\251\237\230\231\217\250\250\240\254\253\246\245\244\235\257\254\247\251\251\237\260\261\245\250\250\235\270\267\254\265\262\247\274\270\252\262\254\233\266\257\231\270\255\227\262\242\213\272\245\212\274\241\200\252\211e\237zP\227oF\237uK\230l@\232k=\227i;\230h@\234qM\240}_\242\212r\246\227\205\272\261\252\270\262\257\301\300\300\314\314\320\321\324\333wD\033zE\033\200H\033\207L\033\204N\030\205O\032\205R\036\202R\035\205R\037\207R!\224[+\213S&\212V*\215]2\222i>\227sG\246\212f\266\233z\266\234\202\267\240\212\270\245\222\261\240\216\273\254\232\303\265\244\274\266\250\270\267\250\265\266\250\262\266\250\240\244\226\224\230\214\240\243\230\224\226\214\244\253\240\257\265\251\255\261\247\242\244\227\216\216\200ywjwrb\223\214{\246\230\200\254\235\205\223\203m\205vczm]73&\026\026\016\027\026\016\036\034\023,'\034SH;\201rcyiZ\243\223\200\245\224\201\242\221}\235\214x~p_\204zka[Q\210\207\200\227\232\226\213\220\217\226\232\226\214\216\206\236\240\230\241\243\233\227\230\221\250\251\241\243\244\234\250\251\241\246\250\240\242\243\235\243\243\235\237\236\226\254\251\237\261\255\242\260\251\235\273\263\245\264\251\230\301\260\237\265\241\214\254\222y\262\223t\261\216i\253\203[\234rH\235qF\231j?\230mB\230mF\226qM\230{]\232\204l\246\227\205\261\250\234\274\266\255\275\273\270\310\310\312\315\320\325}K\"~J\037\200I\033\205J\030\210R\034\210S\035\207U \204U \204T\036\205Q\036\205M\036\200H\033\200K\037\221_2\224f9\250}Q\235\177Z\227|[\235\203j\246\220z\252\226\205\303\262\242\273\255\236\274\257\240\270\262\250\266\264\252\263\264\250\254\260\244\225\232\220\240\245\234\220\222\212\230\231\223\242\251\241\251\260\250\252\257\247\244\246\235\234\234\222trg\235\232\216\232\224\206\264\254\230\275\262\237\260\244\223zpaB;/\022\021\n\023\024\f\024\027\016\r\016\b\021\021\013$ \027I@6th]\256\243\226\275\263\245\266\254\235\237\224\204\243\233\215zthge\\\212\212\204{~{\216\222\217\255\257\254\240\242\232\233\235\226\220\222\213\221\223\214\220\222\213\243\245\235\246\250\240\246\250\242\253\254\247\247\250\242\267\266\260\254\251\240\267\262\251\261\252\240\260\250\233\266\253\235\276\256\236\272\246\223\266\237\211\261\225y\253\211g\234wR\243zR\230nE\227iC\231mG\237vP\240}Z\232\177b\232\207q\246\231\211\256\246\232\270\263\252\275\274\272\306\310\312\315\320\325}K#~M#\205O\"\212S \215W\"\214W\"\210U!\205U \204T\037\205S\037\206R\036\213U#\224\\.\221[0\242mA\222a8\221mH\223vS\242\210k\254\224\200\265\241\221\264\247\230\264\253\235\256\247\232\252\245\235\257\256\247\255\256\246\243\246\240\243\250\240\231\235\227\236\240\234\237\237\234\237\243\237\244\252\244\241\245\241\226\230\222{{t\214\213\205\234\232\223\270\265\255\274\267\255\315\307\275\250\242\230a\\R\037\036\027\027\030\020\021\024\f\020\024\013\f\020\b\025\030\017\024\024\016\031\030\023SQI\256\254\244\270\266\261\264\261\253\261\257\247\227\226\216\207\207\201\212\213\206z{x\202\205\200\245\250\245\255\260\253\262\264\257\265\267\262\260\262\255\264\266\261\243\245\237\257\261\254\251\253\245\244\246\240\230\231\225\236\236\230\234\233\225\251\246\236\265\260\245\276\267\253\276\267\252\262\251\233\266\250\233\272\252\233\302\255\230\270\240\205\275\235}\261\216i\246\177X\230pH\223iC\221jC\230tP\236~^\240\206l\244\223\177\242\230\211\260\250\237\267\264\255\276\276\275\304\307\312\314\320\326}N'\177N%\205P$\213W#\220W$\215W\"\210U!\205S \202R\035\177O\032\206T!\215Z(\221Z,\230b6\220[/\234g=\232tM\243\204_\251\214p\265\236\210\273\251\232\261\247\234\262\254\241\276\273\261\300\273\267\260\255\253\246\246\242\246\251\244\253\256\253\251\254\251\257\260\257\250\250\250\250\253\252\242\246\245\234\240\234\234\235\234\250\250\247\235\235\232\240\240\237\244\244\243\310\312\310\306\306\306\264\263\261>>:\031\031\024\023\026\020\f\020\t\f\022\t\n\021\b\017\024\f\023\027\020\032\035\031@B?\253\256\255\255\262\262\271\276\276\242\246\246\246\254\251\250\253\251\231\235\231\214\220\214\255\261\254\252\256\250\263\266\261\257\262\255\255\260\253\252\256\250\247\253\245\242\246\240\245\251\243\264\267\262\261\264\257\260\261\254\237\237\231\237\236\226\246\242\231\252\245\233\254\246\232\266\257\241\264\253\237\272\257\242\262\244\226\257\234\211\261\231\200\251\213n\256\214i\246\202\\\243}W\232sM\222lG\226rN\230yZ\237\211p\245\226\203\252\241\223\266\260\250\272\267\263\301\301\301\302\306\312\315\320\327\177U,zO%\205R&\212V#\222](\215X$\204R \204R \210W$\221_,\237n;\205V&\210X+\205Q(\230b:\234i@\227rL\256\216k\275\241\205\273\243\220\273\254\236\273\261\247\275\267\256\260\255\244\257\251\245\273\271\266\265\265\262\261\262\261\262\265\262\254\257\256\243\244\243\253\253\253\252\253\253\253\256\255\237\242\241\250\253\252\236\237\236\243\244\244\303\304\304\272\272\273\273\277\302\312\315\320\273\274\276CDC\030\031\026\023\027\021\n\016\t\021\031\020\013\022\n\020\027\017\023\030\023\032\037\033AIG\274\306\307\265\301\304\244\257\262\266\277\301\273\304\306\254\265\265\243\251\250\240\244\240\243\250\242\237\242\234\231\236\230\222\230\222\214\221\214\216\223\216\214\221\214\223\231\223\223\231\223\255\262\255\257\262\255\245\246\242\260\260\253\245\244\235\246\242\231\243\236\225\251\243\227\261\252\234\253\242\225\244\231\214\243\224\206\243\221~\242\213t\226z]\231yX\235yT\227qJ\220jD\213e@\221mJ\223tV\235\206m\240\220}\257\246\231\264\255\250\300\275\273\302\302\303\310\314\320\310\316\327\201X0\177U,\213Z-\210T%\210T!\204P\034\212W$\212V'\202R\"\224f6\224f7yO$zR(\214`8\224e?\250xQ\261\221k\273\234|\265\234\203\266\242\216\270\251\233\265\252\236\251\243\227\266\261\250\273\266\262\273\271\266\256\256\251\247\251\246\263\266\263\242\245\242\255\256\255\246\246\246\241\244\241\234\240\234\216\222\216\237\242\241\234\240\240\255\260\260\310\314\316\310\314\316\301\312\315\277\307\311\301\307\311TVV\031\034\031\025\030\024\017\023\017\021\027\020\r\023\f\021\026\020\020\024\020\031\034\031[ba\304\315\316\261\275\300\271\305\311\264\274\301\267\300\302\271\301\302\234\242\240\213\220\213\226\234\225\245\253\243\244\252\244\226\232\227\234\240\235\233\237\234\236\242\237\240\244\241\216\222\217\220\224\221\226\232\224\241\242\236\243\243\235\254\253\244\260\255\244\240\233\222\242\233\217\245\235\220\244\234\216\244\227\212\242\222\202\236\211u\223|b\226xY\220nK\214gA\220hA\222jB\221jC\223nJ\232zZ\237\205k\242\221|\251\240\222\253\246\243\266\265\265\275\275\300\276\303\312\306\320\327\237wN\201Y/\177Q$\200N \207R!\221[)\212V'\207T%\202P&\224e9\234qE\240zM\264\215c\212f@\226pJ\237yS\242\210g\237\212k\252\224}\256\234\212\272\252\233\254\240\223\260\247\232\274\264\250\266\260\252\261\257\251\235\235\226\257\261\254\245\251\243\247\253\246\236\237\233\245\245\244\231\234\230\226\231\225\240\244\240\233\237\233\224\230\226\217\223\223\301\307\311\306\314\316\300\314\314\302\313\314\316\324\324\220\221\221&(&\025\030\025\026\032\026\024\031\023\023\031\022\024\030\023\027\030\025453\240\244\243\305\315\315\300\313\314\265\274\276\272\277\301\301\305\306\262\267\266\234\240\236\223\231\223\202\207\201x}v\225\234\225\236\246\241\210\220\213\225\234\230\217\226\222\226\235\231\230\240\233\236\246\241\237\244\236\233\234\230\226\226\220\235\234\226\243\237\226\246\241\230\243\234\222\243\232\216\246\233\214\240\220\200\236\214z\242\213t\234\200d\227vU\227rN\221i@\212a8\222e?\223fA\224lH\235zX\237\203h\245\221{\252\235\216\266\260\257\266\265\266\274\275\301\302\310\316\304\315\325\216g>{S)\204V)\206V&\213V&\207R\"\210T$\206R&~L#}N'zR*\200\\4\200`8\204e?\215kH\237|X\222{\\\237\211m\243\217w\250\225\202\242\222\202\243\224\206\253\237\220\257\246\231\257\250\240\250\245\235\250\251\237\261\265\254\247\252\245\234\237\233\247\251\246\237\240\235\242\246\240\233\237\231\225\230\224\252\256\251\236\242\237\222\226\224\236\246\244\277\306\306\303\315\314\302\312\310\301\306\305\312\314\314}~}#%$\031\034\033\026\032\026\026\031\024$&\"WWU\237\237\236\303\304\303\275\302\301\265\276\275\275\302\302\265\267\270\263\266\266\245\250\247\217\223\220\205\212\205\210\220\210\212\222\213x\201zt{w\200\210\203\205\215\210\215\224\220\223\232\226\222\231\225\234\242\236\251\254\251\236\240\232\240\240\234\224\224\215\251\246\236\240\233\222\237\230\216\242\233\217\242\226\207\252\231\207\246\222}\232\202i\232}`\230vS\220iC\214c;\210^4\212]4\216c<\231nJ\231wU\224y^\242\215u\252\233\214\253\247\246\266\266\267\303\305\311\302\307\316\304\314\324{M\037{M\037\201S%\202S$\204T$\205S&}M\036\201P#}P#\205X,\227l@\273\217d\231qH\201[5\222lG\222mI\232yX\227wX\226{\\\215w[\213w`\231\210v\235\217\201\243\227\216\245\234\225\244\235\226\261\254\247\260\256\253\245\245\242\237\242\237\233\237\236\232\240\236\232\236\232\215\222\215\247\254\250\263\270\264\216\222\217\177\204\200\222\226\223\245\252\250\277\306\306\274\301\303\301\307\311\276\302\303\306\313\314\246\253\254\211\216\216ost\211\215\215\251\255\256\277\301\302\300\302\303\270\274\275\274\277\301\255\260\262\262\267\266\255\262\260\240\246\244\221\230\225\222\231\226\220\227\224\205\215\211\214\223\220\236\246\242y\202}x\201|\202\212\205\207\214\211\213\220\214\224\230\224\224\230\224\237\243\237\236\242\236\236\240\234\243\243\235\232\230\221\244\240\227\234\227\215\235\230\213\226\213{\226\206q\237\214u\253\221v\245\207h\227tR\220jD\206^6\214b8\214c;\212e@\216mL\223x]\236\211t\235\217}\242\230\214\252\251\244\256\256\256\274\274\275\305\306\315\303\305\315\177P\"\177P\"\202S$\201R#\204T%\202S$\177P\"\207W(\207Z-\201T(\216`6\202X/\202Y1\202Z3\200Y2~X3\206dB\210gF\212kK\202iI\216w[\234\212t\250\231\212\260\240\226\261\247\236\245\234\223\257\251\241\237\236\230\242\242\236\240\243\237\242\250\243\226\235\232\207\214\210\234\240\235\232\236\233\214\221\215\225\231\226\202\207\203\222\226\223\237\243\240\253\260\260\245\252\252\261\266\266\260\265\265\254\261\261\262\267\267\241\245\245\214\220\220\203\207\207\242\245\245\233\237\237\224\230\230\233\237\237\231\235\235\236\242\242\225\231\230\214\223\220\215\224\221\222\231\226\204\214\211\177\207\204\214\223\220\214\223\220\203\213\210~\207\202x\201|\203\213\206\200\206\202\211\216\212\212\216\212\223\227\223\233\237\233\245\250\245\232\235\231\241\242\234\236\234\225\235\232\221\237\233\220\240\232\217\234\222\202\231\213u\216{e\221y_\243\205g\230vT\231sM\221f@\206^6\214e=\216jF\222rR\222y_\236\213w\235\217\201\245\234\222\237\237\231\246\246\245\262\262\265\271\272\276\275\275\306zK\035~O!\201S%~O!\205V'\205U&\205U&\210Y+\214^1\200S'\201T(\202V+~T+}T+\177W/\216e<\207a<\214hD\216lJ\220sP\231\177a\240\212r\232\205t\242\220\204\237\225\210\235\225\211\242\234\222\231\227\215\237\237\226\235\237\230\227\235\226\214\221\214\233\237\234\232\236\233\210\215\211\205\212\206{\200|\207\214\210\202\207\203\302\310\303\262\267\266\211\216\216\220\224\224\201\206\206sww\\``:>>),,(**;>>KNNimm|\177\177x{{\177\202\202u{yz\201\177y\200}\253\264\260w~{w~{~\206\203~\205\203~\207\203\206\220\212\200\210\203\204\214\207\202\207\204\220\224\221\216\222\216\214\220\214\226\232\226\234\240\234\231\234\226\230\230\222\227\226\216\226\222\211\237\233\220\243\235\222\240\226\207\227\207r\224\203k\207rW\221uW\234{X\221lF\210a:\204\\5\212c=\216kG\221tU\230\200h\237\215{\236\221\204\251\241\227\247\250\242\261\261\260\274\274\275\275\276\302\272\272\303tH\034}Q%\202U)\177R%\204W+\205X,\207Z.\204V+\205T,\177R)\202T+yK%\212\\2\201S,\212\\5\207Y2\202Y3\206_9\212f@\226uQ\215pR\220w^\242\213x\244\220\200\230\215\177\226\215~\250\241\223\236\232\215\230\230\214\231\234\220\216\223\211\225\232\223\222\230\222\220\224\221\222\226\223\203\210\204}\202~\210\215\211\205\212\206\301\306\302\252\257\255\203\210\206\205\212\210\217\223\221\233\237\236\225\231\227\213\220\216vzyy~|}\202\200\216\222\220\220\224\222\214\221\217}\202\200diglqomupv}y\214\223\217owrjqmx\177{\204\214\207\211\221\215~\207\202\204\214\210\204\214\207\226\235\230\216\222\217\233\237\233\215\221\215\230\234\230\234\240\234\233\236\230\233\234\225\222\221\212\202\177w\215\210\177\224\216\203\240\227\207\230\213w\224\205n\206rY\214qT\216nM\214iD\222kD\207a;\213gC\216nL\221tW\230\203k\226\205u\244\232\216\243\235\225\251\251\244\265\265\264\277\277\300\274\274\301\277\277\311yQ(zR*~V.\201X/\202Y1\202Y1~U-~V.\177U.zP*{P,{P,\202U/}P*~P*zN(}S/}V/\206a;\200_=\214oP\227}c\216wd\222}n\242\226\205\244\232\212\240\231\210\221\216\177\221\221\204\225\226\212\221\224\212\227\234\223\225\231\225\230\234\231\224\230\225\203\210\204\203\210\204\211\216\212\205\212\206\237\243\240\200\205\203x}{}\202\200|\201\177\243\250\246\253\260\256\236\242\241\235\243\240\236\246\243\230\240\235\223\232\230\210\220\215qxu\\caX_\\aheahdryuowry\200|owrqxtryu}\206\200r{v|\205\177\177\207\202\235\243\237\232\236\232\220\224\220\233\237\233\231\235\231\231\235\231\227\232\226\235\236\230\232\231\221\220\215\205\205\200w\213\204y\220\207x\224\207t\212{e\213w_\210oS\216oP\214iE\207b<\205`;\214iF\215nO\214tY\230\203o\236\220\200\236\227\214\237\234\226\254\254\247\264\264\263\271\271\274\277\277\304\277\277\311xT0{X3\177[6\200[6zW3{X3zW3\177[6zT1wP/xP.wO-uK(\177S/zO*{P,zS,tN(wT0\214jH\206jL~eM\224\177j\250\224\205\251\233\215\231\215\177\221\212|\220\213~\222\220\205\226\226\214\227\231\217\232\236\227\231\235\231\220\224\221\207\214\210\216\222\217\224\230\225\206\213\207\214\221\215\207\214\210\206\213\207fkg|\201}x}y\220\224\221\214\221\215uyvszu\200\210\203x\177{ltoszvbie\\c_U\\X[b]`hadle{\204|s{tpxqx\200ypxqy\202{v\200zu}x\203\213\206\205\214\207\230\234\231\225\231\225\226\232\226\233\237\233\231\235\231\227\232\226\227\230\221\231\227\220\227\223\212\210\204z\200zp\177yi\227\213y\215\177j\204sZ\202jP~`B\213iG\216jE\205a>\202bA\212mO\221{`\220\177k\227\214~\235\226\214\242\240\234\256\256\251\261\261\260\265\265\270\277\277\304\267\267\300xY9wW8uV7uV6xY9{\\=z[;zZ;uS7rQ2sP2rM/wP0xO.zQ/{R/zQ/\202]8\210fB}a>\201fJ\222{d\236\212y\237\215~\224\206z\207{o\213\202w\223\214\203\224\220\207\224\224\215\231\232\224\226\231\225\223\227\223\217\223\220\207\214\210\214\221\215\224\230\225\206\213\207\232\236\233\203\210\204swt{\200|y~zy~zjnk\206\213\207\177\204\200\213\222\216bkfv\200zdmhqzujsnjsnclgT]V_g`aibx\201yqyru}v{\204|qyru}w~\207\202x\201|\203\213\206\210\215\212\222\226\222\225\231\225\226\232\226\230\234\230\234\240\234\232\235\227\222\222\215\222\221\212\230\225\214\223\216\203\216\210}}ugzn^\207zf\224\203k\206oU\200dG\202a?\213gC\214iF\214lL\210mQ\206pY\221\202o\234\223\205\240\234\224\246\246\242\251\251\244\253\253\252\260\260\261\270\270\275\270\270\301\223{_\212pV\201gN\200gM\204kQ~dK\234\202g\202iPqV?\202eL\213mS\177_EtS7\177\\?tP2tO1xT0uR0rQ0~bA\226~`\231\203m\200o^\246\225\207\223\206{\221\204z\224\212\201\224\214\204\226\222\212\224\222\215\230\230\224\221\222\216\220\224\221\210\215\211\213\220\214\213\220\214\214\221\215\203\210\204\222\226\223uyvx~x|\202|{\201{z\200zqxq|\202||\202|x\200zs}vu\177xqzty\202|qztirmbke[c]]e^gohw\177wltlqyry\202yy\202yy\202|qzu\202\212\206\203\213\206\206\215\210\220\224\221\220\224\220\230\234\230\231\235\231\232\236\232\234\237\233\227\230\221\220\217\210\220\215\204\214\207}\213\204y\202yk\216\201r{lY\177lW\215u[\202fI}\\;\202a>\210fD\213nN\212pV\210t]\221\205r\231\222\207\231\227\220\235\235\232\246\246\243\254\254\254\257\257\262\263\264\270\267\270\300\236\227\220\242\233\224\237\227\221\230\221\213\232\224\215\237\227\221\231\222\214\222\212\205\202zs\246\235\226\242\227\222\240\222\215\235\213\204\221\177s\201m_eQ>qT6y];\200fF\212sU~kOnaH\230\210r\226\210u\223\211{\221\207z\221\210}\212\203z\226\222\211\226\225\215\224\224\217\221\221\215\222\231\225\205\215\212\215\224\221\177\207\204\213\222\217\213\222\217\211\221\216~\206\203|\205\201\202\213\207\200\210\204{\204\200r{xowsltp\202\213\210|\206\204t~|\177\212\210\205\220\220r}}nxzisu^ff_ca`ebvzxw{ymqoz\177||\201~{\201}{\204|\200\210\201\206\216\206\214\221\214\211\215\210\225\230\224\224\226\222\226\232\226\223\231\225\230\234\230\232\232\224\224\223\212\226\221\206\221\211z\213\177q\220\201r\200n_\226\202q\200kV{cLsY?z[?sT5tX<~hM\206u]\210~k\221\214\177\230\225\221\231\230\230\237\237\243\245\245\246\250\250\253\271\271\274\263\265\270\260\263\267\252\252\251\261\260\260\260\257\257\260\257\257\257\257\256\257\256\256\266\265\265\253\253\252\260\257\255\267\264\264\267\262\262\266\257\260\254\241\240\254\237\233\260\242\230\224\205ws`GhT<iV>gU?l^I\177q]\240\223\200\224\210w\204xk\214\203v\214\204y\235\227\216\222\220\212\210\210\203\217\221\215\225\226\225\226\232\227\241\245\242\205\212\206\220\224\221\222\226\223\213\220\214\220\224\221\201\206\202\205\215\210\205\215\210\211\221\214~\206\201owr~\206\201}\204\200oxtkuqp{x\177\212\207\212\224\223\205\220\220{\206\207t~\177w~}fkghmi\201\206\202txuswtvzw}\202~qxsy\202|\212\222\214\211\221\212\206\213\206\214\221\214\211\215\210\234\237\233\223\227\223\220\227\223\220\224\220\222\224\215\223\222\211\220\213\177\223\213}\214\203s\221\202s\204qa~jW\205oZ\202jR\177dJsW:\177bCx^Br^F}nX\205|j\207\202v\231\227\222\244\244\244\243\243\246\247\250\252\254\255\257\264\265\267\300\303\307\274\277\303\262\265\267\263\266\270\266\271\273\276\301\303\267\272\274\271\272\274\276\277\301\263\264\266\267\271\272\261\263\264\267\267\272\271\267\272\266\263\266\266\261\261\253\245\241\244\234\224\245\231\216\240\224\210\213\200t\177ui\235\222\206\240\225\210\222\207{\204zn\207}q\201wm\214\204z~zs}}z\224\227\225\251\256\256\250\257\257\216\222\217\216\222\216\202\206\202\217\223\217\216\222\216\211\215\211\220\224\220\202\207\203\214\221\215\213\220\214\216\222\217\200\205\201\203\210\204vzw\223\227\224x\201{itny\204\177\177\212\206|\206\204u\177}\201\214\214|\206\206u}|Za]`gc\204\214\207v}yx\177{w~z~\205\201ltpy\202}\211\223\216\211\221\216\221\230\225\202\207\205\214\220\216\214\220\216\225\231\227\223\231\224\221\226\220\217\222\213\226\226\215\221\216\203\221\213}\204}n\212~n\206tbtaN}iT{eM\200hL~eG\200fFs[@s_JzjW\205|k\213\205y\224\222\215\242\241\241\241\240\243\254\255\257\265\266\270\263\266\272\304\310\314\306\313\320\262\272\275\265\274\300\275\305\311\267\276\302\271\277\304\300\310\314\301\311\315\276\304\312\271\276\302\266\274\301\271\275\304\271\273\304\271\272\302\265\266\272\264\264\264\254\254\253\260\257\257\251\250\250\244\242\241\236\232\232\230\224\221\202|y\200zvohc{si\206}uwpj\177~z\223\224\223\254\264\265\263\275\300\266\300\303\242\245\243\207\210\206\205\206\204\207\210\206\214\215\213\217\220\216\224\224\223\214\216\214\214\220\214\216\222\216\210\214\210\177\202\177\202\205\202}\200}\211\215\211\206\216\210myq\206\221\213\210\222\215\201\214\210|\206\204~\210\206gqpV_\\[b^ahdowrw~zw~zy\200|x\177{r{xr}{\221\232\231\227\240\237\225\234\233\222\230\230\211\216\216\220\224\224\217\226\223\222\231\225\220\227\221\215\221\212\214\215\205\205\205|\213\211~\207\205y\206|m\200p`xiVeUBo]Ho\\Eq\\CmX>ydNtcQxjZ\202|n\213\207|\220\216\211\231\230\230\242\241\242\244\246\252\267\272\276\275\300\304\310\315\322\305\312\317\267\301\311\276\310\320\276\310\320\304\315\324\304\316\325\302\313\322\302\313\322\276\307\316\300\310\316\270\301\312\275\305\317\301\310\324\275\302\315\272\300\312\271\275\302\265\271\274\265\274\302\257\266\276\256\265\273\256\260\265\250\251\253\247\247\250\267\266\267\232\227\230\214\210\203\220\213\210\177~}\214\215\214\246\252\254\270\277\303\274\307\316\266\302\310\262\265\265\226\231\230|~~\205\207\207\220\222\222\213\215\215\221\223\223\214\220\217\210\215\214\214\221\220\206\213\211\202\207\205\210\215\214|\201\200u{yv~zitn|\206\202\206\221\215\205\220\216x\202\200v\200\177hrrjsrfnliroqzww\201}x\201~y\202\177y\202\177t~}\213\226\227\266\300\301\276\311\312\253\263\265\233\242\244\223\232\234\225\232\236\226\234\235\226\235\233\230\236\235\223\227\225\217\221\217\207\210\204\212\212\205\201\201{\202|s\201vjrh[rfXbVGfZI_R?]Q?cVGnaUwmc{vn\201\201{\226\226\223\240\240\240\260\257\260\257\262\266\272\275\301\302\307\314\303\307\317\301\310\317\277\314\324\304\321\331\304\321\331\302\317\327\300\315\325\277\314\324\301\316\326\277\314\324\276\311\316\304\315\324\302\313\325\305\314\332\300\307\327\301\311\323\277\307\317\272\304\312\270\302\314\272\304\316\277\306\317\271\300\311\273\277\306\276\302\310\300\302\307\271\273\300\256\262\265\235\241\243\240\245\250\273\300\304\302\311\316\300\310\316\276\310\320\271\303\311\262\272\275\241\247\251\215\224\227\232\240\243\225\233\236\221\230\232\216\224\227\216\225\227\212\223\224\210\222\223\201\213\214\202\214\215\210\221\222u\177\200mxymwwjtspzy{\205\205{\206\207x\203\205{\205\210\215\230\234\205\217\222ktuclmw\201\202\211\222\223\177\211\212\211\222\223\253\264\265\254\267\272\265\301\306\305\321\326\306\321\327\304\316\324\304\314\322\275\304\315\304\312\322\307\315\323\310\321\324\310\317\324\263\271\274\242\250\252\244\251\252\262\265\265\230\234\234\210\210\207zvs\206\202~\202\177{\202\177y\210\205\177{xpcaYid_uomwus|}|\212\214\214\244\251\251\255\260\262\272\275\301\307\313\317\302\307\314\302\310\316\310\316\326\305\316\326\302\317\327\300\315\325\306\321\331\310\323\333\302\317\327\302\315\325\304\321\331\303\316\326\313\322\327\310\320\326\313\323\334\305\315\332\303\315\333\305\317\332\303\315\326\301\314\324\304\315\325\303\314\323\304\316\325\300\311\320\272\304\312\275\305\315\302\311\320\274\305\314\274\307\320\304\320\331\307\322\332\313\324\334\320\330\337\315\325\334\310\317\324\312\323\331\311\324\332\306\321\331\263\276\304\255\270\276\274\307\316\260\273\301\237\252\260\250\262\270\237\254\262\241\256\264\232\247\254\227\245\253\232\251\257\221\236\244\214\231\236\202\215\221oy{r|~\211\224\230\231\244\251\217\232\240\222\233\243\274\305\316\267\301\311\252\263\272\260\273\301\277\310\317\310\322\331\303\314\323\266\300\310\302\314\322\311\325\334\315\332\343\315\332\343\323\337\347\327\341\351\327\340\351\327\337\351\331\340\353\334\343\354\335\344\355\334\343\354\331\340\351\327\336\347\322\330\341\333\340\350\326\333\343\314\317\326\266\270\273\301\302\306\312\314\320\322\327\332\331\335\337\310\315\316\312\317\320\245\247\252\277\277\304\302\304\307\254\263\266\266\277\301\310\322\327\323\333\340\325\333\342\330\335\343\323\331\340\324\332\341\327\337\347\326\337\350\306\321\331\312\323\335\314\326\340\313\325\337\303\315\326\302\315\327\312\323\335\315\327\341\311\323\332\313\324\334\311\322\334\315\326\341\307\320\335\311\323\337\312\323\335\311\323\334\306\317\327\310\322\331\312\323\333\310\322\331\310\321\331\314\325\335\313\324\334\314\325\335\307\323\335\312\325\340\315\330\343\321\333\345\325\336\347\317\330\340\322\332\341\322\332\341\322\335\346\323\337\347\314\327\340\311\324\334\312\325\335\277\314\324\276\310\320\276\310\320\276\313\323\310\323\333\302\317\327\304\321\331\313\327\337\311\324\334\307\323\332\275\307\317\266\300\310\273\305\315\301\315\324\310\322\333\311\323\334\314\326\340\326\337\350\327\340\351\327\341\351\331\343\353\321\333\343\323\335\345\327\341\351\317\331\341\316\327\337\321\334\345\325\341\351\326\343\353\332\344\354\333\344\355\332\343\354\333\345\356\333\344\356\333\344\356\333\344\356\332\342\354\333\343\355\333\344\356\332\342\354\334\345\357\333\343\355\337\344\357\330\335\350\334\341\354\335\342\355\327\336\347\333\342\353\327\336\347\330\340\350\331\340\351\330\335\345\330\337\350\324\336\346\317\332\341\323\336\347\327\340\351\327\340\351\330\337\350\327\336\347\331\340\351\334\344\354\331\341\353\311\323\337\313\325\341\312\324\340\315\327\343\306\320\334\307\321\335\313\325\341\322\333\346\322\333\346\315\327\343\314\326\342\314\326\342\315\327\343\315\327\343\314\326\342\313\325\341\312\324\335\313\325\337\315\327\341\314\326\340\313\325\337\314\326\340\315\327\341\315\327\341\314\326\340\317\331\343\321\333\345\316\330\342\321\333\345\322\334\346\326\337\350\327\340\351\332\343\354\327\340\351\327\340\351\317\331\343\315\327\341\313\325\337\312\324\335\316\330\342\315\327\341\327\340\351\321\333\345\326\337\350\326\337\350\326\337\350\326\337\350\331\342\353\333\345\356\334\346\357\327\340\351\322\334\346\326\337\350\333\344\355\333\345\356\334\346\357\337\351\362\336\350\361\336\350\361\333\344\355\331\342\353\331\342\353\332\343\354\331\342\353\333\345\356\334\346\357\333\345\356\334\346\357\333\345\356\334\346\357\337\351\362\336\350\361\333\344\355\332\343\354\333\344\355\334\346\357\334\346\357\334\346\357\334\346\357\336\347\361\337\344\357\336\344\356\337\344\357\337\344\357\337\344\357\335\343\355\336\344\356\333\343\355\332\343\354\332\343\354\332\343\354\332\343\354\327\340\351\332\343\354\333\344\355\330\337\350\330\337\350\333\342\353\333\342\353\333\342\353\311\323\337\314\326\342\313\325\341\313\325\341\313\325\341\314\326\342\317\331\345\322\333\346\315\327\343\314\326\342\314\326\342\317\331\345\306\317\333\306\320\334\312\324\340\317\331\345\316\330\342\315\327\341\315\327\341\316\330\342\316\330\342\316\330\342\317\331\343\321\333\345\322\334\346\326\337\350\314\326\340\316\330\342\314\326\340\321\333\345\323\335\347\322\334\346\331\342\353\326\337\350\326\337\350\321\333\345\316\330\342\321\333\345\321\333\345\327\340\351\326\337\350\331\342\353\331\342\353\333\344\355\332\343\354\333\345\356\334\346\357\333\344\355\333\344\355\336\350\361\336\350\361\334\346\357\333\345\356\334\346\357\336\350\361\336\350\361\336\350\361\337\351\362\337\351\362\334\346\357\334\346\357\337\351\362\334\346\357\333\344\355\337\351\362\340\352\363\334\346\357\333\345\356\333\344\355\333\345\356\336\350\361\336\350\361\334\346\357\334\346\357\334\346\357\333\345\356\333\345\356\334\346\357\334\346\357\334\345\357\335\343\355\336\344\356\342\347\362\341\346\361\341\346\361\336\344\356\336\344\356\333\344\356\333\344\355\333\344\355\333\344\355\333\344\355\333\344\355\333\344\355\334\346\357\334\343\354\336\345\356\336\345\356\334\343\354\331\340\351\313\325\341\314\326\342\311\323\337\313\325\341\314\326\342\317\331\345\317\331\345\314\326\342\313\325\341\312\324\340\312\324\340\313\325\341\312\324\340\306\320\334\307\321\335\314\326\342\321\333\345\322\334\346\321\333\345\316\330\342\321\333\345\321\333\345\322\334\346\323\335\347\331\342\353\322\334\346\317\331\343\317\331\343\317\331\343\317\331\343\317\331\343\317\331\343\327\340\351\321\333\345\323\335\347\322\334\346\322\334\346\327\340\351\326\337\350\331\342\353\333\344\355\333\344\355\334\346\357\337\351\362\336\350\361\336\350\361\336\350\361\337\351\362\340\352\363\340\352\363\337\351\362\337\351\362\336\350\361\334\346\357\334\346\357\340\352\363\342\354\365\341\353\364\341\353\364\337\351\362\336\350\361\333\345\356\332\343\354\333\344\355\337\351\362\337\351\362\333\345\356\333\345\356\332\343\354\333\344\355\336\350\361\336\350\361\336\350\361\337\351\362\336\350\361\336\350\361\336\350\361\334\346\357\333\344\355\333\343\355\327\335\351\331\337\353\336\344\356\336\344\356\336\344\356\334\342\354\334\342\354\332\342\354\332\343\354\332\343\354\332\343\354\331\342\353\333\345\356\333\344\355\333\345\356\336\345\356\335\344\355\335\344\355\334\343\354\331\340\351"
	.size	preview_raw, 30000

	.type	pattern_width,@object   # @pattern_width
	.align	16
pattern_width:
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	5                       # 0x5
	.size	pattern_width, 36

	.type	pattern_height,@object  # @pattern_height
	.align	16
pattern_height:
	.long	6                       # 0x6
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	6                       # 0x6
	.long	12                      # 0xc
	.long	3                       # 0x3
	.long	6                       # 0x6
	.long	18                      # 0x12
	.long	15                      # 0xf
	.size	pattern_height, 36

	.type	pattern,@object         # @pattern
	.align	16
pattern:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	pattern, 3888


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
