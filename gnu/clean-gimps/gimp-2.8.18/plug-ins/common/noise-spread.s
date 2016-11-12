	.text
	.file	"noise-spread.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %r10
	movl	$1, %r11d
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.18, %rsi
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4641240890982006784     # double 200
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -64(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -60(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	$16, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-64(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-60(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_30
.LBB1_30:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_31
.LBB1_31:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_17
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$spvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-44(%rbp), %edi
	movq	-56(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	spread_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_29
.LBB1_5:                                # %if.end
	jmp	.LBB1_18
.LBB1_6:                                # %sw.bb.11
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.12
	movl	$1, -64(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, spvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, spvals+8
.LBB1_9:                                # %if.end.18
	cmpl	$3, -64(%rbp)
	jne	.LBB1_15
# BB#10:                                # %land.lhs.true
	xorps	%xmm0, %xmm0
	ucomisd	spvals, %xmm0
	ja	.LBB1_12
# BB#11:                                # %lor.lhs.false
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	spvals, %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_15
.LBB1_12:                               # %land.lhs.true.22
	xorps	%xmm0, %xmm0
	ucomisd	spvals+8, %xmm0
	ja	.LBB1_14
# BB#13:                                # %lor.lhs.false.24
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	spvals+8, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_15
.LBB1_14:                               # %if.then.26
	movl	$1, -64(%rbp)
.LBB1_15:                               # %if.end.27
	jmp	.LBB1_18
.LBB1_16:                               # %sw.bb.28
	movabsq	$.L.str.10, %rdi
	movabsq	$spvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %sw.default
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
	cmpl	$3, -64(%rbp)
	jne	.LBB1_28
# BB#19:                                # %if.then.31
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_21
# BB#20:                                # %lor.lhs.false.34
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_26
.LBB1_21:                               # %if.then.38
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-56(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	spread
	cmpl	$1, -60(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.42
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.44
	cmpl	$0, -60(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.46
	movabsq	$.L.str.10, %rdi
	movabsq	$spvals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_25:                               # %if.end.48
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.49
	movl	$0, -64(%rbp)
.LBB1_27:                               # %if.end.50
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.51
	movl	-64(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_29:                               # %return
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
	.type	spread_dialog,@function
spread_dialog:                          # @spread_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.22, %rax
	xorl	%ecx, %ecx
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.25, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.26, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movl	-28(%rbp), %edi
	callq	gimp_image_get_resolution
	movl	-28(%rbp), %edi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movabsq	$.L.str.29, %rdi
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movsd	spvals, %xmm0           # xmm0 = mem[0],zero
	ucomisd	spvals+8, %xmm0
	sete	%r14b
	setnp	%r15b
	andb	%r15b, %r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	spvals, %xmm0           # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdx
	movl	4(%rdx), %ecx
	movq	-40(%rbp), %rdx
	cmpl	8(%rdx), %ecx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-228(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.30, %rdi
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm3
	movsd	%xmm3, -240(%rbp)       # 8-byte Spill
	callq	gettext
	movsd	spvals+8, %xmm6         # xmm6 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %edx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movsd	%xmm6, -256(%rbp)       # 8-byte Spill
	movsd	%xmm7, -264(%rbp)       # 8-byte Spill
	jbe	.LBB3_5
# BB#4:                                 # %cond.true.34
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.36
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB3_6:                                # %cond.end.38
	movl	-268(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.28, %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movl	%eax, %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm1
	movl	-200(%rbp), %edi        # 4-byte Reload
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
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
	movq	-248(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
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
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rsi
	movabsq	$spread_preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	spread_preview_update
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, spvals
	movq	-80(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, spvals+8
.LBB3_8:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-108(%rbp), %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	spread_dialog, .Lfunc_end3-spread_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	spread,@function
spread:                                 # @spread
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
	subq	$64, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	movq	%rax, -48(%rbp)
	callq	g_rand_new
	movl	$3, %esi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -40(%rbp)
	movaps	%xmm1, %xmm2
	addsd	spvals, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -32(%rbp)
	addsd	spvals+8, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterator_new
	movabsq	$spread_func, %rsi
	leaq	-48(%rbp), %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	gimp_rgn_iterator_dest
	movq	-16(%rbp), %rdi
	callq	gimp_rgn_iterator_free
	movq	-40(%rbp), %rdi
	callq	g_rand_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	spread, .Lfunc_end4-spread
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4611686018427387904     # double 2
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	spread_preview_update,@function
spread_preview_update:                  # @spread_preview_update
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	movq	%rax, -56(%rbp)
	callq	g_rand_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movl	$3, %esi
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movl	-100(%rbp), %ecx
	imull	-104(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_position
	movl	$0, -64(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -60(%rbp)
.LBB5_3:                                # %for.cond.24
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.27
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	-64(%rbp), %edx
	addl	-96(%rbp), %edx
	movq	-88(%rbp), %rsi
	movl	-68(%rbp), %edi
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	spread_func
	movl	-68(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.30
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.32
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-100(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_rand_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	spread_preview_update, .Lfunc_end5-spread_preview_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4609115380302729960    # double -3.1415926535897931
.LCPI6_1:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	spread_func,@function
spread_func:                            # @spread_func
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
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	cmpl	$0, 16(%rdx)
	jle	.LBB6_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-40(%rbp), %rcx
	subl	16(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	16(%rcx), %edx
	movl	%eax, %esi
	callq	g_rand_int_range
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$0, 20(%rcx)
	jle	.LBB6_5
# BB#4:                                 # %cond.true.4
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-40(%rbp), %rcx
	subl	20(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	20(%rcx), %edx
	movl	%eax, %esi
	callq	g_rand_int_range
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.10
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_6:                                # %cond.end.11
	movl	-72(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_rand_double_range
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	cvtsi2sdl	-52(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	floor
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	cvtsi2sdl	-56(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	floor
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -60(%rbp)
	jl	.LBB6_11
# BB#7:                                 # %land.lhs.true
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB6_11
# BB#8:                                 # %land.lhs.true.30
	cmpl	$0, -64(%rbp)
	jl	.LBB6_11
# BB#9:                                 # %land.lhs.true.33
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB6_11
# BB#10:                                # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB6_12
.LBB6_11:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
.LBB6_12:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	spread_func, .Lfunc_end6-spread_func
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
	.asciz	"spread-amount-x"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Horizontal spread amount (0 <= spread_amount_x <= 200)"
	.size	.L.str.7, 55

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"spread-amount-y"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Vertical spread amount (0 <= spread_amount_y <= 200)"
	.size	.L.str.9, 53

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-spread"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Move pixels around randomly"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Spreads the pixels of the specified drawable.  Pixels are randomly moved to another location whose distance varies from the original by the horizontal and vertical spread amounts "
	.size	.L.str.12, 180

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Spencer Kimball and Peter Mattis, ported by Brian Degenhardt and Federico Mena Quintero"
	.size	.L.str.13, 88

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Federico Mena Quintero and Brian Degenhardt"
	.size	.L.str.14, 44

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1997"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Sp_read..."
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Filters/Noise"
	.size	.L.str.18, 22

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	spvals,@object          # @spvals
	.data
	.align	8
spvals:
	.quad	4617315517961601024     # double 5
	.quad	4617315517961601024     # double 5
	.size	spvals, 16

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Spreading"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"noise-spread"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Spread"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-noise-spread"
	.size	.L.str.24, 18

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
	.asciz	"Spread Amount"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%a"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Horizontal:"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Vertical:"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"invalidated"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"value-changed"
	.size	.L.str.32, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
