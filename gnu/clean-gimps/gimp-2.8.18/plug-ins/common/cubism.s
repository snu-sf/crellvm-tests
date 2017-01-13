	.text
	.file	"cubism.bc"
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
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
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	16(%rax), %ecx
	movl	20(%rax), %edi
	imull	%edi, %ecx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_30
.LBB1_30:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_31
.LBB1_31:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	cubism_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_29
.LBB1_5:                                # %if.end
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb.10
	cmpl	$6, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.12
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.13
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, cvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, cvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, cvals+16
.LBB1_10:                               # %if.end.25
	cmpl	$3, -56(%rbp)
	jne	.LBB1_14
# BB#11:                                # %land.lhs.true
	cmpl	$0, cvals+16
	jl	.LBB1_13
# BB#12:                                # %lor.lhs.false
	cmpl	$1, cvals+16
	jle	.LBB1_14
.LBB1_13:                               # %if.then.32
	movl	$1, -56(%rbp)
.LBB1_14:                               # %if.end.33
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.34
	movabsq	$.L.str.12, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_25
# BB#18:                                # %land.lhs.true.38
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#19:                                # %lor.lhs.false.41
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_25
.LBB1_20:                               # %if.then.45
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	cubism
	cmpl	$1, -52(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.48
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.50
	cmpl	$0, -52(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.53
	movabsq	$.L.str.12, %rdi
	movabsq	$cvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.55
	jmp	.LBB1_28
.LBB1_25:                               # %if.else
	cmpl	$3, -56(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.58
	movl	$0, -56(%rbp)
.LBB1_27:                               # %if.end.59
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.60
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_29:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
.LCPI3_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	cubism_dialog,@function
cubism_dialog:                          # @cubism_dialog
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
	subq	$416, %rsp              # imm = 0x1A0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.22, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.23, %rdi
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
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$cvals, %rax
	addq	$20, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_drawable_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.27, %rsi
	movabsq	$cubism, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$125, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_0, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	cvals, %xmm1            # xmm1 = mem[0],zero
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$cvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$125, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movsd	cvals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$cvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$cvals, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, cvals+16
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cubism_dialog, .Lfunc_end3-cubism_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4611686018427387904     # double 2
.LCPI4_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_3:
	.quad	4620693217682128896     # double 8
.LCPI4_4:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	cubism,@function
cubism:                                 # @cubism
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -256(%rbp)
	callq	g_rand_new
	movq	%rax, -288(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -264(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -260(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-168(%rbp), %eax
	imull	-164(%rbp), %eax
	imull	-260(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -256(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	leaq	-168(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.7
	jmp	.LBB4_60
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.8
	movl	-148(%rbp), %eax
	addl	-164(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-152(%rbp), %eax
	addl	-168(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, cvals+16
	jne	.LBB4_7
# BB#6:                                 # %if.then.11
	movb	$0, -65(%rbp)
	movb	$0, -66(%rbp)
	movb	$0, -67(%rbp)
	movb	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.15
	leaq	-320(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-320(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-320(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_get_color_uchar
.LBB4_8:                                # %if.end.18
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	-156(%rbp), %eax
	subl	-148(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	cvals, %xmm1
	subsd	%xmm0, %xmm1
	divsd	cvals, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -128(%rbp)
	movl	-160(%rbp), %eax
	subl	-152(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	cvals, %xmm1
	subsd	%xmm0, %xmm1
	divsd	cvals, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -124(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_18
# BB#9:                                 # %if.then.30
	movl	$0, -132(%rbp)
.LBB4_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
	movl	-132(%rbp), %eax
	movl	-164(%rbp), %ecx
	imull	-168(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_17
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	$0, -140(%rbp)
.LBB4_12:                               # %for.cond.34
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-140(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.LBB4_15
# BB#13:                                # %for.body.37
                                        #   in Loop: Header=BB4_12 Depth=2
	movslq	-140(%rbp), %rax
	movb	-68(%rbp,%rax), %cl
	movl	-132(%rbp), %edx
	imull	-260(%rbp), %edx
	addl	-140(%rbp), %edx
	movslq	%edx, %rax
	movq	-256(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB4_12
.LBB4_15:                               # %for.end
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %for.inc.43
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_10
.LBB4_17:                               # %for.end.45
	jmp	.LBB4_30
.LBB4_18:                               # %if.else.46
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-64(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	subl	-148(%rbp), %r9d
	movl	-160(%rbp), %r10d
	subl	-152(%rbp), %r10d
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -280(%rbp)
.LBB4_19:                               # %for.cond.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_21 Depth 2
                                        #       Child Loop BB4_23 Depth 3
	cmpq	$0, -280(%rbp)
	je	.LBB4_29
# BB#20:                                # %for.body.55
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -256(%rbp)
.LBB4_21:                               # %while.cond
                                        #   Parent Loop BB4_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_23 Depth 3
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, %eax
	je	.LBB4_27
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	$0, -132(%rbp)
.LBB4_23:                               # %for.cond.58
                                        #   Parent Loop BB4_19 Depth=1
                                        #     Parent Loop BB4_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.LBB4_26
# BB#24:                                # %for.body.61
                                        #   in Loop: Header=BB4_23 Depth=3
	movslq	-132(%rbp), %rax
	movb	-68(%rbp,%rax), %cl
	movq	-256(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -256(%rbp)
	movb	%cl, (%rax)
# BB#25:                                # %for.inc.64
                                        #   in Loop: Header=BB4_23 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_23
.LBB4_26:                               # %for.end.66
                                        #   in Loop: Header=BB4_21 Depth=2
	jmp	.LBB4_21
.LBB4_27:                               # %while.end
                                        #   in Loop: Header=BB4_19 Depth=1
	jmp	.LBB4_28
.LBB4_28:                               # %for.inc.67
                                        #   in Loop: Header=BB4_19 Depth=1
	movq	-280(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -280(%rbp)
	jmp	.LBB4_19
.LBB4_29:                               # %for.end.69
	movq	$0, -256(%rbp)
.LBB4_30:                               # %if.end.70
	movl	$4, %eax
	movl	%eax, %esi
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	-128(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	movl	%eax, -144(%rbp)
	movslq	-144(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -272(%rbp)
	movl	$0, -132(%rbp)
.LBB4_31:                               # %for.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB4_34
# BB#32:                                # %for.body.79
                                        #   in Loop: Header=BB4_31 Depth=1
	movl	-132(%rbp), %eax
	movslq	-132(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#33:                                # %for.inc.82
                                        #   in Loop: Header=BB4_31 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_31
.LBB4_34:                               # %for.end.84
	movl	-144(%rbp), %edi
	movq	-272(%rbp), %rsi
	callq	randomize_indices
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-156(%rbp), %r8d
	subl	-148(%rbp), %r8d
	movl	-160(%rbp), %r9d
	subl	-152(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$0, -140(%rbp)
.LBB4_35:                               # %for.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movl	-140(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB4_57
# BB#36:                                # %for.body.90
                                        #   in Loop: Header=BB4_35 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movslq	-140(%rbp), %rax
	movq	-272(%rbp), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	-128(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
	cltd
	movl	-340(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -132(%rbp)
	movslq	-140(%rbp), %rcx
	movq	-272(%rbp), %rdi
	movl	(%rdi,%rcx,4), %eax
	movl	-128(%rbp), %r8d
	addl	$1, %r8d
	cltd
	idivl	%r8d
	movl	%edx, -136(%rbp)
	cvtsi2sdl	-136(%rbp), %xmm3
	mulsd	cvals, %xmm3
	movsd	cvals, %xmm4            # xmm4 = mem[0],zero
	divsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movq	-288(%rbp), %rdi
	movsd	cvals, %xmm2            # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	movsd	%xmm3, -352(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	-352(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	subsd	%xmm0, %xmm4
	cvtsi2sdl	-148(%rbp), %xmm0
	addsd	%xmm0, %xmm4
	movsd	%xmm4, -80(%rbp)
	cvtsi2sdl	-132(%rbp), %xmm0
	mulsd	cvals, %xmm0
	movsd	cvals, %xmm4            # xmm4 = mem[0],zero
	divsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm0
	movq	-288(%rbp), %rdi
	movsd	cvals, %xmm3            # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	-360(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	cvtsi2sdl	-152(%rbp), %xmm0
	addsd	%xmm0, %xmm3
	movsd	%xmm3, -88(%rbp)
	movsd	cvals, %xmm0            # xmm0 = mem[0],zero
	movq	-288(%rbp), %rdi
	movsd	cvals, %xmm3            # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	-368(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm4
	movsd	cvals, %xmm0            # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm4
	mulsd	cvals+8, %xmm4
	movsd	%xmm4, -96(%rbp)
	movsd	cvals, %xmm0            # xmm0 = mem[0],zero
	movq	-288(%rbp), %rdi
	movsd	cvals, %xmm3            # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	-376(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm4
	movsd	cvals, %xmm0            # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm4
	mulsd	cvals+8, %xmm4
	movsd	%xmm4, -104(%rbp)
	movq	-288(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	leaq	-240(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)
	callq	polygon_reset
	leaq	-240(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rcx
	movd	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rcx
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rcx
	movd	%rcx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	polygon_add_point
	leaq	-240(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rcx
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rcx
	movd	%rcx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	polygon_add_point
	leaq	-240(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	polygon_add_point
	leaq	-240(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	xorq	%r9, %rcx
	movd	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	polygon_add_point
	leaq	-240(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	polygon_rotate
	leaq	-240(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	polygon_translate
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-156(%rbp), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB4_35 Depth=1
	movl	-156(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	jmp	.LBB4_42
.LBB4_38:                               # %cond.false
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-148(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_40
# BB#39:                                # %cond.true.150
                                        #   in Loop: Header=BB4_35 Depth=1
	cvtsi2sdl	-148(%rbp), %xmm0
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.152
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
.LBB4_41:                               # %cond.end
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
.LBB4_42:                               # %cond.end.153
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -116(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-160(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_44
# BB#43:                                # %cond.true.160
                                        #   in Loop: Header=BB4_35 Depth=1
	movl	-160(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB4_48
.LBB4_44:                               # %cond.false.163
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-152(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_46
# BB#45:                                # %cond.true.167
                                        #   in Loop: Header=BB4_35 Depth=1
	cvtsi2sdl	-152(%rbp), %xmm0
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	jmp	.LBB4_47
.LBB4_46:                               # %cond.false.169
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
.LBB4_47:                               # %cond.end.170
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
.LBB4_48:                               # %cond.end.172
                                        #   in Loop: Header=BB4_35 Depth=1
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rdi
	leaq	-244(%rbp), %rsi
	cvttsd2si	%xmm0, %eax
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	cmpl	$0, -264(%rbp)
	je	.LBB4_50
# BB#49:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_35 Depth=1
	movl	-260(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movzbl	-244(%rbp,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB4_51
.LBB4_50:                               # %if.then.182
                                        #   in Loop: Header=BB4_35 Depth=1
	leaq	-240(%rbp), %rdi
	leaq	-244(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-256(%rbp), %r8
	callq	fill_poly_color
.LBB4_51:                               # %if.end.184
                                        #   in Loop: Header=BB4_35 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_55
# BB#52:                                # %if.then.186
                                        #   in Loop: Header=BB4_35 Depth=1
	movl	$8, %eax
	movl	-140(%rbp), %ecx
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-412(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_54
# BB#53:                                # %if.then.190
                                        #   in Loop: Header=BB4_35 Depth=1
	cvtsi2sdl	-140(%rbp), %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB4_54:                               # %if.end.195
                                        #   in Loop: Header=BB4_35 Depth=1
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.196
                                        #   in Loop: Header=BB4_35 Depth=1
	jmp	.LBB4_56
.LBB4_56:                               # %for.inc.197
                                        #   in Loop: Header=BB4_35 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB4_35
.LBB4_57:                               # %for.end.199
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-288(%rbp), %rdi
	callq	g_rand_free
	cmpq	$0, -16(%rbp)
	je	.LBB4_59
# BB#58:                                # %if.then.201
	movq	-16(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movl	-164(%rbp), %eax
	imull	-260(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-256(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_60
.LBB4_59:                               # %if.else.203
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-148(%rbp), %esi
	movl	-152(%rbp), %edx
	movl	-156(%rbp), %r8d
	subl	-148(%rbp), %r8d
	movl	-160(%rbp), %r9d
	subl	-152(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -424(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB4_60:                               # %if.end.211
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cubism, .Lfunc_end4-cubism
	.cfi_endproc

	.align	16, 0x90
	.type	randomize_indices,@function
randomize_indices:                      # @randomize_indices
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
	movq	%rsi, -16(%rbp)
	callq	g_rand_new
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	imull	$5, -4(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movl	-4(%rbp), %edx
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rdi
	movl	-4(%rbp), %edx
	callq	g_rand_int_range
	movl	%eax, -28(%rbp)
	movslq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, -32(%rbp)
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	(%rdi,%rcx,4), %eax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
	movl	-32(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-40(%rbp), %rdi
	callq	g_rand_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	randomize_indices, .Lfunc_end5-randomize_indices
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_reset,@function
polygon_reset:                          # @polygon_reset
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	polygon_reset, .Lfunc_end6-polygon_reset
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_add_point,@function
polygon_add_point:                      # @polygon_add_point
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$4, (%rdi)
	jge	.LBB7_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movabsq	$.L.str.34, %rdi
	movb	$0, %al
	callq	g_print
.LBB7_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	polygon_add_point, .Lfunc_end7-polygon_add_point
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_rotate,@function
polygon_rotate:                         # @polygon_rotate
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	polygon_rotate, .Lfunc_end8-polygon_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_translate,@function
polygon_translate:                      # @polygon_translate
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	addsd	8(%rcx), %xmm0
	movsd	%xmm0, 8(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	polygon_translate, .Lfunc_end9-polygon_translate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	fill_poly_color,@function
fill_poly_color:                        # @fill_poly_color
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
	subq	$464, %rsp              # imm = 0x1D0
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, -232(%rbp)
	movq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -240(%rbp)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -256(%rbp)
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-232(%rbp), %xmm1
	movsd	-248(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-232(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-240(%rbp), %xmm2
	movsd	-256(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-240(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -296(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	divsd	-296(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-232(%rbp), %xmm0
	mulsd	-304(%rbp), %xmm0
	movsd	%xmm0, -288(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	mulsd	-304(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -304(%rbp)
	movsd	%xmm0, -288(%rbp)
	movsd	%xmm0, -280(%rbp)
.LBB10_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB10_5
# BB#4:                                 # %if.then.25
	leaq	-308(%rbp), %rsi
	leaq	-312(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-324(%rbp), %rsi
	leaq	-328(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-308(%rbp), %eax
	addl	-324(%rbp), %eax
	movl	%eax, -316(%rbp)
	movl	-312(%rbp), %eax
	addl	-328(%rbp), %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.28
	leaq	-308(%rbp), %rsi
	leaq	-312(%rbp), %rdx
	leaq	-316(%rbp), %rcx
	leaq	-320(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-88(%rbp), %rdi
	movl	$1, %r9d
	movq	-16(%rbp), %rsi
	movl	-308(%rbp), %edx
	movl	-312(%rbp), %ecx
	movl	-316(%rbp), %r10d
	subl	-308(%rbp), %r10d
	movl	-320(%rbp), %r11d
	subl	-312(%rbp), %r11d
	movl	%r10d, %r8d
	movl	%r9d, -412(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -416(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB10_6:                               # %if.end.32
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	%edi, -204(%rbp)
	movq	-8(%rbp), %rdi
	callq	polygon_extents
	movl	$4, %r9d
	movl	%r9d, %esi
	cvttsd2si	-96(%rbp), %r9d
	movl	%r9d, -140(%rbp)
	cvttsd2si	-104(%rbp), %r9d
	movl	%r9d, -144(%rbp)
	cvttsd2si	-112(%rbp), %r9d
	movl	%r9d, -148(%rbp)
	cvttsd2si	-120(%rbp), %r9d
	movl	%r9d, -152(%rbp)
	movl	-152(%rbp), %r9d
	subl	-144(%rbp), %r9d
	shll	$2, %r9d
	movl	%r9d, -160(%rbp)
	movl	-148(%rbp), %r9d
	subl	-140(%rbp), %r9d
	shll	$2, %r9d
	movl	%r9d, -156(%rbp)
	movslq	-160(%rbp), %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$4, %r9d
	movl	%r9d, %esi
	movq	%rax, -192(%rbp)
	movq	%rax, -184(%rbp)
	movslq	-160(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movq	%rax, -168(%rbp)
	movl	$0, -212(%rbp)
.LBB10_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-212(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB10_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-148(%rbp), %eax
	shll	$2, %eax
	movslq	-212(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-140(%rbp), %eax
	shll	$2, %eax
	movslq	-212(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB10_7
.LBB10_10:                              # %for.end
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB10_16
# BB#11:                                # %if.then.53
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -372(%rbp)
	movl	-372(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	cvttsd2si	(%rdx), %ecx
	movl	%ecx, -124(%rbp)
	movl	-372(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	cvttsd2si	8(%rdx), %ecx
	movl	%ecx, -128(%rbp)
	movq	-8(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-8(%rbp), %rax
	cvttsd2si	16(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movl	-124(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -124(%rbp)
	movl	-128(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -128(%rbp)
	movl	-132(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -132(%rbp)
	movl	-136(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -136(%rbp)
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-144(%rbp), %r8d
	shll	$2, %r8d
	movq	-184(%rbp), %r9
	movq	-168(%rbp), %rax
	movq	%rax, (%rsp)
	callq	convert_segment
	movl	$1, -212(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -368(%rbp)
.LBB10_12:                              # %for.cond.82
                                        # =>This Inner Loop Header: Depth=1
	movl	-212(%rbp), %eax
	cmpl	-372(%rbp), %eax
	jge	.LBB10_15
# BB#13:                                # %for.body.85
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-368(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -124(%rbp)
	movq	-368(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movq	-368(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-368(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movl	-124(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -124(%rbp)
	movl	-128(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -128(%rbp)
	movl	-132(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -132(%rbp)
	movl	-136(%rbp), %ecx
	shll	$2, %ecx
	movl	%ecx, -136(%rbp)
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-144(%rbp), %r8d
	shll	$2, %r8d
	movq	-184(%rbp), %r9
	movq	-168(%rbp), %rax
	movq	%rax, (%rsp)
	callq	convert_segment
# BB#14:                                # %for.inc.99
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB10_12
.LBB10_15:                              # %for.end.101
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.102
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-156(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -336(%rbp)
	movl	$0, -212(%rbp)
.LBB10_17:                              # %for.cond.105
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_28 Depth 2
                                        #       Child Loop BB10_32 Depth 3
                                        #       Child Loop BB10_38 Depth 3
                                        #       Child Loop BB10_44 Depth 3
                                        #       Child Loop BB10_49 Depth 3
	movl	-212(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB10_62
# BB#18:                                # %for.body.108
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	$4, %eax
	movl	-212(%rbp), %ecx
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-424(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_20
# BB#19:                                # %if.then.110
                                        #   in Loop: Header=BB10_17 Depth=1
	xorl	%esi, %esi
	movq	-336(%rbp), %rax
	movslq	-156(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB10_20:                              # %if.end.113
                                        #   in Loop: Header=BB10_17 Depth=1
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-212(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-144(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -272(%rbp)
	movq	-192(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -216(%rbp)
.LBB10_21:                              # %for.cond.118
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-216(%rbp), %eax
	movq	-176(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB10_24
# BB#22:                                # %for.body.121
                                        #   in Loop: Header=BB10_21 Depth=2
	movl	-216(%rbp), %eax
	movl	-140(%rbp), %ecx
	shll	$2, %ecx
	subl	%ecx, %eax
	movl	%eax, -220(%rbp)
	movslq	-220(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	addl	$255, %eax
	movl	%eax, (%rsi,%rdx,4)
# BB#23:                                # %for.inc.127
                                        #   in Loop: Header=BB10_21 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB10_21
.LBB10_24:                              # %for.end.129
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	$4, %eax
	movl	-212(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-428(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_60
# BB#25:                                # %if.then.133
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	$4, %eax
	movl	-212(%rbp), %ecx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-432(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-144(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	-224(%rbp), %eax
	cmpl	-312(%rbp), %eax
	jl	.LBB10_59
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	-224(%rbp), %eax
	cmpl	-320(%rbp), %eax
	jge	.LBB10_59
# BB#27:                                # %if.then.140
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	$0, -216(%rbp)
.LBB10_28:                              # %for.cond.141
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_32 Depth 3
                                        #       Child Loop BB10_38 Depth 3
                                        #       Child Loop BB10_44 Depth 3
                                        #       Child Loop BB10_49 Depth 3
	movl	-216(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB10_58
# BB#29:                                # %for.body.144
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	$4, %eax
	movl	-216(%rbp), %ecx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-436(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-140(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-220(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jl	.LBB10_56
# BB#30:                                # %land.lhs.true.149
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	-220(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jge	.LBB10_56
# BB#31:                                # %if.then.152
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	$0, -196(%rbp)
	movslq	-216(%rbp), %rax
	shlq	$2, %rax
	addq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -352(%rbp)
.LBB10_32:                              # %for.cond.156
                                        #   Parent Loop BB10_17 Depth=1
                                        #     Parent Loop BB10_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-344(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jae	.LBB10_35
# BB#33:                                # %for.body.159
                                        #   in Loop: Header=BB10_32 Depth=3
	movq	-344(%rbp), %rax
	movl	(%rax), %ecx
	addl	-196(%rbp), %ecx
	movl	%ecx, -196(%rbp)
# BB#34:                                # %for.inc.161
                                        #   in Loop: Header=BB10_32 Depth=3
	movq	-344(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB10_32
.LBB10_35:                              # %for.end.163
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	$16, %eax
	movl	-196(%rbp), %ecx
	movl	%eax, -440(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-440(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	jle	.LBB10_55
# BB#36:                                # %if.then.167
                                        #   in Loop: Header=BB10_28 Depth=2
	leaq	-288(%rbp), %rdi
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-216(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-140(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -264(%rbp)
	cvtsi2sdl	-196(%rbp), %xmm0
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-232(%rbp), %xmm2
	movsd	-272(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-240(%rbp), %xmm3
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	calc_alpha_blend
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -200(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB10_42
# BB#37:                                # %if.then.179
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	$0, -356(%rbp)
.LBB10_38:                              # %for.cond.180
                                        #   Parent Loop BB10_17 Depth=1
                                        #     Parent Loop BB10_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-356(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB10_41
# BB#39:                                # %for.body.183
                                        #   in Loop: Header=BB10_38 Depth=3
	movl	-224(%rbp), %eax
	subl	-312(%rbp), %eax
	imull	-324(%rbp), %eax
	movl	-220(%rbp), %ecx
	subl	-308(%rbp), %ecx
	addl	%ecx, %eax
	imull	-204(%rbp), %eax
	addl	-356(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movslq	-356(%rbp), %rdx
	movb	%dil, -208(%rbp,%rdx)
# BB#40:                                # %for.inc.194
                                        #   in Loop: Header=BB10_38 Depth=3
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB10_38
.LBB10_41:                              # %for.end.196
                                        #   in Loop: Header=BB10_28 Depth=2
	jmp	.LBB10_43
.LBB10_42:                              # %if.else.197
                                        #   in Loop: Header=BB10_28 Depth=2
	leaq	-88(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
.LBB10_43:                              # %if.end.199
                                        #   in Loop: Header=BB10_28 Depth=2
	leaq	-208(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movslq	-204(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -400(%rbp)
.LBB10_44:                              # %for.cond.202
                                        #   Parent Loop BB10_17 Depth=1
                                        #     Parent Loop BB10_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-384(%rbp), %rax
	cmpq	-400(%rbp), %rax
	jae	.LBB10_47
# BB#45:                                # %for.body.205
                                        #   in Loop: Header=BB10_44 Depth=3
	movl	$256, %eax              # imm = 0x100
	movq	-392(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-200(%rbp), %edx
	movq	-384(%rbp), %rcx
	movzbl	(%rcx), %esi
	subl	-200(%rbp), %eax
	imull	%eax, %esi
	addl	%esi, %edx
	shrl	$8, %edx
	movb	%dl, %dil
	movq	-384(%rbp), %rcx
	movb	%dil, (%rcx)
# BB#46:                                # %for.inc.213
                                        #   in Loop: Header=BB10_44 Depth=3
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB10_44
.LBB10_47:                              # %for.end.216
                                        #   in Loop: Header=BB10_28 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB10_53
# BB#48:                                # %if.then.218
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	$0, -356(%rbp)
.LBB10_49:                              # %for.cond.219
                                        #   Parent Loop BB10_17 Depth=1
                                        #     Parent Loop BB10_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-356(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB10_52
# BB#50:                                # %for.body.222
                                        #   in Loop: Header=BB10_49 Depth=3
	movslq	-356(%rbp), %rax
	movb	-208(%rbp,%rax), %cl
	movl	-224(%rbp), %edx
	subl	-312(%rbp), %edx
	imull	-324(%rbp), %edx
	movl	-220(%rbp), %esi
	subl	-308(%rbp), %esi
	addl	%esi, %edx
	imull	-204(%rbp), %edx
	addl	-356(%rbp), %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
# BB#51:                                # %for.inc.233
                                        #   in Loop: Header=BB10_49 Depth=3
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB10_49
.LBB10_52:                              # %for.end.235
                                        #   in Loop: Header=BB10_28 Depth=2
	jmp	.LBB10_54
.LBB10_53:                              # %if.else.236
                                        #   in Loop: Header=BB10_28 Depth=2
	leaq	-88(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	callq	gimp_pixel_rgn_set_pixel
.LBB10_54:                              # %if.end.238
                                        #   in Loop: Header=BB10_28 Depth=2
	jmp	.LBB10_55
.LBB10_55:                              # %if.end.239
                                        #   in Loop: Header=BB10_28 Depth=2
	jmp	.LBB10_56
.LBB10_56:                              # %if.end.240
                                        #   in Loop: Header=BB10_28 Depth=2
	jmp	.LBB10_57
.LBB10_57:                              # %for.inc.241
                                        #   in Loop: Header=BB10_28 Depth=2
	movl	-216(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB10_28
.LBB10_58:                              # %for.end.243
                                        #   in Loop: Header=BB10_17 Depth=1
	jmp	.LBB10_59
.LBB10_59:                              # %if.end.244
                                        #   in Loop: Header=BB10_17 Depth=1
	jmp	.LBB10_60
.LBB10_60:                              # %if.end.245
                                        #   in Loop: Header=BB10_17 Depth=1
	jmp	.LBB10_61
.LBB10_61:                              # %for.inc.246
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	movq	-192(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -192(%rbp)
	movq	-176(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB10_17
.LBB10_62:                              # %for.end.250
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fill_poly_color, .Lfunc_end10-fill_poly_color
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_extents,@function
polygon_extents:                        # @polygon_extents
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_15
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -52(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB11_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB11_6:                               # %if.end.13
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB11_8:                               # %if.end.24
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_10
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB11_10:                              # %if.end.35
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB11_12
# BB#11:                                # %if.then.41
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB11_12:                              # %if.end.46
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_3
.LBB11_14:                              # %for.end
	movl	$1, -4(%rbp)
.LBB11_15:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	polygon_extents, .Lfunc_end11-polygon_extents
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	convert_segment,@function
convert_segment:                        # @convert_segment
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
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movq	%rax, -40(%rbp)
	movl	-8(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jle	.LBB12_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_2:                               # %if.end
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB12_12
# BB#3:                                 # %if.then.3
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB12_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB12_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_7
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB12_4 Depth=1
	cvttsd2si	-72(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
.LBB12_7:                               # %if.end.18
                                        #   in Loop: Header=BB12_4 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB12_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB12_4 Depth=1
	cvttsd2si	-72(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
.LBB12_9:                               # %if.end.30
                                        #   in Loop: Header=BB12_4 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB12_4
.LBB12_11:                              # %for.end
	jmp	.LBB12_12
.LBB12_12:                              # %if.end.32
	popq	%rbp
	retq
.Lfunc_end12:
	.size	convert_segment, .Lfunc_end12-convert_segment
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	calc_alpha_blend,@function
calc_alpha_blend:                       # @calc_alpha_blend
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
	xorps	%xmm3, %xmm3
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jne	.LBB13_2
	jp	.LBB13_2
# BB#1:                                 # %if.then
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_9
.LBB13_2:                               # %if.end
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_4
# BB#3:                                 # %cond.true
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_4:                               # %cond.false
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB13_6
# BB#5:                                 # %cond.true.5
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB13_7
.LBB13_6:                               # %cond.false.6
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB13_7:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB13_8:                               # %cond.end.7
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB13_9:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end13:
	.size	calc_alpha_blend, .Lfunc_end13-calc_alpha_blend
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
	.asciz	"tile-size"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Average diameter of each tile (in pixels)"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tile-saturation"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Expand tiles by this amount"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"bg-color"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Background color { BLACK (0), BG (1) }"
	.size	.L.str.11, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-cubism"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Convert the image into randomly rotated square blobs"
	.size	.L.str.13, 53

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Help not yet written for this plug-in"
	.size	.L.str.14, 38

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Spencer Kimball & Tracy Scott"
	.size	.L.str.15, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1996"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Cubism..."
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Image>/Filters/Artistic"
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

	.type	cvals,@object           # @cvals
	.data
	.align	8
cvals:
	.quad	4621819117588971520     # double 10
	.quad	4612811918334230528     # double 2.5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	cvals, 24

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"cubism"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Cubism"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-cubism"
	.size	.L.str.24, 12

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
	.asciz	"invalidated"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Tile size:"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"value-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"T_ile saturation:"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Use background color"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"toggled"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Cubistic transformation"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Unable to add additional point.\n"
	.size	.L.str.34, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
