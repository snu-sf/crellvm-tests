	.text
	.file	"flame.bc"
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
	subq	$120, %rsp
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rsi
	movl	$1, %r8d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movabsq	$query.args, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, (%rsp)
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r15, -80(%rbp)         # 8-byte Spill
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.12, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -92(%rbp)         # 4-byte Spill
	addq	$120, %rsp
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$3, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.13, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.13, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$1, -52(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movl	$1, -56(%rbp)
	jmp	.LBB1_12
.LBB1_4:                                # %if.else
	movabsq	$.L.str.6, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	maybe_init_cp
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	movl	%edi, config+7976
	movq	-48(%rbp), %rax
	movl	8(%rax), %edi
	movl	%edi, config+7980
	cmpl	$0, -52(%rbp)
	jne	.LBB1_8
# BB#5:                                 # %if.then.9
	callq	flame_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.11
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	$4, -56(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_11
.LBB1_8:                                # %if.else.12
	cmpl	$0, config+8
	jl	.LBB1_10
# BB#9:                                 # %if.then.14
	movl	$-3, config+8
.LBB1_10:                               # %if.end.15
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.16
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.17
	cmpl	$3, -56(%rbp)
	jne	.LBB1_19
# BB#13:                                # %if.then.19
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_17
# BB#14:                                # %if.then.22
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-96(%rbp), %esi         # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	flame
	cmpl	$1, -52(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.29
	callq	gimp_displays_flush
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.31
	movabsq	$.L.str.6, %rdi
	movabsq	$config, %rax
	movl	$8120, %edx             # imm = 0x1FB8
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.33
	movl	$0, -56(%rbp)
.LBB1_18:                               # %if.end.34
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_19:                               # %if.end.35
	movl	$21, run.values
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
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
	.quad	4617315517961601024     # double 5
.LCPI3_1:
	.quad	4604930618986332160     # double 0.75
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4611686018427387904     # double 2
.LCPI3_4:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	maybe_init_cp,@function
maybe_init_cp:                          # @maybe_init_cp
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
	xorl	%eax, %eax
	cmpl	config+7984, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$config, %rax
	addq	$16, %rax
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$0, config
	movl	$-2, config+4
	movl	$-3, config+8
	movq	%rax, %rdi
	callq	random_control_point
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_4, %xmm5         # xmm5 = mem[0],zero
	movsd	%xmm0, config+7992
	movsd	%xmm0, config+8000
	movsd	%xmm5, config+8016
	movl	$2, config+7984
	movsd	%xmm4, config+7968
	movsd	%xmm3, config+7960
	movsd	%xmm3, config+7952
	movsd	%xmm2, config+8024
	movsd	%xmm1, config+8032
	movsd	%xmm0, config+8008
	movl	$1, config+8040
	movl	$200, config+8044
	movl	$72, config+7944
	movl	$256, config+7976       # imm = 0x100
	movl	$256, config+7980       # imm = 0x100
.LBB3_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	maybe_init_cp, .Lfunc_end3-maybe_init_cp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4639481672377565184     # double 150
.LCPI4_2:
	.quad	4616189618054758400     # double 4
.LCPI4_3:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI4_4:
	.quad	4576918229304087675     # double 0.01
.LCPI4_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_6:
	.quad	4626322717216342016     # double 20
.LCPI4_7:
	.quad	4617315517961601024     # double 5
.LCPI4_8:
	.quad	-4611686018427387904    # double -2
.LCPI4_9:
	.quad	4611686018427387904     # double 2
.LCPI4_10:
	.quad	4602678819172646912     # double 0.5
.LCPI4_11:
	.quad	-4607182418800017408    # double -4
	.text
	.align	16, 0x90
	.type	flame_dialog,@function
flame_dialog:                           # @flame_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$1296, %rsp             # imm = 0x510
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movabsq	$.L.str.16, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.19, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.20, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	movl	%r10d, -168(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, dialog
	movq	dialog, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	dialog, %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	dialog, %rax
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
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movss	%xmm0, -232(%rbp)       # 4-byte Spill
	movss	-232(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, flame_preview
	cvtsi2sdl	config+7976, %xmm1
	cvtsi2sdl	config+7980, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movl	$150, preview_width
	divsd	-104(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, preview_height
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, preview_width
	movl	$150, preview_height
.LBB4_3:                                # %if.end
	movq	flame_preview, %rdi
	movl	preview_width, %esi
	movl	preview_height, %edx
	callq	gtk_widget_set_size_request
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	flame_preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	flame_preview, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	movabsq	$flame_preview_size_allocate, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	flame_preview, %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_button_box_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-120(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movabsq	$edit_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	dialog, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	%rax, load_button
	movq	-120(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.23, %rsi
	movabsq	$load_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	-368(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	%rax, save_button
	movq	-120(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.23, %rsi
	movabsq	$save_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-80(%rbp), %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movl	$6, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	config+7952, %xmm1      # xmm1 = mem[0],zero
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-512(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -516(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$7952, %rdi             # imm = 0x1F10
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_flame_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movq	-536(%rbp), %r8         # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	config+7960, %xmm1      # xmm1 = mem[0],zero
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-584(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-584(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -588(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$7960, %rdi             # imm = 0x1F18
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_flame_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	movq	-608(%rbp), %r8         # 8-byte Reload
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$5, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	config+7968, %xmm4      # xmm4 = mem[0],zero
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -656(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-656(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -664(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-664(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-664(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -668(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$7968, %rdi             # imm = 0x1F20
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_flame_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	movq	-688(%rbp), %r8         # 8-byte Reload
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$150, %r8d
	movl	$5, %r9d
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	config+8032, %xmm5      # xmm5 = mem[0],zero
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-736(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-736(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -740(%rbp)        # 4-byte Spill
	movl	%r11d, -744(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$8032, %rdi             # imm = 0x1F60
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$150, %r8d
	movl	$5, %r9d
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	config+7984, %xmm5
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-792(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-792(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -796(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$7984, %rdi             # imm = 0x1F30
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-808(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %r9d
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	config+8024, %xmm1      # xmm1 = mem[0],zero
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -848(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-848(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-848(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-848(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -852(%rbp)        # 4-byte Spill
	movl	%r11d, -856(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$8024, %rdi             # imm = 0x1F58
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	movl	-892(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$cmap_constrain, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movl	$0, -148(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-148(%rbp), %rax
	cmpq	$6, %rax
	jae	.LBB4_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$4294967292, %eax       # imm = 0xFFFFFFFC
	movslq	-148(%rbp), %rcx
	subl	flame_dialog.good(,%rcx,4), %eax
	movl	%eax, -152(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	-152(%rbp), %edx
	movslq	-148(%rbp), %rdi
	movq	flame_dialog.names(,%rdi,8), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_int_combo_box_prepend
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB4_4
.LBB4_7:                                # %for.end
	movq	-144(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4294967293, %edx       # imm = 0xFFFFFFFD
	movl	$1, %ecx
	movl	$2, %r9d
	movabsq	$.L.str.42, %rdi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-928(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%r8d, -940(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_prepend
	movq	-144(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$cmap_callback, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	config+8, %edx
	movq	%rax, %rdi
	movq	%rsi, -960(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-960(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-128(%rbp), %rcx
	movq	%rax, -968(%rbp)        # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$32, %ecx
	movq	%rax, cmap_preview
	movq	cmap_preview, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-128(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	cmap_preview, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	movl	-988(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	cmap_preview, %rdi
	callq	gtk_widget_show
	callq	set_cmap_preview
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-72(%rbp), %rdi
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	callq	gtk_widget_show
	movq	-72(%rbp), %rdx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movsd	.LCPI4_11, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_10, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r9d
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %edx
	movsd	config+8008, %xmm5      # xmm5 = mem[0],zero
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -1060(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-1060(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1064(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movsd	%xmm0, -1072(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1072(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1072(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1076(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$8008, %rdi             # imm = 0x1F48
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_flame_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	movq	-1096(%rbp), %r8        # 8-byte Reload
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$150, %r8d
	movsd	.LCPI4_8, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_10, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	config+7992, %xmm5      # xmm5 = mem[0],zero
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1144(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1144(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1144(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1148(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$7992, %rdi             # imm = 0x1F38
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_flame_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	movq	-1168(%rbp), %r8        # 8-byte Reload
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$150, %r8d
	movsd	.LCPI4_8, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_10, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI4_0, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	config+8000, %xmm5      # xmm5 = mem[0],zero
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1216(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1216(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1216(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1220(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$7992, %rdi             # imm = 0x1F38
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_flame_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	movq	-1240(%rbp), %r8        # 8-byte Reload
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	set_flame_preview
	movq	dialog, %rdi
	callq	gtk_widget_show
	movq	dialog, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -92(%rbp)
	movq	dialog, %rdi
	callq	gtk_widget_destroy
	movl	-92(%rbp), %eax
	addq	$1296, %rsp             # imm = 0x510
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	flame_dialog, .Lfunc_end4-flame_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	flame,@function
flame:                                  # @flame
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
	subq	$272, %rsp              # imm = 0x110
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	-28(%rbp), %eax
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movl	$4, %eax
	cmpl	-28(%rbp), %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.95, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB5_25
.LBB5_3:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, config+7976
	movl	-16(%rbp), %ecx
	movl	%ecx, config+7980
	cmpl	$0, config
	je	.LBB5_5
# BB#4:                                 # %if.then.7
	movabsq	$config, %rax
	addq	$16, %rax
	movl	config+4, %esi
	movq	%rax, %rdi
	callq	random_control_point
.LBB5_5:                                # %if.end.8
	movabsq	$config, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	drawable_to_cmap
	movabsq	$f, %rdi
	xorl	%ecx, %ecx
	movl	$4, %r8d
	movabsq	$gimp_progress_update, %r9
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	render_rectangle
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	$4, %ecx
	cmpl	-28(%rbp), %ecx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jne	.LBB5_7
# BB#6:                                 # %if.then.12
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	jmp	.LBB5_24
.LBB5_7:                                # %if.else
	movl	$3, %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB5_23
# BB#8:                                 # %if.then.16
	movl	$1, %eax
	movl	%eax, %esi
	imull	$3, -12(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -192(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	%edx, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -84(%rbp)
.LBB5_9:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
                                        #       Child Loop BB5_13 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB5_22
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_9 Depth=1
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	shll	$2, %ecx
	imull	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rsi
	movl	-84(%rbp), %ecx
	movl	-12(%rbp), %r8d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -88(%rbp)
.LBB5_11:                               # %for.cond.31
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	movl	-88(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_20
# BB#12:                                # %for.body.34
                                        #   in Loop: Header=BB5_11 Depth=2
	movq	-200(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -216(%rbp)
	movl	$0, -212(%rbp)
.LBB5_13:                               # %for.cond.38
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -212(%rbp)
	jge	.LBB5_18
# BB#14:                                # %for.body.41
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	$256, %eax              # imm = 0x100
	movslq	-212(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movslq	-212(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	subl	-216(%rbp), %eax
	imull	%eax, %edi
	sarl	$8, %edi
	addl	%edi, %esi
	movl	%esi, -220(%rbp)
	cmpl	$255, -220(%rbp)
	jle	.LBB5_16
# BB#15:                                # %if.then.51
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	$255, -220(%rbp)
.LBB5_16:                               # %if.end.52
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-220(%rbp), %eax
	movb	%al, %cl
	movslq	-212(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB5_13
.LBB5_18:                               # %for.end
                                        #   in Loop: Header=BB5_11 Depth=2
	movq	-200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -208(%rbp)
# BB#19:                                # %for.inc.58
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_11
.LBB5_20:                               # %for.end.60
                                        #   in Loop: Header=BB5_9 Depth=1
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	-192(%rbp), %rsi
	movl	-84(%rbp), %ecx
	movl	-12(%rbp), %r8d
	callq	gimp_pixel_rgn_set_rect
# BB#21:                                # %for.inc.61
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_9
.LBB5_22:                               # %for.end.63
	movq	-192(%rbp), %rdi
	callq	g_free
.LBB5_23:                               # %if.end.64
	jmp	.LBB5_24
.LBB5_24:                               # %if.end.65
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%esi, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %edx        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB5_25:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end5:
	.size	flame, .Lfunc_end5-flame
	.cfi_endproc

	.align	16, 0x90
	.type	flame_preview_size_allocate,@function
flame_preview_size_allocate:            # @flame_preview_size_allocate
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	set_flame_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	flame_preview_size_allocate, .Lfunc_end6-flame_preview_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
.LCPI7_2:
	.quad	4576918229304087675     # double 0.01
.LCPI7_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	edit_callback,@function
edit_callback:                          # @edit_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1352, %rsp             # imm = 0x548
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movabsq	$edit_cp, %rax
	movabsq	$config, %rcx
	addq	$16, %rcx
	movl	$8104, %edx             # imm = 0x1FA8
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	cmpq	$0, edit_dialog
	jne	.LBB7_10
# BB#1:                                 # %if.then
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movabsq	$.L.str.18, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.19, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.20, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-56(%rbp), %r15
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movl	%r11d, -172(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, edit_dialog
	movq	edit_dialog, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.48, %rsi
	movabsq	$edit_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	edit_dialog, %r10
	movq	edit_dialog, %r14
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	edit_dialog, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -132(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	cmpl	$3, -132(%rbp)
	jge	.LBB7_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	$0, -136(%rbp)
.LBB7_4:                                # %for.cond.25
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -136(%rbp)
	jge	.LBB7_7
# BB#5:                                 # %for.body.27
                                        #   in Loop: Header=BB7_4 Depth=2
	imull	$3, -132(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -140(%rbp)
	callq	gimp_preview_area_new
	movl	$85, %ecx
	movslq	-140(%rbp), %rdx
	movq	%rax, edit_previews(,%rdx,8)
	movslq	-140(%rbp), %rax
	movq	edit_previews(,%rax,8), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	callq	gtk_button_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-140(%rbp), %rsi
	movq	edit_previews(,%rsi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-132(%rbp), %r8d
	movl	-132(%rbp), %r9d
	addl	$1, %r9d
	movl	-136(%rbp), %r10d
	movl	-136(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movslq	-140(%rbp), %rax
	movq	edit_previews(,%rax,8), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movabsq	$preview_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movslq	-140(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	%rax, -296(%rbp)        # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_4
.LBB7_7:                                # %for.end
                                        #   in Loop: Header=BB7_2 Depth=1
	jmp	.LBB7_8
.LBB7_8:                                # %for.inc.43
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB7_2
.LBB7_9:                                # %for.end.45
	movabsq	$.L.str.21, %rsi
	movabsq	$edit_preview_size_allocate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	edit_previews, %rdi
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	-304(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.50, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	pick_speed, %xmm5       # xmm5 = mem[0],zero
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-384(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -388(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pick_speed, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$set_edit_preview, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding
	movq	-96(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movabsq	$randomize_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %r9d
	movq	-104(%rbp), %r11
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	-480(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.54, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.55, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.56, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.57, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.58, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.59, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.60, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.61, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.62, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.63, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.64, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.66, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.67, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.68, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.69, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.70, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.71, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.72, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.73, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.74, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.75, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.76, %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.77, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.78, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.79, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.80, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.81, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.82, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.83, %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967294, %esi       # imm = 0xFFFFFFFE
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movl	$2, %ebx
	movl	$3, %r14d
	movl	$4, %r15d
	movl	$5, %r12d
	movl	$6, %r13d
	movl	$7, %edi
	movl	$8, %r8d
	movl	$9, %r11d
	movl	$10, %edx
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	movl	$11, %ecx
	movl	%ecx, -736(%rbp)        # 4-byte Spill
	movl	$12, %ecx
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	movl	$13, %ecx
	movl	%ecx, -744(%rbp)        # 4-byte Spill
	movl	$14, %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	movl	$15, %ecx
	movl	%ecx, -752(%rbp)        # 4-byte Spill
	movl	$16, %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	movl	$17, %ecx
	movl	%ecx, -760(%rbp)        # 4-byte Spill
	movl	$18, %ecx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	movl	$19, %ecx
	movl	%ecx, -768(%rbp)        # 4-byte Spill
	movl	$20, %ecx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	movl	$21, %ecx
	movl	%ecx, -776(%rbp)        # 4-byte Spill
	movl	$22, %ecx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	movl	$23, %ecx
	movl	%ecx, -784(%rbp)        # 4-byte Spill
	movl	$24, %ecx
	movl	%ecx, -788(%rbp)        # 4-byte Spill
	movl	$25, %ecx
	movl	%ecx, -792(%rbp)        # 4-byte Spill
	movl	$26, %ecx
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movl	$27, %ecx
	movl	%ecx, -800(%rbp)        # 4-byte Spill
	movl	$28, %ecx
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	%edi, -820(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	%edx, -824(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-732(%rbp), %eax        # 4-byte Reload
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -836(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$2, 24(%rsp)
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	$3, 40(%rsp)
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	$4, 56(%rsp)
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movl	$5, 72(%rsp)
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	movl	$6, 88(%rsp)
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, 96(%rsp)
	movl	$7, 104(%rsp)
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, 112(%rsp)
	movl	$8, 120(%rsp)
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%rax, 128(%rsp)
	movl	$9, 136(%rsp)
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, 144(%rsp)
	movl	$10, 152(%rsp)
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	%rax, 160(%rsp)
	movl	$11, 168(%rsp)
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	%rax, 176(%rsp)
	movl	$12, 184(%rsp)
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	%rax, 192(%rsp)
	movl	$13, 200(%rsp)
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, 208(%rsp)
	movl	$14, 216(%rsp)
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, 224(%rsp)
	movl	$15, 232(%rsp)
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, 240(%rsp)
	movl	$16, 248(%rsp)
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, 256(%rsp)
	movl	$17, 264(%rsp)
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	%rax, 272(%rsp)
	movl	$18, 280(%rsp)
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, 288(%rsp)
	movl	$19, 296(%rsp)
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rax, 304(%rsp)
	movl	$20, 312(%rsp)
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	%rax, 320(%rsp)
	movl	$21, 328(%rsp)
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	%rax, 336(%rsp)
	movl	$22, 344(%rsp)
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rax, 352(%rsp)
	movl	$23, 360(%rsp)
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, 368(%rsp)
	movl	$24, 376(%rsp)
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	%rax, 384(%rsp)
	movl	$25, 392(%rsp)
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	%rax, 400(%rsp)
	movl	$26, 408(%rsp)
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	%rax, 416(%rsp)
	movl	$27, 424(%rsp)
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	%rax, 432(%rsp)
	movl	$28, 440(%rsp)
	movq	$0, 448(%rsp)
	movb	$0, %al
	movl	%r15d, -840(%rbp)       # 4-byte Spill
	movl	%r11d, -844(%rbp)       # 4-byte Spill
	movl	%r13d, -848(%rbp)       # 4-byte Spill
	movl	%r12d, -852(%rbp)       # 4-byte Spill
	movl	%r10d, -856(%rbp)       # 4-byte Spill
	movl	%ebx, -860(%rbp)        # 4-byte Spill
	movl	%r14d, -864(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967294, %esi       # imm = 0xFFFFFFFE
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.84, %rsi
	movabsq	$combo_callback, %rdx
	movabsq	$config, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r10
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-880(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -884(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_end
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.85, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	movl	-916(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-120(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	callq	init_mutants
.LBB7_10:                               # %if.end
	callq	set_edit_preview
	movq	edit_dialog, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$1352, %rsp             # imm = 0x548
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	edit_callback, .Lfunc_end7-edit_callback
	.cfi_endproc

	.align	16, 0x90
	.type	load_callback,@function
load_callback:                          # @load_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, file_dialog
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.86, %rdi
	movl	$1, load_save
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_file_dialog
	xorl	%esi, %esi
	movq	save_button, %rdi
	callq	gtk_widget_set_sensitive
.LBB8_2:                                # %if.end
	movq	file_dialog, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	load_callback, .Lfunc_end8-load_callback
	.cfi_endproc

	.align	16, 0x90
	.type	save_callback,@function
save_callback:                          # @save_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, file_dialog
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.94, %rdi
	movl	$0, load_save
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_file_dialog
	xorl	%esi, %esi
	movq	load_button, %rdi
	callq	gtk_widget_set_sensitive
.LBB9_2:                                # %if.end
	movq	file_dialog, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	save_callback, .Lfunc_end9-save_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	set_flame_preview,@function
set_flame_preview:                      # @set_flame_preview
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
	subq	$8192, %rsp             # imm = 0x2000
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	flame_preview, %rcx
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	preview_width, %eax
	imull	preview_height, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -8(%rbp)
	callq	maybe_init_cp
	movabsq	$config, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	drawable_to_cmap
	movabsq	$set_flame_preview.pf, %rdi
	xorl	%ecx, %ecx
	movl	$3, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movabsq	$config, %rax
	addq	$16, %rax
	movl	$8104, %edx             # imm = 0x1FA8
                                        # kill: RDX<def> EDX<kill>
	leaq	-8112(%rbp), %rsi
	movq	%rsi, set_flame_preview.pf+8
	movq	%rdi, -8120(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movsd	%xmm1, -8128(%rbp)      # 8-byte Spill
	movl	%ecx, -8132(%rbp)       # 4-byte Spill
	movl	%r8d, -8136(%rbp)       # 4-byte Spill
	movq	%r9, -8144(%rbp)        # 8-byte Spill
	movsd	%xmm0, -8152(%rbp)      # 8-byte Spill
	callq	memcpy
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	preview_width, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-152(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	preview_width, %ecx
	movl	%ecx, -152(%rbp)
	movl	preview_height, %ecx
	movl	%ecx, -148(%rbp)
	movsd	-8128(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movl	$1, -144(%rbp)
	movsd	-8152(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -104(%rbp)
	movq	-8(%rbp), %rsi
	movl	preview_width, %edx
	movq	-8120(%rbp), %rdi       # 8-byte Reload
	movl	-8132(%rbp), %ecx       # 4-byte Reload
	movl	-8136(%rbp), %r8d       # 4-byte Reload
	movq	-8144(%rbp), %r9        # 8-byte Reload
	callq	render_rectangle
	movq	flame_preview, %rax
	movq	%rax, -8160(%rbp)       # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-8160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	preview_width, %edx
	movq	-8(%rbp), %rsi
	imull	$3, preview_width, %r10d
	movq	%rax, %rdi
	movq	%rsi, -8168(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -8172(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-8172(%rbp), %r11d      # 4-byte Reload
	movl	%ecx, -8176(%rbp)       # 4-byte Spill
	movl	%r11d, %ecx
	movl	-8176(%rbp), %r9d       # 4-byte Reload
	movq	-8168(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-8(%rbp), %rdi
	callq	g_free
.LBB10_3:                               # %return
	addq	$8192, %rsp             # imm = 0x2000
	popq	%rbp
	retq
.Lfunc_end10:
	.size	set_flame_preview, .Lfunc_end10-set_flame_preview
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_constrain,@function
cmap_constrain:                         # @cmap_constrain
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cmap_constrain, .Lfunc_end11-cmap_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_callback,@function
cmap_callback:                          # @cmap_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$config, %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	set_cmap_preview
	callq	set_flame_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cmap_callback, .Lfunc_end12-cmap_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	set_cmap_preview,@function
set_cmap_preview:                       # @set_cmap_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	cmap_preview, %rcx
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_15
.LBB13_2:                               # %if.end
	movabsq	$config, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	drawable_to_cmap
	movl	$3072, %ecx             # imm = 0xC00
	movl	%ecx, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -12(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
                                        #       Child Loop BB13_7 Depth 3
	cmpl	$32, -12(%rbp)
	jge	.LBB13_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	$0, -8(%rbp)
.LBB13_5:                               # %for.cond.2
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_7 Depth 3
	cmpl	$32, -8(%rbp)
	jge	.LBB13_12
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	$4, %eax
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-136(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	shll	$5, %eax
	addl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	$0, -132(%rbp)
.LBB13_7:                               # %for.cond.5
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -132(%rbp)
	jge	.LBB13_10
# BB#8:                                 # %for.body.7
                                        #   in Loop: Header=BB13_7 Depth=3
	movslq	-132(%rbp), %rax
	movslq	-4(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rax
	movsd	config+1792(%rax,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	imull	$3, -8(%rbp), %edx
	addl	-132(%rbp), %edx
	movslq	%edx, %rax
	movb	%sil, -112(%rbp,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB13_7
.LBB13_10:                              # %for.end
                                        #   in Loop: Header=BB13_5 Depth=2
	jmp	.LBB13_11
.LBB13_11:                              # %for.inc.15
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB13_5
.LBB13_12:                              # %for.end.17
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	$96, %eax
	movl	%eax, %ecx
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rdi
	movq	%rdx, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-128(%rbp), %rcx
	addq	$96, %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-128(%rbp), %rcx
	addq	$96, %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-128(%rbp), %rcx
	addq	$96, %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-128(%rbp), %rcx
	addq	$96, %rcx
	movq	%rcx, -128(%rbp)
# BB#13:                                # %for.inc.21
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_3
.LBB13_14:                              # %for.end.23
	movq	cmap_preview, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$32, %edx
	movl	$96, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-172(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -180(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-176(%rbp), %r9d        # 4-byte Reload
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$96, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB13_15:                              # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	set_cmap_preview, .Lfunc_end13-set_cmap_preview
	.cfi_endproc

	.align	16, 0x90
	.type	edit_response,@function
edit_response:                          # @edit_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	cmpl	$-5, -12(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$config, %rax
	addq	$16, %rax
	movabsq	$edit_cp, %rcx
	movl	$8104, %edx             # imm = 0x1FA8
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	callq	set_flame_preview
.LBB14_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	edit_response, .Lfunc_end14-edit_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	preview_clicked,@function
preview_clicked:                        # @preview_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$24400, %rsp            # imm = 0x5F50
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	cmpl	$4, -20(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$edit_cp, %rax
	movl	$8104, %ecx             # imm = 0x1FA8
	movl	%ecx, %edx
	leaq	-8128(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	callq	init_mutants
	movabsq	$edit_cp, %rax
	movl	$8104, %ecx             # imm = 0x1FA8
	movl	%ecx, %edx
	leaq	-8128(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movl	$2, %esi
	movabsq	$edit_cp, %rax
	leaq	-24336(%rbp), %rcx
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	$8104, %edx             # imm = 0x1FA8
	movl	%edx, %edi
	movabsq	$mutants, %r8
	movq	%rax, %r9
	movq	%rcx, %r10
	movq	%rdi, -24344(%rbp)      # 8-byte Spill
	movq	%r10, %rdi
	movl	%esi, -24348(%rbp)      # 4-byte Spill
	movq	%r9, %rsi
	movq	-24344(%rbp), %rdx      # 8-byte Reload
	movq	%r8, -24360(%rbp)       # 8-byte Spill
	movq	%rax, -24368(%rbp)      # 8-byte Spill
	movq	%rcx, -24376(%rbp)      # 8-byte Spill
	movsd	%xmm0, -24384(%rbp)     # 8-byte Spill
	movsd	%xmm1, -24392(%rbp)     # 8-byte Spill
	callq	memcpy
	movq	-24376(%rbp), %rax      # 8-byte Reload
	addq	$8104, %rax             # imm = 0x1FA8
	movslq	-20(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	movq	-24360(%rbp), %rdx      # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-24344(%rbp), %rdx      # 8-byte Reload
	callq	memcpy
	movsd	-24392(%rbp), %xmm0     # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16416(%rbp)
	movsd	-24384(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -8312(%rbp)
	movsd	pick_speed, %xmm0       # xmm0 = mem[0],zero
	movq	-24376(%rbp), %rdi      # 8-byte Reload
	movl	-24348(%rbp), %esi      # 4-byte Reload
	movq	-24368(%rbp), %rdx      # 8-byte Reload
	callq	interpolate
.LBB15_3:                               # %if.end
	callq	set_edit_preview
	addq	$24400, %rsp            # imm = 0x5F50
	popq	%rbp
	retq
.Lfunc_end15:
	.size	preview_clicked, .Lfunc_end15-preview_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	edit_preview_size_allocate,@function
edit_preview_size_allocate:             # @edit_preview_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	set_edit_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	edit_preview_size_allocate, .Lfunc_end16-edit_preview_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
.LCPI17_1:
	.quad	4602678819172646912     # double 0.5
.LCPI17_2:
	.quad	4635681760191971328     # double 85
	.text
	.align	16, 0x90
	.type	set_edit_preview,@function
set_edit_preview:                       # @set_edit_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$24448, %rsp            # imm = 0x5F80
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$21675, -8124(%rbp)     # imm = 0x54AB
	cmpq	edit_previews, %rcx
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_15
.LBB17_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-8124(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	callq	maybe_init_cp
	movabsq	$edit_cp, %rdi
	callq	drawable_to_cmap
	movl	$0, -4(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	cmpl	$3, -4(%rbp)
	jge	.LBB17_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	$0, -8(%rbp)
.LBB17_5:                               # %for.cond.3
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -8(%rbp)
	jge	.LBB17_12
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB17_5 Depth=2
	movl	$1, %eax
	leaq	-8120(%rbp), %rcx
	imull	$3, -4(%rbp), %edx
	addl	-8(%rbp), %edx
	movl	%edx, -8128(%rbp)
	movq	%rcx, set_edit_preview.pf+8
	cmpl	-4(%rbp), %eax
	jne	.LBB17_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_5 Depth=2
	movl	$1, %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB17_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB17_5 Depth=2
	movabsq	$edit_cp, %rax
	movl	$8104, %ecx             # imm = 0x1FA8
	movl	%ecx, %edx
	leaq	-8120(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB17_10
.LBB17_9:                               # %if.else
                                        #   in Loop: Header=BB17_5 Depth=2
	movl	$2, %esi
	leaq	-8120(%rbp), %rdx
	leaq	-24336(%rbp), %rax
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	$8104, %ecx             # imm = 0x1FA8
	movl	%ecx, %edi
	movabsq	$mutants, %r8
	movabsq	$edit_cp, %r9
	movq	%rax, %r10
	movq	%rdi, -24344(%rbp)      # 8-byte Spill
	movq	%r10, %rdi
	movl	%esi, -24348(%rbp)      # 4-byte Spill
	movq	%r9, %rsi
	movq	-24344(%rbp), %r9       # 8-byte Reload
	movq	%rdx, -24360(%rbp)      # 8-byte Spill
	movq	%r9, %rdx
	movq	%r8, -24368(%rbp)       # 8-byte Spill
	movq	%rax, -24376(%rbp)      # 8-byte Spill
	movsd	%xmm0, -24384(%rbp)     # 8-byte Spill
	movsd	%xmm1, -24392(%rbp)     # 8-byte Spill
	callq	memcpy
	movq	-24376(%rbp), %rax      # 8-byte Reload
	addq	$8104, %rax             # imm = 0x1FA8
	movslq	-8128(%rbp), %rdx
	imulq	$8104, %rdx, %rdx       # imm = 0x1FA8
	movq	-24368(%rbp), %rsi      # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rax, %rdi
	movq	-24344(%rbp), %rdx      # 8-byte Reload
	callq	memcpy
	movsd	-24392(%rbp), %xmm0     # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16416(%rbp)
	movsd	-24384(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -8312(%rbp)
	movsd	pick_speed, %xmm0       # xmm0 = mem[0],zero
	movq	-24376(%rbp), %rdi      # 8-byte Reload
	movl	-24348(%rbp), %esi      # 4-byte Reload
	movq	-24360(%rbp), %rdx      # 8-byte Reload
	callq	interpolate
.LBB17_10:                              # %if.end.17
                                        #   in Loop: Header=BB17_5 Depth=2
	leaq	-8120(%rbp), %rdi
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI17_2, %xmm2        # xmm2 = mem[0],zero
	mulsd	-120(%rbp), %xmm2
	cvtsi2sdl	-160(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -120(%rbp)
	movl	$85, -160(%rbp)
	movl	$85, -156(%rbp)
	movsd	%xmm1, -104(%rbp)
	movl	$1, -152(%rbp)
	movsd	%xmm0, -112(%rbp)
	callq	drawable_to_cmap
	movabsq	$set_edit_preview.pf, %rdi
	movl	$85, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rsi
	callq	render_rectangle
	movslq	-8128(%rbp), %rsi
	movq	edit_previews(,%rsi,8), %rsi
	movq	%rsi, -24400(%rbp)      # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-24400(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$85, %edx
	movl	$255, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -24408(%rbp)      # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -24412(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-24412(%rbp), %r10d     # 4-byte Reload
	movl	%ecx, -24416(%rbp)      # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -24420(%rbp)      # 4-byte Spill
	movl	%r10d, %r8d
	movl	-24416(%rbp), %r9d      # 4-byte Reload
	movq	-24408(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$255, 8(%rsp)
	callq	gimp_preview_area_draw
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB17_5
.LBB17_12:                              # %for.end
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_13
.LBB17_13:                              # %for.inc.26
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_3
.LBB17_14:                              # %for.end.28
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB17_15:                              # %return
	addq	$24448, %rsp            # imm = 0x5F80
	popq	%rbp
	retq
.Lfunc_end17:
	.size	set_edit_preview, .Lfunc_end17-set_edit_preview
	.cfi_endproc

	.align	16, 0x90
	.type	randomize_callback,@function
randomize_callback:                     # @randomize_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$edit_cp, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	config+4, %esi
	movq	%rax, %rdi
	callq	random_control_point
	callq	init_mutants
	callq	set_edit_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	randomize_callback, .Lfunc_end18-randomize_callback
	.cfi_endproc

	.align	16, 0x90
	.type	combo_callback,@function
combo_callback:                         # @combo_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	$4294967294, %ecx       # imm = 0xFFFFFFFE
	cmpl	config+4, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$edit_cp, %rdi
	movl	config+4, %esi
	callq	random_control_point
.LBB19_2:                               # %if.end
	callq	init_mutants
	callq	set_edit_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	combo_callback, .Lfunc_end19-combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	init_mutants,@function
init_mutants:                           # @init_mutants
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -4(%rbp)
	jge	.LBB20_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$mutants, %rax
	movabsq	$edit_cp, %rcx
	movl	$8104, %edx             # imm = 0x1FA8
                                        # kill: RDX<def> EDX<kill>
	movslq	-4(%rbp), %rsi
	imulq	$8104, %rsi, %rsi       # imm = 0x1FA8
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	memcpy
	movslq	-4(%rbp), %rax
	imulq	$8104, %rax, %rax       # imm = 0x1FA8
	movq	-16(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movl	config+4, %esi
	movq	%rcx, %rdi
	callq	random_control_point
	movl	$4294967294, %esi       # imm = 0xFFFFFFFE
	cmpl	config+4, %esi
	jne	.LBB20_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$edit_cp, %rsi
	movabsq	$mutants, %rax
	movslq	-4(%rbp), %rcx
	imulq	$8104, %rcx, %rcx       # imm = 0x1FA8
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	copy_variation
.LBB20_4:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_5
.LBB20_5:                               # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_1
.LBB20_6:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	init_mutants, .Lfunc_end20-init_mutants
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	drawable_to_cmap,@function
drawable_to_cmap:                       # @drawable_to_cmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$4294967292, %eax       # imm = 0xFFFFFFFC
	movq	%rdi, -8(%rbp)
	cmpl	config+8, %eax
	jl	.LBB21_2
# BB#1:                                 # %if.then
	movl	$256, %edx              # imm = 0x100
	movl	$4294967292, %eax       # imm = 0xFFFFFFFC
	subl	config+8, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rcx
	addq	$1776, %rcx             # imm = 0x6F0
	movq	%rcx, %rsi
	callq	get_cmap
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB21_36
.LBB21_2:                               # %if.else
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	cmpl	config+8, %eax
	jne	.LBB21_12
# BB#3:                                 # %if.then.2
	movl	$0, -12(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB21_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	$0, -16(%rbp)
.LBB21_6:                               # %for.cond.4
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -16(%rbp)
	jge	.LBB21_9
# BB#7:                                 # %for.body.6
                                        #   in Loop: Header=BB21_6 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB21_6 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB21_6
.LBB21_9:                               # %for.end
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_10
.LBB21_10:                              # %for.inc.10
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB21_4
.LBB21_11:                              # %for.end.12
	jmp	.LBB21_35
.LBB21_12:                              # %if.else.13
	movl	$4294967293, %eax       # imm = 0xFFFFFFFD
	cmpl	config+8, %eax
	jne	.LBB21_22
# BB#13:                                # %if.then.15
	callq	gimp_context_get_gradient
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_gradient_get_uniform_samples
	movq	-88(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$0, -12(%rbp)
.LBB21_14:                              # %for.cond.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_16 Depth 2
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB21_21
# BB#15:                                # %for.body.20
                                        #   in Loop: Header=BB21_14 Depth=1
	movl	$0, -16(%rbp)
.LBB21_16:                              # %for.cond.21
                                        #   Parent Loop BB21_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -16(%rbp)
	jge	.LBB21_19
# BB#17:                                # %for.body.23
                                        #   in Loop: Header=BB21_16 Depth=2
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$1776, %rsi             # imm = 0x6F0
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rsi
	movsd	%xmm0, (%rsi,%rcx,8)
# BB#18:                                # %for.inc.31
                                        #   in Loop: Header=BB21_16 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB21_16
.LBB21_19:                              # %for.end.33
                                        #   in Loop: Header=BB21_14 Depth=1
	jmp	.LBB21_20
.LBB21_20:                              # %for.inc.34
                                        #   in Loop: Header=BB21_14 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB21_14
.LBB21_21:                              # %for.end.36
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB21_34
.LBB21_22:                              # %if.else.37
	movl	config+8, %edi
	callq	gimp_drawable_get
	movl	$1, %edi
	movl	%edi, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	12(%rax), %edi
                                        # kill: RDI<def> EDI<kill>
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-72(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -12(%rbp)
.LBB21_23:                              # %for.cond.40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_25 Depth 2
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB21_33
# BB#24:                                # %for.body.43
                                        #   in Loop: Header=BB21_23 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-12(%rbp), %eax
	movq	-72(%rbp), %rcx
	xorl	%edx, %edx
	divl	4(%rcx)
	movl	-12(%rbp), %r8d
	movq	-72(%rbp), %rcx
	movl	%r8d, %eax
	xorl	%r8d, %r8d
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	divl	4(%rcx)
	movq	-72(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	8(%rcx)
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movl	%edx, -120(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-120(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_get_pixel
	movl	$0, -16(%rbp)
.LBB21_25:                              # %for.cond.48
                                        #   Parent Loop BB21_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -16(%rbp)
	jge	.LBB21_31
# BB#26:                                # %for.body.51
                                        #   in Loop: Header=BB21_25 Depth=2
	movq	-72(%rbp), %rax
	cmpl	$3, 12(%rax)
	jb	.LBB21_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB21_25 Depth=2
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB21_29
.LBB21_28:                              # %cond.false
                                        #   in Loop: Header=BB21_25 Depth=2
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
.LBB21_29:                              # %cond.end
                                        #   in Loop: Header=BB21_25 Depth=2
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$1776, %rdx             # imm = 0x6F0
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#30:                                # %for.inc.69
                                        #   in Loop: Header=BB21_25 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB21_25
.LBB21_31:                              # %for.end.71
                                        #   in Loop: Header=BB21_23 Depth=1
	jmp	.LBB21_32
.LBB21_32:                              # %for.inc.72
                                        #   in Loop: Header=BB21_23 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB21_23
.LBB21_33:                              # %for.end.74
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB21_34:                              # %if.end
	jmp	.LBB21_35
.LBB21_35:                              # %if.end.75
	jmp	.LBB21_36
.LBB21_36:                              # %if.end.76
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	drawable_to_cmap, .Lfunc_end21-drawable_to_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	make_file_dialog,@function
make_file_dialog:                       # @make_file_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movl	$4294967291, %ecx       # imm = 0xFFFFFFFB
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.25, %r8
	movabsq	$.L.str.24, %r9
	movl	$1, %edx
	xorl	%r10d, %r10d
	cmpl	$0, load_save
	cmovnel	%r10d, %edx
	cmpl	$0, load_save
	cmovneq	%r9, %r8
	movq	-24(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gtk_file_chooser_dialog_new
	movq	%rax, file_dialog
	movq	file_dialog, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	file_dialog, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	cmpl	$0, load_save
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	file_dialog, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
.LBB22_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	file_dialog, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$file_dialog, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	file_dialog, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movabsq	$.L.str.87, %rsi
	movabsq	$gtk_true, %rax
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	file_dialog, %rdi
	movq	%rax, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$file_response_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	file_dialog, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	make_file_dialog, .Lfunc_end22-make_file_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	file_response_callback,@function
file_response_callback:                 # @file_response_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB23_18
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	cmpl	$0, load_save
	je	.LBB23_14
# BB#2:                                 # %if.then.1
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB23_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.88, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB23_22
.LBB23_4:                               # %if.end
	movabsq	$.L.str.89, %rsi
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB23_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.90, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB23_22
.LBB23_6:                               # %if.end.14
	movabsq	$buffer, %rax
	movl	$0, -44(%rbp)
	movq	%rax, -56(%rbp)
.LBB23_7:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	_IO_getc
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	%eax, -48(%rbp)
	cmpl	-48(%rbp), %ecx
	jne	.LBB23_9
# BB#8:                                 # %if.then.17
	jmp	.LBB23_13
.LBB23_9:                               # %if.end.18
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%eax, %rsi
	movq	-56(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#10:                                # %do.cond
                                        #   in Loop: Header=BB23_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10000, -44(%rbp)       # imm = 0x2710
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jge	.LBB23_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	$59, %eax
	cmpl	-48(%rbp), %eax
	setne	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB23_12:                              # %land.end
                                        #   in Loop: Header=BB23_7 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_7
.LBB23_13:                              # %do.end
	leaq	-56(%rbp), %rdi
	movabsq	$config, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	parse_control_point
	movq	-40(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.91, %rdi
	movabsq	$config, %rsi
	movl	$8120, %edx             # imm = 0x1FB8
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_procedural_db_set_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	set_flame_preview
	callq	set_edit_preview
	jmp	.LBB23_17
.LBB23_14:                              # %if.else
	movabsq	$.L.str.92, %rsi
	movq	-32(%rbp), %rdi
	callq	fopen
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	cmpq	-64(%rbp), %rsi
	jne	.LBB23_16
# BB#15:                                # %if.then.29
	movabsq	$.L.str.93, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB23_22
.LBB23_16:                              # %if.end.34
	movabsq	$config, %rax
	addq	$16, %rax
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	print_control_point
	movq	-64(%rbp), %rdi
	callq	fclose
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB23_17:                              # %if.end.36
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB23_18:                              # %if.end.37
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	load_button, %rdi
	callq	gtk_widget_get_sensitive
	cmpl	$0, %eax
	jne	.LBB23_20
# BB#19:                                # %if.then.42
	movl	$1, %esi
	movq	load_button, %rdi
	callq	gtk_widget_set_sensitive
.LBB23_20:                              # %if.end.43
	movq	save_button, %rdi
	callq	gtk_widget_get_sensitive
	cmpl	$0, %eax
	jne	.LBB23_22
# BB#21:                                # %if.then.46
	movl	$1, %esi
	movq	save_button, %rdi
	callq	gtk_widget_set_sensitive
.LBB23_22:                              # %if.end.47
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	file_response_callback, .Lfunc_end23-file_response_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
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
	je	.LBB24_2
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
.LBB24_2:                               # %entry
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
.Lfunc_end24:
	.size	g_message, .Lfunc_end24-g_message
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

	.type	config,@object          # @config
	.bss
	.globl	config
	.align	8
config:
	.zero	8120
	.size	config, 8120

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
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
	.size	query.args, 72

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
	.asciz	"plug-in-flame"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Create cosmic recursive fractal flames"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Scott Draves"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1997"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Flame..."
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"RGB*"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<Image>/Filters/Render/Nature"
	.size	.L.str.12, 30

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"UTF-8"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Drawing flame"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"flame"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Flame"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-flame"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gtk-cancel"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-ok"
	.size	.L.str.20, 7

	.type	dialog,@object          # @dialog
	.local	dialog
	.comm	dialog,8,8
	.type	flame_preview,@object   # @flame_preview
	.local	flame_preview
	.comm	flame_preview,8,8
	.type	preview_width,@object   # @preview_width
	.local	preview_width
	.comm	preview_width,4,4
	.type	preview_height,@object  # @preview_height
	.local	preview_height
	.comm	preview_height,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"size-allocate"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-edit"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"clicked"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-open"
	.size	.L.str.24, 9

	.type	load_button,@object     # @load_button
	.local	load_button
	.comm	load_button,8,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-save"
	.size	.L.str.25, 9

	.type	save_button,@object     # @save_button
	.local	save_button
	.comm	save_button,8,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Rendering"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Brightness:"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"value-changed"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Co_ntrast:"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Gamma:"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Sample _density:"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Spa_tial oversample:"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Spatial _filter radius:"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Color_map:"
	.size	.L.str.34, 11

	.type	flame_dialog.names,@object # @flame_dialog.names
	.data
	.align	16
flame_dialog.names:
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.size	flame_dialog.names, 48

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"sunny harvest"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"rose"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"calcoast09"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"klee insula-dulcamara"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ernst anti-pope"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gris josette"
	.size	.L.str.40, 13

	.type	flame_dialog.good,@object # @flame_dialog.good
	.section	.rodata,"a",@progbits
	.align	16
flame_dialog.good:
	.long	10                      # 0xa
	.long	20                      # 0x14
	.long	68                      # 0x44
	.long	79                      # 0x4f
	.long	70                      # 0x46
	.long	75                      # 0x4b
	.size	flame_dialog.good, 24

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"Custom gradient"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-tool-blend"
	.size	.L.str.42, 16

	.type	cmap_preview,@object    # @cmap_preview
	.local	cmap_preview
	.comm	cmap_preview,8,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"C_amera"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Zoom:"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_X:"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Y:"
	.size	.L.str.46, 4

	.type	edit_cp,@object         # @edit_cp
	.local	edit_cp
	.comm	edit_cp,8104,8
	.type	edit_dialog,@object     # @edit_dialog
	.local	edit_dialog
	.comm	edit_dialog,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Edit Flame"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"response"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Directions"
	.size	.L.str.49, 11

	.type	edit_previews,@object   # @edit_previews
	.local	edit_previews
	.comm	edit_previews,72,16
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Controls"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Speed:"
	.size	.L.str.51, 8

	.type	pick_speed,@object      # @pick_speed
	.data
	.align	8
pick_speed:
	.quad	4596373779694328218     # double 0.20000000000000001
	.size	pick_speed, 8

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"_Randomize"
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Same"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Random"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Linear"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Sinusoidal"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Spherical"
	.size	.L.str.57, 10

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Swirl"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Horseshoe"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Polar"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Bent"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Handkerchief"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Heart"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Disc"
	.size	.L.str.64, 5

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Spiral"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Hyperbolic"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Diamond"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Ex"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Julia"
	.size	.L.str.69, 6

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Waves"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Fisheye"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Popcorn"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Exponential"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Power"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Cosine"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Rings"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Fan"
	.size	.L.str.77, 4

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Eyefish"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Bubble"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Cylinder"
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Noise"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Blur"
	.size	.L.str.82, 5

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Gaussian"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"changed"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"_Variation:"
	.size	.L.str.85, 12

	.type	mutants,@object         # @mutants
	.local	mutants
	.comm	mutants,72936,16
	.type	set_edit_preview.pf,@object # @set_edit_preview.pf
	.data
	.align	8
set_edit_preview.pf:
	.quad	0                       # double 0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # double 0
	.size	set_edit_preview.pf, 32

	.type	file_dialog,@object     # @file_dialog
	.local	file_dialog
	.comm	file_dialog,8,8
	.type	load_save,@object       # @load_save
	.local	load_save
	.comm	load_save,4,4
	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"Load Flame"
	.size	.L.str.86, 11

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"delete-event"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"'%s' is not a regular file"
	.size	.L.str.88, 27

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"rb"
	.size	.L.str.89, 3

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.90, 36

	.type	buffer,@object          # @buffer
	.local	buffer
	.comm	buffer,10000,16
	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"plug_in_flame"
	.size	.L.str.91, 14

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"wb"
	.size	.L.str.92, 3

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.93, 36

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Save Flame"
	.size	.L.str.94, 11

	.type	set_flame_preview.pf,@object # @set_flame_preview.pf
	.data
	.align	8
set_flame_preview.pf:
	.quad	0                       # double 0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # double 0
	.size	set_flame_preview.pf, 32

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"Flame works only on RGB drawables."
	.size	.L.str.95, 35

	.type	f,@object               # @f
	.data
	.align	8
f:
	.quad	0                       # double 0
	.quad	config+16
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # double 0
	.size	f, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
