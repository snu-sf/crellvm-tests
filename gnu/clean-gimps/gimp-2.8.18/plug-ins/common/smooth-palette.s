	.text
	.file	"smooth-palette.bc"
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
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movl	$1, %r10d
	movl	$7, %r11d
	movl	$2, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$2, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.25, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
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
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.26, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	$13, run.values+40(%rip)
	movl	$14, run.values+80(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_28
.LBB1_28:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_29
.LBB1_29:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_27
.LBB1_5:                                # %if.end
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb.9
	cmpl	$7, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -48(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%esi, config
	movq	-24(%rbp), %rdx
	movl	168(%rdx), %esi
	movl	%esi, config+4
	movq	-24(%rbp), %rdx
	movl	208(%rdx), %esi
	movl	%esi, config+8
	movq	-24(%rbp), %rdx
	cmpl	$0, 248(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, config+16
.LBB1_9:                                # %if.end.24
	cmpl	$3, -48(%rbp)
	jne	.LBB1_14
# BB#10:                                # %land.lhs.true
	cmpl	$0, config
	jle	.LBB1_13
# BB#11:                                # %lor.lhs.false
	cmpl	$0, config+4
	jle	.LBB1_13
# BB#12:                                # %lor.lhs.false.28
	cmpl	$0, config+8
	jg	.LBB1_14
.LBB1_13:                               # %if.then.30
	movl	$1, -48(%rbp)
.LBB1_14:                               # %if.end.31
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.32
	movabsq	$.L.str.18, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_26
# BB#18:                                # %if.then.35
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_24
# BB#19:                                # %if.then.38
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-56(%rbp), %rdi
	movl	4(%rdi), %ecx
	addl	$1, %ecx
	shll	$1, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movabsq	$run.values, %rdi
	addq	$88, %rdi
	movq	-56(%rbp), %r8
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	smooth_palette
	movl	%eax, run.values+48
	cmpl	$0, -44(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.45
	movabsq	$.L.str.18, %rdi
	movabsq	$config, %rax
	movl	$20, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.47
	cmpl	$0, config+16
	je	.LBB1_23
# BB#22:                                # %if.then.49
	movl	run.values+48, %edi
	callq	gimp_display_new
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.51
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.52
	movl	$0, -48(%rbp)
.LBB1_25:                               # %if.end.53
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_26:                               # %if.end.54
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_27:                               # %return
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
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4652218415073722368     # double 1024
.LCPI3_3:
	.quad	4621819117588971520     # double 10
.LCPI3_4:
	.quad	4611686018427387904     # double 2
.LCPI3_5:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	dialog,@function
dialog:                                 # @dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
	movabsq	$.L.str.29, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.32, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.33, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	callq	gimp_image_get_unit
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %edi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.35, %rdi
	movl	-64(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	cvtsi2sdl	config, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rsi
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$6, %r8d
	movsd	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	config+4, %xmm6
	movsd	-80(%rbp), %xmm7        # xmm7 = mem[0],zero
	movl	-128(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-144(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm2, -184(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm2
	movsd	-176(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movaps	%xmm5, %xmm4
	movsd	-176(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, 24(%rsp)
	movsd	-184(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 32(%rsp)
	movsd	-176(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 40(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	%xmm9, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-48(%rbp), %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	config+8, %xmm1
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-40(%rbp), %r8
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r11
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, config
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, config+4
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-84(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dialog, .Lfunc_end3-dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	smooth_palette,@function
smooth_palette:                         # @smooth_palette
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
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -60(%rbp)
	callq	g_rand_new
	xorl	%edx, %edx
	movq	%rax, -144(%rbp)
	movl	config, %edi
	movl	config+4, %esi
	callq	gimp_image_new
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_undo_disable
	movabsq	$.L.str.39, %rdi
	movl	-20(%rbp), %edx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%edx, -248(%rbp)        # 4-byte Spill
	callq	gettext
	movl	config, %edx
	movl	config+4, %ecx
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-248(%rbp), %edi        # 4-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-264(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_image_insert_layer
	movq	-16(%rbp), %r10
	movl	(%r10), %edi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movl	config, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-136(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	-68(%rbp), %r11d
	subl	-64(%rbp), %r11d
	movl	%r11d, -80(%rbp)
	movl	-76(%rbp), %r11d
	subl	-72(%rbp), %r11d
	movl	%r11d, -84(%rbp)
	movq	-8(%rbp), %rsi
	movl	-64(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-84(%rbp), %r11d
	movl	%r9d, -272(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$0, -40(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%esi, %esi
	movl	-64(%rbp), %eax
	movq	-144(%rbp), %rdi
	movl	-80(%rbp), %edx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	-280(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -148(%rbp)
	movl	-72(%rbp), %eax
	movq	-144(%rbp), %rdi
	movl	-84(%rbp), %edx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	g_rand_int_range
	leaq	-136(%rbp), %rdi
	movl	-284(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -152(%rbp)
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %r8d
	addq	%r8, %rcx
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_pixel
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %esi
	callq	g_memdup
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	imull	-36(%rbp), %esi
	callq	g_memdup
	movq	%rax, -168(%rbp)
	movl	$0, -180(%rbp)
.LBB4_5:                                # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_17 Depth 2
	movl	-180(%rbp), %eax
	cmpl	config+8, %eax
	jge	.LBB4_33
# BB#6:                                 # %for.body.25
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$5, %eax
	movl	-180(%rbp), %ecx
	movl	%eax, -288(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-288(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB4_5 Depth=1
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	config+8, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB4_8:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-56(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-60(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
	movl	$1, -40(%rbp)
.LBB4_9:                                # %for.cond.31
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_12
# BB#10:                                # %for.body.34
                                        #   in Loop: Header=BB4_9 Depth=2
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	-40(%rbp), %edx
	movq	-144(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	g_rand_int_range
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-312(%rbp), %esi        # 4-byte Reload
	movl	-308(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	pix_swap
# BB#11:                                # %for.inc.36
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_9
.LBB4_12:                               # %for.end.38
                                        #   in Loop: Header=BB4_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)
	movl	$1, -40(%rbp)
.LBB4_13:                               # %for.cond.39
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_16
# BB#14:                                # %for.body.42
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	callq	pix_diff
	cvtsi2sdq	%rax, %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
# BB#15:                                # %for.inc.47
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_13
.LBB4_16:                               # %for.end.49
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$0, -40(%rbp)
.LBB4_17:                               # %for.cond.50
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	config+12, %eax
	jge	.LBB4_28
# BB#18:                                # %for.body.53
                                        #   in Loop: Header=BB4_17 Depth=2
	xorl	%esi, %esi
	movq	-144(%rbp), %rdi
	movl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	callq	g_rand_int_range
	xorl	%esi, %esi
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	movq	-144(%rbp), %rdi
	movl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	callq	g_rand_int_range
	movl	$1, %edx
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	subl	-200(%rbp), %eax
	cmpl	%eax, %edx
	jne	.LBB4_20
# BB#19:                                # %if.then.63
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %eax
	subl	$1, %eax
	movl	-200(%rbp), %ecx
	movl	%eax, %edx
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-196(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-320(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -208(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %ecx
	subl	$1, %ecx
	movl	-196(%rbp), %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %ecx        # 4-byte Reload
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-196(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-336(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -216(%rbp)
	jmp	.LBB4_24
.LBB4_20:                               # %if.else
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	$1, %eax
	movl	-200(%rbp), %ecx
	subl	-196(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_22
# BB#21:                                # %if.then.77
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %eax
	subl	$1, %eax
	movl	-196(%rbp), %ecx
	movl	%eax, %edx
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-200(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-344(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -208(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %ecx
	subl	$1, %ecx
	movl	-200(%rbp), %edx
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-348(%rbp), %ecx        # 4-byte Reload
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-360(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -216(%rbp)
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.88
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-196(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-368(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-200(%rbp), %ecx
	addl	$1, %ecx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	pix_diff
	movq	-376(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-200(%rbp), %ecx
	subl	$1, %ecx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	pix_diff
	movq	-384(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -208(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-196(%rbp), %ecx
	addl	$1, %ecx
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-196(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-392(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	addl	$1, %ecx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	pix_diff
	movq	-400(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	subl	$1, %ecx
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	pix_diff
	movq	-408(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -216(%rbp)
.LBB4_23:                               # %if.end.111
                                        #   in Loop: Header=BB4_17 Depth=2
	jmp	.LBB4_24
.LBB4_24:                               # %if.end.112
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	-216(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jge	.LBB4_26
# BB#25:                                # %if.then.115
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-200(%rbp), %ecx
	callq	pix_swap
	movq	-216(%rbp), %rdi
	subq	-208(%rbp), %rdi
	cvtsi2sdq	%rdi, %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB4_26:                               # %if.end.119
                                        #   in Loop: Header=BB4_17 Depth=2
	jmp	.LBB4_27
.LBB4_27:                               # %for.inc.120
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_17
.LBB4_28:                               # %for.end.122
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%eax, %eax
	cmpl	-180(%rbp), %eax
	je	.LBB4_30
# BB#29:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_5 Depth=1
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_31
.LBB4_30:                               # %if.then.127
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-160(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-60(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
.LBB4_31:                               # %if.end.130
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_32
.LBB4_32:                               # %for.inc.131
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB4_5
.LBB4_33:                               # %for.end.133
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-56(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-60(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movl	$1, -40(%rbp)
.LBB4_34:                               # %for.cond.137
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_39
# BB#35:                                # %for.body.141
                                        #   in Loop: Header=BB4_34 Depth=1
	xorl	%esi, %esi
	movq	-144(%rbp), %rdi
	movl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	callq	g_rand_int_range
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-236(%rbp), %eax
	subl	$1, %eax
	movl	-236(%rbp), %ecx
	movl	%eax, %edx
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-240(%rbp), %edx
	movl	-240(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-424(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -224(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-236(%rbp), %ecx
	subl	$1, %ecx
	movl	-240(%rbp), %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-428(%rbp), %ecx        # 4-byte Reload
	callq	pix_diff
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-236(%rbp), %edx
	movl	-240(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	pix_diff
	movq	-440(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jge	.LBB4_37
# BB#36:                                # %if.then.162
                                        #   in Loop: Header=BB4_34 Depth=1
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-236(%rbp), %edx
	movl	-240(%rbp), %ecx
	callq	pix_swap
	movq	-232(%rbp), %rdi
	subq	-224(%rbp), %rdi
	cvtsi2sdq	%rdi, %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
.LBB4_37:                               # %if.end.166
                                        #   in Loop: Header=BB4_34 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %for.inc.167
                                        #   in Loop: Header=BB4_34 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_34
.LBB4_39:                               # %for.end.169
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rsi
	movl	config, %r8d
	movl	config+4, %r9d
	movl	%eax, %edx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -44(%rbp)
.LBB4_40:                               # %for.cond.170
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_42 Depth 2
	movl	-44(%rbp), %eax
	cmpl	config+4, %eax
	jge	.LBB4_47
# BB#41:                                # %for.body.173
                                        #   in Loop: Header=BB4_40 Depth=1
	movl	$0, -40(%rbp)
.LBB4_42:                               # %for.cond.174
                                        #   Parent Loop BB4_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	config, %eax
	jge	.LBB4_45
# BB#43:                                # %for.body.177
                                        #   in Loop: Header=BB4_42 Depth=2
	leaq	-136(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_set_pixel
# BB#44:                                # %for.inc.181
                                        #   in Loop: Header=BB4_42 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_42
.LBB4_45:                               # %for.end.183
                                        #   in Loop: Header=BB4_40 Depth=1
	jmp	.LBB4_46
.LBB4_46:                               # %for.inc.184
                                        #   in Loop: Header=BB4_40 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_40
.LBB4_47:                               # %for.end.186
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_rand_free
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_flush
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edi
	movl	config, %ecx
	movl	config+4, %r8d
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_drawable_update
	movl	-20(%rbp), %edi
	movl	%eax, -448(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movl	-20(%rbp), %ecx
	movl	%eax, -452(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	smooth_palette, .Lfunc_end4-smooth_palette
	.cfi_endproc

	.align	16, 0x90
	.type	pix_swap,@function
pix_swap:                               # @pix_swap
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -25(%rbp)
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-20(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movb	-25(%rbp), %sil
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pix_swap, .Lfunc_end5-pix_swap
	.cfi_endproc

	.align	16, 0x90
	.type	pix_diff,@function
pix_diff:                               # @pix_diff
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	-40(%rbp), %esi
	subl	-44(%rbp), %esi
	imull	%esi, %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -32(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pix_diff, .Lfunc_end6-pix_diff
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
	.asciz	"width"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Width"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"height"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Height"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ntries"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Search Depth"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"show-image"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Show Image?"
	.size	.L.str.13, 12

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.size	query.return_vals, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"new-image"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Output image"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"new-layer"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Output layer"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-smooth-palette"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Derive a smooth color palette from the image"
	.size	.L.str.19, 45

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"help!"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Scott Draves"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"1997"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Smoo_th Palette..."
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGB*"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Image>/Colors/Info"
	.size	.L.str.25, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,120,16
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF-8"
	.size	.L.str.27, 6

	.type	config,@object          # @config
	.data
	.align	4
config:
	.long	256                     # 0x100
	.long	64                      # 0x40
	.long	50                      # 0x32
	.long	10000                   # 0x2710
	.long	1                       # 0x1
	.size	config, 20

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Deriving smooth palette"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"smooth-palette"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Smooth Palette"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-smooth-palette"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-cancel"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-ok"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%a"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Width:"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Height:"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Search depth:"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"value-changed"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Background"
	.size	.L.str.39, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
