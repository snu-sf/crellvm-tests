	.text
	.file	"newsprint.bc"
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
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.36, %r8
	movl	$1, %r10d
	movl	$15, %r11d
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
	movl	$15, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.37, %rsi
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
	movabsq	$.L.str.38, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.38, %rdi
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
	movups	factory_defaults+64(%rip), %xmm0
	movups	%xmm0, pvals+64(%rip)
	movups	factory_defaults+48(%rip), %xmm0
	movups	%xmm0, pvals+48(%rip)
	movups	factory_defaults+32(%rip), %xmm0
	movups	%xmm0, pvals+32(%rip)
	movups	factory_defaults+16(%rip), %xmm0
	movups	%xmm0, pvals+16(%rip)
	movups	factory_defaults(%rip), %xmm0
	movups	%xmm0, pvals(%rip)
	movq	factory_defaults_ui+16(%rip), %rax
	movq	%rax, pvals_ui+16(%rip)
	movups	factory_defaults_ui(%rip), %xmm0
	movups	%xmm0, pvals_ui(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_36
.LBB1_36:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_37
.LBB1_37:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_22
	jmp	.LBB1_23
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.30, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$.L.str.40, %rdi
	movabsq	$pvals_ui, %rsi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	newsprint_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_35
.LBB1_5:                                # %if.end
	jmp	.LBB1_24
.LBB1_6:                                # %sw.bb.10
	cmpl	$15, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -56(%rbp)
	jmp	.LBB1_24
.LBB1_8:                                # %if.end.12
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, pvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, pvals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, pvals+8
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+16
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, pvals+24
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+32
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, pvals+40
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+48
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, pvals+56
	movq	-24(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+64
	movq	-24(%rbp), %rax
	movl	528(%rax), %ecx
	movl	%ecx, pvals+72
	movq	-24(%rbp), %rax
	movl	568(%rax), %ecx
	movl	%ecx, pvals+76
	cmpl	$0, pvals+24
	jl	.LBB1_20
# BB#9:                                 # %land.lhs.true
	movslq	pvals+24, %rax
	cmpq	$6, %rax
	jae	.LBB1_20
# BB#10:                                # %lor.lhs.false
	cmpl	$0, pvals+40
	jl	.LBB1_20
# BB#11:                                # %land.lhs.true.53
	movslq	pvals+40, %rax
	cmpq	$6, %rax
	jae	.LBB1_20
# BB#12:                                # %lor.lhs.false.57
	cmpl	$0, pvals+56
	jl	.LBB1_20
# BB#13:                                # %land.lhs.true.60
	movslq	pvals+56, %rax
	cmpq	$6, %rax
	jae	.LBB1_20
# BB#14:                                # %lor.lhs.false.64
	cmpl	$0, pvals+72
	jl	.LBB1_20
# BB#15:                                # %land.lhs.true.67
	movslq	pvals+72, %rax
	cmpq	$6, %rax
	jae	.LBB1_20
# BB#16:                                # %lor.lhs.false.71
	cmpl	$0, pvals+4
	jl	.LBB1_20
# BB#17:                                # %land.lhs.true.74
	cmpl	$3, pvals+4
	jg	.LBB1_20
# BB#18:                                # %lor.lhs.false.77
	cmpl	$0, pvals+8
	jl	.LBB1_20
# BB#19:                                # %lor.lhs.false.80
	cmpl	$100, pvals+8
	jle	.LBB1_21
.LBB1_20:                               # %if.then.83
	movl	$1, -56(%rbp)
.LBB1_21:                               # %if.end.84
	jmp	.LBB1_24
.LBB1_22:                               # %sw.bb.85
	movabsq	$.L.str.30, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_24
.LBB1_23:                               # %sw.default
	jmp	.LBB1_24
.LBB1_24:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_34
# BB#25:                                # %if.then.89
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_27
# BB#26:                                # %lor.lhs.false.92
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_32
.LBB1_27:                               # %if.then.96
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$16, %ecx
	movl	%ecx, %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	newsprint
	cmpl	$1, -52(%rbp)
	je	.LBB1_29
# BB#28:                                # %if.then.101
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_29:                               # %if.end.103
	cmpl	$0, -52(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.106
	movabsq	$.L.str.30, %rdi
	movabsq	$pvals, %rax
	movl	$80, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movabsq	$.L.str.40, %rdi
	movabsq	$pvals_ui, %rsi
	movl	$24, %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.109
	jmp	.LBB1_33
.LBB1_32:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_33:                               # %if.end.110
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.111
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_35:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4613937818241073152     # double 3
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4617315517961601024     # double 5
.LCPI3_4:
	.quad	4688247212092686336     # double 262144
.LCPI3_5:
	.quad	4652992471259676672     # double 1200
.LCPI3_6:
	.quad	4621819117588971520     # double 10
.LCPI3_7:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI3_8:
	.quad	4679240012837945344     # double 65536
.LCPI3_9:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	newsprint_dialog,@function
newsprint_dialog:                       # @newsprint_dialog
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
	subq	$1336, %rsp             # imm = 0x538
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.42, %rax
	movl	$1, %esi
	movq	%rdi, -16(%rbp)
	movq	$0, -296(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movl	$0, -304(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -304(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-224(%rbp), %rax
	movslq	-304(%rbp), %rcx
	addq	$80, %rax
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	$0, (%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -300(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then
	movl	-300(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -300(%rbp)
.LBB3_6:                                # %if.end
	cmpl	$1, -300(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.5
	movl	$0, pvals+4
	jmp	.LBB3_11
.LBB3_8:                                # %if.else
	cmpl	$0, pvals+4
	jne	.LBB3_10
# BB#9:                                 # %if.then.7
	movl	$1, pvals+4
.LBB3_10:                               # %if.end.8
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.9
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movabsq	$.L.str.43, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.44, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.45, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	movl	%r10d, -376(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-232(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	callq	gtk_paned_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-232(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-240(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-240(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-256(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-264(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-264(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$newsprint, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-264(%rbp), %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_paned_pack2
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-256(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	movl	-492(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movl	-516(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-272(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-280(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-272(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-280(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	leaq	-312(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movl	%eax, %edi
	callq	gimp_image_get_resolution
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, pvals_ui
	movq	-280(%rbp), %rdx
	movl	%eax, -548(%rbp)        # 4-byte Spill
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$125, %r8d
	movl	$7, %r9d
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_7, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI3_8, %xmm6         # xmm6 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movsd	pvals_ui, %xmm1         # xmm1 = mem[0],zero
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$spi_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	leaq	-224(%rbp), %rdi
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-208(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-280(%rbp), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$125, %r8d
	movl	$7, %r9d
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_7, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI3_8, %xmm6         # xmm6 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movsd	pvals_ui+8, %xmm1       # xmm1 = mem[0],zero
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-648(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-648(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$lpi_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	leaq	-224(%rbp), %rdi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-200(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-280(%rbp), %rcx
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$125, %r8d
	movl	$7, %r9d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_4, %xmm6         # xmm6 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	pvals, %xmm1
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-712(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-712(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$cellsize_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	leaq	-224(%rbp), %rdi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-192(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-728(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-272(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -184(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	cmpl	$1, -300(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.96
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-224(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$125, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	pvals+8, %xmm1
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	%edx, -796(%rbp)        # 4-byte Spill
	movl	%ecx, -800(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-796(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-808(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-808(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-808(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rdi
	cmpl	$2, pvals+4
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	-224(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$pvals, %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-216(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-816(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -336(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-336(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-184(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-224(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -852(%rbp)        # 4-byte Spill
	movl	-852(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -344(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-344(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	movl	-868(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-344(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.55, %rdi
	movq	-296(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -296(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-360(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-360(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, pvals+4
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-360(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	leaq	-224(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-912(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	-264(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.58, %rsi
	movabsq	$newsprint_cspace_update, %rax
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-360(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-360(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.59, %rdi
	movq	-296(%rbp), %rcx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -296(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-360(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-360(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$2, pvals+4
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-360(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	leaq	-224(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-976(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	-264(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.58, %rsi
	movabsq	$newsprint_cspace_update, %rax
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-360(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-360(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-984(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.60, %rdi
	movq	-296(%rbp), %rcx
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -296(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-360(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-360(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$3, pvals+4
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-360(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	leaq	-224(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	-264(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.58, %rsi
	movabsq	$newsprint_cspace_update, %rax
	movl	$3, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-360(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-360(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -1048(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-336(%rbp), %rdi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gtk_button_box_new
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-184(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-336(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-336(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pvals_ui+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-336(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-360(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1100(%rbp)       # 4-byte Spill
	movl	-1100(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-360(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$pvals_ui, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-360(%rbp), %r11
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-360(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.62, %rdi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -352(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-352(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-352(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.63, %rsi
	movabsq	$newsprint_defaults_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-224(%rbp), %rdi
	movq	-352(%rbp), %r11
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.63, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-352(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB3_13:                               # %if.end.193
	leaq	-224(%rbp), %rax
	movslq	pvals+4, %rcx
	addq	$80, %rax
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB3_15
# BB#14:                                # %if.then.199
	leaq	-224(%rbp), %rdi
	movl	pvals+4, %esi
	movq	-264(%rbp), %rdx
	callq	gen_channels
.LBB3_15:                               # %if.end.200
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movq	-272(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	movl	-1188(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-272(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-280(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rdi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$125, %r8d
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	pvals+76, %xmm3
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1232(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -1236(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -1240(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-1240(%rbp), %r9d       # 4-byte Reload
	movsd	%xmm0, -1248(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-1248(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -1256(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1256(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1256(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$76, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-288(%rbp), %rdx
	movq	-264(%rbp), %rdi
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-280(%rbp), %rdi
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-272(%rbp), %rdi
	callq	gtk_widget_show
	movq	-232(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-224(%rbp), %rax
	movslq	pvals+4, %rcx
	addq	$80, %rax
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	preview_update
	movq	-232(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -324(%rbp)
	movq	-232(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-324(%rbp), %eax
	addq	$1336, %rsp             # imm = 0x538
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	newsprint_dialog, .Lfunc_end3-newsprint_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4640537203540230144     # double 180
.LCPI4_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_3:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI4_4:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI4_5:
	.quad	4589866978952703325     # double 0.0722
.LCPI4_6:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	newsprint,@function
newsprint:                              # @newsprint
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
	subq	$608, %rsp              # imm = 0x260
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%ecx, %edx
	leaq	-176(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	movq	$0, -344(%rbp)
	movl	pvals, %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	jge	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	subl	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
.LBB4_2:                                # %if.end
	cmpl	$1, -248(%rbp)
	jge	.LBB4_4
# BB#3:                                 # %if.then.2
	movl	$1, -248(%rbp)
.LBB4_4:                                # %if.end.3
	movl	pvals+76, %eax
	movl	%eax, -316(%rbp)
	movl	-316(%rbp), %eax
	imull	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
	callq	gimp_tile_width
	movl	%eax, -244(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -228(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_6
# BB#5:                                 # %if.then.5
	leaq	-276(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-292(%rbp), %rsi
	leaq	-296(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-276(%rbp), %eax
	addl	-292(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-280(%rbp), %eax
	addl	-296(%rbp), %eax
	movl	%eax, -288(%rbp)
	movl	-292(%rbp), %eax
	imull	-296(%rbp), %eax
	imull	-228(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -344(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else
	leaq	-276(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	leaq	-284(%rbp), %rcx
	leaq	-288(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB4_7:                                # %if.end.12
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -236(%rbp)
	cmpl	$0, -236(%rbp)
	je	.LBB4_9
# BB#8:                                 # %cond.true
	movl	-228(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	movl	-228(%rbp), %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB4_10:                               # %cond.end
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)
	movl	pvals+4, %eax
	movl	%eax, -320(%rbp)
	cmpl	$1, -232(%rbp)
	jne	.LBB4_12
# BB#11:                                # %if.then.19
	movl	$0, -320(%rbp)
	jmp	.LBB4_15
.LBB4_12:                               # %if.else.20
	cmpl	$0, -320(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.23
	movl	$1, -320(%rbp)
.LBB4_14:                               # %if.end.24
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.25
	movl	$2, %eax
	movl	-316(%rbp), %ecx
	movl	%eax, -408(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-408(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-316(%rbp), %esi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-412(%rbp), %esi        # 4-byte Reload
	imull	%eax, %esi
	movl	-316(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-316(%rbp), %edi
	movl	%eax, -416(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-416(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	imull	%edi, %esi
	movl	%esi, -332(%rbp)
	cmpl	$1, -232(%rbp)
	je	.LBB4_17
# BB#16:                                # %lor.lhs.false
	cmpl	$3, -320(%rbp)
	jne	.LBB4_18
.LBB4_17:                               # %if.then.44
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	pvals+16, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -224(%rbp)
	movl	pvals+24, %edi
	movl	-248(%rbp), %esi
	callq	spot2thresh
	movq	%rax, -176(%rbp)
	jmp	.LBB4_41
.LBB4_18:                               # %if.else.49
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movl	pvals+40, %eax
	movl	%eax, -348(%rbp)
	movl	pvals+56, %eax
	movl	%eax, -352(%rbp)
	movl	pvals+72, %eax
	movl	%eax, -356(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	pvals+32, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -224(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	pvals+48, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -216(%rbp)
	mulsd	pvals+64, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
# BB#19:                                # %do.body
	cmpl	$0, -348(%rbp)
	jl	.LBB4_21
# BB#20:                                # %land.lhs.true
	movslq	-348(%rbp), %rax
	cmpq	$6, %rax
	jb	.LBB4_22
.LBB4_21:                               # %if.then.64
	movabsq	$.L.str.90, %rdi
	movl	-348(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$0, -348(%rbp)
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB4_22:                               # %if.end.66
	jmp	.LBB4_23
.LBB4_23:                               # %do.end
	movl	-348(%rbp), %edi
	movl	-248(%rbp), %esi
	callq	spot2thresh
	movabsq	$spotfn_list, %rcx
	movslq	-348(%rbp), %rdx
	shlq	$6, %rdx
	movq	%rcx, %r8
	addq	%rdx, %r8
	movq	%rax, 16(%r8)
	movslq	-348(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	%rax, -176(%rbp)
# BB#24:                                # %do.body.74
	cmpl	$0, -352(%rbp)
	jl	.LBB4_26
# BB#25:                                # %land.lhs.true.77
	movslq	-352(%rbp), %rax
	cmpq	$6, %rax
	jb	.LBB4_27
.LBB4_26:                               # %if.then.81
	movabsq	$.L.str.90, %rdi
	movl	-352(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$0, -352(%rbp)
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB4_27:                               # %if.end.83
	jmp	.LBB4_28
.LBB4_28:                               # %do.end.84
	movl	-352(%rbp), %edi
	movl	-248(%rbp), %esi
	callq	spot2thresh
	movabsq	$spotfn_list, %rcx
	movslq	-352(%rbp), %rdx
	shlq	$6, %rdx
	movq	%rcx, %r8
	addq	%rdx, %r8
	movq	%rax, 16(%r8)
	movslq	-352(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	%rax, -168(%rbp)
# BB#29:                                # %do.body.93
	cmpl	$0, -356(%rbp)
	jl	.LBB4_31
# BB#30:                                # %land.lhs.true.96
	movslq	-356(%rbp), %rax
	cmpq	$6, %rax
	jb	.LBB4_32
.LBB4_31:                               # %if.then.100
	movabsq	$.L.str.90, %rdi
	movl	-356(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$0, -356(%rbp)
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB4_32:                               # %if.end.102
	jmp	.LBB4_33
.LBB4_33:                               # %do.end.103
	movl	-356(%rbp), %edi
	movl	-248(%rbp), %esi
	callq	spot2thresh
	movabsq	$spotfn_list, %rcx
	movslq	-356(%rbp), %rdx
	shlq	$6, %rdx
	movq	%rcx, %r8
	addq	%rdx, %r8
	movq	%rax, 16(%r8)
	movslq	-356(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	%rax, -160(%rbp)
	cmpl	$2, -320(%rbp)
	jne	.LBB4_40
# BB#34:                                # %if.then.114
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	pvals+16, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	movl	pvals+24, %eax
	movl	%eax, -352(%rbp)
# BB#35:                                # %do.body.118
	cmpl	$0, -352(%rbp)
	jl	.LBB4_37
# BB#36:                                # %land.lhs.true.121
	movslq	-352(%rbp), %rax
	cmpq	$6, %rax
	jb	.LBB4_38
.LBB4_37:                               # %if.then.125
	movabsq	$.L.str.90, %rdi
	movl	-352(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$0, -352(%rbp)
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB4_38:                               # %if.end.127
	jmp	.LBB4_39
.LBB4_39:                               # %do.end.128
	movl	-352(%rbp), %edi
	movl	-248(%rbp), %esi
	callq	spot2thresh
	movabsq	$spotfn_list, %rcx
	movslq	-352(%rbp), %rdx
	shlq	$6, %rdx
	movq	%rcx, %r8
	addq	%rdx, %r8
	movq	%rax, 16(%r8)
	movslq	-352(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	%rax, -152(%rbp)
.LBB4_40:                               # %if.end.137
	jmp	.LBB4_41
.LBB4_41:                               # %if.end.138
	movl	$0, -308(%rbp)
	movl	-284(%rbp), %eax
	subl	-276(%rbp), %eax
	movl	-288(%rbp), %ecx
	subl	-280(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -312(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -264(%rbp)
.LBB4_42:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_44 Depth 2
                                        #       Child Loop BB4_52 Depth 3
                                        #         Child Loop BB4_57 Depth 4
                                        #           Child Loop BB4_59 Depth 5
                                        #             Child Loop BB4_61 Depth 6
                                        #             Child Loop BB4_69 Depth 6
                                        #               Child Loop BB4_71 Depth 7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
                                        #             Child Loop BB4_118 Depth 6
	movl	-264(%rbp), %eax
	cmpl	-288(%rbp), %eax
	jge	.LBB4_136
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB4_42 Depth=1
	movl	-276(%rbp), %eax
	movl	%eax, -260(%rbp)
.LBB4_44:                               # %for.cond.144
                                        #   Parent Loop BB4_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_52 Depth 3
                                        #         Child Loop BB4_57 Depth 4
                                        #           Child Loop BB4_59 Depth 5
                                        #             Child Loop BB4_61 Depth 6
                                        #             Child Loop BB4_69 Depth 6
                                        #               Child Loop BB4_71 Depth 7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
                                        #             Child Loop BB4_118 Depth 6
	movl	-260(%rbp), %eax
	cmpl	-284(%rbp), %eax
	jge	.LBB4_134
# BB#45:                                # %for.body.147
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-244(%rbp), %eax
	movl	-260(%rbp), %ecx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-244(%rbp)
	movl	-436(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -268(%rbp)
	movl	-244(%rbp), %ecx
	movl	-264(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-244(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -272(%rbp)
	movl	-268(%rbp), %ecx
	movl	-284(%rbp), %edx
	subl	-260(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB4_47
# BB#46:                                # %cond.true.154
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-268(%rbp), %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB4_48
.LBB4_47:                               # %cond.false.155
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-284(%rbp), %eax
	subl	-260(%rbp), %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB4_48:                               # %cond.end.157
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-440(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	movl	-288(%rbp), %ecx
	subl	-264(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_50
# BB#49:                                # %cond.true.162
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-272(%rbp), %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB4_51
.LBB4_50:                               # %cond.false.163
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-288(%rbp), %eax
	subl	-264(%rbp), %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB4_51:                               # %cond.end.165
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-444(%rbp), %eax        # 4-byte Reload
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -272(%rbp)
	movq	-8(%rbp), %rsi
	movl	-260(%rbp), %edx
	movl	-264(%rbp), %eax
	movl	-268(%rbp), %r8d
	movl	-272(%rbp), %r9d
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-260(%rbp), %edx
	movl	-264(%rbp), %ecx
	movl	-268(%rbp), %r8d
	movl	-272(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -328(%rbp)
.LBB4_52:                               # %for.cond.168
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_57 Depth 4
                                        #           Child Loop BB4_59 Depth 5
                                        #             Child Loop BB4_61 Depth 6
                                        #             Child Loop BB4_69 Depth 6
                                        #               Child Loop BB4_71 Depth 7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
                                        #             Child Loop BB4_118 Depth 6
	cmpq	$0, -328(%rbp)
	je	.LBB4_132
# BB#53:                                # %for.body.171
                                        #   in Loop: Header=BB4_52 Depth=3
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_55
# BB#54:                                # %if.then.173
                                        #   in Loop: Header=BB4_52 Depth=3
	movq	-344(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-280(%rbp), %ecx
	imull	-292(%rbp), %ecx
	addl	-40(%rbp), %ecx
	subl	-276(%rbp), %ecx
	imull	-228(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB4_56
.LBB4_55:                               # %if.else.181
                                        #   in Loop: Header=BB4_52 Depth=3
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB4_56:                               # %if.end.183
                                        #   in Loop: Header=BB4_52 Depth=3
	movl	$0, -252(%rbp)
.LBB4_57:                               # %for.cond.184
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_59 Depth 5
                                        #             Child Loop BB4_61 Depth 6
                                        #             Child Loop BB4_69 Depth 6
                                        #               Child Loop BB4_71 Depth 7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
                                        #             Child Loop BB4_118 Depth 6
	movl	-252(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_128
# BB#58:                                # %for.body.187
                                        #   in Loop: Header=BB4_57 Depth=4
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -256(%rbp)
.LBB4_59:                               # %for.cond.188
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_61 Depth 6
                                        #             Child Loop BB4_69 Depth 6
                                        #               Child Loop BB4_71 Depth 7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
                                        #             Child Loop BB4_118 Depth 6
	movl	-256(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_123
# BB#60:                                # %for.body.191
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-260(%rbp), %eax
	addl	-256(%rbp), %eax
	imull	-316(%rbp), %eax
	movl	%eax, -300(%rbp)
	movl	-264(%rbp), %eax
	addl	-252(%rbp), %eax
	imull	-316(%rbp), %eax
	movl	%eax, -304(%rbp)
	cvtsi2sdl	-300(%rbp), %xmm0
	cvtsi2sdl	-300(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-304(%rbp), %xmm1
	cvtsi2sdl	-304(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -184(%rbp)
	cvtsi2sdl	-304(%rbp), %xmm0
	cvtsi2sdl	-300(%rbp), %xmm1
	callq	atan2
	movsd	%xmm0, -192(%rbp)
	movl	$0, -240(%rbp)
.LBB4_61:                               # %for.cond.208
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-240(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_64
# BB#62:                                # %for.body.211
                                        #   in Loop: Header=BB4_61 Depth=6
	movslq	-240(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-240(%rbp), %rax
	movb	%dl, -360(%rbp,%rax)
# BB#63:                                # %for.inc
                                        #   in Loop: Header=BB4_61 Depth=6
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB4_61
.LBB4_64:                               # %for.end
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-320(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -456(%rbp)        # 4-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	je	.LBB4_65
	jmp	.LBB4_140
.LBB4_140:                              # %for.end
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-456(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	je	.LBB4_66
	jmp	.LBB4_67
.LBB4_65:                               # %sw.bb
                                        #   in Loop: Header=BB4_59 Depth=5
	leaq	-364(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	leaq	-372(%rbp), %rdx
	leaq	-376(%rbp), %rcx
	movzbl	-360(%rbp), %eax
	movl	%eax, -364(%rbp)
	movzbl	-359(%rbp), %eax
	movl	%eax, -368(%rbp)
	movzbl	-358(%rbp), %eax
	movl	%eax, -372(%rbp)
	movl	pvals+8, %eax
	movl	%eax, -376(%rbp)
	callq	gimp_rgb_to_cmyk_int
	movl	-364(%rbp), %eax
	movb	%al, %r8b
	movb	%r8b, -360(%rbp)
	movl	-368(%rbp), %eax
	movb	%al, %r8b
	movb	%r8b, -359(%rbp)
	movl	-372(%rbp), %eax
	movb	%al, %r8b
	movb	%r8b, -358(%rbp)
	movl	-376(%rbp), %eax
	movb	%al, %r8b
	movb	%r8b, -357(%rbp)
	jmp	.LBB4_68
.LBB4_66:                               # %sw.bb.232
                                        #   in Loop: Header=BB4_59 Depth=5
	movb	-360(%rbp), %al
	movb	%al, -357(%rbp)
	movzbl	-360(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI4_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-359(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI4_4(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	-358(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI4_5(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI4_6(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movb	%al, -360(%rbp)
	jmp	.LBB4_68
.LBB4_67:                               # %sw.default
                                        #   in Loop: Header=BB4_59 Depth=5
	jmp	.LBB4_68
.LBB4_68:                               # %sw.epilog
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	$0, -240(%rbp)
.LBB4_69:                               # %for.cond.252
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_71 Depth 7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
	movl	-240(%rbp), %eax
	movslq	-320(%rbp), %rcx
	cmpl	cspace_nchans(,%rcx,4), %eax
	jge	.LBB4_100
# BB#70:                                # %for.body.257
                                        #   in Loop: Header=BB4_69 Depth=6
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	movslq	-240(%rbp), %rsi
	addsd	-224(%rbp,%rsi,8), %xmm1
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	movl	%edx, -484(%rbp)        # 4-byte Spill
	callq	cos
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -300(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	movslq	-240(%rbp), %rsi
	addsd	-224(%rbp,%rsi,8), %xmm1
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -304(%rbp)
	movl	-300(%rbp), %eax
	cmpl	$0, -300(%rbp)
	movl	-480(%rbp), %ecx        # 4-byte Reload
	movl	-484(%rbp), %edx        # 4-byte Reload
	cmovll	%edx, %ecx
	movl	-248(%rbp), %edi
	subl	$1, %edi
	imull	%edi, %ecx
	subl	%ecx, %eax
	cltd
	idivl	-248(%rbp)
	imull	-248(%rbp), %eax
	movl	-300(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -300(%rbp)
	movl	-304(%rbp), %eax
	cmpl	$0, -304(%rbp)
	movl	-480(%rbp), %ecx        # 4-byte Reload
	movl	-484(%rbp), %edi        # 4-byte Reload
	cmovll	%edi, %ecx
	movl	-248(%rbp), %r8d
	subl	$1, %r8d
	imull	%r8d, %ecx
	subl	%ecx, %eax
	cltd
	idivl	-248(%rbp)
	imull	-248(%rbp), %eax
	movl	-304(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -304(%rbp)
	movl	$0, -380(%rbp)
	movl	-480(%rbp), %eax        # 4-byte Reload
	subl	-316(%rbp), %eax
	cltd
	movl	-476(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -388(%rbp)
.LBB4_71:                               # %for.cond.292
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        #             Parent Loop BB4_69 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB4_73 Depth 8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
	movl	$2, %eax
	movl	-388(%rbp), %ecx
	movl	-316(%rbp), %edx
	movl	%eax, -500(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-500(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB4_98
# BB#72:                                # %for.body.296
                                        #   in Loop: Header=BB4_71 Depth=7
	movl	$2, %eax
	xorl	%ecx, %ecx
	subl	-316(%rbp), %ecx
	movl	%eax, -504(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-504(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -384(%rbp)
.LBB4_73:                               # %for.cond.299
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        #             Parent Loop BB4_69 Depth=6
                                        #               Parent Loop BB4_71 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB4_75 Depth 9
                                        #                   Child Loop BB4_78 Depth 9
                                        #                   Child Loop BB4_81 Depth 9
                                        #                   Child Loop BB4_84 Depth 9
	movl	$2, %eax
	movl	-384(%rbp), %ecx
	movl	-316(%rbp), %edx
	movl	%eax, -508(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-508(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB4_96
# BB#74:                                # %for.body.303
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	-300(%rbp), %eax
	addl	-384(%rbp), %eax
	movl	%eax, -392(%rbp)
	movl	-304(%rbp), %eax
	addl	-388(%rbp), %eax
	movl	%eax, -396(%rbp)
.LBB4_75:                               # %while.cond
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        #             Parent Loop BB4_69 Depth=6
                                        #               Parent Loop BB4_71 Depth=7
                                        #                 Parent Loop BB4_73 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	cmpl	$0, -392(%rbp)
	jge	.LBB4_77
# BB#76:                                # %while.body
                                        #   in Loop: Header=BB4_75 Depth=9
	movl	-248(%rbp), %eax
	addl	-392(%rbp), %eax
	movl	%eax, -392(%rbp)
	jmp	.LBB4_75
.LBB4_77:                               # %while.end
                                        #   in Loop: Header=BB4_73 Depth=8
	jmp	.LBB4_78
.LBB4_78:                               # %while.cond.309
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        #             Parent Loop BB4_69 Depth=6
                                        #               Parent Loop BB4_71 Depth=7
                                        #                 Parent Loop BB4_73 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	cmpl	$0, -396(%rbp)
	jge	.LBB4_80
# BB#79:                                # %while.body.312
                                        #   in Loop: Header=BB4_78 Depth=9
	movl	-248(%rbp), %eax
	addl	-396(%rbp), %eax
	movl	%eax, -396(%rbp)
	jmp	.LBB4_78
.LBB4_80:                               # %while.end.314
                                        #   in Loop: Header=BB4_73 Depth=8
	jmp	.LBB4_81
.LBB4_81:                               # %while.cond.315
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        #             Parent Loop BB4_69 Depth=6
                                        #               Parent Loop BB4_71 Depth=7
                                        #                 Parent Loop BB4_73 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	movl	-392(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jl	.LBB4_83
# BB#82:                                # %while.body.318
                                        #   in Loop: Header=BB4_81 Depth=9
	movl	-248(%rbp), %eax
	movl	-392(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -392(%rbp)
	jmp	.LBB4_81
.LBB4_83:                               # %while.end.320
                                        #   in Loop: Header=BB4_73 Depth=8
	jmp	.LBB4_84
.LBB4_84:                               # %while.cond.321
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        #             Parent Loop BB4_69 Depth=6
                                        #               Parent Loop BB4_71 Depth=7
                                        #                 Parent Loop BB4_73 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	movl	-396(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jl	.LBB4_86
# BB#85:                                # %while.body.324
                                        #   in Loop: Header=BB4_84 Depth=9
	movl	-248(%rbp), %eax
	movl	-396(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -396(%rbp)
	jmp	.LBB4_84
.LBB4_86:                               # %while.end.326
                                        #   in Loop: Header=BB4_73 Depth=8
	movslq	-240(%rbp), %rax
	movzbl	-360(%rbp,%rax), %ecx
	movl	-396(%rbp), %edx
	imull	-248(%rbp), %edx
	addl	-392(%rbp), %edx
	movslq	%edx, %rax
	movslq	-240(%rbp), %rsi
	movq	-176(%rbp,%rsi,8), %rsi
	movzbl	(%rsi,%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB4_94
# BB#87:                                # %if.then.339
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	$2, %eax
	movl	-316(%rbp), %ecx
	movl	%eax, -512(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-512(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	cmpl	$0, -384(%rbp)
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jge	.LBB4_89
# BB#88:                                # %cond.true.344
                                        #   in Loop: Header=BB4_73 Depth=8
	xorl	%eax, %eax
	subl	-384(%rbp), %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB4_90
.LBB4_89:                               # %cond.false.346
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	-384(%rbp), %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB4_90:                               # %cond.end.347
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	-520(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	-516(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	-316(%rbp), %eax
	movl	%edx, -524(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	addl	$1, %eax
	cmpl	$0, -388(%rbp)
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jge	.LBB4_92
# BB#91:                                # %cond.true.354
                                        #   in Loop: Header=BB4_73 Depth=8
	xorl	%eax, %eax
	subl	-388(%rbp), %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB4_93
.LBB4_92:                               # %cond.false.356
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	-388(%rbp), %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB4_93:                               # %cond.end.357
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	-528(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-524(%rbp), %eax        # 4-byte Reload
	imull	%ecx, %eax
	imull	$255, %eax, %eax
	addl	-380(%rbp), %eax
	movl	%eax, -380(%rbp)
.LBB4_94:                               # %if.end.363
                                        #   in Loop: Header=BB4_73 Depth=8
	jmp	.LBB4_95
.LBB4_95:                               # %for.inc.364
                                        #   in Loop: Header=BB4_73 Depth=8
	movl	-384(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB4_73
.LBB4_96:                               # %for.end.366
                                        #   in Loop: Header=BB4_71 Depth=7
	jmp	.LBB4_97
.LBB4_97:                               # %for.inc.367
                                        #   in Loop: Header=BB4_71 Depth=7
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB4_71
.LBB4_98:                               # %for.end.369
                                        #   in Loop: Header=BB4_69 Depth=6
	movl	-332(%rbp), %eax
	movl	-380(%rbp), %ecx
	movl	%eax, -536(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-536(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%eax, -380(%rbp)
	movl	-380(%rbp), %eax
	movb	%al, %sil
	movslq	-240(%rbp), %rdi
	movb	%sil, -360(%rbp,%rdi)
# BB#99:                                # %for.inc.374
                                        #   in Loop: Header=BB4_69 Depth=6
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB4_69
.LBB4_100:                              # %for.end.376
                                        #   in Loop: Header=BB4_59 Depth=5
	cmpl	$0, -236(%rbp)
	je	.LBB4_102
# BB#101:                               # %if.then.378
                                        #   in Loop: Header=BB4_59 Depth=5
	movslq	-232(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-232(%rbp), %rax
	movq	-144(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB4_102:                              # %if.end.383
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-320(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	je	.LBB4_103
	jmp	.LBB4_141
.LBB4_141:                              # %if.end.383
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-540(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	je	.LBB4_113
	jmp	.LBB4_116
.LBB4_103:                              # %sw.bb.384
                                        #   in Loop: Header=BB4_59 Depth=5
	movzbl	-360(%rbp), %eax
	movzbl	-357(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	$255, %eax
	jle	.LBB4_105
# BB#104:                               # %cond.true.392
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	$255, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB4_106
.LBB4_105:                              # %cond.false.393
                                        #   in Loop: Header=BB4_59 Depth=5
	movzbl	-360(%rbp), %eax
	movzbl	-357(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB4_106:                              # %cond.end.399
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-552(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -360(%rbp)
	movzbl	-359(%rbp), %eax
	movzbl	-357(%rbp), %edx
	addl	%edx, %eax
	cmpl	$255, %eax
	jle	.LBB4_108
# BB#107:                               # %cond.true.410
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	$255, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB4_109
.LBB4_108:                              # %cond.false.411
                                        #   in Loop: Header=BB4_59 Depth=5
	movzbl	-359(%rbp), %eax
	movzbl	-357(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB4_109:                              # %cond.end.417
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-556(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -359(%rbp)
	movzbl	-358(%rbp), %eax
	movzbl	-357(%rbp), %edx
	addl	%edx, %eax
	cmpl	$255, %eax
	jle	.LBB4_111
# BB#110:                               # %cond.true.428
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	$255, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB4_112
.LBB4_111:                              # %cond.false.429
                                        #   in Loop: Header=BB4_59 Depth=5
	movzbl	-358(%rbp), %eax
	movzbl	-357(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB4_112:                              # %cond.end.435
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	$255, %ecx
	movb	%al, %dl
	movb	%dl, -358(%rbp)
	movzbl	-360(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movb	%sil, %dl
	movb	%dl, -360(%rbp)
	movzbl	-359(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movb	%sil, %dl
	movb	%dl, -359(%rbp)
	movzbl	-358(%rbp), %eax
	subl	%eax, %ecx
	movb	%cl, %dl
	movb	%dl, -358(%rbp)
	jmp	.LBB4_117
.LBB4_113:                              # %sw.bb.454
                                        #   in Loop: Header=BB4_59 Depth=5
	cmpl	$0, -236(%rbp)
	je	.LBB4_115
# BB#114:                               # %if.then.456
                                        #   in Loop: Header=BB4_59 Depth=5
	movb	-360(%rbp), %al
	movslq	-232(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	movb	$-1, -360(%rbp)
.LBB4_115:                              # %if.end.461
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	$255, %eax
	movzbl	-359(%rbp), %ecx
	movzbl	-360(%rbp), %edx
	imull	%edx, %ecx
	movl	%eax, -564(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-564(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movb	%sil, -359(%rbp)
	movzbl	-358(%rbp), %eax
	movzbl	-360(%rbp), %edi
	imull	%edi, %eax
	cltd
	idivl	%ecx
	movb	%al, %sil
	movb	%sil, -358(%rbp)
	movzbl	-357(%rbp), %eax
	movzbl	-360(%rbp), %edi
	imull	%edi, %eax
	cltd
	idivl	%ecx
	movb	%al, %sil
	movb	%sil, -360(%rbp)
	jmp	.LBB4_117
.LBB4_116:                              # %sw.default.486
                                        #   in Loop: Header=BB4_59 Depth=5
	jmp	.LBB4_117
.LBB4_117:                              # %sw.epilog.487
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	$0, -240(%rbp)
.LBB4_118:                              # %for.cond.488
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        #       Parent Loop BB4_52 Depth=3
                                        #         Parent Loop BB4_57 Depth=4
                                        #           Parent Loop BB4_59 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-240(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_121
# BB#119:                               # %for.body.491
                                        #   in Loop: Header=BB4_118 Depth=6
	movslq	-240(%rbp), %rax
	movb	-360(%rbp,%rax), %cl
	movslq	-240(%rbp), %rax
	movq	-144(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#120:                               # %for.inc.496
                                        #   in Loop: Header=BB4_118 Depth=6
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB4_118
.LBB4_121:                              # %for.end.498
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-48(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movl	-96(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#122:                               # %for.inc.505
                                        #   in Loop: Header=BB4_59 Depth=5
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB4_59
.LBB4_123:                              # %for.end.507
                                        #   in Loop: Header=BB4_57 Depth=4
	movl	-44(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_125
# BB#124:                               # %if.then.511
                                        #   in Loop: Header=BB4_57 Depth=4
	movl	-292(%rbp), %eax
	imull	-228(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB4_126
.LBB4_125:                              # %if.else.515
                                        #   in Loop: Header=BB4_57 Depth=4
	movl	-92(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
.LBB4_126:                              # %if.end.519
                                        #   in Loop: Header=BB4_57 Depth=4
	jmp	.LBB4_127
.LBB4_127:                              # %for.inc.520
                                        #   in Loop: Header=BB4_57 Depth=4
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB4_57
.LBB4_128:                              # %for.end.522
                                        #   in Loop: Header=BB4_52 Depth=3
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-308(%rbp), %eax
	movl	%eax, -308(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_130
# BB#129:                               # %if.then.528
                                        #   in Loop: Header=BB4_52 Depth=3
	cvtsi2sdl	-308(%rbp), %xmm0
	cvtsi2sdl	-312(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB4_130:                              # %if.end.533
                                        #   in Loop: Header=BB4_52 Depth=3
	jmp	.LBB4_131
.LBB4_131:                              # %for.inc.534
                                        #   in Loop: Header=BB4_52 Depth=3
	movq	-328(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -328(%rbp)
	jmp	.LBB4_52
.LBB4_132:                              # %for.end.536
                                        #   in Loop: Header=BB4_44 Depth=2
	jmp	.LBB4_133
.LBB4_133:                              # %for.inc.537
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-244(%rbp), %eax
	movl	-260(%rbp), %ecx
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-244(%rbp)
	movl	-572(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-260(%rbp), %ecx
	movl	%ecx, -260(%rbp)
	jmp	.LBB4_44
.LBB4_134:                              # %for.end.541
                                        #   in Loop: Header=BB4_42 Depth=1
	jmp	.LBB4_135
.LBB4_135:                              # %for.inc.542
                                        #   in Loop: Header=BB4_42 Depth=1
	movl	-244(%rbp), %eax
	movl	-264(%rbp), %ecx
	movl	%eax, -576(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-244(%rbp)
	movl	-576(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-264(%rbp), %ecx
	movl	%ecx, -264(%rbp)
	jmp	.LBB4_42
.LBB4_136:                              # %for.end.546
	cmpq	$0, -16(%rbp)
	je	.LBB4_138
# BB#137:                               # %if.then.548
	movq	-16(%rbp), %rdi
	movq	-344(%rbp), %rsi
	movl	-292(%rbp), %eax
	imull	-228(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-344(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_139
.LBB4_138:                              # %if.else.550
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-276(%rbp), %esi
	movl	-280(%rbp), %edx
	movl	-284(%rbp), %r8d
	subl	-276(%rbp), %r8d
	movl	-288(%rbp), %r9d
	subl	-280(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -584(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB4_139:                              # %if.end.558
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end4:
	.size	newsprint, .Lfunc_end4-newsprint
	.cfi_endproc

	.align	16, 0x90
	.type	spi_callback,@function
spi_callback:                           # @spi_callback
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
	subq	$80, %rsp
	movabsq	$pvals_ui, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_double_adjustment_update
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$lpi_callback, %rax
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pvals_ui, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	pvals, %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$lpi_callback, %rax
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	spi_callback, .Lfunc_end5-spi_callback
	.cfi_endproc

	.align	16, 0x90
	.type	lpi_callback,@function
lpi_callback:                           # @lpi_callback
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
	subq	$80, %rsp
	movabsq	$pvals_ui, %rax
	addq	$8, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_double_adjustment_update
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$cellsize_callback, %rax
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pvals_ui, %xmm0         # xmm0 = mem[0],zero
	divsd	pvals_ui+8, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$cellsize_callback, %rax
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lpi_callback, .Lfunc_end6-lpi_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cellsize_callback,@function
cellsize_callback:                      # @cellsize_callback
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
	subq	$80, %rsp
	movabsq	$pvals, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_int_adjustment_update
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$lpi_callback, %rax
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	pvals_ui, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	pvals, %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$lpi_callback, %rax
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cellsize_callback, .Lfunc_end7-cellsize_callback
	.cfi_endproc

	.align	16, 0x90
	.type	newsprint_cspace_update,@function
newsprint_cspace_update:                # @newsprint_cspace_update
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, -28(%rbp)
	movl	pvals+4, %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.66, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB8_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB8_12
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -44(%rbp)
	cmpl	$2, -28(%rbp)
	jne	.LBB8_5
# BB#4:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gtk_widget_set_sensitive
.LBB8_5:                                # %if.end.12
	cmpl	$0, -44(%rbp)
	jne	.LBB8_7
# BB#6:                                 # %if.then.14
	jmp	.LBB8_12
.LBB8_7:                                # %if.end.15
	movl	-28(%rbp), %eax
	movl	%eax, pvals+4
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$80, %rdx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx)
	jne	.LBB8_9
# BB#8:                                 # %if.then.18
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	gen_channels
.LBB8_9:                                # %if.end.19
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, 48(%rcx,%rax,8)
	je	.LBB8_11
# BB#10:                                # %if.then.23
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rdi
	callq	gtk_widget_hide
.LBB8_11:                               # %if.end.27
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rdi
	callq	gtk_widget_show
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$80, %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rdi
	callq	preview_update
.LBB8_12:                               # %if.end.40
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	newsprint_cspace_update, .Lfunc_end8-newsprint_cspace_update
	.cfi_endproc

	.align	16, 0x90
	.type	newsprint_defaults_callback,@function
newsprint_defaults_callback:            # @newsprint_defaults_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movl	pvals_ui+16, %eax
	movl	%eax, -28(%rbp)
	movl	$0, pvals_ui+16
	movl	$0, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	cmpl	$4, -32(%rbp)
	jge	.LBB9_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$80, %rcx
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movslq	-32(%rbp), %rax
	movq	cspace_chan_tmpl(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -56(%rbp)
.LBB9_5:                                # %while.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB9_5 Depth=2
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	24(%rcx), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	-56(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -56(%rbp)
	movq	-48(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -48(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB9_5
.LBB9_7:                                # %while.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_9:                                # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, pvals_ui+16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	newsprint_defaults_callback, .Lfunc_end9-newsprint_defaults_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gen_channels,@function
gen_channels:                           # @gen_channels
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -48(%rbp)
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rdi
	addq	$80, %rdi
	shlq	$5, %rdx
	addq	%rdx, %rdi
	movq	%rdi, -40(%rbp)
	movslq	-12(%rbp), %rdx
	movq	cspace_chan_tmpl(,%rdx,8), %rdx
	movq	%rdx, -32(%rbp)
	movl	$0, -52(%rbp)
	callq	gtk_notebook_new
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi,%rdx,8)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi,%rdx,8), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	48(%rdi,%rsi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	48(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	new_channel
	movslq	-52(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	cmpl	$0, -52(%rbp)
	je	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-52(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, 144(%rcx)
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %while.end
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rax, 144(%rdx)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gen_channels, .Lfunc_end10-gen_channels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643176031446892544     # double 255
.LCPI11_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
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
	subq	$3520, %rsp             # imm = 0xDC0
	movabsq	$spotfn_list, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	(%rdi), %ecx
	movl	%ecx, -12(%rbp)
	movl	$48, -40(%rbp)
	movl	$3, -44(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$6, %rdi
	addq	%rdi, %rax
	cmpq	$0, 48(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$48, %esi
	movl	-12(%rbp), %edi
	callq	spot2thresh
	movabsq	$spotfn_list, %rcx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
.LBB11_2:                               # %if.end
	movabsq	$spotfn_list, %rax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -28(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
                                        #       Child Loop BB11_7 Depth 3
                                        #         Child Loop BB11_9 Depth 4
                                        #           Child Loop BB11_11 Depth 5
                                        #             Child Loop BB11_13 Depth 6
                                        #             Child Loop BB11_16 Depth 6
                                        #             Child Loop BB11_19 Depth 6
                                        #             Child Loop BB11_22 Depth 6
	cmpl	$3, -28(%rbp)
	jge	.LBB11_46
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$4, %rax
	leaq	16(%rcx,%rax), %rax
	movq	%rax, -24(%rbp)
	movslq	-28(%rbp), %rax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movsd	spotfn_list+24(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, -69(%rbp)
	movl	$0, -36(%rbp)
.LBB11_5:                               # %for.cond.14
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_7 Depth 3
                                        #         Child Loop BB11_9 Depth 4
                                        #           Child Loop BB11_11 Depth 5
                                        #             Child Loop BB11_13 Depth 6
                                        #             Child Loop BB11_16 Depth 6
                                        #             Child Loop BB11_19 Depth 6
                                        #             Child Loop BB11_22 Depth 6
	cmpl	$33, -36(%rbp)
	jge	.LBB11_44
# BB#6:                                 # %for.body.17
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	$0, -32(%rbp)
.LBB11_7:                               # %for.cond.18
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_9 Depth 4
                                        #           Child Loop BB11_11 Depth 5
                                        #             Child Loop BB11_13 Depth 6
                                        #             Child Loop BB11_16 Depth 6
                                        #             Child Loop BB11_19 Depth 6
                                        #             Child Loop BB11_22 Depth 6
	cmpl	$33, -32(%rbp)
	jge	.LBB11_42
# BB#8:                                 # %for.body.21
                                        #   in Loop: Header=BB11_7 Depth=3
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	$0, -3348(%rbp)
	imull	$3, -32(%rbp), %edx
	movl	%edx, -3368(%rbp)
	imull	$3, -36(%rbp), %edx
	movl	%edx, -3372(%rbp)
	subl	-44(%rbp), %ecx
	movl	%eax, -3376(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3376(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -3356(%rbp)
.LBB11_9:                               # %for.cond.24
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB11_11 Depth 5
                                        #             Child Loop BB11_13 Depth 6
                                        #             Child Loop BB11_16 Depth 6
                                        #             Child Loop BB11_19 Depth 6
                                        #             Child Loop BB11_22 Depth 6
	movl	$2, %eax
	movl	-3356(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -3380(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-3380(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB11_36
# BB#10:                                # %for.body.28
                                        #   in Loop: Header=BB11_9 Depth=4
	movl	$2, %eax
	xorl	%ecx, %ecx
	subl	-44(%rbp), %ecx
	movl	%eax, -3384(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3384(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -3352(%rbp)
.LBB11_11:                              # %for.cond.31
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        #         Parent Loop BB11_9 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB11_13 Depth 6
                                        #             Child Loop BB11_16 Depth 6
                                        #             Child Loop BB11_19 Depth 6
                                        #             Child Loop BB11_22 Depth 6
	movl	$2, %eax
	movl	-3352(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -3388(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-3388(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB11_34
# BB#12:                                # %for.body.35
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	-3368(%rbp), %eax
	addl	-3352(%rbp), %eax
	movl	%eax, -3360(%rbp)
	movl	-3372(%rbp), %eax
	addl	-3356(%rbp), %eax
	movl	%eax, -3364(%rbp)
.LBB11_13:                              # %while.cond
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        #         Parent Loop BB11_9 Depth=4
                                        #           Parent Loop BB11_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	cmpl	$0, -3360(%rbp)
	jge	.LBB11_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB11_13 Depth=6
	movl	-40(%rbp), %eax
	addl	-3360(%rbp), %eax
	movl	%eax, -3360(%rbp)
	jmp	.LBB11_13
.LBB11_15:                              # %while.end
                                        #   in Loop: Header=BB11_11 Depth=5
	jmp	.LBB11_16
.LBB11_16:                              # %while.cond.40
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        #         Parent Loop BB11_9 Depth=4
                                        #           Parent Loop BB11_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	cmpl	$0, -3364(%rbp)
	jge	.LBB11_18
# BB#17:                                # %while.body.43
                                        #   in Loop: Header=BB11_16 Depth=6
	movl	-40(%rbp), %eax
	addl	-3364(%rbp), %eax
	movl	%eax, -3364(%rbp)
	jmp	.LBB11_16
.LBB11_18:                              # %while.end.45
                                        #   in Loop: Header=BB11_11 Depth=5
	jmp	.LBB11_19
.LBB11_19:                              # %while.cond.46
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        #         Parent Loop BB11_9 Depth=4
                                        #           Parent Loop BB11_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-3360(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB11_21
# BB#20:                                # %while.body.49
                                        #   in Loop: Header=BB11_19 Depth=6
	movl	-40(%rbp), %eax
	movl	-3360(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -3360(%rbp)
	jmp	.LBB11_19
.LBB11_21:                              # %while.end.51
                                        #   in Loop: Header=BB11_11 Depth=5
	jmp	.LBB11_22
.LBB11_22:                              # %while.cond.52
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        #         Parent Loop BB11_9 Depth=4
                                        #           Parent Loop BB11_11 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-3364(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB11_24
# BB#23:                                # %while.body.55
                                        #   in Loop: Header=BB11_22 Depth=6
	movl	-40(%rbp), %eax
	movl	-3364(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -3364(%rbp)
	jmp	.LBB11_22
.LBB11_24:                              # %while.end.57
                                        #   in Loop: Header=BB11_11 Depth=5
	movzbl	-69(%rbp), %eax
	movl	-3364(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	-3360(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-56(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB11_32
# BB#25:                                # %if.then.66
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -3392(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3392(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	cmpl	$0, -3352(%rbp)
	movl	%eax, -3396(%rbp)       # 4-byte Spill
	jge	.LBB11_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB11_11 Depth=5
	xorl	%eax, %eax
	subl	-3352(%rbp), %eax
	movl	%eax, -3400(%rbp)       # 4-byte Spill
	jmp	.LBB11_28
.LBB11_27:                              # %cond.false
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	-3352(%rbp), %eax
	movl	%eax, -3400(%rbp)       # 4-byte Spill
.LBB11_28:                              # %cond.end
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	-3400(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	movl	-3396(%rbp), %edx       # 4-byte Reload
	subl	%eax, %edx
	movl	-44(%rbp), %eax
	movl	%edx, -3404(%rbp)       # 4-byte Spill
	cltd
	idivl	%ecx
	addl	$1, %eax
	cmpl	$0, -3356(%rbp)
	movl	%eax, -3408(%rbp)       # 4-byte Spill
	jge	.LBB11_30
# BB#29:                                # %cond.true.77
                                        #   in Loop: Header=BB11_11 Depth=5
	xorl	%eax, %eax
	subl	-3356(%rbp), %eax
	movl	%eax, -3412(%rbp)       # 4-byte Spill
	jmp	.LBB11_31
.LBB11_30:                              # %cond.false.79
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	-3356(%rbp), %eax
	movl	%eax, -3412(%rbp)       # 4-byte Spill
.LBB11_31:                              # %cond.end.80
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	-3412(%rbp), %eax       # 4-byte Reload
	movl	-3408(%rbp), %ecx       # 4-byte Reload
	subl	%eax, %ecx
	movl	-3404(%rbp), %eax       # 4-byte Reload
	imull	%ecx, %eax
	imull	$255, %eax, %eax
	addl	-3348(%rbp), %eax
	movl	%eax, -3348(%rbp)
.LBB11_32:                              # %if.end.86
                                        #   in Loop: Header=BB11_11 Depth=5
	jmp	.LBB11_33
.LBB11_33:                              # %for.inc
                                        #   in Loop: Header=BB11_11 Depth=5
	movl	-3352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3352(%rbp)
	jmp	.LBB11_11
.LBB11_34:                              # %for.end
                                        #   in Loop: Header=BB11_9 Depth=4
	jmp	.LBB11_35
.LBB11_35:                              # %for.inc.87
                                        #   in Loop: Header=BB11_9 Depth=4
	movl	-3356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3356(%rbp)
	jmp	.LBB11_9
.LBB11_36:                              # %for.end.89
                                        #   in Loop: Header=BB11_7 Depth=3
	movl	$16, %eax
	movl	$2, %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -3416(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-44(%rbp), %esi
	movl	%eax, -3420(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-3420(%rbp), %esi       # 4-byte Reload
	imull	%eax, %esi
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-44(%rbp), %edi
	movl	%eax, -3424(%rbp)       # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	subl	$0, %eax
	movl	-3424(%rbp), %ecx       # 4-byte Reload
	imull	%eax, %ecx
	imull	%ecx, %esi
	movl	-3348(%rbp), %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	%esi
	movl	%eax, -3348(%rbp)
	movl	-32(%rbp), %eax
	cltd
	movl	-3416(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB11_38
# BB#37:                                # %lor.lhs.false
                                        #   in Loop: Header=BB11_7 Depth=3
	movl	$16, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -3428(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3428(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_39
.LBB11_38:                              # %if.then.111
                                        #   in Loop: Header=BB11_7 Depth=3
	imull	$33, -36(%rbp), %eax
	addl	-32(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	$0, -3344(%rbp,%rcx)
	imull	$33, -36(%rbp), %eax
	addl	-32(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$0, -3344(%rbp,%rcx)
	imull	$33, -36(%rbp), %eax
	addl	-32(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	$-1, -3344(%rbp,%rcx)
	jmp	.LBB11_40
.LBB11_39:                              # %if.else
                                        #   in Loop: Header=BB11_7 Depth=3
	movl	-3348(%rbp), %eax
	movb	%al, %cl
	imull	$33, -36(%rbp), %eax
	addl	-32(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movb	%cl, -3344(%rbp,%rdx)
	movl	-3348(%rbp), %eax
	movb	%al, %cl
	imull	$33, -36(%rbp), %eax
	addl	-32(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%cl, -3344(%rbp,%rdx)
	movl	-3348(%rbp), %eax
	movb	%al, %cl
	imull	$33, -36(%rbp), %eax
	addl	-32(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movb	%cl, -3344(%rbp,%rdx)
.LBB11_40:                              # %if.end.151
                                        #   in Loop: Header=BB11_7 Depth=3
	jmp	.LBB11_41
.LBB11_41:                              # %for.inc.152
                                        #   in Loop: Header=BB11_7 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB11_7
.LBB11_42:                              # %for.end.154
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_43
.LBB11_43:                              # %for.inc.155
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_5
.LBB11_44:                              # %for.end.157
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -3440(%rbp)       # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-3440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$33, %edx
	movl	$99, %r8d
	leaq	-3344(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -3448(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -3452(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-3452(%rbp), %r9d       # 4-byte Reload
	movl	%ecx, -3456(%rbp)       # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -3460(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-3456(%rbp), %r9d       # 4-byte Reload
	movq	-3448(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$99, 8(%rsp)
	callq	gimp_preview_area_draw
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.89, %rdx
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movabsq	$spotfn_list, %rax
	leaq	-68(%rbp), %rdi
	movslq	-28(%rbp), %r10
	movslq	-12(%rbp), %r11
	shlq	$6, %r11
	addq	%r11, %rax
	mulsd	24(%rax,%r10,8), %xmm0
	movq	%rsi, -3472(%rbp)       # 8-byte Spill
	movq	%rdx, -3480(%rbp)       # 8-byte Spill
	movq	%rdi, -3488(%rbp)       # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-3488(%rbp), %rdi       # 8-byte Reload
	movq	-3472(%rbp), %rsi       # 8-byte Reload
	movq	-3480(%rbp), %rdx       # 8-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -3492(%rbp)       # 4-byte Spill
	movq	%rdx, -3504(%rbp)       # 8-byte Spill
	callq	gtk_label_get_type
	movq	-3504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
# BB#45:                                # %for.inc.173
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_3
.LBB11_46:                              # %for.end.175
	addq	$3520, %rsp             # imm = 0xDC0
	popq	%rbp
	retq
.Lfunc_end11:
	.size	preview_update, .Lfunc_end11-preview_update
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	-4587338432941916160    # double -90
.LCPI12_2:
	.quad	4636033603912859648     # double 90
.LCPI12_3:
	.quad	4607182418800017408     # double 1
.LCPI12_4:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	new_channel,@function
new_channel:                            # @new_channel
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
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp45:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	callq	new_preview
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -88(%rbp)
	callq	gtk_box_new
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.76, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$125, %r8d
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_4, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	(%rdi), %xmm5           # xmm5 = mem[0],zero
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-168(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-176(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-176(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	-88(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.77, %rsi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.49, %rsi
	movabsq	$angle_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
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
	movss	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm1, -228(%rbp)       # 4-byte Spill
	movss	-228(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-228(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.79, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget
	callq	gimp_int_combo_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$spotfn_list, %rsi
	movq	-88(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	%rsi, -80(%rbp)
	movl	$0, -92(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-92(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%edx, -300(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_int_combo_box_append
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -80(%rbp)
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -92(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.80, %rsi
	movabsq	$newsprint_menu_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-88(%rbp), %r10
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.80, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rcx
	movq	72(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$0, -92(%rbp)
.LBB12_5:                               # %for.cond.69
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -92(%rbp)
	jge	.LBB12_8
# BB#6:                                 # %for.body.70
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %ecx
	movl	$4, %edx
	movslq	-92(%rbp), %rsi
	movq	-88(%rbp), %rdi
	addq	$16, %rdi
	shlq	$4, %rsi
	addq	%rsi, %rdi
	movq	(%rdi), %rsi
	movl	-92(%rbp), %r10d
	movl	-92(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$6, %ecx
	movl	$4, %edx
	xorl	%r10d, %r10d
	movslq	-92(%rbp), %rsi
	movq	-88(%rbp), %rdi
	addq	$16, %rdi
	shlq	$4, %rsi
	addq	%rsi, %rdi
	movq	8(%rdi), %rsi
	movl	-92(%rbp), %r11d
	movl	-92(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	movl	%ebx, %ecx
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
# BB#7:                                 # %for.inc.80
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB12_5
.LBB12_8:                               # %for.end.82
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	callq	preview_update
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_menu_item_new_with_label
	movq	-88(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-88(%rbp), %rax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	new_channel, .Lfunc_end12-new_channel
	.cfi_endproc

	.align	16, 0x90
	.type	new_preview,@function
new_preview:                            # @new_preview
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
	subq	$48, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$152, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -36(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	callq	gimp_preview_area_new
	movl	$33, %ecx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.81, %rsi
	movabsq	$preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.82, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	%rax, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	new_preview, .Lfunc_end13-new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	angle_callback,@function
angle_callback:                         # @angle_callback
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.77, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_double_adjustment_update
	cmpl	$0, pvals_ui+16
	je	.LBB14_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, angle_callback.in_progress
	jne	.LBB14_6
# BB#2:                                 # %if.then
	movl	$1, angle_callback.in_progress
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB14_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB14_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_3
.LBB14_5:                               # %while.end
	movl	$0, angle_callback.in_progress
.LBB14_6:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	angle_callback, .Lfunc_end14-angle_callback
	.cfi_endproc

	.align	16, 0x90
	.type	newsprint_menu_callback,@function
newsprint_menu_callback:                # @newsprint_menu_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	cmpl	$0, newsprint_menu_callback.in_progress
	je	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.88, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB15_10
.LBB15_2:                               # %if.end
	movl	$1, newsprint_menu_callback.in_progress
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	%ecx, (%rsi)
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	preview_update
	cmpl	$0, pvals_ui+16
	je	.LBB15_9
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB15_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB15_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	(%rdi), %esi
	movl	%esi, -44(%rbp)
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%esi, (%rdi)
	movl	-44(%rbp), %esi
	cmpl	-28(%rbp), %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB15_7
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	preview_update
.LBB15_7:                               # %if.end.13
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB15_4
.LBB15_8:                               # %while.end
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.15
	movl	$0, newsprint_menu_callback.in_progress
.LBB15_10:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	newsprint_menu_callback, .Lfunc_end15-newsprint_menu_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	spot_round,@function
spot_round:                             # @spot_round
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI16_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	spot_round, .Lfunc_end16-spot_round
	.cfi_endproc

	.align	16, 0x90
	.type	spot_line,@function
spot_line:                              # @spot_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	ucomisd	-16(%rbp), %xmm2
	jbe	.LBB17_2
# BB#1:                                 # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB17_3:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end17:
	.size	spot_line, .Lfunc_end17-spot_line
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4616189618054758400     # double 4
.LCPI18_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	spot_diamond,@function
spot_diamond:                           # @spot_diamond
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	ucomisd	-8(%rbp), %xmm2
	jbe	.LBB18_2
# BB#1:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB18_3:                               # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	-16(%rbp), %xmm1
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jbe	.LBB18_5
# BB#4:                                 # %cond.true.2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB18_6
.LBB18_5:                               # %cond.false.4
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB18_6:                               # %cond.end.5
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	ucomisd	-24(%rbp), %xmm1
	jb	.LBB18_8
# BB#7:                                 # %cond.true.8
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false.10
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_2, %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	mulsd	-24(%rbp), %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)        # 8-byte Spill
.LBB18_9:                               # %cond.end.18
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	spot_diamond, .Lfunc_end18-spot_diamond
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	spot_PSsquare,@function
spot_PSsquare:                          # @spot_PSsquare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	ucomisd	-8(%rbp), %xmm2
	jbe	.LBB19_2
# BB#1:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB19_3:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB19_5
# BB#4:                                 # %cond.true.2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false.4
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB19_6:                               # %cond.end.5
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_8
# BB#7:                                 # %cond.true.8
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	jmp	.LBB19_9
.LBB19_8:                               # %cond.false.16
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB19_9:                               # %cond.end.21
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end19:
	.size	spot_PSsquare, .Lfunc_end19-spot_PSsquare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4604930618986332160     # double 0.75
.LCPI20_1:
	.quad	4608218246714312622     # double 1.23
.LCPI20_2:
	.quad	4607182418800017408     # double 1
.LCPI20_3:
	.quad	4605020690978879570     # double 0.76000000000000001
	.text
	.align	16, 0x90
	.type	spot_PSdiamond,@function
spot_PSdiamond:                         # @spot_PSdiamond
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	ucomisd	-8(%rbp), %xmm2
	jbe	.LBB20_2
# BB#1:                                 # %cond.true
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB20_3:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB20_5
# BB#4:                                 # %cond.true.2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB20_6
.LBB20_5:                               # %cond.false.4
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB20_6:                               # %cond.end.5
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.LBB20_8
# BB#7:                                 # %cond.true.8
	movsd	.LCPI20_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB20_12
.LBB20_8:                               # %cond.false.12
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_10
# BB#9:                                 # %cond.true.15
	movsd	.LCPI20_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_3, %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false.19
	movsd	.LCPI20_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
.LBB20_11:                              # %cond.end.28
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB20_12:                              # %cond.end.30
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end20:
	.size	spot_PSdiamond, .Lfunc_end20-spot_PSdiamond
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4643140847074803712     # double 254
.LCPI21_1:
	.quad	4607182418800017408     # double 1
.LCPI21_2:
	.quad	4611686018427387904     # double 2
.LCPI21_3:
	.quad	4602678819172646912     # double 0.5
.LCPI21_4:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	spot2thresh,@function
spot2thresh:                            # @spot2thresh
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
	subq	$112, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movabsq	$spotfn_list, %rdx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -72(%rbp)
	movslq	-4(%rbp), %r8
	shlq	$6, %r8
	addq	%r8, %rdx
	movl	56(%rdx), %eax
	movl	%eax, -76(%rbp)
	movslq	-72(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movl	$16, %r9d
	movl	%r9d, %esi
	movabsq	$spotfn_list, %rcx
	movq	%rax, -48(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	8(%rcx), %rax
	movq	%rax, -40(%rbp)
	movslq	-72(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB21_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$0, -60(%rbp)
.LBB21_3:                               # %for.cond.7
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB21_12
# BB#4:                                 # %for.body.10
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	.LCPI21_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_3, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -16(%rbp)
	cvtsi2sdl	-64(%rbp), %xmm2
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movq	-40(%rbp), %rcx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	*%rcx
	movsd	.LCPI21_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB21_10
.LBB21_6:                               # %cond.false
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	.LCPI21_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB21_8
# BB#7:                                 # %cond.true.26
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	.LCPI21_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB21_9
.LBB21_8:                               # %cond.false.27
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB21_9:                               # %cond.end
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB21_10:                              # %cond.end.28
                                        #   in Loop: Header=BB21_3 Depth=2
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	-68(%rbp), %eax
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	-56(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB21_3
.LBB21_12:                              # %for.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_13
.LBB21_13:                              # %for.inc.35
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB21_1
.LBB21_14:                              # %for.end.37
	cmpl	$0, -76(%rbp)
	jne	.LBB21_16
# BB#15:                                # %if.then
	movl	$16, %eax
	movl	%eax, %edx
	movabsq	$order_cmp, %rcx
	movq	-56(%rbp), %rsi
	movslq	-72(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	qsort
.LBB21_16:                              # %if.end
	movl	$0, -68(%rbp)
.LBB21_17:                              # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB21_23
# BB#18:                                # %for.body.42
                                        #   in Loop: Header=BB21_17 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB21_20
# BB#19:                                # %if.then.44
                                        #   in Loop: Header=BB21_17 Depth=1
	movslq	-68(%rbp), %rax
	movq	-56(%rbp), %rcx
	shlq	$4, %rax
	movsd	8(%rcx,%rax), %xmm0     # xmm0 = mem[0],zero
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	-56(%rbp), %rax
	movslq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
	jmp	.LBB21_21
.LBB21_20:                              # %if.else
                                        #   in Loop: Header=BB21_17 Depth=1
	imull	$255, -68(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movb	%al, %cl
	movslq	-68(%rbp), %rsi
	shlq	$4, %rsi
	addq	-56(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB21_21:                              # %if.end.63
                                        #   in Loop: Header=BB21_17 Depth=1
	jmp	.LBB21_22
.LBB21_22:                              # %for.inc.64
                                        #   in Loop: Header=BB21_17 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB21_17
.LBB21_23:                              # %for.end.66
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	spot2thresh, .Lfunc_end21-spot2thresh
	.cfi_endproc

	.align	16, 0x90
	.type	order_cmp,@function
order_cmp:                              # @order_cmp
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB22_3
.LBB22_2:                               # %cond.false
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	ucomisd	8(%rdx), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB22_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end22:
	.size	order_cmp, .Lfunc_end22-order_cmp
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.size	query.args, 360

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
	.asciz	"cell-width"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Screen cell width in pixels"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"colorspace"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Separate to { GRAYSCALE (0), RGB (1), CMYK (2), LUMINANCE (3) }"
	.size	.L.str.9, 64

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"k-pullout"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Percentage of black to pullout (CMYK only)"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gry-ang"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Grey/black screen angle (degrees)"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gry-spotfn"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Grey/black spot function { DOTS (0), LINES (1), DIAMONDS (2), EUCLIDIAN-DOT (3), PS-DIAMONDS (4) }"
	.size	.L.str.15, 99

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"red-ang"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Red/cyan screen angle (degrees)"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"red-spotfn"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Red/cyan spot function (values as gry-spotfn)"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"grn-ang"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Green/magenta screen angle (degrees)"
	.size	.L.str.21, 37

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"grn-spotfn"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Green/magenta spot function (values as gry-spotfn)"
	.size	.L.str.23, 51

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"blu-ang"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Blue/yellow screen angle (degrees)"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"blu-spotfn"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Blue/yellow spot function (values as gry-spotfn)"
	.size	.L.str.27, 49

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"oversample"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"how many times to oversample spot fn"
	.size	.L.str.29, 37

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-newsprint"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Halftone the image to give newspaper-like effect"
	.size	.L.str.31, 49

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Halftone the image, trading off resolution to represent colors or grey levels using the process described both in the PostScript language definition, and also by Robert Ulichney, \"Digital halftoning\", MIT Press, 1987."
	.size	.L.str.32, 218

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Austin Donnelly"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"1998 (v0.60)"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Newsprin_t..."
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.37, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"UTF-8"
	.size	.L.str.39, 6

	.type	pvals,@object           # @pvals
	.local	pvals
	.comm	pvals,80,8
	.type	factory_defaults,@object # @factory_defaults
	.section	.rodata,"a",@progbits
	.align	8
factory_defaults:
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	100                     # 0x64
	.zero	4
	.quad	4631530004285489152     # double 45
	.long	0                       # 0x0
	.zero	4
	.quad	4624633867356078080     # double 15
	.long	0                       # 0x0
	.zero	4
	.quad	4634978072750194688     # double 75
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	factory_defaults, 80

	.type	pvals_ui,@object        # @pvals_ui
	.local	pvals_ui
	.comm	pvals_ui,24,8
	.type	factory_defaults_ui,@object # @factory_defaults_ui
	.align	8
factory_defaults_ui:
	.quad	4634766966517661696     # double 72
	.quad	4619792497756654797     # double 7.2000000000000002
	.long	0                       # 0x0
	.zero	4
	.size	factory_defaults_ui, 24

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"plug-in-newsprint-ui"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Newsprint"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"newsprint"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-newsprint"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-cancel"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-ok"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"invalidated"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Resolution"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Input SPI:"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"value-changed"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"O_utput LPI:"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"C_ell size:"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Screen"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"B_lack pullout (%):"
	.size	.L.str.53, 20

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Separate to:"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_RGB"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"dialog"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"preview"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"toggled"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"C_MYK"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"I_ntensity"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_Lock channels"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Factory Defaults"
	.size	.L.str.62, 18

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"clicked"
	.size	.L.str.63, 8

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Antialiasing"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"O_versample:"
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"newsprint: cspace_update: no state, can't happen!\n"
	.size	.L.str.66, 51

	.type	cspace_chan_tmpl,@object # @cspace_chan_tmpl
	.data
	.align	16
cspace_chan_tmpl:
	.quad	grey_tmpl
	.quad	rgb_tmpl
	.quad	cmyk_tmpl
	.quad	luminance_tmpl
	.size	cspace_chan_tmpl, 32

	.type	grey_tmpl,@object       # @grey_tmpl
	.section	.rodata,"a",@progbits
	.align	16
grey_tmpl:
	.quad	.L.str.67
	.quad	pvals+16
	.quad	pvals+24
	.quad	factory_defaults+16
	.quad	factory_defaults+24
	.zero	40
	.size	grey_tmpl, 80

	.type	rgb_tmpl,@object        # @rgb_tmpl
	.align	16
rgb_tmpl:
	.quad	.L.str.68
	.quad	pvals+32
	.quad	pvals+40
	.quad	factory_defaults+32
	.quad	factory_defaults+40
	.quad	.L.str.69
	.quad	pvals+48
	.quad	pvals+56
	.quad	factory_defaults+48
	.quad	factory_defaults+56
	.quad	.L.str.70
	.quad	pvals+64
	.quad	pvals+72
	.quad	factory_defaults+64
	.quad	factory_defaults+72
	.zero	40
	.size	rgb_tmpl, 160

	.type	cmyk_tmpl,@object       # @cmyk_tmpl
	.align	16
cmyk_tmpl:
	.quad	.L.str.71
	.quad	pvals+32
	.quad	pvals+40
	.quad	factory_defaults+32
	.quad	factory_defaults+40
	.quad	.L.str.72
	.quad	pvals+48
	.quad	pvals+56
	.quad	factory_defaults+48
	.quad	factory_defaults+56
	.quad	.L.str.73
	.quad	pvals+64
	.quad	pvals+72
	.quad	factory_defaults+64
	.quad	factory_defaults+72
	.quad	.L.str.74
	.quad	pvals+16
	.quad	pvals+24
	.quad	factory_defaults+16
	.quad	factory_defaults+24
	.zero	40
	.size	cmyk_tmpl, 200

	.type	luminance_tmpl,@object  # @luminance_tmpl
	.align	16
luminance_tmpl:
	.quad	.L.str.75
	.quad	pvals+16
	.quad	pvals+24
	.quad	factory_defaults+16
	.quad	factory_defaults+24
	.zero	40
	.size	luminance_tmpl, 80

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"_Grey"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"R_ed"
	.size	.L.str.68, 5

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"_Green"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"_Blue"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"C_yan"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Magen_ta"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"_Yellow"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"_Black"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Luminance"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"_Angle:"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"angle"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"label"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"_Spot function:"
	.size	.L.str.79, 16

	.type	spotfn_list,@object     # @spotfn_list
	.data
	.align	16
spotfn_list:
	.quad	.L.str.83
	.quad	spot_round
	.quad	0
	.quad	4597094355634707497     # double 2.200000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4606281698874543309     # double 9.000000e-01
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.84
	.quad	spot_line
	.quad	0
	.quad	4594572339843380019     # double 1.500000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4605380978949069210     # double 8.000000e-01
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.85
	.quad	spot_diamond
	.quad	0
	.quad	4594572339843380019     # double 1.500000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4605380978949069210     # double 8.000000e-01
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.86
	.quad	spot_PSsquare
	.quad	0
	.quad	4594572339843380019     # double 1.500000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4606281698874543309     # double 9.000000e-01
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.87
	.quad	spot_PSdiamond
	.quad	0
	.quad	4594572339843380019     # double 1.500000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4606281698874543309     # double 9.000000e-01
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.zero	64
	.size	spotfn_list, 384

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"changed"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"size-allocate"
	.size	.L.str.81, 14

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.zero	1
	.size	.L.str.82, 1

	.type	angle_callback.in_progress,@object # @angle_callback.in_progress
	.local	angle_callback.in_progress
	.comm	angle_callback.in_progress,4,4
	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Round"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Line"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Diamond"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"PS Square (Euclidean Dot)"
	.size	.L.str.86, 26

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"PS Diamond"
	.size	.L.str.87, 11

	.type	newsprint_menu_callback.in_progress,@object # @newsprint_menu_callback.in_progress
	.local	newsprint_menu_callback.in_progress
	.comm	newsprint_menu_callback.in_progress,4,4
	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"newsprint_menu_callback: unexpected recursion: can't happen\n"
	.size	.L.str.88, 61

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%2d%%"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"newsprint: %d is not a valid spot type\n"
	.size	.L.str.90, 40

	.type	cspace_nchans,@object   # @cspace_nchans
	.section	.rodata,"a",@progbits
	.align	16
cspace_nchans:
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	1                       # 0x1
	.size	cspace_nchans, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
