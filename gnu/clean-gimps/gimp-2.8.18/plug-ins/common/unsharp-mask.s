	.text
	.file	"unsharp-mask.bc"
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r10
	movl	$1, %r11d
	movl	$6, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.20, %rsi
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
	subq	$160, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -60(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$21, run.values
	movl	-44(%rbp), %esi
	movl	%esi, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.21, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-92(%rbp), %edi         # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-96(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	addl	$1, %eax
	movq	-56(%rbp), %rsi
	movl	8(%rsi), %r8d
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-108(%rbp), %edi        # 4-byte Reload
	divl	%edi
	addl	$1, %eax
	movl	-100(%rbp), %r8d        # 4-byte Reload
	cmpl	%eax, %r8d
	jbe	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-128(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	addl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_23
.LBB1_23:                               # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_24
.LBB1_24:                               # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$unsharp_params, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	unsharp_mask_dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then
	jmp	.LBB1_22
.LBB1_8:                                # %if.end
	jmp	.LBB1_18
.LBB1_9:                                # %sw.bb.21
	cmpl	$6, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.24
	movl	$1, -44(%rbp)
	jmp	.LBB1_15
.LBB1_11:                               # %if.else
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, unsharp_params
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, unsharp_params+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, unsharp_params+16
	ucomisd	unsharp_params, %xmm0
	ja	.LBB1_13
# BB#12:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	ucomisd	unsharp_params+8, %xmm0
	jbe	.LBB1_14
.LBB1_13:                               # %if.then.37
	movl	$1, -44(%rbp)
.LBB1_14:                               # %if.end.38
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.39
	jmp	.LBB1_18
.LBB1_16:                               # %sw.bb.40
	movabsq	$.L.str.12, %rdi
	movabsq	$unsharp_params, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %sw.default
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_22
# BB#19:                                # %if.then.44
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movsd	unsharp_params, %xmm0   # xmm0 = mem[0],zero
	movsd	unsharp_params+8, %xmm1 # xmm1 = mem[0],zero
	callq	unsharp_mask
	callq	gimp_displays_flush
	cmpl	$0, -60(%rbp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jne	.LBB1_21
# BB#20:                                # %if.then.52
	movabsq	$.L.str.12, %rdi
	movabsq	$unsharp_params, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.54
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_22:                               # %if.end.55
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4643176031446892544     # double 255
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4621819117588971520     # double 10
.LCPI3_3:
	.quad	4576918229304087675     # double 0.01
.LCPI3_4:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_5:
	.quad	4647503709213818880     # double 500
	.text
	.align	16, 0x90
	.type	unsharp_mask_dialog,@function
unsharp_mask_dialog:                    # @unsharp_mask_dialog
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
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.23, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.26, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r11
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
	movabsq	$.L.str.28, %rsi
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
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
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
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$120, %r8d
	movl	$5, %r9d
	movsd	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	unsharp_params, %xmm3   # xmm3 = mem[0],zero
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$unsharp_params, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$120, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	unsharp_params+8, %xmm1 # xmm1 = mem[0],zero
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -300(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$unsharp_params, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$120, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	unsharp_params+16, %xmm1
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-368(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -372(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$unsharp_params, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
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
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	unsharp_mask_dialog, .Lfunc_end3-unsharp_mask_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	unsharp_mask,@function
unsharp_mask:                           # @unsharp_mask
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	leaq	-80(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	4(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	leaq	-144(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-80(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movl	$1, %r9d
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-132(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-136(%rbp), %r10d
	movl	-144(%rbp), %r11d
	movl	%r9d, -152(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	unsharp_region
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rbx
	movl	(%rbx), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	subl	-132(%rbp), %ecx
	movl	-144(%rbp), %r8d
	subl	-136(%rbp), %r8d
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -164(%rbp)        # 4-byte Spill
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	unsharp_mask, .Lfunc_end4-unsharp_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	xorl	%ecx, %ecx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	unsharp_params, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movl	%r8d, -52(%rbp)
	movl	-36(%rbp), %r8d
	subl	-52(%rbp), %r8d
	cmpl	%r8d, %ecx
	jle	.LBB5_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movl	-36(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB5_3:                                # %cond.end
	movl	-168(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)
	movl	-40(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB5_5
# BB#4:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false.13
	movl	-40(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB5_6:                                # %cond.end.15
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB5_8
# BB#7:                                 # %cond.true.22
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false.25
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB5_9:                                # %cond.end.27
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB5_11
# BB#10:                                # %cond.true.34
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB5_12
.LBB5_11:                               # %cond.false.37
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB5_12:                               # %cond.end.39
	movl	-180(%rbp), %eax        # 4-byte Reload
	leaq	-104(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %edx
	movsd	unsharp_params, %xmm0   # xmm0 = mem[0],zero
	movsd	unsharp_params+8, %xmm1 # xmm1 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %r10d
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	callq	unsharp_region
	leaq	-152(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_update, .Lfunc_end5-preview_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4621819117588971520     # double 10
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
.LCPI6_2:
	.quad	4616189618054758400     # double 4
.LCPI6_3:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI6_4:
	.quad	4613937818241073152     # double 3
.LCPI6_5:
	.quad	4607182418800017408     # double 1
.LCPI6_6:
	.quad	4604210043045952881     # double 0.67000000000000004
.LCPI6_7:
	.quad	4599616371426034975     # double 0.33000000000000002
	.text
	.align	16, 0x90
	.type	unsharp_region,@function
unsharp_region:                         # @unsharp_region
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
	subq	$240, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-56(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	unsharp_params+16, %eax
	movl	%eax, -112(%rbp)
	movl	$0, -120(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB6_2:                                # %if.end
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %if.then.3
	leaq	-96(%rbp), %rdi
	movl	$0, -116(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gen_convolve_matrix
	movl	%eax, -100(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_4, %xmm2         # xmm2 = mem[0],zero
	movl	$1, -116(%rbp)
	mulsd	-32(%rbp), %xmm2
	movsd	.LCPI6_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -176(%rbp)       # 8-byte Spill
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -120(%rbp)
.LBB6_5:                                # %if.end.7
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB6_7
# BB#6:                                 # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
	movl	-88(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB6_8:                                # %cond.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-20(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	movl	-84(%rbp), %ecx
	cmpl	-88(%rbp), %ecx
	jle	.LBB6_10
# BB#9:                                 # %cond.true.15
	movl	-84(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false.16
	movl	-88(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB6_11:                               # %cond.end.17
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-20(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movl	$0, -104(%rbp)
.LBB6_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB6_24
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-84(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	cmpl	$0, -116(%rbp)
	je	.LBB6_18
# BB#14:                                # %if.then.26
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$2, %eax
	movl	-120(%rbp), %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-196(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB6_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB6_12 Depth=1
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.29
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-120(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	movl	$1, %esi
	movl	-120(%rbp), %edi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	addl	$1, %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
.LBB6_17:                               # %if.end.31
                                        #   in Loop: Header=BB6_12 Depth=1
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.32
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	gaussian_blur_line
.LBB6_19:                               # %if.end.33
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-84(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
	cmpl	$0, -60(%rbp)
	je	.LBB6_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$64, %eax
	movl	-104(%rbp), %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-200(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_22
# BB#21:                                # %if.then.39
                                        #   in Loop: Header=BB6_12 Depth=1
	cvtsi2sdl	-104(%rbp), %xmm0
	imull	$3, -88(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB6_22:                               # %if.end.45
                                        #   in Loop: Header=BB6_12 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB6_12
.LBB6_24:                               # %for.end
	movl	$0, -108(%rbp)
.LBB6_25:                               # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_37
# BB#26:                                # %for.body.49
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_col
	cmpl	$0, -116(%rbp)
	je	.LBB6_31
# BB#27:                                # %if.then.52
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$2, %eax
	movl	-120(%rbp), %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-208(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB6_29
# BB#28:                                # %if.then.55
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	jmp	.LBB6_30
.LBB6_29:                               # %if.else.56
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-120(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	movl	$1, %esi
	movl	-120(%rbp), %edi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
	xorl	%esi, %esi
	movl	-120(%rbp), %edi
	addl	$1, %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	box_blur_line
.LBB6_30:                               # %if.end.58
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_32
.LBB6_31:                               # %if.else.59
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	gaussian_blur_line
.LBB6_32:                               # %if.end.60
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_set_col
	cmpl	$0, -60(%rbp)
	je	.LBB6_35
# BB#33:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$64, %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-212(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_35
# BB#34:                                # %if.then.67
                                        #   in Loop: Header=BB6_25 Depth=1
	movsd	.LCPI6_7, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm1
	imull	$3, -84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB6_35:                               # %if.end.74
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_36
.LBB6_36:                               # %for.inc.75
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB6_25
.LBB6_37:                               # %for.end.77
	cmpl	$0, -60(%rbp)
	je	.LBB6_39
# BB#38:                                # %if.then.79
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_set_text
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB6_39:                               # %if.end.82
	movl	$0, -104(%rbp)
.LBB6_40:                               # %for.cond.83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_42 Depth 2
                                        #       Child Loop BB6_44 Depth 3
	movl	-104(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB6_62
# BB#41:                                # %for.body.86
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-84(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-84(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -140(%rbp)
.LBB6_42:                               # %for.cond.89
                                        #   Parent Loop BB6_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_44 Depth 3
	movl	-140(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_57
# BB#43:                                # %for.body.92
                                        #   in Loop: Header=BB6_42 Depth=2
	movl	$0, -144(%rbp)
.LBB6_44:                               # %for.cond.93
                                        #   Parent Loop BB6_40 Depth=1
                                        #     Parent Loop BB6_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-144(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_55
# BB#45:                                # %for.body.96
                                        #   in Loop: Header=BB6_44 Depth=3
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-136(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, %edi
	callq	abs
	cmpl	-112(%rbp), %eax
	jge	.LBB6_47
# BB#46:                                # %if.then.104
                                        #   in Loop: Header=BB6_44 Depth=3
	movl	$0, -152(%rbp)
.LBB6_47:                               # %if.end.105
                                        #   in Loop: Header=BB6_44 Depth=3
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movzbl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-152(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -148(%rbp)
	cmpl	$255, -148(%rbp)
	jle	.LBB6_49
# BB#48:                                # %cond.true.114
                                        #   in Loop: Header=BB6_44 Depth=3
	movl	$255, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB6_53
.LBB6_49:                               # %cond.false.115
                                        #   in Loop: Header=BB6_44 Depth=3
	cmpl	$0, -148(%rbp)
	jge	.LBB6_51
# BB#50:                                # %cond.true.118
                                        #   in Loop: Header=BB6_44 Depth=3
	xorl	%eax, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB6_52
.LBB6_51:                               # %cond.false.119
                                        #   in Loop: Header=BB6_44 Depth=3
	movl	-148(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB6_52:                               # %cond.end.120
                                        #   in Loop: Header=BB6_44 Depth=3
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB6_53:                               # %cond.end.122
                                        #   in Loop: Header=BB6_44 Depth=3
	movl	-224(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -136(%rbp)
	movb	%cl, (%rdx)
# BB#54:                                # %for.inc.126
                                        #   in Loop: Header=BB6_44 Depth=3
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_44
.LBB6_55:                               # %for.end.128
                                        #   in Loop: Header=BB6_42 Depth=2
	jmp	.LBB6_56
.LBB6_56:                               # %for.inc.129
                                        #   in Loop: Header=BB6_42 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB6_42
.LBB6_57:                               # %for.end.131
                                        #   in Loop: Header=BB6_40 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB6_60
# BB#58:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	$64, %eax
	movl	-104(%rbp), %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_60
# BB#59:                                # %if.then.137
                                        #   in Loop: Header=BB6_40 Depth=1
	movsd	.LCPI6_6, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-104(%rbp), %xmm1
	imull	$3, -88(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB6_60:                               # %if.end.144
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-84(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
# BB#61:                                # %for.inc.146
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB6_40
.LBB6_62:                               # %for.end.148
	cmpl	$0, -60(%rbp)
	je	.LBB6_64
# BB#63:                                # %if.then.150
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB6_64:                               # %if.end.152
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	unsharp_region, .Lfunc_end6-unsharp_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4611686018427387904     # double 2
.LCPI7_2:
	.quad	4602678819172646912     # double 0.5
.LCPI7_4:
	.quad	4632374429215621120     # double 51
.LCPI7_5:
	.quad	-4620693217682128896    # double -0.5
.LCPI7_6:
	.quad	4581421828931458171     # double 0.02
.LCPI7_7:
	.quad	4632233691727265792     # double 50
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gen_convolve_matrix,@function
gen_convolve_matrix:                    # @gen_convolve_matrix
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
	subq	$112, %rsp
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_2, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI7_3(%rip), %xmm4   # xmm4 = [9223372036854775807,9223372036854775807]
	andpd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movaps	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm3, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	callq	ceil
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, -44(%rbp)
.LBB7_2:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-44(%rbp), %rdi
	callq	g_malloc_n
	movl	$2, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-92(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -64(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$1, -52(%rbp)
.LBB7_5:                                # %for.cond.14
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$50, -52(%rbp)
	jg	.LBB7_10
# BB#6:                                 # %for.body.17
                                        #   in Loop: Header=BB7_5 Depth=2
	movsd	.LCPI7_6, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_8
# BB#7:                                 # %if.then.23
                                        #   in Loop: Header=BB7_5 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	exp
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB7_8:                                # %if.end.31
                                        #   in Loop: Header=BB7_5 Depth=2
	jmp	.LBB7_9
.LBB7_9:                                # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_5
.LBB7_10:                               # %for.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movsd	.LCPI7_7, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
# BB#11:                                # %for.inc.33
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_3
.LBB7_12:                               # %for.end.35
	movl	$0, -48(%rbp)
.LBB7_13:                               # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-96(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB7_16
# BB#14:                                # %for.body.40
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-44(%rbp), %eax
	subl	$1, %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#15:                                # %for.inc.47
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_13
.LBB7_16:                               # %for.end.49
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB7_17:                               # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$50, -52(%rbp)
	jg	.LBB7_20
# BB#18:                                # %for.body.53
                                        #   in Loop: Header=BB7_17 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_6, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm3
	movaps	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	movaps	%xmm1, %xmm3
	addsd	%xmm4, %xmm3
	cvtsi2sdl	-52(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm3
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	exp
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#19:                                # %for.inc.67
                                        #   in Loop: Header=BB7_17 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_17
.LBB7_20:                               # %for.end.69
	xorps	%xmm0, %xmm0
	movl	$2, %eax
	movsd	.LCPI7_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movl	-44(%rbp), %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-24(%rbp), %rdi
	movsd	%xmm2, (%rdi,%rsi,8)
	movsd	%xmm0, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB7_21:                               # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_24
# BB#22:                                # %for.body.77
                                        #   in Loop: Header=BB7_21 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#23:                                # %for.inc.81
                                        #   in Loop: Header=BB7_21 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_21
.LBB7_24:                               # %for.end.83
	movl	$0, -48(%rbp)
.LBB7_25:                               # %for.cond.84
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_28
# BB#26:                                # %for.body.87
                                        #   in Loop: Header=BB7_25 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#27:                                # %for.inc.93
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_25
.LBB7_28:                               # %for.end.95
	movl	-44(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gen_convolve_matrix, .Lfunc_end7-gen_convolve_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	box_blur_line,@function
box_blur_line:                          # @box_blur_line
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
	subq	$128, %rsp
	movl	$2, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %esi
	movl	%esi, %ecx
	movq	%rsp, %rdx
	movq	%rdx, -56(%rbp)
	leaq	15(,%rcx,4), %rcx
	movabsq	$34359738352, %rdx      # imm = 0x7FFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movl	$0, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	cltd
	movl	-64(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-40(%rbp), %ecx
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-76(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_10
.LBB8_2:                                # %if.else
	cmpl	$1, -8(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	$2, %eax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movl	-4(%rbp), %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-80(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_9
.LBB8_4:                                # %if.else.7
	cmpl	$-1, -8(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.9
	movl	$2, %eax
	movl	-40(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-84(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_8
.LBB8_6:                                # %if.else.13
	jmp	.LBB8_7
.LBB8_7:                                # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.35, %rsi
	movl	$299, %edx              # imm = 0x12B
	movabsq	$.L__func__.box_blur_line, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB8_8:                                # %if.end
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.14
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.15
	movl	$0, -36(%rbp)
.LBB8_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB8_11 Depth=1
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx,%rax,4)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_11
.LBB8_14:                               # %for.end
	jmp	.LBB8_15
.LBB8_15:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_25 Depth 2
                                        #     Child Loop BB8_31 Depth 2
                                        #     Child Loop BB8_36 Depth 2
                                        #     Child Loop BB8_44 Depth 2
                                        #     Child Loop BB8_50 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_57
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %cond.false
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB8_19:                               # %cond.end
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	cmpl	$0, -48(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jl	.LBB8_21
# BB#20:                                # %cond.true.21
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB8_22
.LBB8_21:                               # %cond.false.22
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB8_22
.LBB8_22:                               # %cond.end.23
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-112(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_42
# BB#23:                                # %if.then.27
                                        #   in Loop: Header=BB8_15 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB8_29
# BB#24:                                # %if.then.29
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	$0, -36(%rbp)
.LBB8_25:                               # %for.cond.30
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_28
# BB#26:                                # %for.body.32
                                        #   in Loop: Header=BB8_25 Depth=2
	movl	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-36(%rbp), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	movl	-32(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	movslq	-36(%rbp), %rcx
	movl	(%rdx,%rcx,4), %edi
	subl	%eax, %edi
	movl	%edi, (%rdx,%rcx,4)
	movslq	-36(%rbp), %rcx
	movl	(%rdx,%rcx,4), %eax
	movl	-60(%rbp), %edi
	shrl	$1, %edi
	addl	%edi, %eax
	xorl	%edx, %edx
	divl	-60(%rbp)
	movb	%al, %r8b
	movl	-32(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rsi
	movb	%r8b, (%rsi,%rcx)
# BB#27:                                # %for.inc.56
                                        #   in Loop: Header=BB8_25 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_25
.LBB8_28:                               # %for.end.58
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_41
.LBB8_29:                               # %if.else.59
                                        #   in Loop: Header=BB8_15 Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB8_35
# BB#30:                                # %if.then.62
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	$0, -36(%rbp)
.LBB8_31:                               # %for.cond.63
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_34
# BB#32:                                # %for.body.66
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-36(%rbp), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
	movslq	-36(%rbp), %rcx
	movl	(%rdx,%rcx,4), %eax
	movl	-60(%rbp), %esi
	shrl	$1, %esi
	addl	%esi, %eax
	xorl	%edx, %edx
	divl	-60(%rbp)
	movb	%al, %dil
	movl	-32(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %r8
	movb	%dil, (%r8,%rcx)
# BB#33:                                # %for.inc.85
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_31
.LBB8_34:                               # %for.end.87
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_40
.LBB8_35:                               # %if.else.88
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	$0, -36(%rbp)
.LBB8_36:                               # %for.cond.89
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_39
# BB#37:                                # %for.body.92
                                        #   in Loop: Header=BB8_36 Depth=2
	movl	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-36(%rbp), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addl	(%rdx,%rcx,4), %eax
	movl	%eax, (%rdx,%rcx,4)
# BB#38:                                # %for.inc.101
                                        #   in Loop: Header=BB8_36 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_36
.LBB8_39:                               # %for.end.103
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_40
.LBB8_40:                               # %if.end.104
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_41
.LBB8_41:                               # %if.end.105
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_56
.LBB8_42:                               # %if.else.106
                                        #   in Loop: Header=BB8_15 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB8_48
# BB#43:                                # %if.then.109
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	$0, -36(%rbp)
.LBB8_44:                               # %for.cond.110
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_47
# BB#45:                                # %for.body.113
                                        #   in Loop: Header=BB8_44 Depth=2
	movl	-32(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-36(%rbp), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	subl	%eax, %esi
	movl	%esi, (%rdx,%rcx,4)
	movslq	-36(%rbp), %rcx
	movl	(%rdx,%rcx,4), %eax
	movl	-60(%rbp), %esi
	shrl	$1, %esi
	addl	%esi, %eax
	xorl	%edx, %edx
	divl	-60(%rbp)
	movb	%al, %dil
	movl	-32(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %r8
	movb	%dil, (%r8,%rcx)
# BB#46:                                # %for.inc.132
                                        #   in Loop: Header=BB8_44 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_44
.LBB8_47:                               # %for.end.134
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_55
.LBB8_48:                               # %if.else.135
                                        #   in Loop: Header=BB8_15 Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB8_54
# BB#49:                                # %if.then.138
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	$0, -36(%rbp)
.LBB8_50:                               # %for.cond.139
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_53
# BB#51:                                # %for.body.142
                                        #   in Loop: Header=BB8_50 Depth=2
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movl	-60(%rbp), %esi
	shrl	$1, %esi
	addl	%esi, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	-60(%rbp)
	movb	%al, %dil
	movl	-32(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %r8
	movq	-24(%rbp), %r9
	movb	%dil, (%r9,%r8)
# BB#52:                                # %for.inc.153
                                        #   in Loop: Header=BB8_50 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_50
.LBB8_53:                               # %for.end.155
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_54
.LBB8_54:                               # %if.end.156
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_55
.LBB8_55:                               # %if.end.157
                                        #   in Loop: Header=BB8_15 Depth=1
	jmp	.LBB8_56
.LBB8_56:                               # %if.end.158
                                        #   in Loop: Header=BB8_15 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_15
.LBB8_57:                               # %while.end
	movq	-56(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	box_blur_line, .Lfunc_end8-box_blur_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gaussian_blur_line,@function
gaussian_blur_line:                     # @gaussian_blur_line
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
	pushq	%rax
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-132(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -60(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB9_24
# BB#1:                                 # %if.then
	movl	$0, -64(%rbp)
.LBB9_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
                                        #     Child Loop BB9_11 Depth 2
                                        #       Child Loop BB9_13 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_23
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB9_2 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	$0, -72(%rbp)
.LBB9_4:                                # %for.cond.2
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_10
# BB#5:                                 # %for.body.4
                                        #   in Loop: Header=BB9_4 Depth=2
	movl	-72(%rbp), %eax
	addl	-60(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB9_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_4 Depth=2
	movl	-72(%rbp), %eax
	addl	-60(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB9_4 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB9_8:                                # %if.end
                                        #   in Loop: Header=BB9_4 Depth=2
	jmp	.LBB9_9
.LBB9_9:                                # %for.inc
                                        #   in Loop: Header=BB9_4 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_4
.LBB9_10:                               # %for.end
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB9_11:                               # %for.cond.11
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_13 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_21
# BB#12:                                # %for.body.13
                                        #   in Loop: Header=BB9_11 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB9_13:                               # %for.cond.14
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_19
# BB#14:                                # %for.body.16
                                        #   in Loop: Header=BB9_13 Depth=3
	movl	-72(%rbp), %eax
	addl	-60(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB9_17
# BB#15:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB9_13 Depth=3
	movl	-72(%rbp), %eax
	addl	-60(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_17
# BB#16:                                # %if.then.24
                                        #   in Loop: Header=BB9_13 Depth=3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB9_17:                               # %if.end.29
                                        #   in Loop: Header=BB9_13 Depth=3
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#18:                                # %for.inc.30
                                        #   in Loop: Header=BB9_13 Depth=3
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_13
.LBB9_19:                               # %for.end.32
                                        #   in Loop: Header=BB9_11 Depth=2
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-80(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
# BB#20:                                # %for.inc.38
                                        #   in Loop: Header=BB9_11 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_11
.LBB9_21:                               # %for.end.40
                                        #   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_22
.LBB9_22:                               # %for.inc.41
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_2
.LBB9_23:                               # %for.end.43
	jmp	.LBB9_69
.LBB9_24:                               # %if.else
	movl	$0, -64(%rbp)
.LBB9_25:                               # %for.cond.44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_31 Depth 2
                                        #       Child Loop BB9_33 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB9_40
# BB#26:                                # %for.body.47
                                        #   in Loop: Header=BB9_25 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-60(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB9_27:                               # %for.cond.50
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_30
# BB#28:                                # %for.body.53
                                        #   in Loop: Header=BB9_27 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
# BB#29:                                # %for.inc.57
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_27
.LBB9_30:                               # %for.end.59
                                        #   in Loop: Header=BB9_25 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB9_31:                               # %for.cond.60
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_33 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_38
# BB#32:                                # %for.body.63
                                        #   in Loop: Header=BB9_31 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %edx
	subl	-64(%rbp), %edx
	movl	%edx, -72(%rbp)
.LBB9_33:                               # %for.cond.67
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_36
# BB#34:                                # %for.body.70
                                        #   in Loop: Header=BB9_33 Depth=3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#35:                                # %for.inc.79
                                        #   in Loop: Header=BB9_33 Depth=3
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_33
.LBB9_36:                               # %for.end.81
                                        #   in Loop: Header=BB9_31 Depth=2
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-96(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
# BB#37:                                # %for.inc.87
                                        #   in Loop: Header=BB9_31 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_31
.LBB9_38:                               # %for.end.89
                                        #   in Loop: Header=BB9_25 Depth=1
	jmp	.LBB9_39
.LBB9_39:                               # %for.inc.90
                                        #   in Loop: Header=BB9_25 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_25
.LBB9_40:                               # %for.end.92
	jmp	.LBB9_41
.LBB9_41:                               # %for.cond.93
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_43 Depth 2
                                        #       Child Loop BB9_45 Depth 3
	movl	-64(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_52
# BB#42:                                # %for.body.97
                                        #   in Loop: Header=BB9_41 Depth=1
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	-60(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB9_43:                               # %for.cond.102
                                        #   Parent Loop BB9_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_45 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_50
# BB#44:                                # %for.body.105
                                        #   in Loop: Header=BB9_43 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB9_45:                               # %for.cond.107
                                        #   Parent Loop BB9_41 Depth=1
                                        #     Parent Loop BB9_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_48
# BB#46:                                # %for.body.110
                                        #   in Loop: Header=BB9_45 Depth=3
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
# BB#47:                                # %for.inc.119
                                        #   in Loop: Header=BB9_45 Depth=3
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_45
.LBB9_48:                               # %for.end.121
                                        #   in Loop: Header=BB9_43 Depth=2
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	addsd	-112(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax)
# BB#49:                                # %for.inc.127
                                        #   in Loop: Header=BB9_43 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_43
.LBB9_50:                               # %for.end.129
                                        #   in Loop: Header=BB9_41 Depth=1
	jmp	.LBB9_51
.LBB9_51:                               # %for.inc.130
                                        #   in Loop: Header=BB9_41 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_41
.LBB9_52:                               # %for.end.132
	jmp	.LBB9_53
.LBB9_53:                               # %for.cond.133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_55 Depth 2
                                        #     Child Loop BB9_59 Depth 2
                                        #       Child Loop BB9_61 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_68
# BB#54:                                # %for.body.136
                                        #   in Loop: Header=BB9_53 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$0, -72(%rbp)
.LBB9_55:                               # %for.cond.138
                                        #   Parent Loop BB9_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	-64(%rbp), %ecx
	addl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_58
# BB#56:                                # %for.body.143
                                        #   in Loop: Header=BB9_55 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
# BB#57:                                # %for.inc.147
                                        #   in Loop: Header=BB9_55 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_55
.LBB9_58:                               # %for.end.149
                                        #   in Loop: Header=BB9_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	-60(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB9_59:                               # %for.cond.154
                                        #   Parent Loop BB9_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_61 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB9_66
# BB#60:                                # %for.body.157
                                        #   in Loop: Header=BB9_59 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB9_61:                               # %for.cond.160
                                        #   Parent Loop BB9_53 Depth=1
                                        #     Parent Loop BB9_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-72(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	-64(%rbp), %ecx
	addl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_64
# BB#62:                                # %for.body.165
                                        #   in Loop: Header=BB9_61 Depth=3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	mulsd	(%rdx,%rax,8), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#63:                                # %for.inc.174
                                        #   in Loop: Header=BB9_61 Depth=3
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_61
.LBB9_64:                               # %for.end.176
                                        #   in Loop: Header=BB9_59 Depth=2
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-120(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
# BB#65:                                # %for.inc.182
                                        #   in Loop: Header=BB9_59 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_59
.LBB9_66:                               # %for.end.184
                                        #   in Loop: Header=BB9_53 Depth=1
	jmp	.LBB9_67
.LBB9_67:                               # %for.inc.185
                                        #   in Loop: Header=BB9_53 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_53
.LBB9_68:                               # %for.end.187
	jmp	.LBB9_69
.LBB9_69:                               # %if.end.188
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gaussian_blur_line, .Lfunc_end9-gaussian_blur_line
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
	.asciz	"(unused)"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Drawable to draw on"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"radius"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Radius of gaussian blur (in pixels > 1.0)"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"amount"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Strength of effect"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"threshold"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Threshold (0-255)"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-unsharp-mask"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The most widely useful method for sharpening an image"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The unsharp mask is a sharpening filter that works by comparing using the difference of the image and a blurred version of the image.  It is commonly used on photographic images, and is provides a much more pleasing result than the standard sharpen filter."
	.size	.L.str.14, 257

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Winston Chang <winstonc@cs.wisc.edu>"
	.size	.L.str.15, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Winston Chang"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1999-2009"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Unsharp Mask..."
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GRAY*, RGB*"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.20, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"UTF-8"
	.size	.L.str.22, 6

	.type	unsharp_params,@object  # @unsharp_params
	.data
	.align	8
unsharp_params:
	.quad	4617315517961601024     # double 5
	.quad	4602678819172646912     # double 0.5
	.long	0                       # 0x0
	.zero	4
	.size	unsharp_params, 24

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"unsharp-mask"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Unsharp Mask"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-unsharp-mask"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-cancel"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-ok"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalidated"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Radius:"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"value-changed"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Amount:"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Threshold:"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Blurring"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Merging"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"unsharp-mask.c"
	.size	.L.str.35, 15

	.type	.L__func__.box_blur_line,@object # @__func__.box_blur_line
.L__func__.box_blur_line:
	.asciz	"box_blur_line"
	.size	.L__func__.box_blur_line, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
