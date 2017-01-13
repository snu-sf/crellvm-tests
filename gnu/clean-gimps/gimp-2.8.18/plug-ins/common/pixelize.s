	.text
	.file	"pixelize.bc"
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %r10
	movl	$1, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.pixelize_args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.19, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.23, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r10d
	movabsq	$.L.str.18, %r15
	movl	$1, %r11d
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.pixelize2_args, %r13
	movq	$0, (%rsp)
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	%r14d, -76(%rbp)        # 4-byte Spill
	movl	%ebx, -80(%rbp)         # 4-byte Spill
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
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
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
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
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_35
.LBB1_35:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_36
.LBB1_36:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_22
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.11, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	pixelize_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_34
.LBB1_5:                                # %if.end
	jmp	.LBB1_23
.LBB1_6:                                # %sw.bb.9
	movq	-8(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %land.lhs.true
	cmpl	$4, -12(%rbp)
	jne	.LBB1_10
.LBB1_8:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#9:                                 # %land.lhs.true.14
	cmpl	$5, -12(%rbp)
	je	.LBB1_11
.LBB1_10:                               # %if.then.16
	movl	$1, -56(%rbp)
.LBB1_11:                               # %if.end.17
	cmpl	$3, -56(%rbp)
	jne	.LBB1_16
# BB#12:                                # %if.then.19
	movq	-24(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, pvals
	cmpl	$4, -12(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.26
	movl	pvals, %eax
	movl	%eax, pvals+4
	jmp	.LBB1_15
.LBB1_14:                               # %if.else
	movq	-24(%rbp), %rax
	cvtsi2sdl	168(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, pvals+4
.LBB1_15:                               # %if.end.32
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.33
	cmpl	$3, -56(%rbp)
	jne	.LBB1_20
# BB#17:                                # %land.lhs.true.36
	cmpl	$0, pvals
	jle	.LBB1_19
# BB#18:                                # %lor.lhs.false.39
	cmpl	$0, pvals+4
	jg	.LBB1_20
.LBB1_19:                               # %if.then.42
	movl	$1, -56(%rbp)
.LBB1_20:                               # %if.end.43
	jmp	.LBB1_23
.LBB1_21:                               # %sw.bb.44
	movabsq	$.L.str.11, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %sw.default
	jmp	.LBB1_23
.LBB1_23:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_33
# BB#24:                                # %if.then.48
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_26
# BB#25:                                # %lor.lhs.false.51
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_31
.LBB1_26:                               # %if.then.55
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$16, %ecx
	movl	%ecx, %edi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	pixelize
	cmpl	$1, -52(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.60
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_28:                               # %if.end.62
	cmpl	$0, -52(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.65
	movabsq	$.L.str.11, %rdi
	movabsq	$pvals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_30:                               # %if.end.67
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.68
	movabsq	$.L.str.27, %rdi
	movl	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_32:                               # %if.end.70
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.71
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_34:                               # %return
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
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pixelize_dialog,@function
pixelize_dialog:                        # @pixelize_dialog
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
	subq	$368, %rsp              # imm = 0x170
	movabsq	$.L.str.34, %rsi
	movl	$1, %eax
	movl	$6, %r8d
	xorl	%ecx, %ecx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	$.L.str.28, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	gimp_ui_init
	movl	$.L.str.29, %eax
	movl	%eax, %edi
	callq	gettext
	movq	%rsp, %rdi
	movq	$0, 32(%rdi)
	movl	$-5, 24(%rdi)
	movq	$.L.str.32, 16(%rdi)
	movl	$-6, 8(%rdi)
	movq	$.L.str.31, (%rdi)
	movl	$.L.str.30, %ecx
	movl	%ecx, %esi
	movl	$gimp_standard_help_func, %ecx
	movl	%ecx, %r8d
	movl	$.L.str.11, %ecx
	movl	%ecx, %r9d
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edi
	movb	%cl, %r10b
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movb	%r10b, %al
	movb	%r10b, -113(%rbp)       # 1-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -16(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %ecx
	movq	%rax, %rdi
	movb	-113(%rbp), %al         # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %ecx
	movl	$12, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%edx, -144(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-144(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	gimp_drawable_preview_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	$.L.str.33, %edx
	movl	%edx, %esi
	movl	$pixelize, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$2, %r9d
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movl	%eax, -44(%rbp)
	movl	%eax, %edi
	callq	gimp_image_get_unit
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edi
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	gimp_image_get_resolution
	movl	-48(%rbp), %edi
	movl	$.L.str.35, %r9d
	movl	%r9d, %ecx
	movl	%edi, -188(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gettext
	cvtsi2sdl	pvals(%rip), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm2
	movaps	%xmm2, %xmm3
	movl	$.L.str.36, %r9d
	movl	%r9d, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	movsd	%xmm2, -224(%rbp)       # 8-byte Spill
	movsd	%xmm3, -232(%rbp)       # 8-byte Spill
	callq	gettext
	cvtsi2sdl	pvals+4(%rip), %xmm6
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movaps	%xmm0, %xmm1
	movl	-188(%rbp), %edi        # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-96(%rbp), %edx         # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movl	-96(%rbp), %r9d         # 4-byte Reload
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, 24(%rsp)
	movsd	-88(%rbp), %xmm8        # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 32(%rsp)
	movsd	-240(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 40(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	-248(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$update_pixelsize, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$update_pixelsize, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pixelize_dialog, .Lfunc_end3-pixelize_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	pixelize,@function
pixelize:                               # @pixelize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_tile_width
	movl	%eax, -20(%rbp)
	callq	gimp_tile_height
	movl	%eax, -24(%rbp)
	movl	pvals, %eax
	movl	%eax, -28(%rbp)
	movl	pvals+4, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB4_2:                                # %if.end
	cmpl	$1, -28(%rbp)
	jge	.LBB4_4
# BB#3:                                 # %if.then.3
	movl	$1, -28(%rbp)
.LBB4_4:                                # %if.end.4
	cmpl	$0, -32(%rbp)
	jge	.LBB4_6
# BB#5:                                 # %if.then.6
	xorl	%eax, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB4_6:                                # %if.end.8
	cmpl	$1, -32(%rbp)
	jge	.LBB4_8
# BB#7:                                 # %if.then.10
	movl	$1, -32(%rbp)
.LBB4_8:                                # %if.end.11
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_11
# BB#9:                                 # %lor.lhs.false
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_11
# BB#10:                                # %lor.lhs.false.14
	cmpq	$0, -16(%rbp)
	je	.LBB4_12
.LBB4_11:                               # %if.then.15
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	pixelize_large
	jmp	.LBB4_13
.LBB4_12:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	pixelize_small
.LBB4_13:                               # %if.end.16
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pixelize, .Lfunc_end4-pixelize
	.cfi_endproc

	.align	16, 0x90
	.type	update_pixelsize,@function
update_pixelsize:                       # @update_pixelsize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, pvals
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, pvals+4
	movq	-16(%rbp), %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	update_pixelsize, .Lfunc_end5-update_pixelsize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pixelize_large,@function
pixelize_large:                         # @pixelize_large
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -276(%rbp)
	movl	$1, -280(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -208(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -212(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-268(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-252(%rbp), %eax
	addl	-268(%rbp), %eax
	movl	%eax, -260(%rbp)
	movl	-256(%rbp), %eax
	addl	-272(%rbp), %eax
	movl	%eax, -264(%rbp)
	movl	-268(%rbp), %eax
	imull	-272(%rbp), %eax
	imull	-208(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.else
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-268(%rbp), %rcx
	leaq	-272(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.9
	jmp	.LBB6_101
.LBB6_4:                                # %if.end
	movl	-252(%rbp), %eax
	addl	-268(%rbp), %eax
	movl	%eax, -260(%rbp)
	movl	-256(%rbp), %eax
	addl	-272(%rbp), %eax
	movl	%eax, -264(%rbp)
	movl	$0, -276(%rbp)
	movl	-268(%rbp), %eax
	shll	$1, %eax
	imull	-272(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB6_5:                                # %if.end.14
	movl	-256(%rbp), %eax
	movl	%eax, -220(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #       Child Loop BB6_16 Depth 3
                                        #       Child Loop BB6_20 Depth 3
                                        #         Child Loop BB6_22 Depth 4
                                        #           Child Loop BB6_25 Depth 5
                                        #             Child Loop BB6_27 Depth 6
                                        #           Child Loop BB6_34 Depth 5
                                        #             Child Loop BB6_36 Depth 6
                                        #       Child Loop BB6_52 Depth 3
                                        #       Child Loop BB6_58 Depth 3
                                        #       Child Loop BB6_65 Depth 3
                                        #         Child Loop BB6_67 Depth 4
                                        #           Child Loop BB6_69 Depth 5
                                        #       Child Loop BB6_78 Depth 3
                                        #         Child Loop BB6_80 Depth 4
                                        #           Child Loop BB6_82 Depth 5
                                        #             Child Loop BB6_84 Depth 6
	movl	-220(%rbp), %eax
	cmpl	-264(%rbp), %eax
	jge	.LBB6_98
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-252(%rbp), %eax
	movl	%eax, -216(%rbp)
.LBB6_8:                                # %for.cond.16
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_16 Depth 3
                                        #       Child Loop BB6_20 Depth 3
                                        #         Child Loop BB6_22 Depth 4
                                        #           Child Loop BB6_25 Depth 5
                                        #             Child Loop BB6_27 Depth 6
                                        #           Child Loop BB6_34 Depth 5
                                        #             Child Loop BB6_36 Depth 6
                                        #       Child Loop BB6_52 Depth 3
                                        #       Child Loop BB6_58 Depth 3
                                        #       Child Loop BB6_65 Depth 3
                                        #         Child Loop BB6_67 Depth 4
                                        #           Child Loop BB6_69 Depth 5
                                        #       Child Loop BB6_78 Depth 3
                                        #         Child Loop BB6_80 Depth 4
                                        #           Child Loop BB6_82 Depth 5
                                        #             Child Loop BB6_84 Depth 6
	movl	-216(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.LBB6_96
# BB#9:                                 # %for.body.19
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-12(%rbp), %eax
	movl	-216(%rbp), %ecx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-12(%rbp)
	movl	-308(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -224(%rbp)
	movl	-16(%rbp), %ecx
	movl	-220(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-16(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -228(%rbp)
	movl	-224(%rbp), %ecx
	movl	-260(%rbp), %edx
	subl	-216(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB6_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-224(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-260(%rbp), %eax
	subl	-216(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB6_12:                               # %cond.end
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)
	movl	-228(%rbp), %eax
	movl	-264(%rbp), %ecx
	subl	-220(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_14
# BB#13:                                # %cond.true.29
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-228(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB6_15
.LBB6_14:                               # %cond.false.30
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-264(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB6_15:                               # %cond.end.32
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	leaq	-72(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -228(%rbp)
	movq	-8(%rbp), %rsi
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %eax
	movl	-224(%rbp), %r8d
	movl	-228(%rbp), %r9d
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -204(%rbp)
.LBB6_16:                               # %for.cond.34
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB6_19
# BB#17:                                # %for.body.37
                                        #   in Loop: Header=BB6_16 Depth=3
	movslq	-204(%rbp), %rax
	movq	$0, -192(%rbp,%rax,8)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB6_16 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_16
.LBB6_19:                               # %for.end
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	$1, %edi
	leaq	-72(%rbp), %rsi
	movq	$0, -248(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -288(%rbp)
.LBB6_20:                               # %for.cond.39
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_22 Depth 4
                                        #           Child Loop BB6_25 Depth 5
                                        #             Child Loop BB6_27 Depth 6
                                        #           Child Loop BB6_34 Depth 5
                                        #             Child Loop BB6_36 Depth 6
	cmpq	$0, -288(%rbp)
	je	.LBB6_48
# BB#21:                                # %for.body.42
                                        #   in Loop: Header=BB6_20 Depth=3
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -196(%rbp)
.LBB6_22:                               # %for.cond.43
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_25 Depth 5
                                        #             Child Loop BB6_27 Depth 6
                                        #           Child Loop BB6_34 Depth 5
                                        #             Child Loop BB6_36 Depth 6
	movl	-196(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_44
# BB#23:                                # %for.body.46
                                        #   in Loop: Header=BB6_22 Depth=4
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	cmpl	$0, -212(%rbp)
	je	.LBB6_33
# BB#24:                                # %if.then.48
                                        #   in Loop: Header=BB6_22 Depth=4
	movl	$0, -200(%rbp)
.LBB6_25:                               # %for.cond.49
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_20 Depth=3
                                        #         Parent Loop BB6_22 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_27 Depth 6
	movl	-200(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB6_32
# BB#26:                                # %for.body.52
                                        #   in Loop: Header=BB6_25 Depth=5
	movl	-208(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rcx
	movl	-208(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	addq	-192(%rbp,%rdx,8), %rcx
	movq	%rcx, -192(%rbp,%rdx,8)
	movl	$0, -204(%rbp)
.LBB6_27:                               # %for.cond.61
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_20 Depth=3
                                        #         Parent Loop BB6_22 Depth=4
                                        #           Parent Loop BB6_25 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-204(%rbp), %eax
	movl	-208(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_30
# BB#28:                                # %for.body.65
                                        #   in Loop: Header=BB6_27 Depth=6
	movslq	-204(%rbp), %rax
	movq	-144(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	imulq	-296(%rbp), %rax
	movslq	-204(%rbp), %rcx
	addq	-192(%rbp,%rcx,8), %rax
	movq	%rax, -192(%rbp,%rcx,8)
# BB#29:                                # %for.inc.73
                                        #   in Loop: Header=BB6_27 Depth=6
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_27
.LBB6_30:                               # %for.end.75
                                        #   in Loop: Header=BB6_25 Depth=5
	movl	-56(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#31:                                # %for.inc.77
                                        #   in Loop: Header=BB6_25 Depth=5
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB6_25
.LBB6_32:                               # %for.end.79
                                        #   in Loop: Header=BB6_22 Depth=4
	jmp	.LBB6_42
.LBB6_33:                               # %if.else.80
                                        #   in Loop: Header=BB6_22 Depth=4
	movl	$0, -200(%rbp)
.LBB6_34:                               # %for.cond.81
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_20 Depth=3
                                        #         Parent Loop BB6_22 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_36 Depth 6
	movl	-200(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB6_41
# BB#35:                                # %for.body.85
                                        #   in Loop: Header=BB6_34 Depth=5
	movl	$0, -204(%rbp)
.LBB6_36:                               # %for.cond.86
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_20 Depth=3
                                        #         Parent Loop BB6_22 Depth=4
                                        #           Parent Loop BB6_34 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB6_39
# BB#37:                                # %for.body.89
                                        #   in Loop: Header=BB6_36 Depth=6
	movslq	-204(%rbp), %rax
	movq	-144(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movslq	-204(%rbp), %rcx
	addq	-192(%rbp,%rcx,8), %rax
	movq	%rax, -192(%rbp,%rcx,8)
# BB#38:                                # %for.inc.96
                                        #   in Loop: Header=BB6_36 Depth=6
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_36
.LBB6_39:                               # %for.end.98
                                        #   in Loop: Header=BB6_34 Depth=5
	movl	-56(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#40:                                # %for.inc.102
                                        #   in Loop: Header=BB6_34 Depth=5
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB6_34
.LBB6_41:                               # %for.end.104
                                        #   in Loop: Header=BB6_22 Depth=4
	jmp	.LBB6_42
.LBB6_42:                               # %if.end.105
                                        #   in Loop: Header=BB6_22 Depth=4
	movl	-52(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
# BB#43:                                # %for.inc.108
                                        #   in Loop: Header=BB6_22 Depth=4
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_22
.LBB6_44:                               # %for.end.110
                                        #   in Loop: Header=BB6_20 Depth=3
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-248(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_46
# BB#45:                                # %if.then.117
                                        #   in Loop: Header=BB6_20 Depth=3
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	-276(%rbp), %eax
	movl	%eax, -276(%rbp)
	cvtsi2sdl	-276(%rbp), %xmm0
	cvtsi2sdl	-280(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB6_46:                               # %if.end.125
                                        #   in Loop: Header=BB6_20 Depth=3
	jmp	.LBB6_47
.LBB6_47:                               # %for.inc.126
                                        #   in Loop: Header=BB6_20 Depth=3
	movq	-288(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -288(%rbp)
	jmp	.LBB6_20
.LBB6_48:                               # %for.end.128
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpq	$0, -248(%rbp)
	jbe	.LBB6_63
# BB#49:                                # %if.then.131
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpl	$0, -212(%rbp)
	je	.LBB6_57
# BB#50:                                # %if.then.133
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-208(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp,%rcx,8), %rcx
	movq	%rcx, -304(%rbp)
	movq	-304(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	-248(%rbp)
	movl	-208(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	%rax, -192(%rbp,%rcx,8)
	cmpq	$0, %rax
	je	.LBB6_56
# BB#51:                                # %if.then.143
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	$0, -204(%rbp)
.LBB6_52:                               # %for.cond.144
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	movl	-208(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_55
# BB#53:                                # %for.body.148
                                        #   in Loop: Header=BB6_52 Depth=3
	movq	-304(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-192(%rbp,%rcx,8), %rdx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	divq	%rdi
	movq	%rax, -192(%rbp,%rcx,8)
# BB#54:                                # %for.inc.152
                                        #   in Loop: Header=BB6_52 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_52
.LBB6_55:                               # %for.end.154
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_56
.LBB6_56:                               # %if.end.155
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_62
.LBB6_57:                               # %if.else.156
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	$0, -204(%rbp)
.LBB6_58:                               # %for.cond.157
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB6_61
# BB#59:                                # %for.body.160
                                        #   in Loop: Header=BB6_58 Depth=3
	movq	-248(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-192(%rbp,%rcx,8), %rdx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	divq	%rdi
	movq	%rax, -192(%rbp,%rcx,8)
# BB#60:                                # %for.inc.164
                                        #   in Loop: Header=BB6_58 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_58
.LBB6_61:                               # %for.end.166
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_62
.LBB6_62:                               # %if.end.167
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_63
.LBB6_63:                               # %if.end.168
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB6_77
# BB#64:                                # %if.then.170
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	-152(%rbp), %rax
	movl	-220(%rbp), %ecx
	subl	-256(%rbp), %ecx
	imull	-268(%rbp), %ecx
	movl	-216(%rbp), %edx
	subl	-252(%rbp), %edx
	addl	%edx, %ecx
	imull	-208(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -136(%rbp)
	movl	$0, -236(%rbp)
.LBB6_65:                               # %for.cond.178
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_67 Depth 4
                                        #           Child Loop BB6_69 Depth 5
	movl	-236(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jge	.LBB6_76
# BB#66:                                # %for.body.181
                                        #   in Loop: Header=BB6_65 Depth=3
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -232(%rbp)
.LBB6_67:                               # %for.cond.182
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_65 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_69 Depth 5
	movl	-232(%rbp), %eax
	cmpl	-224(%rbp), %eax
	jge	.LBB6_74
# BB#68:                                # %for.body.185
                                        #   in Loop: Header=BB6_67 Depth=4
	movl	$0, -204(%rbp)
.LBB6_69:                               # %for.cond.186
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_65 Depth=3
                                        #         Parent Loop BB6_67 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB6_72
# BB#70:                                # %for.body.189
                                        #   in Loop: Header=BB6_69 Depth=5
	movslq	-204(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rax
	movb	%al, %cl
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -160(%rbp)
	movb	%cl, (%rax)
# BB#71:                                # %for.inc.193
                                        #   in Loop: Header=BB6_69 Depth=5
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_69
.LBB6_72:                               # %for.end.195
                                        #   in Loop: Header=BB6_67 Depth=4
	jmp	.LBB6_73
.LBB6_73:                               # %for.inc.196
                                        #   in Loop: Header=BB6_67 Depth=4
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB6_67
.LBB6_74:                               # %for.end.198
                                        #   in Loop: Header=BB6_65 Depth=3
	movl	-268(%rbp), %eax
	imull	-208(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#75:                                # %for.inc.202
                                        #   in Loop: Header=BB6_65 Depth=3
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB6_65
.LBB6_76:                               # %for.end.204
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_94
.LBB6_77:                               # %if.else.205
                                        #   in Loop: Header=BB6_8 Depth=2
	leaq	-120(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %ecx
	movl	-224(%rbp), %r8d
	movl	-228(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -288(%rbp)
.LBB6_78:                               # %for.cond.207
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_80 Depth 4
                                        #           Child Loop BB6_82 Depth 5
                                        #             Child Loop BB6_84 Depth 6
	cmpq	$0, -288(%rbp)
	je	.LBB6_93
# BB#79:                                # %for.body.210
                                        #   in Loop: Header=BB6_78 Depth=3
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -196(%rbp)
.LBB6_80:                               # %for.cond.212
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_78 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_82 Depth 5
                                        #             Child Loop BB6_84 Depth 6
	movl	-196(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_91
# BB#81:                                # %for.body.216
                                        #   in Loop: Header=BB6_80 Depth=4
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -200(%rbp)
.LBB6_82:                               # %for.cond.217
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_78 Depth=3
                                        #         Parent Loop BB6_80 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB6_84 Depth 6
	movl	-200(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB6_89
# BB#83:                                # %for.body.221
                                        #   in Loop: Header=BB6_82 Depth=5
	movl	$0, -204(%rbp)
.LBB6_84:                               # %for.cond.222
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_78 Depth=3
                                        #         Parent Loop BB6_80 Depth=4
                                        #           Parent Loop BB6_82 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB6_87
# BB#85:                                # %for.body.225
                                        #   in Loop: Header=BB6_84 Depth=6
	movslq	-204(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rax
	movb	%al, %cl
	movslq	-204(%rbp), %rax
	movq	-152(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#86:                                # %for.inc.231
                                        #   in Loop: Header=BB6_84 Depth=6
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_84
.LBB6_87:                               # %for.end.233
                                        #   in Loop: Header=BB6_82 Depth=5
	movl	-104(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
# BB#88:                                # %for.inc.237
                                        #   in Loop: Header=BB6_82 Depth=5
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB6_82
.LBB6_89:                               # %for.end.239
                                        #   in Loop: Header=BB6_80 Depth=4
	movl	-100(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#90:                                # %for.inc.243
                                        #   in Loop: Header=BB6_80 Depth=4
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_80
.LBB6_91:                               # %for.end.245
                                        #   in Loop: Header=BB6_78 Depth=3
	movl	-88(%rbp), %eax
	imull	-84(%rbp), %eax
	addl	-276(%rbp), %eax
	movl	%eax, -276(%rbp)
	cvtsi2sdl	-276(%rbp), %xmm0
	cvtsi2sdl	-280(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -352(%rbp)        # 4-byte Spill
# BB#92:                                # %for.inc.254
                                        #   in Loop: Header=BB6_78 Depth=3
	movq	-288(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -288(%rbp)
	jmp	.LBB6_78
.LBB6_93:                               # %for.end.256
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_94
.LBB6_94:                               # %if.end.257
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_95
.LBB6_95:                               # %for.inc.258
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-12(%rbp), %eax
	movl	-216(%rbp), %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-12(%rbp)
	movl	-356(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-216(%rbp), %ecx
	movl	%ecx, -216(%rbp)
	jmp	.LBB6_8
.LBB6_96:                               # %for.end.262
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_97
.LBB6_97:                               # %for.inc.263
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-16(%rbp), %eax
	movl	-220(%rbp), %ecx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-16(%rbp)
	movl	-360(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-220(%rbp), %ecx
	movl	%ecx, -220(%rbp)
	jmp	.LBB6_6
.LBB6_98:                               # %for.end.267
	cmpq	$0, -24(%rbp)
	je	.LBB6_100
# BB#99:                                # %if.then.269
	movq	-24(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-268(%rbp), %eax
	imull	-208(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-152(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_101
.LBB6_100:                              # %if.else.271
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-252(%rbp), %esi
	movl	-256(%rbp), %edx
	movl	-268(%rbp), %ecx
	movl	-272(%rbp), %r8d
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB6_101:                              # %if.end.277
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pixelize_large, .Lfunc_end6-pixelize_large
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pixelize_small,@function
pixelize_small:                         # @pixelize_small
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
	subq	$224, %rsp
	leaq	-132(%rbp), %rax
	leaq	-136(%rbp), %r9
	leaq	-148(%rbp), %r10
	leaq	-152(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movq	%rax, %rsi
	movq	%r9, %rdx
	movq	%r10, %rcx
	movq	%r11, %r8
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_17
.LBB7_2:                                # %if.end
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movl	-132(%rbp), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-136(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movq	-8(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$0, -156(%rbp)
	movl	-140(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	-144(%rbp), %ecx
	subl	-136(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -160(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -124(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -128(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	imull	-12(%rbp), %eax
	movl	%eax, area+16
	movl	-24(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	imull	-16(%rbp), %eax
	movl	%eax, area+20
	movslq	-124(%rbp), %r10
	movslq	area+16, %r11
	imulq	%r11, %r10
	movslq	area+20, %r11
	imulq	%r11, %r10
	movq	%r10, %rdi
	callq	g_malloc_n
	movq	%rax, area+24
	movl	-136(%rbp), %ecx
	movl	%ecx, area+4
.LBB7_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	movl	area+4, %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB7_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	area+20, %eax
	movl	area+4, %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	area+20
	movl	-172(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, area+12
	movl	area+12, %ecx
	movl	-144(%rbp), %edx
	subl	area+4, %edx
	cmpl	%edx, %ecx
	jge	.LBB7_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	area+12, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-144(%rbp), %eax
	subl	area+4, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB7_7:                                # %cond.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, area+12
	movl	-132(%rbp), %eax
	movl	%eax, area
.LBB7_8:                                # %for.cond.24
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	area, %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB7_14
# BB#9:                                 # %for.body.27
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	area+16, %eax
	movl	area, %ecx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	area+16
	movl	-180(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, area+8
	movl	area+8, %ecx
	movl	-140(%rbp), %edx
	subl	area, %edx
	cmpl	%edx, %ecx
	jge	.LBB7_11
# BB#10:                                # %cond.true.33
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	area+8, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB7_12
.LBB7_11:                               # %cond.false.34
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	-140(%rbp), %eax
	subl	area, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB7_12:                               # %cond.end.36
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	leaq	-72(%rbp), %rdi
	movl	%eax, area+8
	movq	area+24, %rsi
	movl	area, %edx
	movl	area+4, %ecx
	movl	area+8, %r8d
	movl	area+12, %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	callq	pixelize_sub
	leaq	-120(%rbp), %rdi
	movq	area+24, %rsi
	movl	area, %edx
	movl	area+4, %ecx
	movl	area+8, %r8d
	movl	area+12, %r9d
	callq	gimp_pixel_rgn_set_rect
	movl	area+8, %eax
	imull	area+12, %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-160(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -188(%rbp)        # 4-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	area+16, %eax
	movl	area, %ecx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	area+16
	movl	-192(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	area, %ecx
	movl	%ecx, area
	jmp	.LBB7_8
.LBB7_14:                               # %for.end
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_15
.LBB7_15:                               # %for.inc.47
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	area+20, %eax
	movl	area+4, %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	area+20
	movl	-196(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	area+4, %ecx
	movl	%ecx, area+4
	jmp	.LBB7_3
.LBB7_16:                               # %for.end.51
	movq	area+24, %rdi
	callq	g_free
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB7_17:                               # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pixelize_small, .Lfunc_end7-pixelize_small
	.cfi_endproc

	.align	16, 0x90
	.type	pixelize_sub,@function
pixelize_sub:                           # @pixelize_sub
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	area+8, %ecx
	imull	-12(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	area+4, %ecx
	movl	%ecx, -56(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #       Child Loop BB8_11 Depth 3
                                        #       Child Loop BB8_15 Depth 3
                                        #         Child Loop BB8_18 Depth 4
                                        #           Child Loop BB8_20 Depth 5
                                        #         Child Loop BB8_27 Depth 4
                                        #           Child Loop BB8_29 Depth 5
                                        #       Child Loop BB8_41 Depth 3
                                        #       Child Loop BB8_47 Depth 3
                                        #       Child Loop BB8_53 Depth 3
                                        #         Child Loop BB8_55 Depth 4
                                        #           Child Loop BB8_57 Depth 5
	movl	-56(%rbp), %eax
	movl	area+4, %ecx
	addl	area+12, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_68
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-8(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-8(%rbp)
	movl	-124(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movl	area+4, %edx
	addl	area+12, %edx
	subl	-56(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB8_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	area+4, %eax
	addl	area+12, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB8_5:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	area, %eax
	movl	%eax, -52(%rbp)
.LBB8_6:                                # %for.cond.6
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_11 Depth 3
                                        #       Child Loop BB8_15 Depth 3
                                        #         Child Loop BB8_18 Depth 4
                                        #           Child Loop BB8_20 Depth 5
                                        #         Child Loop BB8_27 Depth 4
                                        #           Child Loop BB8_29 Depth 5
                                        #       Child Loop BB8_41 Depth 3
                                        #       Child Loop BB8_47 Depth 3
                                        #       Child Loop BB8_53 Depth 3
                                        #         Child Loop BB8_55 Depth 4
                                        #           Child Loop BB8_57 Depth 5
	movl	-52(%rbp), %eax
	movl	area, %ecx
	addl	area+8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_66
# BB#7:                                 # %for.body.9
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-4(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-4(%rbp)
	movl	-132(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %ecx
	movl	area, %edx
	addl	area+8, %edx
	subl	-52(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB8_9
# BB#8:                                 # %cond.true.15
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false.16
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	area, %eax
	addl	area+8, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB8_10:                               # %cond.end.19
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	$0, -100(%rbp)
.LBB8_11:                               # %for.cond.21
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-100(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_14
# BB#12:                                # %for.body.23
                                        #   in Loop: Header=BB8_11 Depth=3
	movslq	-100(%rbp), %rax
	movq	$0, -48(%rbp,%rax,8)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB8_11 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_11
.LBB8_14:                               # %for.end
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$0, -96(%rbp)
	movq	area+24, %rax
	movl	-56(%rbp), %ecx
	subl	area+4, %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-52(%rbp), %ecx
	subl	area, %ecx
	imull	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB8_15:                               # %for.cond.30
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_18 Depth 4
                                        #           Child Loop BB8_20 Depth 5
                                        #         Child Loop BB8_27 Depth 4
                                        #           Child Loop BB8_29 Depth 5
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB8_37
# BB#16:                                # %for.body.32
                                        #   in Loop: Header=BB8_15 Depth=3
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB8_26
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB8_15 Depth=3
	movl	$0, -88(%rbp)
.LBB8_18:                               # %for.cond.33
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB8_20 Depth 5
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB8_25
# BB#19:                                # %for.body.35
                                        #   in Loop: Header=BB8_18 Depth=4
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	addq	-48(%rbp,%rdx,8), %rcx
	movq	%rcx, -48(%rbp,%rdx,8)
	movl	$0, -100(%rbp)
.LBB8_20:                               # %for.cond.43
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        #         Parent Loop BB8_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-100(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_23
# BB#21:                                # %for.body.47
                                        #   in Loop: Header=BB8_20 Depth=5
	movslq	-100(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	imulq	-112(%rbp), %rax
	movslq	-100(%rbp), %rcx
	addq	-48(%rbp,%rcx,8), %rax
	movq	%rax, -48(%rbp,%rcx,8)
# BB#22:                                # %for.inc.55
                                        #   in Loop: Header=BB8_20 Depth=5
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_20
.LBB8_23:                               # %for.end.57
                                        #   in Loop: Header=BB8_18 Depth=4
	movl	-12(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#24:                                # %for.inc.60
                                        #   in Loop: Header=BB8_18 Depth=4
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB8_18
.LBB8_25:                               # %for.end.62
                                        #   in Loop: Header=BB8_15 Depth=3
	jmp	.LBB8_35
.LBB8_26:                               # %if.else
                                        #   in Loop: Header=BB8_15 Depth=3
	movl	$0, -88(%rbp)
.LBB8_27:                               # %for.cond.63
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB8_29 Depth 5
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB8_34
# BB#28:                                # %for.body.66
                                        #   in Loop: Header=BB8_27 Depth=4
	movl	$0, -100(%rbp)
.LBB8_29:                               # %for.cond.67
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        #         Parent Loop BB8_27 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-100(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_32
# BB#30:                                # %for.body.70
                                        #   in Loop: Header=BB8_29 Depth=5
	movslq	-100(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movslq	-100(%rbp), %rcx
	addq	-48(%rbp,%rcx,8), %rax
	movq	%rax, -48(%rbp,%rcx,8)
# BB#31:                                # %for.inc.77
                                        #   in Loop: Header=BB8_29 Depth=5
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_29
.LBB8_32:                               # %for.end.79
                                        #   in Loop: Header=BB8_27 Depth=4
	movl	-12(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#33:                                # %for.inc.82
                                        #   in Loop: Header=BB8_27 Depth=4
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB8_27
.LBB8_34:                               # %for.end.84
                                        #   in Loop: Header=BB8_15 Depth=3
	jmp	.LBB8_35
.LBB8_35:                               # %if.end
                                        #   in Loop: Header=BB8_15 Depth=3
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#36:                                # %for.inc.87
                                        #   in Loop: Header=BB8_15 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB8_15
.LBB8_37:                               # %for.end.89
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jle	.LBB8_52
# BB#38:                                # %if.then.94
                                        #   in Loop: Header=BB8_6 Depth=2
	cmpl	$0, -16(%rbp)
	je	.LBB8_46
# BB#39:                                # %if.then.96
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp,%rcx,8), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rax
	movslq	-96(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	cmpq	$0, %rax
	je	.LBB8_45
# BB#40:                                # %if.then.106
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$0, -100(%rbp)
.LBB8_41:                               # %for.cond.107
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-100(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_44
# BB#42:                                # %for.body.111
                                        #   in Loop: Header=BB8_41 Depth=3
	movq	-120(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	divq	%rdi
	movq	%rax, -48(%rbp,%rcx,8)
# BB#43:                                # %for.inc.115
                                        #   in Loop: Header=BB8_41 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_41
.LBB8_44:                               # %for.end.117
                                        #   in Loop: Header=BB8_6 Depth=2
	jmp	.LBB8_45
.LBB8_45:                               # %if.end.118
                                        #   in Loop: Header=BB8_6 Depth=2
	jmp	.LBB8_51
.LBB8_46:                               # %if.else.119
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	$0, -100(%rbp)
.LBB8_47:                               # %for.cond.120
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-100(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_50
# BB#48:                                # %for.body.123
                                        #   in Loop: Header=BB8_47 Depth=3
	movslq	-96(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	divq	%rdi
	movq	%rax, -48(%rbp,%rcx,8)
# BB#49:                                # %for.inc.128
                                        #   in Loop: Header=BB8_47 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_47
.LBB8_50:                               # %for.end.130
                                        #   in Loop: Header=BB8_6 Depth=2
	jmp	.LBB8_51
.LBB8_51:                               # %if.end.131
                                        #   in Loop: Header=BB8_6 Depth=2
	jmp	.LBB8_52
.LBB8_52:                               # %if.end.132
                                        #   in Loop: Header=BB8_6 Depth=2
	movq	area+24, %rax
	movl	-56(%rbp), %ecx
	subl	area+4, %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-52(%rbp), %ecx
	subl	area, %ecx
	imull	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB8_53:                               # %for.cond.141
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_55 Depth 4
                                        #           Child Loop BB8_57 Depth 5
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB8_64
# BB#54:                                # %for.body.144
                                        #   in Loop: Header=BB8_53 Depth=3
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -88(%rbp)
.LBB8_55:                               # %for.cond.145
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_53 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB8_57 Depth 5
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB8_62
# BB#56:                                # %for.body.148
                                        #   in Loop: Header=BB8_55 Depth=4
	movl	$0, -100(%rbp)
.LBB8_57:                               # %for.cond.149
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        #       Parent Loop BB8_53 Depth=3
                                        #         Parent Loop BB8_55 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-100(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_60
# BB#58:                                # %for.body.152
                                        #   in Loop: Header=BB8_57 Depth=5
	movslq	-100(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rax
	movb	%al, %cl
	movslq	-100(%rbp), %rax
	movq	-80(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#59:                                # %for.inc.158
                                        #   in Loop: Header=BB8_57 Depth=5
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_57
.LBB8_60:                               # %for.end.160
                                        #   in Loop: Header=BB8_55 Depth=4
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-12(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#61:                                # %for.inc.164
                                        #   in Loop: Header=BB8_55 Depth=4
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB8_55
.LBB8_62:                               # %for.end.166
                                        #   in Loop: Header=BB8_53 Depth=3
	movl	-92(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#63:                                # %for.inc.169
                                        #   in Loop: Header=BB8_53 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB8_53
.LBB8_64:                               # %for.end.171
                                        #   in Loop: Header=BB8_6 Depth=2
	jmp	.LBB8_65
.LBB8_65:                               # %for.inc.172
                                        #   in Loop: Header=BB8_6 Depth=2
	movl	-4(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-4(%rbp)
	movl	-156(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB8_6
.LBB8_66:                               # %for.end.176
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_67
.LBB8_67:                               # %for.inc.177
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-8(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-8(%rbp)
	movl	-160(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB8_1
.LBB8_68:                               # %for.end.181
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pixelize_sub, .Lfunc_end8-pixelize_sub
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

	.type	query.pixelize_args,@object # @query.pixelize_args
	.align	16
query.pixelize_args:
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
	.size	query.pixelize_args, 96

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
	.asciz	"pixel-width"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Pixel width (the decrease in resolution)"
	.size	.L.str.7, 41

	.type	query.pixelize2_args,@object # @query.pixelize2_args
	.section	.rodata,"a",@progbits
	.align	16
query.pixelize2_args:
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
	.quad	.L.str.8
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.size	query.pixelize2_args, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Pixel width (the decrease in horizontal resolution)"
	.size	.L.str.8, 52

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pixel-height"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Pixel height (the decrease in vertical resolution)"
	.size	.L.str.10, 51

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"plug-in-pixelize"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Simplify image into an array of solid-colored squares"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Pixelize the contents of the specified drawable with specified pixelizing width."
	.size	.L.str.13, 81

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Spencer Kimball & Peter Mattis, Tracy Scott, (ported to 1.0 by) Eiichi Takamori"
	.size	.L.str.14, 80

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Spencer Kimball & Peter Mattis, Tracy Scott"
	.size	.L.str.15, 44

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1995"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Pixelize..."
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Image>/Filters/Blur"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plug-in-pixelize2"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Pixelize the contents of the specified drawable"
	.size	.L.str.21, 48

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Pixelize the contents of the specified drawable with speficied pixelizing width."
	.size	.L.str.22, 81

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"2001"
	.size	.L.str.23, 5

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	pvals,@object           # @pvals
	.data
	.align	4
pvals:
	.long	10                      # 0xa
	.long	10                      # 0xa
	.size	pvals, 8

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"Pixelizing"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pixelize"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Pixelize"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-pixelize"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-cancel"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-ok"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"invalidated"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%a"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Pixel _width:"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Pixel _height:"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"refval-changed"
	.size	.L.str.38, 15

	.type	area,@object            # @area
	.local	area
	.comm	area,32,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
