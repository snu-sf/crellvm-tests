	.text
	.file	"whirl-pinch.bc"
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4607182418800017408     # double 1
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
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.20, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, img_bpp
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movabsq	$sel_x1, %rsi
	movabsq	$sel_y1, %rdx
	movabsq	$sel_width, %rcx
	movabsq	$sel_height, %r8
	movl	%eax, img_has_alpha
	movq	-72(%rbp), %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_35
.LBB1_4:                                # %if.end
	movq	-72(%rbp), %rax
	movl	20(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	sel_x1, %ecx
	addl	sel_width, %ecx
	movl	%ecx, sel_x2
	movl	sel_y1, %ecx
	addl	sel_height, %ecx
	movl	%ecx, sel_y2
	movl	sel_x1, %ecx
	addl	sel_x2, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, cen_x
	movl	sel_y1, %ecx
	addl	sel_y2, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, cen_y
	movl	sel_width, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movl	sel_height, %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_6
# BB#5:                                 # %if.then.27
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-56(%rbp), %xmm1
	movsd	%xmm1, scale_x
	movsd	%xmm0, scale_y
	jmp	.LBB1_10
.LBB1_6:                                # %if.else
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB1_8
# BB#7:                                 # %if.then.31
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, scale_x
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, scale_y
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.33
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, scale_x
	movsd	%xmm0, scale_y
.LBB1_9:                                # %if.end.34
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.35
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB1_12
# BB#11:                                # %cond.true
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB1_13:                               # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, radius(%rip)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_36
.LBB1_36:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_37
.LBB1_37:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_22
.LBB1_14:                               # %sw.bb
	movabsq	$.L.str.12, %rdi
	movabsq	$wpvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-72(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	whirl_pinch_dialog
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.41
	jmp	.LBB1_35
.LBB1_16:                               # %if.end.42
	jmp	.LBB1_23
.LBB1_17:                               # %sw.bb.43
	cmpl	$6, -12(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.46
	movl	$1, -48(%rbp)
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.47
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wpvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wpvals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wpvals+16
.LBB1_20:                               # %if.end.56
	jmp	.LBB1_23
.LBB1_21:                               # %sw.bb.57
	movabsq	$.L.str.12, %rdi
	movabsq	$wpvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %sw.default
	jmp	.LBB1_23
.LBB1_23:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#24:                                # %land.lhs.true
	movq	-72(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_26
# BB#25:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_31
.LBB1_26:                               # %if.then.67
	movq	-72(%rbp), %rdi
	callq	whirl_pinch
	cmpl	$1, -44(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.70
	callq	gimp_displays_flush
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_28:                               # %if.end.72
	cmpl	$0, -44(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.75
	movabsq	$.L.str.12, %rdi
	movabsq	$wpvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_30:                               # %if.end.77
	jmp	.LBB1_34
.LBB1_31:                               # %if.else.78
	cmpl	$3, -48(%rbp)
	jne	.LBB1_33
# BB#32:                                # %if.then.81
	movl	$0, -48(%rbp)
.LBB1_33:                               # %if.end.82
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.83
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_35:                               # %return
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
	.quad	4576918229304087675     # double 0.01
.LCPI4_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_3:
	.quad	-4616189618054758400    # double -1
.LCPI4_4:
	.quad	4607182418800017408     # double 1
.LCPI4_5:
	.quad	-4573827634059804672    # double -720
.LCPI4_6:
	.quad	4649544402794971136     # double 720
.LCPI4_7:
	.quad	4624633867356078080     # double 15
.LCPI4_8:
	.quad	-4563237138061066240    # double -3600
.LCPI4_9:
	.quad	4660134898793709568     # double 3600
	.text
	.align	16, 0x90
	.type	whirl_pinch_dialog,@function
whirl_pinch_dialog:                     # @whirl_pinch_dialog
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
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movabsq	$.L.str.23, %rax
	movl	$1, %esi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.26, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r11
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
	movq	-32(%rbp), %rdi
	callq	gimp_zoom_preview_new
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
	movabsq	$.L.str.28, %rsi
	movabsq	$dialog_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
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
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movl	$7, %r9d
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movsd	.LCPI4_8, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI4_9, %xmm6         # xmm6 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	wpvals, %xmm0           # xmm0 = mem[0],zero
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$2, (%rsp)
	movl	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$wpvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$200, %r8d
	movl	$7, %r9d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	wpvals+8, %xmm5         # xmm5 = mem[0],zero
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-280(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-280(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -284(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$wpvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$200, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	wpvals+16, %xmm1        # xmm1 = mem[0],zero
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
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
	movl	%ebx, -356(%rbp)        # 4-byte Spill
	movl	%r10d, -360(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$wpvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	whirl_pinch_dialog, .Lfunc_end4-whirl_pinch_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4640537203540230144     # double 180
.LCPI5_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI5_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	whirl_pinch,@function
whirl_pinch:                            # @whirl_pinch
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
	subq	$272, %rsp              # imm = 0x110
	movl	$1, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movl	img_bpp, %eax
	imull	sel_width, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movl	img_bpp, %ecx
	imull	sel_width, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %edi
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movl	$0, -148(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -148(%rbp)
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$4, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movslq	-148(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	leaq	-56(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	sel_x1, %edx
	movl	sel_y1, %ecx
	movl	sel_width, %r8d
	movl	sel_height, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	xorl	%esi, %esi
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-200(%rbp), %rdi
	movq	%rax, -168(%rbp)
	callq	gimp_context_get_background
	leaq	-200(%rbp), %rsi
	movq	-160(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_set_bg_color
	leaq	-200(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_bg_color
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then
	movl	$3, %esi
	movq	-160(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movl	$3, %esi
	movq	-168(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movl	$4, %esi
	movq	-160(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movl	$4, %esi
	movq	-168(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
.LBB5_7:                                # %if.end
	movabsq	$.L.str.33, %rdi
	movl	$0, -60(%rbp)
	movl	sel_width, %eax
	imull	sel_height, %eax
	movl	%eax, -64(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	wpvals, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	radius, %xmm0           # xmm0 = mem[0],zero
	mulsd	radius, %xmm0
	mulsd	wpvals+16, %xmm0
	movsd	%xmm0, radius2
	movl	sel_y1, %ecx
	movl	%ecx, -100(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB5_8:                                # %for.cond.17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #       Child Loop BB5_26 Depth 3
                                        #       Child Loop BB5_30 Depth 3
	movl	$2, %eax
	movl	-100(%rbp), %ecx
	movl	sel_y1, %edx
	addl	sel_y2, %edx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-216(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jg	.LBB5_38
# BB#9:                                 # %for.body.21
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	img_bpp, %ecx
	movl	sel_width, %edx
	subl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -96(%rbp)
	movl	sel_x1, %ecx
	movl	%ecx, -104(%rbp)
.LBB5_10:                               # %for.cond.23
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_26 Depth 3
                                        #       Child Loop BB5_30 Depth 3
	movl	-104(%rbp), %eax
	cmpl	sel_x2, %eax
	jge	.LBB5_36
# BB#11:                                # %for.body.26
                                        #   in Loop: Header=BB5_10 Depth=2
	leaq	-128(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	cvtsi2sdl	-104(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	wpvals+8, %xmm3         # xmm3 = mem[0],zero
	callq	calc_undistorted_coords
	cmpl	$0, %eax
	je	.LBB5_25
# BB#12:                                # %if.then.31
                                        #   in Loop: Header=BB5_10 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_14
# BB#13:                                # %if.then.34
                                        #   in Loop: Header=BB5_10 Depth=2
	cvttsd2si	-128(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.36
                                        #   in Loop: Header=BB5_10 Depth=2
	xorl	%eax, %eax
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -140(%rbp)
.LBB5_15:                               # %if.end.41
                                        #   in Loop: Header=BB5_10 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_17
# BB#16:                                # %if.then.44
                                        #   in Loop: Header=BB5_10 Depth=2
	cvttsd2si	-136(%rbp), %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.46
                                        #   in Loop: Header=BB5_10 Depth=2
	xorl	%eax, %eax
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -144(%rbp)
.LBB5_18:                               # %if.end.51
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	-160(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	movq	-160(%rbp), %rdi
	movl	-140(%rbp), %edx
	addl	$1, %edx
	movl	-144(%rbp), %esi
	movq	-112(%rbp), %rax
	movq	8(%rax), %rcx
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-220(%rbp), %edx        # 4-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movq	-160(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	addl	$1, %edx
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	movq	-160(%rbp), %rdi
	movl	-140(%rbp), %edx
	addl	$1, %edx
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	%esi, -224(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-224(%rbp), %edx        # 4-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movq	-88(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	img_bpp, %esi
	movl	img_has_alpha, %edx
	movq	-112(%rbp), %rcx
	callq	gimp_bilinear_pixels_8
	xorps	%xmm0, %xmm0
	movl	img_bpp, %edx
	movq	-88(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movsd	cen_x, %xmm1            # xmm1 = mem[0],zero
	movsd	cen_x, %xmm2            # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	cen_y, %xmm1            # xmm1 = mem[0],zero
	movsd	cen_y, %xmm2            # xmm2 = mem[0],zero
	subsd	-136(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_20
# BB#19:                                # %if.then.68
                                        #   in Loop: Header=BB5_10 Depth=2
	cvttsd2si	-128(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.70
                                        #   in Loop: Header=BB5_10 Depth=2
	xorl	%eax, %eax
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -140(%rbp)
.LBB5_21:                               # %if.end.75
                                        #   in Loop: Header=BB5_10 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_23
# BB#22:                                # %if.then.78
                                        #   in Loop: Header=BB5_10 Depth=2
	cvttsd2si	-136(%rbp), %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.80
                                        #   in Loop: Header=BB5_10 Depth=2
	xorl	%eax, %eax
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -144(%rbp)
.LBB5_24:                               # %if.end.85
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	-168(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	movq	-168(%rbp), %rdi
	movl	-140(%rbp), %edx
	addl	$1, %edx
	movl	-144(%rbp), %esi
	movq	-112(%rbp), %rax
	movq	8(%rax), %rcx
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-228(%rbp), %edx        # 4-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movq	-168(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	addl	$1, %edx
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	movq	-168(%rbp), %rdi
	movl	-140(%rbp), %edx
	addl	$1, %edx
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	%esi, -232(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-232(%rbp), %edx        # 4-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movq	-96(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	img_bpp, %esi
	movl	img_has_alpha, %edx
	movq	-112(%rbp), %rcx
	callq	gimp_bilinear_pixels_8
	xorl	%edx, %edx
	movl	%edx, %eax
	movl	img_bpp, %edx
	movq	-96(%rbp), %rcx
	movslq	%edx, %rdi
	subq	%rdi, %rax
	addq	%rax, %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB5_34
.LBB5_25:                               # %if.else.96
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	-160(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	-100(%rbp), %edx
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -148(%rbp)
.LBB5_26:                               # %for.cond.98
                                        #   Parent Loop BB5_8 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-148(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB5_29
# BB#27:                                # %for.body.101
                                        #   in Loop: Header=BB5_26 Depth=3
	movslq	-148(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	%dl, (%rax)
# BB#28:                                # %for.inc.105
                                        #   in Loop: Header=BB5_26 Depth=3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_26
.LBB5_29:                               # %for.end.107
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	-168(%rbp), %rdi
	movl	sel_x2, %eax
	subl	$1, %eax
	movl	-104(%rbp), %ecx
	subl	sel_x1, %ecx
	subl	%ecx, %eax
	movl	sel_y2, %ecx
	subl	$1, %ecx
	movl	-100(%rbp), %edx
	subl	sel_y1, %edx
	subl	%edx, %ecx
	movq	-112(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -148(%rbp)
.LBB5_30:                               # %for.cond.115
                                        #   Parent Loop BB5_8 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-148(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB5_33
# BB#31:                                # %for.body.118
                                        #   in Loop: Header=BB5_30 Depth=3
	movslq	-148(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
# BB#32:                                # %for.inc.123
                                        #   in Loop: Header=BB5_30 Depth=3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_30
.LBB5_33:                               # %for.end.125
                                        #   in Loop: Header=BB5_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	img_bpp, %eax
	shll	$1, %eax
	movq	-96(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
.LBB5_34:                               # %if.end.130
                                        #   in Loop: Header=BB5_10 Depth=2
	jmp	.LBB5_35
.LBB5_35:                               # %for.inc.131
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB5_10
.LBB5_36:                               # %for.end.133
                                        #   in Loop: Header=BB5_8 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	sel_x1, %edx
	movl	-100(%rbp), %ecx
	movl	sel_width, %r8d
	callq	gimp_pixel_rgn_set_row
	leaq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	sel_x1, %edx
	movl	sel_y2, %ecx
	subl	$1, %ecx
	movl	-100(%rbp), %r8d
	subl	sel_y1, %r8d
	subl	%r8d, %ecx
	movl	sel_width, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	sel_width, %ecx
	shll	$1, %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -244(%rbp)        # 4-byte Spill
# BB#37:                                # %for.inc.143
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB5_8
.LBB5_38:                               # %for.end.145
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-160(%rbp), %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_destroy
	movq	-168(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movl	$0, -148(%rbp)
.LBB5_39:                               # %for.cond.147
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -148(%rbp)
	jge	.LBB5_42
# BB#40:                                # %for.body.150
                                        #   in Loop: Header=BB5_39 Depth=1
	movslq	-148(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#41:                                # %for.inc.153
                                        #   in Loop: Header=BB5_39 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_39
.LBB5_42:                               # %for.end.155
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	sel_x1, %esi
	movl	sel_y1, %edx
	movl	sel_width, %ecx
	movl	sel_height, %r8d
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -256(%rbp)        # 4-byte Spill
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end5:
	.size	whirl_pinch, .Lfunc_end5-whirl_pinch
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4640537203540230144     # double 180
.LCPI6_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
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
	subq	$208, %rsp
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	mulsd	wpvals, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	radius, %xmm0           # xmm0 = mem[0],zero
	mulsd	radius, %xmm0
	mulsd	wpvals+16, %xmm0
	movsd	%xmm0, radius2
	movl	$0, -108(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -108(%rbp)
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	leaq	-144(%rbp), %rax
	movslq	-108(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-108(%rbp), %rcx
	movq	%rax, -176(%rbp,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-96(%rbp), %rdi
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_background
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-96(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$2, %esi
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -40(%rbp)
.LBB6_5:                                # %for.cond.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_12
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$0, -36(%rbp)
.LBB6_7:                                # %for.cond.12
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_10
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB6_7 Depth=2
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_preview_untransform
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	wpvals+8, %xmm3         # xmm3 = mem[0],zero
	callq	calc_undistorted_coords
	leaq	-144(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttsd2si	-24(%rbp), %esi
	cvttsd2si	-32(%rbp), %edx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-144(%rbp), %rcx
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	addsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvttsd2si	-32(%rbp), %edx
	addq	$4, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-144(%rbp), %rcx
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	cvttsd2si	-24(%rbp), %esi
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	addq	$8, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-144(%rbp), %rcx
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	addq	$12, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-176(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-112(%rbp), %esi
	movl	img_has_alpha, %edx
	callq	gimp_bilinear_pixels_8
	movl	-112(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -64(%rbp)
# BB#9:                                 # %for.inc.37
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_7
.LBB6_10:                               # %for.end.39
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc.40
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_5
.LBB6_12:                               # %for.end.42
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-52(%rbp), %eax
	imull	-112(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-104(%rbp), %rdi
	callq	g_free
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialog_update_preview, .Lfunc_end6-dialog_update_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.align	16, 0x90
	.type	calc_undistorted_coords,@function
calc_undistorted_coords:                # @calc_undistorted_coords
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
	subq	$128, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	cen_x, %xmm0
	mulsd	scale_x, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	cen_y, %xmm0
	mulsd	scale_y, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	radius2, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	wpvals+16, %xmm1
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	divsd	radius, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	callq	sin
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	pow
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	subsd	-88(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	divsd	scale_x, %xmm0
	addsd	cen_x, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	scale_y, %xmm0
	addsd	cen_y, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB7_3:                                # %if.end
	movl	-116(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	calc_undistorted_coords, .Lfunc_end7-calc_undistorted_coords
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
	.asciz	"whirl"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Whirl angle (degrees)"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pinch"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Pinch amount"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"radius"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Radius (1.0 is the largest circle that fits in the image, and 2.0 goes all the way to the corners)"
	.size	.L.str.11, 99

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-whirl-pinch"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Distort an image by whirling and pinching"
	.size	.L.str.13, 42

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Distorts the image by whirling and pinching, which are two common center-based, circular distortions.  Whirling is like projecting the image onto the surface of water in a toilet and flushing.  Pinching is similar to projecting the image onto an elastic surface and pressing or pulling on the center of the surface."
	.size	.L.str.14, 316

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Federico Mena Quintero and Scott Goehring"
	.size	.L.str.15, 42

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"May 1997, 2.09"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"W_hirl and Pinch..."
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Image>/Filters/Distorts"
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

	.type	img_bpp,@object         # @img_bpp
	.local	img_bpp
	.comm	img_bpp,4,4
	.type	img_has_alpha,@object   # @img_has_alpha
	.local	img_has_alpha
	.comm	img_has_alpha,4,4
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
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Region affected by plug-in is empty"
	.size	.L.str.22, 36

	.type	sel_x2,@object          # @sel_x2
	.local	sel_x2
	.comm	sel_x2,4,4
	.type	sel_y2,@object          # @sel_y2
	.local	sel_y2
	.comm	sel_y2,4,4
	.type	cen_x,@object           # @cen_x
	.local	cen_x
	.comm	cen_x,8,8
	.type	cen_y,@object           # @cen_y
	.local	cen_y
	.comm	cen_y,8,8
	.type	scale_x,@object         # @scale_x
	.local	scale_x
	.comm	scale_x,8,8
	.type	scale_y,@object         # @scale_y
	.local	scale_y
	.comm	scale_y,8,8
	.type	radius,@object          # @radius
	.local	radius
	.comm	radius,8,8
	.type	wpvals,@object          # @wpvals
	.data
	.align	8
wpvals:
	.quad	4636033603912859648     # double 90
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	wpvals, 24

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"whirl-pinch"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Whirl and Pinch"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-whirl-pinch"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-cancel"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-ok"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalidated"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Whirl angle:"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"value-changed"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Pinch amount:"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Radius:"
	.size	.L.str.32, 9

	.type	radius2,@object         # @radius2
	.local	radius2
	.comm	radius2,8,8
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Whirling and pinching"
	.size	.L.str.33, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
