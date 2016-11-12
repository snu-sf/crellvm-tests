	.text
	.file	"qbist.bc"
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
	subq	$216, %rsp
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
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	leaq	-112(%rbp), %r12
	movabsq	$.Lquery.args, %r13
	movl	$72, %r14d
                                        # kill: R14<def> R14D<kill>
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r12, %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r12, -152(%rbp)        # 8-byte Spill
	movq	%r15, -160(%rbp)        # 8-byte Spill
	movl	%r11d, -164(%rbp)       # 4-byte Spill
	movl	%ebx, -168(%rbp)        # 4-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movl	%r10d, -196(%rbp)       # 4-byte Spill
	callq	memcpy
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -200(%rbp)        # 4-byte Spill
	addq	$216, %rsp
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
	pushq	%r14
	pushq	%rbx
	subq	$288, %rsp              # imm = 0x120
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
	movabsq	$run.values, %rax
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$3, -96(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -96(%rbp)
.LBB1_2:                                # %if.end
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)
# BB#3:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -184(%rbp)        # 8-byte Spill
# BB#4:                                 # %do.end
	movq	-40(%rbp), %rax
	cmpl	$16, 80(%rax)
	je	.LBB1_6
# BB#5:                                 # %if.then.8
	movl	$1, -96(%rbp)
.LBB1_6:                                # %if.end.9
	movq	-40(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, -80(%rbp)
	movq	-88(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_bounds
	movq	-88(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.20
	movl	$1, -96(%rbp)
.LBB1_8:                                # %if.end.21
	cmpl	$3, -96(%rbp)
	jne	.LBB1_28
# BB#9:                                 # %if.then.23
	callq	g_rand_new
	movq	%rax, gr(%rip)
	movl	$qbist_info, %ecx
	movl	%ecx, %eax
	movl	$4676, %ecx             # imm = 0x1244
	movl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	memset
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	create_info
	movl	$4, qbist_info+576(%rip)
	movl	-92(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_29
.LBB1_29:                               # %if.then.23
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_30
.LBB1_30:                               # %if.then.23
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_10:                               # %sw.bb
	movabsq	$.L.str.6, %rdi
	movabsq	$qbist_info, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	dialog_run
	cmpl	$0, %eax
	je	.LBB1_12
# BB#11:                                # %if.then.28
	movabsq	$.L.str.6, %rdi
	movabsq	$qbist_info, %rax
	movl	$4676, %edx             # imm = 0x1244
	movl	$3, -96(%rbp)
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
	movl	$0, -96(%rbp)
.LBB1_13:                               # %if.end.30
	jmp	.LBB1_17
.LBB1_14:                               # %sw.bb.31
	movl	$1, -96(%rbp)
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.32
	movabsq	$.L.str.6, %rdi
	movabsq	$qbist_info, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	$3, -96(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	movl	$1, -96(%rbp)
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -96(%rbp)
	jne	.LBB1_27
# BB#18:                                # %if.then.35
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-228(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-236(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-88(%rbp), %rsi
	movl	-80(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movabsq	$qbist_info, %rdi
	callq	optimize
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$1, %edi
	leaq	-144(%rbp), %rsi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -152(%rbp)
.LBB1_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	cmpq	$0, -152(%rbp)
	je	.LBB1_26
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	$0, -156(%rbp)
.LBB1_21:                               # %for.cond.43
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB1_24
# BB#22:                                # %for.body.46
                                        #   in Loop: Header=BB1_21 Depth=2
	movabsq	$qbist_info, %rdi
	movq	-144(%rbp), %rax
	movl	-156(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %ecx
	addl	-156(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-68(%rbp), %esi
	subl	-60(%rbp), %esi
	movl	-72(%rbp), %r9d
	subl	-64(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	qbist_info+576, %r11d
	movl	%esi, -248(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-248(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -252(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	-252(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	qbist
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB1_21
.LBB1_24:                               # %for.end
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-116(%rbp), %eax
	subl	-64(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -256(%rbp)        # 4-byte Spill
# BB#25:                                # %for.inc.59
                                        #   in Loop: Header=BB1_19 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -152(%rbp)
	jmp	.LBB1_19
.LBB1_26:                               # %for.end.61
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-88(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-88(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %r8d
	subl	-60(%rbp), %r8d
	movl	-72(%rbp), %r9d
	subl	-64(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.70
	movq	gr, %rdi
	callq	g_rand_free
.LBB1_28:                               # %if.end.71
	movl	$21, run.values
	movl	-96(%rbp), %eax
	movl	%eax, run.values+8
	movq	-88(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r14
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
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
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
	.type	create_info,@function
create_info:                            # @create_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -12(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%esi, %esi
	movl	$9, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$6, %edx
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx,%rdi,4)
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$6, %edx
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	%eax, 144(%rdi,%rcx,4)
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$6, %edx
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	%eax, 288(%rdi,%rcx,4)
	movq	gr, %rdi
	callq	g_rand_int_range
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	%eax, 432(%rdi,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_info, .Lfunc_end3-create_info
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_run,@function
dialog_run:                             # @dialog_run
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
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp22:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.17, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.20, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.21, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
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
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movabsq	$info, %rsi
	movabsq	$qbist_info, %rdi
	movl	$576, %ecx              # imm = 0x240
	movl	%ecx, %edx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	callq	dialog_new_variations
	movabsq	$last_info, %rax
	movabsq	$info, %rdx
	movl	$5184, %ecx             # imm = 0x1440
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	$0, -52(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -52(%rbp)
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	callq	gtk_button_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %ecx
	xorl	%edx, %edx
	movl	$3, %r8d
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %r9d
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	movl	%edx, -196(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	-52(%rbp), %r9d
	movl	%r9d, %eax
	movl	%edx, -200(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	addl	$1, %edx
	movl	-52(%rbp), %r9d
	movl	%r9d, %eax
	movl	%edx, -204(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	movl	-52(%rbp), %r9d
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	addl	$1, %eax
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-200(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, %edx
	movl	-204(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-208(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rsi
	movabsq	$dialog_select_preview, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movabsq	$info, %r10
	movl	$9, %eax
	movq	-40(%rbp), %r11
	movl	-52(%rbp), %ecx
	addl	$5, %ecx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-216(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rbx
	imulq	$576, %rbx, %rbx        # imm = 0x240
	addq	%rbx, %r10
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_new
	movl	$64, %r9d
	movslq	-52(%rbp), %rcx
	movq	%rax, preview(,%rcx,8)
	movslq	-52(%rbp), %rax
	movq	preview(,%rax,8), %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-52(%rbp), %rcx
	movq	preview(,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movslq	-52(%rbp), %rax
	movq	preview(,%rax,8), %rdi
	callq	gtk_widget_show
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, qbist_info+576
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$dialog_toggle_antialaising, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_button_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_button_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_button_box_set_layout
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.25, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rsi
	movabsq	$dialog_undo, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	-312(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rsi
	movabsq	$dialog_load, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	-336(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rsi
	movabsq	$dialog_save, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	-360(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	dialog_update_previews
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_6
# BB#5:                                 # %if.then
	movabsq	$qbist_info, %rax
	movabsq	$info, %rcx
	movl	$576, %edx              # imm = 0x240
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB4_6:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-56(%rbp), %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialog_run, .Lfunc_end4-dialog_run
	.cfi_endproc

	.align	16, 0x90
	.type	optimize,@function
optimize:                               # @optimize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -12(%rbp)
	jge	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	$0, used_trans_flag(,%rax,4)
	cmpl	$6, -12(%rbp)
	jge	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	$0, used_reg_flag(,%rax,4)
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, %esi
	addl	$-3, %esi
	subl	$2, %esi
	movl	%edx, -16(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	jb	.LBB5_5
	jmp	.LBB5_10
.LBB5_10:                               # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jne	.LBB5_6
	jmp	.LBB5_5
.LBB5_5:                                # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	432(%rcx,%rax,4), %edx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 288(%rcx,%rax,4)
	jmp	.LBB5_7
.LBB5_6:                                # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movl	$36, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	check_last_modified
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	optimize, .Lfunc_end5-optimize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
.LCPI6_1:
	.quad	4643176031446892544     # double 255
.LCPI6_2:
	.quad	4607182418800017408     # double 1
.LCPI6_3:
	.quad	4626322717216342016     # double 20
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_4:
	.long	1086324736              # float 6
	.text
	.align	16, 0x90
	.type	qbist,@function
qbist:                                  # @qbist
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
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r11d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_7 Depth 2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_11 Depth 4
                                        #         Child Loop BB6_17 Depth 4
                                        #         Child Loop BB6_48 Depth 4
                                        #     Child Loop BB6_56 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB6_64
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -148(%rbp)
.LBB6_3:                                # %for.cond.1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -148(%rbp)
	jge	.LBB6_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB6_3 Depth=2
	movslq	-148(%rbp), %rax
	movl	$0, -140(%rbp,%rax,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -144(%rbp)
.LBB6_7:                                # %for.cond.4
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_11 Depth 4
                                        #         Child Loop BB6_17 Depth 4
                                        #         Child Loop BB6_48 Depth 4
	movl	-144(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_55
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	$0, -152(%rbp)
.LBB6_9:                                # %for.cond.7
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_11 Depth 4
                                        #         Child Loop BB6_17 Depth 4
                                        #         Child Loop BB6_48 Depth 4
	movl	-152(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_53
# BB#10:                                # %for.body.9
                                        #   in Loop: Header=BB6_9 Depth=3
	movl	$0, -148(%rbp)
.LBB6_11:                               # %for.cond.10
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$6, -148(%rbp)
	jge	.LBB6_16
# BB#12:                                # %for.body.12
                                        #   in Loop: Header=BB6_11 Depth=4
	movslq	-148(%rbp), %rax
	cmpl	$0, used_reg_flag(,%rax,4)
	je	.LBB6_14
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB6_11 Depth=4
	leaq	-128(%rbp), %rax
	movss	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-48(%rbp), %ecx
	addl	-20(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-152(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movl	-32(%rbp), %ecx
	imull	-44(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm2, %xmm1
	movslq	-148(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, (%rsi)
	movl	-24(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-144(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movl	-36(%rbp), %ecx
	imull	-44(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm2, %xmm1
	movslq	-148(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, 4(%rsi)
	cvtsi2ssl	-148(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movslq	-148(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm1, 8(%rax)
.LBB6_14:                               # %if.end
                                        #   in Loop: Header=BB6_11 Depth=4
	jmp	.LBB6_15
.LBB6_15:                               # %for.inc.35
                                        #   in Loop: Header=BB6_11 Depth=4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_11
.LBB6_16:                               # %for.end.37
                                        #   in Loop: Header=BB6_9 Depth=3
	movl	$0, -148(%rbp)
.LBB6_17:                               # %for.cond.38
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$36, -148(%rbp)
	jge	.LBB6_47
# BB#18:                                # %for.body.41
                                        #   in Loop: Header=BB6_17 Depth=4
	movslq	-148(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	144(%rcx,%rax,4), %edx
	movw	%dx, %si
	movw	%si, -154(%rbp)
	movslq	-148(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	288(%rcx,%rax,4), %edx
	movw	%dx, %si
	movw	%si, -156(%rbp)
	movslq	-148(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	432(%rcx,%rax,4), %edx
	movw	%dx, %si
	movw	%si, -158(%rbp)
	movslq	-148(%rbp), %rax
	cmpl	$0, used_trans_flag(,%rax,4)
	je	.LBB6_45
# BB#19:                                # %if.then.54
                                        #   in Loop: Header=BB6_17 Depth=4
	movslq	-148(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$8, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	ja	.LBB6_44
# BB#65:                                # %if.then.54
                                        #   in Loop: Header=BB6_17 Depth=4
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_20:                               # %sw.bb
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	(%rsi), %xmm0
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	4(%rsi), %xmm1
	addss	%xmm1, %xmm0
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	8(%rsi), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -164(%rbp)
	movss	-164(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	(%rsi), %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, (%rsi)
	movss	-164(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	4(%rsi), %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, 4(%rsi)
	movss	-164(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	8(%rsi), %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
	jmp	.LBB6_44
.LBB6_21:                               # %sw.bb.101
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	addss	(%rsi), %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, (%rsi)
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_23
# BB#22:                                # %if.then.118
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.LBB6_23:                               # %if.end.124
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	addss	4(%rsi), %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, 4(%rsi)
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	4(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_25
# BB#24:                                # %if.then.141
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	4(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rax)
.LBB6_25:                               # %if.end.148
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	addss	8(%rsi), %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, 8(%rsi)
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	8(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_27
# BB#26:                                # %if.then.165
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	8(%rax), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
.LBB6_27:                               # %if.end.172
                                        #   in Loop: Header=BB6_17 Depth=4
	jmp	.LBB6_44
.LBB6_28:                               # %sw.bb.173
                                        #   in Loop: Header=BB6_17 Depth=4
	xorps	%xmm0, %xmm0
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	subss	(%rsi), %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, (%rsi)
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB6_30
# BB#29:                                # %if.then.190
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.LBB6_30:                               # %if.end.197
                                        #   in Loop: Header=BB6_17 Depth=4
	xorps	%xmm0, %xmm0
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	subss	4(%rsi), %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, 4(%rsi)
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	4(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB6_32
# BB#31:                                # %if.then.214
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	4(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rax)
.LBB6_32:                               # %if.end.221
                                        #   in Loop: Header=BB6_17 Depth=4
	xorps	%xmm0, %xmm0
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	subss	8(%rsi), %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, 8(%rsi)
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	8(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB6_34
# BB#33:                                # %if.then.238
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cvtss2sd	8(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
.LBB6_34:                               # %if.end.245
                                        #   in Loop: Header=BB6_17 Depth=4
	jmp	.LBB6_44
.LBB6_35:                               # %sw.bb.246
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, (%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, 4(%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
	jmp	.LBB6_44
.LBB6_36:                               # %sw.bb.265
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, (%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, 4(%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
	jmp	.LBB6_44
.LBB6_37:                               # %sw.bb.284
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	(%rsi), %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, (%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	4(%rsi), %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, 4(%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	mulss	8(%rsi), %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
	jmp	.LBB6_44
.LBB6_38:                               # %sw.bb.315
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	cvtss2sd	(%rsi), %xmm2
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	cvtss2sd	(%rsi), %xmm2
	mulsd	%xmm2, %xmm3
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movss	%xmm0, (%rdx)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	cvtss2sd	4(%rdx), %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	cvtss2sd	4(%rdx), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movss	%xmm0, 4(%rdx)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	cvtss2sd	8(%rdx), %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	cvtss2sd	8(%rdx), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$12, %rax, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movss	%xmm0, 8(%rdx)
	jmp	.LBB6_44
.LBB6_39:                               # %sw.bb.366
                                        #   in Loop: Header=BB6_17 Depth=4
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-128(%rbp), %rax
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	addss	4(%rsi), %xmm1
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	addss	8(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_41
# BB#40:                                # %if.then.381
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, (%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, 4(%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
	jmp	.LBB6_42
.LBB6_41:                               # %if.else
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, (%rsi)
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm0, 4(%rsi)
	movzwl	-156(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
.LBB6_42:                               # %if.end.418
                                        #   in Loop: Header=BB6_17 Depth=4
	jmp	.LBB6_44
.LBB6_43:                               # %sw.bb.419
                                        #   in Loop: Header=BB6_17 Depth=4
	leaq	-128(%rbp), %rax
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	cvtss2sd	(%rsi), %xmm1
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, (%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	cvtss2sd	4(%rsi), %xmm1
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movss	%xmm1, 4(%rsi)
	movzwl	-154(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	cvtss2sd	8(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movzwl	-158(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movss	%xmm0, 8(%rax)
.LBB6_44:                               # %sw.epilog
                                        #   in Loop: Header=BB6_17 Depth=4
	jmp	.LBB6_45
.LBB6_45:                               # %if.end.447
                                        #   in Loop: Header=BB6_17 Depth=4
	jmp	.LBB6_46
.LBB6_46:                               # %for.inc.448
                                        #   in Loop: Header=BB6_17 Depth=4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_17
.LBB6_47:                               # %for.end.450
                                        #   in Loop: Header=BB6_9 Depth=3
	movl	$0, -148(%rbp)
.LBB6_48:                               # %for.cond.451
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -148(%rbp)
	jge	.LBB6_51
# BB#49:                                # %for.body.454
                                        #   in Loop: Header=BB6_48 Depth=4
	movslq	-148(%rbp), %rax
	movss	-128(%rbp,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movslq	-148(%rbp), %rax
	addl	-140(%rbp,%rax,4), %ecx
	movl	%ecx, -140(%rbp,%rax,4)
# BB#50:                                # %for.inc.466
                                        #   in Loop: Header=BB6_48 Depth=4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_48
.LBB6_51:                               # %for.end.468
                                        #   in Loop: Header=BB6_9 Depth=3
	jmp	.LBB6_52
.LBB6_52:                               # %for.inc.469
                                        #   in Loop: Header=BB6_9 Depth=3
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB6_9
.LBB6_53:                               # %for.end.471
                                        #   in Loop: Header=BB6_7 Depth=2
	jmp	.LBB6_54
.LBB6_54:                               # %for.inc.472
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_7
.LBB6_55:                               # %for.end.474
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -148(%rbp)
.LBB6_56:                               # %for.cond.475
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB6_62
# BB#57:                                # %for.body.478
                                        #   in Loop: Header=BB6_56 Depth=2
	cmpl	$3, -148(%rbp)
	jge	.LBB6_59
# BB#58:                                # %if.then.481
                                        #   in Loop: Header=BB6_56 Depth=2
	movslq	-148(%rbp), %rax
	cvtsi2ssl	-140(%rbp,%rax,4), %xmm0
	movl	-44(%rbp), %ecx
	imull	%ecx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-148(%rbp), %rax
	movq	-16(%rbp), %rsi
	movb	%dl, (%rsi,%rax)
	jmp	.LBB6_60
.LBB6_59:                               # %if.else.493
                                        #   in Loop: Header=BB6_56 Depth=2
	movslq	-148(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
.LBB6_60:                               # %if.end.496
                                        #   in Loop: Header=BB6_56 Depth=2
	jmp	.LBB6_61
.LBB6_61:                               # %for.inc.497
                                        #   in Loop: Header=BB6_56 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_56
.LBB6_62:                               # %for.end.499
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
# BB#63:                                # %for.inc.500
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_1
.LBB6_64:                               # %for.end.502
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	qbist, .Lfunc_end6-qbist
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_20
	.quad	.LBB6_21
	.quad	.LBB6_28
	.quad	.LBB6_35
	.quad	.LBB6_36
	.quad	.LBB6_37
	.quad	.LBB6_38
	.quad	.LBB6_39
	.quad	.LBB6_43

	.text
	.align	16, 0x90
	.type	dialog_new_variations,@function
dialog_new_variations:                  # @dialog_new_variations
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -20(%rbp)
	jge	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$info, %rax
	movslq	-20(%rbp), %rcx
	imulq	$576, %rcx, %rcx        # imm = 0x240
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	modify_info
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_new_variations, .Lfunc_end7-dialog_new_variations
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_select_preview,@function
dialog_select_preview:                  # @dialog_select_preview
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$info, %rdx
	movl	$576, %eax              # imm = 0x240
	movl	%eax, %r8d
	movabsq	$last_info, %r9
	movl	$5184, %eax             # imm = 0x1440
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r9, %rdi
	movq	%rdx, %rsi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%r8, -40(%rbp)          # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	dialog_new_variations
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	dialog_update_previews
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dialog_select_preview, .Lfunc_end8-dialog_select_preview
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_toggle_antialaising,@function
dialog_toggle_antialaising:             # @dialog_toggle_antialaising
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	$1, %ecx
	movl	$4, %edx
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, qbist_info+576
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dialog_toggle_antialaising, .Lfunc_end9-dialog_toggle_antialaising
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_undo,@function
dialog_undo:                            # @dialog_undo
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
	subq	$5232, %rsp             # imm = 0x1470
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$info, %rdx
	movabsq	$last_info, %r8
	movl	$5184, %eax             # imm = 0x1440
	movl	%eax, %r9d
	leaq	-5200(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r10, %rdi
	movq	%rdx, %rsi
	movq	%rdx, -5208(%rbp)       # 8-byte Spill
	movq	%r9, %rdx
	movq	%r8, -5216(%rbp)        # 8-byte Spill
	movq	%r9, -5224(%rbp)        # 8-byte Spill
	movq	%rcx, -5232(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-5208(%rbp), %rdi       # 8-byte Reload
	movq	-5216(%rbp), %rsi       # 8-byte Reload
	movq	-5224(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movq	-5232(%rbp), %rdi       # 8-byte Reload
	movq	-5232(%rbp), %rsi       # 8-byte Reload
	callq	dialog_update_previews
	movabsq	$last_info, %rcx
	movl	$5184, %eax             # imm = 0x1440
	movl	%eax, %edx
	leaq	-5200(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	addq	$5232, %rsp             # imm = 0x1470
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dialog_undo, .Lfunc_end10-dialog_undo
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_load,@function
dialog_load:                            # @dialog_load
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.28, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.20, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.26, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$qbist_info, %rsi
	addq	$580, %rsi              # imm = 0x244
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movq	-32(%rbp), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$qbist_info, %rsi
	addq	$580, %rsi              # imm = 0x244
	movl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strncpy
	movabsq	$qbist_info, %rdx
	addq	$580, %rdx              # imm = 0x244
	movq	%rdx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	load_data
	movq	-40(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	callq	dialog_new_variations
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	callq	dialog_update_previews
.LBB11_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialog_load, .Lfunc_end11-dialog_load
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_save,@function
dialog_save:                            # @dialog_save
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.30, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.20, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$qbist_info, %rsi
	addq	$580, %rsi              # imm = 0x244
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movq	-32(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$qbist_info, %rsi
	addq	$580, %rsi              # imm = 0x244
	movl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strncpy
	movabsq	$qbist_info, %rdx
	addq	$580, %rdx              # imm = 0x244
	movq	%rdx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	save_data
	movq	-40(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_free
.LBB12_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dialog_save, .Lfunc_end12-dialog_save
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_update_previews,@function
dialog_update_previews:                 # @dialog_update_previews
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
	subq	$12416, %rsp            # imm = 0x3080
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	cmpl	$9, -24(%rbp)
	jge	.LBB13_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$info, %rax
	movl	$9, %ecx
	movl	-24(%rbp), %edx
	addl	$5, %edx
	movq	%rax, -12328(%rbp)      # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	imulq	$576, %rsi, %rsi        # imm = 0x240
	movq	-12328(%rbp), %rdi      # 8-byte Reload
	addq	%rsi, %rdi
	callq	optimize
	movl	$0, -20(%rbp)
.LBB13_3:                               # %for.cond.1
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, -20(%rbp)
	jge	.LBB13_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB13_3 Depth=2
	xorl	%edx, %edx
	movl	$64, %eax
	movl	$3, %ecx
	movl	$1, %esi
	leaq	-12320(%rbp), %rdi
	movabsq	$info, %r8
	movl	$9, %r9d
	movl	-24(%rbp), %r10d
	addl	$5, %r10d
	movl	%eax, -12332(%rbp)      # 4-byte Spill
	movl	%r10d, %eax
	movl	%edx, -12336(%rbp)      # 4-byte Spill
	cltd
	idivl	%r9d
	movslq	%edx, %r11
	imulq	$576, %r11, %r11        # imm = 0x240
	addq	%r11, %r8
	movl	-20(%rbp), %edx
	shll	$6, %edx
	imull	$3, %edx, %edx
	movslq	%edx, %r11
	addq	%r11, %rdi
	movl	-20(%rbp), %edx
	movq	%rdi, -12344(%rbp)      # 8-byte Spill
	movq	%r8, %rdi
	movq	-12344(%rbp), %r8       # 8-byte Reload
	movl	%esi, -12348(%rbp)      # 4-byte Spill
	movq	%r8, %rsi
	movl	-12336(%rbp), %r9d      # 4-byte Reload
	movl	%edx, -12352(%rbp)      # 4-byte Spill
	movl	%r9d, %edx
	movl	-12352(%rbp), %r10d     # 4-byte Reload
	movl	%ecx, -12356(%rbp)      # 4-byte Spill
	movl	%r10d, %ecx
	movl	-12332(%rbp), %r8d      # 4-byte Reload
	movl	-12332(%rbp), %r9d      # 4-byte Reload
	movl	$64, (%rsp)
	movl	$3, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	qbist
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	preview(,%rax,8), %rax
	movq	%rax, -12368(%rbp)      # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-12368(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$64, %edx
	movl	$192, %r8d
	leaq	-12320(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -12376(%rbp)      # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -12380(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-12380(%rbp), %r9d      # 4-byte Reload
	movl	%ecx, -12384(%rbp)      # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -12388(%rbp)      # 4-byte Spill
	movl	%r9d, %r8d
	movl	-12384(%rbp), %r9d      # 4-byte Reload
	movq	-12376(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$192, 8(%rsp)
	callq	gimp_preview_area_draw
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %for.end.15
	addq	$12416, %rsp            # imm = 0x3080
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialog_update_previews, .Lfunc_end13-dialog_update_previews
	.cfi_endproc

	.align	16, 0x90
	.type	modify_info,@function
modify_info:                            # @modify_info
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	$36, %edx
	movl	$576, %ecx              # imm = 0x240
	movl	%ecx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%r8, %rdx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	memcpy
	movq	gr, %rdi
	movl	-40(%rbp), %esi         # 4-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	callq	g_rand_int_range
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB14_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	gr(%rip), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	g_rand_int_range
	movl	%eax, %edx
	movl	%edx, %edi
	subl	$3, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB14_7
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_3:                               # %sw.bb
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movl	$9, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$36, %edx
	movq	gr, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	g_rand_int_range
	movslq	%eax, %rdi
	movq	-16(%rbp), %rcx
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rcx,%rdi,4)
	jmp	.LBB14_7
.LBB14_4:                               # %sw.bb.4
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movl	$6, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$36, %edx
	movq	gr, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_rand_int_range
	movslq	%eax, %rdi
	movq	-16(%rbp), %rcx
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, 144(%rcx,%rdi,4)
	jmp	.LBB14_7
.LBB14_5:                               # %sw.bb.9
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movl	$6, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$36, %edx
	movq	gr, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	g_rand_int_range
	movslq	%eax, %rdi
	movq	-16(%rbp), %rcx
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, 288(%rcx,%rdi,4)
	jmp	.LBB14_7
.LBB14_6:                               # %sw.bb.14
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movl	$6, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$36, %edx
	movq	gr, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_rand_int_range
	movslq	%eax, %rdi
	movq	-16(%rbp), %rcx
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, 432(%rcx,%rdi,4)
.LBB14_7:                               # %sw.epilog
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_8
.LBB14_8:                               # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB14_1
.LBB14_9:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	modify_info, .Lfunc_end14-modify_info
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_3
	.quad	.LBB14_4
	.quad	.LBB14_5
	.quad	.LBB14_6

	.text
	.align	16, 0x90
	.type	load_data,@function
load_data:                              # @load_data
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
	subq	$336, %rsp              # imm = 0x150
	movabsq	$.L.str.29, %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_21
.LBB15_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	$288, %eax              # imm = 0x120
	movl	%eax, %edx
	leaq	-320(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$288, %rax              # imm = 0x120
	je	.LBB15_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB15_21
.LBB15_4:                               # %if.end.5
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$0, -20(%rbp)
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB15_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB15_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB15_5 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	callq	get_be16
	movzwl	%ax, %ecx
	movslq	-20(%rbp), %rdx
	movl	%ecx, info(,%rdx,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_5
.LBB15_8:                               # %for.end
	movl	$0, -20(%rbp)
.LBB15_9:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB15_12
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB15_9 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	get_be16
	movzwl	%ax, %ecx
	movslq	-20(%rbp), %rdx
	movl	%ecx, info+144(,%rdx,4)
# BB#11:                                # %for.inc.24
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_9
.LBB15_12:                              # %for.end.26
	movl	$0, -20(%rbp)
.LBB15_13:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB15_16
# BB#14:                                # %for.body.30
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	get_be16
	movzwl	%ax, %ecx
	movslq	-20(%rbp), %rdx
	movl	%ecx, info+288(,%rdx,4)
# BB#15:                                # %for.inc.40
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_13
.LBB15_16:                              # %for.end.42
	movl	$0, -20(%rbp)
.LBB15_17:                              # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB15_20
# BB#18:                                # %for.body.46
                                        #   in Loop: Header=BB15_17 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$216, %rax
	movq	%rax, %rdi
	callq	get_be16
	movzwl	%ax, %ecx
	movslq	-20(%rbp), %rdx
	movl	%ecx, info+432(,%rdx,4)
# BB#19:                                # %for.inc.56
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_17
.LBB15_20:                              # %for.end.58
	movl	$1, -4(%rbp)
.LBB15_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end15:
	.size	load_data, .Lfunc_end15-load_data
	.cfi_endproc

	.align	16, 0x90
	.type	get_be16,@function
get_be16:                               # @get_be16
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
	movq	%rdi, -8(%rbp)
	movb	(%rdi), %al
	movzbl	%al, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$8, %ecx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %esi
	orl	%esi, %ecx
	movw	%cx, %dx
	movzwl	%dx, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	get_be16, .Lfunc_end16-get_be16
	.cfi_endproc

	.align	16, 0x90
	.type	save_data,@function
save_data:                              # @save_data
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
	subq	$336, %rsp              # imm = 0x150
	movabsq	$.L.str.31, %rsi
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB17_19
.LBB17_2:                               # %if.end
	movl	$0, -20(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB17_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-20(%rbp), %rdx
	movl	info(,%rdx,4), %ecx
	movw	%cx, %si
	movq	%rax, %rdi
	movzwl	%si, %esi
	callq	set_be16
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_3
.LBB17_6:                               # %for.end
	movl	$0, -20(%rbp)
.LBB17_7:                               # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB17_10
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB17_7 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$72, %rax
	movslq	-20(%rbp), %rdx
	movl	info+144(,%rdx,4), %ecx
	movw	%cx, %si
	movq	%rax, %rdi
	movzwl	%si, %esi
	callq	set_be16
# BB#9:                                 # %for.inc.15
                                        #   in Loop: Header=BB17_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_7
.LBB17_10:                              # %for.end.17
	movl	$0, -20(%rbp)
.LBB17_11:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB17_14
# BB#12:                                # %for.body.21
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$144, %rax
	movslq	-20(%rbp), %rdx
	movl	info+288(,%rdx,4), %ecx
	movw	%cx, %si
	movq	%rax, %rdi
	movzwl	%si, %esi
	callq	set_be16
# BB#13:                                # %for.inc.30
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_11
.LBB17_14:                              # %for.end.32
	movl	$0, -20(%rbp)
.LBB17_15:                              # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$36, -20(%rbp)
	jge	.LBB17_18
# BB#16:                                # %for.body.36
                                        #   in Loop: Header=BB17_15 Depth=1
	leaq	-320(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$216, %rax
	movslq	-20(%rbp), %rdx
	movl	info+432(,%rdx,4), %ecx
	movw	%cx, %si
	movq	%rax, %rdi
	movzwl	%si, %esi
	callq	set_be16
# BB#17:                                # %for.inc.45
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_15
.LBB17_18:                              # %for.end.47
	movl	$1, %eax
	movl	%eax, %esi
	movl	$288, %eax              # imm = 0x120
	movl	%eax, %edx
	leaq	-320(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fwrite
	movq	-32(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB17_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end17:
	.size	save_data, .Lfunc_end17-save_data
	.cfi_endproc

	.align	16, 0x90
	.type	set_be16,@function
set_be16:                               # @set_be16
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
	movw	%si, %ax
	movq	%rdi, -8(%rbp)
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %esi
	sarl	$8, %esi
	movb	%sil, %cl
	movq	-8(%rbp), %rdi
	movb	%cl, (%rdi)
	movzwl	-10(%rbp), %esi
	andl	$255, %esi
	movb	%sil, %cl
	movq	-8(%rbp), %rdi
	movb	%cl, 1(%rdi)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	set_be16, .Lfunc_end18-set_be16
	.cfi_endproc

	.align	16, 0x90
	.type	check_last_modified,@function
check_last_modified:                    # @check_last_modified
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -12(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jl	.LBB19_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	432(%rcx,%rax,4), %edx
	cmpl	-16(%rbp), %edx
	setne	%sil
	movb	%sil, -17(%rbp)         # 1-byte Spill
.LBB19_3:                               # %land.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_4
	jmp	.LBB19_5
.LBB19_4:                               # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB19_1
.LBB19_5:                               # %while.end
	cmpl	$0, -12(%rbp)
	jge	.LBB19_7
# BB#6:                                 # %if.then
	movslq	-16(%rbp), %rax
	movl	$1, used_reg_flag(,%rax,4)
	jmp	.LBB19_8
.LBB19_7:                               # %if.else
	movslq	-12(%rbp), %rax
	movl	$1, used_trans_flag(,%rax,4)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	144(%rcx,%rax,4), %edx
	callq	check_last_modified
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	288(%rcx,%rax,4), %edx
	callq	check_last_modified
.LBB19_8:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	check_last_modified, .Lfunc_end19-check_last_modified
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

	.type	.Lquery.args,@object    # @query.args
	.section	.rodata,"a",@progbits
	.align	16
.Lquery.args:
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
	.size	.Lquery.args, 72

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"plug-in-qbist"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Generate a huge variety of abstract patterns"
	.size	.L.str.7, 45

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This Plug-in is based on an article by J\303\266rn Loviscach (appeared in c't 10/95, page 326). It generates modern art pictures from a random genetic formula."
	.size	.L.str.8, 154

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"J\303\266rn Loviscach, Jens Ch. Restemeier"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"January 2001, 1.12"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Qbist..."
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.13, 31

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

	.type	gr,@object              # @gr
	.local	gr
	.comm	gr,8,8
	.type	qbist_info,@object      # @qbist_info
	.local	qbist_info
	.comm	qbist_info,4676,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Qbist"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"qbist"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"G-Qbist"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-qbist"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-cancel"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-ok"
	.size	.L.str.21, 7

	.type	info,@object            # @info
	.local	info
	.comm	info,5184,16
	.type	last_info,@object       # @last_info
	.local	last_info
	.comm	last_info,5184,16
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"clicked"
	.size	.L.str.22, 8

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,72,16
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Antialiasing"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"toggled"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-undo"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-open"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-save"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Load QBE File"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"rb"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Save as QBE File"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"wb"
	.size	.L.str.31, 3

	.type	used_trans_flag,@object # @used_trans_flag
	.local	used_trans_flag
	.comm	used_trans_flag,144,16
	.type	used_reg_flag,@object   # @used_reg_flag
	.local	used_reg_flag
	.comm	used_reg_flag,24,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
