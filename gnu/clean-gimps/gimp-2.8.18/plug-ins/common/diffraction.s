	.text
	.file	"diffraction.bc"
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
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %r8
	movabsq	$.L.str.35, %r9
	movabsq	$.L.str.36, %rax
	movabsq	$.L.str.37, %r10
	movl	$1, %r11d
	movl	$15, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$15, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.38, %rsi
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.39, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.39, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	callq	diff_init_luts
	movl	$3, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	$21, run.values(%rip)
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	-56(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_26
.LBB1_26:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.30, %rdi
	movabsq	$dvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	diffraction_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_24
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.6
	cmpl	$15, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.7
	movl	$1, -52(%rbp)
.LBB1_8:                                # %if.end.8
	cmpl	$3, -52(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+16
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+24
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+32
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+40
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+48
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+56
	movq	-24(%rbp), %rax
	movsd	448(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+64
	movq	-24(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+72
	movq	-24(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+80
	movq	-24(%rbp), %rax
	movsd	568(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+88
.LBB1_10:                               # %if.end.46
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.47
	movabsq	$.L.str.30, %rdi
	movabsq	$dvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	cmpl	$3, -52(%rbp)
	jne	.LBB1_20
# BB#14:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_20
# BB#15:                                # %if.then.55
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-104(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
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
	movq	-48(%rbp), %rdi
	callq	diffraction
	cmpl	$1, -56(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.60
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.62
	cmpl	$0, -56(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.65
	movabsq	$.L.str.30, %rdi
	movabsq	$dvals, %rax
	movl	$96, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.67
	jmp	.LBB1_23
.LBB1_20:                               # %if.else
	cmpl	$3, -52(%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.70
	movl	$0, -52(%rbp)
.LBB1_22:                               # %if.end.71
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.72
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_24:                               # %return
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
	.quad	-4609115380302729960    # double -3.1415926535897931
.LCPI3_1:
	.quad	4589191932824463130     # double 0.062831853071795868
.LCPI3_2:
	.quad	4602678819172646912     # double 0.5
.LCPI3_3:
	.quad	4616189618054758400     # double 4
.LCPI3_4:
	.quad	4604930618986332160     # double 0.75
	.text
	.align	16, 0x90
	.type	diff_init_luts,@function
diff_init_luts:                         # @diff_init_luts
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
	subq	$64, %rsp
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, -4(%rbp)
	jg	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm3         # xmm3 = mem[0],zero
	movsd	-16(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movsd	%xmm2, -56(%rbp)        # 8-byte Spill
	callq	sin
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movslq	-4(%rbp), %rax
	movsd	%xmm0, cos_lut(,%rax,8)
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movslq	-4(%rbp), %rax
	movsd	%xmm0, param_lut1(,%rax,8)
	movslq	-4(%rbp), %rax
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	cos_lut(,%rax,8), %xmm0
	movslq	-4(%rbp), %rax
	mulsd	cos_lut(,%rax,8), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-4(%rbp), %rax
	movsd	%xmm1, param_lut2(,%rax,8)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	diff_init_luts, .Lfunc_end3-diff_init_luts
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4616189618054758400    # double -1
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4581421828931458171     # double 0.02
.LCPI4_3:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI4_4:
	.quad	4636737291354636288     # double 100
.LCPI4_5:
	.quad	4621819117588971520     # double 10
.LCPI4_6:
	.quad	4576918229304087675     # double 0.01
.LCPI4_7:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_8:
	.quad	4626322717216342016     # double 20
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_9:
	.long	1056964608              # float 0.5
.LCPI4_10:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	diffraction_dialog,@function
diffraction_dialog:                     # @diffraction_dialog
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
	subq	$1176, %rsp             # imm = 0x498
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movabsq	$.L.str.41, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.42, %rdi
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
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r10d, -120(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movss	.LCPI4_9, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_10, %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	$1, %esi
	movss	%xmm0, -184(%rbp)       # 4-byte Spill
	movss	-184(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_aspect_frame_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$64, %ecx
	movq	%rax, dint
	movq	dint, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	dint, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	dint, %rdi
	callq	gtk_widget_show
	callq	gtk_progress_bar_new
	movl	$32, %esi
	movl	$16, %edx
	movq	%rax, dint+8
	movq	dint+8, %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	dint+8, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	dint+8, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rsi
	movabsq	$dialog_update_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r11
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %edx
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	dvals, %xmm1            # xmm1 = mem[0],zero
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-336(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -340(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-352(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	dvals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -404(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	dvals+16, %xmm1         # xmm1 = mem[0],zero
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-456(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -460(%rbp)        # 4-byte Spill
	movl	%r10d, -464(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movl	%eax, -492(%rbp)        # 4-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r9d
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	dvals+24, %xmm1         # xmm1 = mem[0],zero
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	%edx, -540(%rbp)        # 4-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	-540(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -556(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-568(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -572(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	dvals+32, %xmm1         # xmm1 = mem[0],zero
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-624(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-624(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-624(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -628(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	dvals+40, %xmm1         # xmm1 = mem[0],zero
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-680(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-680(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-680(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -684(%rbp)        # 4-byte Spill
	movl	%r10d, -688(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	movl	%eax, -716(%rbp)        # 4-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r9d
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	dvals+48, %xmm1         # xmm1 = mem[0],zero
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	%edx, -764(%rbp)        # 4-byte Spill
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	-764(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -780(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-792(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-792(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-792(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -796(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
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
	movabsq	$.L.str.50, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	dvals+56, %xmm1         # xmm1 = mem[0],zero
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -848(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-848(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-848(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-848(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -852(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$56, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -872(%rbp)        # 8-byte Spill
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$150, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	dvals+64, %xmm1         # xmm1 = mem[0],zero
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-904(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-904(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-904(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -908(%rbp)        # 4-byte Spill
	movl	%r10d, -912(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$64, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$150, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	dvals+72, %xmm1         # xmm1 = mem[0],zero
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1000(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1000(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1000(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1000(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -1004(%rbp)       # 4-byte Spill
	movl	%r10d, -1008(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$72, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	dvals+80, %xmm1         # xmm1 = mem[0],zero
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1056(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1056(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1056(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1056(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1060(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$80, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$7, %r9d
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	dvals+88, %xmm5         # xmm5 = mem[0],zero
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1112(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1112(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1112(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -1116(%rbp)       # 4-byte Spill
	movl	%r10d, -1120(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$dvals, %rdi
	addq	$88, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rdi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-32(%rbp), %rdi
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	callq	gtk_widget_show
	callq	dialog_update_preview
	movq	-32(%rbp), %rcx
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	-100(%rbp), %eax
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	diffraction_dialog, .Lfunc_end4-diffraction_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4601552919265804288    # double -10
.LCPI5_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	diffraction,@function
diffraction:                            # @diffraction
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
	subq	$80, %rsp
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movabsq	$.L.str.59, %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -40(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_rgn_iterator_new
	movabsq	$diffraction_func, %rsi
	leaq	-40(%rbp), %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	gimp_rgn_iterator_dest
	movq	-16(%rbp), %rdi
	callq	gimp_rgn_iterator_free
.LBB5_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	diffraction, .Lfunc_end5-diffraction
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_update_callback,@function
dialog_update_callback:                 # @dialog_update_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialog_update_callback, .Lfunc_end6-dialog_update_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4634063279075885056     # double 63
.LCPI7_1:
	.quad	4617315517961601024     # double 5
.LCPI7_2:
	.quad	-4606056518893174784    # double -5
.LCPI7_3:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
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
	subq	$192, %rsp
	movabsq	$dint, %rax
	addq	$16, %rax
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	%rax, -112(%rbp)
	movl	$0, -104(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #     Child Loop BB7_8 Depth 2
	cmpl	$64, -104(%rbp)
	jge	.LBB7_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movl	$0, -100(%rbp)
.LBB7_3:                                # %for.cond.3
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, -100(%rbp)
	jge	.LBB7_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB7_3 Depth=2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-96(%rbp), %rdi
	callq	diff_diffract
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdi
	movq	%rdi, %rdx
	incq	%rdx
	movq	%rdx, -112(%rbp)
	movb	%cl, (%rdi)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	movq	%rdx, %rdi
	incq	%rdi
	movq	%rdi, -112(%rbp)
	movb	%cl, (%rdx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -112(%rbp)
	movb	%cl, (%rdx)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$10, %eax
	movl	-104(%rbp), %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-116(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_11
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	dint+8, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-104(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rax, %rdi
	movaps	%xmm1, %xmm0
	callq	gtk_progress_bar_set_fraction
.LBB7_8:                                # %while.cond
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB7_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB7_8 Depth=2
	callq	gtk_main_iteration
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB7_8
.LBB7_10:                               # %while.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
# BB#12:                                # %for.inc.20
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB7_1
.LBB7_13:                               # %for.end.22
	movq	dint, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$64, %edx
	movabsq	$dint, %rsi
	addq	$16, %rsi
	movl	$192, %r8d
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-160(%rbp), %r9d        # 4-byte Reload
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$192, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	dint+8, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_update_preview, .Lfunc_end7-dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	diff_diffract,@function
diff_diffract:                          # @diff_diffract
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	dvals+48, %xmm2         # xmm2 = mem[0],zero
	movsd	dvals+24, %xmm3         # xmm3 = mem[0],zero
	movsd	dvals, %xmm4            # xmm4 = mem[0],zero
	callq	diff_point
	movq	-24(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	dvals+56, %xmm2         # xmm2 = mem[0],zero
	movsd	dvals+32, %xmm3         # xmm3 = mem[0],zero
	movsd	dvals+8, %xmm4          # xmm4 = mem[0],zero
	callq	diff_point
	movq	-24(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	dvals+64, %xmm2         # xmm2 = mem[0],zero
	movsd	dvals+40, %xmm3         # xmm3 = mem[0],zero
	movsd	dvals+16, %xmm4         # xmm4 = mem[0],zero
	callq	diff_point
	movq	-24(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	diff_diffract, .Lfunc_end8-diff_diffract
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	diff_point,@function
diff_point:                             # @diff_point
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
	subq	$64, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	dvals+72, %xmm2         # xmm2 = mem[0],zero
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	movsd	-16(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movaps	%xmm5, %xmm2
	callq	diff_intensity
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	atan
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movapd	.LCPI9_0(%rip), %xmm0   # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	diff_point, .Lfunc_end9-diff_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4616189618054758400     # double 4
.LCPI10_1:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI10_2:
	.quad	4585925428558828667     # double 0.040000000000000001
	.text
	.align	16, 0x90
	.type	diff_intensity,@function
diff_intensity:                         # @diff_intensity
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
	subq	$80, %rsp
	movsd	.LCPI10_0, %xmm3        # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	mulsd	-24(%rbp), %xmm3
	movsd	%xmm3, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, -28(%rbp)
	jg	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movsd	cos_lut(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	mulsd	-8(%rbp), %xmm1
	movslq	-28(%rbp), %rax
	movsd	param_lut1(,%rax,8), %xmm2 # xmm2 = mem[0],zero
	mulsd	-16(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-28(%rbp), %rax
	subsd	param_lut2(,%rax,8), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-40(%rbp), %xmm2
	movsd	%xmm2, -40(%rbp)
	mulsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	mulsd	dvals+88, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -80(%rbp)
	movsd	dvals+80, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	mulsd	-40(%rbp), %xmm1
	mulsd	-40(%rbp), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	mulsd	-48(%rbp), %xmm2
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	diff_intensity, .Lfunc_end10-diff_intensity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	-4606056518893174784    # double -5
.LCPI11_1:
	.quad	4617315517961601024     # double 5
.LCPI11_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	diffraction_func,@function
diffraction_func:                       # @diffraction_func
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
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r8, -40(%rbp)
	movsd	(%r8), %xmm0            # xmm0 = mem[0],zero
	movl	-4(%rbp), %ecx
	movl	16(%r8), %esi
	subl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movl	-8(%rbp), %ecx
	movl	20(%rdx), %esi
	subl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LCPI11_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-88(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	diff_diffract
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movq	-16(%rbp), %rdx
	movb	%al, 1(%rdx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movq	-16(%rbp), %rdx
	movb	%al, 2(%rdx)
	cmpl	$4, -20(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	$-1, 3(%rax)
.LBB11_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	diffraction_func, .Lfunc_end11-diffraction_func
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	3                       # 0x3
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
	.asciz	"lam-r"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Light frequency (red)"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"lam-g"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Light frequency (green)"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"lam-b"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Light frequency (blue)"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"contour-r"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Number of contours (red)"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"contour-g"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Number of contours (green)"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"contour-b"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Number of contours (blue)"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"edges-r"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Number of sharp edges (red)"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"edges-g"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Number of sharp edges (green)"
	.size	.L.str.21, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"edges-b"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Number of sharp edges (blue)"
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"brightness"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Brightness and shifting/fattening of contours"
	.size	.L.str.25, 46

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"scattering"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Scattering (Speed vs. quality)"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"polarization"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Polarization"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-diffraction"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Generate diffraction patterns"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Help?  What help?  Real men do not need help :-)"
	.size	.L.str.32, 49

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Federico Mena Quintero"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Federico Mena Quintero & David Bleecker"
	.size	.L.str.34, 40

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"April 1997, 0.5"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Diffraction Patterns..."
	.size	.L.str.36, 25

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"RGB*"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.38, 31

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"UTF-8"
	.size	.L.str.40, 6

	.type	dvals,@object           # @dvals
	.data
	.align	8
dvals:
	.quad	4605516086937890324     # double 0.81499999999999994
	.quad	4608177714317666288     # double 1.2210000000000001
	.quad	4607736361554183979     # double 1.123
	.quad	4605570130133418770     # double 0.82099999999999995
	.quad	4605570130133418770     # double 0.82099999999999995
	.quad	4606948231619394142     # double 0.97399999999999998
	.quad	4603669611090668421     # double 0.60999999999999999
	.quad	4604273093440736068     # double 0.67700000000000005
	.quad	4603903798271291687     # double 0.63600000000000001
	.quad	4589420221869668172     # double 0.066000000000000003
	.quad	4630421837302179299     # double 37.125999999999998
	.quad	-4621179606441884910    # double -0.47299999999999998
	.size	dvals, 96

	.type	cos_lut,@object         # @cos_lut
	.local	cos_lut
	.comm	cos_lut,808,16
	.type	param_lut1,@object      # @param_lut1
	.local	param_lut1
	.comm	param_lut1,808,16
	.type	param_lut2,@object      # @param_lut2
	.local	param_lut2
	.comm	param_lut2,808,16
	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"diffraction"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Diffraction Patterns"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-diffraction"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-cancel"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-ok"
	.size	.L.str.45, 7

	.type	dint,@object            # @dint
	.local	dint
	.comm	dint,12304,8
	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Preview!"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"clicked"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Red:"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"value-changed"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Green:"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Blue:"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Frequencies"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Contours"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Sharp Edges"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Brightness:"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Sc_attering:"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Po_larization:"
	.size	.L.str.57, 15

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Other Options"
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Creating diffraction pattern"
	.size	.L.str.59, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
