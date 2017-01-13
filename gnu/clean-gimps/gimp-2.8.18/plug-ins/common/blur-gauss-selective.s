	.text
	.file	"blur-gauss-selective.bc"
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
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
	subq	$144, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8(%rip)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	20(%rax), %edi
	addl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_33
.LBB1_33:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_34
.LBB1_34:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_20
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	sel_gauss_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_32
.LBB1_5:                                # %if.end
	jmp	.LBB1_21
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -48(%rbp)
.LBB1_8:                                # %if.end.12
	cmpl	$3, -48(%rbp)
	jne	.LBB1_18
# BB#9:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bvals
	movq	-24(%rbp), %rax
	cmpl	$255, 168(%rax)
	jle	.LBB1_11
# BB#10:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_11:                               # %cond.false
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	jge	.LBB1_13
# BB#12:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %cond.false.29
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB1_14:                               # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_15:                               # %cond.end.33
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	%eax, bvals+8
	ucomisd	bvals, %xmm0
	jb	.LBB1_17
# BB#16:                                # %if.then.37
	movl	$1, -48(%rbp)
.LBB1_17:                               # %if.end.38
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.39
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.40
	movabsq	$.L.str.10, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %sw.default
	jmp	.LBB1_21
.LBB1_21:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.44
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	jmp	.LBB1_32
.LBB1_23:                               # %if.end.45
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_25
# BB#24:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_30
.LBB1_25:                               # %if.then.51
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	bvals, %xmm1            # xmm1 = mem[0],zero
	movapd	.LCPI1_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-56(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	bvals+8, %esi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	sel_gauss
	cmpl	$0, -44(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.57
	movabsq	$.L.str.10, %rdi
	movabsq	$bvals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.59
	cmpl	$1, -44(%rbp)
	je	.LBB1_29
# BB#28:                                # %if.then.62
	callq	gimp_displays_flush
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_29:                               # %if.end.64
	jmp	.LBB1_31
.LBB1_30:                               # %if.else
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	$0, -48(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.67
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_32:                               # %return
	addq	$144, %rsp
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
	.quad	4620693217682128896     # double 8
.LCPI3_4:
	.quad	4746794007244308480     # double 2147483647
.LCPI3_5:
	.quad	4617315517961601024     # double 5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	sel_gauss_dialog,@function
sel_gauss_dialog:                       # @sel_gauss_dialog
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
	subq	$368, %rsp              # imm = 0x170
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.22, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.24, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.25, %r11
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
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
	movabsq	$.L.str.26, %rsi
	movabsq	$preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r11
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	bvals, %xmm3            # xmm3 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-200(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-208(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-200(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-208(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$bvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
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
	movabsq	$.L.str.29, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$128, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	bvals+8, %xmm1
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bvals, %rdi
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
	movabsq	$.L.str.28, %rsi
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
	movq	-32(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
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
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sel_gauss_dialog, .Lfunc_end3-sel_gauss_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	sel_gauss,@function
sel_gauss:                              # @sel_gauss
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
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
	leaq	-164(%rbp), %rax
	leaq	-168(%rbp), %rdx
	leaq	-180(%rbp), %rcx
	leaq	-184(%rbp), %r8
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	movq	%rax, %rsi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_15
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	$8, %ecx
	movl	%ecx, %esi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -144(%rbp)
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -196(%rbp)
	movslq	-196(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -192(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-192(%rbp), %rdi
	movl	-196(%rbp), %esi
	callq	init_matrix
	movl	-164(%rbp), %ecx
	addl	-180(%rbp), %ecx
	subl	$1, %ecx
	addl	-196(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	4(%rax), %ecx
	jae	.LBB4_4
# BB#3:                                 # %cond.true
	movl	-164(%rbp), %eax
	addl	-180(%rbp), %eax
	subl	$1, %eax
	addl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)
	movl	-168(%rbp), %eax
	addl	-184(%rbp), %eax
	subl	$1, %eax
	addl	-196(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_7
# BB#6:                                 # %cond.true.19
	movl	-168(%rbp), %eax
	addl	-184(%rbp), %eax
	subl	$1, %eax
	addl	-196(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false.23
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB4_8:                                # %cond.end.25
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	-164(%rbp), %eax
	subl	-196(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jle	.LBB4_10
# BB#9:                                 # %cond.true.31
	movl	-164(%rbp), %eax
	subl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.34
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %cond.end.35
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)
	movl	-168(%rbp), %eax
	subl	-196(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jle	.LBB4_13
# BB#12:                                # %cond.true.41
	movl	-168(%rbp), %eax
	subl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB4_14
.LBB4_14:                               # %cond.end.45
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -168(%rbp)
	movl	-172(%rbp), %eax
	subl	-164(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-176(%rbp), %eax
	subl	-168(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-180(%rbp), %eax
	imull	-184(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	$16, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -160(%rbp)
	movl	-180(%rbp), %ecx
	imull	-184(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %r8d
	movl	-180(%rbp), %r9d
	movl	-184(%rbp), %r10d
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-88(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-180(%rbp), %r8d
	movl	-184(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %r8d
	movq	-192(%rbp), %rax
	movl	-196(%rbp), %r9d
	movl	-140(%rbp), %r10d
	movl	-144(%rbp), %r11d
	movl	-36(%rbp), %ebx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	matrixmult
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-136(%rbp), %rdi
	movl	$1, %ecx
	movq	-24(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %r9d
	movl	-180(%rbp), %r8d
	movl	-184(%rbp), %r10d
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-180(%rbp), %r8d
	movl	-184(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-24(%rbp), %r14
	movl	(%r14), %edi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-180(%rbp), %ecx
	movl	-184(%rbp), %r8d
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-160(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
.LBB4_15:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sel_gauss, .Lfunc_end4-sel_gauss
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-60(%rbp), %ecx
	imull	-64(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %ecx
	imull	-64(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	leaq	-112(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	$8, %ecx
	movl	%ecx, %esi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -124(%rbp)
	movsd	bvals, %xmm1            # xmm1 = mem[0],zero
	movapd	.LCPI5_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	addsd	-144(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -128(%rbp)
	movslq	-128(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-136(%rbp), %rdi
	movl	-128(%rbp), %esi
	callq	init_matrix
	movl	$1, %ecx
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %r8d
	movq	-136(%rbp), %rax
	movl	-128(%rbp), %r9d
	movq	-40(%rbp), %r11
	movl	%r11d, %r10d
	movl	-124(%rbp), %ebx
	movl	bvals+8, %r14d
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movl	%r10d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	$1, 24(%rsp)
	callq	matrixmult
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movslq	-60(%rbp), %rax
	imulq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_update, .Lfunc_end5-preview_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4611686018427387904    # double -2
.LCPI6_1:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI6_3:
	.quad	4614678757137361793     # double 3.3290429690000001
	.text
	.align	16, 0x90
	.type	init_matrix,@function
init_matrix:                            # @init_matrix
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
	subq	$80, %rsp
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm4, %xmm0
	movsd	%xmm0, -32(%rbp)
	mulsd	-32(%rbp), %xmm3
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -56(%rbp)        # 8-byte Spill
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	$0, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %eax
	imull	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	-48(%rbp), %xmm1
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	exp
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_matrix, .Lfunc_end6-init_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4661225614328463360     # double 4096
.LCPI7_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	matrixmult,@function
matrixmult:                             # @matrixmult
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$2112, %rsp             # imm = 0x840
.Ltmp35:
	.cfi_offset %rbx, -48
.Ltmp36:
	.cfi_offset %r12, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	xorl	%r14d, %r14d
	movl	$1, %r15d
	movq	%rdi, -1808(%rbp)
	movq	%rsi, -1816(%rbp)
	movl	%edx, -1820(%rbp)
	movl	%ecx, -1824(%rbp)
	movq	%r8, -1832(%rbp)
	movl	%r9d, -1836(%rbp)
	movl	%ebx, -1840(%rbp)
	movl	%r11d, -1844(%rbp)
	movl	%r10d, -1848(%rbp)
	movl	%eax, -1852(%rbp)
	cmpl	$0, -1844(%rbp)
	cmovnel	%r15d, %r14d
	movl	%r14d, -1844(%rbp)
	cmpl	$1, -1840(%rbp)
	jne	.LBB7_136
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -1844(%rbp)
	jne	.LBB7_136
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-1808(%rbp), %rdx
	movq	-1816(%rbp), %rsi
	movl	-1820(%rbp), %edi
	movl	-1824(%rbp), %r8d
	movq	-1832(%rbp), %r9
	movl	-1836(%rbp), %r10d
	movl	-1848(%rbp), %r11d
	movl	-1852(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rdx, -1640(%rbp)
	movq	%rsi, -1648(%rbp)
	movl	%edi, -1652(%rbp)
	movl	%r8d, -1656(%rbp)
	movq	%r9, -1664(%rbp)
	movl	%r10d, -1668(%rbp)
	movl	$1, -1672(%rbp)
	movl	$0, -1676(%rbp)
	movl	%r11d, -1680(%rbp)
	movl	%ebx, -1684(%rbp)
	movl	-1672(%rbp), %edi
	cmpl	$0, -1676(%rbp)
	cmovnel	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, -1688(%rbp)
	movl	-1652(%rbp), %eax
	imull	-1672(%rbp), %eax
	movl	%eax, -1692(%rbp)
	cmpl	$0, -1676(%rbp)
	movq	%r14, -1864(%rbp)       # 8-byte Spill
	je	.LBB7_4
# BB#3:                                 # %cond.true.i
	cmpl	$4, -1672(%rbp)
	je	.LBB7_6
	jmp	.LBB7_88
.LBB7_4:                                # %cond.false.i
	cmpl	$3, -1672(%rbp)
	je	.LBB7_6
# BB#5:                                 # %lor.lhs.false.i
	cmpl	$1, -1672(%rbp)
	jne	.LBB7_88
.LBB7_6:                                # %if.then.i
	callq	gimp_cpu_accel_get_support
	movl	%eax, -1748(%rbp)
	movl	-1748(%rbp), %eax
	andl	$805306368, %eax        # imm = 0x30000000
	cmpl	$0, %eax
	je	.LBB7_87
# BB#7:                                 # %if.then.5.i
	movq	-1640(%rbp), %rax
	movq	-1648(%rbp), %rcx
	movl	-1652(%rbp), %edx
	movl	-1656(%rbp), %esi
	movq	-1664(%rbp), %rdi
	movl	-1668(%rbp), %r8d
	movl	-1672(%rbp), %r9d
	movl	-1676(%rbp), %r10d
	movl	-1680(%rbp), %r11d
	movl	-1684(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rax, -1448(%rbp)
	movq	%rcx, -1456(%rbp)
	movl	%edx, -1460(%rbp)
	movl	%esi, -1464(%rbp)
	movq	%rdi, -1472(%rbp)
	movl	%r8d, -1476(%rbp)
	movl	%r9d, -1480(%rbp)
	movl	%r10d, -1484(%rbp)
	movl	%r11d, -1488(%rbp)
	movl	%ebx, -1492(%rbp)
	movl	-1460(%rbp), %edx
	imull	-1480(%rbp), %edx
	movl	%edx, -1496(%rbp)
	movslq	-1488(%rbp), %rax
	movabsq	$281479271743489, %rcx  # imm = 0x1000100010001
	imulq	%rcx, %rax
	movq	%rax, -1504(%rbp)
	cmpl	$0, -1484(%rbp)
	movq	%r14, -1872(%rbp)       # 8-byte Spill
	je	.LBB7_9
# BB#8:                                 # %cond.true.i.i
	cmpl	$4, -1480(%rbp)
	je	.LBB7_11
	jmp	.LBB7_12
.LBB7_9:                                # %cond.false.i.i
	cmpl	$3, -1480(%rbp)
	je	.LBB7_11
# BB#10:                                # %lor.lhs.false.i.i
	cmpl	$1, -1480(%rbp)
	jne	.LBB7_12
.LBB7_11:                               # %if.then.i.i
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-1476(%rbp), %ecx
	movl	%ecx, %edx
	leal	3(%rdx,%rdx), %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -1512(%rbp)
	movsd	%xmm0, -1520(%rbp)
	subl	-1476(%rbp), %eax
	movl	%eax, -1544(%rbp)
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.i.i
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movl	$341, %edx              # imm = 0x155
	movabsq	$.L__func__.matrixmult_mmx, %rcx
	movabsq	$.L.str.31, %r8
	callq	g_assertion_message_expr
.LBB7_13:                               # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-1544(%rbp), %eax
	cmpl	-1476(%rbp), %eax
	jge	.LBB7_18
# BB#14:                                # %for.body.i.i
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpl	$0, -1544(%rbp)
	jge	.LBB7_16
# BB#15:                                # %cond.true.14.i.i
                                        #   in Loop: Header=BB7_13 Depth=1
	xorl	%eax, %eax
	subl	-1544(%rbp), %eax
	movl	%eax, -1876(%rbp)       # 4-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false.16.i.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-1544(%rbp), %eax
	movl	%eax, -1876(%rbp)       # 4-byte Spill
.LBB7_17:                               # %cond.end.i.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-1876(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1472(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-1520(%rbp), %xmm0
	movsd	%xmm0, -1520(%rbp)
	movl	-1544(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1544(%rbp)
	jmp	.LBB7_13
.LBB7_18:                               # %for.end.i.i
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-1472(%rbp), %rax
	divsd	(%rax), %xmm1
	divsd	-1520(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_20
# BB#19:                                # %cond.true.22.i.i
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-1472(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -1888(%rbp)      # 8-byte Spill
	jmp	.LBB7_21
.LBB7_20:                               # %cond.false.25.i.i
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-1520(%rbp), %xmm0
	movsd	%xmm0, -1888(%rbp)      # 8-byte Spill
.LBB7_21:                               # %cond.end.27.i.i
	movsd	-1888(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1528(%rbp)
	movl	$0, -1544(%rbp)
.LBB7_22:                               # %for.cond.29.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-1544(%rbp), %eax
	cmpl	-1476(%rbp), %eax
	jge	.LBB7_24
# BB#23:                                # %for.body.32.i.i
                                        #   in Loop: Header=BB7_22 Depth=1
	movslq	-1544(%rbp), %rax
	movq	-1472(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-1528(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-1476(%rbp), %edx
	addl	-1544(%rbp), %edx
	movslq	%edx, %rax
	movq	-1512(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1476(%rbp), %edx
	subl	-1544(%rbp), %edx
	movslq	%edx, %rax
	movq	-1512(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1544(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1544(%rbp)
	jmp	.LBB7_22
.LBB7_24:                               # %for.end.45.i.i
	movl	-1476(%rbp), %eax
	movl	%eax, -1544(%rbp)
.LBB7_25:                               # %for.cond.46.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-1544(%rbp), %eax
	movl	-1476(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_27
# BB#26:                                # %for.body.50.i.i
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	-1476(%rbp), %eax
	addl	-1544(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1512(%rbp), %rdx
	movw	$0, (%rdx,%rcx,2)
	movl	-1544(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1544(%rbp)
	jmp	.LBB7_25
.LBB7_27:                               # %for.end.56.i.i
	movl	$0, -1544(%rbp)
.LBB7_28:                               # %for.cond.57.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_30 Depth 2
                                        #       Child Loop BB7_37 Depth 3
                                        #         Child Loop BB7_42 Depth 4
                                        #       Child Loop BB7_54 Depth 3
                                        #         Child Loop BB7_59 Depth 4
	movl	-1544(%rbp), %eax
	cmpl	-1464(%rbp), %eax
	jge	.LBB7_86
# BB#29:                                # %for.body.60.i.i
                                        #   in Loop: Header=BB7_28 Depth=1
	#APP
	pxor	%mm7, %mm7

	#NO_APP
	movl	$0, -1540(%rbp)
.LBB7_30:                               # %for.cond.61.i.i
                                        #   Parent Loop BB7_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_37 Depth 3
                                        #         Child Loop BB7_42 Depth 4
                                        #       Child Loop BB7_54 Depth 3
                                        #         Child Loop BB7_59 Depth 4
	movl	-1540(%rbp), %eax
	cmpl	-1460(%rbp), %eax
	jge	.LBB7_82
# BB#31:                                # %for.body.64.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	$0, -1572(%rbp)
	movl	$0, -1568(%rbp)
	movl	$0, -1564(%rbp)
	movl	$0, -1560(%rbp)
	movl	$0, -1556(%rbp)
	movl	$0, -1552(%rbp)
	movl	-1480(%rbp), %eax
	movl	-1460(%rbp), %ecx
	imull	-1544(%rbp), %ecx
	addl	-1540(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -1580(%rbp)
	cmpl	$0, -1484(%rbp)
	je	.LBB7_35
# BB#32:                                # %if.then.69.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movslq	-1580(%rbp), %rax
	movq	-1448(%rbp), %rcx
	movl	(%rcx,%rax), %edx
	movslq	-1580(%rbp), %rax
	movq	-1456(%rbp), %rcx
	movl	%edx, (%rcx,%rax)
	movl	-1580(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-1448(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB7_34
# BB#33:                                # %if.then.78.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	jmp	.LBB7_81
.LBB7_34:                               # %if.end.79.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	jmp	.LBB7_35
.LBB7_35:                               # %if.end.80.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movslq	-1580(%rbp), %rax
	addq	-1448(%rbp), %rax
	#APP
	movd	(%rax), %mm6
	punpcklbw	%mm7, %mm6

	#NO_APP
	movl	-1496(%rbp), %ecx
	movl	-1544(%rbp), %edx
	subl	-1476(%rbp), %edx
	imull	%edx, %ecx
	movl	-1480(%rbp), %edx
	movl	-1540(%rbp), %esi
	subl	-1476(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -1576(%rbp)
	cmpl	$1, -1480(%rbp)
	jne	.LBB7_53
# BB#36:                                # %if.then.90.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	#APP
	pshufw	$0, %mm6, %mm6

	#NO_APP
	movl	$1, %eax
	subl	-1476(%rbp), %eax
	movl	%eax, -1536(%rbp)
.LBB7_37:                               # %for.cond.92.i.i
                                        #   Parent Loop BB7_28 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_42 Depth 4
	movl	-1536(%rbp), %eax
	cmpl	-1476(%rbp), %eax
	jge	.LBB7_50
# BB#38:                                # %for.body.95.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	$0, -1596(%rbp)
	movl	$0, -1600(%rbp)
	movl	-1496(%rbp), %eax
	addl	-1576(%rbp), %eax
	movl	%eax, -1576(%rbp)
	movl	-1544(%rbp), %eax
	addl	-1536(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_40
# BB#39:                                # %lor.lhs.false.100.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	-1544(%rbp), %eax
	addl	-1536(%rbp), %eax
	cmpl	-1464(%rbp), %eax
	jl	.LBB7_41
.LBB7_40:                               # %if.then.104.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	jmp	.LBB7_49
.LBB7_41:                               # %if.end.105.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movq	-1448(%rbp), %rax
	movslq	-1576(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movq	%rax, -1592(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4

	#NO_APP
	movl	$1, %edx
	subl	-1476(%rbp), %edx
	movl	%edx, -1532(%rbp)
.LBB7_42:                               # %for.cond.108.i.i
                                        #   Parent Loop BB7_28 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        #       Parent Loop BB7_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-1532(%rbp), %eax
	cmpl	-1476(%rbp), %eax
	jge	.LBB7_48
# BB#43:                                # %for.body.111.i.i
                                        #   in Loop: Header=BB7_42 Depth=4
	movq	-1592(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -1592(%rbp)
	movl	-1540(%rbp), %ecx
	addl	-1532(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB7_45
# BB#44:                                # %lor.lhs.false.116.i.i
                                        #   in Loop: Header=BB7_42 Depth=4
	movl	-1540(%rbp), %eax
	addl	-1532(%rbp), %eax
	cmpl	-1460(%rbp), %eax
	jl	.LBB7_46
.LBB7_45:                               # %if.then.120.i.i
                                        #   in Loop: Header=BB7_42 Depth=4
	jmp	.LBB7_47
.LBB7_46:                               # %if.end.121.i.i
                                        #   in Loop: Header=BB7_42 Depth=4
	movq	-1592(%rbp), %rax
	movl	-1476(%rbp), %ecx
	addl	-1532(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-1512(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-1504(%rbp), %mm1
	pandn	(%rdx), %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm4

	#NO_APP
.LBB7_47:                               # %for.inc.125.i.i
                                        #   in Loop: Header=BB7_42 Depth=4
	movl	-1532(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -1532(%rbp)
	jmp	.LBB7_42
.LBB7_48:                               # %for.end.127.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	#APP
	pshufw	$177, %mm5, %mm3
	paddusw	%mm3, %mm5
	pshufw	$14, %mm4, %mm2
	pshufw	$14, %mm5, %mm3
	paddd	%mm2, %mm4
	paddusw	%mm3, %mm5
	movd	%mm4, -1596(%rbp)
	movd	%mm5, -1600(%rbp)

	#NO_APP
	movl	-1476(%rbp), %eax
	addl	-1536(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1512(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1548(%rbp)
	movl	-1548(%rbp), %eax
	imull	-1596(%rbp), %eax
	addl	-1552(%rbp), %eax
	movl	%eax, -1552(%rbp)
	movl	-1548(%rbp), %eax
	movl	-1600(%rbp), %esi
	movw	%si, %di
	movzwl	%di, %esi
	imull	%esi, %eax
	addl	-1564(%rbp), %eax
	movl	%eax, -1564(%rbp)
.LBB7_49:                               # %for.inc.138.i.i
                                        #   in Loop: Header=BB7_37 Depth=3
	movl	-1536(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1536(%rbp)
	jmp	.LBB7_37
.LBB7_50:                               # %for.end.140.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	cmpl	$0, -1564(%rbp)
	je	.LBB7_52
# BB#51:                                # %if.then.142.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	-1552(%rbp), %eax
	xorl	%edx, %edx
	divl	-1564(%rbp)
	movb	%al, %cl
	movslq	-1580(%rbp), %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_52:                               # %if.end.147.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	jmp	.LBB7_80
.LBB7_53:                               # %if.else.148.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	$1, %eax
	subl	-1476(%rbp), %eax
	movl	%eax, -1536(%rbp)
.LBB7_54:                               # %for.cond.150.i.i
                                        #   Parent Loop BB7_28 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_59 Depth 4
	movl	-1536(%rbp), %eax
	cmpl	-1476(%rbp), %eax
	jge	.LBB7_70
# BB#55:                                # %for.body.153.i.i
                                        #   in Loop: Header=BB7_54 Depth=3
	movl	-1496(%rbp), %eax
	addl	-1576(%rbp), %eax
	movl	%eax, -1576(%rbp)
	movl	-1544(%rbp), %eax
	addl	-1536(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_57
# BB#56:                                # %lor.lhs.false.159.i.i
                                        #   in Loop: Header=BB7_54 Depth=3
	movl	-1544(%rbp), %eax
	addl	-1536(%rbp), %eax
	cmpl	-1464(%rbp), %eax
	jl	.LBB7_58
.LBB7_57:                               # %if.then.163.i.i
                                        #   in Loop: Header=BB7_54 Depth=3
	jmp	.LBB7_69
.LBB7_58:                               # %if.end.164.i.i
                                        #   in Loop: Header=BB7_54 Depth=3
	movq	-1448(%rbp), %rax
	movslq	-1576(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -1608(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4
	pxor	%mm3, %mm3

	#NO_APP
	movl	$1, %edx
	subl	-1476(%rbp), %edx
	movl	%edx, -1532(%rbp)
.LBB7_59:                               # %for.cond.168.i.i
                                        #   Parent Loop BB7_28 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        #       Parent Loop BB7_54 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-1532(%rbp), %eax
	cmpl	-1476(%rbp), %eax
	jge	.LBB7_68
# BB#60:                                # %for.body.171.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	movl	-1480(%rbp), %eax
	movq	-1608(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1608(%rbp)
	movl	-1540(%rbp), %eax
	addl	-1532(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_62
# BB#61:                                # %lor.lhs.false.177.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	movl	-1540(%rbp), %eax
	addl	-1532(%rbp), %eax
	cmpl	-1460(%rbp), %eax
	jl	.LBB7_63
.LBB7_62:                               # %if.then.181.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	jmp	.LBB7_67
.LBB7_63:                               # %if.end.182.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	cmpl	$0, -1484(%rbp)
	je	.LBB7_65
# BB#64:                                # %if.then.184.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	movq	-1608(%rbp), %rax
	movl	-1476(%rbp), %ecx
	addl	-1532(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-1512(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-1504(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pshufw	$255, %mm0, %mm2
	psllw	$8, %mm2
	pmulhuw	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
	jmp	.LBB7_66
.LBB7_65:                               # %if.else.188.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	movq	-1608(%rbp), %rax
	movl	-1476(%rbp), %ecx
	addl	-1532(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-1512(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-1504(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
.LBB7_66:                               # %if.end.192.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	jmp	.LBB7_67
.LBB7_67:                               # %for.inc.193.i.i
                                        #   in Loop: Header=BB7_59 Depth=4
	movl	-1532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1532(%rbp)
	jmp	.LBB7_59
.LBB7_68:                               # %for.end.195.i.i
                                        #   in Loop: Header=BB7_54 Depth=3
	leaq	-1616(%rbp), %rax
	#APP
	movd	%mm4, -1620(%rbp)
	movd	%mm3, -1628(%rbp)
	psrlq	$32, %mm4
	movq	%mm5, (%rax)
	movd	%mm4, -1624(%rbp)

	#NO_APP
	movl	-1476(%rbp), %ecx
	addl	-1536(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-1512(%rbp), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movl	%ecx, -1548(%rbp)
	movl	-1548(%rbp), %ecx
	imull	-1620(%rbp), %ecx
	addl	-1552(%rbp), %ecx
	movl	%ecx, -1552(%rbp)
	movl	-1548(%rbp), %ecx
	imull	-1624(%rbp), %ecx
	addl	-1556(%rbp), %ecx
	movl	%ecx, -1556(%rbp)
	movl	-1548(%rbp), %ecx
	imull	-1628(%rbp), %ecx
	addl	-1560(%rbp), %ecx
	movl	%ecx, -1560(%rbp)
	movl	-1548(%rbp), %ecx
	movzwl	-1616(%rbp), %esi
	imull	%esi, %ecx
	addl	-1564(%rbp), %ecx
	movl	%ecx, -1564(%rbp)
	movl	-1548(%rbp), %ecx
	movzwl	-1614(%rbp), %esi
	imull	%esi, %ecx
	addl	-1568(%rbp), %ecx
	movl	%ecx, -1568(%rbp)
	movl	-1548(%rbp), %ecx
	movzwl	-1612(%rbp), %esi
	imull	%esi, %ecx
	addl	-1572(%rbp), %ecx
	movl	%ecx, -1572(%rbp)
.LBB7_69:                               # %for.inc.218.i.i
                                        #   in Loop: Header=BB7_54 Depth=3
	movl	-1536(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1536(%rbp)
	jmp	.LBB7_54
.LBB7_70:                               # %for.end.220.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	cmpl	$0, -1484(%rbp)
	je	.LBB7_78
# BB#71:                                # %if.then.222.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	cmpl	$0, -1564(%rbp)
	je	.LBB7_73
# BB#72:                                # %if.then.224.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	-1552(%rbp), %eax
	xorl	%edx, %edx
	divl	-1564(%rbp)
	movb	%al, %cl
	movslq	-1580(%rbp), %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_73:                               # %if.end.230.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	cmpl	$0, -1568(%rbp)
	je	.LBB7_75
# BB#74:                                # %if.then.232.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	-1556(%rbp), %eax
	xorl	%edx, %edx
	divl	-1568(%rbp)
	movb	%al, %cl
	movl	-1580(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_75:                               # %if.end.238.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	cmpl	$0, -1572(%rbp)
	je	.LBB7_77
# BB#76:                                # %if.then.240.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	-1560(%rbp), %eax
	xorl	%edx, %edx
	divl	-1572(%rbp)
	movb	%al, %cl
	movl	-1580(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_77:                               # %if.end.246.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	jmp	.LBB7_79
.LBB7_78:                               # %if.else.247.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	-1552(%rbp), %eax
	xorl	%edx, %edx
	divl	-1564(%rbp)
	movb	%al, %cl
	movslq	-1580(%rbp), %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-1556(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-1568(%rbp)
	movb	%al, %cl
	movl	-1580(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-1560(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-1572(%rbp)
	movb	%al, %cl
	movl	-1580(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-1456(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_79:                               # %if.end.263.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	jmp	.LBB7_80
.LBB7_80:                               # %if.end.264.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	jmp	.LBB7_81
.LBB7_81:                               # %for.inc.265.i.i
                                        #   in Loop: Header=BB7_30 Depth=2
	movl	-1540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1540(%rbp)
	jmp	.LBB7_30
.LBB7_82:                               # %for.end.267.i.i
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	$16, %eax
	movl	-1544(%rbp), %ecx
	movl	%eax, -1892(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1892(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_85
# BB#83:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, -1492(%rbp)
	jne	.LBB7_85
# BB#84:                                # %if.then.270.i.i
                                        #   in Loop: Header=BB7_28 Depth=1
	#APP
	emms
	#NO_APP
	cvtsi2sdl	-1544(%rbp), %xmm0
	cvtsi2sdl	-1464(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1896(%rbp)       # 4-byte Spill
.LBB7_85:                               # %if.end.274.i.i
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-1544(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1544(%rbp)
	jmp	.LBB7_28
.LBB7_86:                               # %matrixmult_mmx.exit.i
	#APP
	emms
	#NO_APP
	movq	-1872(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_135
.LBB7_87:                               # %if.end.i
	jmp	.LBB7_88
.LBB7_88:                               # %if.end.6.i
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-1668(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -1704(%rbp)
	movsd	%xmm0, -1712(%rbp)
	subl	-1668(%rbp), %eax
	movl	%eax, -1740(%rbp)
.LBB7_89:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-1740(%rbp), %eax
	cmpl	-1668(%rbp), %eax
	jge	.LBB7_94
# BB#90:                                # %for.body.i
                                        #   in Loop: Header=BB7_89 Depth=1
	cmpl	$0, -1740(%rbp)
	jge	.LBB7_92
# BB#91:                                # %cond.true.14.i
                                        #   in Loop: Header=BB7_89 Depth=1
	xorl	%eax, %eax
	subl	-1740(%rbp), %eax
	movl	%eax, -1900(%rbp)       # 4-byte Spill
	jmp	.LBB7_93
.LBB7_92:                               # %cond.false.16.i
                                        #   in Loop: Header=BB7_89 Depth=1
	movl	-1740(%rbp), %eax
	movl	%eax, -1900(%rbp)       # 4-byte Spill
.LBB7_93:                               # %cond.end.i
                                        #   in Loop: Header=BB7_89 Depth=1
	movl	-1900(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1664(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-1712(%rbp), %xmm0
	movsd	%xmm0, -1712(%rbp)
	movl	-1740(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1740(%rbp)
	jmp	.LBB7_89
.LBB7_94:                               # %for.end.i
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-1712(%rbp), %xmm0
	movsd	%xmm0, -1720(%rbp)
	movl	$0, -1740(%rbp)
.LBB7_95:                               # %for.cond.18.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-1740(%rbp), %eax
	cmpl	-1668(%rbp), %eax
	jge	.LBB7_97
# BB#96:                                # %for.body.21.i
                                        #   in Loop: Header=BB7_95 Depth=1
	movslq	-1740(%rbp), %rax
	movq	-1664(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-1720(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-1668(%rbp), %edx
	addl	-1740(%rbp), %edx
	movslq	%edx, %rax
	movq	-1704(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1668(%rbp), %edx
	subl	-1740(%rbp), %edx
	movslq	%edx, %rax
	movq	-1704(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1740(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1740(%rbp)
	jmp	.LBB7_95
.LBB7_97:                               # %for.end.34.i
	movl	$0, -1740(%rbp)
.LBB7_98:                               # %for.cond.35.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_100 Depth 2
                                        #       Child Loop BB7_104 Depth 3
                                        #         Child Loop BB7_106 Depth 4
                                        #           Child Loop BB7_111 Depth 5
	movl	-1740(%rbp), %eax
	cmpl	-1656(%rbp), %eax
	jge	.LBB7_135
# BB#99:                                # %for.body.38.i
                                        #   in Loop: Header=BB7_98 Depth=1
	movl	$0, -1736(%rbp)
.LBB7_100:                              # %for.cond.39.i
                                        #   Parent Loop BB7_98 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_104 Depth 3
                                        #         Child Loop BB7_106 Depth 4
                                        #           Child Loop BB7_111 Depth 5
	movl	-1736(%rbp), %eax
	cmpl	-1652(%rbp), %eax
	jge	.LBB7_131
# BB#101:                               # %for.body.42.i
                                        #   in Loop: Header=BB7_100 Depth=2
	movl	-1672(%rbp), %eax
	movl	-1652(%rbp), %ecx
	imull	-1740(%rbp), %ecx
	addl	-1736(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -1752(%rbp)
	cmpl	$0, -1676(%rbp)
	je	.LBB7_103
# BB#102:                               # %if.then.47.i
                                        #   in Loop: Header=BB7_100 Depth=2
	movl	-1752(%rbp), %eax
	addl	-1688(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1640(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-1752(%rbp), %eax
	addl	-1688(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1648(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_103:                              # %if.end.54.i
                                        #   in Loop: Header=BB7_100 Depth=2
	movl	$0, -1732(%rbp)
.LBB7_104:                              # %for.cond.55.i
                                        #   Parent Loop BB7_98 Depth=1
                                        #     Parent Loop BB7_100 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_106 Depth 4
                                        #           Child Loop BB7_111 Depth 5
	movl	-1732(%rbp), %eax
	cmpl	-1688(%rbp), %eax
	jge	.LBB7_130
# BB#105:                               # %for.body.58.i
                                        #   in Loop: Header=BB7_104 Depth=3
	movl	$1, %eax
	movq	-1640(%rbp), %rcx
	movslq	-1752(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-1732(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1760(%rbp)
	movl	$0, -1764(%rbp)
	movl	$0, -1768(%rbp)
	movl	-1692(%rbp), %esi
	movl	-1740(%rbp), %edi
	subl	-1668(%rbp), %edi
	imull	%edi, %esi
	movl	-1672(%rbp), %edi
	movl	-1736(%rbp), %r8d
	subl	-1668(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%esi, -1772(%rbp)
	subl	-1668(%rbp), %eax
	movl	%eax, -1728(%rbp)
.LBB7_106:                              # %for.cond.67.i
                                        #   Parent Loop BB7_98 Depth=1
                                        #     Parent Loop BB7_100 Depth=2
                                        #       Parent Loop BB7_104 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_111 Depth 5
	movl	-1728(%rbp), %eax
	cmpl	-1668(%rbp), %eax
	jge	.LBB7_126
# BB#107:                               # %for.body.70.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	$0, -1788(%rbp)
	movl	$0, -1792(%rbp)
	movl	-1692(%rbp), %eax
	addl	-1772(%rbp), %eax
	movl	%eax, -1772(%rbp)
	movl	-1740(%rbp), %eax
	addl	-1728(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_109
# BB#108:                               # %lor.lhs.false.75.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	-1740(%rbp), %eax
	addl	-1728(%rbp), %eax
	cmpl	-1656(%rbp), %eax
	jl	.LBB7_110
.LBB7_109:                              # %if.then.79.i
                                        #   in Loop: Header=BB7_106 Depth=4
	jmp	.LBB7_125
.LBB7_110:                              # %if.end.80.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	$1, %eax
	movq	-1640(%rbp), %rcx
	movslq	-1772(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-1732(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1784(%rbp)
	subl	-1668(%rbp), %eax
	movl	%eax, -1724(%rbp)
.LBB7_111:                              # %for.cond.86.i
                                        #   Parent Loop BB7_98 Depth=1
                                        #     Parent Loop BB7_100 Depth=2
                                        #       Parent Loop BB7_104 Depth=3
                                        #         Parent Loop BB7_106 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-1724(%rbp), %eax
	cmpl	-1668(%rbp), %eax
	jge	.LBB7_122
# BB#112:                               # %for.body.89.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movl	-1672(%rbp), %eax
	movq	-1784(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1784(%rbp)
	movl	-1736(%rbp), %eax
	addl	-1724(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_114
# BB#113:                               # %lor.lhs.false.95.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movl	-1736(%rbp), %eax
	addl	-1724(%rbp), %eax
	cmpl	-1652(%rbp), %eax
	jl	.LBB7_115
.LBB7_114:                              # %if.then.99.i
                                        #   in Loop: Header=BB7_111 Depth=5
	jmp	.LBB7_121
.LBB7_115:                              # %if.end.100.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movq	-1760(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-1784(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -1796(%rbp)
	movl	-1796(%rbp), %ecx
	cmpl	-1680(%rbp), %ecx
	jg	.LBB7_117
# BB#116:                               # %lor.lhs.false.106.i
                                        #   in Loop: Header=BB7_111 Depth=5
	xorl	%eax, %eax
	movl	-1796(%rbp), %ecx
	subl	-1680(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB7_118
.LBB7_117:                              # %if.then.110.i
                                        #   in Loop: Header=BB7_111 Depth=5
	jmp	.LBB7_121
.LBB7_118:                              # %if.end.111.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movl	-1668(%rbp), %eax
	addl	-1724(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1704(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1744(%rbp)
	cmpl	$0, -1676(%rbp)
	je	.LBB7_120
# BB#119:                               # %if.then.117.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movl	-1688(%rbp), %eax
	subl	-1732(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1784(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-1744(%rbp), %eax
	movl	%eax, -1744(%rbp)
.LBB7_120:                              # %if.end.123.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movl	-1744(%rbp), %eax
	movq	-1784(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	addl	-1788(%rbp), %eax
	movl	%eax, -1788(%rbp)
	movl	-1744(%rbp), %eax
	addl	-1792(%rbp), %eax
	movl	%eax, -1792(%rbp)
.LBB7_121:                              # %for.inc.128.i
                                        #   in Loop: Header=BB7_111 Depth=5
	movl	-1724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1724(%rbp)
	jmp	.LBB7_111
.LBB7_122:                              # %for.end.130.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	-1668(%rbp), %eax
	addl	-1728(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1704(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1744(%rbp)
	cmpl	$0, -1676(%rbp)
	je	.LBB7_124
# BB#123:                               # %if.then.136.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	-1788(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -1788(%rbp)
	movl	-1792(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -1792(%rbp)
.LBB7_124:                              # %if.end.138.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	-1744(%rbp), %eax
	imull	-1788(%rbp), %eax
	addl	-1764(%rbp), %eax
	movl	%eax, -1764(%rbp)
	movl	-1744(%rbp), %eax
	imull	-1792(%rbp), %eax
	addl	-1768(%rbp), %eax
	movl	%eax, -1768(%rbp)
.LBB7_125:                              # %for.inc.143.i
                                        #   in Loop: Header=BB7_106 Depth=4
	movl	-1728(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1728(%rbp)
	jmp	.LBB7_106
.LBB7_126:                              # %for.end.145.i
                                        #   in Loop: Header=BB7_104 Depth=3
	cmpl	$0, -1768(%rbp)
	jne	.LBB7_128
# BB#127:                               # %if.then.148.i
                                        #   in Loop: Header=BB7_104 Depth=3
	movq	-1760(%rbp), %rax
	movb	(%rax), %cl
	movl	-1752(%rbp), %edx
	addl	-1732(%rbp), %edx
	movslq	%edx, %rax
	movq	-1648(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB7_129
.LBB7_128:                              # %if.else.i
                                        #   in Loop: Header=BB7_104 Depth=3
	movl	-1764(%rbp), %eax
	xorl	%edx, %edx
	divl	-1768(%rbp)
	movb	%al, %cl
	movl	-1752(%rbp), %eax
	addl	-1732(%rbp), %eax
	movslq	%eax, %rsi
	movq	-1648(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_129:                              # %if.end.157.i
                                        #   in Loop: Header=BB7_104 Depth=3
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1732(%rbp)
	jmp	.LBB7_104
.LBB7_130:                              # %for.end.160.i
                                        #   in Loop: Header=BB7_100 Depth=2
	movl	-1736(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1736(%rbp)
	jmp	.LBB7_100
.LBB7_131:                              # %for.end.163.i
                                        #   in Loop: Header=BB7_98 Depth=1
	movl	$16, %eax
	movl	-1740(%rbp), %ecx
	movl	%eax, -1904(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1904(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_134
# BB#132:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB7_98 Depth=1
	cmpl	$0, -1684(%rbp)
	jne	.LBB7_134
# BB#133:                               # %if.then.166.i
                                        #   in Loop: Header=BB7_98 Depth=1
	cvtsi2sdl	-1740(%rbp), %xmm0
	cvtsi2sdl	-1656(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1908(%rbp)       # 4-byte Spill
.LBB7_134:                              # %if.end.171.i
                                        #   in Loop: Header=BB7_98 Depth=1
	movl	-1740(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1740(%rbp)
	jmp	.LBB7_98
.LBB7_135:                              # %matrixmult_int.exit
	movq	-1864(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_680
.LBB7_136:                              # %if.end
	cmpl	$2, -1840(%rbp)
	jne	.LBB7_272
# BB#137:                               # %land.lhs.true.3
	cmpl	$1, -1844(%rbp)
	jne	.LBB7_272
# BB#138:                               # %if.then.5
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-1808(%rbp), %rdx
	movq	-1816(%rbp), %rsi
	movl	-1820(%rbp), %edi
	movl	-1824(%rbp), %r8d
	movq	-1832(%rbp), %r9
	movl	-1836(%rbp), %r10d
	movl	-1848(%rbp), %r11d
	movl	-1852(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movl	%edi, -1292(%rbp)
	movl	%r8d, -1296(%rbp)
	movq	%r9, -1304(%rbp)
	movl	%r10d, -1308(%rbp)
	movl	$2, -1312(%rbp)
	movl	$1, -1316(%rbp)
	movl	%r11d, -1320(%rbp)
	movl	%ebx, -1324(%rbp)
	movl	-1312(%rbp), %edi
	cmpl	$0, -1316(%rbp)
	cmovnel	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, -1328(%rbp)
	movl	-1292(%rbp), %eax
	imull	-1312(%rbp), %eax
	movl	%eax, -1332(%rbp)
	cmpl	$0, -1316(%rbp)
	movq	%r14, -1920(%rbp)       # 8-byte Spill
	je	.LBB7_140
# BB#139:                               # %cond.true.i.74
	cmpl	$4, -1312(%rbp)
	je	.LBB7_142
	jmp	.LBB7_224
.LBB7_140:                              # %cond.false.i.76
	cmpl	$3, -1312(%rbp)
	je	.LBB7_142
# BB#141:                               # %lor.lhs.false.i.78
	cmpl	$1, -1312(%rbp)
	jne	.LBB7_224
.LBB7_142:                              # %if.then.i.82
	callq	gimp_cpu_accel_get_support
	movl	%eax, -1388(%rbp)
	movl	-1388(%rbp), %eax
	andl	$805306368, %eax        # imm = 0x30000000
	cmpl	$0, %eax
	je	.LBB7_223
# BB#143:                               # %if.then.5.i.88
	movq	-1280(%rbp), %rax
	movq	-1288(%rbp), %rcx
	movl	-1292(%rbp), %edx
	movl	-1296(%rbp), %esi
	movq	-1304(%rbp), %rdi
	movl	-1308(%rbp), %r8d
	movl	-1312(%rbp), %r9d
	movl	-1316(%rbp), %r10d
	movl	-1320(%rbp), %r11d
	movl	-1324(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rax, -1096(%rbp)
	movq	%rcx, -1104(%rbp)
	movl	%edx, -1108(%rbp)
	movl	%esi, -1112(%rbp)
	movq	%rdi, -1120(%rbp)
	movl	%r8d, -1124(%rbp)
	movl	%r9d, -1128(%rbp)
	movl	%r10d, -1132(%rbp)
	movl	%r11d, -1136(%rbp)
	movl	%ebx, -1140(%rbp)
	movl	-1108(%rbp), %edx
	imull	-1128(%rbp), %edx
	movl	%edx, -1144(%rbp)
	movslq	-1136(%rbp), %rax
	movabsq	$281479271743489, %rcx  # imm = 0x1000100010001
	imulq	%rcx, %rax
	movq	%rax, -1152(%rbp)
	cmpl	$0, -1132(%rbp)
	movq	%r14, -1928(%rbp)       # 8-byte Spill
	je	.LBB7_145
# BB#144:                               # %cond.true.i.i.90
	cmpl	$4, -1128(%rbp)
	je	.LBB7_147
	jmp	.LBB7_148
.LBB7_145:                              # %cond.false.i.i.92
	cmpl	$3, -1128(%rbp)
	je	.LBB7_147
# BB#146:                               # %lor.lhs.false.i.i.94
	cmpl	$1, -1128(%rbp)
	jne	.LBB7_148
.LBB7_147:                              # %if.then.i.i.100
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-1124(%rbp), %ecx
	movl	%ecx, %edx
	leal	3(%rdx,%rdx), %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -1160(%rbp)
	movsd	%xmm0, -1168(%rbp)
	subl	-1124(%rbp), %eax
	movl	%eax, -1192(%rbp)
	jmp	.LBB7_149
.LBB7_148:                              # %if.else.i.i.101
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movl	$341, %edx              # imm = 0x155
	movabsq	$.L__func__.matrixmult_mmx, %rcx
	movabsq	$.L.str.31, %r8
	callq	g_assertion_message_expr
.LBB7_149:                              # %for.cond.i.i.103
                                        # =>This Inner Loop Header: Depth=1
	movl	-1192(%rbp), %eax
	cmpl	-1124(%rbp), %eax
	jge	.LBB7_154
# BB#150:                               # %for.body.i.i.105
                                        #   in Loop: Header=BB7_149 Depth=1
	cmpl	$0, -1192(%rbp)
	jge	.LBB7_152
# BB#151:                               # %cond.true.14.i.i.107
                                        #   in Loop: Header=BB7_149 Depth=1
	xorl	%eax, %eax
	subl	-1192(%rbp), %eax
	movl	%eax, -1932(%rbp)       # 4-byte Spill
	jmp	.LBB7_153
.LBB7_152:                              # %cond.false.16.i.i.108
                                        #   in Loop: Header=BB7_149 Depth=1
	movl	-1192(%rbp), %eax
	movl	%eax, -1932(%rbp)       # 4-byte Spill
.LBB7_153:                              # %cond.end.i.i.114
                                        #   in Loop: Header=BB7_149 Depth=1
	movl	-1932(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1120(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-1168(%rbp), %xmm0
	movsd	%xmm0, -1168(%rbp)
	movl	-1192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1192(%rbp)
	jmp	.LBB7_149
.LBB7_154:                              # %for.end.i.i.118
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-1120(%rbp), %rax
	divsd	(%rax), %xmm1
	divsd	-1168(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_156
# BB#155:                               # %cond.true.22.i.i.120
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-1120(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -1944(%rbp)      # 8-byte Spill
	jmp	.LBB7_157
.LBB7_156:                              # %cond.false.25.i.i.122
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-1168(%rbp), %xmm0
	movsd	%xmm0, -1944(%rbp)      # 8-byte Spill
.LBB7_157:                              # %cond.end.27.i.i.124
	movsd	-1944(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1176(%rbp)
	movl	$0, -1192(%rbp)
.LBB7_158:                              # %for.cond.29.i.i.126
                                        # =>This Inner Loop Header: Depth=1
	movl	-1192(%rbp), %eax
	cmpl	-1124(%rbp), %eax
	jge	.LBB7_160
# BB#159:                               # %for.body.32.i.i.138
                                        #   in Loop: Header=BB7_158 Depth=1
	movslq	-1192(%rbp), %rax
	movq	-1120(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-1176(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-1124(%rbp), %edx
	addl	-1192(%rbp), %edx
	movslq	%edx, %rax
	movq	-1160(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1124(%rbp), %edx
	subl	-1192(%rbp), %edx
	movslq	%edx, %rax
	movq	-1160(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1192(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1192(%rbp)
	jmp	.LBB7_158
.LBB7_160:                              # %for.end.45.i.i.139
	movl	-1124(%rbp), %eax
	movl	%eax, -1192(%rbp)
.LBB7_161:                              # %for.cond.46.i.i.142
                                        # =>This Inner Loop Header: Depth=1
	movl	-1192(%rbp), %eax
	movl	-1124(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_163
# BB#162:                               # %for.body.50.i.i.147
                                        #   in Loop: Header=BB7_161 Depth=1
	movl	-1124(%rbp), %eax
	addl	-1192(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1160(%rbp), %rdx
	movw	$0, (%rdx,%rcx,2)
	movl	-1192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1192(%rbp)
	jmp	.LBB7_161
.LBB7_163:                              # %for.end.56.i.i.148
	movl	$0, -1192(%rbp)
.LBB7_164:                              # %for.cond.57.i.i.150
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_166 Depth 2
                                        #       Child Loop BB7_173 Depth 3
                                        #         Child Loop BB7_178 Depth 4
                                        #       Child Loop BB7_190 Depth 3
                                        #         Child Loop BB7_195 Depth 4
	movl	-1192(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jge	.LBB7_222
# BB#165:                               # %for.body.60.i.i.151
                                        #   in Loop: Header=BB7_164 Depth=1
	#APP
	pxor	%mm7, %mm7

	#NO_APP
	movl	$0, -1188(%rbp)
.LBB7_166:                              # %for.cond.61.i.i.153
                                        #   Parent Loop BB7_164 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_173 Depth 3
                                        #         Child Loop BB7_178 Depth 4
                                        #       Child Loop BB7_190 Depth 3
                                        #         Child Loop BB7_195 Depth 4
	movl	-1188(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jge	.LBB7_218
# BB#167:                               # %for.body.64.i.i.158
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	$0, -1220(%rbp)
	movl	$0, -1216(%rbp)
	movl	$0, -1212(%rbp)
	movl	$0, -1208(%rbp)
	movl	$0, -1204(%rbp)
	movl	$0, -1200(%rbp)
	movl	-1128(%rbp), %eax
	movl	-1108(%rbp), %ecx
	imull	-1192(%rbp), %ecx
	addl	-1188(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -1228(%rbp)
	cmpl	$0, -1132(%rbp)
	je	.LBB7_171
# BB#168:                               # %if.then.69.i.i.167
                                        #   in Loop: Header=BB7_166 Depth=2
	movslq	-1228(%rbp), %rax
	movq	-1096(%rbp), %rcx
	movl	(%rcx,%rax), %edx
	movslq	-1228(%rbp), %rax
	movq	-1104(%rbp), %rcx
	movl	%edx, (%rcx,%rax)
	movl	-1228(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-1096(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB7_170
# BB#169:                               # %if.then.78.i.i.168
                                        #   in Loop: Header=BB7_166 Depth=2
	jmp	.LBB7_217
.LBB7_170:                              # %if.end.79.i.i.169
                                        #   in Loop: Header=BB7_166 Depth=2
	jmp	.LBB7_171
.LBB7_171:                              # %if.end.80.i.i.178
                                        #   in Loop: Header=BB7_166 Depth=2
	movslq	-1228(%rbp), %rax
	addq	-1096(%rbp), %rax
	#APP
	movd	(%rax), %mm6
	punpcklbw	%mm7, %mm6

	#NO_APP
	movl	-1144(%rbp), %ecx
	movl	-1192(%rbp), %edx
	subl	-1124(%rbp), %edx
	imull	%edx, %ecx
	movl	-1128(%rbp), %edx
	movl	-1188(%rbp), %esi
	subl	-1124(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -1224(%rbp)
	cmpl	$1, -1128(%rbp)
	jne	.LBB7_189
# BB#172:                               # %if.then.90.i.i.180
                                        #   in Loop: Header=BB7_166 Depth=2
	#APP
	pshufw	$0, %mm6, %mm6

	#NO_APP
	movl	$1, %eax
	subl	-1124(%rbp), %eax
	movl	%eax, -1184(%rbp)
.LBB7_173:                              # %for.cond.92.i.i.182
                                        #   Parent Loop BB7_164 Depth=1
                                        #     Parent Loop BB7_166 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_178 Depth 4
	movl	-1184(%rbp), %eax
	cmpl	-1124(%rbp), %eax
	jge	.LBB7_186
# BB#174:                               # %for.body.95.i.i.186
                                        #   in Loop: Header=BB7_173 Depth=3
	movl	$0, -1244(%rbp)
	movl	$0, -1248(%rbp)
	movl	-1144(%rbp), %eax
	addl	-1224(%rbp), %eax
	movl	%eax, -1224(%rbp)
	movl	-1192(%rbp), %eax
	addl	-1184(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_176
# BB#175:                               # %lor.lhs.false.100.i.i.189
                                        #   in Loop: Header=BB7_173 Depth=3
	movl	-1192(%rbp), %eax
	addl	-1184(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jl	.LBB7_177
.LBB7_176:                              # %if.then.104.i.i.190
                                        #   in Loop: Header=BB7_173 Depth=3
	jmp	.LBB7_185
.LBB7_177:                              # %if.end.105.i.i.195
                                        #   in Loop: Header=BB7_173 Depth=3
	movq	-1096(%rbp), %rax
	movslq	-1224(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movq	%rax, -1240(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4

	#NO_APP
	movl	$1, %edx
	subl	-1124(%rbp), %edx
	movl	%edx, -1180(%rbp)
.LBB7_178:                              # %for.cond.108.i.i.197
                                        #   Parent Loop BB7_164 Depth=1
                                        #     Parent Loop BB7_166 Depth=2
                                        #       Parent Loop BB7_173 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-1180(%rbp), %eax
	cmpl	-1124(%rbp), %eax
	jge	.LBB7_184
# BB#179:                               # %for.body.111.i.i.201
                                        #   in Loop: Header=BB7_178 Depth=4
	movq	-1240(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -1240(%rbp)
	movl	-1188(%rbp), %ecx
	addl	-1180(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB7_181
# BB#180:                               # %lor.lhs.false.116.i.i.204
                                        #   in Loop: Header=BB7_178 Depth=4
	movl	-1188(%rbp), %eax
	addl	-1180(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jl	.LBB7_182
.LBB7_181:                              # %if.then.120.i.i.205
                                        #   in Loop: Header=BB7_178 Depth=4
	jmp	.LBB7_183
.LBB7_182:                              # %if.end.121.i.i.209
                                        #   in Loop: Header=BB7_178 Depth=4
	movq	-1240(%rbp), %rax
	movl	-1124(%rbp), %ecx
	addl	-1180(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-1160(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-1152(%rbp), %mm1
	pandn	(%rdx), %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm4

	#NO_APP
.LBB7_183:                              # %for.inc.125.i.i.211
                                        #   in Loop: Header=BB7_178 Depth=4
	movl	-1180(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -1180(%rbp)
	jmp	.LBB7_178
.LBB7_184:                              # %for.end.127.i.i.222
                                        #   in Loop: Header=BB7_173 Depth=3
	#APP
	pshufw	$177, %mm5, %mm3
	paddusw	%mm3, %mm5
	pshufw	$14, %mm4, %mm2
	pshufw	$14, %mm5, %mm3
	paddd	%mm2, %mm4
	paddusw	%mm3, %mm5
	movd	%mm4, -1244(%rbp)
	movd	%mm5, -1248(%rbp)

	#NO_APP
	movl	-1124(%rbp), %eax
	addl	-1184(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1160(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1196(%rbp)
	movl	-1196(%rbp), %eax
	imull	-1244(%rbp), %eax
	addl	-1200(%rbp), %eax
	movl	%eax, -1200(%rbp)
	movl	-1196(%rbp), %eax
	movl	-1248(%rbp), %esi
	movw	%si, %di
	movzwl	%di, %esi
	imull	%esi, %eax
	addl	-1212(%rbp), %eax
	movl	%eax, -1212(%rbp)
.LBB7_185:                              # %for.inc.138.i.i.224
                                        #   in Loop: Header=BB7_173 Depth=3
	movl	-1184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1184(%rbp)
	jmp	.LBB7_173
.LBB7_186:                              # %for.end.140.i.i.226
                                        #   in Loop: Header=BB7_166 Depth=2
	cmpl	$0, -1212(%rbp)
	je	.LBB7_188
# BB#187:                               # %if.then.142.i.i.231
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	-1200(%rbp), %eax
	xorl	%edx, %edx
	divl	-1212(%rbp)
	movb	%al, %cl
	movslq	-1228(%rbp), %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_188:                              # %if.end.147.i.i.232
                                        #   in Loop: Header=BB7_166 Depth=2
	jmp	.LBB7_216
.LBB7_189:                              # %if.else.148.i.i.234
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	$1, %eax
	subl	-1124(%rbp), %eax
	movl	%eax, -1184(%rbp)
.LBB7_190:                              # %for.cond.150.i.i.236
                                        #   Parent Loop BB7_164 Depth=1
                                        #     Parent Loop BB7_166 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_195 Depth 4
	movl	-1184(%rbp), %eax
	cmpl	-1124(%rbp), %eax
	jge	.LBB7_206
# BB#191:                               # %for.body.153.i.i.240
                                        #   in Loop: Header=BB7_190 Depth=3
	movl	-1144(%rbp), %eax
	addl	-1224(%rbp), %eax
	movl	%eax, -1224(%rbp)
	movl	-1192(%rbp), %eax
	addl	-1184(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_193
# BB#192:                               # %lor.lhs.false.159.i.i.243
                                        #   in Loop: Header=BB7_190 Depth=3
	movl	-1192(%rbp), %eax
	addl	-1184(%rbp), %eax
	cmpl	-1112(%rbp), %eax
	jl	.LBB7_194
.LBB7_193:                              # %if.then.163.i.i.244
                                        #   in Loop: Header=BB7_190 Depth=3
	jmp	.LBB7_205
.LBB7_194:                              # %if.end.164.i.i.248
                                        #   in Loop: Header=BB7_190 Depth=3
	movq	-1096(%rbp), %rax
	movslq	-1224(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -1256(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4
	pxor	%mm3, %mm3

	#NO_APP
	movl	$1, %edx
	subl	-1124(%rbp), %edx
	movl	%edx, -1180(%rbp)
.LBB7_195:                              # %for.cond.168.i.i.250
                                        #   Parent Loop BB7_164 Depth=1
                                        #     Parent Loop BB7_166 Depth=2
                                        #       Parent Loop BB7_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-1180(%rbp), %eax
	cmpl	-1124(%rbp), %eax
	jge	.LBB7_204
# BB#196:                               # %for.body.171.i.i.255
                                        #   in Loop: Header=BB7_195 Depth=4
	movl	-1128(%rbp), %eax
	movq	-1256(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1256(%rbp)
	movl	-1188(%rbp), %eax
	addl	-1180(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_198
# BB#197:                               # %lor.lhs.false.177.i.i.258
                                        #   in Loop: Header=BB7_195 Depth=4
	movl	-1188(%rbp), %eax
	addl	-1180(%rbp), %eax
	cmpl	-1108(%rbp), %eax
	jl	.LBB7_199
.LBB7_198:                              # %if.then.181.i.i.259
                                        #   in Loop: Header=BB7_195 Depth=4
	jmp	.LBB7_203
.LBB7_199:                              # %if.end.182.i.i.261
                                        #   in Loop: Header=BB7_195 Depth=4
	cmpl	$0, -1132(%rbp)
	je	.LBB7_201
# BB#200:                               # %if.then.184.i.i.265
                                        #   in Loop: Header=BB7_195 Depth=4
	movq	-1256(%rbp), %rax
	movl	-1124(%rbp), %ecx
	addl	-1180(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-1160(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-1152(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pshufw	$255, %mm0, %mm2
	psllw	$8, %mm2
	pmulhuw	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
	jmp	.LBB7_202
.LBB7_201:                              # %if.else.188.i.i.269
                                        #   in Loop: Header=BB7_195 Depth=4
	movq	-1256(%rbp), %rax
	movl	-1124(%rbp), %ecx
	addl	-1180(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-1160(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-1152(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
.LBB7_202:                              # %if.end.192.i.i.270
                                        #   in Loop: Header=BB7_195 Depth=4
	jmp	.LBB7_203
.LBB7_203:                              # %for.inc.193.i.i.272
                                        #   in Loop: Header=BB7_195 Depth=4
	movl	-1180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1180(%rbp)
	jmp	.LBB7_195
.LBB7_204:                              # %for.end.195.i.i.296
                                        #   in Loop: Header=BB7_190 Depth=3
	leaq	-1616(%rbp), %rax
	#APP
	movd	%mm4, -1260(%rbp)
	movd	%mm3, -1268(%rbp)
	psrlq	$32, %mm4
	movq	%mm5, (%rax)
	movd	%mm4, -1264(%rbp)

	#NO_APP
	movl	-1124(%rbp), %ecx
	addl	-1184(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-1160(%rbp), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movl	%ecx, -1196(%rbp)
	movl	-1196(%rbp), %ecx
	imull	-1260(%rbp), %ecx
	addl	-1200(%rbp), %ecx
	movl	%ecx, -1200(%rbp)
	movl	-1196(%rbp), %ecx
	imull	-1264(%rbp), %ecx
	addl	-1204(%rbp), %ecx
	movl	%ecx, -1204(%rbp)
	movl	-1196(%rbp), %ecx
	imull	-1268(%rbp), %ecx
	addl	-1208(%rbp), %ecx
	movl	%ecx, -1208(%rbp)
	movl	-1196(%rbp), %ecx
	movzwl	-1616(%rbp), %esi
	imull	%esi, %ecx
	addl	-1212(%rbp), %ecx
	movl	%ecx, -1212(%rbp)
	movl	-1196(%rbp), %ecx
	movzwl	-1614(%rbp), %esi
	imull	%esi, %ecx
	addl	-1216(%rbp), %ecx
	movl	%ecx, -1216(%rbp)
	movl	-1196(%rbp), %ecx
	movzwl	-1612(%rbp), %esi
	imull	%esi, %ecx
	addl	-1220(%rbp), %ecx
	movl	%ecx, -1220(%rbp)
.LBB7_205:                              # %for.inc.218.i.i.298
                                        #   in Loop: Header=BB7_190 Depth=3
	movl	-1184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1184(%rbp)
	jmp	.LBB7_190
.LBB7_206:                              # %for.end.220.i.i.300
                                        #   in Loop: Header=BB7_166 Depth=2
	cmpl	$0, -1132(%rbp)
	je	.LBB7_214
# BB#207:                               # %if.then.222.i.i.302
                                        #   in Loop: Header=BB7_166 Depth=2
	cmpl	$0, -1212(%rbp)
	je	.LBB7_209
# BB#208:                               # %if.then.224.i.i.307
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	-1200(%rbp), %eax
	xorl	%edx, %edx
	divl	-1212(%rbp)
	movb	%al, %cl
	movslq	-1228(%rbp), %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_209:                              # %if.end.230.i.i.309
                                        #   in Loop: Header=BB7_166 Depth=2
	cmpl	$0, -1216(%rbp)
	je	.LBB7_211
# BB#210:                               # %if.then.232.i.i.315
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	-1204(%rbp), %eax
	xorl	%edx, %edx
	divl	-1216(%rbp)
	movb	%al, %cl
	movl	-1228(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_211:                              # %if.end.238.i.i.317
                                        #   in Loop: Header=BB7_166 Depth=2
	cmpl	$0, -1220(%rbp)
	je	.LBB7_213
# BB#212:                               # %if.then.240.i.i.323
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	-1208(%rbp), %eax
	xorl	%edx, %edx
	divl	-1220(%rbp)
	movb	%al, %cl
	movl	-1228(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_213:                              # %if.end.246.i.i.324
                                        #   in Loop: Header=BB7_166 Depth=2
	jmp	.LBB7_215
.LBB7_214:                              # %if.else.247.i.i.339
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	-1200(%rbp), %eax
	xorl	%edx, %edx
	divl	-1212(%rbp)
	movb	%al, %cl
	movslq	-1228(%rbp), %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-1204(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-1216(%rbp)
	movb	%al, %cl
	movl	-1228(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-1208(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-1220(%rbp)
	movb	%al, %cl
	movl	-1228(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-1104(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_215:                              # %if.end.263.i.i.340
                                        #   in Loop: Header=BB7_166 Depth=2
	jmp	.LBB7_216
.LBB7_216:                              # %if.end.264.i.i.341
                                        #   in Loop: Header=BB7_166 Depth=2
	jmp	.LBB7_217
.LBB7_217:                              # %for.inc.265.i.i.343
                                        #   in Loop: Header=BB7_166 Depth=2
	movl	-1188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1188(%rbp)
	jmp	.LBB7_166
.LBB7_218:                              # %for.end.267.i.i.346
                                        #   in Loop: Header=BB7_164 Depth=1
	movl	$16, %eax
	movl	-1192(%rbp), %ecx
	movl	%eax, -1948(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1948(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_221
# BB#219:                               # %land.lhs.true.i.i.348
                                        #   in Loop: Header=BB7_164 Depth=1
	cmpl	$0, -1140(%rbp)
	jne	.LBB7_221
# BB#220:                               # %if.then.270.i.i.353
                                        #   in Loop: Header=BB7_164 Depth=1
	#APP
	emms
	#NO_APP
	cvtsi2sdl	-1192(%rbp), %xmm0
	cvtsi2sdl	-1112(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1952(%rbp)       # 4-byte Spill
.LBB7_221:                              # %if.end.274.i.i.355
                                        #   in Loop: Header=BB7_164 Depth=1
	movl	-1192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1192(%rbp)
	jmp	.LBB7_164
.LBB7_222:                              # %matrixmult_mmx.exit.i.356
	#APP
	emms
	#NO_APP
	movq	-1928(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_271
.LBB7_223:                              # %if.end.i.357
	jmp	.LBB7_224
.LBB7_224:                              # %if.end.6.i.362
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-1308(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -1344(%rbp)
	movsd	%xmm0, -1352(%rbp)
	subl	-1308(%rbp), %eax
	movl	%eax, -1380(%rbp)
.LBB7_225:                              # %for.cond.i.364
                                        # =>This Inner Loop Header: Depth=1
	movl	-1380(%rbp), %eax
	cmpl	-1308(%rbp), %eax
	jge	.LBB7_230
# BB#226:                               # %for.body.i.366
                                        #   in Loop: Header=BB7_225 Depth=1
	cmpl	$0, -1380(%rbp)
	jge	.LBB7_228
# BB#227:                               # %cond.true.14.i.368
                                        #   in Loop: Header=BB7_225 Depth=1
	xorl	%eax, %eax
	subl	-1380(%rbp), %eax
	movl	%eax, -1956(%rbp)       # 4-byte Spill
	jmp	.LBB7_229
.LBB7_228:                              # %cond.false.16.i.369
                                        #   in Loop: Header=BB7_225 Depth=1
	movl	-1380(%rbp), %eax
	movl	%eax, -1956(%rbp)       # 4-byte Spill
.LBB7_229:                              # %cond.end.i.374
                                        #   in Loop: Header=BB7_225 Depth=1
	movl	-1956(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1304(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-1352(%rbp), %xmm0
	movsd	%xmm0, -1352(%rbp)
	movl	-1380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1380(%rbp)
	jmp	.LBB7_225
.LBB7_230:                              # %for.end.i.377
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-1352(%rbp), %xmm0
	movsd	%xmm0, -1360(%rbp)
	movl	$0, -1380(%rbp)
.LBB7_231:                              # %for.cond.18.i.379
                                        # =>This Inner Loop Header: Depth=1
	movl	-1380(%rbp), %eax
	cmpl	-1308(%rbp), %eax
	jge	.LBB7_233
# BB#232:                               # %for.body.21.i.390
                                        #   in Loop: Header=BB7_231 Depth=1
	movslq	-1380(%rbp), %rax
	movq	-1304(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-1360(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-1308(%rbp), %edx
	addl	-1380(%rbp), %edx
	movslq	%edx, %rax
	movq	-1344(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1308(%rbp), %edx
	subl	-1380(%rbp), %edx
	movslq	%edx, %rax
	movq	-1344(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1380(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1380(%rbp)
	jmp	.LBB7_231
.LBB7_233:                              # %for.end.34.i.392
	movl	$0, -1380(%rbp)
.LBB7_234:                              # %for.cond.35.i.394
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_236 Depth 2
                                        #       Child Loop BB7_240 Depth 3
                                        #         Child Loop BB7_242 Depth 4
                                        #           Child Loop BB7_247 Depth 5
	movl	-1380(%rbp), %eax
	cmpl	-1296(%rbp), %eax
	jge	.LBB7_271
# BB#235:                               # %for.body.38.i.395
                                        #   in Loop: Header=BB7_234 Depth=1
	movl	$0, -1376(%rbp)
.LBB7_236:                              # %for.cond.39.i.397
                                        #   Parent Loop BB7_234 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_240 Depth 3
                                        #         Child Loop BB7_242 Depth 4
                                        #           Child Loop BB7_247 Depth 5
	movl	-1376(%rbp), %eax
	cmpl	-1292(%rbp), %eax
	jge	.LBB7_267
# BB#237:                               # %for.body.42.i.402
                                        #   in Loop: Header=BB7_236 Depth=2
	movl	-1312(%rbp), %eax
	movl	-1292(%rbp), %ecx
	imull	-1380(%rbp), %ecx
	addl	-1376(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -1392(%rbp)
	cmpl	$0, -1316(%rbp)
	je	.LBB7_239
# BB#238:                               # %if.then.47.i.409
                                        #   in Loop: Header=BB7_236 Depth=2
	movl	-1392(%rbp), %eax
	addl	-1328(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1280(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-1392(%rbp), %eax
	addl	-1328(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1288(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_239:                              # %if.end.54.i.410
                                        #   in Loop: Header=BB7_236 Depth=2
	movl	$0, -1372(%rbp)
.LBB7_240:                              # %for.cond.55.i.412
                                        #   Parent Loop BB7_234 Depth=1
                                        #     Parent Loop BB7_236 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_242 Depth 4
                                        #           Child Loop BB7_247 Depth 5
	movl	-1372(%rbp), %eax
	cmpl	-1328(%rbp), %eax
	jge	.LBB7_266
# BB#241:                               # %for.body.58.i.423
                                        #   in Loop: Header=BB7_240 Depth=3
	movl	$1, %eax
	movq	-1280(%rbp), %rcx
	movslq	-1392(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-1372(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1400(%rbp)
	movl	$0, -1404(%rbp)
	movl	$0, -1408(%rbp)
	movl	-1332(%rbp), %esi
	movl	-1380(%rbp), %edi
	subl	-1308(%rbp), %edi
	imull	%edi, %esi
	movl	-1312(%rbp), %edi
	movl	-1376(%rbp), %r8d
	subl	-1308(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%esi, -1412(%rbp)
	subl	-1308(%rbp), %eax
	movl	%eax, -1368(%rbp)
.LBB7_242:                              # %for.cond.67.i.425
                                        #   Parent Loop BB7_234 Depth=1
                                        #     Parent Loop BB7_236 Depth=2
                                        #       Parent Loop BB7_240 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_247 Depth 5
	movl	-1368(%rbp), %eax
	cmpl	-1308(%rbp), %eax
	jge	.LBB7_262
# BB#243:                               # %for.body.70.i.429
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	$0, -1428(%rbp)
	movl	$0, -1432(%rbp)
	movl	-1332(%rbp), %eax
	addl	-1412(%rbp), %eax
	movl	%eax, -1412(%rbp)
	movl	-1380(%rbp), %eax
	addl	-1368(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_245
# BB#244:                               # %lor.lhs.false.75.i.432
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	-1380(%rbp), %eax
	addl	-1368(%rbp), %eax
	cmpl	-1296(%rbp), %eax
	jl	.LBB7_246
.LBB7_245:                              # %if.then.79.i.433
                                        #   in Loop: Header=BB7_242 Depth=4
	jmp	.LBB7_261
.LBB7_246:                              # %if.end.80.i.439
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	$1, %eax
	movq	-1280(%rbp), %rcx
	movslq	-1412(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-1372(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1424(%rbp)
	subl	-1308(%rbp), %eax
	movl	%eax, -1364(%rbp)
.LBB7_247:                              # %for.cond.86.i.441
                                        #   Parent Loop BB7_234 Depth=1
                                        #     Parent Loop BB7_236 Depth=2
                                        #       Parent Loop BB7_240 Depth=3
                                        #         Parent Loop BB7_242 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-1364(%rbp), %eax
	cmpl	-1308(%rbp), %eax
	jge	.LBB7_258
# BB#248:                               # %for.body.89.i.446
                                        #   in Loop: Header=BB7_247 Depth=5
	movl	-1312(%rbp), %eax
	movq	-1424(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1424(%rbp)
	movl	-1376(%rbp), %eax
	addl	-1364(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_250
# BB#249:                               # %lor.lhs.false.95.i.449
                                        #   in Loop: Header=BB7_247 Depth=5
	movl	-1376(%rbp), %eax
	addl	-1364(%rbp), %eax
	cmpl	-1292(%rbp), %eax
	jl	.LBB7_251
.LBB7_250:                              # %if.then.99.i.450
                                        #   in Loop: Header=BB7_247 Depth=5
	jmp	.LBB7_257
.LBB7_251:                              # %if.end.100.i.455
                                        #   in Loop: Header=BB7_247 Depth=5
	movq	-1400(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-1424(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -1436(%rbp)
	movl	-1436(%rbp), %ecx
	cmpl	-1320(%rbp), %ecx
	jg	.LBB7_253
# BB#252:                               # %lor.lhs.false.106.i.458
                                        #   in Loop: Header=BB7_247 Depth=5
	xorl	%eax, %eax
	movl	-1436(%rbp), %ecx
	subl	-1320(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB7_254
.LBB7_253:                              # %if.then.110.i.459
                                        #   in Loop: Header=BB7_247 Depth=5
	jmp	.LBB7_257
.LBB7_254:                              # %if.end.111.i.465
                                        #   in Loop: Header=BB7_247 Depth=5
	movl	-1308(%rbp), %eax
	addl	-1364(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1344(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1384(%rbp)
	cmpl	$0, -1316(%rbp)
	je	.LBB7_256
# BB#255:                               # %if.then.117.i.471
                                        #   in Loop: Header=BB7_247 Depth=5
	movl	-1328(%rbp), %eax
	subl	-1372(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1424(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-1384(%rbp), %eax
	movl	%eax, -1384(%rbp)
.LBB7_256:                              # %if.end.123.i.476
                                        #   in Loop: Header=BB7_247 Depth=5
	movl	-1384(%rbp), %eax
	movq	-1424(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	addl	-1428(%rbp), %eax
	movl	%eax, -1428(%rbp)
	movl	-1384(%rbp), %eax
	addl	-1432(%rbp), %eax
	movl	%eax, -1432(%rbp)
.LBB7_257:                              # %for.inc.128.i.478
                                        #   in Loop: Header=BB7_247 Depth=5
	movl	-1364(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1364(%rbp)
	jmp	.LBB7_247
.LBB7_258:                              # %for.end.130.i.484
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	-1308(%rbp), %eax
	addl	-1368(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1344(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1384(%rbp)
	cmpl	$0, -1316(%rbp)
	je	.LBB7_260
# BB#259:                               # %if.then.136.i.487
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	-1428(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -1428(%rbp)
	movl	-1432(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -1432(%rbp)
.LBB7_260:                              # %if.end.138.i.492
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	-1384(%rbp), %eax
	imull	-1428(%rbp), %eax
	addl	-1404(%rbp), %eax
	movl	%eax, -1404(%rbp)
	movl	-1384(%rbp), %eax
	imull	-1432(%rbp), %eax
	addl	-1408(%rbp), %eax
	movl	%eax, -1408(%rbp)
.LBB7_261:                              # %for.inc.143.i.494
                                        #   in Loop: Header=BB7_242 Depth=4
	movl	-1368(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1368(%rbp)
	jmp	.LBB7_242
.LBB7_262:                              # %for.end.145.i.496
                                        #   in Loop: Header=BB7_240 Depth=3
	cmpl	$0, -1408(%rbp)
	jne	.LBB7_264
# BB#263:                               # %if.then.148.i.500
                                        #   in Loop: Header=BB7_240 Depth=3
	movq	-1400(%rbp), %rax
	movb	(%rax), %cl
	movl	-1392(%rbp), %edx
	addl	-1372(%rbp), %edx
	movslq	%edx, %rax
	movq	-1288(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB7_265
.LBB7_264:                              # %if.else.i.506
                                        #   in Loop: Header=BB7_240 Depth=3
	movl	-1404(%rbp), %eax
	xorl	%edx, %edx
	divl	-1408(%rbp)
	movb	%al, %cl
	movl	-1392(%rbp), %eax
	addl	-1372(%rbp), %eax
	movslq	%eax, %rsi
	movq	-1288(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_265:                              # %if.end.157.i.507
                                        #   in Loop: Header=BB7_240 Depth=3
	movl	-1372(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1372(%rbp)
	jmp	.LBB7_240
.LBB7_266:                              # %for.end.160.i.509
                                        #   in Loop: Header=BB7_236 Depth=2
	movl	-1376(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1376(%rbp)
	jmp	.LBB7_236
.LBB7_267:                              # %for.end.163.i.513
                                        #   in Loop: Header=BB7_234 Depth=1
	movl	$16, %eax
	movl	-1380(%rbp), %ecx
	movl	%eax, -1960(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1960(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_270
# BB#268:                               # %land.lhs.true.i.515
                                        #   in Loop: Header=BB7_234 Depth=1
	cmpl	$0, -1324(%rbp)
	jne	.LBB7_270
# BB#269:                               # %if.then.166.i.520
                                        #   in Loop: Header=BB7_234 Depth=1
	cvtsi2sdl	-1380(%rbp), %xmm0
	cvtsi2sdl	-1296(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1964(%rbp)       # 4-byte Spill
.LBB7_270:                              # %if.end.171.i.521
                                        #   in Loop: Header=BB7_234 Depth=1
	movl	-1380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1380(%rbp)
	jmp	.LBB7_234
.LBB7_271:                              # %matrixmult_int.exit524
	movq	-1920(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_680
.LBB7_272:                              # %if.end.6
	cmpl	$3, -1840(%rbp)
	jne	.LBB7_408
# BB#273:                               # %land.lhs.true.8
	cmpl	$0, -1844(%rbp)
	jne	.LBB7_408
# BB#274:                               # %if.then.10
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-1808(%rbp), %rdx
	movq	-1816(%rbp), %rsi
	movl	-1820(%rbp), %edi
	movl	-1824(%rbp), %r8d
	movq	-1832(%rbp), %r9
	movl	-1836(%rbp), %r10d
	movl	-1848(%rbp), %r11d
	movl	-1852(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rdx, -928(%rbp)
	movq	%rsi, -936(%rbp)
	movl	%edi, -940(%rbp)
	movl	%r8d, -944(%rbp)
	movq	%r9, -952(%rbp)
	movl	%r10d, -956(%rbp)
	movl	$3, -960(%rbp)
	movl	$0, -964(%rbp)
	movl	%r11d, -968(%rbp)
	movl	%ebx, -972(%rbp)
	movl	-960(%rbp), %edi
	cmpl	$0, -964(%rbp)
	cmovnel	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, -976(%rbp)
	movl	-940(%rbp), %eax
	imull	-960(%rbp), %eax
	movl	%eax, -980(%rbp)
	cmpl	$0, -964(%rbp)
	movq	%r14, -1976(%rbp)       # 8-byte Spill
	je	.LBB7_276
# BB#275:                               # %cond.true.i.598
	cmpl	$4, -960(%rbp)
	je	.LBB7_278
	jmp	.LBB7_360
.LBB7_276:                              # %cond.false.i.600
	cmpl	$3, -960(%rbp)
	je	.LBB7_278
# BB#277:                               # %lor.lhs.false.i.602
	cmpl	$1, -960(%rbp)
	jne	.LBB7_360
.LBB7_278:                              # %if.then.i.606
	callq	gimp_cpu_accel_get_support
	movl	%eax, -1036(%rbp)
	movl	-1036(%rbp), %eax
	andl	$805306368, %eax        # imm = 0x30000000
	cmpl	$0, %eax
	je	.LBB7_359
# BB#279:                               # %if.then.5.i.612
	movq	-928(%rbp), %rax
	movq	-936(%rbp), %rcx
	movl	-940(%rbp), %edx
	movl	-944(%rbp), %esi
	movq	-952(%rbp), %rdi
	movl	-956(%rbp), %r8d
	movl	-960(%rbp), %r9d
	movl	-964(%rbp), %r10d
	movl	-968(%rbp), %r11d
	movl	-972(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rax, -744(%rbp)
	movq	%rcx, -752(%rbp)
	movl	%edx, -756(%rbp)
	movl	%esi, -760(%rbp)
	movq	%rdi, -768(%rbp)
	movl	%r8d, -772(%rbp)
	movl	%r9d, -776(%rbp)
	movl	%r10d, -780(%rbp)
	movl	%r11d, -784(%rbp)
	movl	%ebx, -788(%rbp)
	movl	-756(%rbp), %edx
	imull	-776(%rbp), %edx
	movl	%edx, -792(%rbp)
	movslq	-784(%rbp), %rax
	movabsq	$281479271743489, %rcx  # imm = 0x1000100010001
	imulq	%rcx, %rax
	movq	%rax, -800(%rbp)
	cmpl	$0, -780(%rbp)
	movq	%r14, -1984(%rbp)       # 8-byte Spill
	je	.LBB7_281
# BB#280:                               # %cond.true.i.i.614
	cmpl	$4, -776(%rbp)
	je	.LBB7_283
	jmp	.LBB7_284
.LBB7_281:                              # %cond.false.i.i.616
	cmpl	$3, -776(%rbp)
	je	.LBB7_283
# BB#282:                               # %lor.lhs.false.i.i.618
	cmpl	$1, -776(%rbp)
	jne	.LBB7_284
.LBB7_283:                              # %if.then.i.i.624
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-772(%rbp), %ecx
	movl	%ecx, %edx
	leal	3(%rdx,%rdx), %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -808(%rbp)
	movsd	%xmm0, -816(%rbp)
	subl	-772(%rbp), %eax
	movl	%eax, -840(%rbp)
	jmp	.LBB7_285
.LBB7_284:                              # %if.else.i.i.625
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movl	$341, %edx              # imm = 0x155
	movabsq	$.L__func__.matrixmult_mmx, %rcx
	movabsq	$.L.str.31, %r8
	callq	g_assertion_message_expr
.LBB7_285:                              # %for.cond.i.i.627
                                        # =>This Inner Loop Header: Depth=1
	movl	-840(%rbp), %eax
	cmpl	-772(%rbp), %eax
	jge	.LBB7_290
# BB#286:                               # %for.body.i.i.629
                                        #   in Loop: Header=BB7_285 Depth=1
	cmpl	$0, -840(%rbp)
	jge	.LBB7_288
# BB#287:                               # %cond.true.14.i.i.631
                                        #   in Loop: Header=BB7_285 Depth=1
	xorl	%eax, %eax
	subl	-840(%rbp), %eax
	movl	%eax, -1988(%rbp)       # 4-byte Spill
	jmp	.LBB7_289
.LBB7_288:                              # %cond.false.16.i.i.632
                                        #   in Loop: Header=BB7_285 Depth=1
	movl	-840(%rbp), %eax
	movl	%eax, -1988(%rbp)       # 4-byte Spill
.LBB7_289:                              # %cond.end.i.i.638
                                        #   in Loop: Header=BB7_285 Depth=1
	movl	-1988(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-768(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-816(%rbp), %xmm0
	movsd	%xmm0, -816(%rbp)
	movl	-840(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -840(%rbp)
	jmp	.LBB7_285
.LBB7_290:                              # %for.end.i.i.642
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-768(%rbp), %rax
	divsd	(%rax), %xmm1
	divsd	-816(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_292
# BB#291:                               # %cond.true.22.i.i.644
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-768(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -2000(%rbp)      # 8-byte Spill
	jmp	.LBB7_293
.LBB7_292:                              # %cond.false.25.i.i.646
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-816(%rbp), %xmm0
	movsd	%xmm0, -2000(%rbp)      # 8-byte Spill
.LBB7_293:                              # %cond.end.27.i.i.648
	movsd	-2000(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -824(%rbp)
	movl	$0, -840(%rbp)
.LBB7_294:                              # %for.cond.29.i.i.650
                                        # =>This Inner Loop Header: Depth=1
	movl	-840(%rbp), %eax
	cmpl	-772(%rbp), %eax
	jge	.LBB7_296
# BB#295:                               # %for.body.32.i.i.662
                                        #   in Loop: Header=BB7_294 Depth=1
	movslq	-840(%rbp), %rax
	movq	-768(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-824(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-772(%rbp), %edx
	addl	-840(%rbp), %edx
	movslq	%edx, %rax
	movq	-808(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-772(%rbp), %edx
	subl	-840(%rbp), %edx
	movslq	%edx, %rax
	movq	-808(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-840(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -840(%rbp)
	jmp	.LBB7_294
.LBB7_296:                              # %for.end.45.i.i.663
	movl	-772(%rbp), %eax
	movl	%eax, -840(%rbp)
.LBB7_297:                              # %for.cond.46.i.i.666
                                        # =>This Inner Loop Header: Depth=1
	movl	-840(%rbp), %eax
	movl	-772(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_299
# BB#298:                               # %for.body.50.i.i.671
                                        #   in Loop: Header=BB7_297 Depth=1
	movl	-772(%rbp), %eax
	addl	-840(%rbp), %eax
	movslq	%eax, %rcx
	movq	-808(%rbp), %rdx
	movw	$0, (%rdx,%rcx,2)
	movl	-840(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -840(%rbp)
	jmp	.LBB7_297
.LBB7_299:                              # %for.end.56.i.i.672
	movl	$0, -840(%rbp)
.LBB7_300:                              # %for.cond.57.i.i.674
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_302 Depth 2
                                        #       Child Loop BB7_309 Depth 3
                                        #         Child Loop BB7_314 Depth 4
                                        #       Child Loop BB7_326 Depth 3
                                        #         Child Loop BB7_331 Depth 4
	movl	-840(%rbp), %eax
	cmpl	-760(%rbp), %eax
	jge	.LBB7_358
# BB#301:                               # %for.body.60.i.i.675
                                        #   in Loop: Header=BB7_300 Depth=1
	#APP
	pxor	%mm7, %mm7

	#NO_APP
	movl	$0, -836(%rbp)
.LBB7_302:                              # %for.cond.61.i.i.677
                                        #   Parent Loop BB7_300 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_309 Depth 3
                                        #         Child Loop BB7_314 Depth 4
                                        #       Child Loop BB7_326 Depth 3
                                        #         Child Loop BB7_331 Depth 4
	movl	-836(%rbp), %eax
	cmpl	-756(%rbp), %eax
	jge	.LBB7_354
# BB#303:                               # %for.body.64.i.i.682
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	$0, -868(%rbp)
	movl	$0, -864(%rbp)
	movl	$0, -860(%rbp)
	movl	$0, -856(%rbp)
	movl	$0, -852(%rbp)
	movl	$0, -848(%rbp)
	movl	-776(%rbp), %eax
	movl	-756(%rbp), %ecx
	imull	-840(%rbp), %ecx
	addl	-836(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -876(%rbp)
	cmpl	$0, -780(%rbp)
	je	.LBB7_307
# BB#304:                               # %if.then.69.i.i.691
                                        #   in Loop: Header=BB7_302 Depth=2
	movslq	-876(%rbp), %rax
	movq	-744(%rbp), %rcx
	movl	(%rcx,%rax), %edx
	movslq	-876(%rbp), %rax
	movq	-752(%rbp), %rcx
	movl	%edx, (%rcx,%rax)
	movl	-876(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-744(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB7_306
# BB#305:                               # %if.then.78.i.i.692
                                        #   in Loop: Header=BB7_302 Depth=2
	jmp	.LBB7_353
.LBB7_306:                              # %if.end.79.i.i.693
                                        #   in Loop: Header=BB7_302 Depth=2
	jmp	.LBB7_307
.LBB7_307:                              # %if.end.80.i.i.702
                                        #   in Loop: Header=BB7_302 Depth=2
	movslq	-876(%rbp), %rax
	addq	-744(%rbp), %rax
	#APP
	movd	(%rax), %mm6
	punpcklbw	%mm7, %mm6

	#NO_APP
	movl	-792(%rbp), %ecx
	movl	-840(%rbp), %edx
	subl	-772(%rbp), %edx
	imull	%edx, %ecx
	movl	-776(%rbp), %edx
	movl	-836(%rbp), %esi
	subl	-772(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -872(%rbp)
	cmpl	$1, -776(%rbp)
	jne	.LBB7_325
# BB#308:                               # %if.then.90.i.i.704
                                        #   in Loop: Header=BB7_302 Depth=2
	#APP
	pshufw	$0, %mm6, %mm6

	#NO_APP
	movl	$1, %eax
	subl	-772(%rbp), %eax
	movl	%eax, -832(%rbp)
.LBB7_309:                              # %for.cond.92.i.i.706
                                        #   Parent Loop BB7_300 Depth=1
                                        #     Parent Loop BB7_302 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_314 Depth 4
	movl	-832(%rbp), %eax
	cmpl	-772(%rbp), %eax
	jge	.LBB7_322
# BB#310:                               # %for.body.95.i.i.710
                                        #   in Loop: Header=BB7_309 Depth=3
	movl	$0, -892(%rbp)
	movl	$0, -896(%rbp)
	movl	-792(%rbp), %eax
	addl	-872(%rbp), %eax
	movl	%eax, -872(%rbp)
	movl	-840(%rbp), %eax
	addl	-832(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_312
# BB#311:                               # %lor.lhs.false.100.i.i.713
                                        #   in Loop: Header=BB7_309 Depth=3
	movl	-840(%rbp), %eax
	addl	-832(%rbp), %eax
	cmpl	-760(%rbp), %eax
	jl	.LBB7_313
.LBB7_312:                              # %if.then.104.i.i.714
                                        #   in Loop: Header=BB7_309 Depth=3
	jmp	.LBB7_321
.LBB7_313:                              # %if.end.105.i.i.719
                                        #   in Loop: Header=BB7_309 Depth=3
	movq	-744(%rbp), %rax
	movslq	-872(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movq	%rax, -888(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4

	#NO_APP
	movl	$1, %edx
	subl	-772(%rbp), %edx
	movl	%edx, -828(%rbp)
.LBB7_314:                              # %for.cond.108.i.i.721
                                        #   Parent Loop BB7_300 Depth=1
                                        #     Parent Loop BB7_302 Depth=2
                                        #       Parent Loop BB7_309 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-828(%rbp), %eax
	cmpl	-772(%rbp), %eax
	jge	.LBB7_320
# BB#315:                               # %for.body.111.i.i.725
                                        #   in Loop: Header=BB7_314 Depth=4
	movq	-888(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -888(%rbp)
	movl	-836(%rbp), %ecx
	addl	-828(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB7_317
# BB#316:                               # %lor.lhs.false.116.i.i.728
                                        #   in Loop: Header=BB7_314 Depth=4
	movl	-836(%rbp), %eax
	addl	-828(%rbp), %eax
	cmpl	-756(%rbp), %eax
	jl	.LBB7_318
.LBB7_317:                              # %if.then.120.i.i.729
                                        #   in Loop: Header=BB7_314 Depth=4
	jmp	.LBB7_319
.LBB7_318:                              # %if.end.121.i.i.733
                                        #   in Loop: Header=BB7_314 Depth=4
	movq	-888(%rbp), %rax
	movl	-772(%rbp), %ecx
	addl	-828(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-808(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-800(%rbp), %mm1
	pandn	(%rdx), %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm4

	#NO_APP
.LBB7_319:                              # %for.inc.125.i.i.735
                                        #   in Loop: Header=BB7_314 Depth=4
	movl	-828(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -828(%rbp)
	jmp	.LBB7_314
.LBB7_320:                              # %for.end.127.i.i.746
                                        #   in Loop: Header=BB7_309 Depth=3
	#APP
	pshufw	$177, %mm5, %mm3
	paddusw	%mm3, %mm5
	pshufw	$14, %mm4, %mm2
	pshufw	$14, %mm5, %mm3
	paddd	%mm2, %mm4
	paddusw	%mm3, %mm5
	movd	%mm4, -892(%rbp)
	movd	%mm5, -896(%rbp)

	#NO_APP
	movl	-772(%rbp), %eax
	addl	-832(%rbp), %eax
	movslq	%eax, %rcx
	movq	-808(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -844(%rbp)
	movl	-844(%rbp), %eax
	imull	-892(%rbp), %eax
	addl	-848(%rbp), %eax
	movl	%eax, -848(%rbp)
	movl	-844(%rbp), %eax
	movl	-896(%rbp), %esi
	movw	%si, %di
	movzwl	%di, %esi
	imull	%esi, %eax
	addl	-860(%rbp), %eax
	movl	%eax, -860(%rbp)
.LBB7_321:                              # %for.inc.138.i.i.748
                                        #   in Loop: Header=BB7_309 Depth=3
	movl	-832(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -832(%rbp)
	jmp	.LBB7_309
.LBB7_322:                              # %for.end.140.i.i.750
                                        #   in Loop: Header=BB7_302 Depth=2
	cmpl	$0, -860(%rbp)
	je	.LBB7_324
# BB#323:                               # %if.then.142.i.i.755
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	-848(%rbp), %eax
	xorl	%edx, %edx
	divl	-860(%rbp)
	movb	%al, %cl
	movslq	-876(%rbp), %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_324:                              # %if.end.147.i.i.756
                                        #   in Loop: Header=BB7_302 Depth=2
	jmp	.LBB7_352
.LBB7_325:                              # %if.else.148.i.i.758
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	$1, %eax
	subl	-772(%rbp), %eax
	movl	%eax, -832(%rbp)
.LBB7_326:                              # %for.cond.150.i.i.760
                                        #   Parent Loop BB7_300 Depth=1
                                        #     Parent Loop BB7_302 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_331 Depth 4
	movl	-832(%rbp), %eax
	cmpl	-772(%rbp), %eax
	jge	.LBB7_342
# BB#327:                               # %for.body.153.i.i.764
                                        #   in Loop: Header=BB7_326 Depth=3
	movl	-792(%rbp), %eax
	addl	-872(%rbp), %eax
	movl	%eax, -872(%rbp)
	movl	-840(%rbp), %eax
	addl	-832(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_329
# BB#328:                               # %lor.lhs.false.159.i.i.767
                                        #   in Loop: Header=BB7_326 Depth=3
	movl	-840(%rbp), %eax
	addl	-832(%rbp), %eax
	cmpl	-760(%rbp), %eax
	jl	.LBB7_330
.LBB7_329:                              # %if.then.163.i.i.768
                                        #   in Loop: Header=BB7_326 Depth=3
	jmp	.LBB7_341
.LBB7_330:                              # %if.end.164.i.i.772
                                        #   in Loop: Header=BB7_326 Depth=3
	movq	-744(%rbp), %rax
	movslq	-872(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4
	pxor	%mm3, %mm3

	#NO_APP
	movl	$1, %edx
	subl	-772(%rbp), %edx
	movl	%edx, -828(%rbp)
.LBB7_331:                              # %for.cond.168.i.i.774
                                        #   Parent Loop BB7_300 Depth=1
                                        #     Parent Loop BB7_302 Depth=2
                                        #       Parent Loop BB7_326 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-828(%rbp), %eax
	cmpl	-772(%rbp), %eax
	jge	.LBB7_340
# BB#332:                               # %for.body.171.i.i.779
                                        #   in Loop: Header=BB7_331 Depth=4
	movl	-776(%rbp), %eax
	movq	-904(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -904(%rbp)
	movl	-836(%rbp), %eax
	addl	-828(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_334
# BB#333:                               # %lor.lhs.false.177.i.i.782
                                        #   in Loop: Header=BB7_331 Depth=4
	movl	-836(%rbp), %eax
	addl	-828(%rbp), %eax
	cmpl	-756(%rbp), %eax
	jl	.LBB7_335
.LBB7_334:                              # %if.then.181.i.i.783
                                        #   in Loop: Header=BB7_331 Depth=4
	jmp	.LBB7_339
.LBB7_335:                              # %if.end.182.i.i.785
                                        #   in Loop: Header=BB7_331 Depth=4
	cmpl	$0, -780(%rbp)
	je	.LBB7_337
# BB#336:                               # %if.then.184.i.i.789
                                        #   in Loop: Header=BB7_331 Depth=4
	movq	-904(%rbp), %rax
	movl	-772(%rbp), %ecx
	addl	-828(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-808(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-800(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pshufw	$255, %mm0, %mm2
	psllw	$8, %mm2
	pmulhuw	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
	jmp	.LBB7_338
.LBB7_337:                              # %if.else.188.i.i.793
                                        #   in Loop: Header=BB7_331 Depth=4
	movq	-904(%rbp), %rax
	movl	-772(%rbp), %ecx
	addl	-828(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-808(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-800(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
.LBB7_338:                              # %if.end.192.i.i.794
                                        #   in Loop: Header=BB7_331 Depth=4
	jmp	.LBB7_339
.LBB7_339:                              # %for.inc.193.i.i.796
                                        #   in Loop: Header=BB7_331 Depth=4
	movl	-828(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -828(%rbp)
	jmp	.LBB7_331
.LBB7_340:                              # %for.end.195.i.i.820
                                        #   in Loop: Header=BB7_326 Depth=3
	leaq	-1616(%rbp), %rax
	#APP
	movd	%mm4, -908(%rbp)
	movd	%mm3, -916(%rbp)
	psrlq	$32, %mm4
	movq	%mm5, (%rax)
	movd	%mm4, -912(%rbp)

	#NO_APP
	movl	-772(%rbp), %ecx
	addl	-832(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-808(%rbp), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movl	%ecx, -844(%rbp)
	movl	-844(%rbp), %ecx
	imull	-908(%rbp), %ecx
	addl	-848(%rbp), %ecx
	movl	%ecx, -848(%rbp)
	movl	-844(%rbp), %ecx
	imull	-912(%rbp), %ecx
	addl	-852(%rbp), %ecx
	movl	%ecx, -852(%rbp)
	movl	-844(%rbp), %ecx
	imull	-916(%rbp), %ecx
	addl	-856(%rbp), %ecx
	movl	%ecx, -856(%rbp)
	movl	-844(%rbp), %ecx
	movzwl	-1616(%rbp), %esi
	imull	%esi, %ecx
	addl	-860(%rbp), %ecx
	movl	%ecx, -860(%rbp)
	movl	-844(%rbp), %ecx
	movzwl	-1614(%rbp), %esi
	imull	%esi, %ecx
	addl	-864(%rbp), %ecx
	movl	%ecx, -864(%rbp)
	movl	-844(%rbp), %ecx
	movzwl	-1612(%rbp), %esi
	imull	%esi, %ecx
	addl	-868(%rbp), %ecx
	movl	%ecx, -868(%rbp)
.LBB7_341:                              # %for.inc.218.i.i.822
                                        #   in Loop: Header=BB7_326 Depth=3
	movl	-832(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -832(%rbp)
	jmp	.LBB7_326
.LBB7_342:                              # %for.end.220.i.i.824
                                        #   in Loop: Header=BB7_302 Depth=2
	cmpl	$0, -780(%rbp)
	je	.LBB7_350
# BB#343:                               # %if.then.222.i.i.826
                                        #   in Loop: Header=BB7_302 Depth=2
	cmpl	$0, -860(%rbp)
	je	.LBB7_345
# BB#344:                               # %if.then.224.i.i.831
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	-848(%rbp), %eax
	xorl	%edx, %edx
	divl	-860(%rbp)
	movb	%al, %cl
	movslq	-876(%rbp), %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_345:                              # %if.end.230.i.i.833
                                        #   in Loop: Header=BB7_302 Depth=2
	cmpl	$0, -864(%rbp)
	je	.LBB7_347
# BB#346:                               # %if.then.232.i.i.839
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	-852(%rbp), %eax
	xorl	%edx, %edx
	divl	-864(%rbp)
	movb	%al, %cl
	movl	-876(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_347:                              # %if.end.238.i.i.841
                                        #   in Loop: Header=BB7_302 Depth=2
	cmpl	$0, -868(%rbp)
	je	.LBB7_349
# BB#348:                               # %if.then.240.i.i.847
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	-856(%rbp), %eax
	xorl	%edx, %edx
	divl	-868(%rbp)
	movb	%al, %cl
	movl	-876(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_349:                              # %if.end.246.i.i.848
                                        #   in Loop: Header=BB7_302 Depth=2
	jmp	.LBB7_351
.LBB7_350:                              # %if.else.247.i.i.863
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	-848(%rbp), %eax
	xorl	%edx, %edx
	divl	-860(%rbp)
	movb	%al, %cl
	movslq	-876(%rbp), %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-852(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-864(%rbp)
	movb	%al, %cl
	movl	-876(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-856(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-868(%rbp)
	movb	%al, %cl
	movl	-876(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-752(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_351:                              # %if.end.263.i.i.864
                                        #   in Loop: Header=BB7_302 Depth=2
	jmp	.LBB7_352
.LBB7_352:                              # %if.end.264.i.i.865
                                        #   in Loop: Header=BB7_302 Depth=2
	jmp	.LBB7_353
.LBB7_353:                              # %for.inc.265.i.i.867
                                        #   in Loop: Header=BB7_302 Depth=2
	movl	-836(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -836(%rbp)
	jmp	.LBB7_302
.LBB7_354:                              # %for.end.267.i.i.870
                                        #   in Loop: Header=BB7_300 Depth=1
	movl	$16, %eax
	movl	-840(%rbp), %ecx
	movl	%eax, -2004(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2004(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_357
# BB#355:                               # %land.lhs.true.i.i.872
                                        #   in Loop: Header=BB7_300 Depth=1
	cmpl	$0, -788(%rbp)
	jne	.LBB7_357
# BB#356:                               # %if.then.270.i.i.877
                                        #   in Loop: Header=BB7_300 Depth=1
	#APP
	emms
	#NO_APP
	cvtsi2sdl	-840(%rbp), %xmm0
	cvtsi2sdl	-760(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2008(%rbp)       # 4-byte Spill
.LBB7_357:                              # %if.end.274.i.i.879
                                        #   in Loop: Header=BB7_300 Depth=1
	movl	-840(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -840(%rbp)
	jmp	.LBB7_300
.LBB7_358:                              # %matrixmult_mmx.exit.i.880
	#APP
	emms
	#NO_APP
	movq	-1984(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_407
.LBB7_359:                              # %if.end.i.881
	jmp	.LBB7_360
.LBB7_360:                              # %if.end.6.i.886
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-956(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -992(%rbp)
	movsd	%xmm0, -1000(%rbp)
	subl	-956(%rbp), %eax
	movl	%eax, -1028(%rbp)
.LBB7_361:                              # %for.cond.i.888
                                        # =>This Inner Loop Header: Depth=1
	movl	-1028(%rbp), %eax
	cmpl	-956(%rbp), %eax
	jge	.LBB7_366
# BB#362:                               # %for.body.i.890
                                        #   in Loop: Header=BB7_361 Depth=1
	cmpl	$0, -1028(%rbp)
	jge	.LBB7_364
# BB#363:                               # %cond.true.14.i.892
                                        #   in Loop: Header=BB7_361 Depth=1
	xorl	%eax, %eax
	subl	-1028(%rbp), %eax
	movl	%eax, -2012(%rbp)       # 4-byte Spill
	jmp	.LBB7_365
.LBB7_364:                              # %cond.false.16.i.893
                                        #   in Loop: Header=BB7_361 Depth=1
	movl	-1028(%rbp), %eax
	movl	%eax, -2012(%rbp)       # 4-byte Spill
.LBB7_365:                              # %cond.end.i.898
                                        #   in Loop: Header=BB7_361 Depth=1
	movl	-2012(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-952(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-1000(%rbp), %xmm0
	movsd	%xmm0, -1000(%rbp)
	movl	-1028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1028(%rbp)
	jmp	.LBB7_361
.LBB7_366:                              # %for.end.i.901
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-1000(%rbp), %xmm0
	movsd	%xmm0, -1008(%rbp)
	movl	$0, -1028(%rbp)
.LBB7_367:                              # %for.cond.18.i.903
                                        # =>This Inner Loop Header: Depth=1
	movl	-1028(%rbp), %eax
	cmpl	-956(%rbp), %eax
	jge	.LBB7_369
# BB#368:                               # %for.body.21.i.914
                                        #   in Loop: Header=BB7_367 Depth=1
	movslq	-1028(%rbp), %rax
	movq	-952(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-1008(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-956(%rbp), %edx
	addl	-1028(%rbp), %edx
	movslq	%edx, %rax
	movq	-992(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-956(%rbp), %edx
	subl	-1028(%rbp), %edx
	movslq	%edx, %rax
	movq	-992(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-1028(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -1028(%rbp)
	jmp	.LBB7_367
.LBB7_369:                              # %for.end.34.i.916
	movl	$0, -1028(%rbp)
.LBB7_370:                              # %for.cond.35.i.918
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_372 Depth 2
                                        #       Child Loop BB7_376 Depth 3
                                        #         Child Loop BB7_378 Depth 4
                                        #           Child Loop BB7_383 Depth 5
	movl	-1028(%rbp), %eax
	cmpl	-944(%rbp), %eax
	jge	.LBB7_407
# BB#371:                               # %for.body.38.i.919
                                        #   in Loop: Header=BB7_370 Depth=1
	movl	$0, -1024(%rbp)
.LBB7_372:                              # %for.cond.39.i.921
                                        #   Parent Loop BB7_370 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_376 Depth 3
                                        #         Child Loop BB7_378 Depth 4
                                        #           Child Loop BB7_383 Depth 5
	movl	-1024(%rbp), %eax
	cmpl	-940(%rbp), %eax
	jge	.LBB7_403
# BB#373:                               # %for.body.42.i.926
                                        #   in Loop: Header=BB7_372 Depth=2
	movl	-960(%rbp), %eax
	movl	-940(%rbp), %ecx
	imull	-1028(%rbp), %ecx
	addl	-1024(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -1040(%rbp)
	cmpl	$0, -964(%rbp)
	je	.LBB7_375
# BB#374:                               # %if.then.47.i.933
                                        #   in Loop: Header=BB7_372 Depth=2
	movl	-1040(%rbp), %eax
	addl	-976(%rbp), %eax
	movslq	%eax, %rcx
	movq	-928(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-1040(%rbp), %eax
	addl	-976(%rbp), %eax
	movslq	%eax, %rcx
	movq	-936(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_375:                              # %if.end.54.i.934
                                        #   in Loop: Header=BB7_372 Depth=2
	movl	$0, -1020(%rbp)
.LBB7_376:                              # %for.cond.55.i.936
                                        #   Parent Loop BB7_370 Depth=1
                                        #     Parent Loop BB7_372 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_378 Depth 4
                                        #           Child Loop BB7_383 Depth 5
	movl	-1020(%rbp), %eax
	cmpl	-976(%rbp), %eax
	jge	.LBB7_402
# BB#377:                               # %for.body.58.i.947
                                        #   in Loop: Header=BB7_376 Depth=3
	movl	$1, %eax
	movq	-928(%rbp), %rcx
	movslq	-1040(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-1020(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1048(%rbp)
	movl	$0, -1052(%rbp)
	movl	$0, -1056(%rbp)
	movl	-980(%rbp), %esi
	movl	-1028(%rbp), %edi
	subl	-956(%rbp), %edi
	imull	%edi, %esi
	movl	-960(%rbp), %edi
	movl	-1024(%rbp), %r8d
	subl	-956(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%esi, -1060(%rbp)
	subl	-956(%rbp), %eax
	movl	%eax, -1016(%rbp)
.LBB7_378:                              # %for.cond.67.i.949
                                        #   Parent Loop BB7_370 Depth=1
                                        #     Parent Loop BB7_372 Depth=2
                                        #       Parent Loop BB7_376 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_383 Depth 5
	movl	-1016(%rbp), %eax
	cmpl	-956(%rbp), %eax
	jge	.LBB7_398
# BB#379:                               # %for.body.70.i.953
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	$0, -1076(%rbp)
	movl	$0, -1080(%rbp)
	movl	-980(%rbp), %eax
	addl	-1060(%rbp), %eax
	movl	%eax, -1060(%rbp)
	movl	-1028(%rbp), %eax
	addl	-1016(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_381
# BB#380:                               # %lor.lhs.false.75.i.956
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	-1028(%rbp), %eax
	addl	-1016(%rbp), %eax
	cmpl	-944(%rbp), %eax
	jl	.LBB7_382
.LBB7_381:                              # %if.then.79.i.957
                                        #   in Loop: Header=BB7_378 Depth=4
	jmp	.LBB7_397
.LBB7_382:                              # %if.end.80.i.963
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	$1, %eax
	movq	-928(%rbp), %rcx
	movslq	-1060(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-1020(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1072(%rbp)
	subl	-956(%rbp), %eax
	movl	%eax, -1012(%rbp)
.LBB7_383:                              # %for.cond.86.i.965
                                        #   Parent Loop BB7_370 Depth=1
                                        #     Parent Loop BB7_372 Depth=2
                                        #       Parent Loop BB7_376 Depth=3
                                        #         Parent Loop BB7_378 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-1012(%rbp), %eax
	cmpl	-956(%rbp), %eax
	jge	.LBB7_394
# BB#384:                               # %for.body.89.i.970
                                        #   in Loop: Header=BB7_383 Depth=5
	movl	-960(%rbp), %eax
	movq	-1072(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1072(%rbp)
	movl	-1024(%rbp), %eax
	addl	-1012(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_386
# BB#385:                               # %lor.lhs.false.95.i.973
                                        #   in Loop: Header=BB7_383 Depth=5
	movl	-1024(%rbp), %eax
	addl	-1012(%rbp), %eax
	cmpl	-940(%rbp), %eax
	jl	.LBB7_387
.LBB7_386:                              # %if.then.99.i.974
                                        #   in Loop: Header=BB7_383 Depth=5
	jmp	.LBB7_393
.LBB7_387:                              # %if.end.100.i.979
                                        #   in Loop: Header=BB7_383 Depth=5
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-1072(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -1084(%rbp)
	movl	-1084(%rbp), %ecx
	cmpl	-968(%rbp), %ecx
	jg	.LBB7_389
# BB#388:                               # %lor.lhs.false.106.i.982
                                        #   in Loop: Header=BB7_383 Depth=5
	xorl	%eax, %eax
	movl	-1084(%rbp), %ecx
	subl	-968(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB7_390
.LBB7_389:                              # %if.then.110.i.983
                                        #   in Loop: Header=BB7_383 Depth=5
	jmp	.LBB7_393
.LBB7_390:                              # %if.end.111.i.989
                                        #   in Loop: Header=BB7_383 Depth=5
	movl	-956(%rbp), %eax
	addl	-1012(%rbp), %eax
	movslq	%eax, %rcx
	movq	-992(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1032(%rbp)
	cmpl	$0, -964(%rbp)
	je	.LBB7_392
# BB#391:                               # %if.then.117.i.995
                                        #   in Loop: Header=BB7_383 Depth=5
	movl	-976(%rbp), %eax
	subl	-1020(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1072(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-1032(%rbp), %eax
	movl	%eax, -1032(%rbp)
.LBB7_392:                              # %if.end.123.i.1000
                                        #   in Loop: Header=BB7_383 Depth=5
	movl	-1032(%rbp), %eax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	addl	-1076(%rbp), %eax
	movl	%eax, -1076(%rbp)
	movl	-1032(%rbp), %eax
	addl	-1080(%rbp), %eax
	movl	%eax, -1080(%rbp)
.LBB7_393:                              # %for.inc.128.i.1002
                                        #   in Loop: Header=BB7_383 Depth=5
	movl	-1012(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1012(%rbp)
	jmp	.LBB7_383
.LBB7_394:                              # %for.end.130.i.1008
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	-956(%rbp), %eax
	addl	-1016(%rbp), %eax
	movslq	%eax, %rcx
	movq	-992(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -1032(%rbp)
	cmpl	$0, -964(%rbp)
	je	.LBB7_396
# BB#395:                               # %if.then.136.i.1011
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	-1076(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -1076(%rbp)
	movl	-1080(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -1080(%rbp)
.LBB7_396:                              # %if.end.138.i.1016
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	-1032(%rbp), %eax
	imull	-1076(%rbp), %eax
	addl	-1052(%rbp), %eax
	movl	%eax, -1052(%rbp)
	movl	-1032(%rbp), %eax
	imull	-1080(%rbp), %eax
	addl	-1056(%rbp), %eax
	movl	%eax, -1056(%rbp)
.LBB7_397:                              # %for.inc.143.i.1018
                                        #   in Loop: Header=BB7_378 Depth=4
	movl	-1016(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1016(%rbp)
	jmp	.LBB7_378
.LBB7_398:                              # %for.end.145.i.1020
                                        #   in Loop: Header=BB7_376 Depth=3
	cmpl	$0, -1056(%rbp)
	jne	.LBB7_400
# BB#399:                               # %if.then.148.i.1024
                                        #   in Loop: Header=BB7_376 Depth=3
	movq	-1048(%rbp), %rax
	movb	(%rax), %cl
	movl	-1040(%rbp), %edx
	addl	-1020(%rbp), %edx
	movslq	%edx, %rax
	movq	-936(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB7_401
.LBB7_400:                              # %if.else.i.1030
                                        #   in Loop: Header=BB7_376 Depth=3
	movl	-1052(%rbp), %eax
	xorl	%edx, %edx
	divl	-1056(%rbp)
	movb	%al, %cl
	movl	-1040(%rbp), %eax
	addl	-1020(%rbp), %eax
	movslq	%eax, %rsi
	movq	-936(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_401:                              # %if.end.157.i.1031
                                        #   in Loop: Header=BB7_376 Depth=3
	movl	-1020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1020(%rbp)
	jmp	.LBB7_376
.LBB7_402:                              # %for.end.160.i.1033
                                        #   in Loop: Header=BB7_372 Depth=2
	movl	-1024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1024(%rbp)
	jmp	.LBB7_372
.LBB7_403:                              # %for.end.163.i.1037
                                        #   in Loop: Header=BB7_370 Depth=1
	movl	$16, %eax
	movl	-1028(%rbp), %ecx
	movl	%eax, -2016(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2016(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_406
# BB#404:                               # %land.lhs.true.i.1039
                                        #   in Loop: Header=BB7_370 Depth=1
	cmpl	$0, -972(%rbp)
	jne	.LBB7_406
# BB#405:                               # %if.then.166.i.1044
                                        #   in Loop: Header=BB7_370 Depth=1
	cvtsi2sdl	-1028(%rbp), %xmm0
	cvtsi2sdl	-944(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2020(%rbp)       # 4-byte Spill
.LBB7_406:                              # %if.end.171.i.1045
                                        #   in Loop: Header=BB7_370 Depth=1
	movl	-1028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1028(%rbp)
	jmp	.LBB7_370
.LBB7_407:                              # %matrixmult_int.exit1048
	movq	-1976(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_680
.LBB7_408:                              # %if.end.11
	cmpl	$4, -1840(%rbp)
	jne	.LBB7_544
# BB#409:                               # %land.lhs.true.13
	cmpl	$1, -1844(%rbp)
	jne	.LBB7_544
# BB#410:                               # %if.then.15
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-1808(%rbp), %rdx
	movq	-1816(%rbp), %rsi
	movl	-1820(%rbp), %edi
	movl	-1824(%rbp), %r8d
	movq	-1832(%rbp), %r9
	movl	-1836(%rbp), %r10d
	movl	-1848(%rbp), %r11d
	movl	-1852(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rdx, -576(%rbp)
	movq	%rsi, -584(%rbp)
	movl	%edi, -588(%rbp)
	movl	%r8d, -592(%rbp)
	movq	%r9, -600(%rbp)
	movl	%r10d, -604(%rbp)
	movl	$4, -608(%rbp)
	movl	$1, -612(%rbp)
	movl	%r11d, -616(%rbp)
	movl	%ebx, -620(%rbp)
	movl	-608(%rbp), %edi
	cmpl	$0, -612(%rbp)
	cmovnel	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, -624(%rbp)
	movl	-588(%rbp), %eax
	imull	-608(%rbp), %eax
	movl	%eax, -628(%rbp)
	cmpl	$0, -612(%rbp)
	movq	%r14, -2032(%rbp)       # 8-byte Spill
	je	.LBB7_412
# BB#411:                               # %cond.true.i.1122
	cmpl	$4, -608(%rbp)
	je	.LBB7_414
	jmp	.LBB7_496
.LBB7_412:                              # %cond.false.i.1124
	cmpl	$3, -608(%rbp)
	je	.LBB7_414
# BB#413:                               # %lor.lhs.false.i.1126
	cmpl	$1, -608(%rbp)
	jne	.LBB7_496
.LBB7_414:                              # %if.then.i.1130
	callq	gimp_cpu_accel_get_support
	movl	%eax, -684(%rbp)
	movl	-684(%rbp), %eax
	andl	$805306368, %eax        # imm = 0x30000000
	cmpl	$0, %eax
	je	.LBB7_495
# BB#415:                               # %if.then.5.i.1136
	movq	-576(%rbp), %rax
	movq	-584(%rbp), %rcx
	movl	-588(%rbp), %edx
	movl	-592(%rbp), %esi
	movq	-600(%rbp), %rdi
	movl	-604(%rbp), %r8d
	movl	-608(%rbp), %r9d
	movl	-612(%rbp), %r10d
	movl	-616(%rbp), %r11d
	movl	-620(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rax, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movl	%edx, -404(%rbp)
	movl	%esi, -408(%rbp)
	movq	%rdi, -416(%rbp)
	movl	%r8d, -420(%rbp)
	movl	%r9d, -424(%rbp)
	movl	%r10d, -428(%rbp)
	movl	%r11d, -432(%rbp)
	movl	%ebx, -436(%rbp)
	movl	-404(%rbp), %edx
	imull	-424(%rbp), %edx
	movl	%edx, -440(%rbp)
	movslq	-432(%rbp), %rax
	movabsq	$281479271743489, %rcx  # imm = 0x1000100010001
	imulq	%rcx, %rax
	movq	%rax, -448(%rbp)
	cmpl	$0, -428(%rbp)
	movq	%r14, -2040(%rbp)       # 8-byte Spill
	je	.LBB7_417
# BB#416:                               # %cond.true.i.i.1138
	cmpl	$4, -424(%rbp)
	je	.LBB7_419
	jmp	.LBB7_420
.LBB7_417:                              # %cond.false.i.i.1140
	cmpl	$3, -424(%rbp)
	je	.LBB7_419
# BB#418:                               # %lor.lhs.false.i.i.1142
	cmpl	$1, -424(%rbp)
	jne	.LBB7_420
.LBB7_419:                              # %if.then.i.i.1148
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-420(%rbp), %ecx
	movl	%ecx, %edx
	leal	3(%rdx,%rdx), %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -456(%rbp)
	movsd	%xmm0, -464(%rbp)
	subl	-420(%rbp), %eax
	movl	%eax, -488(%rbp)
	jmp	.LBB7_421
.LBB7_420:                              # %if.else.i.i.1149
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movl	$341, %edx              # imm = 0x155
	movabsq	$.L__func__.matrixmult_mmx, %rcx
	movabsq	$.L.str.31, %r8
	callq	g_assertion_message_expr
.LBB7_421:                              # %for.cond.i.i.1151
                                        # =>This Inner Loop Header: Depth=1
	movl	-488(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jge	.LBB7_426
# BB#422:                               # %for.body.i.i.1153
                                        #   in Loop: Header=BB7_421 Depth=1
	cmpl	$0, -488(%rbp)
	jge	.LBB7_424
# BB#423:                               # %cond.true.14.i.i.1155
                                        #   in Loop: Header=BB7_421 Depth=1
	xorl	%eax, %eax
	subl	-488(%rbp), %eax
	movl	%eax, -2044(%rbp)       # 4-byte Spill
	jmp	.LBB7_425
.LBB7_424:                              # %cond.false.16.i.i.1156
                                        #   in Loop: Header=BB7_421 Depth=1
	movl	-488(%rbp), %eax
	movl	%eax, -2044(%rbp)       # 4-byte Spill
.LBB7_425:                              # %cond.end.i.i.1162
                                        #   in Loop: Header=BB7_421 Depth=1
	movl	-2044(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-416(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-464(%rbp), %xmm0
	movsd	%xmm0, -464(%rbp)
	movl	-488(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -488(%rbp)
	jmp	.LBB7_421
.LBB7_426:                              # %for.end.i.i.1166
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-416(%rbp), %rax
	divsd	(%rax), %xmm1
	divsd	-464(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_428
# BB#427:                               # %cond.true.22.i.i.1168
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-416(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -2056(%rbp)      # 8-byte Spill
	jmp	.LBB7_429
.LBB7_428:                              # %cond.false.25.i.i.1170
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-464(%rbp), %xmm0
	movsd	%xmm0, -2056(%rbp)      # 8-byte Spill
.LBB7_429:                              # %cond.end.27.i.i.1172
	movsd	-2056(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -472(%rbp)
	movl	$0, -488(%rbp)
.LBB7_430:                              # %for.cond.29.i.i.1174
                                        # =>This Inner Loop Header: Depth=1
	movl	-488(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jge	.LBB7_432
# BB#431:                               # %for.body.32.i.i.1186
                                        #   in Loop: Header=BB7_430 Depth=1
	movslq	-488(%rbp), %rax
	movq	-416(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-472(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-420(%rbp), %edx
	addl	-488(%rbp), %edx
	movslq	%edx, %rax
	movq	-456(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-420(%rbp), %edx
	subl	-488(%rbp), %edx
	movslq	%edx, %rax
	movq	-456(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-488(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -488(%rbp)
	jmp	.LBB7_430
.LBB7_432:                              # %for.end.45.i.i.1187
	movl	-420(%rbp), %eax
	movl	%eax, -488(%rbp)
.LBB7_433:                              # %for.cond.46.i.i.1190
                                        # =>This Inner Loop Header: Depth=1
	movl	-488(%rbp), %eax
	movl	-420(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_435
# BB#434:                               # %for.body.50.i.i.1195
                                        #   in Loop: Header=BB7_433 Depth=1
	movl	-420(%rbp), %eax
	addl	-488(%rbp), %eax
	movslq	%eax, %rcx
	movq	-456(%rbp), %rdx
	movw	$0, (%rdx,%rcx,2)
	movl	-488(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -488(%rbp)
	jmp	.LBB7_433
.LBB7_435:                              # %for.end.56.i.i.1196
	movl	$0, -488(%rbp)
.LBB7_436:                              # %for.cond.57.i.i.1198
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_438 Depth 2
                                        #       Child Loop BB7_445 Depth 3
                                        #         Child Loop BB7_450 Depth 4
                                        #       Child Loop BB7_462 Depth 3
                                        #         Child Loop BB7_467 Depth 4
	movl	-488(%rbp), %eax
	cmpl	-408(%rbp), %eax
	jge	.LBB7_494
# BB#437:                               # %for.body.60.i.i.1199
                                        #   in Loop: Header=BB7_436 Depth=1
	#APP
	pxor	%mm7, %mm7

	#NO_APP
	movl	$0, -484(%rbp)
.LBB7_438:                              # %for.cond.61.i.i.1201
                                        #   Parent Loop BB7_436 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_445 Depth 3
                                        #         Child Loop BB7_450 Depth 4
                                        #       Child Loop BB7_462 Depth 3
                                        #         Child Loop BB7_467 Depth 4
	movl	-484(%rbp), %eax
	cmpl	-404(%rbp), %eax
	jge	.LBB7_490
# BB#439:                               # %for.body.64.i.i.1206
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	$0, -516(%rbp)
	movl	$0, -512(%rbp)
	movl	$0, -508(%rbp)
	movl	$0, -504(%rbp)
	movl	$0, -500(%rbp)
	movl	$0, -496(%rbp)
	movl	-424(%rbp), %eax
	movl	-404(%rbp), %ecx
	imull	-488(%rbp), %ecx
	addl	-484(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -524(%rbp)
	cmpl	$0, -428(%rbp)
	je	.LBB7_443
# BB#440:                               # %if.then.69.i.i.1215
                                        #   in Loop: Header=BB7_438 Depth=2
	movslq	-524(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx,%rax), %edx
	movslq	-524(%rbp), %rax
	movq	-400(%rbp), %rcx
	movl	%edx, (%rcx,%rax)
	movl	-524(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-392(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB7_442
# BB#441:                               # %if.then.78.i.i.1216
                                        #   in Loop: Header=BB7_438 Depth=2
	jmp	.LBB7_489
.LBB7_442:                              # %if.end.79.i.i.1217
                                        #   in Loop: Header=BB7_438 Depth=2
	jmp	.LBB7_443
.LBB7_443:                              # %if.end.80.i.i.1226
                                        #   in Loop: Header=BB7_438 Depth=2
	movslq	-524(%rbp), %rax
	addq	-392(%rbp), %rax
	#APP
	movd	(%rax), %mm6
	punpcklbw	%mm7, %mm6

	#NO_APP
	movl	-440(%rbp), %ecx
	movl	-488(%rbp), %edx
	subl	-420(%rbp), %edx
	imull	%edx, %ecx
	movl	-424(%rbp), %edx
	movl	-484(%rbp), %esi
	subl	-420(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -520(%rbp)
	cmpl	$1, -424(%rbp)
	jne	.LBB7_461
# BB#444:                               # %if.then.90.i.i.1228
                                        #   in Loop: Header=BB7_438 Depth=2
	#APP
	pshufw	$0, %mm6, %mm6

	#NO_APP
	movl	$1, %eax
	subl	-420(%rbp), %eax
	movl	%eax, -480(%rbp)
.LBB7_445:                              # %for.cond.92.i.i.1230
                                        #   Parent Loop BB7_436 Depth=1
                                        #     Parent Loop BB7_438 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_450 Depth 4
	movl	-480(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jge	.LBB7_458
# BB#446:                               # %for.body.95.i.i.1234
                                        #   in Loop: Header=BB7_445 Depth=3
	movl	$0, -540(%rbp)
	movl	$0, -544(%rbp)
	movl	-440(%rbp), %eax
	addl	-520(%rbp), %eax
	movl	%eax, -520(%rbp)
	movl	-488(%rbp), %eax
	addl	-480(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_448
# BB#447:                               # %lor.lhs.false.100.i.i.1237
                                        #   in Loop: Header=BB7_445 Depth=3
	movl	-488(%rbp), %eax
	addl	-480(%rbp), %eax
	cmpl	-408(%rbp), %eax
	jl	.LBB7_449
.LBB7_448:                              # %if.then.104.i.i.1238
                                        #   in Loop: Header=BB7_445 Depth=3
	jmp	.LBB7_457
.LBB7_449:                              # %if.end.105.i.i.1243
                                        #   in Loop: Header=BB7_445 Depth=3
	movq	-392(%rbp), %rax
	movslq	-520(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movq	%rax, -536(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4

	#NO_APP
	movl	$1, %edx
	subl	-420(%rbp), %edx
	movl	%edx, -476(%rbp)
.LBB7_450:                              # %for.cond.108.i.i.1245
                                        #   Parent Loop BB7_436 Depth=1
                                        #     Parent Loop BB7_438 Depth=2
                                        #       Parent Loop BB7_445 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-476(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jge	.LBB7_456
# BB#451:                               # %for.body.111.i.i.1249
                                        #   in Loop: Header=BB7_450 Depth=4
	movq	-536(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -536(%rbp)
	movl	-484(%rbp), %ecx
	addl	-476(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB7_453
# BB#452:                               # %lor.lhs.false.116.i.i.1252
                                        #   in Loop: Header=BB7_450 Depth=4
	movl	-484(%rbp), %eax
	addl	-476(%rbp), %eax
	cmpl	-404(%rbp), %eax
	jl	.LBB7_454
.LBB7_453:                              # %if.then.120.i.i.1253
                                        #   in Loop: Header=BB7_450 Depth=4
	jmp	.LBB7_455
.LBB7_454:                              # %if.end.121.i.i.1257
                                        #   in Loop: Header=BB7_450 Depth=4
	movq	-536(%rbp), %rax
	movl	-420(%rbp), %ecx
	addl	-476(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-456(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-448(%rbp), %mm1
	pandn	(%rdx), %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm4

	#NO_APP
.LBB7_455:                              # %for.inc.125.i.i.1259
                                        #   in Loop: Header=BB7_450 Depth=4
	movl	-476(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -476(%rbp)
	jmp	.LBB7_450
.LBB7_456:                              # %for.end.127.i.i.1270
                                        #   in Loop: Header=BB7_445 Depth=3
	#APP
	pshufw	$177, %mm5, %mm3
	paddusw	%mm3, %mm5
	pshufw	$14, %mm4, %mm2
	pshufw	$14, %mm5, %mm3
	paddd	%mm2, %mm4
	paddusw	%mm3, %mm5
	movd	%mm4, -540(%rbp)
	movd	%mm5, -544(%rbp)

	#NO_APP
	movl	-420(%rbp), %eax
	addl	-480(%rbp), %eax
	movslq	%eax, %rcx
	movq	-456(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -492(%rbp)
	movl	-492(%rbp), %eax
	imull	-540(%rbp), %eax
	addl	-496(%rbp), %eax
	movl	%eax, -496(%rbp)
	movl	-492(%rbp), %eax
	movl	-544(%rbp), %esi
	movw	%si, %di
	movzwl	%di, %esi
	imull	%esi, %eax
	addl	-508(%rbp), %eax
	movl	%eax, -508(%rbp)
.LBB7_457:                              # %for.inc.138.i.i.1272
                                        #   in Loop: Header=BB7_445 Depth=3
	movl	-480(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -480(%rbp)
	jmp	.LBB7_445
.LBB7_458:                              # %for.end.140.i.i.1274
                                        #   in Loop: Header=BB7_438 Depth=2
	cmpl	$0, -508(%rbp)
	je	.LBB7_460
# BB#459:                               # %if.then.142.i.i.1279
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	-496(%rbp), %eax
	xorl	%edx, %edx
	divl	-508(%rbp)
	movb	%al, %cl
	movslq	-524(%rbp), %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_460:                              # %if.end.147.i.i.1280
                                        #   in Loop: Header=BB7_438 Depth=2
	jmp	.LBB7_488
.LBB7_461:                              # %if.else.148.i.i.1282
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	$1, %eax
	subl	-420(%rbp), %eax
	movl	%eax, -480(%rbp)
.LBB7_462:                              # %for.cond.150.i.i.1284
                                        #   Parent Loop BB7_436 Depth=1
                                        #     Parent Loop BB7_438 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_467 Depth 4
	movl	-480(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jge	.LBB7_478
# BB#463:                               # %for.body.153.i.i.1288
                                        #   in Loop: Header=BB7_462 Depth=3
	movl	-440(%rbp), %eax
	addl	-520(%rbp), %eax
	movl	%eax, -520(%rbp)
	movl	-488(%rbp), %eax
	addl	-480(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_465
# BB#464:                               # %lor.lhs.false.159.i.i.1291
                                        #   in Loop: Header=BB7_462 Depth=3
	movl	-488(%rbp), %eax
	addl	-480(%rbp), %eax
	cmpl	-408(%rbp), %eax
	jl	.LBB7_466
.LBB7_465:                              # %if.then.163.i.i.1292
                                        #   in Loop: Header=BB7_462 Depth=3
	jmp	.LBB7_477
.LBB7_466:                              # %if.end.164.i.i.1296
                                        #   in Loop: Header=BB7_462 Depth=3
	movq	-392(%rbp), %rax
	movslq	-520(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -552(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4
	pxor	%mm3, %mm3

	#NO_APP
	movl	$1, %edx
	subl	-420(%rbp), %edx
	movl	%edx, -476(%rbp)
.LBB7_467:                              # %for.cond.168.i.i.1298
                                        #   Parent Loop BB7_436 Depth=1
                                        #     Parent Loop BB7_438 Depth=2
                                        #       Parent Loop BB7_462 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-476(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jge	.LBB7_476
# BB#468:                               # %for.body.171.i.i.1303
                                        #   in Loop: Header=BB7_467 Depth=4
	movl	-424(%rbp), %eax
	movq	-552(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -552(%rbp)
	movl	-484(%rbp), %eax
	addl	-476(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_470
# BB#469:                               # %lor.lhs.false.177.i.i.1306
                                        #   in Loop: Header=BB7_467 Depth=4
	movl	-484(%rbp), %eax
	addl	-476(%rbp), %eax
	cmpl	-404(%rbp), %eax
	jl	.LBB7_471
.LBB7_470:                              # %if.then.181.i.i.1307
                                        #   in Loop: Header=BB7_467 Depth=4
	jmp	.LBB7_475
.LBB7_471:                              # %if.end.182.i.i.1309
                                        #   in Loop: Header=BB7_467 Depth=4
	cmpl	$0, -428(%rbp)
	je	.LBB7_473
# BB#472:                               # %if.then.184.i.i.1313
                                        #   in Loop: Header=BB7_467 Depth=4
	movq	-552(%rbp), %rax
	movl	-420(%rbp), %ecx
	addl	-476(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-456(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-448(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pshufw	$255, %mm0, %mm2
	psllw	$8, %mm2
	pmulhuw	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
	jmp	.LBB7_474
.LBB7_473:                              # %if.else.188.i.i.1317
                                        #   in Loop: Header=BB7_467 Depth=4
	movq	-552(%rbp), %rax
	movl	-420(%rbp), %ecx
	addl	-476(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-456(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-448(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
.LBB7_474:                              # %if.end.192.i.i.1318
                                        #   in Loop: Header=BB7_467 Depth=4
	jmp	.LBB7_475
.LBB7_475:                              # %for.inc.193.i.i.1320
                                        #   in Loop: Header=BB7_467 Depth=4
	movl	-476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -476(%rbp)
	jmp	.LBB7_467
.LBB7_476:                              # %for.end.195.i.i.1344
                                        #   in Loop: Header=BB7_462 Depth=3
	leaq	-1616(%rbp), %rax
	#APP
	movd	%mm4, -556(%rbp)
	movd	%mm3, -564(%rbp)
	psrlq	$32, %mm4
	movq	%mm5, (%rax)
	movd	%mm4, -560(%rbp)

	#NO_APP
	movl	-420(%rbp), %ecx
	addl	-480(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-456(%rbp), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movl	%ecx, -492(%rbp)
	movl	-492(%rbp), %ecx
	imull	-556(%rbp), %ecx
	addl	-496(%rbp), %ecx
	movl	%ecx, -496(%rbp)
	movl	-492(%rbp), %ecx
	imull	-560(%rbp), %ecx
	addl	-500(%rbp), %ecx
	movl	%ecx, -500(%rbp)
	movl	-492(%rbp), %ecx
	imull	-564(%rbp), %ecx
	addl	-504(%rbp), %ecx
	movl	%ecx, -504(%rbp)
	movl	-492(%rbp), %ecx
	movzwl	-1616(%rbp), %esi
	imull	%esi, %ecx
	addl	-508(%rbp), %ecx
	movl	%ecx, -508(%rbp)
	movl	-492(%rbp), %ecx
	movzwl	-1614(%rbp), %esi
	imull	%esi, %ecx
	addl	-512(%rbp), %ecx
	movl	%ecx, -512(%rbp)
	movl	-492(%rbp), %ecx
	movzwl	-1612(%rbp), %esi
	imull	%esi, %ecx
	addl	-516(%rbp), %ecx
	movl	%ecx, -516(%rbp)
.LBB7_477:                              # %for.inc.218.i.i.1346
                                        #   in Loop: Header=BB7_462 Depth=3
	movl	-480(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -480(%rbp)
	jmp	.LBB7_462
.LBB7_478:                              # %for.end.220.i.i.1348
                                        #   in Loop: Header=BB7_438 Depth=2
	cmpl	$0, -428(%rbp)
	je	.LBB7_486
# BB#479:                               # %if.then.222.i.i.1350
                                        #   in Loop: Header=BB7_438 Depth=2
	cmpl	$0, -508(%rbp)
	je	.LBB7_481
# BB#480:                               # %if.then.224.i.i.1355
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	-496(%rbp), %eax
	xorl	%edx, %edx
	divl	-508(%rbp)
	movb	%al, %cl
	movslq	-524(%rbp), %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_481:                              # %if.end.230.i.i.1357
                                        #   in Loop: Header=BB7_438 Depth=2
	cmpl	$0, -512(%rbp)
	je	.LBB7_483
# BB#482:                               # %if.then.232.i.i.1363
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	-500(%rbp), %eax
	xorl	%edx, %edx
	divl	-512(%rbp)
	movb	%al, %cl
	movl	-524(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_483:                              # %if.end.238.i.i.1365
                                        #   in Loop: Header=BB7_438 Depth=2
	cmpl	$0, -516(%rbp)
	je	.LBB7_485
# BB#484:                               # %if.then.240.i.i.1371
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	-504(%rbp), %eax
	xorl	%edx, %edx
	divl	-516(%rbp)
	movb	%al, %cl
	movl	-524(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_485:                              # %if.end.246.i.i.1372
                                        #   in Loop: Header=BB7_438 Depth=2
	jmp	.LBB7_487
.LBB7_486:                              # %if.else.247.i.i.1387
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	-496(%rbp), %eax
	xorl	%edx, %edx
	divl	-508(%rbp)
	movb	%al, %cl
	movslq	-524(%rbp), %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-500(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-512(%rbp)
	movb	%al, %cl
	movl	-524(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-504(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-516(%rbp)
	movb	%al, %cl
	movl	-524(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-400(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_487:                              # %if.end.263.i.i.1388
                                        #   in Loop: Header=BB7_438 Depth=2
	jmp	.LBB7_488
.LBB7_488:                              # %if.end.264.i.i.1389
                                        #   in Loop: Header=BB7_438 Depth=2
	jmp	.LBB7_489
.LBB7_489:                              # %for.inc.265.i.i.1391
                                        #   in Loop: Header=BB7_438 Depth=2
	movl	-484(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -484(%rbp)
	jmp	.LBB7_438
.LBB7_490:                              # %for.end.267.i.i.1394
                                        #   in Loop: Header=BB7_436 Depth=1
	movl	$16, %eax
	movl	-488(%rbp), %ecx
	movl	%eax, -2060(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2060(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_493
# BB#491:                               # %land.lhs.true.i.i.1396
                                        #   in Loop: Header=BB7_436 Depth=1
	cmpl	$0, -436(%rbp)
	jne	.LBB7_493
# BB#492:                               # %if.then.270.i.i.1401
                                        #   in Loop: Header=BB7_436 Depth=1
	#APP
	emms
	#NO_APP
	cvtsi2sdl	-488(%rbp), %xmm0
	cvtsi2sdl	-408(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2064(%rbp)       # 4-byte Spill
.LBB7_493:                              # %if.end.274.i.i.1403
                                        #   in Loop: Header=BB7_436 Depth=1
	movl	-488(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -488(%rbp)
	jmp	.LBB7_436
.LBB7_494:                              # %matrixmult_mmx.exit.i.1404
	#APP
	emms
	#NO_APP
	movq	-2040(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_543
.LBB7_495:                              # %if.end.i.1405
	jmp	.LBB7_496
.LBB7_496:                              # %if.end.6.i.1410
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-604(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -640(%rbp)
	movsd	%xmm0, -648(%rbp)
	subl	-604(%rbp), %eax
	movl	%eax, -676(%rbp)
.LBB7_497:                              # %for.cond.i.1412
                                        # =>This Inner Loop Header: Depth=1
	movl	-676(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jge	.LBB7_502
# BB#498:                               # %for.body.i.1414
                                        #   in Loop: Header=BB7_497 Depth=1
	cmpl	$0, -676(%rbp)
	jge	.LBB7_500
# BB#499:                               # %cond.true.14.i.1416
                                        #   in Loop: Header=BB7_497 Depth=1
	xorl	%eax, %eax
	subl	-676(%rbp), %eax
	movl	%eax, -2068(%rbp)       # 4-byte Spill
	jmp	.LBB7_501
.LBB7_500:                              # %cond.false.16.i.1417
                                        #   in Loop: Header=BB7_497 Depth=1
	movl	-676(%rbp), %eax
	movl	%eax, -2068(%rbp)       # 4-byte Spill
.LBB7_501:                              # %cond.end.i.1422
                                        #   in Loop: Header=BB7_497 Depth=1
	movl	-2068(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-600(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-648(%rbp), %xmm0
	movsd	%xmm0, -648(%rbp)
	movl	-676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)
	jmp	.LBB7_497
.LBB7_502:                              # %for.end.i.1425
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-648(%rbp), %xmm0
	movsd	%xmm0, -656(%rbp)
	movl	$0, -676(%rbp)
.LBB7_503:                              # %for.cond.18.i.1427
                                        # =>This Inner Loop Header: Depth=1
	movl	-676(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jge	.LBB7_505
# BB#504:                               # %for.body.21.i.1438
                                        #   in Loop: Header=BB7_503 Depth=1
	movslq	-676(%rbp), %rax
	movq	-600(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-656(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-604(%rbp), %edx
	addl	-676(%rbp), %edx
	movslq	%edx, %rax
	movq	-640(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-604(%rbp), %edx
	subl	-676(%rbp), %edx
	movslq	%edx, %rax
	movq	-640(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-676(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -676(%rbp)
	jmp	.LBB7_503
.LBB7_505:                              # %for.end.34.i.1440
	movl	$0, -676(%rbp)
.LBB7_506:                              # %for.cond.35.i.1442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_508 Depth 2
                                        #       Child Loop BB7_512 Depth 3
                                        #         Child Loop BB7_514 Depth 4
                                        #           Child Loop BB7_519 Depth 5
	movl	-676(%rbp), %eax
	cmpl	-592(%rbp), %eax
	jge	.LBB7_543
# BB#507:                               # %for.body.38.i.1443
                                        #   in Loop: Header=BB7_506 Depth=1
	movl	$0, -672(%rbp)
.LBB7_508:                              # %for.cond.39.i.1445
                                        #   Parent Loop BB7_506 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_512 Depth 3
                                        #         Child Loop BB7_514 Depth 4
                                        #           Child Loop BB7_519 Depth 5
	movl	-672(%rbp), %eax
	cmpl	-588(%rbp), %eax
	jge	.LBB7_539
# BB#509:                               # %for.body.42.i.1450
                                        #   in Loop: Header=BB7_508 Depth=2
	movl	-608(%rbp), %eax
	movl	-588(%rbp), %ecx
	imull	-676(%rbp), %ecx
	addl	-672(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -688(%rbp)
	cmpl	$0, -612(%rbp)
	je	.LBB7_511
# BB#510:                               # %if.then.47.i.1457
                                        #   in Loop: Header=BB7_508 Depth=2
	movl	-688(%rbp), %eax
	addl	-624(%rbp), %eax
	movslq	%eax, %rcx
	movq	-576(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-688(%rbp), %eax
	addl	-624(%rbp), %eax
	movslq	%eax, %rcx
	movq	-584(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_511:                              # %if.end.54.i.1458
                                        #   in Loop: Header=BB7_508 Depth=2
	movl	$0, -668(%rbp)
.LBB7_512:                              # %for.cond.55.i.1460
                                        #   Parent Loop BB7_506 Depth=1
                                        #     Parent Loop BB7_508 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_514 Depth 4
                                        #           Child Loop BB7_519 Depth 5
	movl	-668(%rbp), %eax
	cmpl	-624(%rbp), %eax
	jge	.LBB7_538
# BB#513:                               # %for.body.58.i.1471
                                        #   in Loop: Header=BB7_512 Depth=3
	movl	$1, %eax
	movq	-576(%rbp), %rcx
	movslq	-688(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-668(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -696(%rbp)
	movl	$0, -700(%rbp)
	movl	$0, -704(%rbp)
	movl	-628(%rbp), %esi
	movl	-676(%rbp), %edi
	subl	-604(%rbp), %edi
	imull	%edi, %esi
	movl	-608(%rbp), %edi
	movl	-672(%rbp), %r8d
	subl	-604(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%esi, -708(%rbp)
	subl	-604(%rbp), %eax
	movl	%eax, -664(%rbp)
.LBB7_514:                              # %for.cond.67.i.1473
                                        #   Parent Loop BB7_506 Depth=1
                                        #     Parent Loop BB7_508 Depth=2
                                        #       Parent Loop BB7_512 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_519 Depth 5
	movl	-664(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jge	.LBB7_534
# BB#515:                               # %for.body.70.i.1477
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	$0, -724(%rbp)
	movl	$0, -728(%rbp)
	movl	-628(%rbp), %eax
	addl	-708(%rbp), %eax
	movl	%eax, -708(%rbp)
	movl	-676(%rbp), %eax
	addl	-664(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_517
# BB#516:                               # %lor.lhs.false.75.i.1480
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	-676(%rbp), %eax
	addl	-664(%rbp), %eax
	cmpl	-592(%rbp), %eax
	jl	.LBB7_518
.LBB7_517:                              # %if.then.79.i.1481
                                        #   in Loop: Header=BB7_514 Depth=4
	jmp	.LBB7_533
.LBB7_518:                              # %if.end.80.i.1487
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	$1, %eax
	movq	-576(%rbp), %rcx
	movslq	-708(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-668(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -720(%rbp)
	subl	-604(%rbp), %eax
	movl	%eax, -660(%rbp)
.LBB7_519:                              # %for.cond.86.i.1489
                                        #   Parent Loop BB7_506 Depth=1
                                        #     Parent Loop BB7_508 Depth=2
                                        #       Parent Loop BB7_512 Depth=3
                                        #         Parent Loop BB7_514 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-660(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jge	.LBB7_530
# BB#520:                               # %for.body.89.i.1494
                                        #   in Loop: Header=BB7_519 Depth=5
	movl	-608(%rbp), %eax
	movq	-720(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -720(%rbp)
	movl	-672(%rbp), %eax
	addl	-660(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_522
# BB#521:                               # %lor.lhs.false.95.i.1497
                                        #   in Loop: Header=BB7_519 Depth=5
	movl	-672(%rbp), %eax
	addl	-660(%rbp), %eax
	cmpl	-588(%rbp), %eax
	jl	.LBB7_523
.LBB7_522:                              # %if.then.99.i.1498
                                        #   in Loop: Header=BB7_519 Depth=5
	jmp	.LBB7_529
.LBB7_523:                              # %if.end.100.i.1503
                                        #   in Loop: Header=BB7_519 Depth=5
	movq	-696(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-720(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -732(%rbp)
	movl	-732(%rbp), %ecx
	cmpl	-616(%rbp), %ecx
	jg	.LBB7_525
# BB#524:                               # %lor.lhs.false.106.i.1506
                                        #   in Loop: Header=BB7_519 Depth=5
	xorl	%eax, %eax
	movl	-732(%rbp), %ecx
	subl	-616(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB7_526
.LBB7_525:                              # %if.then.110.i.1507
                                        #   in Loop: Header=BB7_519 Depth=5
	jmp	.LBB7_529
.LBB7_526:                              # %if.end.111.i.1513
                                        #   in Loop: Header=BB7_519 Depth=5
	movl	-604(%rbp), %eax
	addl	-660(%rbp), %eax
	movslq	%eax, %rcx
	movq	-640(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -680(%rbp)
	cmpl	$0, -612(%rbp)
	je	.LBB7_528
# BB#527:                               # %if.then.117.i.1519
                                        #   in Loop: Header=BB7_519 Depth=5
	movl	-624(%rbp), %eax
	subl	-668(%rbp), %eax
	movslq	%eax, %rcx
	movq	-720(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-680(%rbp), %eax
	movl	%eax, -680(%rbp)
.LBB7_528:                              # %if.end.123.i.1524
                                        #   in Loop: Header=BB7_519 Depth=5
	movl	-680(%rbp), %eax
	movq	-720(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	addl	-724(%rbp), %eax
	movl	%eax, -724(%rbp)
	movl	-680(%rbp), %eax
	addl	-728(%rbp), %eax
	movl	%eax, -728(%rbp)
.LBB7_529:                              # %for.inc.128.i.1526
                                        #   in Loop: Header=BB7_519 Depth=5
	movl	-660(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -660(%rbp)
	jmp	.LBB7_519
.LBB7_530:                              # %for.end.130.i.1532
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	-604(%rbp), %eax
	addl	-664(%rbp), %eax
	movslq	%eax, %rcx
	movq	-640(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -680(%rbp)
	cmpl	$0, -612(%rbp)
	je	.LBB7_532
# BB#531:                               # %if.then.136.i.1535
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	-724(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -724(%rbp)
	movl	-728(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -728(%rbp)
.LBB7_532:                              # %if.end.138.i.1540
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	-680(%rbp), %eax
	imull	-724(%rbp), %eax
	addl	-700(%rbp), %eax
	movl	%eax, -700(%rbp)
	movl	-680(%rbp), %eax
	imull	-728(%rbp), %eax
	addl	-704(%rbp), %eax
	movl	%eax, -704(%rbp)
.LBB7_533:                              # %for.inc.143.i.1542
                                        #   in Loop: Header=BB7_514 Depth=4
	movl	-664(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -664(%rbp)
	jmp	.LBB7_514
.LBB7_534:                              # %for.end.145.i.1544
                                        #   in Loop: Header=BB7_512 Depth=3
	cmpl	$0, -704(%rbp)
	jne	.LBB7_536
# BB#535:                               # %if.then.148.i.1548
                                        #   in Loop: Header=BB7_512 Depth=3
	movq	-696(%rbp), %rax
	movb	(%rax), %cl
	movl	-688(%rbp), %edx
	addl	-668(%rbp), %edx
	movslq	%edx, %rax
	movq	-584(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB7_537
.LBB7_536:                              # %if.else.i.1554
                                        #   in Loop: Header=BB7_512 Depth=3
	movl	-700(%rbp), %eax
	xorl	%edx, %edx
	divl	-704(%rbp)
	movb	%al, %cl
	movl	-688(%rbp), %eax
	addl	-668(%rbp), %eax
	movslq	%eax, %rsi
	movq	-584(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_537:                              # %if.end.157.i.1555
                                        #   in Loop: Header=BB7_512 Depth=3
	movl	-668(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -668(%rbp)
	jmp	.LBB7_512
.LBB7_538:                              # %for.end.160.i.1557
                                        #   in Loop: Header=BB7_508 Depth=2
	movl	-672(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -672(%rbp)
	jmp	.LBB7_508
.LBB7_539:                              # %for.end.163.i.1561
                                        #   in Loop: Header=BB7_506 Depth=1
	movl	$16, %eax
	movl	-676(%rbp), %ecx
	movl	%eax, -2072(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2072(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_542
# BB#540:                               # %land.lhs.true.i.1563
                                        #   in Loop: Header=BB7_506 Depth=1
	cmpl	$0, -620(%rbp)
	jne	.LBB7_542
# BB#541:                               # %if.then.166.i.1568
                                        #   in Loop: Header=BB7_506 Depth=1
	cvtsi2sdl	-676(%rbp), %xmm0
	cvtsi2sdl	-592(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2076(%rbp)       # 4-byte Spill
.LBB7_542:                              # %if.end.171.i.1569
                                        #   in Loop: Header=BB7_506 Depth=1
	movl	-676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)
	jmp	.LBB7_506
.LBB7_543:                              # %matrixmult_int.exit1572
	movq	-2032(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_680
.LBB7_544:                              # %if.end.16
	movl	-1840(%rbp), %eax
	cmpl	-1840(%rbp), %eax
	jne	.LBB7_680
# BB#545:                               # %land.lhs.true.18
	movl	-1844(%rbp), %eax
	cmpl	-1844(%rbp), %eax
	jne	.LBB7_680
# BB#546:                               # %if.then.20
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-1808(%rbp), %rdx
	movq	-1816(%rbp), %rsi
	movl	-1820(%rbp), %edi
	movl	-1824(%rbp), %r8d
	movq	-1832(%rbp), %r9
	movl	-1836(%rbp), %r10d
	movl	-1840(%rbp), %r11d
	movl	-1844(%rbp), %ebx
	movl	-1848(%rbp), %r14d
	movl	-1852(%rbp), %r15d
	movq	%rsp, %r12
	movq	%rdx, -224(%rbp)
	movq	%rsi, -232(%rbp)
	movl	%edi, -236(%rbp)
	movl	%r8d, -240(%rbp)
	movq	%r9, -248(%rbp)
	movl	%r10d, -252(%rbp)
	movl	%r11d, -256(%rbp)
	movl	%ebx, -260(%rbp)
	movl	%r14d, -264(%rbp)
	movl	%r15d, -268(%rbp)
	movl	-256(%rbp), %edi
	cmpl	$0, -260(%rbp)
	cmovnel	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, -272(%rbp)
	movl	-236(%rbp), %eax
	imull	-256(%rbp), %eax
	movl	%eax, -276(%rbp)
	cmpl	$0, -260(%rbp)
	movq	%r12, -2088(%rbp)       # 8-byte Spill
	je	.LBB7_548
# BB#547:                               # %cond.true.i.1646
	cmpl	$4, -256(%rbp)
	je	.LBB7_550
	jmp	.LBB7_632
.LBB7_548:                              # %cond.false.i.1648
	cmpl	$3, -256(%rbp)
	je	.LBB7_550
# BB#549:                               # %lor.lhs.false.i.1650
	cmpl	$1, -256(%rbp)
	jne	.LBB7_632
.LBB7_550:                              # %if.then.i.1654
	callq	gimp_cpu_accel_get_support
	movl	%eax, -332(%rbp)
	movl	-332(%rbp), %eax
	andl	$805306368, %eax        # imm = 0x30000000
	cmpl	$0, %eax
	je	.LBB7_631
# BB#551:                               # %if.then.5.i.1660
	movq	-224(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	-236(%rbp), %edx
	movl	-240(%rbp), %esi
	movq	-248(%rbp), %rdi
	movl	-252(%rbp), %r8d
	movl	-256(%rbp), %r9d
	movl	-260(%rbp), %r10d
	movl	-264(%rbp), %r11d
	movl	-268(%rbp), %ebx
	movq	%rsp, %r14
	movq	%rax, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movl	%r11d, -80(%rbp)
	movl	%ebx, -84(%rbp)
	movl	-52(%rbp), %edx
	imull	-72(%rbp), %edx
	movl	%edx, -88(%rbp)
	movslq	-80(%rbp), %rax
	movabsq	$281479271743489, %rcx  # imm = 0x1000100010001
	imulq	%rcx, %rax
	movq	%rax, -96(%rbp)
	cmpl	$0, -76(%rbp)
	movq	%r14, -2096(%rbp)       # 8-byte Spill
	je	.LBB7_553
# BB#552:                               # %cond.true.i.i.1662
	cmpl	$4, -72(%rbp)
	je	.LBB7_555
	jmp	.LBB7_556
.LBB7_553:                              # %cond.false.i.i.1664
	cmpl	$3, -72(%rbp)
	je	.LBB7_555
# BB#554:                               # %lor.lhs.false.i.i.1666
	cmpl	$1, -72(%rbp)
	jne	.LBB7_556
.LBB7_555:                              # %if.then.i.i.1672
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	leal	3(%rdx,%rdx), %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	subl	-68(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_557
.LBB7_556:                              # %if.else.i.i.1673
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movl	$341, %edx              # imm = 0x155
	movabsq	$.L__func__.matrixmult_mmx, %rcx
	movabsq	$.L.str.31, %r8
	callq	g_assertion_message_expr
.LBB7_557:                              # %for.cond.i.i.1675
                                        # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB7_562
# BB#558:                               # %for.body.i.i.1677
                                        #   in Loop: Header=BB7_557 Depth=1
	cmpl	$0, -136(%rbp)
	jge	.LBB7_560
# BB#559:                               # %cond.true.14.i.i.1679
                                        #   in Loop: Header=BB7_557 Depth=1
	xorl	%eax, %eax
	subl	-136(%rbp), %eax
	movl	%eax, -2100(%rbp)       # 4-byte Spill
	jmp	.LBB7_561
.LBB7_560:                              # %cond.false.16.i.i.1680
                                        #   in Loop: Header=BB7_557 Depth=1
	movl	-136(%rbp), %eax
	movl	%eax, -2100(%rbp)       # 4-byte Spill
.LBB7_561:                              # %cond.end.i.i.1686
                                        #   in Loop: Header=BB7_557 Depth=1
	movl	-2100(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_557
.LBB7_562:                              # %for.end.i.i.1690
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	divsd	(%rax), %xmm1
	divsd	-112(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_564
# BB#563:                               # %cond.true.22.i.i.1692
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -2112(%rbp)      # 8-byte Spill
	jmp	.LBB7_565
.LBB7_564:                              # %cond.false.25.i.i.1694
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -2112(%rbp)      # 8-byte Spill
.LBB7_565:                              # %cond.end.27.i.i.1696
	movsd	-2112(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	$0, -136(%rbp)
.LBB7_566:                              # %for.cond.29.i.i.1698
                                        # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB7_568
# BB#567:                               # %for.body.32.i.i.1710
                                        #   in Loop: Header=BB7_566 Depth=1
	movslq	-136(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-68(%rbp), %edx
	addl	-136(%rbp), %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-68(%rbp), %edx
	subl	-136(%rbp), %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-136(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -136(%rbp)
	jmp	.LBB7_566
.LBB7_568:                              # %for.end.45.i.i.1711
	movl	-68(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB7_569:                              # %for.cond.46.i.i.1714
                                        # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_571
# BB#570:                               # %for.body.50.i.i.1719
                                        #   in Loop: Header=BB7_569 Depth=1
	movl	-68(%rbp), %eax
	addl	-136(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movw	$0, (%rdx,%rcx,2)
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_569
.LBB7_571:                              # %for.end.56.i.i.1720
	movl	$0, -136(%rbp)
.LBB7_572:                              # %for.cond.57.i.i.1722
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_574 Depth 2
                                        #       Child Loop BB7_581 Depth 3
                                        #         Child Loop BB7_586 Depth 4
                                        #       Child Loop BB7_598 Depth 3
                                        #         Child Loop BB7_603 Depth 4
	movl	-136(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB7_630
# BB#573:                               # %for.body.60.i.i.1723
                                        #   in Loop: Header=BB7_572 Depth=1
	#APP
	pxor	%mm7, %mm7

	#NO_APP
	movl	$0, -132(%rbp)
.LBB7_574:                              # %for.cond.61.i.i.1725
                                        #   Parent Loop BB7_572 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_581 Depth 3
                                        #         Child Loop BB7_586 Depth 4
                                        #       Child Loop BB7_598 Depth 3
                                        #         Child Loop BB7_603 Depth 4
	movl	-132(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB7_626
# BB#575:                               # %for.body.64.i.i.1730
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	$0, -164(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -144(%rbp)
	movl	-72(%rbp), %eax
	movl	-52(%rbp), %ecx
	imull	-136(%rbp), %ecx
	addl	-132(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -172(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB7_579
# BB#576:                               # %if.then.69.i.i.1739
                                        #   in Loop: Header=BB7_574 Depth=2
	movslq	-172(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax), %edx
	movslq	-172(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx,%rax)
	movl	-172(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB7_578
# BB#577:                               # %if.then.78.i.i.1740
                                        #   in Loop: Header=BB7_574 Depth=2
	jmp	.LBB7_625
.LBB7_578:                              # %if.end.79.i.i.1741
                                        #   in Loop: Header=BB7_574 Depth=2
	jmp	.LBB7_579
.LBB7_579:                              # %if.end.80.i.i.1750
                                        #   in Loop: Header=BB7_574 Depth=2
	movslq	-172(%rbp), %rax
	addq	-40(%rbp), %rax
	#APP
	movd	(%rax), %mm6
	punpcklbw	%mm7, %mm6

	#NO_APP
	movl	-88(%rbp), %ecx
	movl	-136(%rbp), %edx
	subl	-68(%rbp), %edx
	imull	%edx, %ecx
	movl	-72(%rbp), %edx
	movl	-132(%rbp), %esi
	subl	-68(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -168(%rbp)
	cmpl	$1, -72(%rbp)
	jne	.LBB7_597
# BB#580:                               # %if.then.90.i.i.1752
                                        #   in Loop: Header=BB7_574 Depth=2
	#APP
	pshufw	$0, %mm6, %mm6

	#NO_APP
	movl	$1, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB7_581:                              # %for.cond.92.i.i.1754
                                        #   Parent Loop BB7_572 Depth=1
                                        #     Parent Loop BB7_574 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_586 Depth 4
	movl	-128(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB7_594
# BB#582:                               # %for.body.95.i.i.1758
                                        #   in Loop: Header=BB7_581 Depth=3
	movl	$0, -188(%rbp)
	movl	$0, -192(%rbp)
	movl	-88(%rbp), %eax
	addl	-168(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_584
# BB#583:                               # %lor.lhs.false.100.i.i.1761
                                        #   in Loop: Header=BB7_581 Depth=3
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB7_585
.LBB7_584:                              # %if.then.104.i.i.1762
                                        #   in Loop: Header=BB7_581 Depth=3
	jmp	.LBB7_593
.LBB7_585:                              # %if.end.105.i.i.1767
                                        #   in Loop: Header=BB7_581 Depth=3
	movq	-40(%rbp), %rax
	movslq	-168(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movq	%rax, -184(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4

	#NO_APP
	movl	$1, %edx
	subl	-68(%rbp), %edx
	movl	%edx, -124(%rbp)
.LBB7_586:                              # %for.cond.108.i.i.1769
                                        #   Parent Loop BB7_572 Depth=1
                                        #     Parent Loop BB7_574 Depth=2
                                        #       Parent Loop BB7_581 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-124(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB7_592
# BB#587:                               # %for.body.111.i.i.1773
                                        #   in Loop: Header=BB7_586 Depth=4
	movq	-184(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -184(%rbp)
	movl	-132(%rbp), %ecx
	addl	-124(%rbp), %ecx
	cmpl	$0, %ecx
	jl	.LBB7_589
# BB#588:                               # %lor.lhs.false.116.i.i.1776
                                        #   in Loop: Header=BB7_586 Depth=4
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB7_590
.LBB7_589:                              # %if.then.120.i.i.1777
                                        #   in Loop: Header=BB7_586 Depth=4
	jmp	.LBB7_591
.LBB7_590:                              # %if.end.121.i.i.1781
                                        #   in Loop: Header=BB7_586 Depth=4
	movq	-184(%rbp), %rax
	movl	-68(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-104(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-96(%rbp), %mm1
	pandn	(%rdx), %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm4

	#NO_APP
.LBB7_591:                              # %for.inc.125.i.i.1783
                                        #   in Loop: Header=BB7_586 Depth=4
	movl	-124(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB7_586
.LBB7_592:                              # %for.end.127.i.i.1794
                                        #   in Loop: Header=BB7_581 Depth=3
	#APP
	pshufw	$177, %mm5, %mm3
	paddusw	%mm3, %mm5
	pshufw	$14, %mm4, %mm2
	pshufw	$14, %mm5, %mm3
	paddd	%mm2, %mm4
	paddusw	%mm3, %mm5
	movd	%mm4, -188(%rbp)
	movd	%mm5, -192(%rbp)

	#NO_APP
	movl	-68(%rbp), %eax
	addl	-128(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	imull	-188(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-140(%rbp), %eax
	movl	-192(%rbp), %esi
	movw	%si, %di
	movzwl	%di, %esi
	imull	%esi, %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB7_593:                              # %for.inc.138.i.i.1796
                                        #   in Loop: Header=BB7_581 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB7_581
.LBB7_594:                              # %for.end.140.i.i.1798
                                        #   in Loop: Header=BB7_574 Depth=2
	cmpl	$0, -156(%rbp)
	je	.LBB7_596
# BB#595:                               # %if.then.142.i.i.1803
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	-144(%rbp), %eax
	xorl	%edx, %edx
	divl	-156(%rbp)
	movb	%al, %cl
	movslq	-172(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_596:                              # %if.end.147.i.i.1804
                                        #   in Loop: Header=BB7_574 Depth=2
	jmp	.LBB7_624
.LBB7_597:                              # %if.else.148.i.i.1806
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	$1, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB7_598:                              # %for.cond.150.i.i.1808
                                        #   Parent Loop BB7_572 Depth=1
                                        #     Parent Loop BB7_574 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_603 Depth 4
	movl	-128(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB7_614
# BB#599:                               # %for.body.153.i.i.1812
                                        #   in Loop: Header=BB7_598 Depth=3
	movl	-88(%rbp), %eax
	addl	-168(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_601
# BB#600:                               # %lor.lhs.false.159.i.i.1815
                                        #   in Loop: Header=BB7_598 Depth=3
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB7_602
.LBB7_601:                              # %if.then.163.i.i.1816
                                        #   in Loop: Header=BB7_598 Depth=3
	jmp	.LBB7_613
.LBB7_602:                              # %if.end.164.i.i.1820
                                        #   in Loop: Header=BB7_598 Depth=3
	movq	-40(%rbp), %rax
	movslq	-168(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	#APP
	pxor	%mm5, %mm5
	pxor	%mm4, %mm4
	pxor	%mm3, %mm3

	#NO_APP
	movl	$1, %edx
	subl	-68(%rbp), %edx
	movl	%edx, -124(%rbp)
.LBB7_603:                              # %for.cond.168.i.i.1822
                                        #   Parent Loop BB7_572 Depth=1
                                        #     Parent Loop BB7_574 Depth=2
                                        #       Parent Loop BB7_598 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-124(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB7_612
# BB#604:                               # %for.body.171.i.i.1827
                                        #   in Loop: Header=BB7_603 Depth=4
	movl	-72(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_606
# BB#605:                               # %lor.lhs.false.177.i.i.1830
                                        #   in Loop: Header=BB7_603 Depth=4
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB7_607
.LBB7_606:                              # %if.then.181.i.i.1831
                                        #   in Loop: Header=BB7_603 Depth=4
	jmp	.LBB7_611
.LBB7_607:                              # %if.end.182.i.i.1833
                                        #   in Loop: Header=BB7_603 Depth=4
	cmpl	$0, -76(%rbp)
	je	.LBB7_609
# BB#608:                               # %if.then.184.i.i.1837
                                        #   in Loop: Header=BB7_603 Depth=4
	movq	-200(%rbp), %rax
	movl	-68(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-104(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-96(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pshufw	$255, %mm0, %mm2
	psllw	$8, %mm2
	pmulhuw	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
	jmp	.LBB7_610
.LBB7_609:                              # %if.else.188.i.i.1841
                                        #   in Loop: Header=BB7_603 Depth=4
	movq	-200(%rbp), %rax
	movl	-68(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	-104(%rbp), %rdx
	#APP
	movd	(%rax), %mm0
	movq	%mm6, %mm1
	punpcklbw	%mm7, %mm0
	psubusw	%mm0, %mm1
	movq	%mm0, %mm2
	psubusw	%mm6, %mm2
	por	%mm2, %mm1
	pcmpgtw	-96(%rbp), %mm1
	pshufw	$0, (%rdx), %mm2
	pandn	%mm2, %mm1
	pmullw	%mm1, %mm0
	paddusw	%mm1, %mm5
	movq	%mm0, %mm2
	punpcklwd	%mm7, %mm0
	punpckhwd	%mm7, %mm2
	paddd	%mm0, %mm4
	paddd	%mm2, %mm3

	#NO_APP
.LBB7_610:                              # %if.end.192.i.i.1842
                                        #   in Loop: Header=BB7_603 Depth=4
	jmp	.LBB7_611
.LBB7_611:                              # %for.inc.193.i.i.1844
                                        #   in Loop: Header=BB7_603 Depth=4
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB7_603
.LBB7_612:                              # %for.end.195.i.i.1868
                                        #   in Loop: Header=BB7_598 Depth=3
	leaq	-1616(%rbp), %rax
	#APP
	movd	%mm4, -204(%rbp)
	movd	%mm3, -212(%rbp)
	psrlq	$32, %mm4
	movq	%mm5, (%rax)
	movd	%mm4, -208(%rbp)

	#NO_APP
	movl	-68(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-104(%rbp), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	imull	-204(%rbp), %ecx
	addl	-144(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-140(%rbp), %ecx
	imull	-208(%rbp), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-140(%rbp), %ecx
	imull	-212(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-140(%rbp), %ecx
	movzwl	-1616(%rbp), %esi
	imull	%esi, %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-140(%rbp), %ecx
	movzwl	-1614(%rbp), %esi
	imull	%esi, %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movl	-140(%rbp), %ecx
	movzwl	-1612(%rbp), %esi
	imull	%esi, %ecx
	addl	-164(%rbp), %ecx
	movl	%ecx, -164(%rbp)
.LBB7_613:                              # %for.inc.218.i.i.1870
                                        #   in Loop: Header=BB7_598 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB7_598
.LBB7_614:                              # %for.end.220.i.i.1872
                                        #   in Loop: Header=BB7_574 Depth=2
	cmpl	$0, -76(%rbp)
	je	.LBB7_622
# BB#615:                               # %if.then.222.i.i.1874
                                        #   in Loop: Header=BB7_574 Depth=2
	cmpl	$0, -156(%rbp)
	je	.LBB7_617
# BB#616:                               # %if.then.224.i.i.1879
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	-144(%rbp), %eax
	xorl	%edx, %edx
	divl	-156(%rbp)
	movb	%al, %cl
	movslq	-172(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_617:                              # %if.end.230.i.i.1881
                                        #   in Loop: Header=BB7_574 Depth=2
	cmpl	$0, -160(%rbp)
	je	.LBB7_619
# BB#618:                               # %if.then.232.i.i.1887
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	-148(%rbp), %eax
	xorl	%edx, %edx
	divl	-160(%rbp)
	movb	%al, %cl
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_619:                              # %if.end.238.i.i.1889
                                        #   in Loop: Header=BB7_574 Depth=2
	cmpl	$0, -164(%rbp)
	je	.LBB7_621
# BB#620:                               # %if.then.240.i.i.1895
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	-152(%rbp), %eax
	xorl	%edx, %edx
	divl	-164(%rbp)
	movb	%al, %cl
	movl	-172(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_621:                              # %if.end.246.i.i.1896
                                        #   in Loop: Header=BB7_574 Depth=2
	jmp	.LBB7_623
.LBB7_622:                              # %if.else.247.i.i.1911
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	-144(%rbp), %eax
	xorl	%edx, %edx
	divl	-156(%rbp)
	movb	%al, %cl
	movslq	-172(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-148(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-160(%rbp)
	movb	%al, %cl
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-152(%rbp), %eax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	-164(%rbp)
	movb	%al, %cl
	movl	-172(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_623:                              # %if.end.263.i.i.1912
                                        #   in Loop: Header=BB7_574 Depth=2
	jmp	.LBB7_624
.LBB7_624:                              # %if.end.264.i.i.1913
                                        #   in Loop: Header=BB7_574 Depth=2
	jmp	.LBB7_625
.LBB7_625:                              # %for.inc.265.i.i.1915
                                        #   in Loop: Header=BB7_574 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB7_574
.LBB7_626:                              # %for.end.267.i.i.1918
                                        #   in Loop: Header=BB7_572 Depth=1
	movl	$16, %eax
	movl	-136(%rbp), %ecx
	movl	%eax, -2116(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2116(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_629
# BB#627:                               # %land.lhs.true.i.i.1920
                                        #   in Loop: Header=BB7_572 Depth=1
	cmpl	$0, -84(%rbp)
	jne	.LBB7_629
# BB#628:                               # %if.then.270.i.i.1925
                                        #   in Loop: Header=BB7_572 Depth=1
	#APP
	emms
	#NO_APP
	cvtsi2sdl	-136(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2120(%rbp)       # 4-byte Spill
.LBB7_629:                              # %if.end.274.i.i.1927
                                        #   in Loop: Header=BB7_572 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_572
.LBB7_630:                              # %matrixmult_mmx.exit.i.1928
	#APP
	emms
	#NO_APP
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
	jmp	.LBB7_679
.LBB7_631:                              # %if.end.i.1929
	jmp	.LBB7_632
.LBB7_632:                              # %if.end.6.i.1934
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	movl	-252(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	leaq	15(%rdx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -288(%rbp)
	movsd	%xmm0, -296(%rbp)
	subl	-252(%rbp), %eax
	movl	%eax, -324(%rbp)
.LBB7_633:                              # %for.cond.i.1936
                                        # =>This Inner Loop Header: Depth=1
	movl	-324(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jge	.LBB7_638
# BB#634:                               # %for.body.i.1938
                                        #   in Loop: Header=BB7_633 Depth=1
	cmpl	$0, -324(%rbp)
	jge	.LBB7_636
# BB#635:                               # %cond.true.14.i.1940
                                        #   in Loop: Header=BB7_633 Depth=1
	xorl	%eax, %eax
	subl	-324(%rbp), %eax
	movl	%eax, -2124(%rbp)       # 4-byte Spill
	jmp	.LBB7_637
.LBB7_636:                              # %cond.false.16.i.1941
                                        #   in Loop: Header=BB7_633 Depth=1
	movl	-324(%rbp), %eax
	movl	%eax, -2124(%rbp)       # 4-byte Spill
.LBB7_637:                              # %cond.end.i.1946
                                        #   in Loop: Header=BB7_633 Depth=1
	movl	-2124(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-296(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB7_633
.LBB7_638:                              # %for.end.i.1949
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-296(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)
	movl	$0, -324(%rbp)
.LBB7_639:                              # %for.cond.18.i.1951
                                        # =>This Inner Loop Header: Depth=1
	movl	-324(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jge	.LBB7_641
# BB#640:                               # %for.body.21.i.1962
                                        #   in Loop: Header=BB7_639 Depth=1
	movslq	-324(%rbp), %rax
	movq	-248(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movw	%dx, %si
	movl	-252(%rbp), %edx
	addl	-324(%rbp), %edx
	movslq	%edx, %rax
	movq	-288(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-252(%rbp), %edx
	subl	-324(%rbp), %edx
	movslq	%edx, %rax
	movq	-288(%rbp), %rcx
	movw	%si, (%rcx,%rax,2)
	movl	-324(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -324(%rbp)
	jmp	.LBB7_639
.LBB7_641:                              # %for.end.34.i.1964
	movl	$0, -324(%rbp)
.LBB7_642:                              # %for.cond.35.i.1966
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_644 Depth 2
                                        #       Child Loop BB7_648 Depth 3
                                        #         Child Loop BB7_650 Depth 4
                                        #           Child Loop BB7_655 Depth 5
	movl	-324(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jge	.LBB7_679
# BB#643:                               # %for.body.38.i.1967
                                        #   in Loop: Header=BB7_642 Depth=1
	movl	$0, -320(%rbp)
.LBB7_644:                              # %for.cond.39.i.1969
                                        #   Parent Loop BB7_642 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_648 Depth 3
                                        #         Child Loop BB7_650 Depth 4
                                        #           Child Loop BB7_655 Depth 5
	movl	-320(%rbp), %eax
	cmpl	-236(%rbp), %eax
	jge	.LBB7_675
# BB#645:                               # %for.body.42.i.1974
                                        #   in Loop: Header=BB7_644 Depth=2
	movl	-256(%rbp), %eax
	movl	-236(%rbp), %ecx
	imull	-324(%rbp), %ecx
	addl	-320(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -336(%rbp)
	cmpl	$0, -260(%rbp)
	je	.LBB7_647
# BB#646:                               # %if.then.47.i.1981
                                        #   in Loop: Header=BB7_644 Depth=2
	movl	-336(%rbp), %eax
	addl	-272(%rbp), %eax
	movslq	%eax, %rcx
	movq	-224(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-336(%rbp), %eax
	addl	-272(%rbp), %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_647:                              # %if.end.54.i.1982
                                        #   in Loop: Header=BB7_644 Depth=2
	movl	$0, -316(%rbp)
.LBB7_648:                              # %for.cond.55.i.1984
                                        #   Parent Loop BB7_642 Depth=1
                                        #     Parent Loop BB7_644 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_650 Depth 4
                                        #           Child Loop BB7_655 Depth 5
	movl	-316(%rbp), %eax
	cmpl	-272(%rbp), %eax
	jge	.LBB7_674
# BB#649:                               # %for.body.58.i.1995
                                        #   in Loop: Header=BB7_648 Depth=3
	movl	$1, %eax
	movq	-224(%rbp), %rcx
	movslq	-336(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-316(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -344(%rbp)
	movl	$0, -348(%rbp)
	movl	$0, -352(%rbp)
	movl	-276(%rbp), %esi
	movl	-324(%rbp), %edi
	subl	-252(%rbp), %edi
	imull	%edi, %esi
	movl	-256(%rbp), %edi
	movl	-320(%rbp), %r8d
	subl	-252(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%esi, -356(%rbp)
	subl	-252(%rbp), %eax
	movl	%eax, -312(%rbp)
.LBB7_650:                              # %for.cond.67.i.1997
                                        #   Parent Loop BB7_642 Depth=1
                                        #     Parent Loop BB7_644 Depth=2
                                        #       Parent Loop BB7_648 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_655 Depth 5
	movl	-312(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jge	.LBB7_670
# BB#651:                               # %for.body.70.i.2001
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	$0, -372(%rbp)
	movl	$0, -376(%rbp)
	movl	-276(%rbp), %eax
	addl	-356(%rbp), %eax
	movl	%eax, -356(%rbp)
	movl	-324(%rbp), %eax
	addl	-312(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_653
# BB#652:                               # %lor.lhs.false.75.i.2004
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	-324(%rbp), %eax
	addl	-312(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jl	.LBB7_654
.LBB7_653:                              # %if.then.79.i.2005
                                        #   in Loop: Header=BB7_650 Depth=4
	jmp	.LBB7_669
.LBB7_654:                              # %if.end.80.i.2011
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	$1, %eax
	movq	-224(%rbp), %rcx
	movslq	-356(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-316(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -368(%rbp)
	subl	-252(%rbp), %eax
	movl	%eax, -308(%rbp)
.LBB7_655:                              # %for.cond.86.i.2013
                                        #   Parent Loop BB7_642 Depth=1
                                        #     Parent Loop BB7_644 Depth=2
                                        #       Parent Loop BB7_648 Depth=3
                                        #         Parent Loop BB7_650 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-308(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jge	.LBB7_666
# BB#656:                               # %for.body.89.i.2018
                                        #   in Loop: Header=BB7_655 Depth=5
	movl	-256(%rbp), %eax
	movq	-368(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -368(%rbp)
	movl	-320(%rbp), %eax
	addl	-308(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_658
# BB#657:                               # %lor.lhs.false.95.i.2021
                                        #   in Loop: Header=BB7_655 Depth=5
	movl	-320(%rbp), %eax
	addl	-308(%rbp), %eax
	cmpl	-236(%rbp), %eax
	jl	.LBB7_659
.LBB7_658:                              # %if.then.99.i.2022
                                        #   in Loop: Header=BB7_655 Depth=5
	jmp	.LBB7_665
.LBB7_659:                              # %if.end.100.i.2027
                                        #   in Loop: Header=BB7_655 Depth=5
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-368(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -380(%rbp)
	movl	-380(%rbp), %ecx
	cmpl	-264(%rbp), %ecx
	jg	.LBB7_661
# BB#660:                               # %lor.lhs.false.106.i.2030
                                        #   in Loop: Header=BB7_655 Depth=5
	xorl	%eax, %eax
	movl	-380(%rbp), %ecx
	subl	-264(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB7_662
.LBB7_661:                              # %if.then.110.i.2031
                                        #   in Loop: Header=BB7_655 Depth=5
	jmp	.LBB7_665
.LBB7_662:                              # %if.end.111.i.2037
                                        #   in Loop: Header=BB7_655 Depth=5
	movl	-252(%rbp), %eax
	addl	-308(%rbp), %eax
	movslq	%eax, %rcx
	movq	-288(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -260(%rbp)
	je	.LBB7_664
# BB#663:                               # %if.then.117.i.2043
                                        #   in Loop: Header=BB7_655 Depth=5
	movl	-272(%rbp), %eax
	subl	-316(%rbp), %eax
	movslq	%eax, %rcx
	movq	-368(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	-328(%rbp), %eax
	movl	%eax, -328(%rbp)
.LBB7_664:                              # %if.end.123.i.2048
                                        #   in Loop: Header=BB7_655 Depth=5
	movl	-328(%rbp), %eax
	movq	-368(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	addl	-372(%rbp), %eax
	movl	%eax, -372(%rbp)
	movl	-328(%rbp), %eax
	addl	-376(%rbp), %eax
	movl	%eax, -376(%rbp)
.LBB7_665:                              # %for.inc.128.i.2050
                                        #   in Loop: Header=BB7_655 Depth=5
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
	jmp	.LBB7_655
.LBB7_666:                              # %for.end.130.i.2056
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	-252(%rbp), %eax
	addl	-312(%rbp), %eax
	movslq	%eax, %rcx
	movq	-288(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -260(%rbp)
	je	.LBB7_668
# BB#667:                               # %if.then.136.i.2059
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	-372(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -372(%rbp)
	movl	-376(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -376(%rbp)
.LBB7_668:                              # %if.end.138.i.2064
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	-328(%rbp), %eax
	imull	-372(%rbp), %eax
	addl	-348(%rbp), %eax
	movl	%eax, -348(%rbp)
	movl	-328(%rbp), %eax
	imull	-376(%rbp), %eax
	addl	-352(%rbp), %eax
	movl	%eax, -352(%rbp)
.LBB7_669:                              # %for.inc.143.i.2066
                                        #   in Loop: Header=BB7_650 Depth=4
	movl	-312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -312(%rbp)
	jmp	.LBB7_650
.LBB7_670:                              # %for.end.145.i.2068
                                        #   in Loop: Header=BB7_648 Depth=3
	cmpl	$0, -352(%rbp)
	jne	.LBB7_672
# BB#671:                               # %if.then.148.i.2072
                                        #   in Loop: Header=BB7_648 Depth=3
	movq	-344(%rbp), %rax
	movb	(%rax), %cl
	movl	-336(%rbp), %edx
	addl	-316(%rbp), %edx
	movslq	%edx, %rax
	movq	-232(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
	jmp	.LBB7_673
.LBB7_672:                              # %if.else.i.2078
                                        #   in Loop: Header=BB7_648 Depth=3
	movl	-348(%rbp), %eax
	xorl	%edx, %edx
	divl	-352(%rbp)
	movb	%al, %cl
	movl	-336(%rbp), %eax
	addl	-316(%rbp), %eax
	movslq	%eax, %rsi
	movq	-232(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB7_673:                              # %if.end.157.i.2079
                                        #   in Loop: Header=BB7_648 Depth=3
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB7_648
.LBB7_674:                              # %for.end.160.i.2081
                                        #   in Loop: Header=BB7_644 Depth=2
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB7_644
.LBB7_675:                              # %for.end.163.i.2085
                                        #   in Loop: Header=BB7_642 Depth=1
	movl	$16, %eax
	movl	-324(%rbp), %ecx
	movl	%eax, -2128(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2128(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_678
# BB#676:                               # %land.lhs.true.i.2087
                                        #   in Loop: Header=BB7_642 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB7_678
# BB#677:                               # %if.then.166.i.2092
                                        #   in Loop: Header=BB7_642 Depth=1
	cvtsi2sdl	-324(%rbp), %xmm0
	cvtsi2sdl	-240(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2132(%rbp)       # 4-byte Spill
.LBB7_678:                              # %if.end.171.i.2093
                                        #   in Loop: Header=BB7_642 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB7_642
.LBB7_679:                              # %matrixmult_int.exit2096
	movq	-2088(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rsp
.LBB7_680:                              # %if.end.21
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	matrixmult, .Lfunc_end7-matrixmult
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
	.asciz	"radius"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Radius of gaussian blur (in pixels, > 0.0)"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"max-delta"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Maximum delta"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-sel-gauss"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Blur neighboring pixels, but only in low-contrast areas"
	.size	.L.str.11, 56

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This filter functions similar to the regular gaussian blur filter except that neighbouring pixels that differ more than the given maxdelta parameter will not be blended with. This way with the correct parameters, an image can be smoothed out without losing details. However, this filter can be rather slow."
	.size	.L.str.12, 307

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Thom van Os"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1999"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Selective Gaussian Blur..."
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Filters/Blur"
	.size	.L.str.17, 21

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

	.type	bvals,@object           # @bvals
	.data
	.align	8
bvals:
	.quad	4617315517961601024     # double 5
	.long	50                      # 0x32
	.zero	4
	.size	bvals, 16

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Selective Gaussian Blur"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.21, 40

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"blur-gauss-selective"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-blur-gauss-selective"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-cancel"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-ok"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalidated"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Blur radius:"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"value-changed"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Max. delta:"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"blur-gauss-selective.c"
	.size	.L.str.30, 23

	.type	.L__func__.matrixmult_mmx,@object # @__func__.matrixmult_mmx
.L__func__.matrixmult_mmx:
	.asciz	"matrixmult_mmx"
	.size	.L__func__.matrixmult_mmx, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"has_alpha ? (bytes == 4) : (bytes == 3 || bytes == 1)"
	.size	.L.str.31, 54


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
