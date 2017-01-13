	.text
	.file	"edge-dog.bc"
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movl	$1, %r10d
	movl	$7, %r11d
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
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.21, %rsi
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -60(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.22, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.22, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-64(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.25, %rdi
	callq	gettext
	leaq	-72(%rbp), %rdi
	xorl	%ecx, %ecx
	movabsq	$.L.str.24, %rdx
	movl	%ecx, %esi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -64(%rbp)
.LBB1_4:                                # %if.end
	cmpl	$3, -64(%rbp)
	jne	.LBB1_26
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rax
	cmpl	8(%rax), %ecx
	jbe	.LBB1_7
# BB#6:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB1_8:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-8(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_24
# BB#9:                                 # %if.then.22
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_41
.LBB1_41:                               # %if.then.22
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_42
.LBB1_42:                               # %if.then.22
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_22
.LBB1_10:                               # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$dogvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	dog_dialog
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then.26
	jmp	.LBB1_40
.LBB1_12:                               # %if.end.27
	jmp	.LBB1_23
.LBB1_13:                               # %sw.bb.28
	cmpl	$7, -12(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.31
	movl	$1, -64(%rbp)
.LBB1_15:                               # %if.end.32
	cmpl	$3, -64(%rbp)
	jne	.LBB1_20
# BB#16:                                # %if.then.35
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, dogvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, dogvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, dogvals+16
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, dogvals+20
	ucomisd	dogvals, %xmm0
	jae	.LBB1_18
# BB#17:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	ucomisd	dogvals+8, %xmm0
	jb	.LBB1_19
.LBB1_18:                               # %if.then.51
	movl	$1, -64(%rbp)
.LBB1_19:                               # %if.end.52
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.53
	jmp	.LBB1_23
.LBB1_21:                               # %sw.bb.54
	movabsq	$.L.str.14, %rdi
	movabsq	$dogvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %sw.default
	jmp	.LBB1_23
.LBB1_23:                               # %sw.epilog
	jmp	.LBB1_25
.LBB1_24:                               # %if.else
	movl	$1, -64(%rbp)
.LBB1_25:                               # %if.end.56
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.57
	cmpl	$3, -64(%rbp)
	jne	.LBB1_36
# BB#27:                                # %if.then.60
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_29
# BB#28:                                # %lor.lhs.false.63
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_34
.LBB1_29:                               # %if.then.67
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	-44(%rbp), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_start
	movl	$1, %edx
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	movsd	dogvals, %xmm0          # xmm0 = mem[0],zero
	movsd	dogvals+8, %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	dog
	movl	-44(%rbp), %edi
	callq	gimp_image_undo_group_end
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_progress_update
	cmpl	$0, -60(%rbp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jne	.LBB1_31
# BB#30:                                # %if.then.75
	movabsq	$.L.str.14, %rdi
	movabsq	$dogvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.77
	cmpl	$1, -60(%rbp)
	je	.LBB1_33
# BB#32:                                # %if.then.80
	callq	gimp_displays_flush
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB1_33:                               # %if.end.82
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.83
	movabsq	$.L.str.27, %rdi
	movl	$0, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_35:                               # %if.end.85
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_36:                               # %if.end.86
	cmpl	$3, -64(%rbp)
	je	.LBB1_39
# BB#37:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.90
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_39:                               # %if.end.91
	movl	-64(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_40:                               # %return
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
	.type	dog_dialog,@function
dog_dialog:                             # @dog_dialog
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
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.28, %rax
	xorl	%ecx, %ecx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movabsq	$.L.str.29, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.30, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.31, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r10d, -120(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$preview_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
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
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movl	-12(%rbp), %edi
	callq	gimp_image_get_resolution
	movl	-12(%rbp), %edi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movabsq	$.L.str.35, %rdi
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	dogvals, %xmm0          # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %ecx
	movq	-24(%rbp), %rdx
	cmpl	8(%rdx), %ecx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-228(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.36, %rdi
	shll	$3, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm3
	movsd	%xmm3, -240(%rbp)       # 8-byte Spill
	callq	gettext
	movsd	dogvals+8, %xmm6        # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %edx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movsd	%xmm6, -256(%rbp)       # 8-byte Spill
	movsd	%xmm7, -264(%rbp)       # 8-byte Spill
	jbe	.LBB3_5
# BB#4:                                 # %cond.true.32
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.34
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB3_6:                                # %cond.end.36
	movl	-268(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.34, %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	shll	$3, %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm1
	movl	-200(%rbp), %edi        # 4-byte Reload
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-240(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-288(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movsd	-256(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	-264(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	-288(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 32(%rsp)
	movsd	-296(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 40(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	%xmm8, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_pixel_digits
	movabsq	$.L.str.37, %rsi
	movabsq	$change_radius_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dogvals+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$dogvals, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dogvals+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$dogvals, %rdi
	addq	$20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, dogvals
	movq	-72(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, dogvals+8
.LBB3_8:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-100(%rbp), %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dog_dialog, .Lfunc_end3-dog_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	dog,@function
dog:                                    # @dog
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
	subq	$176, %rsp
	leaq	-80(%rbp), %rax
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-92(%rbp), %r9
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, -60(%rbp)
	movb	$-1, -93(%rbp)
	movl	-60(%rbp), %edi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	gimp_drawable_mask_bounds
	movl	-88(%rbp), %edi
	subl	-80(%rbp), %edi
	movl	%edi, -72(%rbp)
	movl	-92(%rbp), %edi
	subl	-84(%rbp), %edi
	movl	%edi, -76(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	-60(%rbp), %edi
	callq	gimp_layer_copy
	xorl	%esi, %esi
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %edi
	callq	gimp_item_set_visible
	movabsq	$.L.str.42, %rsi
	movl	-64(%rbp), %edi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_item_set_name
	movl	-4(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %r10d
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	callq	gimp_item_get_parent
	xorl	%ecx, %ecx
	movl	-108(%rbp), %edi        # 4-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_insert_layer
	movl	-60(%rbp), %edi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_layer_copy
	xorl	%esi, %esi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	gimp_item_set_visible
	movabsq	$.L.str.43, %rsi
	movl	-68(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_item_set_name
	movl	-4(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	-60(%rbp), %ecx
	movl	%edi, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%esi, -136(%rbp)        # 4-byte Spill
	callq	gimp_item_get_parent
	xorl	%ecx, %ecx
	movl	-128(%rbp), %edi        # 4-byte Reload
	movl	-136(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_insert_layer
	movl	-64(%rbp), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %edi
	callq	gimp_drawable_get
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edx
	callq	gauss_rle
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edx
	callq	gauss_rle
	leaq	-93(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	compute_difference
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-4(%rbp), %edi
	movl	-64(%rbp), %esi
	callq	gimp_image_remove_layer
	movl	-4(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_image_remove_layer
	movq	-16(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movl	-60(%rbp), %edi
	callq	gimp_drawable_merge_shadow
	movl	-60(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	cmpl	$0, dogvals+16
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jne	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, dogvals+20
	je	.LBB4_3
.LBB4_2:                                # %if.then
	movq	-16(%rbp), %rdi
	movl	dogvals+16, %esi
	movzbl	-93(%rbp), %edx
	movl	dogvals+20, %ecx
	callq	normalize_invert
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movl	-60(%rbp), %edi
	callq	gimp_drawable_merge_shadow
	movl	-60(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB4_3:                                # %if.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dog, .Lfunc_end4-dog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	preview_update_preview,@function
preview_update_preview:                 # @preview_update_preview
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_bpp
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %r10d
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, -152(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-152(%rbp), %eax
	movl	%edi, -176(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, -180(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	movl	-176(%rbp), %edi        # 4-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %edi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %r11
	movl	(%r11), %eax
	movl	%edi, -184(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%edx, -192(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movabsq	$.L.str.41, %rsi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-184(%rbp), %edi        # 4-byte Reload
	movl	-192(%rbp), %edx        # 4-byte Reload
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %edi
	callq	gimp_drawable_get
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	%rax, -168(%rbp)
	movl	-148(%rbp), %edi
	movl	-156(%rbp), %esi
	callq	gimp_image_insert_layer
	xorl	%ecx, %ecx
	movl	-156(%rbp), %edi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_offsets
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-168(%rbp), %rsi
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movq	-168(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movl	-156(%rbp), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%ecx, %ecx
	movl	-156(%rbp), %edi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	xorl	%edx, %edx
	movl	-148(%rbp), %edi
	movq	-168(%rbp), %rsi
	movsd	dogvals, %xmm0          # xmm0 = mem[0],zero
	movsd	dogvals+8, %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	dog
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movl	-148(%rbp), %edi
	callq	gimp_image_delete
	movq	-48(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	g_free
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_update_preview, .Lfunc_end5-preview_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	change_radius_callback,@function
change_radius_callback:                 # @change_radius_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, dogvals
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, dogvals+8
	movq	-24(%rbp), %rdi
	callq	gimp_preview_invalidate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	change_radius_callback, .Lfunc_end6-change_radius_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
.LCPI7_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI7_2:
	.quad	4607182418800017408     # double 1
.LCPI7_4:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gauss_rle,@function
gauss_rle:                              # @gauss_rle
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
	subq	$416, %rsp              # imm = 0x1A0
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -192(%rbp)
	movq	$0, -264(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jb	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_89
.LBB7_2:                                # %if.end
	leaq	-196(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	leaq	-204(%rbp), %rcx
	leaq	-208(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-204(%rbp), %edi
	subl	-196(%rbp), %edi
	movl	%edi, -124(%rbp)
	movl	-208(%rbp), %edi
	subl	-200(%rbp), %edi
	movl	%edi, -128(%rbp)
	cmpl	$1, -124(%rbp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jl	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$1, -128(%rbp)
	jge	.LBB7_5
.LBB7_4:                                # %if.then.4
	jmp	.LBB7_89
.LBB7_5:                                # %if.end.5
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB7_7
# BB#6:                                 # %cond.true
	movl	-124(%rbp), %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	movl	-128(%rbp), %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB7_8:                                # %cond.end
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	movl	%ecx, %esi
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	-124(%rbp), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB7_10
# BB#9:                                 # %cond.true.12
	movl	-124(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.13
	movl	-128(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB7_11:                               # %cond.end.14
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-132(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movl	-124(%rbp), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB7_13
# BB#12:                                # %cond.true.21
	movl	-124(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB7_14
.LBB7_13:                               # %cond.false.22
	movl	-128(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB7_14:                               # %cond.end.23
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-132(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-72(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	%xmm2, -240(%rbp)
	movl	-124(%rbp), %ecx
	shll	$1, %ecx
	imull	-128(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movsd	%xmm2, -248(%rbp)
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movapd	.LCPI7_3(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -16(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -320(%rbp)       # 8-byte Spill
	callq	log
	leaq	-272(%rbp), %rdi
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -288(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-328(%rbp), %rdi        # 8-byte Reload
	callq	make_curve
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -256(%rbp)
	movl	-272(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -212(%rbp)
.LBB7_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-212(%rbp), %eax
	movl	-272(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB7_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-212(%rbp), %eax
	subl	-272(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-256(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-212(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-264(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	movslq	-212(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB7_15
.LBB7_18:                               # %for.end
	xorl	%eax, %eax
	movl	-272(%rbp), %ecx
	movq	-264(%rbp), %rdx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -264(%rbp)
	movslq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	subl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rsi
	subl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -192(%rbp)
	movl	$0, -220(%rbp)
.LBB7_19:                               # %for.cond.64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
                                        #       Child Loop BB7_25 Depth 3
                                        #         Child Loop BB7_35 Depth 4
	movl	-220(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB7_53
# BB#20:                                # %for.body.67
                                        #   in Loop: Header=BB7_19 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-220(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	-200(%rbp), %ecx
	movl	-208(%rbp), %edx
	subl	-200(%rbp), %edx
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_get_col
	cmpl	$0, -136(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.70
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	-160(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	callq	multiply_alpha
.LBB7_22:                               # %if.end.71
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -224(%rbp)
.LBB7_23:                               # %for.cond.72
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_25 Depth 3
                                        #         Child Loop BB7_35 Depth 4
	movl	-224(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB7_45
# BB#24:                                # %for.body.75
                                        #   in Loop: Header=BB7_23 Depth=2
	movslq	-224(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -276(%rbp)
	movl	-128(%rbp), %edx
	subl	$1, %edx
	imull	-132(%rbp), %edx
	addl	-224(%rbp), %edx
	movslq	%edx, %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -280(%rbp)
	movq	-168(%rbp), %rax
	movslq	-224(%rbp), %rcx
	addq	%rcx, %rax
	movq	-176(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %ecx
	movq	%rax, %rdi
	callq	run_length_encode
	movl	$0, -216(%rbp)
.LBB7_25:                               # %for.cond.87
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_35 Depth 4
	movl	-216(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB7_43
# BB#26:                                # %for.body.90
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-216(%rbp), %eax
	cmpl	-272(%rbp), %eax
	jge	.LBB7_28
# BB#27:                                # %cond.true.93
                                        #   in Loop: Header=BB7_25 Depth=3
	xorl	%eax, %eax
	subl	-216(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB7_29
.LBB7_28:                               # %cond.false.95
                                        #   in Loop: Header=BB7_25 Depth=3
	xorl	%eax, %eax
	subl	-272(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB7_29:                               # %cond.end.97
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)
	movl	-128(%rbp), %eax
	movl	-216(%rbp), %ecx
	addl	-272(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB7_31
# BB#30:                                # %cond.true.102
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-128(%rbp), %eax
	subl	-216(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB7_32
.LBB7_31:                               # %cond.false.105
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-272(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB7_32:                               # %cond.end.106
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-340(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -232(%rbp)
	movl	$0, -268(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, -212(%rbp)
	movq	-176(%rbp), %rdx
	movl	-216(%rbp), %eax
	addl	-212(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movl	-228(%rbp), %eax
	subl	-272(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB7_34
# BB#33:                                # %if.then.115
                                        #   in Loop: Header=BB7_25 Depth=3
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	movslq	-228(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	subl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rsi
	subl	(%rsi,%rdx,4), %edi
	imull	%edi, %ecx
	addl	-268(%rbp), %ecx
	movl	%ecx, -268(%rbp)
.LBB7_34:                               # %if.end.124
                                        #   in Loop: Header=BB7_25 Depth=3
	jmp	.LBB7_35
.LBB7_35:                               # %while.cond
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        #       Parent Loop BB7_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-212(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB7_39
# BB#36:                                # %while.body
                                        #   in Loop: Header=BB7_35 Depth=4
	movq	-184(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movl	-188(%rbp), %ecx
	addl	-212(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movl	-212(%rbp), %ecx
	cmpl	-232(%rbp), %ecx
	jle	.LBB7_38
# BB#37:                                # %if.then.131
                                        #   in Loop: Header=BB7_35 Depth=4
	movl	-232(%rbp), %eax
	movl	%eax, -212(%rbp)
.LBB7_38:                               # %if.end.132
                                        #   in Loop: Header=BB7_35 Depth=4
	movq	-184(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-212(%rbp), %rax
	movq	-264(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	movslq	-228(%rbp), %rax
	movq	-264(%rbp), %rdx
	subl	(%rdx,%rax,4), %esi
	imull	%esi, %ecx
	addl	-268(%rbp), %ecx
	movl	%ecx, -268(%rbp)
	movl	-188(%rbp), %ecx
	shll	$1, %ecx
	movq	-184(%rbp), %rax
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	-212(%rbp), %ecx
	movl	%ecx, -228(%rbp)
	jmp	.LBB7_35
.LBB7_39:                               # %while.end
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-232(%rbp), %eax
	cmpl	-272(%rbp), %eax
	je	.LBB7_41
# BB#40:                                # %if.then.146
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-280(%rbp), %eax
	movslq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-232(%rbp), %rcx
	movq	-264(%rbp), %rdx
	subl	(%rdx,%rcx,4), %esi
	imull	%esi, %eax
	addl	-268(%rbp), %eax
	movl	%eax, -268(%rbp)
.LBB7_41:                               # %if.end.154
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-268(%rbp), %eax
	cltd
	idivl	-192(%rbp)
	movb	%al, %cl
	movl	-216(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	-224(%rbp), %eax
	movslq	%eax, %rsi
	movq	-152(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#42:                                # %for.inc.161
                                        #   in Loop: Header=BB7_25 Depth=3
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB7_25
.LBB7_43:                               # %for.end.163
                                        #   in Loop: Header=BB7_23 Depth=2
	jmp	.LBB7_44
.LBB7_44:                               # %for.inc.164
                                        #   in Loop: Header=BB7_23 Depth=2
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB7_23
.LBB7_45:                               # %for.end.166
                                        #   in Loop: Header=BB7_19 Depth=1
	cmpl	$0, -136(%rbp)
	je	.LBB7_47
# BB#46:                                # %if.then.168
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	-144(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	callq	separate_alpha
.LBB7_47:                               # %if.end.169
                                        #   in Loop: Header=BB7_19 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-220(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	-200(%rbp), %ecx
	movl	-208(%rbp), %edx
	subl	-200(%rbp), %edx
	movl	%edx, -344(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-344(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_col
	cmpl	$0, -24(%rbp)
	je	.LBB7_51
# BB#48:                                # %if.then.173
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	$32, %eax
	cvtsi2sdl	-128(%rbp), %xmm0
	addsd	-240(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movl	-220(%rbp), %ecx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-348(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_50
# BB#49:                                # %if.then.178
                                        #   in Loop: Header=BB7_19 Depth=1
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	-240(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-248(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB7_50:                               # %if.end.184
                                        #   in Loop: Header=BB7_19 Depth=1
	jmp	.LBB7_51
.LBB7_51:                               # %if.end.185
                                        #   in Loop: Header=BB7_19 Depth=1
	jmp	.LBB7_52
.LBB7_52:                               # %for.inc.186
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB7_19
.LBB7_53:                               # %for.end.188
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -216(%rbp)
.LBB7_54:                               # %for.cond.191
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_58 Depth 2
                                        #       Child Loop BB7_60 Depth 3
                                        #         Child Loop BB7_70 Depth 4
	movl	-216(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB7_88
# BB#55:                                # %for.body.194
                                        #   in Loop: Header=BB7_54 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	-216(%rbp), %eax
	addl	-200(%rbp), %eax
	movl	-204(%rbp), %ecx
	subl	-196(%rbp), %ecx
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-360(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
	cmpl	$0, -136(%rbp)
	je	.LBB7_57
# BB#56:                                # %if.then.198
                                        #   in Loop: Header=BB7_54 Depth=1
	movq	-160(%rbp), %rdi
	movl	-124(%rbp), %esi
	movl	-132(%rbp), %edx
	callq	multiply_alpha
.LBB7_57:                               # %if.end.199
                                        #   in Loop: Header=BB7_54 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -224(%rbp)
.LBB7_58:                               # %for.cond.200
                                        #   Parent Loop BB7_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_60 Depth 3
                                        #         Child Loop BB7_70 Depth 4
	movl	-224(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB7_80
# BB#59:                                # %for.body.203
                                        #   in Loop: Header=BB7_58 Depth=2
	movslq	-224(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -276(%rbp)
	movl	-124(%rbp), %edx
	subl	$1, %edx
	imull	-132(%rbp), %edx
	addl	-224(%rbp), %edx
	movslq	%edx, %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -280(%rbp)
	movq	-168(%rbp), %rax
	movslq	-224(%rbp), %rcx
	addq	%rcx, %rax
	movq	-176(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-124(%rbp), %ecx
	movq	%rax, %rdi
	callq	run_length_encode
	movl	$0, -220(%rbp)
.LBB7_60:                               # %for.cond.215
                                        #   Parent Loop BB7_54 Depth=1
                                        #     Parent Loop BB7_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_70 Depth 4
	movl	-220(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB7_78
# BB#61:                                # %for.body.218
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-220(%rbp), %eax
	cmpl	-272(%rbp), %eax
	jge	.LBB7_63
# BB#62:                                # %cond.true.221
                                        #   in Loop: Header=BB7_60 Depth=3
	xorl	%eax, %eax
	subl	-220(%rbp), %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB7_64
.LBB7_63:                               # %cond.false.223
                                        #   in Loop: Header=BB7_60 Depth=3
	xorl	%eax, %eax
	subl	-272(%rbp), %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB7_64:                               # %cond.end.225
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)
	movl	-124(%rbp), %eax
	movl	-220(%rbp), %ecx
	addl	-272(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB7_66
# BB#65:                                # %cond.true.230
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-124(%rbp), %eax
	subl	-220(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB7_67
.LBB7_66:                               # %cond.false.233
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-272(%rbp), %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB7_67:                               # %cond.end.234
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-368(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -232(%rbp)
	movl	$0, -268(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, -212(%rbp)
	movq	-176(%rbp), %rdx
	movl	-220(%rbp), %eax
	addl	-212(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movl	-228(%rbp), %eax
	subl	-272(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB7_69
# BB#68:                                # %if.then.243
                                        #   in Loop: Header=BB7_60 Depth=3
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	movslq	-228(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	subl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rsi
	subl	(%rsi,%rdx,4), %edi
	imull	%edi, %ecx
	addl	-268(%rbp), %ecx
	movl	%ecx, -268(%rbp)
.LBB7_69:                               # %if.end.252
                                        #   in Loop: Header=BB7_60 Depth=3
	jmp	.LBB7_70
.LBB7_70:                               # %while.cond.253
                                        #   Parent Loop BB7_54 Depth=1
                                        #     Parent Loop BB7_58 Depth=2
                                        #       Parent Loop BB7_60 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-212(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB7_74
# BB#71:                                # %while.body.256
                                        #   in Loop: Header=BB7_70 Depth=4
	movq	-184(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movl	-188(%rbp), %ecx
	addl	-212(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movl	-212(%rbp), %ecx
	cmpl	-232(%rbp), %ecx
	jle	.LBB7_73
# BB#72:                                # %if.then.261
                                        #   in Loop: Header=BB7_70 Depth=4
	movl	-232(%rbp), %eax
	movl	%eax, -212(%rbp)
.LBB7_73:                               # %if.end.262
                                        #   in Loop: Header=BB7_70 Depth=4
	movq	-184(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-212(%rbp), %rax
	movq	-264(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	movslq	-228(%rbp), %rax
	movq	-264(%rbp), %rdx
	subl	(%rdx,%rax,4), %esi
	imull	%esi, %ecx
	addl	-268(%rbp), %ecx
	movl	%ecx, -268(%rbp)
	movl	-188(%rbp), %ecx
	shll	$1, %ecx
	movq	-184(%rbp), %rax
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	-212(%rbp), %ecx
	movl	%ecx, -228(%rbp)
	jmp	.LBB7_70
.LBB7_74:                               # %while.end.274
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-232(%rbp), %eax
	cmpl	-272(%rbp), %eax
	je	.LBB7_76
# BB#75:                                # %if.then.277
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-280(%rbp), %eax
	movslq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-232(%rbp), %rcx
	movq	-264(%rbp), %rdx
	subl	(%rdx,%rcx,4), %esi
	imull	%esi, %eax
	addl	-268(%rbp), %eax
	movl	%eax, -268(%rbp)
.LBB7_76:                               # %if.end.285
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-268(%rbp), %eax
	cltd
	idivl	-192(%rbp)
	movb	%al, %cl
	movl	-220(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	-224(%rbp), %eax
	movslq	%eax, %rsi
	movq	-152(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#77:                                # %for.inc.292
                                        #   in Loop: Header=BB7_60 Depth=3
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB7_60
.LBB7_78:                               # %for.end.294
                                        #   in Loop: Header=BB7_58 Depth=2
	jmp	.LBB7_79
.LBB7_79:                               # %for.inc.295
                                        #   in Loop: Header=BB7_58 Depth=2
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB7_58
.LBB7_80:                               # %for.end.297
                                        #   in Loop: Header=BB7_54 Depth=1
	cmpl	$0, -136(%rbp)
	je	.LBB7_82
# BB#81:                                # %if.then.299
                                        #   in Loop: Header=BB7_54 Depth=1
	movq	-144(%rbp), %rdi
	movl	-124(%rbp), %esi
	movl	-132(%rbp), %edx
	callq	separate_alpha
.LBB7_82:                               # %if.end.300
                                        #   in Loop: Header=BB7_54 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	-216(%rbp), %eax
	addl	-200(%rbp), %eax
	movl	-204(%rbp), %ecx
	subl	-196(%rbp), %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_row
	cmpl	$0, -24(%rbp)
	je	.LBB7_86
# BB#83:                                # %if.then.304
                                        #   in Loop: Header=BB7_54 Depth=1
	movl	$32, %eax
	cvtsi2sdl	-124(%rbp), %xmm0
	addsd	-240(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movl	-216(%rbp), %ecx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-376(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_85
# BB#84:                                # %if.then.310
                                        #   in Loop: Header=BB7_54 Depth=1
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	-240(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-248(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB7_85:                               # %if.end.316
                                        #   in Loop: Header=BB7_54 Depth=1
	jmp	.LBB7_86
.LBB7_86:                               # %if.end.317
                                        #   in Loop: Header=BB7_54 Depth=1
	jmp	.LBB7_87
.LBB7_87:                               # %for.inc.318
                                        #   in Loop: Header=BB7_54 Depth=1
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB7_54
.LBB7_88:                               # %for.end.320
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-196(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-204(%rbp), %r8d
	subl	-196(%rbp), %r8d
	movl	-208(%rbp), %r9d
	subl	-200(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -384(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-176(%rbp), %r10
	movq	%r10, %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
.LBB7_89:                               # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gauss_rle, .Lfunc_end7-gauss_rle
	.cfi_endproc

	.align	16, 0x90
	.type	compute_difference,@function
compute_difference:                     # @compute_difference
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
	subq	$352, %rsp              # imm = 0x160
	leaq	-216(%rbp), %rax
	leaq	-220(%rbp), %r8
	leaq	-224(%rbp), %r9
	leaq	-228(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%r10, %r8
	callq	gimp_drawable_mask_bounds
	movl	-224(%rbp), %edi
	subl	-216(%rbp), %edi
	movl	%edi, -180(%rbp)
	movl	-228(%rbp), %edi
	subl	-220(%rbp), %edi
	movl	%edi, -184(%rbp)
	cmpl	$1, -180(%rbp)
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jl	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -184(%rbp)
	jge	.LBB8_3
.LBB8_2:                                # %if.then
	jmp	.LBB8_44
.LBB8_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -232(%rbp)
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-128(%rbp), %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %r10
	movl	4(%r10), %r8d
	movq	-16(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-176(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %r10
	movl	4(%r10), %r8d
	movq	-8(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%eax, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$3, %edi
	leaq	-80(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -200(%rbp)
.LBB8_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #       Child Loop BB8_8 Depth 3
                                        #         Child Loop BB8_11 Depth 4
                                        #         Child Loop BB8_25 Depth 4
	cmpq	$0, -200(%rbp)
	je	.LBB8_44
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-52(%rbp), %ecx
	subl	-220(%rbp), %ecx
	movl	%ecx, -260(%rbp)
	movl	$0, -208(%rbp)
.LBB8_6:                                # %for.cond.18
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_8 Depth 3
                                        #         Child Loop BB8_11 Depth 4
                                        #         Child Loop BB8_25 Depth 4
	movl	-208(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB8_42
# BB#7:                                 # %for.body.20
                                        #   in Loop: Header=BB8_6 Depth=2
	movq	-240(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	-56(%rbp), %ecx
	subl	-216(%rbp), %ecx
	movl	%ecx, -292(%rbp)
	movl	$0, -204(%rbp)
.LBB8_8:                                # %for.cond.23
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_11 Depth 4
                                        #         Child Loop BB8_25 Depth 4
	movl	-204(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_40
# BB#9:                                 # %for.body.25
                                        #   in Loop: Header=BB8_8 Depth=3
	cmpl	$0, -232(%rbp)
	je	.LBB8_24
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB8_8 Depth=3
	movl	$0, -212(%rbp)
.LBB8_11:                               # %for.cond.27
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-212(%rbp), %eax
	movl	-188(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_23
# BB#12:                                # %for.body.30
                                        #   in Loop: Header=BB8_11 Depth=4
	movslq	-212(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-212(%rbp), %rax
	movq	-280(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	cmpl	$255, %edx
	jle	.LBB8_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB8_11 Depth=4
	movl	$255, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB8_18
.LBB8_14:                               # %cond.false
                                        #   in Loop: Header=BB8_11 Depth=4
	movslq	-212(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-212(%rbp), %rax
	movq	-280(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	cmpl	$0, %edx
	jge	.LBB8_16
# BB#15:                                # %cond.true.46
                                        #   in Loop: Header=BB8_11 Depth=4
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB8_17
.LBB8_16:                               # %cond.false.47
                                        #   in Loop: Header=BB8_11 Depth=4
	movslq	-212(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-212(%rbp), %rax
	movq	-280(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB8_17:                               # %cond.end
                                        #   in Loop: Header=BB8_11 Depth=4
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB8_18:                               # %cond.end.55
                                        #   in Loop: Header=BB8_11 Depth=4
	movl	-304(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-212(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movslq	-212(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	%edi, %eax
	jle	.LBB8_20
# BB#19:                                # %cond.true.66
                                        #   in Loop: Header=BB8_11 Depth=4
	movslq	-212(%rbp), %rax
	movq	-288(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB8_21
.LBB8_20:                               # %cond.false.70
                                        #   in Loop: Header=BB8_11 Depth=4
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
.LBB8_21:                               # %cond.end.72
                                        #   in Loop: Header=BB8_11 Depth=4
	movl	-312(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB8_11 Depth=4
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB8_11
.LBB8_23:                               # %for.end
                                        #   in Loop: Header=BB8_8 Depth=3
	jmp	.LBB8_38
.LBB8_24:                               # %if.else
                                        #   in Loop: Header=BB8_8 Depth=3
	movl	$0, -212(%rbp)
.LBB8_25:                               # %for.cond.75
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-212(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB8_37
# BB#26:                                # %for.body.78
                                        #   in Loop: Header=BB8_25 Depth=4
	movslq	-212(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-212(%rbp), %rax
	movq	-280(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	cmpl	$255, %edx
	jle	.LBB8_28
# BB#27:                                # %cond.true.88
                                        #   in Loop: Header=BB8_25 Depth=4
	movl	$255, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB8_32
.LBB8_28:                               # %cond.false.89
                                        #   in Loop: Header=BB8_25 Depth=4
	movslq	-212(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-212(%rbp), %rax
	movq	-280(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	cmpl	$0, %edx
	jge	.LBB8_30
# BB#29:                                # %cond.true.99
                                        #   in Loop: Header=BB8_25 Depth=4
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB8_31
.LBB8_30:                               # %cond.false.100
                                        #   in Loop: Header=BB8_25 Depth=4
	movslq	-212(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-212(%rbp), %rax
	movq	-280(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -320(%rbp)        # 4-byte Spill
.LBB8_31:                               # %cond.end.108
                                        #   in Loop: Header=BB8_25 Depth=4
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB8_32:                               # %cond.end.110
                                        #   in Loop: Header=BB8_25 Depth=4
	movl	-316(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-212(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movslq	-212(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	%edi, %eax
	jle	.LBB8_34
# BB#33:                                # %cond.true.121
                                        #   in Loop: Header=BB8_25 Depth=4
	movslq	-212(%rbp), %rax
	movq	-288(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB8_35
.LBB8_34:                               # %cond.false.125
                                        #   in Loop: Header=BB8_25 Depth=4
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB8_35:                               # %cond.end.127
                                        #   in Loop: Header=BB8_25 Depth=4
	movl	-324(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
# BB#36:                                # %for.inc.130
                                        #   in Loop: Header=BB8_25 Depth=4
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB8_25
.LBB8_37:                               # %for.end.132
                                        #   in Loop: Header=BB8_8 Depth=3
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.133
                                        #   in Loop: Header=BB8_8 Depth=3
	movl	-188(%rbp), %eax
	movq	-272(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -272(%rbp)
	movl	-188(%rbp), %eax
	movq	-280(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -280(%rbp)
	movl	-188(%rbp), %eax
	movq	-288(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -288(%rbp)
# BB#39:                                # %for.inc.138
                                        #   in Loop: Header=BB8_8 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB8_8
.LBB8_40:                               # %for.end.141
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-60(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	movl	-108(%rbp), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -248(%rbp)
	movl	-156(%rbp), %eax
	movq	-256(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -256(%rbp)
# BB#41:                                # %for.inc.150
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB8_6
.LBB8_42:                               # %for.end.153
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_43
.LBB8_43:                               # %for.inc.154
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-200(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -200(%rbp)
	jmp	.LBB8_4
.LBB8_44:                               # %for.end.156
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end8:
	.size	compute_difference, .Lfunc_end8-compute_difference
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	normalize_invert,@function
normalize_invert:                       # @normalize_invert
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
.LBB9_4:                                # %if.end
	leaq	-152(%rbp), %rsi
	leaq	-156(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-164(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edi
	movl	%edi, -124(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	leaq	-72(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	%eax, -168(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %r10
	movl	4(%r10), %r8d
	movq	-8(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%eax, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -136(%rbp)
.LBB9_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_12 Depth 4
                                        #         Child Loop BB9_19 Depth 4
	cmpq	$0, -136(%rbp)
	je	.LBB9_31
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-44(%rbp), %ecx
	subl	-156(%rbp), %ecx
	movl	%ecx, -196(%rbp)
	movl	$0, -144(%rbp)
.LBB9_7:                                # %for.cond.11
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
                                        #         Child Loop BB9_12 Depth 4
                                        #         Child Loop BB9_19 Depth 4
	movl	-144(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_29
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-184(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-48(%rbp), %ecx
	subl	-152(%rbp), %ecx
	movl	%ecx, -220(%rbp)
	movl	$0, -140(%rbp)
.LBB9_9:                                # %for.cond.17
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_12 Depth 4
                                        #         Child Loop BB9_19 Depth 4
	movl	-140(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_27
# BB#10:                                # %for.body.20
                                        #   in Loop: Header=BB9_9 Depth=3
	cmpl	$0, -168(%rbp)
	je	.LBB9_18
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	$0, -148(%rbp)
.LBB9_12:                               # %for.cond.23
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-148(%rbp), %eax
	movl	-124(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_17
# BB#13:                                # %for.body.27
                                        #   in Loop: Header=BB9_12 Depth=4
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-148(%rbp), %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-148(%rbp), %rax
	movq	-216(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
	cmpl	$0, -20(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.34
                                        #   in Loop: Header=BB9_12 Depth=4
	movl	$255, %eax
	movslq	-148(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movslq	-148(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
.LBB9_15:                               # %if.end.42
                                        #   in Loop: Header=BB9_12 Depth=4
	jmp	.LBB9_16
.LBB9_16:                               # %for.inc
                                        #   in Loop: Header=BB9_12 Depth=4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB9_12
.LBB9_17:                               # %for.end
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_25
.LBB9_18:                               # %if.else.43
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	$0, -148(%rbp)
.LBB9_19:                               # %for.cond.44
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-148(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB9_24
# BB#20:                                # %for.body.47
                                        #   in Loop: Header=BB9_19 Depth=4
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-148(%rbp), %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-148(%rbp), %rax
	movq	-216(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
	cmpl	$0, -20(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.57
                                        #   in Loop: Header=BB9_19 Depth=4
	movl	$255, %eax
	movslq	-148(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movslq	-148(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
.LBB9_22:                               # %if.end.65
                                        #   in Loop: Header=BB9_19 Depth=4
	jmp	.LBB9_23
.LBB9_23:                               # %for.inc.66
                                        #   in Loop: Header=BB9_19 Depth=4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB9_19
.LBB9_24:                               # %for.end.68
                                        #   in Loop: Header=BB9_9 Depth=3
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.69
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-124(%rbp), %eax
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -208(%rbp)
	movl	-124(%rbp), %eax
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -216(%rbp)
# BB#26:                                # %for.inc.72
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_9
.LBB9_27:                               # %for.end.75
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-52(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
	movl	-100(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
# BB#28:                                # %for.inc.81
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB9_7
.LBB9_29:                               # %for.end.84
                                        #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_30
.LBB9_30:                               # %for.inc.85
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-136(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -136(%rbp)
	jmp	.LBB9_5
.LBB9_31:                               # %for.end.87
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end9:
	.size	normalize_invert, .Lfunc_end9-normalize_invert
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611686018427387904     # double 2
.LCPI10_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI10_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	make_curve,@function
make_curve:                             # @make_curve
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
	subq	$80, %rsp
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	mulsd	-8(%rbp), %xmm2
	mulsd	-8(%rbp), %xmm2
	movsd	%xmm2, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	movd	%rdi, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movl	$2, %ecx
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	callq	sqrt
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB10_2:                               # %if.end
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-52(%rbp), %rdi
	callq	g_malloc_n
	movl	$2, %ecx
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-24(%rbp), %rsi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	$255, (%rsi)
	movl	$1, -48(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB10_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%eax, %eax
	movl	-48(%rbp), %ecx
	imull	-48(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-32(%rbp), %xmm0
	callq	exp
	xorl	%eax, %eax
	movsd	.LCPI10_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	-44(%rbp), %eax
	movslq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	make_curve, .Lfunc_end10-make_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
	.text
	.align	16, 0x90
	.type	multiply_alpha,@function
multiply_alpha:                         # @multiply_alpha
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB11_3:                               # %for.cond.3
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_6
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB11_3 Depth=2
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, (%rdi,%rsi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc.14
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_1
.LBB11_8:                               # %for.end.16
	popq	%rbp
	retq
.Lfunc_end11:
	.size	multiply_alpha, .Lfunc_end11-multiply_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	run_length_encode,@function
run_length_encode:                      # @run_length_encode
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movb	(%rsi), %al
	movb	%al, -37(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -8(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB12_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-37(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB12_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB12_4:                               # %for.cond.4
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB12_7
# BB#5:                                 # %for.body.7
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
	movzbl	-37(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_4
.LBB12_7:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rcx
	movb	(%rcx), %dl
	movb	%dl, -37(%rbp)
.LBB12_8:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
# BB#9:                                 # %for.inc.12
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_10:                              # %for.end.14
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB12_11:                              # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB12_14
# BB#12:                                # %for.body.18
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
	movzbl	-37(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, (%rcx)
# BB#13:                                # %for.inc.23
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_11
.LBB12_14:                              # %for.end.25
	popq	%rbp
	retq
.Lfunc_end12:
	.size	run_length_encode, .Lfunc_end12-run_length_encode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	separate_alpha,@function
separate_alpha:                         # @separate_alpha
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -25(%rbp)
	movzbl	-25(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB13_12
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movzbl	-25(%rbp), %eax
	cmpl	$255, %eax
	je	.LBB13_12
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movzbl	-25(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB13_5:                               # %for.cond.8
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_11
# BB#6:                                 # %for.body.12
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	$255, %eax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm0
	mulsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	-44(%rbp), %eax
	jge	.LBB13_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	$255, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB13_9:                               # %cond.end
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	-48(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_5
.LBB13_11:                              # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_12
.LBB13_12:                              # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_13
.LBB13_13:                              # %for.inc.26
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_1
.LBB13_14:                              # %for.end.28
	popq	%rbp
	retq
.Lfunc_end13:
	.size	separate_alpha, .Lfunc_end13-separate_alpha
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
	.asciz	"inner"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Radius of inner gaussian blur (in pixels, > 0.0)"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"outer"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Radius of outer gaussian blur (in pixels, > 0.0)"
	.size	.L.str.9, 49

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"normalize"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Normalize { TRUE, FALSE }"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"invert"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Invert { TRUE, FALSE }"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-dog"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Edge detection with control of edge thickness"
	.size	.L.str.15, 46

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Applies two Gaussian blurs to the drawable, and subtracts the results.  This is robust and widely used method for detecting edges."
	.size	.L.str.16, 131

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Spencer Kimball, Peter Mattis, Sven Neumann, William Skaggs"
	.size	.L.str.17, 60

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1995-2004"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Difference of Gaussians..."
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<Image>/Filters/Edge-Detect"
	.size	.L.str.21, 28

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"UTF-8"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Can operate on layers only (but was called on channel or mask)."
	.size	.L.str.25, 64

	.type	dogvals,@object         # @dogvals
	.data
	.align	8
dogvals:
	.quad	4613937818241073152     # double 3
	.quad	4607182418800017408     # double 1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	dogvals, 24

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"DoG Edge Detect"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"edge-dog"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-edge-dog"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-cancel"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-ok"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalidated"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Smoothing Parameters"
	.size	.L.str.33, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%a"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Radius 1:"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"R_adius 2:"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Normalize"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"toggled"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Invert"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"preview"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"dog_scratch_layer1"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"dog_scratch_layer2"
	.size	.L.str.43, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
