	.text
	.file	"gradient-flare.bc"
	.align	16, 0x90
	.type	plugin_query,@function
plugin_query:                           # @plugin_query
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
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r8
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.34, %rax
	movabsq	$.L.str.35, %rdx
	movl	$1, %r10d
	movl	$14, %r11d
	xorl	%ebx, %ebx
	movabsq	$plugin_query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movabsq	$.L.str.28, %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r13
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$14, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.36, %rsi
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
	.size	plugin_query, .Lfunc_end0-plugin_query
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_run,@function
plugin_run:                             # @plugin_run
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
	subq	$192, %rsp
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
	movabsq	$.L.str.37, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.37, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$plugin_run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, plugin_run.values
	movl	-48(%rbp), %edx
	movl	%edx, plugin_run.values+8
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movl	%edx, image_ID
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, dinfo
	movq	drawable, %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movabsq	$dinfo, %rcx
	movq	%rcx, %rsi
	addq	$8, %rsi
	movq	%rcx, %r8
	addq	$12, %r8
	movq	%rcx, %r9
	addq	$16, %r9
	addq	$20, %rcx
	movl	%eax, dinfo+4
	movq	drawable, %r10
	movl	(%r10), %edi
	movq	%r8, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	gimp_drawable_mask_bounds
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	%eax, dinfo+24
	callq	gimp_tile_height
	movl	%eax, dinfo+28
	callq	gradient_init
	movabsq	$.L.str.39, %rdi
	callq	gimp_gimprc_query
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, gflare_path
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movabsq	$.L.str.40, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.41, %rdi
	movq	%rax, -64(%rbp)
	callq	gimp_config_build_data_path
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_strescape
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.39, %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_message
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB1_5:                                # %if.end
	callq	gflares_list_load_all
	movq	drawable(%rip), %rax
	movl	4(%rax), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	-152(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$2, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_29
.LBB1_29:                               # %if.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_30
.LBB1_30:                               # %if.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.29, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	dlg_run
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.27
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_28
.LBB1_8:                                # %if.end.28
	jmp	.LBB1_17
.LBB1_9:                                # %sw.bb.29
	cmpl	$14, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.31
	movl	$1, -48(%rbp)
	jmp	.LBB1_14
.LBB1_11:                               # %if.else.32
	movabsq	$pvals, %rax
	addq	$64, %rax
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rsi
	movq	%rax, %rdi
	callq	gflare_name_copy
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	168(%rax), %edx
	movl	%edx, pvals
	movq	-24(%rbp), %rax
	movl	208(%rax), %edx
	movl	%edx, pvals+4
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+8
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+16
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+24
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+32
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+40
	movq	-24(%rbp), %rax
	movl	448(%rax), %edx
	movl	%edx, pvals+48
	movq	-24(%rbp), %rax
	movl	488(%rax), %edx
	movl	%edx, pvals+52
	movq	-24(%rbp), %rax
	movsd	528(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+56
	ucomisd	pvals+8, %xmm0
	jb	.LBB1_13
# BB#12:                                # %if.then.66
	movl	$1, -48(%rbp)
.LBB1_13:                               # %if.end.67
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.68
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.69
	movabsq	$.L.str.29, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_27
# BB#18:                                # %if.then.73
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#19:                                # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_25
.LBB1_20:                               # %if.then.80
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	plugin_do
	cmpl	$1, -44(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.85
	callq	gimp_displays_flush
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.87
	cmpl	$0, -44(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.90
	movabsq	$.L.str.29, %rdi
	movabsq	$pvals, %rax
	movl	$320, %edx              # imm = 0x140
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.92
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.93
	movabsq	$.L.str.44, %rdi
	movl	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, plugin_run.values+40
	callq	gettext
	movq	%rax, plugin_run.values+48
.LBB1_26:                               # %if.end.95
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.96
	movl	-48(%rbp), %eax
	movl	%eax, plugin_run.values+8
	callq	gradient_free
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_28:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plugin_run, .Lfunc_end1-plugin_run
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
	.type	gradient_init,@function
gradient_init:                          # @gradient_init
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
	movq	$0, gradient_cache_head
	movl	$0, gradient_cache_count
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gradient_init, .Lfunc_end3-gradient_init
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
.Lfunc_end4:
	.size	g_message, .Lfunc_end4-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_load_all,@function
gflares_list_load_all:                  # @gflares_list_load_all
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
	callq	gflares_list_free_all
	movl	$16, %esi
	movabsq	$gflares_list_load_one, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	gflare_path, %rdi
	callq	gimp_datafiles_read_directories
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gflares_list_load_all, .Lfunc_end5-gflares_list_load_all
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_run,@function
dlg_run:                                # @dlg_run
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
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp26:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.62, %rdi
	movl	$1, %esi
	movl	$0, -68(%rbp)
	callq	gimp_ui_init
	movl	$1, %esi
	movl	%esi, %edi
	movl	$120, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	g_malloc0_n
	movq	%rax, dlg
	movq	dlg, %rax
	movl	$1, (%rax)
	movq	dlg, %rax
	movl	$1, 64(%rax)
	callq	gradient_menu_init
	callq	dlg_setup_gflare
# BB#1:                                 # %do.body
	cmpq	$0, gflares_list
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$2348, %edx             # imm = 0x92C
	movabsq	$.L__func__.dlg_run, %rcx
	movabsq	$.L.str.64, %r8
	callq	g_assertion_message_expr
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	movq	dlg, %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$2349, %edx             # imm = 0x92D
	movabsq	$.L__func__.dlg_run, %rcx
	movabsq	$.L.str.65, %r8
	callq	g_assertion_message_expr
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	jmp	.LBB6_11
.LBB6_11:                               # %do.body.7
	movq	dlg, %rax
	movq	8(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB6_13
# BB#12:                                # %if.then.10
	jmp	.LBB6_14
.LBB6_13:                               # %if.else.11
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$2350, %edx             # imm = 0x92E
	movabsq	$.L__func__.dlg_run, %rcx
	movabsq	$.L.str.66, %r8
	callq	g_assertion_message_expr
.LBB6_14:                               # %if.end.12
	jmp	.LBB6_15
.LBB6_15:                               # %do.end.13
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movabsq	$.L.str.67, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.29, %r9
	movabsq	$.L.str.68, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.69, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	dlg, %rdx
	movq	%rax, 16(%rdx)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movss	%xmm0, -144(%rbp)       # 4-byte Spill
	movss	-144(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-144(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-144(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
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
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$256, %ecx              # imm = 0x100
	movabsq	$dlg_preview_init_func, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movabsq	$dlg_preview_render_func, %r8
	movabsq	$dlg_preview_deinit_func, %rsi
	movl	%ecx, %edi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, %rcx
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	preview_new
	movq	dlg, %rcx
	movq	%rax, 24(%rcx)
	movq	dlg, %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$258, %esi              # imm = 0x102
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	dlg, %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.70, %rsi
	movabsq	$dlg_preview_realize, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	xorl	%r9d, %r9d
	movq	dlg, %rdx
	movq	24(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.71, %rsi
	movabsq	$dlg_preview_handle_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	dlg, %rdi
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	dlg_preview_calc_window
	movabsq	$.L.str.72, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	dlg, %rcx
	movl	64(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.73, %rsi
	movabsq	$dlg_update_preview_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	dlg, %r11
	addq	$64, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	dlg, %rcx
	movq	%rax, 72(%rcx)
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
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
	movq	dlg, %rdi
	movq	-64(%rbp), %rsi
	callq	dlg_make_page_settings
	movq	dlg, %rdi
	movq	-64(%rbp), %rsi
	callq	dlg_make_page_selector
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	dlg, %rax
	movl	$0, (%rax)
	callq	dlg_preview_update
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB6_17
# BB#16:                                # %if.then.70
	movabsq	$pvals, %rax
	addq	$64, %rax
	movq	dlg, %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	gflare_name_copy
	movl	$1, -68(%rbp)
.LBB6_17:                               # %if.end.73
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dlg_run, .Lfunc_end6-dlg_run
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_name_copy,@function
gflare_name_copy:                       # @gflare_name_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strncpy
	movq	-8(%rbp), %rdx
	movb	$0, 255(%rdx)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gflare_name_copy, .Lfunc_end7-gflare_name_copy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	plugin_do,@function
plugin_do:                              # @plugin_do
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$pvals, %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	gflares_list_lookup
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.181, %rdi
	movabsq	$pvals, %rax
	addq	$64, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB8_9
.LBB8_2:                                # %if.end
	movl	$7, %esi
	movq	-8(%rbp), %rdi
	cvtsi2sdl	pvals, %xmm0
	cvtsi2sdl	pvals+4, %xmm1
	movsd	pvals+8, %xmm2          # xmm2 = mem[0],zero
	movsd	pvals+16, %xmm3         # xmm3 = mem[0],zero
	movsd	pvals+24, %xmm4         # xmm4 = mem[0],zero
	movsd	pvals+32, %xmm5         # xmm5 = mem[0],zero
	movsd	pvals+40, %xmm6         # xmm6 = mem[0],zero
	callq	calc_init_params
.LBB8_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	calc_init_progress
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_3
.LBB8_5:                                # %while.end
	cmpl	$0, pvals+48
	je	.LBB8_7
# BB#6:                                 # %if.then.4
	callq	plugin_do_asupsample
	jmp	.LBB8_8
.LBB8_7:                                # %if.else
	callq	plugin_do_non_asupsample
.LBB8_8:                                # %if.end.5
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	calc_deinit
	movq	drawable, %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	dinfo+8, %esi
	movl	dinfo+12, %edx
	movl	dinfo+16, %r8d
	subl	dinfo+8, %r8d
	movl	dinfo+20, %r9d
	subl	dinfo+12, %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB8_9:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plugin_do, .Lfunc_end8-plugin_do
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_free,@function
gradient_free:                          # @gradient_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	callq	gradient_cache_flush
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gradient_free, .Lfunc_end9-gradient_free
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_free_all,@function
gflares_list_free_all:                  # @gflares_list_free_all
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
	movabsq	$gflare_free, %rax
	movq	gflares_list, %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	$0, gflares_list
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gflares_list_free_all, .Lfunc_end10-gflares_list_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_load_one,@function
gflares_list_load_one:                  # @gflares_list_load_one
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
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	callq	gflare_load
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gflares_list_insert
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gflares_list_load_one, .Lfunc_end11-gflares_list_load_one
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_free,@function
gflare_free:                            # @gflare_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gflare_free, %rsi
	movabsq	$.L.str.45, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_6
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB12_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gflare_free, .Lfunc_end12-gflare_free
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_load,@function
gflare_load:                            # @gflare_load
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gflare_load, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movabsq	$.L.str.47, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_7:                               # %if.end.6
	movl	$256, %esi              # imm = 0x100
	leaq	-304(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB13_9
# BB#8:                                 # %lor.lhs.false
	leaq	-304(%rbp), %rdi
	movl	$.L.str.49, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB13_10
.LBB13_9:                               # %if.then.12
	movabsq	$.L.str.50, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-32(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB13_15
.LBB13_10:                              # %if.end.16
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	callq	gflare_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_mode
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$40, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_mode
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$56, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_mode
	movq	-48(%rbp), %rax
	addq	$60, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$316, %rax              # imm = 0x13C
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$572, %rax              # imm = 0x23C
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$832, %rax              # imm = 0x340
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$840, %rax              # imm = 0x348
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$848, %rax              # imm = 0x350
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$856, %rax              # imm = 0x358
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$1112, %rax             # imm = 0x458
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$1368, %rax             # imm = 0x558
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$1624, %rax             # imm = 0x658
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$1632, %rax             # imm = 0x660
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$1640, %rax             # imm = 0x668
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$1648, %rax             # imm = 0x670
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_int
	movq	-48(%rbp), %rax
	addq	$1656, %rax             # imm = 0x678
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$1664, %rax             # imm = 0x680
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$1920, %rax             # imm = 0x780
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$2176, %rax             # imm = 0x880
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_gradient_name
	movq	-48(%rbp), %rax
	addq	$2432, %rax             # imm = 0x980
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$2448, %rax             # imm = 0x990
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$2440, %rax             # imm = 0x988
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_double
	movq	-48(%rbp), %rax
	addq	$2456, %rax             # imm = 0x998
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_shape
	movq	-48(%rbp), %rax
	addq	$2460, %rax             # imm = 0x99C
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_int
	movq	-48(%rbp), %rax
	addq	$2464, %rax             # imm = 0x9A0
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_read_int
	movq	-48(%rbp), %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB13_12
# BB#11:                                # %if.then.35
	callq	g_random_int
	movq	-48(%rbp), %rcx
	movl	%eax, 2464(%rcx)
.LBB13_12:                              # %if.end.38
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movq	-40(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB13_14
# BB#13:                                # %if.then.43
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_14:                              # %if.end.45
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gflare_load, .Lfunc_end13-gflare_load
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_insert,@function
gflares_list_insert:                    # @gflares_list_insert
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
	subq	$16, %rsp
	movabsq	$gflare_compare, %rax
	movq	%rdi, -8(%rbp)
	movl	num_gflares, %ecx
	addl	$1, %ecx
	movl	%ecx, num_gflares
	movq	gflares_list, %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	g_list_insert_sorted
	movq	%rax, gflares_list
	movq	-8(%rbp), %rdi
	callq	gflares_list_index
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gflares_list_insert, .Lfunc_end14-gflares_list_insert
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_new,@function
gflare_new:                             # @gflare_new
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2472, %eax             # imm = 0x9A8
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gflare_new, .Lfunc_end16-gflare_new
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_read_double,@function
gflare_read_double:                     # @gflare_read_double
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	movabsq	$.L.str.52, %rsi
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	cmpl	$1, %eax
	jne	.LBB17_4
# BB#3:                                 # %if.then.1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-48(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-8(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB17_5:                               # %if.end.5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gflare_read_double, .Lfunc_end17-gflare_read_double
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_read_mode,@function
gflare_read_mode:                       # @gflare_read_mode
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
	subq	$1056, %rsp             # imm = 0x420
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_11
.LBB18_2:                               # %if.end
	movabsq	$.L.str.53, %rsi
	leaq	-1040(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	cmpl	$1, %eax
	jne	.LBB18_10
# BB#3:                                 # %if.then.2
	movl	$0, -1044(%rbp)
.LBB18_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -1044(%rbp)
	jge	.LBB18_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB18_4 Depth=1
	leaq	-1040(%rbp), %rdi
	movslq	-1044(%rbp), %rax
	movq	gflare_modes(,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_7
# BB#6:                                 # %if.then.7
	movl	-1044(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB18_11
.LBB18_7:                               # %if.end.8
                                        #   in Loop: Header=BB18_4 Depth=1
	jmp	.LBB18_8
.LBB18_8:                               # %for.inc
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB18_4
.LBB18_9:                               # %for.end
	jmp	.LBB18_10
.LBB18_10:                              # %if.end.9
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB18_11:                              # %return
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gflare_read_mode, .Lfunc_end18-gflare_read_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_read_gradient_name,@function
gflare_read_gradient_name:              # @gflare_read_gradient_name
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
	subq	$2064, %rsp             # imm = 0x810
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_5
.LBB19_2:                               # %if.end
	movabsq	$.L.str.53, %rsi
	leaq	-1040(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	cmpl	$1, %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then.2
	leaq	-1040(%rbp), %rsi
	leaq	-2064(%rbp), %rdi
	callq	gradient_name_decode
	leaq	-2064(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gradient_name_copy
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB19_5:                               # %if.end.7
	addq	$2064, %rsp             # imm = 0x810
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gflare_read_gradient_name, .Lfunc_end19-gflare_read_gradient_name
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_read_int,@function
gflare_read_int:                        # @gflare_read_int
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_4
.LBB20_2:                               # %if.end
	movabsq	$.L.str.59, %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_fscanf
	cmpl	$1, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB20_4:                               # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gflare_read_int, .Lfunc_end20-gflare_read_int
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_read_shape,@function
gflare_read_shape:                      # @gflare_read_shape
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
	subq	$1056, %rsp             # imm = 0x420
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_11
.LBB21_2:                               # %if.end
	movabsq	$.L.str.53, %rsi
	leaq	-1040(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	cmpl	$1, %eax
	jne	.LBB21_10
# BB#3:                                 # %if.then.2
	movl	$0, -1044(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -1044(%rbp)
	jge	.LBB21_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	leaq	-1040(%rbp), %rdi
	movslq	-1044(%rbp), %rax
	movq	gflare_shapes(,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB21_7
# BB#6:                                 # %if.then.7
	movl	-1044(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB21_11
.LBB21_7:                               # %if.end.8
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_8
.LBB21_8:                               # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB21_4
.LBB21_9:                               # %for.end
	jmp	.LBB21_10
.LBB21_10:                              # %if.end.9
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB21_11:                              # %return
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gflare_read_shape, .Lfunc_end21-gflare_read_shape
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_name_decode,@function
gradient_name_decode:                   # @gradient_name_decode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$255, -20(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB22_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB22_3:                               # %land.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_4
	jmp	.LBB22_11
.LBB22_4:                               # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB22_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_9
# BB#6:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_9
# BB#7:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movabsq	$.L.str.58, %rsi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	-24(%rbp), %ecx
	movb	%cl, %r8b
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%r8b, (%rdx)
	movq	-16(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB22_10
.LBB22_9:                               # %if.else
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dl, (%rax)
.LBB22_10:                              # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_1
.LBB22_11:                              # %while.end
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gradient_name_decode, .Lfunc_end22-gradient_name_decode
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_name_copy,@function
gradient_name_copy:                     # @gradient_name_copy
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
	subq	$32, %rsp
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strncpy
	movq	-8(%rbp), %rdx
	movb	$0, 255(%rdx)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gradient_name_copy, .Lfunc_end23-gradient_name_copy
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_compare,@function
gflare_compare:                         # @gflare_compare
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gflare_compare, .Lfunc_end24-gflare_compare
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_index,@function
gflares_list_index:                     # @gflares_list_index
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gflares_list, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_index
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gflares_list_index, .Lfunc_end25-gflares_list_index
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_menu_init,@function
gradient_menu_init:                     # @gradient_menu_init
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
	callq	gm_gradient_get_list
	movq	$0, gradient_menus
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gradient_menu_init, .Lfunc_end26-gradient_menu_init
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_setup_gflare,@function
dlg_setup_gflare:                       # @dlg_setup_gflare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$pvals, %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	gflares_list_lookup
	movq	dlg, %rdi
	movq	%rax, 8(%rdi)
	movq	dlg, %rax
	cmpq	$0, 8(%rax)
	jne	.LBB27_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.80, %rdi
	callq	gflares_list_lookup
	movq	dlg, %rdi
	movq	%rax, 8(%rdi)
	movq	dlg, %rax
	cmpq	$0, 8(%rax)
	jne	.LBB27_3
# BB#2:                                 # %if.then.6
	movabsq	$.L.str.81, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
	movabsq	$.L.str.80, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gflare_new_with_default
	movq	dlg, %rdi
	movq	%rax, 8(%rdi)
	movq	dlg, %rax
	movq	8(%rax), %rdi
	callq	gflares_list_insert
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB27_3:                               # %if.end
	jmp	.LBB27_4
.LBB27_4:                               # %if.end.13
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	dlg_setup_gflare, .Lfunc_end27-dlg_setup_gflare
	.cfi_endproc

	.align	16, 0x90
	.type	preview_new,@function
preview_new:                            # @preview_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movl	$1, %r11d
	movl	%r11d, %ebx
	movl	$104, %r11d
	movl	%r11d, %r14d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	g_malloc0_n
	movq	%rax, -80(%rbp)
	callq	gimp_preview_area_new
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edx
	movl	%edx, %esi
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-24(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-80(%rbp), %rax
	movl	$0, 68(%rax)
	imull	$3, -20(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	-80(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	-80(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-80(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	preview_new, .Lfunc_end28-preview_new
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_preview_init_func,@function
dlg_preview_init_func:                  # @dlg_preview_init_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	dlg, %rsi
	cmpl	$0, 112(%rsi)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	$7, %esi
	movq	dlg, %rax
	movq	8(%rax), %rdi
	cvtsi2sdl	pvals, %xmm0
	cvtsi2sdl	pvals+4, %xmm1
	movsd	pvals+8, %xmm2          # xmm2 = mem[0],zero
	movsd	pvals+16, %xmm3         # xmm3 = mem[0],zero
	movsd	pvals+24, %xmm4         # xmm4 = mem[0],zero
	movsd	pvals+32, %xmm5         # xmm5 = mem[0],zero
	movsd	pvals+40, %xmm6         # xmm6 = mem[0],zero
	callq	calc_init_params
	movq	dlg, %rax
	movl	$1, 112(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	callq	calc_init_progress
	movl	%eax, -4(%rbp)
.LBB29_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	dlg_preview_init_func, .Lfunc_end29-dlg_preview_init_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	dlg_preview_render_func,@function
dlg_preview_render_func:                # @dlg_preview_render_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	dlg, %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	dlg, %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	dlg, %rcx
	subsd	40(%rcx), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jl	.LBB30_2
# BB#1:                                 # %lor.lhs.false
	movl	-92(%rbp), %eax
	movq	drawable, %rcx
	cmpl	8(%rcx), %eax
	jb	.LBB30_3
.LBB30_2:                               # %if.then
	movl	$128, %esi
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	memset
	jmp	.LBB30_25
.LBB30_3:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	drawable, %rcx
	movl	12(%rcx), %eax
	movq	drawable, %rcx
	imull	4(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -104(%rbp)
	movq	drawable, %rsi
	movq	drawable, %rax
	movl	4(%rax), %r8d
	movq	drawable, %rax
	movl	8(%rax), %r9d
	movl	%edx, -128(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-92(%rbp), %ecx
	movq	drawable, %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -84(%rbp)
.LBB30_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_13 Depth 2
                                        #     Child Loop BB30_8 Depth 2
	cmpl	$256, -84(%rbp)         # imm = 0x100
	jge	.LBB30_24
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB30_4 Depth=1
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movq	dlg, %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	dlg, %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	dlg, %rax
	subsd	32(%rax), %xmm2
	cvtsi2sdl	-84(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jl	.LBB30_7
# BB#6:                                 # %lor.lhs.false.27
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	-88(%rbp), %eax
	movq	drawable, %rcx
	cmpl	4(%rcx), %eax
	jb	.LBB30_12
.LBB30_7:                               # %if.then.31
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	$0, -124(%rbp)
.LBB30_8:                               # %for.cond.32
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -124(%rbp)
	jge	.LBB30_11
# BB#9:                                 # %for.body.35
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$-128, (%rax)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB30_8 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB30_8
.LBB30_11:                              # %for.end
                                        #   in Loop: Header=BB30_4 Depth=1
	jmp	.LBB30_23
.LBB30_12:                              # %if.end.36
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	-88(%rbp), %eax
	movq	drawable, %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-104(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movl	$0, -124(%rbp)
.LBB30_13:                              # %for.cond.39
                                        #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -124(%rbp)
	jge	.LBB30_19
# BB#14:                                # %for.body.42
                                        #   in Loop: Header=BB30_13 Depth=2
	cmpl	$0, dinfo
	je	.LBB30_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB30_13 Depth=2
	movslq	-124(%rbp), %rax
	movq	-112(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB30_17
.LBB30_16:                              # %cond.false
                                        #   in Loop: Header=BB30_13 Depth=2
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
.LBB30_17:                              # %cond.end
                                        #   in Loop: Header=BB30_13 Depth=2
	movl	-132(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-124(%rbp), %rdx
	movb	%cl, -116(%rbp,%rdx)
# BB#18:                                # %for.inc.51
                                        #   in Loop: Header=BB30_13 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB30_13
.LBB30_19:                              # %for.end.53
                                        #   in Loop: Header=BB30_4 Depth=1
	cmpl	$0, dinfo+4
	je	.LBB30_21
# BB#20:                                # %cond.true.55
                                        #   in Loop: Header=BB30_4 Depth=1
	movq	drawable, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-112(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB30_22
.LBB30_21:                              # %cond.false.61
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	$255, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB30_22
.LBB30_22:                              # %cond.end.62
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdi
	movb	%al, %cl
	movb	%cl, -113(%rbp)
	cvtsi2sdl	-88(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	callq	calc_gflare_pix
	leaq	-120(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	preview_rgba_to_rgb
	movq	-16(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -16(%rbp)
.LBB30_23:                              # %for.inc.70
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB30_4
.LBB30_24:                              # %for.end.72
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB30_25:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	dlg_preview_render_func, .Lfunc_end30-dlg_preview_render_func
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_preview_deinit_func,@function
dlg_preview_deinit_func:                # @dlg_preview_deinit_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	dlg, %rsi
	cmpl	$0, 112(%rsi)
	je	.LBB31_2
# BB#1:                                 # %if.then
	callq	calc_deinit
	movq	dlg, %rax
	movl	$1, 112(%rax)
.LBB31_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	dlg_preview_deinit_func, .Lfunc_end31-dlg_preview_deinit_func
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_preview_realize,@function
dlg_preview_realize:                    # @dlg_preview_realize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$34, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	dlg_preview_realize, .Lfunc_end32-dlg_preview_realize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	dlg_preview_handle_event,@function
dlg_preview_handle_event:               # @dlg_preview_handle_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	(%rsi), %eax
	subl	$4, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB33_9
	jmp	.LBB33_1
.LBB33_1:                               # %sw.bb
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	dlg, %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	dlg, %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	dlg, %rax
	subsd	32(%rax), %xmm2
	cvtsi2sdl	-36(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -44(%rbp)
	movq	dlg, %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	dlg, %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	dlg, %rax
	subsd	40(%rax), %xmm2
	cvtsi2sdl	-40(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	pvals, %ecx
	jne	.LBB33_3
# BB#2:                                 # %lor.lhs.false
	movl	-48(%rbp), %eax
	cmpl	pvals+4, %eax
	je	.LBB33_8
.LBB33_3:                               # %if.then
	movl	-44(%rbp), %eax
	cmpl	pvals, %eax
	je	.LBB33_5
# BB#4:                                 # %if.then.25
	movl	-44(%rbp), %eax
	movl	%eax, pvals
	movq	dlg, %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	-44(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
.LBB33_5:                               # %if.end
	movl	-48(%rbp), %eax
	cmpl	pvals+4, %eax
	je	.LBB33_7
# BB#6:                                 # %if.then.30
	movl	-48(%rbp), %eax
	movl	%eax, pvals+4
	movq	dlg, %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
.LBB33_7:                               # %if.end.35
	callq	dlg_preview_update
.LBB33_8:                               # %if.end.36
	movl	$1, -4(%rbp)
	jmp	.LBB33_11
.LBB33_9:                               # %sw.default
	jmp	.LBB33_10
.LBB33_10:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB33_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	dlg_preview_handle_event, .Lfunc_end33-dlg_preview_handle_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4643211215818981376     # double 256
.LCPI34_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	dlg_preview_calc_window,@function
dlg_preview_calc_window:                # @dlg_preview_calc_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI34_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	setae	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movsd	.LCPI34_1, %xmm0        # xmm0 = mem[0],zero
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI34_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LCPI34_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	dlg(%rip), %rax
	movq	$0, 32(%rax)
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movq	dlg(%rip), %rax
	movsd	%xmm1, 48(%rax)
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movq	dlg(%rip), %rax
	movsd	%xmm1, 40(%rax)
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movq	dlg, %rax
	movsd	%xmm1, 56(%rax)
	jmp	.LBB34_3
.LBB34_2:                               # %if.else
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI34_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	movsd	.LCPI34_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	dlg(%rip), %rax
	movsd	%xmm2, 32(%rax)
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	dlg(%rip), %rax
	movsd	%xmm0, 48(%rax)
	movq	dlg(%rip), %rax
	movq	$0, 40(%rax)
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	dlg, %rax
	movsd	%xmm0, 56(%rax)
.LBB34_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end34:
	.size	dlg_preview_calc_window, .Lfunc_end34-dlg_preview_calc_window
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_update_preview_callback,@function
dlg_update_preview_callback:            # @dlg_update_preview_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	callq	dlg_preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	dlg_update_preview_callback, .Lfunc_end35-dlg_update_preview_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4616189618054758400     # double 4
.LCPI36_1:
	.quad	4576918229304087675     # double 0.01
.LCPI36_2:
	.quad	4607182418800017408     # double 1
.LCPI36_3:
	.quad	4621819117588971520     # double 10
.LCPI36_4:
	.quad	4652007308841189376     # double 1000
.LCPI36_5:
	.quad	4688247212092686336     # double 262144
.LCPI36_6:
	.quad	4645023210981556224     # double 359
.LCPI36_7:
	.quad	4624633867356078080     # double 15
.LCPI36_8:
	.quad	-4582834833314545664    # double -180
.LCPI36_9:
	.quad	4640537203540230144     # double 180
.LCPI36_10:
	.quad	-4535124824762089472    # double -262144
	.text
	.align	16, 0x90
	.type	dlg_make_page_settings,@function
dlg_make_page_settings:                 # @dlg_make_page_settings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1040, %rsp             # imm = 0x410
.Ltmp119:
	.cfi_offset %rbx, -32
.Ltmp120:
	.cfi_offset %r14, -24
	xorl	%eax, %eax
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI36_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI36_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %ecx
	movsd	.LCPI36_5, %xmm6        # xmm6 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %r10d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, %edx
	movl	$12, %r11d
	movl	%edx, %edi
	movl	%r11d, %esi
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movsd	%xmm6, -136(%rbp)       # 8-byte Spill
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%r8d, -144(%rbp)        # 4-byte Spill
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	%xmm3, -168(%rbp)       # 8-byte Spill
	movsd	%xmm4, -176(%rbp)       # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movl	%r11d, -188(%rbp)       # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-188(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movl	$.L.str.88, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	image_ID(%rip), %edi
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	callq	gimp_image_get_resolution
	movl	image_ID(%rip), %edi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	$.L.str.90, %ecx
	movl	%ecx, %edi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	cvtsi2sdl	pvals(%rip), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	drawable(%rip), %rdx
	movl	(%rdx), %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	gimp_drawable_width
	cvtsi2sdl	%eax, %xmm5
	movl	$.L.str.91, %eax
	movl	%eax, %edi
	movsd	%xmm5, -256(%rbp)       # 8-byte Spill
	callq	gettext
	cvtsi2sdl	pvals+4(%rip), %xmm6
	movsd	-112(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	drawable(%rip), %rdx
	movl	(%rdx), %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movsd	%xmm6, -272(%rbp)       # 8-byte Spill
	movsd	%xmm7, -280(%rbp)       # 8-byte Spill
	callq	gimp_drawable_height
	cvtsi2sdl	%eax, %xmm0
	movq	%rsp, %rdx
	movsd	%xmm0, 56(%rdx)
	movabsq	$4688247212092686336, %rsi # imm = 0x4110000000000000
	movq	%rsi, 40(%rdx)
	movabsq	$-4535124824762089472, %rsi # imm = 0xC110000000000000
	movq	%rsi, 32(%rdx)
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 24(%rdx)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rdx)
	movq	$0, 48(%rdx)
	movl	$0, 8(%rdx)
	movl	$0, (%rdx)
	movl	$.L.str.89, %eax
	movl	%eax, %esi
	movl	$75, %r8d
	movsd	.LCPI36_10(%rip), %xmm2 # xmm2 = mem[0],zero
	movsd	.LCPI36_5(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movl	-220(%rbp), %edi        # 4-byte Reload
	movl	-184(%rbp), %edx        # 4-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	-184(%rbp), %r9d        # 4-byte Reload
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-272(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	-280(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	gimp_coordinates_new
	movq	-24(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	%rax, -56(%rbp)
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$.L.str.92, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	movl	$.L.str.93, %ecx
	movl	%ecx, %esi
	movl	$dlg_position_entry_callback, %ecx
	movl	%ecx, %eax
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %r10d
	movq	%rax, %rdx
	movq	%r10, %rcx
	movq	%r10, %r8
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movq	%r10, -304(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movl	$.L.str.94, %r9d
	movl	%r9d, %esi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	-304(%rbp), %r8         # 8-byte Reload
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_hide
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$.L.str.95, %r9d
	movl	%r9d, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$3, %esi
	movl	-212(%rbp), %edx        # 4-byte Reload
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-348(%rbp), %esi        # 4-byte Reload
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -116(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-116(%rbp), %ecx
	movl	%ecx, %edx
	incl	%edx
	movl	%edx, -116(%rbp)
	movl	$.L.str.96, %edx
	movl	%edx, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	pvals+8(%rip), %xmm0    # xmm0 = mem[0],zero
	movq	drawable(%rip), %rsi
	movl	4(%rsi), %ecx
	shrl	%ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	-388(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	-144(%rbp), %r8d        # 4-byte Reload
	movl	-148(%rbp), %r9d        # 4-byte Reload
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-176(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-160(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$dlg_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.97, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -116(%rbp)
	movl	%r9d, -436(%rbp)        # 4-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI36_8, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_9, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI36_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI36_7, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+16, %xmm5         # xmm5 = mem[0],zero
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	-436(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-464(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-464(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -468(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$dlg_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movq	-488(%rbp), %r8         # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.98, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -116(%rbp)
	movl	%r9d, -516(%rbp)        # 4-byte Spill
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI36_8, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI36_9, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI36_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI36_7, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+24, %xmm5         # xmm5 = mem[0],zero
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movl	-516(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-544(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-544(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -548(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$dlg_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movq	-568(%rbp), %r8         # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.99, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -116(%rbp)
	movl	%r9d, -596(%rbp)        # 4-byte Spill
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI36_6, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI36_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI36_7, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+32, %xmm1         # xmm1 = mem[0],zero
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	-596(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-624(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-624(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-624(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -628(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
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
	movabsq	$.L.str.93, %rsi
	movabsq	$dlg_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	movq	-648(%rbp), %r8         # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.100, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -116(%rbp)
	movl	%r9d, -676(%rbp)        # 4-byte Spill
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI36_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	movsd	.LCPI36_5, %xmm6        # xmm6 = mem[0],zero
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+40, %xmm1         # xmm1 = mem[0],zero
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movl	-676(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-704(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-704(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-704(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -708(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$dlg_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	movq	-728(%rbp), %r8         # 8-byte Reload
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_frame_new
	movq	-24(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.101, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pvals+48, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.73, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$pvals, %rdi
	addq	$48, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r10
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-800(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.102, %rsi
	movabsq	$.L.str.103, %rcx
	movl	$2, %r8d
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-808(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	-88(%rbp), %rcx
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.104, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$4, %r11d
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI36_3, %xmm2        # xmm2 = mem[0],zero
	movl	$1, %ebx
	xorps	%xmm1, %xmm1
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	cvtsi2sdl	pvals+52, %xmm3
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-856(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -864(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-856(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-864(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-864(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -868(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$52, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-880(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.105, %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI36_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI36_1, %xmm1        # xmm1 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+56, %xmm3         # xmm3 = mem[0],zero
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -920(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-920(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -928(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-928(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-928(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-920(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-920(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -932(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$56, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-944(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -952(%rbp)        # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.106, %rdi
	movq	-40(%rbp), %rsi
	movq	%rsi, -968(%rbp)        # 8-byte Spill
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	-968(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-40(%rbp), %rdi
	movl	%eax, -980(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	addq	$1040, %rsp             # imm = 0x410
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end36:
	.size	dlg_make_page_settings, .Lfunc_end36-dlg_make_page_settings
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_make_page_selector,@function
dlg_make_page_selector:                 # @dlg_make_page_selector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movl	$80, %esi
	movl	$40, %edx
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movl	$2, %edi
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	$68, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gtk_tree_selection_set_mode
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.111, %rsi
	movabsq	$dlg_selector_list_item_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.112, %rdi
	movabsq	$.L.str.113, %rdx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	dlg_selector_setup_listbox
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -84(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-84(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB37_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$dlg_make_page_selector.buttons, %rax
	movslq	-84(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.114, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$dlg_make_page_selector.buttons, %rax
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	callq	g_signal_connect_data
	movq	%rax, -216(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB37_1
.LBB37_4:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.115, %rdi
	movq	-24(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-24(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end37:
	.size	dlg_make_page_selector, .Lfunc_end37-dlg_make_page_selector
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_preview_update,@function
dlg_preview_update:                     # @dlg_preview_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	movq	dlg, %rax
	cmpl	$0, (%rax)
	jne	.LBB38_3
# BB#1:                                 # %land.lhs.true
	movq	dlg, %rax
	cmpl	$0, 64(%rax)
	je	.LBB38_3
# BB#2:                                 # %if.then
	movq	dlg, %rax
	movl	$0, 112(%rax)
	movq	dlg, %rax
	movq	24(%rax), %rdi
	callq	preview_render_start
.LBB38_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end38:
	.size	dlg_preview_update, .Lfunc_end38-dlg_preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	gm_gradient_get_list,@function
gm_gradient_get_list:                   # @gm_gradient_get_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, gradient_names
	je	.LBB39_6
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
.LBB39_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	num_gradient_names, %eax
	jge	.LBB39_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB39_2 Depth=1
	movslq	-4(%rbp), %rax
	movq	gradient_names, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB39_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB39_2
.LBB39_5:                               # %for.end
	movq	gradient_names, %rax
	movq	%rax, %rdi
	callq	g_free
.LBB39_6:                               # %if.end
	callq	gradient_cache_flush
	movabsq	$num_gradient_names, %rdi
	callq	gradient_get_list
	movq	%rax, gradient_names
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gm_gradient_get_list, .Lfunc_end39-gm_gradient_get_list
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_cache_flush,@function
gradient_cache_flush:                   # @gradient_cache_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	gradient_cache_head, %rax
	movq	%rax, -8(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB40_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB40_1
.LBB40_3:                               # %while.end
	movq	$0, gradient_cache_head
	movl	$0, gradient_cache_count
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gradient_cache_flush, .Lfunc_end40-gradient_cache_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_list,@function
gradient_get_list:                      # @gradient_get_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	callq	gradient_cache_flush
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-28(%rbp), %rsi
	callq	gimp_gradients_get_list
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movslq	-28(%rbp), %rax
	addq	$6, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movslq	(%rax), %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
.LBB41_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-32(%rbp), %rax
	cmpq	$6, %rax
	jae	.LBB41_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB41_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	internal_gradients(,%rax,8), %rdi
	callq	g_strdup
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movslq	%ecx, %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rdi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB41_1
.LBB41_4:                               # %for.end
	movl	$0, -32(%rbp)
.LBB41_5:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB41_8
# BB#6:                                 # %for.body.13
                                        #   in Loop: Header=BB41_5 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#7:                                 # %for.inc.20
                                        #   in Loop: Header=BB41_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB41_5
.LBB41_8:                               # %for.end.22
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gradient_get_list, .Lfunc_end41-gradient_get_list
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_lookup,@function
gflares_list_lookup:                    # @gflares_list_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$gflare_compare_name, %rax
	movq	%rdi, -8(%rbp)
	movq	gflares_list, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, %rdx
	callq	g_list_find_custom
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB42_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB42_3
.LBB42_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB42_3
.LBB42_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gflares_list_lookup, .Lfunc_end42-gflares_list_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_new_with_default,@function
gflare_new_with_default:                # @gflare_new_with_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$default_gflare, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gflare_dup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gflare_new_with_default, .Lfunc_end43-gflare_new_with_default
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_compare_name,@function
gflare_compare_name:                    # @gflare_compare_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gflare_compare_name, .Lfunc_end44-gflare_compare_name
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_dup,@function
gflare_dup:                             # @gflare_dup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$2472, %eax             # imm = 0x9A8
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc0_n
	movl	$2472, %r8d             # imm = 0x9A8
	movl	%r8d, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gflare_dup, .Lfunc_end45-gflare_dup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI46_0:
	.quad	4607182418800017408     # double 1
.LCPI46_1:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI46_2:
	.quad	4636737291354636288     # double 100
.LCPI46_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI46_4:
	.quad	4643176031446892544     # double 255
.LCPI46_5:
	.quad	4640537203540230144     # double 180
.LCPI46_6:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI46_7:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	calc_init_params,@function
calc_init_params:                       # @calc_init_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movsd	.LCPI46_2, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI46_3, %xmm8        # xmm8 = mem[0],zero
	movsd	.LCPI46_4, %xmm9        # xmm9 = mem[0],zero
	movsd	.LCPI46_5, %xmm10       # xmm10 = mem[0],zero
	movsd	.LCPI46_6, %xmm11       # xmm11 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movsd	%xmm6, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, calc+4
	movq	-8(%rbp), %rdi
	movq	%rdi, calc+8
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, calc+16
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, calc+24
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, calc+32
	movaps	%xmm11, %xmm0
	mulsd	-48(%rbp), %xmm0
	divsd	%xmm10, %xmm0
	movsd	%xmm0, calc+40
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, calc+48
	movaps	%xmm11, %xmm0
	mulsd	-64(%rbp), %xmm0
	divsd	%xmm10, %xmm0
	movsd	%xmm0, calc+56
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, calc+64
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	832(%rdi), %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, calc+136
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	1624(%rdi), %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, calc+216
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	2432(%rdi), %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, calc+288
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	addsd	840(%rdi), %xmm0
	mulsd	%xmm11, %xmm0
	divsd	%xmm10, %xmm0
	movsd	%xmm0, calc+144
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	addsd	1632(%rdi), %xmm0
	mulsd	%xmm11, %xmm0
	divsd	%xmm10, %xmm0
	movsd	%xmm0, calc+224
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	addsd	2440(%rdi), %xmm0
	mulsd	%xmm11, %xmm0
	divsd	%xmm10, %xmm0
	movsd	%xmm0, calc+296
	movq	-8(%rbp), %rdi
	movaps	%xmm9, %xmm0
	mulsd	16(%rdi), %xmm0
	divsd	%xmm7, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, calc+72
	movq	-8(%rbp), %rdi
	movaps	%xmm9, %xmm0
	mulsd	32(%rdi), %xmm0
	divsd	%xmm7, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, calc+152
	movq	-8(%rbp), %rdi
	mulsd	48(%rdi), %xmm9
	divsd	%xmm7, %xmm9
	cvttsd2si	%xmm9, %esi
	movl	%esi, calc+248
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	subsd	calc+136, %xmm0
	subsd	%xmm8, %xmm0
	movsd	%xmm0, calc+80
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	addsd	calc+136, %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, calc+96
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	subsd	calc+136, %xmm0
	subsd	%xmm8, %xmm0
	movsd	%xmm0, calc+88
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	addsd	calc+136, %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, calc+104
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	subsd	calc+216, %xmm0
	subsd	%xmm8, %xmm0
	movsd	%xmm0, calc+160
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	addsd	calc+216, %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, calc+176
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	subsd	calc+216, %xmm0
	subsd	%xmm8, %xmm0
	movsd	%xmm0, calc+168
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	addsd	calc+216, %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, calc+184
	movq	-8(%rbp), %rdi
	movsd	1656(%rdi), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm7, %xmm0
	callq	log
	movsd	.LCPI46_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	.LCPI46_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, calc+240
	movq	-8(%rbp), %rdi
	movl	1648(%rdi), %esi
	shll	$1, %esi
	cvtsi2sdl	%esi, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, calc+232
	movq	$0, calc+256
	movq	-8(%rbp), %rdi
	movl	2456(%rdi), %esi
	movl	%esi, calc+304
	cmpl	$1, calc+304
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movsd	.LCPI46_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI46_7, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	2460(%rax), %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, calc+312
	movsd	calc+312, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, calc+320
.LBB46_2:                               # %if.end
	movq	$0, calc+112
	movq	$0, calc+120
	movq	$0, calc+128
	movq	$0, calc+192
	movq	$0, calc+200
	movq	$0, calc+208
	movq	$0, calc+264
	movq	$0, calc+272
	movq	$0, calc+280
	movl	$1, calc
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	calc_init_params, .Lfunc_end46-calc_init_params
	.cfi_endproc

	.align	16, 0x90
	.type	calc_init_progress,@function
calc_init_progress:                     # @calc_init_progress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	calc_sample_one_gradient
	cmpl	$0, %eax
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB47_3
.LBB47_2:                               # %if.end
	callq	calc_place_sflare
	movl	$0, -4(%rbp)
.LBB47_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	calc_init_progress, .Lfunc_end47-calc_init_progress
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4643211215818981376     # double 256
.LCPI48_1:
	.quad	4645040803167600640     # double 360
.LCPI48_2:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI48_3:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI48_4:
	.quad	4589866978952703325     # double 0.0722
.LCPI48_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	calc_sample_one_gradient,@function
calc_sample_one_gradient:               # @calc_sample_one_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	calc+8, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -44(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$9, %rax
	jae	.LBB48_28
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$calc_sample_one_gradient.table, %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB48_26
# BB#3:                                 # %if.then
	movl	$1440, %eax             # imm = 0x5A0
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	movabsq	$calc_sample_one_gradient.table, %rcx
	movq	-16(%rbp), %rdx
	movslq	-44(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movslq	8(%rcx), %rcx
	addq	%rcx, %rdx
	movq	%rdx, -24(%rbp)
	callq	g_malloc_n
	movl	$360, %edx              # imm = 0x168
	movabsq	$calc_sample_one_gradient.table, %rcx
	movslq	-44(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gradient_get_values
	movabsq	$calc_sample_one_gradient.table, %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 12(%rax)
	je	.LBB48_19
# BB#4:                                 # %if.then.13
	movl	$256, %eax              # imm = 0x100
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI48_1, %xmm1        # xmm1 = mem[0],zero
	movabsq	$calc_sample_one_gradient.table, %rcx
	movsd	calc+48, %xmm2          # xmm2 = mem[0],zero
	movq	-16(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	movslq	12(%rcx), %rcx
	addsd	(%rdx,%rcx), %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-68(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movl	%edx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB48_6
# BB#5:                                 # %if.then.22
	movl	-52(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -52(%rbp)
.LBB48_6:                               # %if.end
	jmp	.LBB48_7
.LBB48_7:                               # %do.body
	xorl	%eax, %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB48_10
# BB#8:                                 # %land.lhs.true
	cmpl	$256, -52(%rbp)         # imm = 0x100
	jge	.LBB48_10
# BB#9:                                 # %if.then.28
	jmp	.LBB48_11
.LBB48_10:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$1853, %edx             # imm = 0x73D
	movabsq	$.L__func__.calc_sample_one_gradient, %rcx
	movabsq	$.L.str.82, %r8
	callq	g_assertion_message_expr
.LBB48_11:                              # %if.end.29
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
	cmpl	$0, -52(%rbp)
	jle	.LBB48_18
# BB#13:                                # %if.then.32
	movl	$0, -48(%rbp)
.LBB48_14:                              # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$360, -48(%rbp)         # imm = 0x168
	jge	.LBB48_17
# BB#15:                                # %for.body.36
                                        #   in Loop: Header=BB48_14 Depth=1
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	-48(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %r8
	movzbl	(%r8,%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %r8
	movzbl	(%r8,%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %r8
	movzbl	(%r8,%rcx), %eax
	movl	%eax, -64(%rbp)
	callq	gimp_rgb_to_hsv_int
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	$256, %eax              # imm = 0x100
	movl	-56(%rbp), %r9d
	addl	-52(%rbp), %r9d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%r9d, %eax
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cltd
	movl	-72(%rbp), %r9d         # 4-byte Reload
	idivl	%r9d
	movl	%edx, -56(%rbp)
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	gimp_hsv_to_rgb_int
	movl	-56(%rbp), %r9d
	movb	%r9b, %r10b
	movl	-48(%rbp), %r9d
	shll	$2, %r9d
	movslq	%r9d, %rcx
	movq	-32(%rbp), %rdx
	movb	%r10b, (%rdx,%rcx)
	movl	-60(%rbp), %r9d
	movb	%r9b, %r10b
	movl	-48(%rbp), %r9d
	shll	$2, %r9d
	addl	$1, %r9d
	movslq	%r9d, %rcx
	movq	-32(%rbp), %rdx
	movb	%r10b, (%rdx,%rcx)
	movl	-64(%rbp), %r9d
	movb	%r9b, %r10b
	movl	-48(%rbp), %r9d
	shll	$2, %r9d
	addl	$2, %r9d
	movslq	%r9d, %rcx
	movq	-32(%rbp), %rdx
	movb	%r10b, (%rdx,%rcx)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB48_14 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB48_14
.LBB48_17:                              # %for.end
	jmp	.LBB48_18
.LBB48_18:                              # %if.end.67
	jmp	.LBB48_19
.LBB48_19:                              # %if.end.68
	movabsq	$calc_sample_one_gradient.table, %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	je	.LBB48_25
# BB#20:                                # %if.then.71
	movl	$0, -48(%rbp)
.LBB48_21:                              # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$360, -48(%rbp)         # imm = 0x168
	jge	.LBB48_24
# BB#22:                                # %for.body.75
                                        #   in Loop: Header=BB48_21 Depth=1
	movq	-32(%rbp), %rax
	movl	-48(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	movzbl	(%rax,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI48_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	1(%rax,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI48_3(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI48_4(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI48_5(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %sil
	movl	-48(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rax)
# BB#23:                                # %for.inc.104
                                        #   in Loop: Header=BB48_21 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB48_21
.LBB48_24:                              # %for.end.106
	jmp	.LBB48_25
.LBB48_25:                              # %if.end.107
	movl	$1, -4(%rbp)
	jmp	.LBB48_29
.LBB48_26:                              # %if.end.108
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_27
.LBB48_27:                              # %for.inc.109
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB48_1
.LBB48_28:                              # %for.end.111
	movl	$0, -4(%rbp)
.LBB48_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	calc_sample_one_gradient, .Lfunc_end48-calc_sample_one_gradient
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI49_0:
	.quad	4607182418800017408     # double 1
.LCPI49_1:
	.quad	4645040803167600640     # double 360
.LCPI49_2:
	.quad	4617315517961601024     # double 5
.LCPI49_3:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	calc_place_sflare,@function
calc_place_sflare:                      # @calc_place_sflare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$2976, %rsp             # imm = 0xBA0
	callq	g_rand_new
	movq	%rax, -2952(%rbp)
	movl	calc+4, %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_2
# BB#1:                                 # %if.then
	jmp	.LBB49_25
.LBB49_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movq	calc+8, %rax
	movq	%rax, -8(%rbp)
	movsd	%xmm0, -2904(%rbp)
	movl	$0, -2944(%rbp)
.LBB49_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$360, -2944(%rbp)       # imm = 0x168
	jge	.LBB49_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB49_3 Depth=1
	movl	-2944(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	calc+280(%rip), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movslq	-2944(%rbp), %rcx
	movsd	%xmm0, -2896(%rbp,%rcx,8)
	movslq	-2944(%rbp), %rcx
	movsd	-2896(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	addsd	-2904(%rbp), %xmm0
	movsd	%xmm0, -2904(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB49_3 Depth=1
	movl	-2944(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2944(%rbp)
	jmp	.LBB49_3
.LBB49_6:                               # %for.end
	xorps	%xmm0, %xmm0
	movsd	-2904(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB49_8
	jp	.LBB49_8
# BB#7:                                 # %if.then.8
	movsd	.LCPI49_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -2904(%rbp)
.LBB49_8:                               # %if.end.9
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -2912(%rbp)
	movl	$0, -2944(%rbp)
.LBB49_9:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$360, -2944(%rbp)       # imm = 0x168
	jge	.LBB49_12
# BB#10:                                # %for.body.13
                                        #   in Loop: Header=BB49_9 Depth=1
	movslq	-2944(%rbp), %rax
	movsd	-2896(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	-2912(%rbp), %xmm0
	movsd	%xmm0, -2912(%rbp)
	movsd	-2912(%rbp), %xmm0      # xmm0 = mem[0],zero
	divsd	-2904(%rbp), %xmm0
	movslq	-2944(%rbp), %rax
	movsd	%xmm0, -2896(%rbp,%rax,8)
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB49_9 Depth=1
	movl	-2944(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2944(%rbp)
	jmp	.LBB49_9
.LBB49_12:                              # %for.end.21
	movq	-2952(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	2464(%rax), %esi
	callq	g_rand_set_seed
	movl	$0, -2940(%rbp)
.LBB49_13:                              # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_15 Depth 2
	cmpl	$30, -2940(%rbp)
	jge	.LBB49_24
# BB#14:                                # %for.body.25
                                        #   in Loop: Header=BB49_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$56, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movq	-2952(%rbp), %rdi
	callq	g_rand_double
	movsd	%xmm0, -2928(%rbp)
	movl	$0, -2944(%rbp)
.LBB49_15:                              # %for.cond.28
                                        #   Parent Loop BB49_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$360, -2944(%rbp)       # imm = 0x168
	jge	.LBB49_20
# BB#16:                                # %for.body.31
                                        #   in Loop: Header=BB49_15 Depth=2
	movslq	-2944(%rbp), %rax
	movsd	-2896(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	-2928(%rbp), %xmm0
	jb	.LBB49_18
# BB#17:                                # %if.then.36
                                        #   in Loop: Header=BB49_13 Depth=1
	jmp	.LBB49_20
.LBB49_18:                              # %if.end.37
                                        #   in Loop: Header=BB49_15 Depth=2
	jmp	.LBB49_19
.LBB49_19:                              # %for.inc.38
                                        #   in Loop: Header=BB49_15 Depth=2
	movl	-2944(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2944(%rbp)
	jmp	.LBB49_15
.LBB49_20:                              # %for.end.40
                                        #   in Loop: Header=BB49_13 Depth=1
	cmpl	$360, -2944(%rbp)       # imm = 0x168
	jl	.LBB49_22
# BB#21:                                # %if.then.43
                                        #   in Loop: Header=BB49_13 Depth=1
	movl	$359, -2944(%rbp)       # imm = 0x167
.LBB49_22:                              # %if.end.44
                                        #   in Loop: Header=BB49_13 Depth=1
	movsd	.LCPI49_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI49_3, %xmm0        # xmm0 = mem[0],zero
	movl	-2944(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	calc+272, %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -2936(%rbp)
	movsd	-2936(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI49_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI49_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -2936(%rbp)
	movl	-2944(%rbp), %eax
	subl	$180, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -2920(%rbp)
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	movsd	calc+56, %xmm2          # xmm2 = mem[0],zero
	movsd	%xmm0, -2960(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -2968(%rbp)      # 8-byte Spill
	callq	cos
	mulsd	calc+64, %xmm0
	mulsd	-2920(%rbp), %xmm0
	movsd	-2960(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	movsd	calc+56, %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm0, -2976(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	mulsd	calc+64, %xmm0
	mulsd	-2920(%rbp), %xmm0
	movsd	-2976(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movsd	-2936(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	calc+288, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	subsd	16(%rcx), %xmm0
	movsd	-2968(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	addsd	16(%rcx), %xmm0
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 40(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	subsd	16(%rcx), %xmm0
	subsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	addsd	16(%rcx), %xmm0
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	calc+256, %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_append
	movq	%rax, calc+256
# BB#23:                                # %for.inc.83
                                        #   in Loop: Header=BB49_13 Depth=1
	movl	-2940(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2940(%rbp)
	jmp	.LBB49_13
.LBB49_24:                              # %for.end.85
	movq	-2952(%rbp), %rdi
	callq	g_rand_free
.LBB49_25:                              # %return
	addq	$2976, %rsp             # imm = 0xBA0
	popq	%rbp
	retq
.Lfunc_end49:
	.size	calc_place_sflare, .Lfunc_end49-calc_place_sflare
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_values,@function
gradient_get_values:                    # @gradient_get_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %edx
	cmpl	$37, %edx
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gradient_get_values_internal
	jmp	.LBB50_3
.LBB50_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gradient_get_values_external
.LBB50_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gradient_get_values, .Lfunc_end50-gradient_get_values
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_values_internal,@function
gradient_get_values_internal:           # @gradient_get_values_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.74, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB51_2
# BB#1:                                 # %if.then
	movabsq	$gradient_get_values_internal.white, %rax
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gradient_get_blend
	jmp	.LBB51_18
.LBB51_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.75, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB51_4
# BB#3:                                 # %if.then.3
	movabsq	$gradient_get_values_internal.white, %rdi
	movabsq	$gradient_get_values_internal.white_trans, %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	gradient_get_blend
	jmp	.LBB51_17
.LBB51_4:                               # %if.else.4
	movq	-8(%rbp), %rdi
	movl	$.L.str.76, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB51_6
# BB#5:                                 # %if.then.7
	movabsq	$gradient_get_values_internal.white, %rdi
	movabsq	$gradient_get_values_internal.red_trans, %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	gradient_get_blend
	jmp	.LBB51_16
.LBB51_6:                               # %if.else.8
	movq	-8(%rbp), %rdi
	movl	$.L.str.77, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB51_8
# BB#7:                                 # %if.then.11
	movabsq	$gradient_get_values_internal.white, %rdi
	movabsq	$gradient_get_values_internal.blue_trans, %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	gradient_get_blend
	jmp	.LBB51_15
.LBB51_8:                               # %if.else.12
	movq	-8(%rbp), %rdi
	movl	$.L.str.78, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB51_10
# BB#9:                                 # %if.then.15
	movabsq	$gradient_get_values_internal.white, %rdi
	movabsq	$gradient_get_values_internal.yellow_trans, %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	gradient_get_blend
	jmp	.LBB51_14
.LBB51_10:                              # %if.else.16
	movq	-8(%rbp), %rdi
	movl	$.L.str.79, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB51_12
# BB#11:                                # %if.then.19
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gradient_get_random
	jmp	.LBB51_13
.LBB51_12:                              # %if.else.20
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gradient_get_default
.LBB51_13:                              # %if.end
	jmp	.LBB51_14
.LBB51_14:                              # %if.end.21
	jmp	.LBB51_15
.LBB51_15:                              # %if.end.22
	jmp	.LBB51_16
.LBB51_16:                              # %if.end.23
	jmp	.LBB51_17
.LBB51_17:                              # %if.end.24
	jmp	.LBB51_18
.LBB51_18:                              # %if.end.25
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gradient_get_values_internal, .Lfunc_end51-gradient_get_values_internal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4645023210981556224     # double 359
.LCPI52_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_get_values_external,@function
gradient_get_values_external:           # @gradient_get_values_external
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$2, -20(%rbp)
	jl	.LBB52_3
# BB#2:                                 # %if.then
	jmp	.LBB52_4
.LBB52_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gradient_get_values_external, %rsi
	movabsq	$.L.str.83, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB52_27
.LBB52_4:                               # %if.end
	jmp	.LBB52_5
.LBB52_5:                               # %do.end
	leaq	-36(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gradient_cache_lookup
	movq	%rax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB52_7
# BB#6:                                 # %if.then.1
	movl	$360, %edx              # imm = 0x168
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$272, %rax              # imm = 0x110
	movq	%rax, %rsi
	callq	gradient_get_values_real_external
.LBB52_7:                               # %if.end.3
	cmpl	$360, -20(%rbp)         # imm = 0x168
	jne	.LBB52_9
# BB#8:                                 # %if.then.5
	movl	$1440, %eax             # imm = 0x5A0
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB52_27
.LBB52_9:                               # %if.else.7
	movl	$0, -64(%rbp)
.LBB52_10:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_20 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB52_26
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB52_10 Depth=1
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
# BB#12:                                # %do.body.10
                                        #   in Loop: Header=BB52_10 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB52_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB52_10 Depth=1
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jb	.LBB52_15
# BB#14:                                # %if.then.15
                                        #   in Loop: Header=BB52_10 Depth=1
	jmp	.LBB52_16
.LBB52_15:                              # %if.else.16
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$4901, %edx             # imm = 0x1325
	movabsq	$.L__func__.gradient_get_values_external, %rcx
	movabsq	$.L.str.84, %r8
	callq	g_assertion_message_expr
.LBB52_16:                              # %if.end.17
                                        #   in Loop: Header=BB52_10 Depth=1
	jmp	.LBB52_17
.LBB52_17:                              # %do.end.18
                                        #   in Loop: Header=BB52_10 Depth=1
	xorps	%xmm0, %xmm0
	cvttsd2si	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB52_19
	jp	.LBB52_19
# BB#18:                                # %if.then.24
                                        #   in Loop: Header=BB52_10 Depth=1
	movl	-64(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	-60(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movl	272(%rdi,%rsi), %eax
	movl	%eax, (%rdx,%rcx)
	jmp	.LBB52_24
.LBB52_19:                              # %if.else.30
                                        #   in Loop: Header=BB52_10 Depth=1
	movl	$0, -68(%rbp)
.LBB52_20:                              # %for.cond.31
                                        #   Parent Loop BB52_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -68(%rbp)
	jge	.LBB52_23
# BB#21:                                # %for.body.34
                                        #   in Loop: Header=BB52_20 Depth=2
	movl	-60(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	leal	(%rsi,%rdx,4), %eax
	movslq	%eax, %rdi
	movq	-32(%rbp), %r8
	movzbl	272(%r8,%rdi), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI52_1(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	leal	4(%rsi,%rdx,4), %eax
	movslq	%eax, %rdx
	movzbl	272(%r8,%rdx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %r9b
	movl	-64(%rbp), %eax
	shll	$2, %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movb	%r9b, (%rsi,%rdx)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB52_20 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB52_20
.LBB52_23:                              # %for.end
                                        #   in Loop: Header=BB52_10 Depth=1
	jmp	.LBB52_24
.LBB52_24:                              # %if.end.58
                                        #   in Loop: Header=BB52_10 Depth=1
	jmp	.LBB52_25
.LBB52_25:                              # %for.inc.59
                                        #   in Loop: Header=BB52_10 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB52_10
.LBB52_26:                              # %for.end.61
	jmp	.LBB52_27
.LBB52_27:                              # %if.end.62
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gradient_get_values_external, .Lfunc_end52-gradient_get_values_external
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI53_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_get_blend,@function
gradient_get_blend:                     # @gradient_get_blend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB53_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_3 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB53_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB53_1 Depth=1
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB53_3:                               # %for.cond.2
                                        #   Parent Loop BB53_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -48(%rbp)
	jge	.LBB53_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB53_3 Depth=2
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI53_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%sil, (%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB53_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB53_3
.LBB53_6:                               # %for.end
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_7
.LBB53_7:                               # %for.inc.14
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB53_1
.LBB53_8:                               # %for.end.16
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gradient_get_blend, .Lfunc_end53-gradient_get_blend
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_random,@function
gradient_get_random:                    # @gradient_get_random
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movl	$0, -16(%rbp)
.LBB54_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB54_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB54_1 Depth=1
	xorl	%edi, %edi
	movl	$256, %esi              # imm = 0x100
	callq	g_random_int_range
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB54_3:                               # %for.cond.1
                                        #   Parent Loop BB54_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -20(%rbp)
	jge	.LBB54_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB54_3 Depth=2
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB54_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB54_3
.LBB54_6:                               # %for.end
                                        #   in Loop: Header=BB54_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$-1, (%rax)
# BB#7:                                 # %for.inc.5
                                        #   in Loop: Header=BB54_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB54_1
.LBB54_8:                               # %for.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gradient_get_random, .Lfunc_end54-gradient_get_random
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI55_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gradient_get_default,@function
gradient_get_default:                   # @gradient_get_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movq	-8(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movl	$0, -64(%rbp)
.LBB55_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -64(%rbp)
	jge	.LBB55_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB55_1 Depth=1
	movsd	.LCPI55_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-64(%rbp), %rax
	movsd	%xmm1, -48(%rbp,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB55_1
.LBB55_4:                               # %for.end
	movl	$0, -60(%rbp)
.LBB55_5:                               # %for.cond.4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_7 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB55_12
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB55_5 Depth=1
	cvtsi2sdl	-60(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -64(%rbp)
.LBB55_7:                               # %for.cond.11
                                        #   Parent Loop BB55_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -64(%rbp)
	jge	.LBB55_10
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB55_7 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	movsd	-48(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI55_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%dl, (%rax)
# BB#9:                                 # %for.inc.19
                                        #   in Loop: Header=BB55_7 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB55_7
.LBB55_10:                              # %for.end.21
                                        #   in Loop: Header=BB55_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$-1, (%rax)
# BB#11:                                # %for.inc.23
                                        #   in Loop: Header=BB55_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB55_5
.LBB55_12:                              # %for.end.25
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gradient_get_default, .Lfunc_end55-gradient_get_default
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_cache_lookup,@function
gradient_cache_lookup:                  # @gradient_cache_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	gradient_cache_head, %rsi
	movq	%rsi, -32(%rbp)
.LBB56_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB56_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB56_4
# BB#3:                                 # %if.then
	jmp	.LBB56_5
.LBB56_4:                               # %if.end
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB56_1
.LBB56_5:                               # %while.end
	cmpq	$0, -32(%rbp)
	je	.LBB56_16
# BB#6:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB56_13
# BB#7:                                 # %if.then.6
	jmp	.LBB56_8
.LBB56_8:                               # %do.body
	movq	-32(%rbp), %rax
	cmpq	gradient_cache_head, %rax
	jne	.LBB56_10
# BB#9:                                 # %if.then.7
	jmp	.LBB56_11
.LBB56_10:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$4977, %edx             # imm = 0x1371
	movabsq	$.L__func__.gradient_cache_lookup, %rcx
	movabsq	$.L.str.85, %r8
	callq	g_assertion_message_expr
.LBB56_11:                              # %if.end.8
	jmp	.LBB56_12
.LBB56_12:                              # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_22
.LBB56_13:                              # %if.end.9
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB56_15
# BB#14:                                # %if.then.15
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB56_15:                              # %if.end.19
	movq	gradient_cache_head, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	gradient_cache_head, %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, gradient_cache_head
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_22
.LBB56_16:                              # %if.else.23
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB56_17:                              # %while.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32, gradient_cache_count
	jl	.LBB56_19
# BB#18:                                # %while.body.26
                                        #   in Loop: Header=BB56_17 Depth=1
	callq	gradient_cache_zorch
	jmp	.LBB56_17
.LBB56_19:                              # %while.end.27
	movl	$1, %eax
	movl	%eax, %edi
	movl	$1712, %eax             # imm = 0x6B0
	movl	%eax, %esi
	callq	g_malloc_n
	movl	$255, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strncpy
	movq	gradient_cache_head, %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-32(%rbp), %rdx
	movq	$0, 8(%rdx)
	cmpq	$0, gradient_cache_head
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB56_21
# BB#20:                                # %if.then.35
	movq	-32(%rbp), %rax
	movq	gradient_cache_head, %rcx
	movq	%rax, 8(%rcx)
.LBB56_21:                              # %if.end.37
	movq	-32(%rbp), %rax
	movq	%rax, gradient_cache_head
	movl	gradient_cache_count, %ecx
	addl	$1, %ecx
	movl	%ecx, gradient_cache_count
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB56_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gradient_cache_lookup, .Lfunc_end56-gradient_cache_lookup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI57_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gradient_get_values_real_external,@function
gradient_get_values_real_external:      # @gradient_get_values_real_external
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-28(%rbp), %rax
	leaq	-40(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rcx
	callq	gimp_gradient_get_uniform_samples
	movl	$0, -44(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB57_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_3 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB57_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movl	$0, -48(%rbp)
.LBB57_3:                               # %for.cond.1
                                        #   Parent Loop BB57_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -48(%rbp)
	jge	.LBB57_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB57_3 Depth=2
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	leal	(%rsi,%rdx,4), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI57_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movl	-44(%rbp), %eax
	shll	$2, %eax
	addl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB57_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB57_3
.LBB57_6:                               # %for.end
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_7
.LBB57_7:                               # %for.inc.9
                                        #   in Loop: Header=BB57_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB57_1
.LBB57_8:                               # %for.end.11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gradient_get_values_real_external, .Lfunc_end57-gradient_get_values_real_external
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_cache_zorch,@function
gradient_cache_zorch:                   # @gradient_cache_zorch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	gradient_cache_head, %rax
	movq	%rax, -8(%rbp)
.LBB58_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB58_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB58_3:                               # %land.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_4
	jmp	.LBB58_5
.LBB58_4:                               # %while.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_1
.LBB58_5:                               # %while.end
	cmpq	$0, -8(%rbp)
	je	.LBB58_15
# BB#6:                                 # %if.then
	jmp	.LBB58_7
.LBB58_7:                               # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB58_9
# BB#8:                                 # %if.then.5
	jmp	.LBB58_10
.LBB58_9:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$5017, %edx             # imm = 0x1399
	movabsq	$.L__func__.gradient_cache_zorch, %rcx
	movabsq	$.L.str.86, %r8
	callq	g_assertion_message_expr
.LBB58_10:                              # %if.end
	jmp	.LBB58_11
.LBB58_11:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_13
# BB#12:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, (%rax)
	jmp	.LBB58_14
.LBB58_13:                              # %if.else.10
	movq	$0, gradient_cache_head
.LBB58_14:                              # %if.end.11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	gradient_cache_count, %ecx
	addl	$-1, %ecx
	movl	%ecx, gradient_cache_count
.LBB58_15:                              # %if.end.12
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gradient_cache_zorch, .Lfunc_end58-gradient_cache_zorch
	.cfi_endproc

	.align	16, 0x90
	.type	calc_gflare_pix,@function
calc_gflare_pix:                        # @calc_gflare_pix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	calc+8, %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, (%rsi)
	movl	calc+4, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB59_2
# BB#1:                                 # %if.then
	leaq	-44(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc_glow_pix
	leaq	-44(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	calc+72, %ecx
	movq	-40(%rbp), %rax
	movl	24(%rax), %r8d
	callq	calc_paint_func
.LBB59_2:                               # %if.end
	movl	calc+4, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB59_4
# BB#3:                                 # %if.then.5
	leaq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc_rays_pix
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	calc+152, %ecx
	movq	-40(%rbp), %rax
	movl	40(%rax), %r8d
	callq	calc_paint_func
.LBB59_4:                               # %if.end.9
	movl	calc+4, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB59_6
# BB#5:                                 # %if.then.12
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc_sflare_pix
.LBB59_6:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	calc_gflare_pix, .Lfunc_end59-calc_gflare_pix
	.cfi_endproc

	.align	16, 0x90
	.type	preview_rgba_to_rgb,@function
preview_rgba_to_rgb:                    # @preview_rgba_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movzbl	3(%rcx), %edx
	movl	%edx, -28(%rbp)
	cmpl	$255, -28(%rbp)
	jne	.LBB60_6
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB60_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB60_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB60_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB60_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB60_2
.LBB60_5:                               # %for.end
	jmp	.LBB60_21
.LBB60_6:                               # %if.else
	movl	$8, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$4, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	-16(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cltd
	idivl	%ecx
	cmpl	$4, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	-44(%rbp), %edi         # 4-byte Reload
	xorl	%edx, %edi
	cmpl	$0, %edi
	je	.LBB60_8
# BB#7:                                 # %if.then.12
	movl	$153, -32(%rbp)
	jmp	.LBB60_9
.LBB60_8:                               # %if.else.13
	movl	$102, -32(%rbp)
.LBB60_9:                               # %if.end
	cmpl	$0, -28(%rbp)
	jne	.LBB60_15
# BB#10:                                # %if.then.16
	movl	$0, -36(%rbp)
.LBB60_11:                              # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB60_14
# BB#12:                                # %for.body.20
                                        #   in Loop: Header=BB60_11 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#13:                                # %for.inc.24
                                        #   in Loop: Header=BB60_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB60_11
.LBB60_14:                              # %for.end.26
	jmp	.LBB60_20
.LBB60_15:                              # %if.else.27
	movl	$0, -36(%rbp)
.LBB60_16:                              # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB60_19
# BB#17:                                # %for.body.31
                                        #   in Loop: Header=BB60_16 Depth=1
	movl	$255, %eax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	%eax, %r8d
	subl	-28(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %r9b
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %r10
	movb	%r9b, (%r10,%rcx)
# BB#18:                                # %for.inc.39
                                        #   in Loop: Header=BB60_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB60_16
.LBB60_19:                              # %for.end.41
	jmp	.LBB60_20
.LBB60_20:                              # %if.end.42
	jmp	.LBB60_21
.LBB60_21:                              # %if.end.43
	popq	%rbp
	retq
.Lfunc_end60:
	.size	preview_rgba_to_rgb, .Lfunc_end60-preview_rgba_to_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI61_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI61_1:
	.quad	4643176031446892544     # double 255
.LCPI61_2:
	.quad	4607182418800017408     # double 1
.LCPI61_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	calc_glow_pix,@function
calc_glow_pix:                          # @calc_glow_pix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	calc+4, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB61_5
# BB#1:                                 # %lor.lhs.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	calc+80, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB61_5
# BB#2:                                 # %lor.lhs.false.2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	calc+96, %xmm0
	ja	.LBB61_5
# BB#3:                                 # %lor.lhs.false.4
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	calc+88, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB61_5
# BB#4:                                 # %lor.lhs.false.6
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	calc+104, %xmm0
	jbe	.LBB61_6
.LBB61_5:                               # %if.then
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	memset
	jmp	.LBB61_13
.LBB61_6:                               # %if.end
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	divsd	calc+136, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI61_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI61_3, %xmm2        # xmm2 = mem[0],zero
	addsd	calc+144, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod_positive
	leaq	-60(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)
	movq	calc+128, %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	xorps	%xmm0, %xmm0
	movsd	.LCPI61_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI61_1, %xmm2        # xmm2 = mem[0],zero
	movzbl	-60(%rbp), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -48(%rbp)
	addsd	-48(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -32(%rbp)
	ucomisd	-32(%rbp), %xmm0
	ja	.LBB61_8
# BB#7:                                 # %lor.lhs.false.21
	movsd	.LCPI61_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB61_9
.LBB61_8:                               # %if.then.24
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	memset
	jmp	.LBB61_13
.LBB61_9:                               # %if.end.25
	leaq	-52(%rbp), %rdi
	movq	calc+112, %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	leaq	-56(%rbp), %rdi
	movq	calc+120, %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	movl	$0, -64(%rbp)
.LBB61_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -64(%rbp)
	jge	.LBB61_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB61_10 Depth=1
	movl	$255, %eax
	movslq	-64(%rbp), %rcx
	movzbl	-52(%rbp,%rcx), %edx
	movslq	-64(%rbp), %rcx
	movzbl	-56(%rbp,%rcx), %esi
	imull	%esi, %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-68(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movslq	-64(%rbp), %rcx
	movq	-8(%rbp), %r8
	movb	%dil, (%r8,%rcx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB61_10 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB61_10
.LBB61_13:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	calc_glow_pix, .Lfunc_end61-calc_glow_pix
	.cfi_endproc

	.align	16, 0x90
	.type	calc_paint_func,@function
calc_paint_func:                        # @calc_paint_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB62_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -28(%rbp)
	jg	.LBB62_3
.LBB62_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, (%rax)
	jmp	.LBB62_10
.LBB62_3:                               # %if.end
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB62_8
# BB#11:                                # %if.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI62_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB62_4:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB62_9
.LBB62_5:                               # %sw.bb.4
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	calc_addition
	jmp	.LBB62_9
.LBB62_6:                               # %sw.bb.5
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	calc_overlay
	jmp	.LBB62_9
.LBB62_7:                               # %sw.bb.6
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	calc_screen
	jmp	.LBB62_9
.LBB62_8:                               # %sw.default
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB62_9:                               # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	calc_combine
.LBB62_10:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	calc_paint_func, .Lfunc_end62-calc_paint_func
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI62_0:
	.quad	.LBB62_4
	.quad	.LBB62_5
	.quad	.LBB62_6
	.quad	.LBB62_7

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI63_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI63_1:
	.quad	4643176031446892544     # double 255
.LCPI63_2:
	.quad	4607182418800017408     # double 1
.LCPI63_4:
	.quad	4611686018427387904     # double 2
.LCPI63_5:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI63_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	calc_rays_pix,@function
calc_rays_pix:                          # @calc_rays_pix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	calc+4, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB63_5
# BB#1:                                 # %lor.lhs.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	calc+160, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB63_5
# BB#2:                                 # %lor.lhs.false.2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	calc+176, %xmm0
	ja	.LBB63_5
# BB#3:                                 # %lor.lhs.false.4
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	calc+168, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB63_5
# BB#4:                                 # %lor.lhs.false.6
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	calc+184, %xmm0
	jbe	.LBB63_6
.LBB63_5:                               # %if.then
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	memset
	jmp	.LBB63_14
.LBB63_6:                               # %if.end
	movsd	calc+16, %xmm0          # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	calc+24, %xmm0          # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	divsd	calc+216, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI63_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI63_5, %xmm2        # xmm2 = mem[0],zero
	addsd	calc+224, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod_positive
	movsd	.LCPI63_4, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	calc+232, %xmm1
	callq	fmod
	movsd	.LCPI63_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	addsd	calc+232, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	divsd	calc+232, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI63_3(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movsd	calc+240, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	leaq	-84(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)
	movq	calc+208, %rsi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	xorps	%xmm0, %xmm0
	movsd	.LCPI63_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI63_1, %xmm2        # xmm2 = mem[0],zero
	movzbl	-84(%rbp), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -48(%rbp)
	addsd	-48(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -32(%rbp)
	ucomisd	-32(%rbp), %xmm0
	ja	.LBB63_8
# BB#7:                                 # %lor.lhs.false.30
	movsd	.LCPI63_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB63_9
.LBB63_8:                               # %if.then.33
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	memset
	jmp	.LBB63_14
.LBB63_9:                               # %if.end.34
	leaq	-76(%rbp), %rdi
	movq	calc+192, %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	leaq	-80(%rbp), %rdi
	movq	calc+200, %rsi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	movl	$0, -88(%rbp)
.LBB63_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -88(%rbp)
	jge	.LBB63_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB63_10 Depth=1
	movl	$255, %eax
	movslq	-88(%rbp), %rcx
	movzbl	-76(%rbp,%rcx), %edx
	movslq	-88(%rbp), %rcx
	movzbl	-80(%rbp,%rcx), %esi
	imull	%esi, %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movslq	-88(%rbp), %rcx
	movq	-8(%rbp), %r8
	movb	%dil, (%r8,%rcx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB63_10 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB63_10
.LBB63_13:                              # %for.end
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	-73(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movzbl	-77(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LCPI63_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 3(%rdx)
.LBB63_14:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	calc_rays_pix, .Lfunc_end63-calc_rays_pix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI64_0:
	.quad	4611686018427387904     # double 2
.LCPI64_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	calc_sflare_pix,@function
calc_sflare_pix:                        # @calc_sflare_pix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, (%rsi)
	movl	calc+4, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB64_2
# BB#1:                                 # %if.then
	jmp	.LBB64_15
.LBB64_2:                               # %if.end
	movq	calc+256, %rax
	movq	%rax, -40(%rbp)
.LBB64_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB64_15
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB64_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB64_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB64_3 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	40(%rax), %xmm0
	ja	.LBB64_8
# BB#6:                                 # %lor.lhs.false.4
                                        #   in Loop: Header=BB64_3 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB64_8
# BB#7:                                 # %lor.lhs.false.7
                                        #   in Loop: Header=BB64_3 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	48(%rax), %xmm0
	jbe	.LBB64_9
.LBB64_8:                               # %if.then.10
                                        #   in Loop: Header=BB64_3 Depth=1
	jmp	.LBB64_3
.LBB64_9:                               # %if.end.11
                                        #   in Loop: Header=BB64_3 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movq	-48(%rbp), %rax
	divsd	16(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	cmpl	$1, calc+304
	jne	.LBB64_11
# BB#10:                                # %if.then.16
                                        #   in Loop: Header=BB64_3 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI64_0, %xmm1        # xmm1 = mem[0],zero
	subsd	calc+56, %xmm0
	addsd	calc+296, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	calc+312, %xmm1
	callq	fmod_positive
	subsd	calc+312, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	mulsd	calc+320, %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB64_11:                              # %if.end.27
                                        #   in Loop: Header=BB64_3 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	ja	.LBB64_13
# BB#12:                                # %lor.lhs.false.29
                                        #   in Loop: Header=BB64_3 Depth=1
	movsd	.LCPI64_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB64_14
.LBB64_13:                              # %if.then.31
                                        #   in Loop: Header=BB64_3 Depth=1
	jmp	.LBB64_3
.LBB64_14:                              # %if.end.32
                                        #   in Loop: Header=BB64_3 Depth=1
	leaq	-92(%rbp), %rdi
	movq	calc+264, %rsi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	calc_get_gradient
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, -96(%rbp)
	movq	-8(%rbp), %rdi
	movl	calc+248, %ecx
	movq	calc+8, %r8
	movl	56(%r8), %r8d
	callq	calc_paint_func
	jmp	.LBB64_3
.LBB64_15:                              # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	calc_sflare_pix, .Lfunc_end64-calc_sflare_pix
	.cfi_endproc

	.align	16, 0x90
	.type	fmod_positive,@function
fmod_positive:                          # @fmod_positive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	divsd	-16(%rbp), %xmm1
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	mulsd	-16(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	fmod_positive, .Lfunc_end65-fmod_positive
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI66_0:
	.quad	4607182418800017408     # double 1
.LCPI66_1:
	.quad	4645023209222337620     # double 358.99990000000003
	.text
	.align	16, 0x90
	.type	calc_get_gradient,@function
calc_get_gradient:                      # @calc_get_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	ucomisd	-24(%rbp), %xmm1
	ja	.LBB66_2
# BB#1:                                 # %lor.lhs.false
	movsd	.LCPI66_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB66_3
.LBB66_2:                               # %if.then
	movq	-8(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB66_7
.LBB66_3:                               # %if.end
	movsd	.LCPI66_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	cvttsd2si	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-28(%rbp), %eax
	shll	$2, %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	$0, -44(%rbp)
.LBB66_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	jge	.LBB66_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB66_4 Depth=1
	movslq	-44(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI66_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	addl	$4, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dil
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rdx
	movb	%dil, (%rdx,%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB66_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB66_4
.LBB66_7:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end66:
	.size	calc_get_gradient, .Lfunc_end66-calc_get_gradient
	.cfi_endproc

	.align	16, 0x90
	.type	calc_addition,@function
calc_addition:                          # @calc_addition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB67_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -32(%rbp)
	jge	.LBB67_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB67_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movl	%edx, -28(%rbp)
	cmpl	$255, -28(%rbp)
	jg	.LBB67_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB67_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB67_5
.LBB67_4:                               # %cond.false
                                        #   in Loop: Header=BB67_1 Depth=1
	movl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB67_5
.LBB67_5:                               # %cond.end
                                        #   in Loop: Header=BB67_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB67_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB67_1
.LBB67_7:                               # %for.end
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB67_9
# BB#8:                                 # %cond.true.16
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB67_10
.LBB67_9:                               # %cond.false.19
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB67_10:                              # %cond.end.22
	movl	-40(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 3(%rdx)
	popq	%rbp
	retq
.Lfunc_end67:
	.size	calc_addition, .Lfunc_end67-calc_addition
	.cfi_endproc

	.align	16, 0x90
	.type	calc_overlay,@function
calc_overlay:                           # @calc_overlay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB68_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB68_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB68_1 Depth=1
	movl	$255, %eax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, %r8d
	subl	%esi, %r8d
	imull	%r8d, %edi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-40(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%eax, %esi
	movl	%esi, -28(%rbp)
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %r9
	movzbl	(%r9,%rcx), %eax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %r9
	movzbl	(%r9,%rcx), %esi
	imull	%esi, %eax
	cltd
	movl	-40(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %r9
	movzbl	(%r9,%rcx), %edi
	imull	%edi, %eax
	movl	-32(%rbp), %edi
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %r9
	movzbl	(%r9,%rcx), %r8d
	subl	%r8d, %esi
	imull	%esi, %edi
	addl	%edi, %eax
	cltd
	movl	-40(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %r10b
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %r9
	movb	%r10b, (%r9,%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB68_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB68_1
.LBB68_4:                               # %for.end
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB68_6
# BB#5:                                 # %cond.true
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB68_7
.LBB68_6:                               # %cond.false
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB68_7:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 3(%rdx)
	popq	%rbp
	retq
.Lfunc_end68:
	.size	calc_overlay, .Lfunc_end68-calc_overlay
	.cfi_endproc

	.align	16, 0x90
	.type	calc_screen,@function
calc_screen:                            # @calc_screen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB69_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -28(%rbp)
	jge	.LBB69_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	$255, %eax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, %r8d
	subl	%esi, %r8d
	imull	%r8d, %edi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%eax, %esi
	movb	%sil, %r9b
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %r10
	movb	%r9b, (%r10,%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB69_1
.LBB69_4:                               # %for.end
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB69_6
# BB#5:                                 # %cond.true
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB69_7
.LBB69_6:                               # %cond.false
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB69_7:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 3(%rdx)
	popq	%rbp
	retq
.Lfunc_end69:
	.size	calc_screen, .Lfunc_end69-calc_screen
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI70_0:
	.quad	4607182418800017408     # double 1
.LCPI70_1:
	.quad	4679169781532721152     # double 65025
.LCPI70_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	calc_combine,@function
calc_combine:                           # @calc_combine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movsd	.LCPI70_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI70_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI70_2, %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	3(%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm4
	divsd	%xmm3, %xmm4
	movsd	%xmm4, -40(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	3(%rdx), %ecx
	imull	-28(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -48(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_1
	jp	.LBB70_1
	jmp	.LBB70_2
.LBB70_1:                               # %if.then
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB70_3
.LBB70_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB70_3:                               # %if.end
	movsd	.LCPI70_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB70_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -76(%rbp)
	jge	.LBB70_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB70_4 Depth=1
	movslq	-76(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-76(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB70_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB70_4
.LBB70_7:                               # %for.end
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI70_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 3(%rdx)
	popq	%rbp
	retq
.Lfunc_end70:
	.size	calc_combine, .Lfunc_end70-calc_combine
	.cfi_endproc

	.align	16, 0x90
	.type	calc_deinit,@function
calc_deinit:                            # @calc_deinit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	cmpl	$0, calc
	jne	.LBB71_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.87, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB71_3
.LBB71_2:                               # %if.end
	movabsq	$g_free, %rsi
	movq	calc+256, %rdi
	callq	g_list_free_full
	movq	calc+112, %rdi
	callq	g_free
	movq	calc+120, %rdi
	callq	g_free
	movq	calc+128, %rdi
	callq	g_free
	movq	calc+192, %rdi
	callq	g_free
	movq	calc+200, %rdi
	callq	g_free
	movq	calc+208, %rdi
	callq	g_free
	movq	calc+264, %rdi
	callq	g_free
	movq	calc+272, %rdi
	callq	g_free
	movq	calc+280, %rdi
	callq	g_free
	movl	$0, calc
.LBB71_3:                               # %return
	popq	%rbp
	retq
.Lfunc_end71:
	.size	calc_deinit, .Lfunc_end71-calc_deinit
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_position_entry_callback,@function
dlg_position_entry_callback:            # @dlg_position_entry_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, -24(%rbp)
	movl	pvals, %esi
	cmpl	-20(%rbp), %esi
	jne	.LBB72_2
# BB#1:                                 # %lor.lhs.false
	movl	pvals+4, %eax
	cmpl	-24(%rbp), %eax
	je	.LBB72_3
.LBB72_2:                               # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, pvals
	movl	-24(%rbp), %eax
	movl	%eax, pvals+4
	callq	dlg_preview_update
.LBB72_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	dlg_position_entry_callback, .Lfunc_end72-dlg_position_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_new_callback,@function
dlg_selector_new_callback:              # @dlg_selector_new_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp232:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.116, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.117, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.118, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.29, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$dlg_selector_new_ok_callback, %rdi
	movq	dlg, %r9
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end73:
	.size	dlg_selector_new_callback, .Lfunc_end73-dlg_selector_new_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_edit_callback,@function
dlg_selector_edit_callback:             # @dlg_selector_edit_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	dlg, %rsi
	movq	24(%rsi), %rdi
	callq	preview_render_end
	xorl	%esi, %esi
	movq	dlg, %rdi
	movq	16(%rdi), %rdi
	callq	gtk_widget_set_sensitive
	movq	dlg, %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dlg_selector_edit_done_callback, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	dlg, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	ed_run
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	dlg_selector_edit_callback, .Lfunc_end74-dlg_selector_edit_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_copy_callback,@function
dlg_selector_copy_callback:             # @dlg_selector_copy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp239:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.170, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	dlg, %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.171, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.172, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.29, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$dlg_selector_copy_ok_callback, %rdi
	movq	-40(%rbp), %r9
	movq	dlg, %r10
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end75:
	.size	dlg_selector_copy_callback, .Lfunc_end75-dlg_selector_copy_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_delete_callback,@function
dlg_selector_delete_callback:           # @dlg_selector_delete_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp243:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$1, num_gflares
	jg	.LBB76_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.175, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB76_3
.LBB76_2:                               # %if.end
	xorl	%esi, %esi
	movq	dlg, %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.176, %rdi
	callq	gettext
	movq	dlg, %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.177, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.178, %r8
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.68, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$dlg_selector_do_delete_callback, %r11
	movq	dlg, %rbx
	movq	16(%rbx), %rbx
	movq	-40(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	gimp_query_boolean_box
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
.LBB76_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end76:
	.size	dlg_selector_delete_callback, .Lfunc_end76-dlg_selector_delete_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_list_item_callback,@function
dlg_selector_list_item_callback:        # @dlg_selector_list_item_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-40(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB77_2
# BB#1:                                 # %if.then
	movq	dlg, %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	dlg, %rdi
	addq	$8, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB77_2:                               # %if.end
	callq	dlg_preview_update
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	dlg_selector_list_item_callback, .Lfunc_end77-dlg_selector_list_item_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_setup_listbox,@function
dlg_selector_setup_listbox:             # @dlg_selector_setup_listbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	gflares_list, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
.LBB78_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB78_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB78_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	dlg, %rax
	movq	96(%rax), %rdi
	callq	gtk_list_store_append
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	dlg, %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %r9
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-16(%rbp), %rcx
	movq	dlg, %rsi
	cmpq	8(%rsi), %rcx
	jne	.LBB78_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB78_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	dlg, %rax
	movq	104(%rax), %rdi
	callq	gtk_tree_selection_select_iter
.LBB78_4:                               # %if.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB78_1
.LBB78_5:                               # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	dlg_selector_setup_listbox, .Lfunc_end78-dlg_selector_setup_listbox
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_new_ok_callback,@function
dlg_selector_new_ok_callback:           # @dlg_selector_new_ok_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB79_3
# BB#2:                                 # %if.then
	jmp	.LBB79_4
.LBB79_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.dlg_selector_new_ok_callback, %rsi
	movabsq	$.L.str.119, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB79_8
.LBB79_4:                               # %if.end
	jmp	.LBB79_5
.LBB79_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gflares_list_lookup
	cmpq	$0, %rax
	je	.LBB79_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.120, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB79_8
.LBB79_7:                               # %if.end.3
	movq	-16(%rbp), %rdi
	callq	gflare_new_with_default
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gflares_list_insert
	leaq	-64(%rbp), %rsi
	movl	%eax, -68(%rbp)
	movq	dlg, %rdi
	movq	96(%rdi), %rdi
	movl	-68(%rbp), %edx
	callq	gtk_list_store_insert
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	dlg, %rdi
	movq	96(%rdi), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %r9
	movl	$-1, (%rsp)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
	leaq	-64(%rbp), %rsi
	movq	dlg, %rcx
	movq	104(%rcx), %rdi
	callq	gtk_tree_selection_select_iter
	movq	-32(%rbp), %rcx
	movq	dlg, %rsi
	movq	%rcx, 8(%rsi)
	callq	dlg_preview_update
.LBB79_8:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	dlg_selector_new_ok_callback, .Lfunc_end79-dlg_selector_new_ok_callback
	.cfi_endproc

	.align	16, 0x90
	.type	preview_render_end,@function
preview_render_end:                     # @preview_render_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 64(%rdi)
	jbe	.LBB80_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 64(%rcx)
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB80_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	jbe	.LBB80_6
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB80_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rsi
	callq	*%rax
.LBB80_5:                               # %if.end.7
	movq	-8(%rbp), %rax
	movl	68(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 68(%rcx)
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB80_6:                               # %if.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	preview_render_end, .Lfunc_end80-preview_render_end
	.cfi_endproc

	.align	16, 0x90
	.type	ed_run,@function
ed_run:                                 # @ed_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp259:
	.cfi_offset %rbx, -56
.Ltmp260:
	.cfi_offset %r12, -48
.Ltmp261:
	.cfi_offset %r13, -40
.Ltmp262:
	.cfi_offset %r14, -32
.Ltmp263:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	cmpq	$0, ed
	jne	.LBB81_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$96, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, ed
.LBB81_2:                               # %if.end
	movq	ed, %rax
	movl	$1, (%rax)
	movq	ed, %rax
	movl	$0, 4(%rax)
	movq	-56(%rbp), %rax
	movq	ed, %rcx
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	gflare_dup
	movabsq	$.L.str.121, %rdi
	movq	ed, %rcx
	movq	%rax, 32(%rcx)
	movq	-64(%rbp), %rax
	movq	ed, %rcx
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	ed, %rcx
	movq	%rax, 16(%rcx)
	callq	gettext
	movq	-48(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.122, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.67, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.29, %r9
	movl	$1, %edx
	movabsq	$.L.str.68, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.69, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movq	-136(%rbp), %r13        # 8-byte Reload
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movq	%r13, %rdx
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r11, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movq	%r15, -160(%rbp)        # 8-byte Spill
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	movl	%r10d, -168(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -80(%rbp)
	movq	ed, %rdx
	movq	%rax, 40(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.123, %rsi
	movabsq	$ed_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	ed, %r15
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.124, %rsi
	movabsq	$ed_destroy_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	ed, %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movss	%xmm0, -236(%rbp)       # 4-byte Spill
	movss	-236(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-236(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-236(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$256, %ecx              # imm = 0x100
	movabsq	$ed_preview_init_func, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movabsq	$ed_preview_render_func, %r8
	movabsq	$ed_preview_deinit_func, %rsi
	movl	%ecx, %edi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, %rcx
	movq	%rax, %r9
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	preview_new
	movq	ed, %rcx
	movq	%rax, 48(%rcx)
	movq	ed, %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$258, %esi              # imm = 0x102
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	ed, %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.71, %rsi
	movabsq	$dlg_preview_handle_event, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	xorl	%r9d, %r9d
	movq	ed, %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	-304(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	ed_preview_calc_window
	callq	gtk_notebook_new
	movq	ed, %rcx
	movq	%rax, 56(%rcx)
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-88(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	ed, %rdi
	movq	-112(%rbp), %rsi
	callq	ed_make_page_general
	movq	ed, %rdi
	movq	-112(%rbp), %rsi
	callq	ed_make_page_glow
	movq	ed, %rdi
	movq	-112(%rbp), %rsi
	callq	ed_make_page_rays
	movq	ed, %rdi
	movq	-112(%rbp), %rsi
	callq	ed_make_page_sflare
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	ed, %rax
	movl	$0, (%rax)
	callq	ed_preview_update
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end81:
	.size	ed_run, .Lfunc_end81-ed_run
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_edit_done_callback,@function
dlg_selector_edit_done_callback:        # @dlg_selector_edit_done_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	dlg, %rsi
	movq	16(%rsi), %rdi
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	cmpl	$0, -4(%rbp)
	je	.LBB82_2
# BB#1:                                 # %if.then
	movq	dlg, %rax
	movq	8(%rax), %rdi
	callq	gflare_save
.LBB82_2:                               # %if.end
	callq	dlg_preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	dlg_selector_edit_done_callback, .Lfunc_end82-dlg_selector_edit_done_callback
	.cfi_endproc

	.align	16, 0x90
	.type	ed_response,@function
ed_response:                            # @ed_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB83_2
	jmp	.LBB83_5
.LBB83_5:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB83_3
	jmp	.LBB83_1
.LBB83_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	callq	gradient_menu_rescan
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	callq	ed_preview_update
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB83_4
.LBB83_2:                               # %sw.bb.2
	movq	-24(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gflare_copy
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB83_4
.LBB83_3:                               # %sw.default
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_destroy
.LBB83_4:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	ed_response, .Lfunc_end83-ed_response
	.cfi_endproc

	.align	16, 0x90
	.type	ed_destroy_callback,@function
ed_destroy_callback:                    # @ed_destroy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	callq	preview_free
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	gflare_free
	movq	-16(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB84_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rsi
	callq	*%rax
.LBB84_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	ed_destroy_callback, .Lfunc_end84-ed_destroy_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI85_0:
	.quad	4638707616191610880     # double 128
	.text
	.align	16, 0x90
	.type	ed_preview_init_func,@function
ed_preview_init_func:                   # @ed_preview_init_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	ed, %rsi
	cmpl	$0, 88(%rsi)
	jne	.LBB85_8
# BB#1:                                 # %if.then
	movq	ed(%rip), %rax
	movl	64(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	ja	.LBB85_6
# BB#10:                                # %if.then
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI85_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB85_2:                               # %sw.bb
	movl	$7, -28(%rbp)
	jmp	.LBB85_7
.LBB85_3:                               # %sw.bb.1
	movl	$1, -28(%rbp)
	jmp	.LBB85_7
.LBB85_4:                               # %sw.bb.2
	movl	$2, -28(%rbp)
	jmp	.LBB85_7
.LBB85_5:                               # %sw.bb.3
	movl	$4, -28(%rbp)
	jmp	.LBB85_7
.LBB85_6:                               # %sw.default
	movabsq	$.L.str.125, %rdi
	movb	$0, %al
	callq	g_warning
.LBB85_7:                               # %sw.epilog
	movsd	.LCPI85_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	ed, %rax
	movq	32(%rax), %rdi
	movl	-28(%rbp), %esi
	movsd	pvals+32, %xmm5         # xmm5 = mem[0],zero
	movsd	pvals+40, %xmm6         # xmm6 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-64(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-64(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	calc_init_params
	movq	ed, %rax
	movl	$1, 88(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB85_9
.LBB85_8:                               # %if.end
	callq	calc_init_progress
	movl	%eax, -4(%rbp)
.LBB85_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	ed_preview_init_func, .Lfunc_end85-ed_preview_init_func
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI85_0:
	.quad	.LBB85_2
	.quad	.LBB85_3
	.quad	.LBB85_4
	.quad	.LBB85_5

	.text
	.align	16, 0x90
	.type	ed_preview_render_func,@function
ed_preview_render_func:                 # @ed_preview_render_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	ed(%rip), %rcx
	movl	64(%rcx), %edx
	addl	$-2, %edx
	movl	%edx, %ecx
	subl	$3, %edx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	ja	.LBB86_5
# BB#7:                                 # %entry
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI86_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB86_1:                               # %sw.bb
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ed_preview_render_general
	jmp	.LBB86_6
.LBB86_2:                               # %sw.bb.1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ed_preview_render_glow
	jmp	.LBB86_6
.LBB86_3:                               # %sw.bb.2
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ed_preview_render_rays
	jmp	.LBB86_6
.LBB86_4:                               # %sw.bb.3
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ed_preview_render_sflare
	jmp	.LBB86_6
.LBB86_5:                               # %sw.default
	movabsq	$.L.str.126, %rdi
	movb	$0, %al
	callq	g_warning
.LBB86_6:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	ed_preview_render_func, .Lfunc_end86-ed_preview_render_func
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI86_0:
	.quad	.LBB86_1
	.quad	.LBB86_2
	.quad	.LBB86_3
	.quad	.LBB86_4

	.text
	.align	16, 0x90
	.type	ed_preview_deinit_func,@function
ed_preview_deinit_func:                 # @ed_preview_deinit_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ed, %rsi
	cmpl	$0, 88(%rsi)
	je	.LBB87_2
# BB#1:                                 # %if.then
	callq	calc_deinit
	movq	ed, %rax
	movl	$0, 88(%rax)
.LBB87_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	ed_preview_deinit_func, .Lfunc_end87-ed_preview_deinit_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI88_0:
	.quad	4643211215818981376     # double 256
.LCPI88_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	ed_preview_calc_window,@function
ed_preview_calc_window:                 # @ed_preview_calc_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI88_0, %xmm0        # xmm0 = mem[0],zero
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI88_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	setae	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB88_2
# BB#1:                                 # %if.then
	movsd	.LCPI88_1, %xmm0        # xmm0 = mem[0],zero
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI88_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LCPI88_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	dlg(%rip), %rax
	movq	$0, 32(%rax)
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movq	dlg(%rip), %rax
	movsd	%xmm1, 48(%rax)
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movq	dlg(%rip), %rax
	movsd	%xmm1, 40(%rax)
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movq	dlg, %rax
	movsd	%xmm1, 56(%rax)
	jmp	.LBB88_3
.LBB88_2:                               # %if.else
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI88_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	movsd	.LCPI88_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	dlg(%rip), %rax
	movsd	%xmm2, 32(%rax)
	movq	drawable(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	dlg(%rip), %rax
	movsd	%xmm0, 48(%rax)
	movq	dlg(%rip), %rax
	movq	$0, 40(%rax)
	movq	drawable(%rip), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	dlg, %rax
	movsd	%xmm0, 56(%rax)
.LBB88_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end88:
	.size	ed_preview_calc_window, .Lfunc_end88-ed_preview_calc_window
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI89_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI89_1:
	.quad	4636737291354636288     # double 100
.LCPI89_2:
	.quad	4607182418800017408     # double 1
.LCPI89_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	ed_make_page_general,@function
ed_make_page_general:                   # @ed_make_page_general
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.127, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI89_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI89_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI89_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-24(%rbp), %rdi
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-152(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-152(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	ed_mode_menu_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.129, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI89_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-56(%rbp), %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.130, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI89_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI89_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI89_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-24(%rbp), %rdi
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	addq	$32, %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	ed_mode_menu_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.129, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI89_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-56(%rbp), %r8
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.131, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %ecx        # 4-byte Reload
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI89_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI89_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI89_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-24(%rbp), %rdi
	movsd	48(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	ed_mode_menu_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.129, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI89_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-56(%rbp), %r8
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-16(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.132, %rdi
	movq	-32(%rbp), %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movabsq	$.L.str.133, %rsi
	movabsq	$ed_page_map_callback, %rcx
	movl	$2, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -516(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end89:
	.size	ed_make_page_general, .Lfunc_end89-ed_make_page_general
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI90_0:
	.quad	-4582834833314545664    # double -180
.LCPI90_1:
	.quad	4640537203540230144     # double 180
.LCPI90_2:
	.quad	4607182418800017408     # double 1
.LCPI90_3:
	.quad	4624633867356078080     # double 15
.LCPI90_4:
	.quad	4641240890982006784     # double 200
.LCPI90_5:
	.quad	4621819117588971520     # double 10
.LCPI90_6:
	.quad	4746794007244308480     # double 2147483647
	.text
	.align	16, 0x90
	.type	ed_make_page_glow,@function
ed_make_page_glow:                      # @ed_make_page_glow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp291:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.138, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-32(%rbp), %rax
	addq	$60, %rax
	movq	-32(%rbp), %rsi
	addq	$60, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gradient_menu_new
	movabsq	$.L.str.139, %rdi
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-40(%rbp), %r8
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-32(%rbp), %rax
	addq	$316, %rax              # imm = 0x13C
	movq	-32(%rbp), %rcx
	addq	$316, %rcx              # imm = 0x13C
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gradient_menu_new
	movabsq	$.L.str.140, %rdi
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-40(%rbp), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-32(%rbp), %rax
	addq	$572, %rax              # imm = 0x23C
	movq	-32(%rbp), %rcx
	addq	$572, %rcx              # imm = 0x23C
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gradient_menu_new
	movabsq	$.L.str.141, %rdi
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-40(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.95, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$0, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.142, %rdi
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI90_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI90_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI90_5, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %ecx
	movsd	.LCPI90_6, %xmm6        # xmm6 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-32(%rbp), %r10
	movsd	832(%r10), %xmm1        # xmm1 = mem[0],zero
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-248(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$832, %rdi              # imm = 0x340
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.143, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -76(%rbp)
	movl	%r9d, -292(%rbp)        # 4-byte Spill
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI90_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI90_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI90_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI90_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-32(%rbp), %rdx
	movsd	840(%rdx), %xmm5        # xmm5 = mem[0],zero
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-320(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -324(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$840, %rdi              # imm = 0x348
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.144, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -76(%rbp)
	movl	%r9d, -372(%rbp)        # 4-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI90_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI90_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI90_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI90_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-32(%rbp), %rdx
	movsd	848(%rdx), %xmm5        # xmm5 = mem[0],zero
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -404(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$848, %rdi              # imm = 0x350
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.145, %rdi
	movq	-48(%rbp), %rsi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movabsq	$.L.str.133, %rsi
	movabsq	$ed_page_map_callback, %rcx
	movl	$3, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end90:
	.size	ed_make_page_glow, .Lfunc_end90-ed_make_page_glow
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI91_0:
	.quad	4607182418800017408     # double 1
.LCPI91_1:
	.quad	4636737291354636288     # double 100
.LCPI91_2:
	.quad	4621819117588971520     # double 10
.LCPI91_3:
	.quad	4688247212092686336     # double 262144
.LCPI91_4:
	.quad	4643985272004935680     # double 300
.LCPI91_5:
	.quad	4746794007244308480     # double 2147483647
.LCPI91_6:
	.quad	-4582834833314545664    # double -180
.LCPI91_7:
	.quad	4640537203540230144     # double 180
.LCPI91_8:
	.quad	4624633867356078080     # double 15
.LCPI91_9:
	.quad	4641240890982006784     # double 200
	.text
	.align	16, 0x90
	.type	ed_make_page_rays,@function
ed_make_page_rays:                      # @ed_make_page_rays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp295:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.138, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$ed_gradient_menu_callback, %rdi
	movl	$0, -76(%rbp)
	movq	-32(%rbp), %rax
	addq	$856, %rax              # imm = 0x358
	movq	-32(%rbp), %rsi
	addq	$856, %rsi              # imm = 0x358
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gradient_menu_new
	movabsq	$.L.str.139, %rdi
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -76(%rbp)
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-40(%rbp), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-32(%rbp), %rax
	addq	$1112, %rax             # imm = 0x458
	movq	-32(%rbp), %rcx
	addq	$1112, %rcx             # imm = 0x458
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gradient_menu_new
	movabsq	$.L.str.140, %rdi
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-40(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-32(%rbp), %rax
	addq	$1368, %rax             # imm = 0x558
	movq	-32(%rbp), %rcx
	addq	$1368, %rcx             # imm = 0x558
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gradient_menu_new
	movabsq	$.L.str.141, %rdi
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -172(%rbp)        # 4-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-40(%rbp), %r8
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.95, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$0, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.142, %rdi
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI91_9, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI91_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI91_2, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %ecx
	movsd	.LCPI91_5, %xmm6        # xmm6 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-32(%rbp), %r11
	movsd	1624(%r11), %xmm1       # xmm1 = mem[0],zero
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	-236(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-272(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$1624, %rdi             # imm = 0x658
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	-288(%rbp), %r8         # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.143, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -316(%rbp)        # 4-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI91_6, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI91_7, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI91_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI91_8, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-32(%rbp), %rdx
	movsd	1632(%rdx), %xmm5       # xmm5 = mem[0],zero
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-316(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-344(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-344(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -348(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$1632, %rdi             # imm = 0x660
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	-368(%rbp), %r8         # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.144, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -396(%rbp)        # 4-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI91_6, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI91_7, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI91_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI91_8, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-32(%rbp), %rdx
	movsd	1640(%rdx), %xmm5       # xmm5 = mem[0],zero
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	-396(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$1640, %rdi             # imm = 0x668
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	-448(%rbp), %r8         # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.146, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -476(%rbp)        # 4-byte Spill
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI91_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI91_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI91_2, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI91_5, %xmm6        # xmm6 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-32(%rbp), %rdx
	cvtsi2sdl	1648(%rdx), %xmm1
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movl	-476(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-504(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$1648, %rdi             # imm = 0x670
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movq	-520(%rbp), %r8         # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.147, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -548(%rbp)        # 4-byte Spill
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI91_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI91_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI91_2, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm5, %xmm5
	movsd	.LCPI91_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-32(%rbp), %rdx
	movsd	1656(%rdx), %xmm1       # xmm1 = mem[0],zero
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	-548(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-576(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -580(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$1656, %rdi             # imm = 0x678
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	movq	-600(%rbp), %r8         # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.148, %rdi
	movq	-48(%rbp), %rsi
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	-632(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movabsq	$.L.str.133, %rsi
	movabsq	$ed_page_map_callback, %rcx
	movl	$4, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end91:
	.size	ed_make_page_rays, .Lfunc_end91-ed_make_page_rays
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI92_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI92_1:
	.quad	-4582834833314545664    # double -180
.LCPI92_2:
	.quad	4640537203540230144     # double 180
.LCPI92_3:
	.quad	4607182418800017408     # double 1
.LCPI92_4:
	.quad	4624633867356078080     # double 15
.LCPI92_5:
	.quad	4641240890982006784     # double 200
.LCPI92_6:
	.quad	4621819117588971520     # double 10
.LCPI92_7:
	.quad	4746794007244308480     # double 2147483647
	.text
	.align	16, 0x90
	.type	ed_make_page_sflare,@function
ed_make_page_sflare:                    # @ed_make_page_sflare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp296:
	.cfi_def_cfa_offset 16
.Ltmp297:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp298:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1104, %rsp             # imm = 0x450
.Ltmp299:
	.cfi_offset %rbx, -32
.Ltmp300:
	.cfi_offset %r14, -24
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	$0, -88(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.138, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
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
	callq	gtk_container_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-40(%rbp), %rax
	addq	$1664, %rax             # imm = 0x680
	movq	-40(%rbp), %rsi
	addq	$1664, %rsi             # imm = 0x680
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	callq	gradient_menu_new
	movabsq	$.L.str.139, %rdi
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-48(%rbp), %r8
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-40(%rbp), %rax
	addq	$1920, %rax             # imm = 0x780
	movq	-40(%rbp), %rcx
	addq	$1920, %rcx             # imm = 0x780
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gradient_menu_new
	movabsq	$.L.str.149, %rdi
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-48(%rbp), %r8
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movabsq	$ed_gradient_menu_callback, %rdi
	movq	-40(%rbp), %rax
	addq	$2176, %rax             # imm = 0x880
	movq	-40(%rbp), %rcx
	addq	$2176, %rcx             # imm = 0x880
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gradient_menu_new
	movabsq	$.L.str.150, %rdi
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-48(%rbp), %r8
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	ed_put_gradient_menu
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.95, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %ecx        # 4-byte Reload
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$0, -404(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.142, %rdi
	movl	-404(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -404(%rbp)
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI92_5, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI92_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI92_6, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %ecx
	movsd	.LCPI92_7, %xmm6        # xmm6 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-40(%rbp), %r10
	movsd	2432(%r10), %xmm1       # xmm1 = mem[0],zero
	movq	-552(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	-540(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$2432, %rdi             # imm = 0x980
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	movq	-592(%rbp), %r8         # 8-byte Reload
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.143, %rdi
	movl	-404(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -404(%rbp)
	movl	%r9d, -620(%rbp)        # 4-byte Spill
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI92_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI92_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI92_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI92_4, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-40(%rbp), %rdx
	movsd	2440(%rdx), %xmm5       # xmm5 = mem[0],zero
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movl	-620(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-648(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-648(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -652(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$2440, %rdi             # imm = 0x988
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	movq	-672(%rbp), %r8         # 8-byte Reload
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.144, %rdi
	movl	-404(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -404(%rbp)
	movl	%r9d, -700(%rbp)        # 4-byte Spill
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$80, %r8d
	movl	$6, %r9d
	movsd	.LCPI92_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI92_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI92_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI92_4, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-40(%rbp), %rdx
	movsd	2448(%rdx), %xmm5       # xmm5 = mem[0],zero
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-728(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-728(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -732(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.93, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$2448, %rdi             # imm = 0x990
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-744(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	movq	-752(%rbp), %r8         # 8-byte Reload
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.151, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
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
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.152, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.153, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.73, %rsi
	movabsq	$ed_shape_radio_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rdi
	addq	$2456, %rdi             # imm = 0x998
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-808(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	cmpl	$0, 2456(%rcx)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
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
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -844(%rbp)        # 4-byte Spill
	movl	-844(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.154, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	-24(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.153, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.73, %rsi
	movabsq	$ed_shape_radio_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rdi
	addq	$2456, %rdi             # imm = 0x998
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	cmpl	$1, 2456(%rcx)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-96(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
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
	callq	gtk_entry_new
	movq	-24(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.59, %rdx
	leaq	-400(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	2460(%rax), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-136(%rbp), %rdx
	movl	%eax, -908(%rbp)        # 4-byte Spill
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movabsq	$.L.str.111, %rsi
	movabsq	$ed_ientry_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rdi
	addq	$2460, %rdi             # imm = 0x99C
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-928(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.102, %rsi
	movabsq	$.L.str.103, %rcx
	movl	$2, %r8d
	movq	-112(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-952(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.155, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI92_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-104(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	movl	-988(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	addq	$2464, %rax             # imm = 0x9A0
	movq	-40(%rbp), %rsi
	addq	$2468, %rsi             # imm = 0x9A4
	movq	%rax, %rdi
	callq	gimp_random_seed_new
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -1004(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-1004(%rbp), %r8d       # 4-byte Reload
	movl	%ecx, -1008(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	-1008(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.156, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movabsq	$.L.str.93, %rsi
	movabsq	$ed_preview_update, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	movq	-1024(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.157, %rdi
	movq	-56(%rbp), %rsi
	movq	%rsi, -1048(%rbp)       # 8-byte Spill
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movabsq	$.L.str.133, %rsi
	movabsq	$ed_page_map_callback, %rcx
	movl	$5, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end92:
	.size	ed_make_page_sflare, .Lfunc_end92-ed_make_page_sflare
	.cfi_endproc

	.align	16, 0x90
	.type	ed_preview_update,@function
ed_preview_update:                      # @ed_preview_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
.Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp303:
	.cfi_def_cfa_register %rbp
	movq	ed, %rax
	cmpl	$0, (%rax)
	je	.LBB93_2
# BB#1:                                 # %if.then
	jmp	.LBB93_3
.LBB93_2:                               # %if.end
	movq	ed, %rax
	movl	$0, 88(%rax)
	movq	ed, %rax
	movq	48(%rax), %rdi
	callq	preview_render_start
.LBB93_3:                               # %return
	popq	%rbp
	retq
.Lfunc_end93:
	.size	ed_preview_update, .Lfunc_end93-ed_preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_menu_rescan,@function
gradient_menu_rescan:                   # @gradient_menu_rescan
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
.Ltmp305:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp306:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	gradient_menus, %rax
	movq	%rax, -8(%rbp)
.LBB94_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB94_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB94_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_list_store_clear
	jmp	.LBB94_1
.LBB94_3:                               # %while.end
	callq	gm_gradient_get_list
	movq	gradient_menus, %rax
	movq	%rax, -8(%rbp)
.LBB94_4:                               # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB94_6
# BB#5:                                 # %while.body.9
                                        #   in Loop: Header=BB94_4 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	gm_gradient_combo_fill
	jmp	.LBB94_4
.LBB94_6:                               # %while.end.12
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	gradient_menu_rescan, .Lfunc_end94-gradient_menu_rescan
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_copy,@function
gflare_copy:                            # @gflare_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp309:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2472, %eax             # imm = 0x9A8
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	gflare_copy, .Lfunc_end95-gflare_copy
	.cfi_endproc

	.align	16, 0x90
	.type	gm_gradient_combo_fill,@function
gm_gradient_combo_fill:                 # @gm_gradient_combo_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
.Ltmp311:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp312:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB96_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	num_gradient_names, %eax
	jge	.LBB96_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB96_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	gradient_names, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB96_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB96_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB96_4:                               # %if.end
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_int_combo_box_append
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB96_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB96_1
.LBB96_6:                               # %for.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	gm_gradient_combo_fill, .Lfunc_end96-gm_gradient_combo_fill
	.cfi_endproc

	.align	16, 0x90
	.type	preview_free,@function
preview_free:                           # @preview_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp313:
	.cfi_def_cfa_offset 16
.Ltmp314:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp315:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	preview_render_end
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	preview_free, .Lfunc_end97-preview_free
	.cfi_endproc

	.align	16, 0x90
	.type	ed_preview_render_general,@function
ed_preview_render_general:              # @ed_preview_render_general
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp316:
	.cfi_def_cfa_offset 16
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp318:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB98_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_3 Depth 2
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB98_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB98_1 Depth=1
	movabsq	$ed_preview_render_general.src_pix, %rsi
	leaq	-24(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	calc_gflare_pix
	movzbl	-21(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -20(%rbp)
.LBB98_3:                               # %for.cond.3
                                        #   Parent Loop BB98_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -20(%rbp)
	jge	.LBB98_6
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB98_3 Depth=2
	movl	$255, %eax
	movslq	-20(%rbp), %rcx
	movzbl	-24(%rbp,%rcx), %edx
	imull	-28(%rbp), %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movq	-8(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -8(%rbp)
	movb	%dil, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB98_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB98_3
.LBB98_6:                               # %for.end
                                        #   in Loop: Header=BB98_1 Depth=1
	jmp	.LBB98_7
.LBB98_7:                               # %for.inc.10
                                        #   in Loop: Header=BB98_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB98_1
.LBB98_8:                               # %for.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	ed_preview_render_general, .Lfunc_end98-ed_preview_render_general
	.cfi_endproc

	.align	16, 0x90
	.type	ed_preview_render_glow,@function
ed_preview_render_glow:                 # @ed_preview_render_glow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
.Ltmp320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp321:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB99_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_3 Depth 2
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB99_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB99_1 Depth=1
	leaq	-24(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	calc_glow_pix
	movl	$0, -20(%rbp)
.LBB99_3:                               # %for.cond.2
                                        #   Parent Loop BB99_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -20(%rbp)
	jge	.LBB99_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB99_3 Depth=2
	movl	$255, %eax
	movslq	-20(%rbp), %rcx
	movzbl	-24(%rbp,%rcx), %edx
	movzbl	-21(%rbp), %esi
	imull	%esi, %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movq	-8(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -8(%rbp)
	movb	%dil, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB99_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB99_3
.LBB99_6:                               # %for.end
                                        #   in Loop: Header=BB99_1 Depth=1
	jmp	.LBB99_7
.LBB99_7:                               # %for.inc.10
                                        #   in Loop: Header=BB99_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB99_1
.LBB99_8:                               # %for.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	ed_preview_render_glow, .Lfunc_end99-ed_preview_render_glow
	.cfi_endproc

	.align	16, 0x90
	.type	ed_preview_render_rays,@function
ed_preview_render_rays:                 # @ed_preview_render_rays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
.Ltmp323:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp324:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB100_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB100_3 Depth 2
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB100_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB100_1 Depth=1
	leaq	-24(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	calc_rays_pix
	movl	$0, -20(%rbp)
.LBB100_3:                              # %for.cond.2
                                        #   Parent Loop BB100_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -20(%rbp)
	jge	.LBB100_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB100_3 Depth=2
	movl	$255, %eax
	movslq	-20(%rbp), %rcx
	movzbl	-24(%rbp,%rcx), %edx
	movzbl	-21(%rbp), %esi
	imull	%esi, %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movq	-8(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -8(%rbp)
	movb	%dil, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB100_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB100_3
.LBB100_6:                              # %for.end
                                        #   in Loop: Header=BB100_1 Depth=1
	jmp	.LBB100_7
.LBB100_7:                              # %for.inc.10
                                        #   in Loop: Header=BB100_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB100_1
.LBB100_8:                              # %for.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	ed_preview_render_rays, .Lfunc_end100-ed_preview_render_rays
	.cfi_endproc

	.align	16, 0x90
	.type	ed_preview_render_sflare,@function
ed_preview_render_sflare:               # @ed_preview_render_sflare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
.Ltmp326:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp327:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB101_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB101_3 Depth 2
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB101_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB101_1 Depth=1
	movabsq	$ed_preview_render_sflare.src_pix, %rsi
	leaq	-24(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	callq	calc_sflare_pix
	movl	$0, -20(%rbp)
.LBB101_3:                              # %for.cond.2
                                        #   Parent Loop BB101_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -20(%rbp)
	jge	.LBB101_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB101_3 Depth=2
	movl	$255, %eax
	movslq	-20(%rbp), %rcx
	movzbl	-24(%rbp,%rcx), %edx
	movzbl	-21(%rbp), %esi
	imull	%esi, %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movq	-8(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -8(%rbp)
	movb	%dil, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB101_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB101_3
.LBB101_6:                              # %for.end
                                        #   in Loop: Header=BB101_1 Depth=1
	jmp	.LBB101_7
.LBB101_7:                              # %for.inc.10
                                        #   in Loop: Header=BB101_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB101_1
.LBB101_8:                              # %for.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	ed_preview_render_sflare, .Lfunc_end101-ed_preview_render_sflare
	.cfi_endproc

	.align	16, 0x90
	.type	ed_mode_menu_new,@function
ed_mode_menu_new:                       # @ed_mode_menu_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp328:
	.cfi_def_cfa_offset 16
.Ltmp329:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp330:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4, %eax
	movabsq	$gflare_menu_modes, %rsi
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	gimp_int_combo_box_new_array
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$ed_mode_menu_callback, %rsi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-16(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	ed_mode_menu_new, .Lfunc_end102-ed_mode_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	ed_page_map_callback,@function
ed_page_map_callback:                   # @ed_page_map_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp331:
	.cfi_def_cfa_offset 16
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp333:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	ed, %rsi
	movl	%eax, 64(%rsi)
	callq	ed_preview_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	ed_page_map_callback, .Lfunc_end103-ed_page_map_callback
	.cfi_endproc

	.align	16, 0x90
	.type	ed_mode_menu_callback,@function
ed_mode_menu_callback:                  # @ed_mode_menu_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp334:
	.cfi_def_cfa_offset 16
.Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp336:
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
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	ed_preview_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	ed_mode_menu_callback, .Lfunc_end104-ed_mode_menu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_menu_new,@function
gradient_menu_new:                      # @gradient_menu_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp337:
	.cfi_def_cfa_offset 16
.Ltmp338:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp339:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$288, %eax              # imm = 0x120
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	gimp_preview_area_new
	movl	$80, %esi
	movl	$16, %edx
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_set_size_request
	callq	gimp_int_combo_box_get_type
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.111, %rsi
	movabsq	$gm_gradient_combo_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gm_gradient_combo_fill
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.124, %rsi
	movabsq	$gm_combo_destroy_callback, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	gradient_menus, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_list_append
	movq	%rax, gradient_menus
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	gradient_menu_new, .Lfunc_end105-gradient_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	ed_gradient_menu_callback,@function
ed_gradient_menu_callback:              # @ed_gradient_menu_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp340:
	.cfi_def_cfa_offset 16
.Ltmp341:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp342:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gradient_name_copy
	callq	ed_preview_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	ed_gradient_menu_callback, .Lfunc_end106-ed_gradient_menu_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI107_0:
	.long	1065353216              # float 1
.LCPI107_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ed_put_gradient_menu,@function
ed_put_gradient_menu:                   # @ed_put_gradient_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp343:
	.cfi_def_cfa_offset 16
.Ltmp344:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp345:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp346:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI107_0, %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI107_1, %xmm1       # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %r10d
	movl	-20(%rbp), %r11d
	addl	$1, %r11d
	movl	-24(%rbp), %r8d
	movl	-24(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %ecx
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	-20(%rbp), %r8d
	addl	$2, %r8d
	movl	-24(%rbp), %r9d
	movl	-24(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movl	-20(%rbp), %r8d
	addl	$3, %r8d
	movl	-24(%rbp), %r9d
	movl	-24(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end107:
	.size	ed_put_gradient_menu, .Lfunc_end107-ed_put_gradient_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gm_gradient_combo_callback,@function
gm_gradient_combo_callback:             # @gm_gradient_combo_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp347:
	.cfi_def_cfa_offset 16
.Ltmp348:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp349:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB108_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -36(%rbp)
	jl	.LBB108_3
# BB#2:                                 # %lor.lhs.false.3
	movl	-36(%rbp), %eax
	cmpl	num_gradient_names, %eax
	jl	.LBB108_4
.LBB108_3:                              # %if.then
	jmp	.LBB108_6
.LBB108_4:                              # %if.end
	movslq	-36(%rbp), %rax
	movq	gradient_names, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gradient_name_copy
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gm_preview_draw
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB108_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	callq	*%rax
.LBB108_6:                              # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	gm_gradient_combo_callback, .Lfunc_end108-gm_gradient_combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gm_combo_destroy_callback,@function
gm_combo_destroy_callback:              # @gm_combo_destroy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp350:
	.cfi_def_cfa_offset 16
.Ltmp351:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp352:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	gradient_menus, %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_remove
	movq	%rax, gradient_menus
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	gm_combo_destroy_callback, .Lfunc_end109-gm_combo_destroy_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gm_preview_draw,@function
gm_preview_draw:                        # @gm_preview_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp353:
	.cfi_def_cfa_offset 16
.Ltmp354:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp355:
	.cfi_def_cfa_register %rbp
	subq	$704, %rsp              # imm = 0x2C0
	leaq	-336(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$80, -340(%rbp)
	movl	$3, -628(%rbp)
	movq	-16(%rbp), %rdi
	movl	-340(%rbp), %edx
	movq	%rax, %rsi
	callq	gradient_get_values
	movl	$3840, %edx             # imm = 0xF00
	movl	%edx, %edi
	movl	$1, %edx
	movl	%edx, %esi
	callq	g_malloc_n
	movq	%rax, -624(%rbp)
	movl	$0, -344(%rbp)
.LBB110_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_3 Depth 2
                                        #       Child Loop BB110_6 Depth 3
                                        #       Child Loop BB110_15 Depth 3
                                        #       Child Loop BB110_20 Depth 3
                                        #     Child Loop BB110_28 Depth 2
	cmpl	$16, -344(%rbp)
	jge	.LBB110_35
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB110_1 Depth=1
	movl	$0, -352(%rbp)
.LBB110_3:                              # %for.cond.1
                                        #   Parent Loop BB110_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB110_6 Depth 3
                                        #       Child Loop BB110_15 Depth 3
                                        #       Child Loop BB110_20 Depth 3
	cmpl	$80, -352(%rbp)
	jge	.LBB110_27
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB110_3 Depth=2
	leaq	-336(%rbp), %rax
	leaq	-592(%rbp), %rcx
	movslq	-352(%rbp), %rdx
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -600(%rbp)
	movslq	-352(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movzbl	3(%rax), %esi
	cmpl	$255, %esi
	jne	.LBB110_10
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	$0, -616(%rbp)
.LBB110_6:                              # %for.cond.11
                                        #   Parent Loop BB110_1 Depth=1
                                        #     Parent Loop BB110_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -616(%rbp)
	jge	.LBB110_9
# BB#7:                                 # %for.body.14
                                        #   in Loop: Header=BB110_6 Depth=3
	movslq	-616(%rbp), %rax
	movq	-608(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-616(%rbp), %rax
	movq	-600(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB110_6 Depth=3
	movl	-616(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB110_6
.LBB110_9:                              # %for.end
                                        #   in Loop: Header=BB110_3 Depth=2
	jmp	.LBB110_25
.LBB110_10:                             # %if.else
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	$8, %eax
	movl	-352(%rbp), %ecx
	movl	%eax, -632(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-632(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$4, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	-344(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -636(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	cmpl	$4, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	-636(%rbp), %edi        # 4-byte Reload
	xorl	%edx, %edi
	cmpl	$0, %edi
	je	.LBB110_12
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	$153, -612(%rbp)
	jmp	.LBB110_13
.LBB110_12:                             # %if.else.25
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	$102, -612(%rbp)
.LBB110_13:                             # %if.end
                                        #   in Loop: Header=BB110_3 Depth=2
	movq	-608(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB110_19
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	$0, -616(%rbp)
.LBB110_15:                             # %for.cond.31
                                        #   Parent Loop BB110_1 Depth=1
                                        #     Parent Loop BB110_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -616(%rbp)
	jge	.LBB110_18
# BB#16:                                # %for.body.34
                                        #   in Loop: Header=BB110_15 Depth=3
	movl	-612(%rbp), %eax
	movb	%al, %cl
	movslq	-616(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#17:                                # %for.inc.38
                                        #   in Loop: Header=BB110_15 Depth=3
	movl	-616(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB110_15
.LBB110_18:                             # %for.end.40
                                        #   in Loop: Header=BB110_3 Depth=2
	jmp	.LBB110_24
.LBB110_19:                             # %if.else.41
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	$0, -616(%rbp)
.LBB110_20:                             # %for.cond.42
                                        #   Parent Loop BB110_1 Depth=1
                                        #     Parent Loop BB110_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -616(%rbp)
	jge	.LBB110_23
# BB#21:                                # %for.body.45
                                        #   in Loop: Header=BB110_20 Depth=3
	movl	$255, %eax
	movslq	-616(%rbp), %rcx
	movq	-608(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movq	-608(%rbp), %rcx
	movzbl	3(%rcx), %edi
	imull	%edi, %esi
	movl	-612(%rbp), %edi
	movq	-608(%rbp), %rcx
	movzbl	3(%rcx), %r8d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	imull	%r9d, %edi
	addl	%edi, %esi
	movl	%eax, -640(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-640(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %r10b
	movslq	-616(%rbp), %rcx
	movq	-600(%rbp), %r11
	movb	%r10b, (%r11,%rcx)
# BB#22:                                # %for.inc.57
                                        #   in Loop: Header=BB110_20 Depth=3
	movl	-616(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB110_20
.LBB110_23:                             # %for.end.59
                                        #   in Loop: Header=BB110_3 Depth=2
	jmp	.LBB110_24
.LBB110_24:                             # %if.end.60
                                        #   in Loop: Header=BB110_3 Depth=2
	jmp	.LBB110_25
.LBB110_25:                             # %if.end.61
                                        #   in Loop: Header=BB110_3 Depth=2
	jmp	.LBB110_26
.LBB110_26:                             # %for.inc.62
                                        #   in Loop: Header=BB110_3 Depth=2
	movl	-352(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -352(%rbp)
	jmp	.LBB110_3
.LBB110_27:                             # %for.end.64
                                        #   in Loop: Header=BB110_1 Depth=1
	movl	$0, -348(%rbp)
.LBB110_28:                             # %for.cond.65
                                        #   Parent Loop BB110_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$4, -348(%rbp)
	movb	%cl, -641(%rbp)         # 1-byte Spill
	jge	.LBB110_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB110_28 Depth=2
	movl	-344(%rbp), %eax
	addl	-348(%rbp), %eax
	cmpl	$16, %eax
	setl	%cl
	movb	%cl, -641(%rbp)         # 1-byte Spill
.LBB110_30:                             # %land.end
                                        #   in Loop: Header=BB110_28 Depth=2
	movb	-641(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB110_31
	jmp	.LBB110_33
.LBB110_31:                             # %for.body.71
                                        #   in Loop: Header=BB110_28 Depth=2
	movl	$240, %eax
	movl	%eax, %edx
	leaq	-592(%rbp), %rcx
	movq	-624(%rbp), %rsi
	movl	-344(%rbp), %eax
	addl	-348(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$80, %eax, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
# BB#32:                                # %for.inc.75
                                        #   in Loop: Header=BB110_28 Depth=2
	movl	-348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)
	jmp	.LBB110_28
.LBB110_33:                             # %for.end.77
                                        #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_34
.LBB110_34:                             # %for.inc.78
                                        #   in Loop: Header=BB110_1 Depth=1
	movl	-344(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -344(%rbp)
	jmp	.LBB110_1
.LBB110_35:                             # %for.end.80
	movq	-8(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$80, %edx
	movl	$16, %r8d
	movl	$240, %r9d
	movq	-624(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -668(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-668(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-672(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -676(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$240, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-624(%rbp), %rdi
	callq	g_free
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end110:
	.size	gm_preview_draw, .Lfunc_end110-gm_preview_draw
	.cfi_endproc

	.align	16, 0x90
	.type	ed_shape_radio_callback,@function
ed_shape_radio_callback:                # @ed_shape_radio_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp356:
	.cfi_def_cfa_offset 16
.Ltmp357:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp358:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	callq	ed_preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	ed_shape_radio_callback, .Lfunc_end111-ed_shape_radio_callback
	.cfi_endproc

	.align	16, 0x90
	.type	ed_ientry_callback,@function
ed_ientry_callback:                     # @ed_ientry_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp359:
	.cfi_def_cfa_offset 16
.Ltmp360:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp361:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	callq	ed_preview_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	ed_ientry_callback, .Lfunc_end112-ed_ientry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	preview_render_start,@function
preview_render_start:                   # @preview_render_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp362:
	.cfi_def_cfa_offset 16
.Ltmp363:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp364:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	preview_render_end
	movl	$100, %edi
	movabsq	$preview_render_start_2, %rax
	movq	-8(%rbp), %rcx
	movl	$0, 72(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 76(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 80(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_timeout_add
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	preview_render_start, .Lfunc_end113-preview_render_start
	.cfi_endproc

	.align	16, 0x90
	.type	preview_render_start_2,@function
preview_render_start_2:                 # @preview_render_start_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp365:
	.cfi_def_cfa_offset 16
.Ltmp366:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp367:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$preview_handle_idle, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	g_idle_add
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movl	%eax, 68(%rsi)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	preview_render_start_2, .Lfunc_end114-preview_render_start_2
	.cfi_endproc

	.align	16, 0x90
	.type	preview_handle_idle,@function
preview_handle_idle:                    # @preview_handle_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp368:
	.cfi_def_cfa_offset 16
.Ltmp369:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp370:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp371:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$0, 72(%rdi)
	jne	.LBB115_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB115_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB115_4
# BB#3:                                 # %if.then.3
	movl	$1, -12(%rbp)
	jmp	.LBB115_13
.LBB115_4:                              # %if.end
	movq	-24(%rbp), %rax
	movl	$1, 72(%rax)
.LBB115_5:                              # %if.end.5
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB115_7
# BB#6:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movl	76(%rcx), %edx
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	callq	*%rax
	jmp	.LBB115_8
.LBB115_7:                              # %if.else
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rax
	imull	$3, 8(%rax), %ecx
	movslq	%ecx, %rdx
	callq	memset
.LBB115_8:                              # %if.end.10
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	imull	$3, 8(%rcx), %edx
	movq	-24(%rbp), %rcx
	imull	76(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rsi
	movq	-24(%rbp), %rcx
	imull	$3, 8(%rcx), %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-24(%rbp), %rax
	movl	76(%rax), %r8d
	addl	$1, %r8d
	movl	%r8d, 76(%rax)
	movq	-24(%rbp), %rax
	cmpl	12(%rax), %r8d
	jl	.LBB115_10
# BB#9:                                 # %if.then.22
	movl	$1, -28(%rbp)
.LBB115_10:                             # %if.end.23
	cmpl	$0, -28(%rbp)
	je	.LBB115_12
# BB#11:                                # %if.then.25
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %edx
	movq	-24(%rbp), %rsi
	movl	12(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	-24(%rbp), %rdi
	imull	$3, 8(%rdi), %r9d
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	-56(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-24(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-24(%rbp), %rdi
	callq	preview_render_end
	movl	$0, -12(%rbp)
	jmp	.LBB115_13
.LBB115_12:                             # %if.end.34
	movl	$1, -12(%rbp)
.LBB115_13:                             # %return
	movl	-12(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end115:
	.size	preview_handle_idle, .Lfunc_end115-preview_handle_idle
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_save,@function
gflare_save:                            # @gflare_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB116_8
# BB#1:                                 # %if.then
	cmpq	$0, gflare_path
	jne	.LBB116_5
# BB#2:                                 # %if.then.2
	cmpl	$0, gflare_save.message_ok
	jne	.LBB116_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.40, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.41, %rdi
	movq	%rax, -160(%rbp)
	callq	gimp_personal_rc_file
	movabsq	$.L.str.158, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -168(%rbp)
	callq	g_strescape
	movabsq	$.L.str.159, %rdi
	movq	%rax, -176(%rbp)
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-160(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_message
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movl	$1, gflare_save.message_ok
.LBB116_4:                              # %if.end
	jmp	.LBB116_11
.LBB116_5:                              # %if.end.8
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	gflare_path, %rdi
	callq	gimp_path_parse
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_path_get_user_writable_dir
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_path_free
	cmpq	$0, -24(%rbp)
	jne	.LBB116_7
# BB#6:                                 # %if.then.12
	callq	gimp_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
.LBB116_7:                              # %if.end.15
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB116_8:                              # %if.end.19
	movabsq	$.L.str.160, %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB116_10
# BB#9:                                 # %if.then.23
	movabsq	$.L.str.161, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB116_11
.LBB116_10:                             # %if.end.29
	movabsq	$.L.str.162, %rsi
	movabsq	$.L.str.49, %rdx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.164, %rsi
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %r8d
	movl	%r8d, %ecx
	movq	gflare_modes(,%rcx,8), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.164, %rsi
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %r8d
	movl	%r8d, %ecx
	movq	gflare_modes(,%rcx,8), %rcx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.164, %rsi
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	56(%rcx), %r8d
	movl	%r8d, %ecx
	movq	gflare_modes(,%rcx,8), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rcx
	addq	$60, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gflare_write_gradient_name
	movq	-8(%rbp), %rcx
	addq	$316, %rcx              # imm = 0x13C
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gflare_write_gradient_name
	movq	-8(%rbp), %rcx
	addq	$572, %rcx              # imm = 0x23C
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gflare_write_gradient_name
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	832(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	840(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	848(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.165, %rsi
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r9
	addq	$78, %r9
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%r9, %r8
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rcx
	addq	$856, %rcx              # imm = 0x358
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gflare_write_gradient_name
	movq	-8(%rbp), %rcx
	addq	$1112, %rcx             # imm = 0x458
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gflare_write_gradient_name
	movq	-8(%rbp), %rcx
	addq	$1368, %rcx             # imm = 0x558
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gflare_write_gradient_name
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	1624(%rcx), %xmm0       # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	1632(%rdi), %xmm0       # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	1640(%rdi), %xmm0       # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.165, %rsi
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	1656(%rcx), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.166, %rsi
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	1648(%rdx), %edx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rcx
	addq	$1664, %rcx             # imm = 0x680
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gflare_write_gradient_name
	movq	-8(%rbp), %rcx
	addq	$1920, %rcx             # imm = 0x780
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gflare_write_gradient_name
	movq	-8(%rbp), %rcx
	addq	$2176, %rcx             # imm = 0x880
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gflare_write_gradient_name
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	2432(%rcx), %xmm0       # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	2440(%rdi), %xmm0       # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.163, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	2448(%rdi), %xmm0       # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.165, %rsi
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.167, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	2456(%rcx), %r10d
	movl	%r10d, %ecx
	movq	gflare_shapes(,%rcx,8), %rdx
	movq	-8(%rbp), %rcx
	movl	2460(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	2464(%r8), %r8d
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -416(%rbp)        # 4-byte Spill
	callq	fclose
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB116_11:                             # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end116:
	.size	gflare_save, .Lfunc_end116-gflare_save
	.cfi_endproc

	.align	16, 0x90
	.type	gflare_write_gradient_name,@function
gflare_write_gradient_name:             # @gflare_write_gradient_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$1056, %rsp             # imm = 0x420
	leaq	-1040(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gradient_name_encode
	movabsq	$.L.str.168, %rsi
	leaq	-1040(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end117:
	.size	gflare_write_gradient_name, .Lfunc_end117-gflare_write_gradient_name
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_name_encode,@function
gradient_name_encode:                   # @gradient_name_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$255, -20(%rbp)
.LBB118_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB118_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB118_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -21(%rbp)          # 1-byte Spill
.LBB118_3:                              # %land.end
                                        #   in Loop: Header=BB118_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB118_4
	jmp	.LBB118_10
.LBB118_4:                              # %while.body
                                        #   in Loop: Header=BB118_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	jne	.LBB118_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB118_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB118_7
# BB#6:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB118_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB118_8
.LBB118_7:                              # %if.then
                                        #   in Loop: Header=BB118_1 Depth=1
	movabsq	$.L.str.169, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movq	-8(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB118_9
.LBB118_8:                              # %if.else
                                        #   in Loop: Header=BB118_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dl, (%rax)
.LBB118_9:                              # %if.end
                                        #   in Loop: Header=BB118_1 Depth=1
	jmp	.LBB118_1
.LBB118_10:                             # %while.end
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	gradient_name_encode, .Lfunc_end118-gradient_name_encode
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_copy_ok_callback,@function
dlg_selector_copy_ok_callback:          # @dlg_selector_copy_ok_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB119_3
# BB#2:                                 # %if.then
	jmp	.LBB119_4
.LBB119_3:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.dlg_selector_copy_ok_callback, %rsi
	movabsq	$.L.str.173, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB119_8
.LBB119_4:                              # %if.end
	jmp	.LBB119_5
.LBB119_5:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gflares_list_lookup
	cmpq	$0, %rax
	je	.LBB119_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.174, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB119_8
.LBB119_7:                              # %if.end.3
	movq	dlg, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gflare_dup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gflares_list_insert
	leaq	-64(%rbp), %rsi
	movl	%eax, -68(%rbp)
	movq	dlg, %rdi
	movq	96(%rdi), %rdi
	movl	-68(%rbp), %edx
	callq	gtk_list_store_insert
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	dlg, %rdi
	movq	96(%rdi), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %r9
	movl	$-1, (%rsp)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
	leaq	-64(%rbp), %rsi
	movq	dlg, %rcx
	movq	104(%rcx), %rdi
	callq	gtk_tree_selection_select_iter
	movq	-32(%rbp), %rcx
	movq	dlg, %rsi
	movq	%rcx, 8(%rsi)
	movq	dlg, %rcx
	movq	8(%rcx), %rdi
	callq	gflare_save
	callq	dlg_preview_update
.LBB119_8:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	dlg_selector_copy_ok_callback, .Lfunc_end119-dlg_selector_copy_ok_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dlg_selector_do_delete_callback,@function
dlg_selector_do_delete_callback:        # @dlg_selector_do_delete_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	dlg, %rdx
	movq	16(%rdx), %rdi
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	cmpl	$0, -12(%rbp)
	jne	.LBB120_2
# BB#1:                                 # %if.then
	jmp	.LBB120_16
.LBB120_2:                              # %if.end
	movq	dlg, %rax
	movq	8(%rax), %rdi
	callq	gflares_list_index
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB120_15
# BB#3:                                 # %if.then.4
	movq	dlg, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	dlg, %rax
	movq	8(%rax), %rdi
	callq	gflares_list_remove
	movq	dlg, %rdi
	movq	$0, 8(%rdi)
	movq	dlg, %rdi
	movq	96(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	jne	.LBB120_5
# BB#4:                                 # %if.then.13
	movabsq	$.L.str.179, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB120_16
.LBB120_5:                              # %if.end.14
	leaq	-80(%rbp), %rsi
	movq	dlg, %rax
	movq	96(%rax), %rdi
	callq	gtk_list_store_remove
	movl	-44(%rbp), %ecx
	cmpl	num_gflares, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jge	.LBB120_7
# BB#6:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB120_8
.LBB120_7:                              # %cond.false
	movl	num_gflares, %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB120_8:                              # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	gflares_list, %rdi
	movl	-48(%rbp), %esi
	callq	g_list_nth
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB120_10
# BB#9:                                 # %if.then.20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	dlg, %rcx
	movq	%rax, 8(%rcx)
.LBB120_10:                             # %if.end.23
	movq	dlg, %rax
	movq	96(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	jne	.LBB120_12
# BB#11:                                # %if.then.29
	movabsq	$.L.str.179, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB120_16
.LBB120_12:                             # %if.end.30
	leaq	-80(%rbp), %rsi
	movq	dlg, %rax
	movq	104(%rax), %rdi
	callq	gtk_tree_selection_select_iter
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB120_14
# BB#13:                                # %if.then.32
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_unlink
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB120_14:                             # %if.end.35
	movq	-32(%rbp), %rdi
	callq	gflare_free
	callq	dlg_preview_update
	jmp	.LBB120_16
.LBB120_15:                             # %if.else
	movabsq	$.L.str.180, %rdi
	callq	gettext
	movq	dlg, %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
.LBB120_16:                             # %if.end.38
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	dlg_selector_do_delete_callback, .Lfunc_end120-dlg_selector_do_delete_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gflares_list_remove,@function
gflares_list_remove:                    # @gflares_list_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	gflares_list, %rdi
	movq	%rdi, -24(%rbp)
.LBB121_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB121_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB121_6
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB121_5
# BB#4:                                 # %if.then.3
	movl	num_gflares, %eax
	addl	$-1, %eax
	movl	%eax, num_gflares
.LBB121_5:                              # %if.end
	movq	gflares_list, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, gflares_list
	movl	-28(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB121_8
.LBB121_6:                              # %if.end.4
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB121_1
.LBB121_7:                              # %while.end
	movl	$-1, -4(%rbp)
.LBB121_8:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	gflares_list_remove, .Lfunc_end121-gflares_list_remove
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_do_asupsample,@function
plugin_do_asupsample:                   # @plugin_do_asupsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp393:
	.cfi_offset %rbx, -32
.Ltmp394:
	.cfi_offset %r14, -24
	xorl	%esi, %esi
	movq	drawable, %rdi
	callq	gimp_pixel_fetcher_new
	movl	$3, %esi
	movq	%rax, tk_read
	movq	tk_read, %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movl	$1, %esi
	movq	drawable, %rdi
	callq	gimp_pixel_fetcher_new
	movabsq	$plugin_render_func, %r9
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$plugin_put_pixel_func, %rcx
	movabsq	$plugin_progress_func, %rdx
	movq	%rax, tk_write
	movl	dinfo+8, %esi
	movl	dinfo+12, %r8d
	movl	dinfo+16, %r10d
	subl	$1, %r10d
	movl	dinfo+20, %r11d
	subl	$1, %r11d
	movl	pvals+52, %ebx
	movsd	pvals+56, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%esi, %edi
	movl	%r8d, %esi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%r10d, %edx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%ebx, %r8d
	movq	$0, (%rsp)
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	-32(%rbp), %r14         # 8-byte Reload
	movq	%r14, 24(%rsp)
	movq	$0, 32(%rsp)
	callq	gimp_adaptive_supersample_area
	movq	tk_write, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_pixel_fetcher_destroy
	movq	tk_read, %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end122:
	.size	plugin_do_asupsample, .Lfunc_end122-plugin_do_asupsample
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI123_0:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI123_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI123_2:
	.quad	4589866978952703325     # double 0.0722
.LCPI123_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	plugin_do_non_asupsample,@function
plugin_do_non_asupsample:               # @plugin_do_non_asupsample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp395:
	.cfi_def_cfa_offset 16
.Ltmp396:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp397:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	leaq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	dinfo+16, %ecx
	subl	dinfo+8, %ecx
	movl	%ecx, -108(%rbp)
	movl	dinfo+20, %ecx
	subl	dinfo+12, %ecx
	movl	%ecx, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	-108(%rbp), %ecx
	imull	-112(%rbp), %ecx
	movl	%ecx, -120(%rbp)
	movq	drawable, %rsi
	movl	dinfo+8, %edx
	movl	dinfo+12, %ecx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-96(%rbp), %rdi
	movl	$1, %eax
	movq	drawable, %rsi
	movl	dinfo+8, %edx
	movl	dinfo+12, %ecx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-48(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -104(%rbp)
.LBB123_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB123_3 Depth 2
                                        #       Child Loop BB123_5 Depth 3
                                        #         Child Loop BB123_7 Depth 4
                                        #         Child Loop BB123_18 Depth 4
	cmpq	$0, -104(%rbp)
	je	.LBB123_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB123_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -144(%rbp)
.LBB123_3:                              # %for.cond.4
                                        #   Parent Loop BB123_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB123_5 Depth 3
                                        #         Child Loop BB123_7 Depth 4
                                        #         Child Loop BB123_18 Depth 4
	movl	-140(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB123_29
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB123_3 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -168(%rbp)
.LBB123_5:                              # %for.cond.8
                                        #   Parent Loop BB123_1 Depth=1
                                        #     Parent Loop BB123_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB123_7 Depth 4
                                        #         Child Loop BB123_18 Depth 4
	movl	-164(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB123_27
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	$0, -180(%rbp)
.LBB123_7:                              # %for.cond.11
                                        #   Parent Loop BB123_1 Depth=1
                                        #     Parent Loop BB123_3 Depth=2
                                        #       Parent Loop BB123_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -180(%rbp)
	jge	.LBB123_13
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB123_7 Depth=4
	cmpl	$0, dinfo
	je	.LBB123_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB123_7 Depth=4
	movslq	-180(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB123_11
.LBB123_10:                             # %cond.false
                                        #   in Loop: Header=BB123_7 Depth=4
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
.LBB123_11:                             # %cond.end
                                        #   in Loop: Header=BB123_7 Depth=4
	movl	-192(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-180(%rbp), %rdx
	movb	%cl, -172(%rbp,%rdx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB123_7 Depth=4
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB123_7
.LBB123_13:                             # %for.end
                                        #   in Loop: Header=BB123_5 Depth=3
	cmpl	$0, dinfo+4
	je	.LBB123_15
# BB#14:                                # %cond.true.20
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB123_16
.LBB123_15:                             # %cond.false.25
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	$255, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB123_16
.LBB123_16:                             # %cond.end.26
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	-196(%rbp), %eax        # 4-byte Reload
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdi
	movb	%al, %cl
	movb	%cl, -169(%rbp)
	cvtsi2sdl	-168(%rbp), %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	callq	calc_gflare_pix
	cmpl	$0, dinfo
	je	.LBB123_22
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	$0, -180(%rbp)
.LBB123_18:                             # %for.cond.34
                                        #   Parent Loop BB123_1 Depth=1
                                        #     Parent Loop BB123_3 Depth=2
                                        #       Parent Loop BB123_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -180(%rbp)
	jge	.LBB123_21
# BB#19:                                # %for.body.37
                                        #   in Loop: Header=BB123_18 Depth=4
	movslq	-180(%rbp), %rax
	movb	-176(%rbp,%rax), %cl
	movslq	-180(%rbp), %rax
	movq	-160(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#20:                                # %for.inc.42
                                        #   in Loop: Header=BB123_18 Depth=4
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB123_18
.LBB123_21:                             # %for.end.44
                                        #   in Loop: Header=BB123_5 Depth=3
	jmp	.LBB123_23
.LBB123_22:                             # %if.else
                                        #   in Loop: Header=BB123_5 Depth=3
	movzbl	-176(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI123_0(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-175(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI123_1(%rip), %xmm2 # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	-174(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI123_2(%rip), %xmm2 # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI123_3(%rip), %xmm1 # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB123_23:                             # %if.end
                                        #   in Loop: Header=BB123_5 Depth=3
	cmpl	$0, dinfo+4
	je	.LBB123_25
# BB#24:                                # %if.then.62
                                        #   in Loop: Header=BB123_5 Depth=3
	movb	-173(%rbp), %al
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-160(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
.LBB123_25:                             # %if.end.68
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	-32(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-80(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
# BB#26:                                # %for.inc.73
                                        #   in Loop: Header=BB123_5 Depth=3
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB123_5
.LBB123_27:                             # %for.end.76
                                        #   in Loop: Header=BB123_3 Depth=2
	movl	-28(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movl	-76(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#28:                                # %for.inc.82
                                        #   in Loop: Header=BB123_3 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB123_3
.LBB123_29:                             # %for.end.85
                                        #   in Loop: Header=BB123_1 Depth=1
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	cvtsi2sdl	-116(%rbp), %xmm0
	cvtsi2sdl	-120(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -200(%rbp)        # 4-byte Spill
# BB#30:                                # %for.inc.93
                                        #   in Loop: Header=BB123_1 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -104(%rbp)
	jmp	.LBB123_1
.LBB123_31:                             # %for.end.95
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	plugin_do_non_asupsample, .Lfunc_end123-plugin_do_non_asupsample
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI124_0:
	.quad	4602678819172646912     # double 0.5
.LCPI124_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	plugin_render_func,@function
plugin_render_func:                     # @plugin_render_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp398:
	.cfi_def_cfa_offset 16
.Ltmp399:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp400:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-44(%rbp), %rcx
	movsd	.LCPI124_0, %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movaps	%xmm2, %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movq	tk_read, %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -48(%rbp)
.LBB124_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -48(%rbp)
	jge	.LBB124_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB124_1 Depth=1
	cmpl	$0, dinfo
	je	.LBB124_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB124_1 Depth=1
	movslq	-48(%rbp), %rax
	movzbl	-44(%rbp,%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB124_5
.LBB124_4:                              # %cond.false
                                        #   in Loop: Header=BB124_1 Depth=1
	movzbl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB124_5:                              # %cond.end
                                        #   in Loop: Header=BB124_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	movb	%cl, -36(%rbp,%rdx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB124_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB124_1
.LBB124_7:                              # %for.end
	cmpl	$0, dinfo+4
	je	.LBB124_9
# BB#8:                                 # %cond.true.12
	movq	drawable, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movzbl	-44(%rbp,%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB124_10
.LBB124_9:                              # %cond.false.16
	movl	$255, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB124_10
.LBB124_10:                             # %cond.end.17
	movl	-80(%rbp), %eax         # 4-byte Reload
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movb	%al, %cl
	movb	%cl, -33(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	calc_gflare_pix
	movsd	.LCPI124_1, %xmm0       # xmm0 = mem[0],zero
	movzbl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, (%rsi)
	movzbl	-39(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 8(%rsi)
	movzbl	-38(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 16(%rsi)
	movzbl	-37(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rsi
	movsd	%xmm1, 24(%rsi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	plugin_render_func, .Lfunc_end124-plugin_render_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI125_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	plugin_put_pixel_func,@function
plugin_put_pixel_func:                  # @plugin_put_pixel_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp401:
	.cfi_def_cfa_offset 16
.Ltmp402:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp403:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, dinfo
	je	.LBB125_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI125_0(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -28(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -27(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -26(%rbp)
	jmp	.LBB125_3
.LBB125_2:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar
	movb	%al, -28(%rbp)
.LBB125_3:                              # %if.end
	cmpl	$0, dinfo+4
	je	.LBB125_5
# BB#4:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI125_0(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	drawable, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%dl, -28(%rbp,%rax)
.LBB125_5:                              # %if.end.13
	leaq	-28(%rbp), %rcx
	movq	tk_write, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gimp_pixel_fetcher_put_pixel
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	plugin_put_pixel_func, .Lfunc_end125-plugin_put_pixel_func
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_progress_func,@function
plugin_progress_func:                   # @plugin_progress_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp404:
	.cfi_def_cfa_offset 16
.Ltmp405:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp406:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	movl	-8(%rbp), %edx
	subl	-4(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	plugin_progress_func, .Lfunc_end126-plugin_progress_func
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	plugin_query
	.quad	plugin_run
	.size	PLUG_IN_INFO, 32

	.type	pvals,@object           # @pvals
	.data
	.globl	pvals
	.align	8
pvals:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.quad	4636737291354636288     # double 100
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4633641066610819072     # double 60
	.quad	4645744490609377280     # double 400
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	4596373779694328218     # double 0.20000000000000001
	.asciz	"Default\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	pvals, 320

	.type	default_gflare,@object  # @default_gflare
	.globl	default_gflare
	.align	8
default_gflare:
	.quad	0
	.quad	0
	.quad	4636737291354636288     # double 100
	.long	0                       # 0x0
	.zero	4
	.quad	4636737291354636288     # double 100
	.long	0                       # 0x0
	.zero	4
	.quad	4636737291354636288     # double 100
	.long	0                       # 0x0
	.asciz	"%red_grad\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%white\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%white\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	4636737291354636288     # double 100
	.quad	0                       # double 0
	.quad	0                       # double 0
	.asciz	"%white_grad\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%random\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%random\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.quad	4636737291354636288     # double 100
	.quad	0                       # double 0
	.quad	0                       # double 0
	.long	40                      # 0x28
	.zero	4
	.quad	4626322717216342016     # double 20
	.asciz	"%white_grad\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%random\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"%random\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.quad	4630826316843712512     # double 40
	.quad	0                       # double 0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	default_gflare, 2472

	.type	plugin_query.args,@object # @plugin_query.args
	.section	.rodata,"a",@progbits
	.align	16
plugin_query.args:
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
	.long	4                       # 0x4
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.size	plugin_query.args, 336

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
	.asciz	"gflare-name"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of GFlare"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"xcenter"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"X coordinate of center of GFlare"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ycenter"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Y coordinate of center of GFlare"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"radius"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Radius of GFlare (pixel)"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"rotation"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Rotation of GFlare (degree)"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hue"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Hue rotation of GFlare (degree)"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vangle"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Vector angle for second flares (degree)"
	.size	.L.str.19, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"vlength"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Vector length for second flares (percentage to Radius)"
	.size	.L.str.21, 55

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"use-asupsample"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Whether it uses or not adaptive supersampling while rendering (boolean)"
	.size	.L.str.23, 72

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"asupsample-max-depth"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Max depth for adaptive supersampling"
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"asupsample-threshold"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Threshold for adaptive supersampling"
	.size	.L.str.27, 37

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This plug-in produces a lense flare effect using custom gradients. In interactive call, the user can edit his/her own favorite lense flare (GFlare) and render it. Edited gflare is saved automatically to the folder in gflare-path, if it is defined in gimprc. In non-interactive call, the user can only render one of GFlare which has been stored in gflare-path already."
	.size	.L.str.28, 368

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"plug-in-gflare"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Produce a lense flare effect using gradients"
	.size	.L.str.30, 45

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Eiichi Takamori"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Eiichi Takamori, and a lot of GIMP people"
	.size	.L.str.32, 42

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"1997"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Gradient Flare..."
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"<Image>/Filters/Light and Shadow/Light"
	.size	.L.str.36, 39

	.type	plugin_run.values,@object # @plugin_run.values
	.local	plugin_run.values
	.comm	plugin_run.values,80,16
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"UTF-8"
	.size	.L.str.38, 6

	.type	image_ID,@object        # @image_ID
	.local	image_ID
	.comm	image_ID,4,4
	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	dinfo,@object           # @dinfo
	.local	dinfo
	.comm	dinfo,32,4
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gflare-path"
	.size	.L.str.39, 12

	.type	gflare_path,@object     # @gflare_path
	.local	gflare_path
	.comm	gflare_path,8,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimprc"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gflare"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"No %s in gimprc:\nYou need to add an entry like\n(%s \"%s\")\nto your %s file."
	.size	.L.str.42, 74

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Gradient Flare"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.44, 40

	.type	gradient_cache_head,@object # @gradient_cache_head
	.local	gradient_cache_head
	.comm	gradient_cache_head,8,8
	.type	gradient_cache_count,@object # @gradient_cache_count
	.local	gradient_cache_count
	.comm	gradient_cache_count,4,4
	.type	gflares_list,@object    # @gflares_list
	.local	gflares_list
	.comm	gflares_list,8,8
	.type	.L__func__.gflare_free,@object # @__func__.gflare_free
.L__func__.gflare_free:
	.asciz	"gflare_free"
	.size	.L__func__.gflare_free, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gflare != NULL"
	.size	.L.str.45, 15

	.type	.L__func__.gflare_load,@object # @__func__.gflare_load
.L__func__.gflare_load:
	.asciz	"gflare_load"
	.size	.L__func__.gflare_load, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"filename != NULL"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"rb"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Failed to open GFlare file '%s': %s"
	.size	.L.str.48, 36

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIMP GFlare 0.25\n"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"'%s' is not a valid GFlare file."
	.size	.L.str.50, 33

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"invalid formatted GFlare file: %s\n"
	.size	.L.str.51, 35

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%30s"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%1023s"
	.size	.L.str.53, 7

	.type	gflare_modes,@object    # @gflare_modes
	.data
	.align	16
gflare_modes:
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.size	gflare_modes, 32

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"NORMAL"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ADDITION"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"OVERLAY"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"SCREEN"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%3o"
	.size	.L.str.58, 4

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%d"
	.size	.L.str.59, 3

	.type	gflare_shapes,@object   # @gflare_shapes
	.data
	.align	16
gflare_shapes:
	.quad	.L.str.60
	.quad	.L.str.61
	.size	gflare_shapes, 16

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"CIRCLE"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"POLYGON"
	.size	.L.str.61, 8

	.type	num_gflares,@object     # @num_gflares
	.local	num_gflares
	.comm	num_gflares,4,4
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gradient-flare"
	.size	.L.str.62, 15

	.type	dlg,@object             # @dlg
	.local	dlg
	.comm	dlg,8,8
	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gradient-flare.c"
	.size	.L.str.63, 17

	.type	.L__func__.dlg_run,@object # @__func__.dlg_run
.L__func__.dlg_run:
	.asciz	"dlg_run"
	.size	.L__func__.dlg_run, 8

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gflares_list != NULL"
	.size	.L.str.64, 21

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"dlg->gflare != NULL"
	.size	.L.str.65, 20

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"dlg->gflare->name != NULL"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-gradient-flare"
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gtk-cancel"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gtk-ok"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"realize"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"event"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"A_uto update preview"
	.size	.L.str.72, 21

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"toggled"
	.size	.L.str.73, 8

	.type	gradient_menus,@object  # @gradient_menus
	.local	gradient_menus
	.comm	gradient_menus,8,8
	.type	gradient_names,@object  # @gradient_names
	.local	gradient_names
	.comm	gradient_names,8,8
	.type	num_gradient_names,@object # @num_gradient_names
	.local	num_gradient_names
	.comm	num_gradient_names,4,4
	.type	internal_gradients,@object # @internal_gradients
	.data
	.align	16
internal_gradients:
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.size	internal_gradients, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"%white"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"%white_grad"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"%red_grad"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"%blue_grad"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"%yellow_grad"
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"%random"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Default"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"`Default' is created."
	.size	.L.str.81, 22

	.type	calc,@object            # @calc
	.local	calc
	.comm	calc,328,8
	.type	calc_sample_one_gradient.table,@object # @calc_sample_one_gradient.table
	.data
	.align	16
calc_sample_one_gradient.table:
	.quad	calc+112
	.long	60                      # 0x3c
	.long	848                     # 0x350
	.long	0                       # 0x0
	.zero	4
	.quad	calc+120
	.long	316                     # 0x13c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	calc+128
	.long	572                     # 0x23c
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	calc+192
	.long	856                     # 0x358
	.long	1640                    # 0x668
	.long	0                       # 0x0
	.zero	4
	.quad	calc+200
	.long	1112                    # 0x458
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	calc+208
	.long	1368                    # 0x558
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	calc+264
	.long	1664                    # 0x680
	.long	2448                    # 0x990
	.long	0                       # 0x0
	.zero	4
	.quad	calc+272
	.long	1920                    # 0x780
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	calc+280
	.long	2176                    # 0x880
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	calc_sample_one_gradient.table, 216

	.type	.L__func__.calc_sample_one_gradient,@object # @__func__.calc_sample_one_gradient
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.calc_sample_one_gradient:
	.asciz	"calc_sample_one_gradient"
	.size	.L__func__.calc_sample_one_gradient, 25

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"0 <= hue && hue < 256"
	.size	.L.str.82, 22

	.type	gradient_get_values_internal.white,@object # @gradient_get_values_internal.white
	.section	.rodata,"a",@progbits
gradient_get_values_internal.white:
	.zero	4,255
	.size	gradient_get_values_internal.white, 4

	.type	gradient_get_values_internal.white_trans,@object # @gradient_get_values_internal.white_trans
gradient_get_values_internal.white_trans:
	.asciz	"\377\377\377"
	.size	gradient_get_values_internal.white_trans, 4

	.type	gradient_get_values_internal.red_trans,@object # @gradient_get_values_internal.red_trans
gradient_get_values_internal.red_trans:
	.asciz	"\377\000\000"
	.size	gradient_get_values_internal.red_trans, 4

	.type	gradient_get_values_internal.blue_trans,@object # @gradient_get_values_internal.blue_trans
gradient_get_values_internal.blue_trans:
	.asciz	"\000\000\377"
	.size	gradient_get_values_internal.blue_trans, 4

	.type	gradient_get_values_internal.yellow_trans,@object # @gradient_get_values_internal.yellow_trans
gradient_get_values_internal.yellow_trans:
	.asciz	"\377\377\000"
	.size	gradient_get_values_internal.yellow_trans, 4

	.type	.L__func__.gradient_get_values_external,@object # @__func__.gradient_get_values_external
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gradient_get_values_external:
	.asciz	"gradient_get_values_external"
	.size	.L__func__.gradient_get_values_external, 29

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"nvalues >= 2"
	.size	.L.str.83, 13

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"0 <= pos && pos <= GRADIENT_RESOLUTION - 1"
	.size	.L.str.84, 43

	.type	.L__func__.gradient_cache_lookup,@object # @__func__.gradient_cache_lookup
.L__func__.gradient_cache_lookup:
	.asciz	"gradient_cache_lookup"
	.size	.L__func__.gradient_cache_lookup, 22

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"ci == gradient_cache_head"
	.size	.L.str.85, 26

	.type	.L__func__.gradient_cache_zorch,@object # @__func__.gradient_cache_zorch
.L__func__.gradient_cache_zorch:
	.asciz	"gradient_cache_zorch"
	.size	.L__func__.gradient_cache_zorch, 21

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"ci->next == NULL"
	.size	.L.str.86, 17

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"calc_deinit: not initialized"
	.size	.L.str.87, 29

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Center"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%a"
	.size	.L.str.89, 3

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"_X:"
	.size	.L.str.90, 4

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"_Y:"
	.size	.L.str.91, 4

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"chainbutton"
	.size	.L.str.92, 12

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"value-changed"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"refval-changed"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Parameters"
	.size	.L.str.95, 11

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"_Radius:"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Ro_tation:"
	.size	.L.str.97, 11

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"_Hue rotation:"
	.size	.L.str.98, 15

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Vector _angle:"
	.size	.L.str.99, 15

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Vector _length:"
	.size	.L.str.100, 16

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"A_daptive supersampling"
	.size	.L.str.101, 24

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"active"
	.size	.L.str.102, 7

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"sensitive"
	.size	.L.str.103, 10

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"_Max depth:"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"_Threshold"
	.size	.L.str.105, 11

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"_Settings"
	.size	.L.str.106, 10

	.type	dlg_make_page_selector.buttons,@object # @dlg_make_page_selector.buttons
	.data
	.align	16
dlg_make_page_selector.buttons:
	.quad	.L.str.107
	.quad	dlg_selector_new_callback
	.quad	.L.str.108
	.quad	dlg_selector_edit_callback
	.quad	.L.str.109
	.quad	dlg_selector_copy_callback
	.quad	.L.str.110
	.quad	dlg_selector_delete_callback
	.size	dlg_make_page_selector.buttons, 64

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"gtk-new"
	.size	.L.str.107, 8

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gtk-edit"
	.size	.L.str.108, 9

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gtk-copy"
	.size	.L.str.109, 9

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gtk-delete"
	.size	.L.str.110, 11

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"changed"
	.size	.L.str.111, 8

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"GFlare"
	.size	.L.str.112, 7

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"text"
	.size	.L.str.113, 5

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"clicked"
	.size	.L.str.114, 8

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"S_elector"
	.size	.L.str.115, 10

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"New Gradient Flare"
	.size	.L.str.116, 19

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Enter a name for the new GFlare"
	.size	.L.str.117, 32

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Unnamed"
	.size	.L.str.118, 8

	.type	.L__func__.dlg_selector_new_ok_callback,@object # @__func__.dlg_selector_new_ok_callback
.L__func__.dlg_selector_new_ok_callback:
	.asciz	"dlg_selector_new_ok_callback"
	.size	.L__func__.dlg_selector_new_ok_callback, 29

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"new_name != NULL"
	.size	.L.str.119, 17

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"The name '%s' is used already!"
	.size	.L.str.120, 31

	.type	ed,@object              # @ed
	.local	ed
	.comm	ed,8,8
	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Gradient Flare Editor"
	.size	.L.str.121, 22

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Rescan Gradients"
	.size	.L.str.122, 17

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"response"
	.size	.L.str.123, 9

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"destroy"
	.size	.L.str.124, 8

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"ed_preview_edit_func: bad page"
	.size	.L.str.125, 31

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"hmm, bad page in ed_preview_render_func ()"
	.size	.L.str.126, 43

	.type	ed_preview_render_general.src_pix,@object # @ed_preview_render_general.src_pix
	.data
ed_preview_render_general.src_pix:
	.ascii	"\000\000\000\377"
	.size	ed_preview_render_general.src_pix, 4

	.type	ed_preview_render_sflare.src_pix,@object # @ed_preview_render_sflare.src_pix
ed_preview_render_sflare.src_pix:
	.ascii	"\000\000\000\377"
	.size	ed_preview_render_sflare.src_pix, 4

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"Glow Paint Options"
	.size	.L.str.127, 19

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Opacity:"
	.size	.L.str.128, 9

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Paint mode:"
	.size	.L.str.129, 12

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Rays Paint Options"
	.size	.L.str.130, 19

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Second Flares Paint Options"
	.size	.L.str.131, 28

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"_General"
	.size	.L.str.132, 9

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"map"
	.size	.L.str.133, 4

	.type	gflare_menu_modes,@object # @gflare_menu_modes
	.data
	.align	16
gflare_menu_modes:
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.size	gflare_menu_modes, 32

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"Normal"
	.size	.L.str.134, 7

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Addition"
	.size	.L.str.135, 9

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Overlay"
	.size	.L.str.136, 8

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Screen"
	.size	.L.str.137, 7

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Gradients"
	.size	.L.str.138, 10

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Radial gradient:"
	.size	.L.str.139, 17

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Angular gradient:"
	.size	.L.str.140, 18

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Angular size gradient:"
	.size	.L.str.141, 23

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Size (%):"
	.size	.L.str.142, 10

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Rotation:"
	.size	.L.str.143, 10

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Hue rotation:"
	.size	.L.str.144, 14

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"G_low"
	.size	.L.str.145, 6

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"# of Spikes:"
	.size	.L.str.146, 13

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Spike thickness:"
	.size	.L.str.147, 17

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"_Rays"
	.size	.L.str.148, 6

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Size factor gradient:"
	.size	.L.str.149, 22

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Probability gradient:"
	.size	.L.str.150, 22

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Shape of Second Flares"
	.size	.L.str.151, 23

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Circle"
	.size	.L.str.152, 7

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"gimp-item-data"
	.size	.L.str.153, 15

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Polygon"
	.size	.L.str.154, 8

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Random seed:"
	.size	.L.str.155, 13

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"spinbutton"
	.size	.L.str.156, 11

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"_Second Flares"
	.size	.L.str.157, 15

	.type	gflare_save.message_ok,@object # @gflare_save.message_ok
	.local	gflare_save.message_ok
	.comm	gflare_save.message_ok,4,4
	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"${gimp_dir}/gflare"
	.size	.L.str.158, 19

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"GFlare '%s' is not saved. If you add a new entry in '%s', like:\n(gflare-path \"%s\")\nand make a folder '%s', then you can save your own GFlares into that folder."
	.size	.L.str.159, 160

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"wb"
	.size	.L.str.160, 3

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Failed to write GFlare file '%s': %s"
	.size	.L.str.161, 37

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"%s"
	.size	.L.str.162, 3

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"%f"
	.size	.L.str.163, 3

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"%s %s\n"
	.size	.L.str.164, 7

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"%s %s %s\n"
	.size	.L.str.165, 10

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"%d %s\n"
	.size	.L.str.166, 7

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"%s %d %d\n"
	.size	.L.str.167, 10

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"%s\n"
	.size	.L.str.168, 4

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"\\%03o"
	.size	.L.str.169, 6

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"%s copy"
	.size	.L.str.170, 8

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Copy Gradient Flare"
	.size	.L.str.171, 20

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Enter a name for the copied GFlare"
	.size	.L.str.172, 35

	.type	.L__func__.dlg_selector_copy_ok_callback,@object # @__func__.dlg_selector_copy_ok_callback
.L__func__.dlg_selector_copy_ok_callback:
	.asciz	"dlg_selector_copy_ok_callback"
	.size	.L__func__.dlg_selector_copy_ok_callback, 30

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"copy_name != NULL"
	.size	.L.str.173, 18

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"The name `%s' is used already!"
	.size	.L.str.174, 31

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Cannot delete!! There must be at least one GFlare."
	.size	.L.str.175, 51

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Are you sure you want to delete \"%s\" from the list and from disk?"
	.size	.L.str.176, 66

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Delete Gradient Flare"
	.size	.L.str.177, 22

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"gtk-dialog-question"
	.size	.L.str.178, 20

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Unsynchronized lists. Bad things will happen!"
	.size	.L.str.179, 46

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"not found %s in gflares_list"
	.size	.L.str.180, 29

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Not found %s\n"
	.size	.L.str.181, 14

	.type	tk_read,@object         # @tk_read
	.local	tk_read
	.comm	tk_read,8,8
	.type	tk_write,@object        # @tk_write
	.local	tk_write
	.comm	tk_write,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
