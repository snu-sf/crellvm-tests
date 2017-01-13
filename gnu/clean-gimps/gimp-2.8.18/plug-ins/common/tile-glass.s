	.text
	.file	"tile-glass.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movl	$1, %r10d
	movl	$5, %r11d
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
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.17, %rsi
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
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	20(%rax), %ecx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_31
.LBB1_31:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_32
.LBB1_32:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_18
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$gtvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	glasstile_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_30
.LBB1_5:                                # %if.end
	jmp	.LBB1_19
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -48(%rbp)
.LBB1_8:                                # %if.end.12
	cmpl	$3, -48(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, gtvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, gtvals+4
.LBB1_10:                               # %if.end.22
	cmpl	$10, gtvals
	jl	.LBB1_12
# BB#11:                                # %lor.lhs.false
	cmpl	$50, gtvals
	jle	.LBB1_13
.LBB1_12:                               # %if.then.27
	movl	$1, -48(%rbp)
.LBB1_13:                               # %if.end.28
	cmpl	$10, gtvals+4
	jl	.LBB1_15
# BB#14:                                # %lor.lhs.false.31
	cmpl	$50, gtvals+4
	jle	.LBB1_16
.LBB1_15:                               # %if.then.34
	movl	$1, -48(%rbp)
.LBB1_16:                               # %if.end.35
	jmp	.LBB1_19
.LBB1_17:                               # %sw.bb.36
	movabsq	$.L.str.10, %rdi
	movabsq	$gtvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %sw.default
	jmp	.LBB1_19
.LBB1_19:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#20:                                # %if.then.40
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %lor.lhs.false.43
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_27
.LBB1_22:                               # %if.then.47
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	glasstile
	cmpl	$1, -44(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.52
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.54
	cmpl	$0, -44(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.57
	movabsq	$.L.str.10, %rdi
	movabsq	$gtvals, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_26:                               # %if.end.59
	jmp	.LBB1_28
.LBB1_27:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_28:                               # %if.end.60
	jmp	.LBB1_29
.LBB1_29:                               # %if.end.61
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_30:                               # %return
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
	.quad	4632233691727265792     # double 50
.LCPI3_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	glasstile_dialog,@function
glasstile_dialog:                       # @glasstile_dialog
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$24, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movabsq	$.L.str.21, %rdi
	movl	$1, %esi
	movabsq	$gtvals, %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$1, gtvals+8
	callq	gimp_ui_init
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.23, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.24, %r11
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rdi
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
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
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
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.25, %rsi
	movabsq	$glasstile, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$4, %esi
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
	movl	$2, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_table_set_col_spacing
	movq	-48(%rbp), %rax
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
	movabsq	$.L.str.26, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	gtvals, %xmm4
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-224(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-232(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-240(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-240(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.27, %rsi
	movabsq	$glasstile_size_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$150, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	gtvals+4, %xmm4
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-304(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-312(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.27, %rsi
	movabsq	$glasstile_size_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$3, %edi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	gtvals+8, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.29, %rsi
	movabsq	$glasstile_chain_toggled, %rax
	movabsq	$gtvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	glasstile_dialog, .Lfunc_end3-glasstile_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	glasstile,@function
glasstile:                              # @glasstile
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
	subq	$312, %rsp              # imm = 0x138
.Ltmp22:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-176(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-176(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-180(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-176(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-188(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-184(%rbp), %edi
	subl	-176(%rbp), %edi
	movl	%edi, -124(%rbp)
	movl	-188(%rbp), %edi
	subl	-180(%rbp), %edi
	movl	%edi, -128(%rbp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB4_3:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -132(%rbp)
	movl	-124(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -160(%rbp)
	movl	-124(%rbp), %edx
	imull	-132(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	leaq	-72(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rsi
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %ecx
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %r8d
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	cmpq	$0, -24(%rbp)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%ebx, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$2, %ecx
	movl	gtvals, %edx
	movl	%edx, -192(%rbp)
	movl	gtvals+4, %edx
	movl	%edx, -204(%rbp)
	movl	-192(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -212(%rbp)
	movl	-204(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -228(%rbp)
	movl	-192(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -224(%rbp)
	movl	-204(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -240(%rbp)
	movl	-180(%rbp), %ecx
	movl	%ecx, -236(%rbp)
	movl	$0, -232(%rbp)
	movl	-180(%rbp), %ecx
	movl	%ecx, -164(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #       Child Loop BB4_19 Depth 3
                                        #       Child Loop BB4_24 Depth 3
	movl	-164(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB4_37
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-236(%rbp), %ecx
	movl	-232(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -208(%rbp)
	movl	-208(%rbp), %ecx
	movl	-188(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB4_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_7:                                # %cond.false
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, -208(%rbp)
	jge	.LBB4_9
# BB#8:                                 # %cond.true.20
                                        #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false.21
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-208(%rbp), %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_10:                               # %cond.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB4_11:                               # %cond.end.22
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	leaq	-72(%rbp), %rdi
	movl	%eax, -208(%rbp)
	movq	-160(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-208(%rbp), %ecx
	movl	-124(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jne	.LBB4_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	movl	-204(%rbp), %ecx
	addl	-236(%rbp), %ecx
	movl	%ecx, -236(%rbp)
	movl	-228(%rbp), %ecx
	addl	-240(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -232(%rbp)
.LBB4_13:                               # %if.end.30
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -220(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -168(%rbp)
.LBB4_14:                               # %for.cond.31
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_19 Depth 3
                                        #       Child Loop BB4_24 Depth 3
	movl	-168(%rbp), %eax
	movl	-184(%rbp), %ecx
	subl	-176(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_32
# BB#15:                                # %for.body.35
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-220(%rbp), %eax
	addl	-216(%rbp), %eax
	imull	-132(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	-220(%rbp), %eax
	movl	-216(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	imull	-132(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	movl	-184(%rbp), %ecx
	subl	-176(%rbp), %ecx
	imull	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_23
# BB#16:                                # %if.then.45
                                        #   in Loop: Header=BB4_14 Depth=2
	cmpl	$0, -200(%rbp)
	jge	.LBB4_18
# BB#17:                                # %if.then.48
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	$0, -200(%rbp)
.LBB4_18:                               # %if.end.49
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	$0, -172(%rbp)
.LBB4_19:                               # %for.cond.50
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_22
# BB#20:                                # %for.body.53
                                        #   in Loop: Header=BB4_19 Depth=3
	movl	-200(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-196(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end
                                        #   in Loop: Header=BB4_14 Depth=2
	jmp	.LBB4_28
.LBB4_23:                               # %if.else.59
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	$0, -172(%rbp)
.LBB4_24:                               # %for.cond.60
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_27
# BB#25:                                # %for.body.63
                                        #   in Loop: Header=BB4_24 Depth=3
	movl	-196(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-196(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#26:                                # %for.inc.70
                                        #   in Loop: Header=BB4_24 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_24
.LBB4_27:                               # %for.end.72
                                        #   in Loop: Header=BB4_14 Depth=2
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.73
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	movl	-216(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jne	.LBB4_30
# BB#29:                                # %if.then.77
                                        #   in Loop: Header=BB4_14 Depth=2
	xorl	%eax, %eax
	movl	-192(%rbp), %ecx
	addl	-220(%rbp), %ecx
	movl	%ecx, -220(%rbp)
	movl	-212(%rbp), %ecx
	addl	-224(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -216(%rbp)
.LBB4_30:                               # %if.end.81
                                        #   in Loop: Header=BB4_14 Depth=2
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc.82
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB4_14
.LBB4_32:                               # %for.end.84
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-124(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	cmpq	$0, -24(%rbp)
	jne	.LBB4_35
# BB#33:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$5, %eax
	movl	-164(%rbp), %ecx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-264(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_35
# BB#34:                                # %if.then.89
                                        #   in Loop: Header=BB4_4 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	cvtsi2sdl	-128(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_35:                               # %if.end.94
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_36
.LBB4_36:                               # %for.inc.95
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB4_4
.LBB4_37:                               # %for.end.97
	cmpq	$0, -24(%rbp)
	je	.LBB4_39
# BB#38:                                # %if.then.99
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.102
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-16(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB4_40:                               # %if.end.108
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	glasstile, .Lfunc_end4-glasstile
	.cfi_endproc

	.align	16, 0x90
	.type	glasstile_size_changed,@function
glasstile_size_changed:                 # @glasstile_size_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdi
	cmpq	8(%rdi), %rsi
	jne	.LBB5_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_int_adjustment_update
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	cvtsi2sdl	(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB5_3:                                # %if.end
	jmp	.LBB5_9
.LBB5_4:                                # %if.else
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB5_8
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	addq	$4, %rsi
	movq	%rax, %rdi
	callq	gimp_int_adjustment_update
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	cvtsi2sdl	4(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB5_7:                                # %if.end.27
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.28
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	glasstile_size_changed, .Lfunc_end5-glasstile_size_changed
	.cfi_endproc

	.align	16, 0x90
	.type	glasstile_chain_toggled,@function
glasstile_chain_toggled:                # @glasstile_chain_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	glasstile_chain_toggled, .Lfunc_end6-glasstile_chain_toggled
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
	.size	query.args, 120

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
	.asciz	"tilex"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Tile width (10 - 50)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tiley"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Tile height (10 - 50)"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-glasstile"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Simulate distortion caused by square glass tiles"
	.size	.L.str.11, 49

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Divide the image into square glassblocks in which the image is refracted."
	.size	.L.str.12, 74

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Karl-Johan Andersson"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"May 2000"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Glass Tile..."
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.17, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	gtvals,@object          # @gtvals
	.data
	.align	4
gtvals:
	.long	20                      # 0x14
	.long	20                      # 0x14
	.long	1                       # 0x1
	.size	gtvals, 12

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Glass Tile"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"tile-glass"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-tile-glass"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-cancel"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-ok"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"invalidated"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Tile _width:"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"value-changed"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Tile _height:"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"toggled"
	.size	.L.str.29, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
