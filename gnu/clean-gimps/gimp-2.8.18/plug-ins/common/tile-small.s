	.text
	.file	"tile-small.bc"
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$4, %r11d
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
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.15, %rsi
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
	subq	$144, %rsp
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
	movabsq	$.L.str.16, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.16, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	%rax, tileitdrawable
	movq	-48(%rbp), %rax
	movl	20(%rax), %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	callq	gimp_tile_cache_ntiles
	movq	tileitdrawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movabsq	$sel_x1, %rsi
	movabsq	$sel_y1, %rdx
	movabsq	$sel_width, %rcx
	movabsq	$sel_height, %r8
	movl	%eax, has_alpha
	movq	-48(%rbp), %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_38
.LBB1_4:                                # %if.end
	movl	sel_x1, %eax
	addl	sel_width, %eax
	movl	%eax, sel_x2
	movl	sel_y1, %eax
	addl	sel_height, %eax
	movl	%eax, sel_y2
	movl	sel_width, %eax
	cmpl	sel_height, %eax
	jle	.LBB1_9
# BB#5:                                 # %if.then.14
	cmpl	$128, sel_width
	jge	.LBB1_7
# BB#6:                                 # %cond.true
	movl	sel_width, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	movl	$128, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	sel_height, %eax
	imull	-60(%rbp), %eax
	cltd
	idivl	sel_width
	movl	%eax, -64(%rbp)
	jmp	.LBB1_13
.LBB1_9:                                # %if.else
	cmpl	$128, sel_height
	jge	.LBB1_11
# BB#10:                                # %cond.true.19
	movl	sel_height, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.20
	movl	$128, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               # %cond.end.21
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	sel_width, %eax
	imull	-64(%rbp), %eax
	cltd
	idivl	sel_height
	movl	%eax, -60(%rbp)
.LBB1_13:                               # %if.end.25
	cmpl	$2, -60(%rbp)
	jle	.LBB1_15
# BB#14:                                # %cond.true.28
	movl	-60(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.29
	movl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               # %cond.end.30
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, preview_width
	cmpl	$2, -64(%rbp)
	jle	.LBB1_18
# BB#17:                                # %cond.true.34
	movl	-64(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.35
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_19:                               # %cond.end.36
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, preview_height(%rip)
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_20
	jmp	.LBB1_39
.LBB1_39:                               # %cond.end.36
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_40
.LBB1_40:                               # %cond.end.36
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_28
.LBB1_20:                               # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$itvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	tileit_dialog
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %if.then.41
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_38
.LBB1_22:                               # %if.end.42
	jmp	.LBB1_29
.LBB1_23:                               # %sw.bb.43
	cmpl	$4, -12(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.46
	movl	$1, -56(%rbp)
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.47
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, itvals
.LBB1_26:                               # %if.end.51
	jmp	.LBB1_29
.LBB1_27:                               # %sw.bb.52
	movabsq	$.L.str.8, %rdi
	movabsq	$itvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %sw.default
	jmp	.LBB1_29
.LBB1_29:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_31
# BB#30:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_36
.LBB1_31:                               # %if.then.60
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	do_tiles
	cmpl	$1, -52(%rbp)
	je	.LBB1_33
# BB#32:                                # %if.then.65
	callq	gimp_displays_flush
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_33:                               # %if.end.67
	cmpl	$0, -52(%rbp)
	jne	.LBB1_35
# BB#34:                                # %if.then.70
	movabsq	$.L.str.8, %rdi
	movabsq	$itvals, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_35:                               # %if.end.72
	jmp	.LBB1_37
.LBB1_36:                               # %if.else.73
	movl	$0, -56(%rbp)
.LBB1_37:                               # %if.end.74
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_38:                               # %return
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

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4618441417868443648     # double 6
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_3:
	.quad	4636737291354636288     # double 100
.LCPI4_4:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_5:
	.long	1065353216              # float 1
.LCPI4_6:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	tileit_dialog,@function
tileit_dialog:                          # @tileit_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movabsq	$.L.str.20, %rdi
	movl	$1, %esi
	movq	$0, -136(%rbp)
	callq	gimp_ui_init
	callq	cache_preview
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.23, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.24, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -156(%rbp)        # 4-byte Spill
	movl	%r10d, -160(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
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
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	%rax, tint
	movq	tint, %rdi
	movl	preview_width, %esi
	movl	preview_height, %edx
	callq	gtk_widget_set_size_request
	movq	tint, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$274, %esi              # imm = 0x112
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	tint, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	tint, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$tileit_preview_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %r9d
	movq	tint, %r11
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$tileit_preview_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	tint, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	-288(%rbp), %r8         # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
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
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$tileit_hvtoggle_update, %rax
	movabsq	$do_horz, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %r11
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	-128(%rbp), %rcx
	movq	%rcx, res_call
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$tileit_hvtoggle_update, %rax
	movabsq	$do_vert, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %r11
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rdi
	movq	-128(%rbp), %rcx
	movq	%rcx, res_call+8
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$tileit_reset, %rax
	movabsq	$res_call, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r11
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$4, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %ecx        # 4-byte Reload
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rdi
	movq	-136(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$4, %edx
	movl	$1, %r9d
	movl	$5, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-476(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-480(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -484(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.29, %rsi
	movabsq	$tileit_radio_update, %rax
	movabsq	$exp_call, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rdi
	movq	-136(%rbp), %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$5, %r10d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -532(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.29, %rsi
	movabsq	$tileit_radio_update, %rax
	movabsq	$exp_call, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rdi
	movq	-136(%rbp), %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$4, %r9d
	movl	$6, %r10d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -580(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_6, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movl	$6, %r8d
	movl	$4, %r10d
	xorl	%ebx, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	movl	-604(%rbp), %r14d       # 4-byte Reload
	movl	%r8d, -608(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -612(%rbp)        # 4-byte Spill
	movl	%r10d, -616(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rcx
	movl	$2, %r8d
	movq	-128(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-624(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	leaq	-112(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movsd	%xmm1, -632(%rbp)       # 8-byte Spill
	movsd	-632(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-632(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-632(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-72(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$6, %r10d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -660(%rbp)       # 4-byte Spill
	movl	%ebx, -664(%rbp)        # 4-byte Spill
	movl	%r10d, -668(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$tileit_exp_update_f, %rax
	movabsq	$exp_call, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r11
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rcx
	movl	$2, %r8d
	movq	-112(%rbp), %rdx
	movq	%rdx, exp_call+16
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-688(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movabsq	$.L.str.41, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_6, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -724(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rcx
	movl	$2, %r8d
	movq	-128(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-736(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	leaq	-112(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movsd	%xmm1, -744(%rbp)       # 8-byte Spill
	movsd	-744(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-744(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-744(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-72(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -772(%rbp)        # 4-byte Spill
	movl	%r10d, -776(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$tileit_exp_update_f, %rax
	movabsq	$exp_call, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r11
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-784(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rcx
	movl	$2, %r8d
	movq	-112(%rbp), %rdx
	movq	%rdx, exp_call+24
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-792(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movl	$2, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.29, %rsi
	movabsq	$tileit_radio_update, %rax
	movabsq	$exp_call, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %r9d
	movl	$2, %r8d
	xorl	%r10d, %r10d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -828(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$tileit_exp_update, %rax
	movabsq	$exp_call, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r11
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-840(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rcx
	movl	$2, %r8d
	movq	-88(%rbp), %rdx
	movq	%rdx, exp_call+32
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-848(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -884(%rbp)        # 4-byte Spill
	movl	-884(%rbp), %ecx        # 4-byte Reload
	movl	-884(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$80, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cvtsi2sdl	opacity, %xmm1
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -916(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-928(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-928(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-928(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.40, %rsi
	movabsq	$tileit_scale_update, %rcx
	movabsq	$opacity, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-936(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	movl	has_alpha, %esi
	callq	gtk_widget_set_sensitive
	movq	-72(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movabsq	$.L.str.45, %rsi
	movl	$80, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm3, %xmm3
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	cvtsi2sdl	itvals, %xmm4
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -992(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -996(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-992(%rbp), %rcx        # 8-byte Reload
	movsd	%xmm0, -1008(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-1008(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -1016(%rbp)      # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1016(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1016(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.40, %rsi
	movabsq	$tileit_scale_update, %rcx
	movabsq	$itvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	callq	dialog_update_preview
	movq	-32(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -140(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-140(%rbp), %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tileit_dialog, .Lfunc_end4-tileit_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	do_tiles,@function
do_tiles:                               # @do_tiles
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
	subq	$176, %rsp
	xorl	%esi, %esi
	movq	tileitdrawable, %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-48(%rbp), %rdi
	movl	$1, %esi
	movq	%rax, -120(%rbp)
	movq	tileitdrawable, %rax
	movl	sel_x1, %edx
	movl	sel_y1, %ecx
	movl	sel_width, %r8d
	movl	sel_height, %r9d
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -60(%rbp)
	movl	sel_width, %ecx
	imull	sel_height, %ecx
	movl	%ecx, -64(%rbp)
	movq	tileitdrawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, img_bpp
	cmpl	$0, has_alpha
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movl	img_bpp, %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movl	img_bpp, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB5_3:                                # %cond.end
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	$1, %edi
	leaq	-48(%rbp), %rsi
	movl	%eax, -92(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -56(%rbp)
.LBB5_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_8 Depth 3
                                        #         Child Loop BB5_10 Depth 4
	cmpq	$0, -56(%rbp)
	je	.LBB5_21
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -84(%rbp)
.LBB5_6:                                # %for.cond.3
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_8 Depth 3
                                        #         Child Loop BB5_10 Depth 4
	movl	-84(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_19
# BB#7:                                 # %for.body.6
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB5_8:                                # %for.cond.7
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_10 Depth 4
	movl	-88(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_17
# BB#9:                                 # %for.body.11
                                        #   in Loop: Header=BB5_8 Depth=3
	leaq	-100(%rbp), %r8
	leaq	-104(%rbp), %r9
	movl	sel_width, %edi
	movl	sel_height, %esi
	movl	-88(%rbp), %eax
	subl	sel_x1, %eax
	movl	-84(%rbp), %ecx
	subl	sel_y1, %ecx
	movl	%eax, %edx
	callq	tiles_xy
	leaq	-96(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-100(%rbp), %edx
	addl	sel_x1, %edx
	movl	-104(%rbp), %esi
	addl	sel_y1, %esi
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -108(%rbp)
.LBB5_10:                               # %for.cond.17
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        #       Parent Loop BB5_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-108(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB5_13
# BB#11:                                # %for.body.19
                                        #   in Loop: Header=BB5_10 Depth=4
	movslq	-108(%rbp), %rax
	movb	-96(%rbp,%rax), %cl
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movb	%cl, (%rax)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB5_10 Depth=4
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB5_10
.LBB5_13:                               # %for.end
                                        #   in Loop: Header=BB5_8 Depth=3
	cmpl	$0, has_alpha
	je	.LBB5_15
# BB#14:                                # %if.then
                                        #   in Loop: Header=BB5_8 Depth=3
	movl	$100, %eax
	movslq	-92(%rbp), %rcx
	movzbl	-96(%rbp,%rcx), %edx
	imull	opacity, %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movq	-80(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -80(%rbp)
	movb	%dil, (%rcx)
.LBB5_15:                               # %if.end
                                        #   in Loop: Header=BB5_8 Depth=3
	jmp	.LBB5_16
.LBB5_16:                               # %for.inc.26
                                        #   in Loop: Header=BB5_8 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_8
.LBB5_17:                               # %for.end.28
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	-28(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#18:                                # %for.inc.29
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_6
.LBB5_19:                               # %for.end.31
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -144(%rbp)        # 4-byte Spill
# BB#20:                                # %for.inc.40
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -56(%rbp)
	jmp	.LBB5_4
.LBB5_21:                               # %for.end.42
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-120(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_destroy
	movq	tileitdrawable, %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	tileitdrawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	tileitdrawable, %rcx
	movl	(%rcx), %edi
	movl	sel_x1, %esi
	movl	sel_y1, %edx
	movl	sel_width, %ecx
	movl	sel_height, %r8d
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -156(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	do_tiles, .Lfunc_end5-do_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	cache_preview,@function
cache_preview:                          # @cache_preview
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
	subq	$128, %rsp
	leaq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	$0, -76(%rbp)
	movq	tileitdrawable, %rsi
	movl	sel_x1, %edx
	movl	sel_y1, %ecx
	movl	sel_width, %r8d
	movl	sel_height, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	sel_width, %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movl	preview_width, %ecx
	imull	preview_height, %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, tint+528
	movq	%rax, -72(%rbp)
	movq	tileitdrawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, tint+520
	cmpl	$3, tint+520
	jge	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, has_alpha
	cmovnel	%ecx, %eax
	addl	$3, %eax
	movl	%eax, tint+520
.LBB6_2:                                # %if.end
	movq	tileitdrawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	movl	%eax, -76(%rbp)
	movl	$0, -52(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #       Child Loop BB6_7 Depth 3
	movl	-52(%rbp), %eax
	cmpl	preview_height, %eax
	jge	.LBB6_19
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	sel_x1, %edx
	movl	sel_y1, %eax
	movl	-52(%rbp), %ecx
	imull	sel_height, %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -92(%rbp)         # 4-byte Spill
	cltd
	idivl	preview_height
	movl	-88(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	sel_width, %r8d
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_row
	movl	$0, -56(%rbp)
.LBB6_5:                                # %for.cond.13
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_7 Depth 3
	movl	-56(%rbp), %eax
	cmpl	preview_width, %eax
	jge	.LBB6_17
# BB#6:                                 # %for.body.16
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	$0, -80(%rbp)
.LBB6_7:                                # %for.cond.17
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -80(%rbp)
	jge	.LBB6_13
# BB#8:                                 # %for.body.20
                                        #   in Loop: Header=BB6_7 Depth=3
	movl	-56(%rbp), %eax
	imull	sel_width, %eax
	cltd
	idivl	preview_width
	imull	-32(%rbp), %eax
	cmpl	$0, -76(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB6_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB6_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false
                                        #   in Loop: Header=BB6_7 Depth=3
	movl	-80(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB6_11:                               # %cond.end
                                        #   in Loop: Header=BB6_7 Depth=3
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-64(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-56(%rbp), %eax
	imull	tint+520, %eax
	addl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=3
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB6_7
.LBB6_13:                               # %for.end
                                        #   in Loop: Header=BB6_5 Depth=2
	cmpl	$0, has_alpha
	je	.LBB6_15
# BB#14:                                # %if.then.32
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	$3, %eax
	movl	$1, %ecx
	movl	-56(%rbp), %edx
	imull	sel_width, %edx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	preview_width
	imull	-32(%rbp), %eax
	cmpl	$0, -76(%rbp)
	movl	-104(%rbp), %esi        # 4-byte Reload
	cmovnel	%ecx, %esi
	addl	%esi, %eax
	movslq	%eax, %rdi
	movq	-64(%rbp), %r8
	movb	(%r8,%rdi), %r9b
	movl	-56(%rbp), %eax
	imull	tint+520, %eax
	addl	$3, %eax
	movslq	%eax, %rdi
	movq	-72(%rbp), %r8
	movb	%r9b, (%r8,%rdi)
.LBB6_15:                               # %if.end.46
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_16
.LBB6_16:                               # %for.inc.47
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_5
.LBB6_17:                               # %for.end.49
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	preview_width, %eax
	imull	tint+520, %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#18:                                # %for.inc.51
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_3
.LBB6_19:                               # %for.end.53
	movq	-64(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cache_preview, .Lfunc_end6-cache_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI7_3:
	.quad	4613937818241073152     # double 3
.LCPI7_4:
	.quad	4611686018427387904     # double 2
.LCPI7_5:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	tileit_preview_expose,@function
tileit_preview_expose:                  # @tileit_preview_expose
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$2, exp_call
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	tint, %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -24(%rbp)
	cvtsi2sdl	preview_width, %xmm2
	cvtsi2sdl	itvals, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtsi2sdl	preview_height, %xmm2
	cvtsi2sdl	itvals, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	exp_call+4, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	exp_call+8, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -56(%rbp)
	movq	-24(%rbp), %rdi
	movaps	%xmm1, %xmm2
	addsd	-48(%rbp), %xmm2
	addsd	-56(%rbp), %xmm1
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	callq	cairo_rectangle
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm3         # xmm3 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-24(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm3         # xmm3 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-24(%rbp), %rdi
	callq	cairo_stroke_preserve
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
.LBB7_2:                                # %if.end
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tileit_preview_expose, .Lfunc_end7-tileit_preview_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	tileit_preview_events,@function
tileit_preview_events:                  # @tileit_preview_events
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	preview_width(%rip), %eax
	movl	itvals(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -44(%rbp)
	movl	preview_height(%rip), %eax
	movl	itvals(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_11
.LBB8_11:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_12
.LBB8_12:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_9
.LBB8_1:                                # %sw.bb
	jmp	.LBB8_10
.LBB8_2:                                # %sw.bb.2
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	exp_need_update
	jmp	.LBB8_10
.LBB8_3:                                # %sw.bb.9
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB8_5
# BB#4:                                 # %if.then
	jmp	.LBB8_10
.LBB8_5:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	ja	.LBB8_7
# BB#6:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jbe	.LBB8_8
.LBB8_7:                                # %if.then.15
	jmp	.LBB8_10
.LBB8_8:                                # %if.end.16
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	exp_need_update
	jmp	.LBB8_10
.LBB8_9:                                # %sw.default
	jmp	.LBB8_10
.LBB8_10:                               # %sw.epilog
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tileit_preview_events, .Lfunc_end8-tileit_preview_events
	.cfi_endproc

	.align	16, 0x90
	.type	tileit_hvtoggle_update,@function
tileit_hvtoggle_update:                 # @tileit_hvtoggle_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_toggle_button_update
	movl	exp_call(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_5
.LBB9_5:                                # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_6
.LBB9_6:                                # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_1:                                # %sw.bb
	movabsq	$tileactions, %rax
	xorl	%esi, %esi
	movl	$144, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memset
	callq	all_update
	jmp	.LBB9_4
.LBB9_2:                                # %sw.bb.1
	movabsq	$tileactions, %rax
	xorl	%esi, %esi
	movl	$144, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memset
	callq	alt_update
	jmp	.LBB9_4
.LBB9_3:                                # %sw.bb.2
	jmp	.LBB9_4
.LBB9_4:                                # %sw.epilog
	callq	dialog_update_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tileit_hvtoggle_update, .Lfunc_end9-tileit_hvtoggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	tileit_reset,@function
tileit_reset:                           # @tileit_reset
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
	subq	$144, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_hvtoggle_update, %r9
	movabsq	$do_horz, %r10
	movabsq	$tileactions, %r11
	movl	$144, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%r11, %rdi
	movl	%ecx, %esi
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, -40(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	callq	memset
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_hvtoggle_update, %rdi
	movabsq	$do_vert, %r9
	movq	-24(%rbp), %r10
	movq	8(%r10), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_hvtoggle_update, %rax
	movabsq	$do_horz, %rdi
	movq	-24(%rbp), %r9
	movq	(%r9), %r9
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_hvtoggle_update, %rdi
	movabsq	$do_vert, %r9
	movq	-24(%rbp), %r10
	movq	8(%r10), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	$0, do_vert
	movl	$0, do_horz
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	dialog_update_preview
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tileit_reset, .Lfunc_end10-tileit_reset
	.cfi_endproc

	.align	16, 0x90
	.type	tileit_radio_update,@function
tileit_radio_update:                    # @tileit_radio_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB11_6
# BB#1:                                 # %if.then
	movl	exp_call(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_7
.LBB11_7:                               # %if.then
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_8
.LBB11_8:                               # %if.then
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB11_4
	jmp	.LBB11_5
.LBB11_2:                               # %sw.bb
	movabsq	$tileactions, %rax
	xorl	%esi, %esi
	movl	$144, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memset
	callq	all_update
	jmp	.LBB11_5
.LBB11_3:                               # %sw.bb.3
	movabsq	$tileactions, %rax
	xorl	%esi, %esi
	movl	$144, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memset
	callq	alt_update
	jmp	.LBB11_5
.LBB11_4:                               # %sw.bb.4
	xorl	%edi, %edi
	callq	explicit_update
.LBB11_5:                               # %sw.epilog
	callq	dialog_update_preview
.LBB11_6:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tileit_radio_update, .Lfunc_end11-tileit_radio_update
	.cfi_endproc

	.align	16, 0x90
	.type	tileit_exp_update_f,@function
tileit_exp_update_f:                    # @tileit_exp_update_f
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	explicit_update
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tileit_exp_update_f, .Lfunc_end12-tileit_exp_update_f
	.cfi_endproc

	.align	16, 0x90
	.type	tileit_exp_update,@function
tileit_exp_update:                      # @tileit_exp_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	explicit_update
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tileit_exp_update, .Lfunc_end13-tileit_exp_update
	.cfi_endproc

	.align	16, 0x90
	.type	tileit_scale_update,@function
tileit_scale_update:                    # @tileit_scale_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_int_adjustment_update
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tileit_scale_update, .Lfunc_end14-tileit_scale_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$1, %eax
	movl	%eax, %esi
	movl	preview_width, %eax
	imull	preview_height, %eax
	imull	tint+520, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	preview_height, %eax
	jge	.LBB15_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movabsq	$tint, %rax
	addq	$8, %rax
	movq	tint+528, %rsi
	movl	preview_width, %edx
	movl	-4(%rbp), %ecx
	movl	preview_height, %r8d
	movl	tint+520, %r9d
	movq	%rax, %rdi
	callq	do_tiles_preview
	movabsq	$tint, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %ecx
	movl	preview_width, %edx
	imull	tint+520, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movl	preview_width, %ecx
	imull	tint+520, %ecx
	movslq	%ecx, %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_1
.LBB15_4:                               # %for.end
	movq	tint, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	preview_width, %r8d
	movl	preview_height, %r9d
	cmpl	$3, tint+520
	movl	%ecx, %r10d
	cmovgl	%edx, %r10d
	movq	-16(%rbp), %rsi
	movl	preview_width, %edx
	imull	tint+520, %edx
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-36(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	tint, %rdi
	callq	gtk_widget_queue_draw
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dialog_update_preview, .Lfunc_end15-dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	exp_need_update,@function
exp_need_update:                        # @exp_need_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB16_4
# BB#1:                                 # %lor.lhs.false
	movl	-4(%rbp), %eax
	cmpl	itvals, %eax
	jg	.LBB16_4
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -8(%rbp)
	jle	.LBB16_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-8(%rbp), %eax
	cmpl	itvals, %eax
	jle	.LBB16_5
.LBB16_4:                               # %if.then
	jmp	.LBB16_8
.LBB16_5:                               # %if.end
	movl	-4(%rbp), %eax
	cmpl	exp_call+4, %eax
	jne	.LBB16_7
# BB#6:                                 # %lor.lhs.false.7
	movl	-8(%rbp), %eax
	cmpl	exp_call+8, %eax
	je	.LBB16_8
.LBB16_7:                               # %if.then.9
	movl	-4(%rbp), %eax
	movl	%eax, exp_call+4
	movl	-8(%rbp), %eax
	movl	%eax, exp_call+8
	movq	tint, %rdi
	callq	gtk_widget_queue_draw
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$tileit_exp_update_f, %rdi
	movabsq	$exp_call, %rdx
	movq	exp_call+24, %r9
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_exp_update_f, %rdi
	movabsq	$exp_call, %r9
	movq	exp_call+16, %r10
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	exp_call+24, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	exp_call+16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_exp_update_f, %rax
	movabsq	$exp_call, %rdi
	movq	exp_call+24, %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$tileit_exp_update_f, %rdi
	movabsq	$exp_call, %r9
	movq	exp_call+16, %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB16_8:                               # %if.end.18
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	exp_need_update, .Lfunc_end16-exp_need_update
	.cfi_endproc

	.align	16, 0x90
	.type	all_update,@function
all_update:                             # @all_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	cmpl	$6, -4(%rbp)
	jge	.LBB17_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$0, -8(%rbp)
.LBB17_3:                               # %for.cond.1
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -8(%rbp)
	jge	.LBB17_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB17_3 Depth=2
	movabsq	$tileactions, %rax
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %esi
	cmpl	$0, do_horz
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	cmpl	$0, do_vert
	cmovnel	%edx, %ecx
	orl	%ecx, %edi
	movslq	-8(%rbp), %r8
	movslq	-4(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	orl	(%rax,%r8,4), %edi
	movl	%edi, (%rax,%r8,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB17_3
.LBB17_6:                               # %for.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %for.inc.9
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_1
.LBB17_8:                               # %for.end.11
	popq	%rbp
	retq
.Lfunc_end17:
	.size	all_update, .Lfunc_end17-all_update
	.cfi_endproc

	.align	16, 0x90
	.type	alt_update,@function
alt_update:                             # @alt_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	cmpl	$6, -4(%rbp)
	jge	.LBB18_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$0, -8(%rbp)
.LBB18_3:                               # %for.cond.1
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -8(%rbp)
	jge	.LBB18_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	addl	-8(%rbp), %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-12(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB18_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB18_3 Depth=2
	movabsq	$tileactions, %rax
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %esi
	cmpl	$0, do_horz
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	cmpl	$0, do_vert
	cmovnel	%edx, %ecx
	orl	%ecx, %edi
	movslq	-8(%rbp), %r8
	movslq	-4(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	orl	(%rax,%r8,4), %edi
	movl	%edi, (%rax,%r8,4)
.LBB18_6:                               # %if.end
                                        #   in Loop: Header=BB18_3 Depth=2
	jmp	.LBB18_7
.LBB18_7:                               # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB18_3
.LBB18_8:                               # %for.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_9
.LBB18_9:                               # %for.inc.10
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_1
.LBB18_10:                              # %for.end.12
	popq	%rbp
	retq
.Lfunc_end18:
	.size	alt_update, .Lfunc_end18-alt_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	explicit_update,@function
explicit_update:                        # @explicit_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	exp_call+16, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	itvals, %ecx
	jg	.LBB19_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jg	.LBB19_3
.LBB19_2:                               # %if.then
	movl	itvals, %eax
	movl	%eax, -12(%rbp)
.LBB19_3:                               # %if.end
	movq	exp_call+24, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -8(%rbp)
	movl	-8(%rbp), %ecx
	cmpl	itvals, %ecx
	jg	.LBB19_5
# BB#4:                                 # %lor.lhs.false.13
	cmpl	$0, -8(%rbp)
	jg	.LBB19_6
.LBB19_5:                               # %if.then.16
	movl	itvals, %eax
	movl	%eax, -8(%rbp)
.LBB19_6:                               # %if.end.17
	cmpl	$0, -4(%rbp)
	je	.LBB19_8
# BB#7:                                 # %if.then.18
	movabsq	$tileactions, %rax
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %esi
	cmpl	$0, do_horz
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	cmpl	$0, do_vert
	cmovnel	%edx, %ecx
	orl	%ecx, %edi
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %r8
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	movl	%edi, (%rax,%r8,4)
.LBB19_8:                               # %if.end.25
	movl	-8(%rbp), %eax
	movl	%eax, exp_call+4
	movl	-12(%rbp), %eax
	movl	%eax, exp_call+8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	explicit_update, .Lfunc_end19-explicit_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4576918229304087675     # double 0.01
.LCPI20_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	do_tiles_preview,@function
do_tiles_preview:                       # @do_tiles_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_1, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	cvtsi2sdl	itvals, %xmm2
	movaps	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	-24(%rbp), %ecx
	imull	itvals, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_9 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB20_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$tileactions, %rax
	movl	-24(%rbp), %ecx
	imull	itvals, %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-28(%rbp)
	movl	%edx, -48(%rbp)
	movl	-36(%rbp), %ecx
	imull	itvals, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-20(%rbp)
	movl	%edx, -44(%rbp)
	movl	-36(%rbp), %ecx
	imull	itvals, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -56(%rbp)
	movslq	-52(%rbp), %rsi
	movslq	-56(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movl	(%r8,%rsi,4), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB20_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-60(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB20_5
# BB#4:                                 # %if.then.11
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	itvals, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltd
	idivl	-28(%rbp)
	movl	%edx, -48(%rbp)
.LBB20_5:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-60(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB20_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	itvals, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltd
	idivl	-20(%rbp)
	movl	%edx, -44(%rbp)
.LBB20_7:                               # %if.end.31
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.32
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$0, -40(%rbp)
.LBB20_9:                               # %for.cond.33
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB20_12
# BB#10:                                # %for.body.36
                                        #   in Loop: Header=BB20_9 Depth=2
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	-20(%rbp), %ecx
	addl	%ecx, %eax
	imull	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	tint+520, %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB20_9 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_9
.LBB20_12:                              # %for.end
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, has_alpha
	je	.LBB20_14
# BB#13:                                # %if.then.48
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$100, %eax
	movl	-36(%rbp), %ecx
	imull	tint+520, %ecx
	movl	-32(%rbp), %edx
	subl	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	imull	opacity, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-100(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-36(%rbp), %eax
	imull	tint+520, %eax
	movl	-32(%rbp), %r9d
	subl	$1, %r9d
	addl	%r9d, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
.LBB20_14:                              # %if.end.63
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_15
.LBB20_15:                              # %for.inc.64
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_1
.LBB20_16:                              # %for.end.66
	popq	%rbp
	retq
.Lfunc_end20:
	.size	do_tiles_preview, .Lfunc_end20-do_tiles_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4576918229304087675     # double 0.01
.LCPI21_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	tiles_xy,@function
tiles_xy:                               # @tiles_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	movabsq	$tileactions, %rax
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_1, %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%r9, -32(%rbp)
	cvtsi2sdl	itvals, %xmm2
	movaps	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movl	-16(%rbp), %ecx
	imull	itvals, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %eax
	imull	itvals, %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, -40(%rbp)
	movl	-12(%rbp), %ecx
	imull	itvals, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, -36(%rbp)
	movl	-12(%rbp), %ecx
	imull	itvals, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, -48(%rbp)
	movslq	-44(%rbp), %r8
	movslq	-48(%rbp), %r9
	imulq	$24, %r9, %r9
	movq	-88(%rbp), %r10         # 8-byte Reload
	addq	%r9, %r10
	movl	(%r10,%r8,4), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB21_6
# BB#1:                                 # %if.then
	movl	-52(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB21_3
# BB#2:                                 # %if.then.10
	movl	-8(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	itvals, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, -40(%rbp)
.LBB21_3:                               # %if.end
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_5
# BB#4:                                 # %if.then.21
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	itvals, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, -36(%rbp)
.LBB21_5:                               # %if.end.30
	jmp	.LBB21_6
.LBB21_6:                               # %if.end.31
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-52(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	tiles_xy, .Lfunc_end21-tiles_xy
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
	.size	query.args, 96

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
	.asciz	"num-tiles"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Number of tiles to make"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-small-tiles"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Tile image into smaller versions of the original"
	.size	.L.str.9, 49

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"More here later"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Andy Thomas"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1997"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Small Tiles..."
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.15, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"UTF-8"
	.size	.L.str.17, 6

	.type	tileitdrawable,@object  # @tileitdrawable
	.local	tileitdrawable
	.comm	tileitdrawable,8,8
	.type	has_alpha,@object       # @has_alpha
	.local	has_alpha
	.comm	has_alpha,4,4
	.type	sel_x1,@object          # @sel_x1
	.local	sel_x1
	.comm	sel_x1,4,4
	.type	sel_y1,@object          # @sel_y1
	.local	sel_y1
	.comm	sel_y1,4,4
	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Region selected for filter is empty."
	.size	.L.str.18, 37

	.type	sel_x2,@object          # @sel_x2
	.local	sel_x2
	.comm	sel_x2,4,4
	.type	sel_y2,@object          # @sel_y2
	.local	sel_y2
	.comm	sel_y2,4,4
	.type	preview_width,@object   # @preview_width
	.local	preview_width
	.comm	preview_width,4,4
	.type	preview_height,@object  # @preview_height
	.local	preview_height
	.comm	preview_height,4,4
	.type	itvals,@object          # @itvals
	.data
	.align	4
itvals:
	.long	2                       # 0x2
	.size	itvals, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Tiling"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tile-small"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Small Tiles"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-tile-small"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-cancel"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-ok"
	.size	.L.str.24, 7

	.type	tint,@object            # @tint
	.data
	.align	8
tint:
	.quad	0
	.asciz	"4u\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	4                       # 0x4
	.zero	4
	.quad	0
	.size	tint, 536

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"expose-event"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"event"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Flip"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Horizontal"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"toggled"
	.size	.L.str.29, 8

	.type	do_horz,@object         # @do_horz
	.local	do_horz
	.comm	do_horz,4,4
	.type	res_call,@object        # @res_call
	.local	res_call
	.comm	res_call,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Vertical"
	.size	.L.str.30, 10

	.type	do_vert,@object         # @do_vert
	.local	do_vert
	.comm	do_vert,4,4
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-reset"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"clicked"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"A_ll tiles"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-item-data"
	.size	.L.str.34, 15

	.type	exp_call,@object        # @exp_call
	.data
	.align	8
exp_call:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.size	exp_call, 40

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"Al_ternate tiles"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Explicit tile"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Ro_w:"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"active"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"sensitive"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"value-changed"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Col_umn:"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-apply"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"O_pacity:"
	.size	.L.str.43, 10

	.type	opacity,@object         # @opacity
	.data
	.align	4
opacity:
	.long	100                     # 0x64
	.size	opacity, 4

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"Number of Segments"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_n\302\262"
	.size	.L.str.45, 5

	.type	tileactions,@object     # @tileactions
	.local	tileactions
	.comm	tileactions,144,16
	.type	img_bpp,@object         # @img_bpp
	.local	img_bpp
	.comm	img_bpp,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
