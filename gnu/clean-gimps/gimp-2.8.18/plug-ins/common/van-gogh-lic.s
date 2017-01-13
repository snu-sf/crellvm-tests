	.text
	.file	"van-gogh-lic.bc"
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movl	$1, %r10d
	movl	$3, %r11d
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
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
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
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	callq	set_default_settings
	movabsq	$.L.str.6, %rdi
	movabsq	$licvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	cmpl	$3, -56(%rbp)
	jne	.LBB1_13
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_11
# BB#4:                                 # %if.then.9
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	-92(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%eax, %edi
	leal	2(%rdi,%rdi), %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_14
.LBB1_14:                               # %if.then.9
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_9
.LBB1_5:                                # %sw.bb
	callq	create_main_dialog
	cmpl	$0, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then.13
	movq	-48(%rbp), %rdi
	callq	compute_image
.LBB1_7:                                # %if.end
	movabsq	$.L.str.6, %rdi
	movabsq	$licvals, %rax
	movl	$56, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_10
.LBB1_8:                                # %sw.bb.15
	movq	-48(%rbp), %rdi
	callq	compute_image
	jmp	.LBB1_10
.LBB1_9:                                # %sw.default
	jmp	.LBB1_10
.LBB1_10:                               # %sw.epilog
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_12:                               # %if.end.16
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.17
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
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
	.quad	4627730092099895296     # double 25
.LCPI3_1:
	.quad	-4595641944754880512    # double -25
.LCPI3_2:
	.quad	4611686018427387904     # double 2
.LCPI3_3:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	set_default_settings,@function
set_default_settings:                   # @set_default_settings
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
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm3, licvals
	movsd	%xmm2, licvals+8
	movsd	%xmm0, licvals+16
	movsd	%xmm1, licvals+24
	movsd	%xmm0, licvals+32
	movl	$2, licvals+40
	movl	$1, licvals+44
	movl	$1, licvals+48
	movl	$0, licvals+52
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_default_settings, .Lfunc_end3-set_default_settings
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4621819117588971520     # double 10
.LCPI4_3:
	.quad	-4586634745500139520    # double -100
.LCPI4_4:
	.quad	4630826316843712512     # double 40
.LCPI4_5:
	.quad	4617315517961601024     # double 5
.LCPI4_6:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_7:
	.quad	4634204016564240384     # double 64
.LCPI4_8:
	.quad	4620693217682128896     # double 8
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_9:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_main_dialog,@function
create_main_dialog:                     # @create_main_dialog
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$856, %rsp              # imm = 0x358
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
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
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, dialog
	movq	dialog, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	dialog, %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	dialog, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movl	licvals+40, %r8d
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%r8d, -180(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$licvals, %r9
	addq	$40, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movl	$2, %edx
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-208(%rbp), %r15        # 8-byte Reload
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-180(%rbp), %r8d        # 4-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-200(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r11, -224(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movabsq	$.L.str.26, %rdi
	movl	licvals+44, %r8d
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movl	%r8d, -244(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$licvals, %r9
	addq	$44, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movq	-240(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movq	-256(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -280(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movabsq	$.L.str.29, %rdi
	movl	licvals+48, %r8d
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.30, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$licvals, %r9
	addq	$48, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movq	-296(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-300(%rbp), %r8d        # 4-byte Reload
	movq	-312(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -336(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$effect_image_constrain, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$licvals, %rdi
	addq	$52, %rdi
	movl	licvals+52, %ecx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-72(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	xorps	%xmm0, %xmm0
	movss	.LCPI4_9, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movl	$1, %r10d
	movq	-80(%rbp), %rcx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-424(%rbp), %r8         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gimp_table_attach_aligned
	movl	$5, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %ecx        # 4-byte Reload
	movl	-468(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -92(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$6, %r9d
	movsd	.LCPI4_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_8, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movsd	licvals, %xmm5          # xmm5 = mem[0],zero
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	-484(%rbp), %r8d        # 4-byte Reload
	movl	%edx, -508(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-512(%rbp), %r8d        # 4-byte Reload
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-520(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-520(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$licvals, %rdi
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
	movq	-72(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movl	-92(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -92(%rbp)
	movl	%r9d, -548(%rbp)        # 4-byte Spill
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$6, %r10d
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %ebx
	xorps	%xmm1, %xmm1
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	movsd	licvals+8, %xmm4        # xmm4 = mem[0],zero
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-548(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-576(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -584(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-584(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-584(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -588(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$licvals, %rdi
	addq	$8, %rdi
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
	movq	-72(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movl	-92(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -92(%rbp)
	movl	%r9d, -620(%rbp)        # 4-byte Spill
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$6, %r10d
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ebx
	xorps	%xmm1, %xmm1
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	movsd	licvals+16, %xmm3       # xmm3 = mem[0],zero
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-620(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-648(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -656(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-656(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-656(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -660(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$licvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-672(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movl	-92(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -92(%rbp)
	movl	%r9d, -692(%rbp)        # 4-byte Spill
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$6, %r10d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ebx
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	movsd	licvals+24, %xmm2       # xmm2 = mem[0],zero
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-692(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-720(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-720(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-720(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -724(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$licvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -744(%rbp)        # 8-byte Spill
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movl	-92(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -92(%rbp)
	movl	%r9d, -756(%rbp)        # 4-byte Spill
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$6, %r10d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ebx
	xorl	%r13d, %r13d
	movl	%r13d, %ecx
	movsd	licvals+32, %xmm1       # xmm1 = mem[0],zero
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-756(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-784(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-784(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-784(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -788(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$licvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-800(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	dialog, %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	dialog, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -96(%rbp)
	movq	dialog, %rdi
	callq	gtk_widget_destroy
	movl	-96(%rbp), %eax
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_main_dialog, .Lfunc_end4-create_main_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI5_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	compute_image,@function
compute_image:                          # @compute_image
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
	subq	$64, %rsp
	movabsq	$border_x1, %rsi
	movabsq	$border_y1, %rdx
	movabsq	$border_x2, %rcx
	movabsq	$border_y2, %r8
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movabsq	$.L.str.17, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	cmpl	$0, licvals+48
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB5_2
# BB#1:                                 # %if.then
	callq	generatevectors
.LBB5_2:                                # %if.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	licvals, %xmm0
	jbe	.LBB5_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, licvals
.LBB5_4:                                # %if.end.5
	movsd	licvals(%rip), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, l(%rip)
	movsd	licvals+8(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, dy(%rip)
	movsd	%xmm0, dx(%rip)
	movsd	licvals+24(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, minv(%rip)
	movsd	licvals+32(%rip), %xmm0 # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, maxv(%rip)
	movsd	licvals+16(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, isteps(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, source_drw_has_alpha(%rip)
	movl	licvals+52(%rip), %edi
	callq	gimp_drawable_get
	movq	%rax, -16(%rbp)
	movl	4(%rax), %edi
	movl	%edi, effect_width(%rip)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movl	%edi, effect_height(%rip)
	movl	licvals+40(%rip), %edi
	testl	%edi, %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	je	.LBB5_5
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.5
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB5_6
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.5
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB5_7
	jmp	.LBB5_8
.LBB5_5:                                # %sw.bb
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	rgb_to_hsl
	movq	%rax, -24(%rbp)
	jmp	.LBB5_8
.LBB5_6:                                # %sw.bb.11
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	rgb_to_hsl
	movq	%rax, -24(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %sw.bb.13
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	rgb_to_hsl
	movq	%rax, -24(%rbp)
.LBB5_8:                                # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	licvals+44, %edx
	callq	compute_lic
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	border_x1, %esi
	movl	border_y1, %edx
	movl	border_x2, %r8d
	subl	border_x1, %r8d
	movl	border_y2, %r9d
	subl	border_y1, %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -56(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	compute_image, .Lfunc_end5-compute_image
	.cfi_endproc

	.align	16, 0x90
	.type	effect_image_constrain,@function
effect_image_constrain:                 # @effect_image_constrain
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_rgb
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	effect_image_constrain, .Lfunc_end6-effect_image_constrain
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI7_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	generatevectors,@function
generatevectors:                        # @generatevectors
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
	subq	$32, %rsp
	callq	g_rand_new
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	cmpl	$40, -12(%rbp)
	jge	.LBB7_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -16(%rbp)
.LBB7_3:                                # %for.cond.1
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$40, -16(%rbp)
	jge	.LBB7_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB7_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	callq	g_rand_double_range
	movabsq	$G, %rdi
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	cos
	movslq	-16(%rbp), %rdi
	movslq	-12(%rbp), %rax
	imulq	$640, %rax, %rax        # imm = 0x280
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movsd	%xmm0, (%rcx)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	sin
	movslq	-16(%rbp), %rax
	movslq	-12(%rbp), %rcx
	imulq	$640, %rcx, %rcx        # imm = 0x280
	movq	-32(%rbp), %rdi         # 8-byte Reload
	addq	%rcx, %rdi
	shlq	$4, %rax
	addq	%rax, %rdi
	movsd	%xmm0, 8(%rdi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc.15
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end.17
	movq	-24(%rbp), %rdi
	callq	g_rand_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	generatevectors, .Lfunc_end7-generatevectors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
	.quad	-4616189618054758400    # double -1
.LCPI8_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	rgb_to_hsl,@function
rgb_to_hsl:                             # @rgb_to_hsl
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
	subq	$272, %rsp              # imm = 0x110
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -112(%rbp)
	movq	$0, -128(%rbp)
	callq	g_rand_new
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -184(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	8(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movl	border_x1, %edx
	movl	border_y1, %ecx
	movl	border_x2, %r8d
	subl	border_x1, %r8d
	movl	border_y2, %r9d
	subl	border_y1, %r9d
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-120(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB8_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -32(%rbp)
.LBB8_3:                                # %for.cond.4
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB8_16
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB8_3 Depth=2
	movb	$-1, -25(%rbp)
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	leaq	-176(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	gimp_pixel_rgn_get_pixel
	movzbl	-25(%rbp), %r8d
	movzbl	-26(%rbp), %ecx
	movzbl	-27(%rbp), %edx
	movzbl	-28(%rbp), %esi
	leaq	-72(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_rgba_set_uchar
	leaq	-104(%rbp), %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	gimp_rgb_to_hsl
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	je	.LBB8_5
	jmp	.LBB8_19
.LBB8_19:                               # %for.body.7
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB8_6
	jmp	.LBB8_20
.LBB8_20:                               # %for.body.7
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB8_7
	jmp	.LBB8_8
.LBB8_5:                                # %sw.bb
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB8_8
.LBB8_6:                                # %sw.bb.14
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %sw.bb.16
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB8_8:                                # %sw.epilog
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movq	-184(%rbp), %rdi
	callq	g_rand_double_range
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	rint
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB8_14
.LBB8_10:                               # %cond.false
                                        #   in Loop: Header=BB8_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_12
# BB#11:                                # %cond.true.25
                                        #   in Loop: Header=BB8_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.26
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB8_13:                               # %cond.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB8_14:                               # %cond.end.28
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -128(%rbp)
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_16:                               # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_17
.LBB8_17:                               # %for.inc.33
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_18:                               # %for.end.35
	movq	-184(%rbp), %rdi
	callq	g_rand_free
	movq	-24(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rgb_to_hsl, .Lfunc_end8-rgb_to_hsl
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.align	16, 0x90
	.type	compute_lic,@function
compute_lic:                            # @compute_lic
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
	subq	$224, %rsp
	leaq	-136(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	border_x1, %edx
	movl	border_y1, %r8d
	movl	border_x2, %r9d
	subl	border_x1, %r9d
	movl	border_y2, %r10d
	subl	border_y1, %r10d
	movq	%rax, %rdi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-184(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	border_x1, %edx
	movl	border_y1, %r8d
	movl	border_x2, %r9d
	subl	border_x1, %r9d
	movl	border_y2, %r10d
	subl	border_y1, %r10d
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -28(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB9_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -24(%rbp)
.LBB9_3:                                # %for.cond.6
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB9_16
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gradx
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	grady
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_3 Depth=2
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=2
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB9_8
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB9_3 Depth=2
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB9_8:                                # %if.end.19
                                        #   in Loop: Header=BB9_3 Depth=2
	cmpl	$0, licvals+48
	jne	.LBB9_13
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB9_3 Depth=2
	leaq	-136(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	peek
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	lic_noise
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, source_drw_has_alpha
	je	.LBB9_11
# BB#10:                                # %if.then.25
                                        #   in Loop: Header=BB9_3 Depth=2
	leaq	-64(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_rgba_multiply
	jmp	.LBB9_12
.LBB9_11:                               # %if.else
                                        #   in Loop: Header=BB9_3 Depth=2
	leaq	-64(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
.LBB9_12:                               # %if.end.26
                                        #   in Loop: Header=BB9_3 Depth=2
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.27
                                        #   in Loop: Header=BB9_3 Depth=2
	leaq	-136(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	lic_image
.LBB9_14:                               # %if.end.28
                                        #   in Loop: Header=BB9_3 Depth=2
	leaq	-184(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	poke
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_3
.LBB9_16:                               # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	cvtsi2ssl	-28(%rbp), %xmm0
	cvtsi2ssl	-100(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -204(%rbp)        # 4-byte Spill
# BB#17:                                # %for.inc.35
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_1
.LBB9_18:                               # %for.end.37
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	compute_lic, .Lfunc_end9-compute_lic
	.cfi_endproc

	.align	16, 0x90
	.type	gradx,@function
gradx:                                  # @gradx
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	callq	peekmap
	movl	-24(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%rbp), %edx         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	peekmap
	movl	-32(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	-16(%rbp), %esi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	peekmap
	shll	$1, %eax
	movl	-40(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	peekmap
	shll	$1, %eax
	movl	-48(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	peekmap
	movl	-56(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-60(%rbp), %edx         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	peekmap
	movl	-64(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gradx, .Lfunc_end10-gradx
	.cfi_endproc

	.align	16, 0x90
	.type	grady,@function
grady:                                  # @grady
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	callq	peekmap
	movl	-24(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	subl	$1, %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	peekmap
	shll	$1, %eax
	movl	-28(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-32(%rbp), %edx         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	peekmap
	movl	-36(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-40(%rbp), %edx         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	peekmap
	movl	-44(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	peekmap
	shll	$1, %eax
	movl	-48(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	peekmap
	movl	-56(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	grady, .Lfunc_end11-grady
	.cfi_endproc

	.align	16, 0x90
	.type	peek,@function
peek:                                   # @peek
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
	subq	$32, %rsp
	movabsq	$peek.data, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_pixel
	movq	-24(%rbp), %rdi
	movb	peek.data, %r8b
	movb	peek.data+1, %r9b
	movb	peek.data+2, %r10b
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movzbl	%r10b, %ecx
	movzbl	peek.data+3, %r8d
	callq	gimp_rgba_set_uchar
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	peek, .Lfunc_end12-peek
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4611686018427387904     # double 2
.LCPI13_1:
	.quad	4607182418800017408     # double 1
.LCPI13_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	lic_noise,@function
lic_noise:                              # @lic_noise
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
	subq	$128, %rsp
	movsd	.LCPI13_0, %xmm2        # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	mulsd	l, %xmm2
	divsd	isteps, %xmm2
	movsd	%xmm2, -64(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	l, %xmm0                # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	filter
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	l, %xmm2                # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	l, %xmm3                # xmm3 = mem[0],zero
	mulsd	-96(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	noise
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	l, %xmm0                # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	l, %xmm1                # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	filter
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-96(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	noise
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	minv, %xmm1
	movsd	maxv, %xmm2             # xmm2 = mem[0],zero
	subsd	minv, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_6
# BB#5:                                 # %cond.true
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB13_10
.LBB13_6:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB13_8
# BB#7:                                 # %cond.true.29
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false.30
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB13_9:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB13_10:                              # %cond.end.31
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	lic_noise, .Lfunc_end13-lic_noise
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4611686018427387904     # double 2
.LCPI14_1:
	.quad	4607182418800017408     # double 1
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	lic_image,@function
lic_image:                              # @lic_image
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
	subq	$224, %rsp
	leaq	-152(%rbp), %rax
	xorl	%r8d, %r8d
	movl	$32, %r9d
	movl	%r9d, %r10d
	leaq	-120(%rbp), %r11
	movsd	.LCPI14_0, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rcx, -40(%rbp)
	mulsd	l, %xmm2
	divsd	isteps, %xmm2
	movsd	%xmm2, -56(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	%r11, %rdi
	movl	%r8d, %esi
	movq	%r10, %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	memset
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	l, %xmm1                # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	l, %xmm2                # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	getpixel
	cmpl	$0, source_drw_has_alpha
	je	.LBB14_2
# BB#1:                                 # %if.then
	movsd	l, %xmm0                # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	filter
	leaq	-152(%rbp), %rdi
	callq	gimp_rgba_multiply
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movsd	l, %xmm0                # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	filter
	leaq	-152(%rbp), %rdi
	callq	gimp_rgb_multiply
.LBB14_3:                               # %if.end
	movsd	l, %xmm0                # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	l, %xmm1                # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	leaq	-184(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	callq	getpixel
	cmpl	$0, source_drw_has_alpha
	je	.LBB14_7
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB14_4 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	filter
	leaq	-184(%rbp), %rdi
	callq	gimp_rgba_multiply
	leaq	-216(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_rgba_add
	leaq	-216(%rbp), %rdi
	movsd	.LCPI14_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	callq	gimp_rgba_multiply
	leaq	-120(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	callq	gimp_rgba_add
	jmp	.LBB14_8
.LBB14_7:                               # %if.else.18
                                        #   in Loop: Header=BB14_4 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	filter
	leaq	-184(%rbp), %rdi
	callq	gimp_rgb_multiply
	leaq	-216(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_rgb_add
	leaq	-216(%rbp), %rdi
	movsd	.LCPI14_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	callq	gimp_rgb_multiply
	leaq	-120(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	callq	gimp_rgb_add
.LBB14_8:                               # %if.end.21
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB14_4
.LBB14_10:                              # %for.end
	cmpl	$0, source_drw_has_alpha
	je	.LBB14_12
# BB#11:                                # %if.then.24
	leaq	-120(%rbp), %rdi
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	divsd	l, %xmm0
	callq	gimp_rgba_multiply
	jmp	.LBB14_13
.LBB14_12:                              # %if.else.26
	leaq	-120(%rbp), %rdi
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	divsd	l, %xmm0
	callq	gimp_rgb_multiply
.LBB14_13:                              # %if.end.28
	leaq	-120(%rbp), %rdi
	callq	gimp_rgb_clamp
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rax, (%rdi)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	-96(%rbp), %rax
	movq	%rax, 24(%rdi)
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	lic_image, .Lfunc_end14-lic_image
	.cfi_endproc

	.align	16, 0x90
	.type	poke,@function
poke:                                   # @poke
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
	subq	$32, %rsp
	movabsq	$poke.data, %rax
	movq	%rax, %r8
	addq	$1, %r8
	movq	%rax, %r9
	addq	$2, %r9
	movq	%rax, %r10
	addq	$3, %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%r10, %r8
	callq	gimp_rgba_get_uchar
	movabsq	$poke.data, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	gimp_pixel_rgn_set_pixel
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	poke, .Lfunc_end15-poke
	.cfi_endproc

	.align	16, 0x90
	.type	peekmap,@function
peekmap:                                # @peekmap
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jge	.LBB16_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	effect_width, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_1
.LBB16_3:                               # %while.end
	movl	effect_width, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-20(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, -12(%rbp)
.LBB16_4:                               # %while.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	jge	.LBB16_6
# BB#5:                                 # %while.body.3
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	effect_height, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_4
.LBB16_6:                               # %while.end.5
	movl	effect_height, %eax
	movl	-16(%rbp), %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	effect_width, %esi
	imull	-16(%rbp), %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	movq	-8(%rbp), %r8
	movzbl	(%r8,%rdi), %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	peekmap, .Lfunc_end16-peekmap
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	filter,@function
filter:                                 # @filter
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
	xorps	%xmm1, %xmm1
	movsd	.LCPI17_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI17_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm0
	divsd	l, %xmm0
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB17_2
# BB#1:                                 # %cond.true
	xorps	%xmm0, %xmm0
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
	.size	filter, .Lfunc_end17-filter
	.cfi_endproc

	.align	16, 0x90
	.type	noise,@function
noise:                                  # @noise
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
	subq	$48, %rsp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	divsd	dx, %xmm0
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	dy, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB18_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB18_3:                               # %for.cond.5
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB18_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB18_3 Depth=2
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	dx, %xmm1
	subsd	%xmm1, %xmm0
	divsd	dx, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	mulsd	dy, %xmm2
	subsd	%xmm2, %xmm1
	divsd	dy, %xmm1
	movl	-20(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	omega
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB18_3
.LBB18_6:                               # %for.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_7:                               # %for.inc.18
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB18_1
.LBB18_8:                               # %for.end.20
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	noise, .Lfunc_end18-noise
	.cfi_endproc

	.align	16, 0x90
	.type	omega,@function
omega:                                  # @omega
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
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jge	.LBB19_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$40, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_1
.LBB19_3:                               # %while.end
	jmp	.LBB19_4
.LBB19_4:                               # %while.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jge	.LBB19_6
# BB#5:                                 # %while.body.3
                                        #   in Loop: Header=BB19_4 Depth=1
	movl	-24(%rbp), %eax
	addl	$40, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB19_4
.LBB19_6:                               # %while.end.5
	movl	$40, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-28(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	cubic
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cubic
	movabsq	$G, %rsi
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rdi
	movslq	-20(%rbp), %r8
	imulq	$640, %r8, %r8          # imm = 0x280
	movq	%rsi, %r9
	addq	%r8, %r9
	shlq	$4, %rdi
	addq	%rdi, %r9
	movsd	(%r9), %xmm0            # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movslq	-24(%rbp), %rdi
	movslq	-20(%rbp), %r8
	imulq	$640, %r8, %r8          # imm = 0x280
	addq	%r8, %rsi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	mulsd	-16(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	omega, .Lfunc_end19-omega
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
.LCPI20_2:
	.quad	4613937818241073152     # double 3
.LCPI20_3:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI20_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	cubic,@function
cubic:                                  # @cubic
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
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI20_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	%xmm0, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB20_2
# BB#1:                                 # %cond.true
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI20_3, %xmm2        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-16(%rbp), %xmm3
	mulsd	-16(%rbp), %xmm2
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	movsd	%xmm3, -24(%rbp)        # 8-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB20_3
.LBB20_3:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end20:
	.size	cubic, .Lfunc_end20-cubic
	.cfi_endproc

	.align	16, 0x90
	.type	getpixel,@function
getpixel:                               # @getpixel
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rsi
	movl	36(%rsi), %eax
	movl	%eax, -56(%rbp)
	cvttsd2si	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	cvttsd2si	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB21_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	-52(%rbp), %ecx
	subl	-36(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movl	-36(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -36(%rbp)
.LBB21_3:                               # %if.end
	cmpl	$0, -40(%rbp)
	jge	.LBB21_5
# BB#4:                                 # %if.then.7
	xorl	%eax, %eax
	movl	-56(%rbp), %ecx
	subl	-40(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB21_6
.LBB21_5:                               # %if.else.11
	movl	-40(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	movl	%edx, -40(%rbp)
.LBB21_6:                               # %if.end.13
	movabsq	$getpixel.pp, %rcx
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -44(%rbp)
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	-56(%rbp)
	movl	%edx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	movabsq	$getpixel.pp, %rcx
	addq	$32, %rcx
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	peek
	movabsq	$getpixel.pp, %rcx
	addq	$64, %rcx
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	peek
	movabsq	$getpixel.pp, %rcx
	addq	$96, %rcx
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	peek
	cmpl	$0, source_drw_has_alpha
	je	.LBB21_8
# BB#7:                                 # %if.then.17
	leaq	-88(%rbp), %rdi
	movabsq	$getpixel.pp, %rsi
	movq	-16(%rbp), %rax
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_bilinear_rgba
	movq	-88(%rbp), %rax
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, (%rsi)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rsi)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, 24(%rsi)
	jmp	.LBB21_9
.LBB21_8:                               # %if.else.18
	leaq	-120(%rbp), %rdi
	movabsq	$getpixel.pp, %rsi
	movq	-16(%rbp), %rax
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_bilinear_rgb
	movq	-120(%rbp), %rax
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, (%rsi)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, 16(%rsi)
	movq	-96(%rbp), %rax
	movq	%rax, 24(%rsi)
.LBB21_9:                               # %if.end.20
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	getpixel, .Lfunc_end21-getpixel
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
	.size	query.args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

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
	.asciz	"plug-in-lic"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Special effects that nobody understands"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"No help yet"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Tom Bech & Federico Mena Quintero"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Version 0.14, September 24 1997"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Van Gogh (LIC)..."
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.13, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UTF-8"
	.size	.L.str.15, 6

	.type	licvals,@object         # @licvals
	.local	licvals
	.comm	licvals,56,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"van-gogh-lic"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Van Gogh (LIC)"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-van-gogh-lic"
	.size	.L.str.18, 18

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
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Effect Channel"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Hue"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Saturation"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Brightness"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Effect Operator"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Derivative"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Gradient"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Convolve"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_With white noise"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"W_ith source image"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Effect image:"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Filter length:"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"value-changed"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Noise magnitude:"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"In_tegration steps:"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Minimum value:"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"M_aximum value:"
	.size	.L.str.37, 16

	.type	border_x1,@object       # @border_x1
	.local	border_x1
	.comm	border_x1,4,4
	.type	border_y1,@object       # @border_y1
	.local	border_y1
	.comm	border_y1,4,4
	.type	border_x2,@object       # @border_x2
	.local	border_x2
	.comm	border_x2,4,4
	.type	border_y2,@object       # @border_y2
	.local	border_y2
	.comm	border_y2,4,4
	.type	l,@object               # @l
	.data
	.align	8
l:
	.quad	4621819117588971520     # double 10
	.size	l, 8

	.type	dy,@object              # @dy
	.align	8
dy:
	.quad	4611686018427387904     # double 2
	.size	dy, 8

	.type	dx,@object              # @dx
	.align	8
dx:
	.quad	4611686018427387904     # double 2
	.size	dx, 8

	.type	minv,@object            # @minv
	.align	8
minv:
	.quad	-4610560118520545280    # double -2.5
	.size	minv, 8

	.type	maxv,@object            # @maxv
	.align	8
maxv:
	.quad	4612811918334230528     # double 2.5
	.size	maxv, 8

	.type	isteps,@object          # @isteps
	.align	8
isteps:
	.quad	4626322717216342016     # double 20
	.size	isteps, 8

	.type	source_drw_has_alpha,@object # @source_drw_has_alpha
	.local	source_drw_has_alpha
	.comm	source_drw_has_alpha,4,4
	.type	effect_width,@object    # @effect_width
	.local	effect_width
	.comm	effect_width,4,4
	.type	effect_height,@object   # @effect_height
	.local	effect_height
	.comm	effect_height,4,4
	.type	G,@object               # @G
	.local	G
	.comm	G,25600,16
	.type	peek.data,@object       # @peek.data
	.local	peek.data
	.comm	peek.data,4,1
	.type	getpixel.pp,@object     # @getpixel.pp
	.local	getpixel.pp
	.comm	getpixel.pp,128,16
	.type	poke.data,@object       # @poke.data
	.local	poke.data
	.comm	poke.data,4,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
