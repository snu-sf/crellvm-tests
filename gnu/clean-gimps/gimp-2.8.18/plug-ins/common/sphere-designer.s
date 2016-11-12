	.text
	.file	"sphere-designer.bc"
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
	subq	$128, %rsp
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
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
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
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_14
.LBB1_4:                                # %if.end
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_15
.LBB1_15:                               # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_16
.LBB1_16:                               # %if.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_12
.LBB1_5:                                # %sw.bb
	movabsq	$.L.str.6, %rdi
	movabsq	$s, %rax
	movw	$0, s+16
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	sphere_main
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_14
.LBB1_7:                                # %if.end.13
	jmp	.LBB1_13
.LBB1_8:                                # %sw.bb.14
	movabsq	$.L.str.6, %rdi
	movabsq	$s, %rax
	movw	$0, s+16
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movswl	s+16, %ecx
	cmpl	$0, %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB1_10
# BB#9:                                 # %if.then.17
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_14
.LBB1_10:                               # %if.end.18
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.19
	jmp	.LBB1_12
.LBB1_12:                               # %sw.default
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_14
.LBB1_13:                               # %sw.epilog
	movabsq	$.L.str.6, %rdi
	movabsq	$s, %rax
	movl	$26632, %edx            # imm = 0x6808
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movq	-48(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	realrender
	callq	gimp_displays_flush
	movabsq	$run.values, %rsi
	movq	-32(%rbp), %rdi
	movl	$1, (%rdi)
	movq	-40(%rbp), %rdi
	movq	%rsi, (%rdi)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-48(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
.LBB1_14:                               # %return
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

	.align	16, 0x90
	.type	sphere_main,@function
sphere_main:                            # @sphere_main
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
	subq	$16, %rsp
	movabsq	$.L.str.17, %rax
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movl	$1, %edi
	movl	$150, %esi
	callq	cairo_format_stride_for_width
	movl	%eax, img_stride
	imull	$150, img_stride, %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movl	$1, %esi
	movl	$150, %ecx
	movq	%rax, img
	movq	img, %rdi
	movl	img_stride, %r8d
	movl	%ecx, %edx
	callq	cairo_image_surface_create_for_data
	movq	%rax, buffer
	callq	makewindow
	movswl	s+16, %ecx
	cmpl	$0, %ecx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %esi
	movq	%rcx, %rdi
	movq	%rcx, %rdx
	callq	sphere_response
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	callq	rebuildlist
.LBB4_3:                                # %if.end
	callq	gtk_main
	movq	buffer, %rdi
	callq	cairo_surface_destroy
	movq	img, %rdi
	callq	g_free
	movl	do_run, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sphere_main, .Lfunc_end4-sphere_main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4601552919265804288    # double -10
.LCPI5_1:
	.quad	4607182418800017408     # double 1
.LCPI5_2:
	.quad	4643176031446892544     # double 255
.LCPI5_3:
	.quad	4620749512677471027     # double 8.0999999999999996
.LCPI5_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	realrender,@function
realrender:                             # @realrender
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	callq	initworld
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_drawable_width
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_width
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	leaq	-264(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -328(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bpp
	movl	%eax, -164(%rbp)
	movl	-148(%rbp), %eax
	subl	-140(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -272(%rbp)
	movl	-148(%rbp), %r9d
	subl	-140(%rbp), %r9d
	shll	$2, %r9d
	movslq	%r9d, %rdi
	callq	g_malloc
	movabsq	$.L.str.87, %rdi
	movq	%rax, -280(%rbp)
	movl	-148(%rbp), %r9d
	subl	-140(%rbp), %r9d
	movl	%r9d, -132(%rbp)
	movl	-152(%rbp), %r9d
	subl	-144(%rbp), %r9d
	movl	%r9d, -136(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$0, -16(%rbp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_9 Depth 3
	movl	-16(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB5_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-272(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -12(%rbp)
.LBB5_3:                                # %for.cond.22
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.25
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movl	$10, %edx
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_4, %xmm2         # xmm2 = mem[0],zero
	cvtsi2ssl	-12(%rbp), %xmm3
	movl	-132(%rbp), %eax
	subl	$1, %eax
	cvtsi2ssl	%eax, %xmm4
	divss	%xmm4, %xmm3
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	movsd	%xmm4, -64(%rbp)
	movsd	%xmm4, -96(%rbp)
	cvtsi2ssl	-16(%rbp), %xmm3
	movl	-136(%rbp), %eax
	subl	$1, %eax
	cvtsi2ssl	%eax, %xmm4
	divss	%xmm4, %xmm3
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm1, -88(%rbp)
	callq	traceray
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	pixelval
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movq	-160(%rbp), %rsi
	movb	%al, (%rsi)
	mulsd	-120(%rbp), %xmm0
	callq	pixelval
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movq	-160(%rbp), %rsi
	movb	%al, 1(%rsi)
	mulsd	-112(%rbp), %xmm0
	callq	pixelval
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movq	-160(%rbp), %rsi
	movb	%al, 2(%rsi)
	mulsd	-104(%rbp), %xmm0
	callq	pixelval
	movq	-160(%rbp), %rsi
	movb	%al, 3(%rsi)
	movq	-160(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -160(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-216(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-148(%rbp), %ecx
	subl	-140(%rbp), %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-344(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
	movl	$0, -12(%rbp)
.LBB5_7:                                # %for.cond.63
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
	movl	-12(%rbp), %eax
	movl	-148(%rbp), %ecx
	subl	-140(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_14
# BB#8:                                 # %for.body.67
                                        #   in Loop: Header=BB5_7 Depth=2
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -288(%rbp)
	movl	-12(%rbp), %eax
	imull	-164(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	-288(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -296(%rbp)
	movl	$0, -284(%rbp)
.LBB5_9:                                # %for.cond.76
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-284(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jge	.LBB5_12
# BB#10:                                # %for.body.79
                                        #   in Loop: Header=BB5_9 Depth=3
	movl	-288(%rbp), %eax
	movl	-284(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-296(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-292(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-280(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm2
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI5_1(%rip), %xmm3   # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movl	-292(%rbp), %eax
	addl	-284(%rbp), %eax
	movslq	%eax, %rdx
	movq	-280(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#11:                                # %for.inc.100
                                        #   in Loop: Header=BB5_9 Depth=3
	movl	-284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	jmp	.LBB5_9
.LBB5_12:                               # %for.end.102
                                        #   in Loop: Header=BB5_7 Depth=2
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc.103
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_7
.LBB5_14:                               # %for.end.105
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-264(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-148(%rbp), %ecx
	subl	-140(%rbp), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_row
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-136(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -352(%rbp)        # 4-byte Spill
# BB#15:                                # %for.inc.112
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_16:                               # %for.end.114
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-272(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-280(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movl	-148(%rbp), %r8d
	subl	-140(%rbp), %r8d
	movl	-152(%rbp), %r9d
	subl	-144(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -364(%rbp)        # 4-byte Spill
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	realrender, .Lfunc_end5-realrender
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	-4597049319638433792    # double -20
.LCPI6_2:
	.quad	4626322717216342016     # double 20
.LCPI6_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI6_4:
	.quad	4607182418800017408     # double 1
.LCPI6_5:
	.quad	4645040803167600640     # double 360
.LCPI6_6:
	.quad	4621819117588971520     # double 10
.LCPI6_7:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	makewindow,@function
makewindow:                             # @makewindow
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1720, %rsp             # imm = 0x6B8
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	-176(%rbp), %rdi        # 8-byte Reload
	callq	gettext
	movabsq	$.L.str.19, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.20, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.21, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.22, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -188(%rbp)       # 4-byte Spill
	movl	%ebx, -192(%rbp)        # 4-byte Spill
	movl	%r10d, -196(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.23, %rsi
	movabsq	$sphere_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movq	%rax, drawarea
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	drawarea, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$150, %ecx
	movq	drawarea, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	drawarea, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$expose_event, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	drawarea, %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	-320(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-112(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$loadpreset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$savepreset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-96(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-112(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	$68, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-128(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, texturelist
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.28, %rsi
	movabsq	$selectitem, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	-432(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$150, %edx
	movq	-128(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_size_request
	movq	-96(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.30, %rdx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movq	%rax, -40(%rbp)
	movq	texturelist, %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_view_append_column
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-112(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	movl	-484(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.26, %rsi
	movabsq	$addtexture, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$2, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_signal_connect_data
	movq	-120(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movabsq	$.L.str.26, %rsi
	movabsq	$duptexture, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$2, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_signal_connect_data
	movq	-120(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movabsq	$.L.str.26, %rsi
	movabsq	$deltexture, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$2, %r9d
	movq	-120(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_signal_connect_data
	movq	-120(%rbp), %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$7, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-112(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	-596(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-608(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-616(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, typemenu
	movq	typemenu, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$selecttype, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gimp_int_combo_box_connect
	movq	-80(%rbp), %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r10d
	movq	typemenu, %r8
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$textures, %rcx
	movq	%rax, texturemenu
	movq	%rcx, -168(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	texturemenu, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	16(%rsi), %rdx
	movq	-168(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	-688(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_int_combo_box_append
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-168(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	texturemenu, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$selecttexture, %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-704(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-80(%rbp), %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	texturemenu, %r8
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-104(%rbp), %r8
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -756(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-756(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.41, %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$30, %esi
	movl	$20, %edx
	leaq	-160(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rdi
	callq	drawcolor1
	movabsq	$.L.str.42, %rsi
	movabsq	$color1_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-120(%rbp), %r10
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movq	-792(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$30, %esi
	movl	$20, %edx
	leaq	-160(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -812(%rbp)        # 4-byte Spill
	movl	-812(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rdi
	callq	drawcolor2
	movabsq	$.L.str.42, %rsi
	movabsq	$color2_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-120(%rbp), %r10
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	-824(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -864(%rbp)       # 8-byte Spill
	movsd	%xmm1, -872(%rbp)       # 8-byte Spill
	movsd	-864(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-872(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-872(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -876(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, scalescale
	movq	scalescale, %rax
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-888(%rbp), %rcx        # 8-byte Reload
	movq	-888(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
	movsd	%xmm1, -936(%rbp)       # 8-byte Spill
	movsd	-928(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-936(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-936(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -940(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, turbulencescale
	movq	turbulencescale, %rax
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-952(%rbp), %rcx        # 8-byte Reload
	movq	-952(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -992(%rbp)       # 8-byte Spill
	movsd	%xmm1, -1000(%rbp)      # 8-byte Spill
	movsd	-992(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1000(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1000(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1004(%rbp)      # 4-byte Spill
	movl	%ebx, -1008(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, amountscale
	movq	amountscale, %rax
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	movq	-1016(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1056(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1064(%rbp)      # 8-byte Spill
	movsd	-1056(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1064(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1064(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1068(%rbp)      # 4-byte Spill
	movl	%ebx, -1072(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, expscale
	movq	expscale, %rax
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	movq	-1080(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rdi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
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
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$9, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-112(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1148(%rbp)       # 4-byte Spill
	movl	-1148(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1176(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -1180(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -1192(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1200(%rbp)      # 8-byte Spill
	movsd	-1192(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1200(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1200(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1204(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, scalexscale
	movq	scalexscale, %rax
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	movq	-1216(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1256(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1264(%rbp)      # 8-byte Spill
	movsd	-1256(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1264(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1264(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1268(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, scaleyscale
	movq	scaleyscale, %rax
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	movq	-1280(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1320(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1328(%rbp)      # 8-byte Spill
	movsd	-1320(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1328(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1328(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1332(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, scalezscale
	movq	scalezscale, %rax
	movq	%rdi, -1344(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	movq	-1344(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1384(%rbp)      # 8-byte Spill
	movsd	-1384(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1384(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1384(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1388(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, rotxscale
	movq	rotxscale, %rax
	movq	%rdi, -1400(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	movq	-1400(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rdi
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1440(%rbp)      # 8-byte Spill
	movsd	-1440(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1440(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1440(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1444(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, rotyscale
	movq	rotyscale, %rax
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	movq	-1456(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1488(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1496(%rbp)      # 8-byte Spill
	movsd	-1496(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1496(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1496(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1500(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, rotzscale
	movq	rotzscale, %rax
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1512(%rbp), %rcx       # 8-byte Reload
	movq	-1512(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	movq	%rcx, -1528(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1544(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1552(%rbp)      # 8-byte Spill
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1552(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1552(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1556(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, posxscale
	movq	posxscale, %rax
	movq	%rdi, -1568(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1568(%rbp), %rcx       # 8-byte Reload
	movq	-1568(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	movq	%rcx, -1584(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$7, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1600(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1608(%rbp)      # 8-byte Spill
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1608(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1608(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1612(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, posyscale
	movq	posyscale, %rax
	movq	%rdi, -1624(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	movq	-1624(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, -1656(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1664(%rbp)      # 8-byte Spill
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1664(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1664(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -1668(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.44, %rsi
	movabsq	$getscales, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, poszscale
	movq	poszscale, %rax
	movq	%rdi, -1680(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1680(%rbp), %rcx       # 8-byte Reload
	movq	-1680(%rbp), %r8        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	addq	$1720, %rsp             # imm = 0x6B8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	makewindow, .Lfunc_end6-makewindow
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4624633867356078080     # double 15
.LCPI7_1:
	.quad	-4598738169498697728    # double -15
.LCPI7_2:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI7_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	sphere_response,@function
sphere_response:                        # @sphere_response
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB7_5
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movabsq	$s, %rax
	addq	$24, %rax
	movw	$3, s+16
	movq	%rax, %rdi
	callq	setdefaults
	movabsq	$s, %rax
	addq	$688, %rax              # imm = 0x2B0
	movq	%rax, %rdi
	callq	setdefaults
	movabsq	$s, %rax
	addq	$1352, %rax             # imm = 0x548
	movq	%rax, %rdi
	callq	setdefaults
	movabsq	$s, %rax
	addq	$704, %rax              # imm = 0x2C0
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movl	$2, s+688
	movq	%rax, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movabsq	$s, %rax
	addq	$1080, %rax             # imm = 0x438
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movabsq	$s, %rax
	addq	$1368, %rax             # imm = 0x558
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movl	$2, s+1352
	movq	%rax, %rdi
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movabsq	$s, %rax
	addq	$1744, %rax             # imm = 0x6D0
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	vset
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_list_store_clear
	callq	rebuildlist
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.3
	cmpl	$0, idle_id
	je	.LBB7_4
# BB#3:                                 # %if.then
	movl	idle_id, %edi
	callq	g_source_remove
	movl	$0, idle_id
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_4:                                # %if.end
	movl	$1, do_run
.LBB7_5:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	callq	gtk_main_quit
.LBB7_6:                                # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sphere_response, .Lfunc_end7-sphere_response
	.cfi_endproc

	.align	16, 0x90
	.type	rebuildlist,@function
rebuildlist:                            # @rebuildlist
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
	subq	$112, %rsp
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -16(%rbp)
	movl	$0, -52(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	movl	-52(%rbp), %eax
	movswl	s+16, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movswl	s+16, %eax
	cmpl	$0, %eax
	je	.LBB8_9
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$s, %rax
	addq	$24, %rax
	movslq	-52(%rbp), %rcx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jge	.LBB8_9
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB8_5:                                # %for.cond.5
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movswl	s+16, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB8_5 Depth=2
	movl	$664, %eax              # imm = 0x298
	movl	%eax, %edx
	movabsq	$s, %rcx
	addq	$24, %rcx
	movslq	-56(%rbp), %rsi
	imulq	$664, %rsi, %rsi        # imm = 0x298
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	imulq	$664, %rsi, %rsi        # imm = 0x298
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	memcpy
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB8_5
.LBB8_8:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movw	s+16, %ax
	addw	$-1, %ax
	movw	%ax, s+16
	movl	-52(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
.LBB8_9:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_10
.LBB8_10:                               # %for.inc.15
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_1
.LBB8_11:                               # %for.end.17
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	movl	$0, -52(%rbp)
.LBB8_12:                               # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movswl	s+16, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_15
# BB#13:                                # %for.body.25
                                        #   in Loop: Header=BB8_12 Depth=1
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_list_store_append
	movabsq	$s, %rsi
	addq	$24, %rsi
	movq	-8(%rbp), %rdi
	movslq	-52(%rbp), %rax
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	mklabel
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$s, %rdi
	addq	$24, %rdi
	movslq	-52(%rbp), %r9
	imulq	$664, %r9, %r9          # imm = 0x298
	addq	%r9, %rdi
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
# BB#14:                                # %for.inc.31
                                        #   in Loop: Header=BB8_12 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_12
.LBB8_15:                               # %for.end.33
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB8_17
# BB#16:                                # %if.then.38
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB8_17:                               # %if.end.39
	callq	restartrender
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rebuildlist, .Lfunc_end8-rebuildlist
	.cfi_endproc

	.align	16, 0x90
	.type	expose_event,@function
expose_event:                           # @expose_event
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
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movq	buffer, %rsi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface
	movq	-24(%rbp), %rdi
	callq	cairo_paint
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	expose_event, .Lfunc_end9-expose_event
	.cfi_endproc

	.align	16, 0x90
	.type	loadpreset,@function
loadpreset:                             # @loadpreset
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	callq	fileselect
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	loadpreset, .Lfunc_end10-loadpreset
	.cfi_endproc

	.align	16, 0x90
	.type	savepreset,@function
savepreset:                             # @savepreset
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	callq	fileselect
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	savepreset, .Lfunc_end11-savepreset
	.cfi_endproc

	.align	16, 0x90
	.type	selectitem,@function
selectitem:                             # @selectitem
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	currenttexture
	movq	%rax, %rdi
	callq	setvals
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	selectitem, .Lfunc_end12-selectitem
	.cfi_endproc

	.align	16, 0x90
	.type	addtexture,@function
addtexture:                             # @addtexture
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
	subq	$96, %rsp
	movswl	s+16, %eax
	movl	%eax, -44(%rbp)
	cmpl	$19, -44(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movabsq	$s, %rax
	addq	$24, %rax
	movslq	-44(%rbp), %rcx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	setdefaults
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_list_store_append
	movabsq	$s, %rax
	addq	$24, %rax
	movq	-8(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	mklabel
	leaq	-40(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movabsq	$s, %rcx
	addq	$24, %rcx
	movslq	-44(%rbp), %rdi
	imulq	$664, %rdi, %rdi        # imm = 0x298
	addq	%rdi, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_selection_select_iter
	movw	s+16, %r10w
	addw	$1, %r10w
	movw	%r10w, s+16
	callq	restartrender
.LBB13_3:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	addtexture, .Lfunc_end13-addtexture
	.cfi_endproc

	.align	16, 0x90
	.type	duptexture,@function
duptexture:                             # @duptexture
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
	subq	$96, %rsp
	callq	currenttexture
	movq	%rax, -48(%rbp)
	movswl	s+16, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$19, -52(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_5
.LBB14_2:                               # %if.end
	cmpq	$0, -48(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then.2
	jmp	.LBB14_5
.LBB14_4:                               # %if.end.3
	movl	$664, %eax              # imm = 0x298
	movl	%eax, %edx
	movabsq	$s, %rcx
	addq	$24, %rcx
	movslq	-52(%rbp), %rsi
	imulq	$664, %rsi, %rsi        # imm = 0x298
	addq	%rsi, %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_list_store_append
	movabsq	$s, %rax
	addq	$24, %rax
	movq	-8(%rbp), %rdi
	movslq	-52(%rbp), %rcx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	mklabel
	leaq	-40(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movabsq	$s, %rcx
	addq	$24, %rcx
	movslq	-52(%rbp), %rdi
	imulq	$664, %rdi, %rdi        # imm = 0x298
	addq	%rdi, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_selection_select_iter
	movw	s+16, %r10w
	addw	$1, %r10w
	movw	%r10w, s+16
	callq	restartrender
.LBB14_5:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	duptexture, .Lfunc_end14-duptexture
	.cfi_endproc

	.align	16, 0x90
	.type	deltexture,@function
deltexture:                             # @deltexture
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
	subq	$80, %rsp
	movq	$0, -56(%rbp)
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-48(%rbp), %rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-56(%rbp), %rcx
	movl	$-1, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB15_2:                               # %if.end
	callq	restartrender
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	deltexture, .Lfunc_end15-deltexture
	.cfi_endproc

	.align	16, 0x90
	.type	selecttype,@function
selecttype:                             # @selecttype
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, noupdate
	je	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	callq	currenttexture
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.2
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.3
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	relabel
	callq	restartrender
.LBB16_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	selecttype, .Lfunc_end16-selecttype
	.cfi_endproc

	.align	16, 0x90
	.type	selecttexture,@function
selecttexture:                          # @selecttexture
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, noupdate
	je	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	callq	currenttexture
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then.2
	jmp	.LBB17_5
.LBB17_4:                               # %if.end.3
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	addq	$4, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	relabel
	callq	restartrender
.LBB17_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	selecttexture, .Lfunc_end17-selecttexture
	.cfi_endproc

	.align	16, 0x90
	.type	drawcolor1,@function
drawcolor1:                             # @drawcolor1
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	currenttexture
	movq	%rax, -48(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, drawcolor1.lastw
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	movq	drawcolor1.lastw, %rax
	movq	%rax, -8(%rbp)
.LBB18_3:                               # %if.end
	cmpq	$0, -8(%rbp)
	jne	.LBB18_5
# BB#4:                                 # %if.then.2
	jmp	.LBB18_8
.LBB18_5:                               # %if.end.3
	cmpq	$0, -48(%rbp)
	jne	.LBB18_7
# BB#6:                                 # %if.then.5
	jmp	.LBB18_8
.LBB18_7:                               # %if.end.6
	leaq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB18_8:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	drawcolor1, .Lfunc_end18-drawcolor1
	.cfi_endproc

	.align	16, 0x90
	.type	color1_changed,@function
color1_changed:                         # @color1_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	currenttexture
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_get_color
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 24(%rsi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 32(%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 40(%rsi)
	callq	restartrender
.LBB19_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	color1_changed, .Lfunc_end19-color1_changed
	.cfi_endproc

	.align	16, 0x90
	.type	drawcolor2,@function
drawcolor2:                             # @drawcolor2
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	currenttexture
	movq	%rax, -48(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, drawcolor2.lastw
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movq	drawcolor2.lastw, %rax
	movq	%rax, -8(%rbp)
.LBB20_3:                               # %if.end
	cmpq	$0, -8(%rbp)
	jne	.LBB20_5
# BB#4:                                 # %if.then.2
	jmp	.LBB20_8
.LBB20_5:                               # %if.end.3
	cmpq	$0, -48(%rbp)
	jne	.LBB20_7
# BB#6:                                 # %if.then.5
	jmp	.LBB20_8
.LBB20_7:                               # %if.end.6
	leaq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB20_8:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	drawcolor2, .Lfunc_end20-drawcolor2
	.cfi_endproc

	.align	16, 0x90
	.type	color2_changed,@function
color2_changed:                         # @color2_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	currenttexture
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_get_color
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 48(%rsi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 64(%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, 72(%rsi)
	callq	restartrender
.LBB21_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	color2_changed, .Lfunc_end21-color2_changed
	.cfi_endproc

	.align	16, 0x90
	.type	getscales,@function
getscales:                              # @getscales
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, noupdate
	je	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_5
.LBB22_2:                               # %if.end
	callq	currenttexture
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_4
# BB#3:                                 # %if.then.2
	jmp	.LBB22_5
.LBB22_4:                               # %if.end.3
	movq	amountscale, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 616(%rax)
	movq	expscale, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 624(%rax)
	movq	turbulencescale, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$632, %rax              # imm = 0x278
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	vset
	movq	scalescale, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 352(%rax)
	movq	scalexscale, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 360(%rax)
	movq	scaleyscale, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 368(%rax)
	movq	scalezscale, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 376(%rax)
	movq	rotxscale, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 424(%rax)
	movq	rotyscale, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 432(%rax)
	movq	rotzscale, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 440(%rax)
	movq	posxscale, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 392(%rax)
	movq	posyscale, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 400(%rax)
	movq	poszscale, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 408(%rax)
	callq	restartrender
.LBB22_5:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	getscales, .Lfunc_end22-getscales
	.cfi_endproc

	.align	16, 0x90
	.type	fileselect,@function
fileselect:                             # @fileselect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	.Lfileselect.titles, %rsi
	movq	%rsi, -32(%rbp)
	movq	.Lfileselect.titles+8, %rsi
	movq	%rsi, -24(%rbp)
	movq	.Lfileselect.handlers, %rsi
	movq	%rsi, -48(%rbp)
	movq	.Lfileselect.handlers+8, %rsi
	movq	%rsi, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, %esi
	cmpq	$0, fileselect.windows(,%rsi,8)
	jne	.LBB23_4
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp,%rcx,8), %rdi
	callq	gettext
	movq	-16(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.25, %r10
	movl	-4(%rbp), %r9d
	cmpl	$0, -4(%rbp)
	cmoveq	%r10, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gtk_file_chooser_dialog_new
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	%rax, fileselect.windows(,%rcx,8)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-56(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	cmpl	$1, -4(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then.13
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
.LBB23_3:                               # %if.end
	movabsq	$.L.str.60, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$fileselect.windows, %rdx
	movq	-56(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movl	%ecx, %r10d
	shlq	$3, %r10
	addq	%r10, %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movl	-4(%rbp), %r11d
	movl	%r11d, %edi
	movq	-48(%rbp,%rdi,8), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB23_4:                               # %if.end.22
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	fileselect.windows(,%rcx,8), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	fileselect, .Lfunc_end23-fileselect
	.cfi_endproc

	.align	16, 0x90
	.type	loadpreset_response,@function
loadpreset_response:                    # @loadpreset_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_list_store_clear
	movq	-40(%rbp), %rdi
	callq	loadit
	movq	-40(%rbp), %rdi
	callq	g_free
	callq	rebuildlist
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	loadpreset_response, .Lfunc_end24-loadpreset_response
	.cfi_endproc

	.align	16, 0x90
	.type	savepreset_response,@function
savepreset_response:                    # @savepreset_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	saveit
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	savepreset_response, .Lfunc_end25-savepreset_response
	.cfi_endproc

	.align	16, 0x90
	.type	loadit,@function
loadit:                                 # @loadit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$1984, %rsp             # imm = 0x7C0
	movabsq	$.L.str.61, %rsi
	leaq	-864(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -872(%rbp)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	movq	-1960(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB26_74
.LBB26_2:                               # %if.end
	movabsq	$.L.str.63, %rsi
	leaq	-1940(%rbp), %rdx
	leaq	-1944(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	movl	$2, %r8d
	cmpl	%eax, %r8d
	jne	.LBB26_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, -1940(%rbp)
	jl	.LBB26_5
# BB#4:                                 # %lor.lhs.false.7
	cmpl	$2, -1940(%rbp)
	jle	.LBB26_6
.LBB26_5:                               # %if.then.9
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -1972(%rbp)       # 4-byte Spill
	jmp	.LBB26_74
.LBB26_6:                               # %if.end.13
	movq	-16(%rbp), %rdi
	callq	rewind
	movl	$16, %eax
	movl	%eax, %esi
	movabsq	$.L.str.65, %rdx
	movl	$839, %eax              # imm = 0x347
	movl	%eax, %ecx
	leaq	-1920(%rbp), %rdi
	movw	$0, s+16
	movb	$0, %al
	callq	snprintf
	movl	%eax, -1976(%rbp)       # 4-byte Spill
.LBB26_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB26_8
	jmp	.LBB26_73
.LBB26_8:                               # %while.body
                                        #   in Loop: Header=BB26_7 Depth=1
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-1904(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB26_10
# BB#9:                                 # %if.then.21
	jmp	.LBB26_73
.LBB26_10:                              # %if.end.22
                                        #   in Loop: Header=BB26_7 Depth=1
	movabsq	$s, %rax
	addq	$24, %rax
	movswl	s+16, %ecx
	movl	%ecx, -1924(%rbp)
	movslq	-1924(%rbp), %rdx
	imulq	$664, %rdx, %rdx        # imm = 0x298
	addq	%rdx, %rax
	movq	%rax, -1936(%rbp)
	movq	-1936(%rbp), %rdi
	callq	setdefaults
	leaq	-1920(%rbp), %rsi
	leaq	-1904(%rbp), %rdi
	movq	-1936(%rbp), %rdx
	movq	-1936(%rbp), %rax
	addq	$4, %rax
	movq	-872(%rbp), %r8
	movq	%rax, %rcx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	je	.LBB26_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
.LBB26_12:                              # %if.end.32
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_15
# BB#14:                                # %if.then.37
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 24(%rsi)
.LBB26_15:                              # %if.end.40
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 32(%rsi)
.LBB26_18:                              # %if.end.49
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_21
# BB#19:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_21
# BB#20:                                # %if.then.55
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 40(%rsi)
.LBB26_21:                              # %if.end.58
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_24
# BB#22:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_24
# BB#23:                                # %if.then.64
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 48(%rsi)
.LBB26_24:                              # %if.end.67
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_27
# BB#25:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_27
# BB#26:                                # %if.then.73
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
.LBB26_27:                              # %if.end.77
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_30
# BB#28:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_30
# BB#29:                                # %if.then.83
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 64(%rsi)
.LBB26_30:                              # %if.end.87
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_33
# BB#31:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_33
# BB#32:                                # %if.then.93
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 72(%rsi)
.LBB26_33:                              # %if.end.97
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_36
# BB#34:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_36
# BB#35:                                # %if.then.103
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 352(%rsi)
.LBB26_36:                              # %if.end.105
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_39
# BB#37:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_39
# BB#38:                                # %if.then.111
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 632(%rsi)
.LBB26_39:                              # %if.end.114
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_42
# BB#40:                                # %land.lhs.true.116
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_42
# BB#41:                                # %if.then.120
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 616(%rsi)
.LBB26_42:                              # %if.end.122
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_45
# BB#43:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_45
# BB#44:                                # %if.then.128
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 624(%rsi)
.LBB26_45:                              # %if.end.130
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_48
# BB#46:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_48
# BB#47:                                # %if.then.136
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 360(%rsi)
.LBB26_48:                              # %if.end.139
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_51
# BB#49:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_51
# BB#50:                                # %if.then.145
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 368(%rsi)
.LBB26_51:                              # %if.end.149
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_54
# BB#52:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_54
# BB#53:                                # %if.then.155
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 376(%rsi)
.LBB26_54:                              # %if.end.159
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_57
# BB#55:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_57
# BB#56:                                # %if.then.165
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 424(%rsi)
.LBB26_57:                              # %if.end.168
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_60
# BB#58:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_60
# BB#59:                                # %if.then.174
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 432(%rsi)
.LBB26_60:                              # %if.end.178
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_63
# BB#61:                                # %land.lhs.true.180
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_63
# BB#62:                                # %if.then.184
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 440(%rsi)
.LBB26_63:                              # %if.end.188
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_66
# BB#64:                                # %land.lhs.true.190
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_66
# BB#65:                                # %if.then.194
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 392(%rsi)
.LBB26_66:                              # %if.end.197
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_69
# BB#67:                                # %land.lhs.true.199
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_69
# BB#68:                                # %if.then.203
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 400(%rsi)
.LBB26_69:                              # %if.end.207
                                        #   in Loop: Header=BB26_7 Depth=1
	cmpq	$0, -872(%rbp)
	je	.LBB26_72
# BB#70:                                # %land.lhs.true.209
                                        #   in Loop: Header=BB26_7 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB26_72
# BB#71:                                # %if.then.213
                                        #   in Loop: Header=BB26_7 Depth=1
	leaq	-872(%rbp), %rsi
	movq	-872(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1936(%rbp), %rsi
	movsd	%xmm0, 408(%rsi)
.LBB26_72:                              # %if.end.217
                                        #   in Loop: Header=BB26_7 Depth=1
	movw	s+16, %ax
	addw	$1, %ax
	movw	%ax, s+16
	jmp	.LBB26_7
.LBB26_73:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -1980(%rbp)       # 4-byte Spill
.LBB26_74:                              # %return
	addq	$1984, %rsp             # imm = 0x7C0
	popq	%rbp
	retq
.Lfunc_end26:
	.size	loadit, .Lfunc_end26-loadit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	setdefaults,@function
setdefaults:                            # @setdefaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movl	$664, %eax              # imm = 0x298
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	memset
	movq	-8(%rbp), %rdx
	movl	$0, 4(%rdx)
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, %rdi
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
	xorps	%xmm0, %xmm0
	movsd	.LCPI27_0, %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vcset
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	addq	$320, %rdx              # imm = 0x140
	movq	%rdx, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
	xorps	%xmm0, %xmm0
	movsd	.LCPI27_0, %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdx
	addq	$288, %rdx              # imm = 0x120
	movq	%rdx, %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vcset
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	addq	$360, %rdx              # imm = 0x168
	movq	%rdx, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	movq	%rdx, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdx
	addq	$392, %rdx              # imm = 0x188
	movq	%rdx, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 352(%rdx)
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 616(%rdx)
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 624(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	setdefaults, .Lfunc_end27-setdefaults
	.cfi_endproc

	.align	16, 0x90
	.type	vcset,@function
vcset:                                  # @vcset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	vcset, .Lfunc_end28-vcset
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vset,@function
vset:                                   # @vset
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
	movsd	.LCPI29_0, %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm3, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	vset, .Lfunc_end29-vset
	.cfi_endproc

	.align	16, 0x90
	.type	saveit,@function
saveit:                                 # @saveit
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
	subq	$448, %rsp              # imm = 0x1C0
	movabsq	$.L.str.66, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
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
	jmp	.LBB30_9
.LBB30_2:                               # %if.end
	movl	$0, -12(%rbp)
.LBB30_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movswl	s+16, %ecx
	cmpl	%ecx, %eax
	jge	.LBB30_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB30_3 Depth=1
	movabsq	$s, %rax
	addq	$24, %rax
	movslq	-12(%rbp), %rcx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB30_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB30_3 Depth=1
	jmp	.LBB30_7
.LBB30_6:                               # %if.end.9
                                        #   in Loop: Header=BB30_3 Depth=1
	movabsq	$.L.str.63, %rsi
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	4(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	-72(%rbp), %r9
	movsd	16(%r9), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r8, -104(%rbp)         # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	24(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	32(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	40(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	48(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	56(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	64(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	72(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	352(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	632(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	616(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	624(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	360(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	368(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	376(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	424(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	432(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	440(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	392(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	400(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	408(%r8), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.68, %rsi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.69, %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB30_7:                               # %for.inc
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB30_3
.LBB30_8:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB30_9:                               # %return
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end30:
	.size	saveit, .Lfunc_end30-saveit
	.cfi_endproc

	.align	16, 0x90
	.type	setvals,@function
setvals:                                # @setvals
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	jmp	.LBB31_8
.LBB31_2:                               # %if.end
	movl	$1, noupdate
	movq	amountscale, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	616(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	scalescale, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	352(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	scalexscale, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	360(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	scaleyscale, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	368(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	scalezscale, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	376(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	rotxscale, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	424(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	rotyscale, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	432(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	rotzscale, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	440(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	posxscale, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	392(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	posyscale, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	400(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	poszscale, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	408(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	turbulencescale, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	632(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movq	expscale, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movsd	624(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	drawcolor1
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	drawcolor2
	movabsq	$textures, %rax
	movq	%rax, -16(%rbp)
.LBB31_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB31_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	4(%rcx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.41
	movq	texturemenu, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB31_7
.LBB31_6:                               # %if.end.45
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB31_3
.LBB31_7:                               # %while.end
	movq	typemenu, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	$0, noupdate
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB31_8:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	setvals, .Lfunc_end31-setvals
	.cfi_endproc

	.align	16, 0x90
	.type	currenttexture,@function
currenttexture:                         # @currenttexture
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
	subq	$48, %rsp
	movq	$0, -48(%rbp)
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-40(%rbp), %rdx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB32_2:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	currenttexture, .Lfunc_end32-currenttexture
	.cfi_endproc

	.align	16, 0x90
	.type	mklabel,@function
mklabel:                                # @mklabel
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movl	$mklabel.tmps, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB33_9
.LBB33_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB33_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movl	$mklabel.tmps, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB33_8
.LBB33_4:                               # %if.else.7
	movq	-8(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB33_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movl	$mklabel.tmps, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.13
	movl	$mklabel.tmps, %eax
	movl	%eax, %edi
	movl	$.L.str.71, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.15
	jmp	.LBB33_9
.LBB33_9:                               # %if.end.16
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB33_11
# BB#10:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB33_17
.LBB33_11:                              # %if.then.21
	movabsq	$mklabel.tmps, %rdi
	movabsq	$.L.str.72, %rsi
	callq	strcat
	movabsq	$textures, %rsi
	movq	%rsi, -16(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB33_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB33_16
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB33_12 Depth=1
	movq	-8(%rbp), %rax
	movslq	4(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB33_15
# BB#14:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movabsq	$mklabel.tmps, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB33_16
.LBB33_15:                              # %if.end.29
                                        #   in Loop: Header=BB33_12 Depth=1
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB33_12
.LBB33_16:                              # %while.end
	jmp	.LBB33_17
.LBB33_17:                              # %if.end.30
	movabsq	$mklabel.tmps, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	mklabel, .Lfunc_end33-mklabel
	.cfi_endproc

	.align	16, 0x90
	.type	restartrender,@function
restartrender:                          # @restartrender
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
	subq	$16, %rsp
	cmpl	$0, idle_id
	je	.LBB34_2
# BB#1:                                 # %if.then
	movl	idle_id, %edi
	callq	g_source_remove
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB34_2:                               # %if.end
	movabsq	$render, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_idle_add
	movl	%eax, idle_id
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	restartrender, .Lfunc_end34-restartrender
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	-4601552919265804288    # double -10
.LCPI35_1:
	.quad	4607182418800017408     # double 1
.LCPI35_2:
	.quad	4620974692658839552     # double 8.5
.LCPI35_3:
	.quad	4602678819172646912     # double 0.5
.LCPI35_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	render,@function
render:                                 # @render
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
	subq	$192, %rsp
	movl	$150, -136(%rbp)
	movl	$150, -140(%rbp)
	movl	$4, -144(%rbp)
	movl	$0, idle_id
	callq	initworld
	xorps	%xmm0, %xmm0
	movsd	.LCPI35_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm0, -72(%rbp)
	movswl	world+24, %eax
	cmpl	$0, %eax
	jle	.LBB35_17
# BB#1:                                 # %if.then
	movq	buffer, %rdi
	callq	cairo_surface_flush
	movl	$0, -128(%rbp)
.LBB35_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_4 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB35_16
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	img, %rax
	movl	-128(%rbp), %ecx
	imull	img_stride, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -124(%rbp)
.LBB35_4:                               # %for.cond.5
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB35_14
# BB#5:                                 # %for.body.8
                                        #   in Loop: Header=BB35_4 Depth=2
	leaq	-120(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_3, %xmm2        # xmm2 = mem[0],zero
	movl	$2, %eax
	movl	$16, -152(%rbp)
	movl	-124(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -160(%rbp)        # 4-byte Spill
	cltd
	idivl	-152(%rbp)
	movl	-128(%rbp), %ecx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-152(%rbp)
	movl	-164(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	movl	-156(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	imull	$60, %edx, %edx
	addl	$100, %edx
	movl	%edx, -148(%rbp)
	cvtsi2ssl	-124(%rbp), %xmm3
	movl	-136(%rbp), %edx
	subl	$1, %edx
	cvtsi2ssl	%edx, %xmm4
	divss	%xmm4, %xmm3
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	movsd	%xmm4, -88(%rbp)
	movsd	%xmm4, -120(%rbp)
	cvtsi2ssl	-128(%rbp), %xmm3
	movl	-140(%rbp), %edx
	subl	$1, %edx
	cvtsi2ssl	%edx, %xmm4
	divss	%xmm4, %xmm3
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm1, -112(%rbp)
	movl	-124(%rbp), %edx
	imull	-144(%rbp), %edx
	movl	%edx, -132(%rbp)
	movl	-160(%rbp), %edx        # 4-byte Reload
	callq	traceray
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jbe	.LBB35_7
# BB#6:                                 # %if.then.36
                                        #   in Loop: Header=BB35_4 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB35_10
.LBB35_7:                               # %if.else
                                        #   in Loop: Header=BB35_4 Depth=2
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_9
# BB#8:                                 # %if.then.41
                                        #   in Loop: Header=BB35_4 Depth=2
	movsd	.LCPI35_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB35_9:                               # %if.end
                                        #   in Loop: Header=BB35_4 Depth=2
	jmp	.LBB35_10
.LBB35_10:                              # %if.end.43
                                        #   in Loop: Header=BB35_4 Depth=2
	jmp	.LBB35_11
.LBB35_11:                              # %do.body
                                        #   in Loop: Header=BB35_4 Depth=2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_4(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	pixelval
	movzbl	%al, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-148(%rbp), %xmm2
	movsd	.LCPI35_1(%rip), %xmm3  # xmm3 = mem[0],zero
	movaps	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movq	-40(%rbp), %rdx
	movslq	-132(%rbp), %rsi
	movb	%al, (%rdx,%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm3, -184(%rbp)       # 8-byte Spill
	callq	pixelval
	movzbl	%al, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-148(%rbp), %xmm2
	movsd	-184(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movq	-40(%rbp), %rdx
	movslq	-132(%rbp), %rsi
	movb	%al, 1(%rdx,%rsi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	pixelval
	movzbl	%al, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-148(%rbp), %xmm2
	movsd	-184(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %al
	movq	-40(%rbp), %rdx
	movslq	-132(%rbp), %rsi
	movb	%al, 2(%rdx,%rsi)
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB35_4 Depth=2
	jmp	.LBB35_13
.LBB35_13:                              # %for.inc
                                        #   in Loop: Header=BB35_4 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB35_4
.LBB35_14:                              # %for.end
                                        #   in Loop: Header=BB35_2 Depth=1
	jmp	.LBB35_15
.LBB35_15:                              # %for.inc.91
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB35_2
.LBB35_16:                              # %for.end.93
	movq	buffer, %rdi
	callq	cairo_surface_mark_dirty
.LBB35_17:                              # %if.end.94
	movq	drawarea, %rdi
	callq	gtk_widget_queue_draw
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	render, .Lfunc_end35-render
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4616189618054758400     # double 4
.LCPI36_1:
	.quad	4630826316843712512     # double 40
.LCPI36_2:
	.quad	4627730092099895296     # double 25
	.text
	.align	16, 0x90
	.type	initworld,@function
initworld:                              # @initworld
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
	subq	$26736, %rsp            # imm = 0x6870
	movabsq	$world, %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movabsq	$s, %rdx
	movl	$26632, %esi            # imm = 0x6808
	movl	%esi, %edi
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%esi, %esi
	movl	$280112, %r8d           # imm = 0x44630
	movl	%r8d, %r9d
	movq	%rdi, -26696(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -26704(%rbp)      # 8-byte Spill
	movq	%r9, %rdx
	movsd	%xmm1, -26712(%rbp)     # 8-byte Spill
	movq	%rcx, -26720(%rbp)      # 8-byte Spill
	movsd	%xmm0, -26728(%rbp)     # 8-byte Spill
	callq	memset
	movw	$3, s
	movsd	-26712(%rbp), %xmm0     # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, s+26608
	movsd	%xmm0, s+26600
	movsd	%xmm0, s+26592
	movsd	-26728(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, s+26624
	movq	-26720(%rbp), %rdi      # 8-byte Reload
	movq	-26704(%rbp), %rsi      # 8-byte Reload
	movq	-26696(%rbp), %rdx      # 8-byte Reload
	callq	memcpy
	movl	$1, world
	movw	$0, world+24
	movw	$0, world+13312
	movl	$0, -4(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movswl	s+16, %ecx
	cmpl	%ecx, %eax
	jge	.LBB36_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	xorps	%xmm0, %xmm0
	movabsq	$world, %rax
	addq	$8, %rax
	movabsq	$s, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movslq	-4(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	ucomisd	616(%rax), %xmm0
	jae	.LBB36_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB36_5
.LBB36_4:                               # %if.then
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_16
.LBB36_5:                               # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB36_9
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB36_8
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_2, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 576(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 584(%rax)
	movq	32(%rcx), %rdx
	movq	%rdx, 592(%rax)
	movq	40(%rcx), %rcx
	movq	%rcx, 600(%rax)
	movq	-32(%rbp), %rax
	movsd	352(%rax), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 608(%rax)
.LBB36_8:                               # %if.end.13
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	$664, %eax              # imm = 0x298
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movswq	16(%rcx), %rcx
	movq	-24(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rsi
	movq	-32(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-24(%rbp), %rcx
	movswq	16(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rdx
	addq	$360, %rdx              # imm = 0x168
	movq	-24(%rbp), %rcx
	movswq	16(%rcx), %rcx
	movq	-24(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rsi
	movsd	352(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rdx, %rdi
	callq	vmul
	movq	-24(%rbp), %rcx
	movw	16(%rcx), %r8w
	addw	$1, %r8w
	movw	%r8w, 16(%rcx)
	jmp	.LBB36_15
.LBB36_9:                               # %if.else
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB36_11
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	$664, %eax              # imm = 0x298
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movswq	13304(%rcx), %rcx
	movq	-24(%rbp), %rsi
	addq	$13312, %rsi            # imm = 0x3400
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rsi
	movq	-32(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-24(%rbp), %rcx
	movswq	13304(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$13312, %rdx            # imm = 0x3400
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rdx
	addq	$360, %rdx              # imm = 0x168
	movq	-24(%rbp), %rcx
	movswq	13304(%rcx), %rcx
	movq	-24(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rsi
	movsd	352(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	%rdx, %rdi
	callq	vmul
	movq	-24(%rbp), %rcx
	movw	13304(%rcx), %r8w
	addw	$1, %r8w
	movw	%r8w, 13304(%rcx)
	jmp	.LBB36_14
.LBB36_11:                              # %if.else.45
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB36_13
# BB#12:                                # %if.then.49
                                        #   in Loop: Header=BB36_1 Depth=1
	leaq	-26688(%rbp), %rax
	addq	$26624, %rax            # imm = 0x6800
	movq	-32(%rbp), %rcx
	addq	$392, %rcx              # imm = 0x188
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	vcopy
	leaq	-26688(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	vcopy
	leaq	-26688(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	-32(%rbp), %rcx
	movsd	616(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	vmul
	movl	$26656, %edx            # imm = 0x6820
                                        # kill: RDX<def> EDX<kill>
	leaq	-26688(%rbp), %rax
	movabsq	$world, %rcx
	addq	$133456, %rcx           # imm = 0x20950
	movslq	world+133448, %rsi
	imulq	$26656, %rsi, %rsi      # imm = 0x6820
	addq	%rsi, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	world+133448, %r8d
	addl	$1, %r8d
	movl	%r8d, world+133448
.LBB36_13:                              # %if.end.56
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_14
.LBB36_14:                              # %if.end.57
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_15
.LBB36_15:                              # %if.end.58
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_16
.LBB36_16:                              # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB36_1
.LBB36_17:                              # %for.end
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movw	$5, world+280032
	movq	world+280024, %rax
	orq	$1, %rax
	movq	%rax, world+280024
	movsd	%xmm0, world+280040
	addq	$26736, %rsp            # imm = 0x6870
	popq	%rbp
	retq
.Lfunc_end36:
	.size	initworld, .Lfunc_end36-initworld
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	-4616189618054758400    # double -1
.LCPI37_1:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI37_2:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI37_3:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI37_4:
	.quad	4607182418800017408     # double 1
.LCPI37_5:
	.quad	4643211215818981376     # double 256
.LCPI37_6:
	.quad	-4676364914835832019    # double -1.0E-4
.LCPI37_7:
	.quad	4640537203540230144     # double 180
.LCPI37_8:
	.quad	4607181518080091934     # double 0.99990000000000001
.LCPI37_9:
	.quad	4607173411600762667     # double 0.99899999999999999
	.text
	.align	16, 0x90
	.type	traceray,@function
traceray:                               # @traceray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$1232, %rsp             # imm = 0x4D0
	xorps	%xmm1, %xmm1
	movsd	.LCPI37_0, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$-1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB37_2
# BB#1:                                 # %lor.lhs.false
	movsd	.LCPI37_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB37_3
.LBB37_2:                               # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI37_4, %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -1032(%rbp)      # 8-byte Spill
	movsd	-1032(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movl	$0, -4(%rbp)
	jmp	.LBB37_73
.LBB37_3:                               # %if.end
	movl	$0, -44(%rbp)
.LBB37_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	world, %eax
	jge	.LBB37_22
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB37_4 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$26688, %rax, %rax      # imm = 0x6840
	leaq	world+8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movswl	world+8(%rax), %edx
	movl	%edx, %eax
	subl	$4, %edx
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	movl	%edx, -1044(%rbp)       # 4-byte Spill
	ja	.LBB37_11
# BB#74:                                # %for.body
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	.LJTI37_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB37_6:                               # %sw.bb
                                        #   in Loop: Header=BB37_4 Depth=1
	movabsq	$world, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	imulq	$26688, %rcx, %rcx      # imm = 0x6840
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	checktri
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_12
.LBB37_7:                               # %sw.bb.5
                                        #   in Loop: Header=BB37_4 Depth=1
	movabsq	$world, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	imulq	$26688, %rcx, %rcx      # imm = 0x6840
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	checkdisc
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_12
.LBB37_8:                               # %sw.bb.9
                                        #   in Loop: Header=BB37_4 Depth=1
	movabsq	$world, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	imulq	$26688, %rcx, %rcx      # imm = 0x6840
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	checkplane
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_12
.LBB37_9:                               # %sw.bb.13
                                        #   in Loop: Header=BB37_4 Depth=1
	movabsq	$world, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	imulq	$26688, %rcx, %rcx      # imm = 0x6840
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	checksphere
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_12
.LBB37_10:                              # %sw.bb.17
                                        #   in Loop: Header=BB37_4 Depth=1
	movabsq	$world, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	imulq	$26688, %rcx, %rcx      # imm = 0x6840
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	checkcylinder
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB37_12
.LBB37_11:                              # %sw.default
                                        #   in Loop: Header=BB37_4 Depth=1
	movabsq	$.L.str.73, %rdi
	movb	$0, %al
	callq	g_error
.LBB37_12:                              # %sw.epilog
                                        #   in Loop: Header=BB37_4 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jb	.LBB37_14
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB37_4 Depth=1
	jmp	.LBB37_21
.LBB37_14:                              # %if.end.24
                                        #   in Loop: Header=BB37_4 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	.LBB37_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB37_4 Depth=1
	cmpl	$-1, -28(%rbp)
	jne	.LBB37_17
# BB#16:                                # %if.then.27
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB37_73
.LBB37_17:                              # %if.end.28
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB37_19
# BB#18:                                # %lor.lhs.false.30
                                        #   in Loop: Header=BB37_4 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB37_20
.LBB37_19:                              # %if.then.33
                                        #   in Loop: Header=BB37_4 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
.LBB37_20:                              # %if.end.34
                                        #   in Loop: Header=BB37_4 Depth=1
	jmp	.LBB37_21
.LBB37_21:                              # %for.inc
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB37_4
.LBB37_22:                              # %for.end
	cmpl	$-1, -28(%rbp)
	jne	.LBB37_24
# BB#23:                                # %if.then.38
	movl	$0, -4(%rbp)
	jmp	.LBB37_73
.LBB37_24:                              # %if.end.39
	cmpq	$0, -80(%rbp)
	je	.LBB37_63
# BB#25:                                # %if.then.41
	leaq	-120(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	calclight
	movq	world+280024, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB37_27
# BB#26:                                # %if.then.67
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	world+280040, %xmm0
	callq	exp
	leaq	-160(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	movsd	.LCPI37_3, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movq	-80(%rbp), %rdx
	callq	objcolor
	leaq	-160(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	vmul
	leaq	-160(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_27:                              # %if.end.71
	movl	$0, -44(%rbp)
.LBB37_28:                              # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-80(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB37_62
# BB#29:                                # %for.body.76
                                        #   in Loop: Header=BB37_28 Depth=1
	movswl	world+280032, %eax
	cmpl	$4, %eax
	jl	.LBB37_38
# BB#30:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$6, 4(%rcx)
	je	.LBB37_32
# BB#31:                                # %lor.lhs.false.86
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$5, 4(%rcx)
	jne	.LBB37_38
.LBB37_32:                              # %if.then.93
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-256(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	objcolor
	leaq	-120(%rbp), %rsi
	leaq	-336(%rbp), %rdi
	callq	vcopy
	leaq	-336(%rbp), %rdx
	addq	$32, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	callq	vcopy
	movsd	.LCPI37_8, %xmm0        # xmm0 = mem[0],zero
	leaq	-336(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movw	64(%rsi), %ax
	movw	%ax, -272(%rbp)
	movq	-16(%rbp), %rsi
	movsd	72(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -264(%rbp)
	movq	%rdx, %rsi
	addq	$32, %rsi
	movq	%rdx, %rdi
	movq	%rsi, -1056(%rbp)       # 8-byte Spill
	movq	%rdx, %rsi
	movq	-1056(%rbp), %rdx       # 8-byte Reload
	callq	vmix
	leaq	-120(%rbp), %rsi
	leaq	-336(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rdi
	callq	vsub
	leaq	-224(%rbp), %rdi
	leaq	-120(%rbp), %rdx
	movq	-80(%rbp), %rsi
	callq	objnormal
	leaq	-224(%rbp), %rdi
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	callq	vnorm
	leaq	-224(%rbp), %rdi
	movsd	.LCPI37_7, %xmm0        # xmm0 = mem[0],zero
	leaq	-336(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	callq	vrotate
	leaq	-224(%rbp), %rdi
	movsd	.LCPI37_6, %xmm0        # xmm0 = mem[0],zero
	callq	vmul
	leaq	-224(%rbp), %rsi
	leaq	-336(%rbp), %rdi
	callq	vadd
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	leaq	-336(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rdi
	callq	vnorm
	leaq	-120(%rbp), %rsi
	leaq	-336(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rdi
	callq	vadd
	movswl	world+280032, %ecx
	cmpl	$5, %ecx
	jl	.LBB37_35
# BB#33:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$6, 4(%rcx)
	jne	.LBB37_35
# BB#34:                                # %if.then.117
                                        #   in Loop: Header=BB37_28 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rcx
	movq	-80(%rbp), %rdx
	addq	$24, %rdx
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rdx
	addq	$472, %rdx              # imm = 0x1D8
	movq	%rdx, %rdi
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	movsd	%xmm0, -1072(%rbp)      # 8-byte Spill
	callq	vmax
	leaq	-336(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	movsd	-1072(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movl	-1060(%rbp), %edx       # 4-byte Reload
	movaps	%xmm1, %xmm0
	callq	traceray
	leaq	-192(%rbp), %rdi
	movslq	-44(%rbp), %rcx
	movq	-80(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rcx, %rcx        # imm = 0x298
	addq	%rcx, %rsi
	addq	$472, %rsi              # imm = 0x1D8
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	callq	vvmul
	leaq	-192(%rbp), %rsi
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_35:                              # %if.end.130
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$5, 4(%rcx)
	jne	.LBB37_37
# BB#36:                                # %if.then.137
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-192(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1088(%rbp)      # 8-byte Spill
	movsd	-1088(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1088(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-1088(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
	leaq	-336(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	calcphong
	leaq	-192(%rbp), %rsi
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_37:                              # %if.end.140
                                        #   in Loop: Header=BB37_28 Depth=1
	jmp	.LBB37_38
.LBB37_38:                              # %if.end.141
                                        #   in Loop: Header=BB37_28 Depth=1
	movswl	world+280032, %eax
	cmpl	$5, %eax
	jl	.LBB37_41
# BB#39:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB37_28 Depth=1
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB37_41
# BB#40:                                # %if.then.149
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-120(%rbp), %rsi
	leaq	-448(%rbp), %rdi
	callq	vcopy
	leaq	-120(%rbp), %rsi
	leaq	-448(%rbp), %rdi
	addq	$32, %rdi
	callq	vcopy
	leaq	-448(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1096(%rbp), %rsi       # 8-byte Reload
	callq	vsub
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	leaq	-448(%rbp), %rsi
	addq	$32, %rsi
	movq	%rsi, %rdi
	callq	vnorm
	leaq	-120(%rbp), %rsi
	leaq	-448(%rbp), %rdi
	addq	$32, %rdi
	callq	vadd
	movsd	.LCPI37_9, %xmm0        # xmm0 = mem[0],zero
	leaq	-448(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$32, %rdi
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1104(%rbp), %rdx       # 8-byte Reload
	callq	vmix
	leaq	-448(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	subsd	24(%rdx), %xmm0
	mulsd	%xmm0, %xmm1
	movl	%eax, %edx
	movaps	%xmm1, %xmm0
	callq	traceray
	leaq	-368(%rbp), %rdi
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	subsd	24(%rsi), %xmm0
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	callq	vmul
	leaq	-368(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_41:                              # %if.end.168
                                        #   in Loop: Header=BB37_28 Depth=1
	movswl	world+280032, %eax
	cmpl	$5, %eax
	jl	.LBB37_44
# BB#42:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$10, 4(%rcx)
	jne	.LBB37_44
# BB#43:                                # %if.then.179
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-120(%rbp), %rsi
	leaq	-560(%rbp), %rdi
	callq	vcopy
	leaq	-120(%rbp), %rsi
	leaq	-560(%rbp), %rdi
	addq	$32, %rdi
	callq	vcopy
	leaq	-560(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1120(%rbp), %rsi       # 8-byte Reload
	callq	vsub
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	leaq	-560(%rbp), %rsi
	addq	$32, %rsi
	movq	%rsi, %rdi
	callq	vnorm
	leaq	-120(%rbp), %rsi
	leaq	-560(%rbp), %rdi
	addq	$32, %rdi
	callq	vadd
	movsd	.LCPI37_9, %xmm0        # xmm0 = mem[0],zero
	leaq	-560(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$32, %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	callq	vmix
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rdx
	movq	-80(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rdx, %rdx        # imm = 0x298
	addq	%rdx, %rsi
	addq	$536, %rsi              # imm = 0x218
	movq	%rsi, %rdi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	movsd	%xmm0, -1144(%rbp)      # 8-byte Spill
	callq	vmax
	leaq	-560(%rbp), %rdi
	leaq	-480(%rbp), %rsi
	movsd	-1144(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movl	-1132(%rbp), %edx       # 4-byte Reload
	movaps	%xmm1, %xmm0
	callq	traceray
	leaq	-480(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rsi, %rsi        # imm = 0x298
	addq	%rsi, %rcx
	addq	$536, %rcx              # imm = 0x218
	movq	%rcx, %rsi
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	callq	vvmul
	leaq	-480(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_44:                              # %if.end.202
                                        #   in Loop: Header=BB37_28 Depth=1
	movswl	world+280032, %eax
	cmpl	$5, %eax
	jl	.LBB37_49
# BB#45:                                # %land.lhs.true.206
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$13, 4(%rcx)
	jne	.LBB37_49
# BB#46:                                # %if.then.213
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-120(%rbp), %rsi
	leaq	-744(%rbp), %rdi
	callq	vcopy
	leaq	-120(%rbp), %rsi
	leaq	-744(%rbp), %rdi
	addq	$32, %rdi
	callq	vcopy
	leaq	-744(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	callq	vsub
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	leaq	-744(%rbp), %rsi
	addq	$32, %rsi
	movq	%rsi, %rdi
	callq	vnorm
	leaq	-120(%rbp), %rsi
	leaq	-744(%rbp), %rdi
	addq	$32, %rdi
	callq	vadd
	leaq	-656(%rbp), %rdi
	leaq	-120(%rbp), %rdx
	movq	-80(%rbp), %rsi
	callq	objnormal
	leaq	-624(%rbp), %rdi
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	callq	vcopy
	leaq	-624(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vsub
	leaq	-624(%rbp), %rdi
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	callq	vnorm
	leaq	-656(%rbp), %rdi
	leaq	-624(%rbp), %rsi
	callq	vdot
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -664(%rbp)
	ucomisd	-664(%rbp), %xmm1
	jbe	.LBB37_48
# BB#47:                                # %if.then.227
                                        #   in Loop: Header=BB37_28 Depth=1
	jmp	.LBB37_61
.LBB37_48:                              # %if.end.228
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-592(%rbp), %rdi
	movsd	-664(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-664(%rbp), %xmm0
	movsd	%xmm0, -664(%rbp)
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, %rsi
	callq	vcopy
	leaq	-592(%rbp), %rdi
	movsd	-664(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	vmul
	leaq	-592(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_49:                              # %if.end.233
                                        #   in Loop: Header=BB37_28 Depth=1
	movswl	world+280032, %eax
	cmpl	$5, %eax
	jl	.LBB37_60
# BB#50:                                # %land.lhs.true.237
                                        #   in Loop: Header=BB37_28 Depth=1
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$7, 4(%rcx)
	jne	.LBB37_60
# BB#51:                                # %if.then.244
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-120(%rbp), %rsi
	leaq	-920(%rbp), %rdi
	callq	vcopy
	leaq	-120(%rbp), %rsi
	leaq	-920(%rbp), %rdi
	addq	$32, %rdi
	callq	vcopy
	leaq	-920(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	callq	vsub
	leaq	-920(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	addq	$32, %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1176(%rbp), %rsi       # 8-byte Reload
	callq	vadd
	movsd	.LCPI37_9, %xmm0        # xmm0 = mem[0],zero
	leaq	-920(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$32, %rdi
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1184(%rbp), %rdx       # 8-byte Reload
	callq	vmix
	leaq	-120(%rbp), %rsi
	leaq	-920(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rdi
	callq	vsub
	leaq	-808(%rbp), %rdi
	leaq	-120(%rbp), %rdx
	movq	-80(%rbp), %rsi
	callq	objnormal
	movq	-16(%rbp), %rdx
	movswl	64(%rdx), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB37_53
# BB#52:                                # %if.then.262
                                        #   in Loop: Header=BB37_28 Depth=1
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	movw	$-1, -856(%rbp)
	movsd	%xmm0, -848(%rbp)
	jmp	.LBB37_54
.LBB37_53:                              # %if.else
                                        #   in Loop: Header=BB37_28 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -856(%rbp)
	movslq	-44(%rbp), %rdx
	movq	-80(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rdx, %rdx        # imm = 0x298
	addq	%rdx, %rsi
	movsd	568(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -848(%rbp)
.LBB37_54:                              # %if.end.272
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-808(%rbp), %rdi
	leaq	-920(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	vdot
	movsd	%xmm0, -928(%rbp)
	movswl	-856(%rbp), %ecx
	cmpl	$0, %ecx
	jge	.LBB37_56
# BB#55:                                # %if.then.279
                                        #   in Loop: Header=BB37_28 Depth=1
	movsd	-928(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -928(%rbp)
.LBB37_56:                              # %if.end.281
                                        #   in Loop: Header=BB37_28 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI37_4, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -944(%rbp)
	movsd	-848(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm2, -952(%rbp)
	movsd	-944(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-952(%rbp), %xmm2
	movsd	%xmm2, -960(%rbp)
	movsd	-960(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-960(%rbp), %xmm2
	movsd	-928(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-928(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -936(%rbp)
	ucomisd	-936(%rbp), %xmm0
	jbe	.LBB37_58
# BB#57:                                # %if.then.292
                                        #   in Loop: Header=BB37_28 Depth=1
	movsd	-936(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	sqrt
	movsd	%xmm0, -936(%rbp)
	jmp	.LBB37_59
.LBB37_58:                              # %if.else.295
                                        #   in Loop: Header=BB37_28 Depth=1
	movsd	-936(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -936(%rbp)
.LBB37_59:                              # %if.end.297
                                        #   in Loop: Header=BB37_28 Depth=1
	leaq	-920(%rbp), %rax
	addq	$32, %rax
	movsd	-960(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	vmul
	leaq	-840(%rbp), %rdi
	leaq	-808(%rbp), %rsi
	callq	vcopy
	leaq	-840(%rbp), %rdi
	movsd	-960(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-928(%rbp), %xmm0
	subsd	-936(%rbp), %xmm0
	callq	vmul
	leaq	-840(%rbp), %rsi
	leaq	-920(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	vadd
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	leaq	-920(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	vnorm
	leaq	-120(%rbp), %rsi
	leaq	-920(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	vadd
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rsi
	addq	$504, %rsi              # imm = 0x1F8
	movq	%rsi, %rdi
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	movsd	%xmm0, -1200(%rbp)      # 8-byte Spill
	callq	vmax
	leaq	-920(%rbp), %rdi
	leaq	-776(%rbp), %rsi
	movsd	-1200(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movl	-1188(%rbp), %edx       # 4-byte Reload
	movaps	%xmm1, %xmm0
	callq	traceray
	leaq	-776(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-80(%rbp), %r8
	addq	$24, %r8
	imulq	$664, %rsi, %rsi        # imm = 0x298
	addq	%rsi, %r8
	addq	$504, %r8               # imm = 0x1F8
	movq	%r8, %rsi
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	callq	vvmul
	leaq	-776(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_60:                              # %if.end.315
                                        #   in Loop: Header=BB37_28 Depth=1
	jmp	.LBB37_61
.LBB37_61:                              # %for.inc.316
                                        #   in Loop: Header=BB37_28 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB37_28
.LBB37_62:                              # %for.end.318
	jmp	.LBB37_64
.LBB37_63:                              # %if.else.319
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -1216(%rbp)      # 8-byte Spill
	movsd	-1216(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1216(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-1216(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
	leaq	-120(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI37_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm0, -1224(%rbp)      # 8-byte Spill
	movsd	-1224(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1224(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-1224(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
.LBB37_64:                              # %if.end.320
	movl	$0, -44(%rbp)
.LBB37_65:                              # %for.cond.321
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movswl	world+280048, %ecx
	cmpl	%ecx, %eax
	jge	.LBB37_72
# BB#66:                                # %for.body.325
                                        #   in Loop: Header=BB37_65 Depth=1
	movabsq	$world, %rax
	addq	$280056, %rax           # imm = 0x445F8
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movswl	(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB37_70
# BB#67:                                # %if.then.332
                                        #   in Loop: Header=BB37_65 Depth=1
	xorps	%xmm0, %xmm0
	movabsq	$world, %rax
	addq	$280056, %rax           # imm = 0x445F8
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -1024(%rbp)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -1016(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -1008(%rbp)
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -1000(%rbp)
	ucomisd	%xmm0, %xmm1
	jbe	.LBB37_69
# BB#68:                                # %if.then.343
                                        #   in Loop: Header=BB37_65 Depth=1
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI37_5, %xmm1        # xmm1 = mem[0],zero
	leaq	-1024(%rbp), %rdi
	callq	turbulence
	movabsq	$world, %rdi
	addq	$280056, %rdi           # imm = 0x445F8
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rax, %rdi
	mulsd	48(%rdi), %xmm0
	movsd	%xmm0, -1000(%rbp)
.LBB37_69:                              # %if.end.349
                                        #   in Loop: Header=BB37_65 Depth=1
	movabsq	$world, %rax
	addq	$280056, %rax           # imm = 0x445F8
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-1000(%rbp), %xmm0
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	divsd	8(%rax), %xmm0
	callq	exp
	movsd	%xmm0, -1000(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-1000(%rbp), %xmm0      # xmm0 = mem[0],zero
	callq	vmul
	leaq	-992(%rbp), %rdi
	movabsq	$world, %rax
	addq	$280056, %rax           # imm = 0x445F8
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	vcopy
	leaq	-992(%rbp), %rdi
	movsd	.LCPI37_4, %xmm0        # xmm0 = mem[0],zero
	subsd	-1000(%rbp), %xmm0
	callq	vmul
	leaq	-992(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB37_70:                              # %if.end.359
                                        #   in Loop: Header=BB37_65 Depth=1
	jmp	.LBB37_71
.LBB37_71:                              # %for.inc.360
                                        #   in Loop: Header=BB37_65 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB37_65
.LBB37_72:                              # %for.end.362
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB37_73:                              # %return
	movl	-4(%rbp), %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbp
	retq
.Lfunc_end37:
	.size	traceray, .Lfunc_end37-traceray
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI37_0:
	.quad	.LBB37_6
	.quad	.LBB37_7
	.quad	.LBB37_8
	.quad	.LBB37_9
	.quad	.LBB37_10

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4602678819172646912     # double 0.5
.LCPI38_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	pixelval,@function
pixelval:                               # @pixelval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	movsd	.LCPI38_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	addsd	-16(%rbp), %xmm2
	movsd	%xmm2, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB38_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB38_5
.LBB38_2:                               # %if.end
	movsd	.LCPI38_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB38_4
# BB#3:                                 # %if.then.2
	movb	$-1, -1(%rbp)
	jmp	.LBB38_5
.LBB38_4:                               # %if.end.3
	cvttsd2si	-16(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
.LBB38_5:                               # %return
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end38:
	.size	pixelval, .Lfunc_end38-pixelval
	.cfi_endproc

	.align	16, 0x90
	.type	vmul,@function
vmul:                                   # @vmul
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm0
	movsd	%xmm0, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	vmul, .Lfunc_end39-vmul
	.cfi_endproc

	.align	16, 0x90
	.type	vcopy,@function
vcopy:                                  # @vcopy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsi)
	movq	24(%rdi), %rax
	movq	%rax, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end40:
	.size	vcopy, .Lfunc_end40-vcopy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	checktri,@function
checktri:                               # @checktri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	leaq	-264(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -232(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rdi, -264(%rbp)
	movq	40(%rsi), %rdi
	movq	%rdi, -256(%rbp)
	movq	48(%rsi), %rdi
	movq	%rdi, -248(%rbp)
	movq	56(%rsi), %rsi
	movq	%rsi, -240(%rbp)
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	callq	vsub
	leaq	-152(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movsd	26656(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	26592(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	26664(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	26600(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	26672(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	26608(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movsd	26624(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	26592(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-24(%rbp), %rax
	movsd	26632(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	26600(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	26640(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	26608(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	callq	vcross
	leaq	-56(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	callq	vdot
	leaq	-120(%rbp), %rdi
	movsd	.LCPI41_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	divsd	-192(%rbp), %xmm1
	movsd	%xmm1, -200(%rbp)
	movq	-232(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-232(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	-232(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movq	-24(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rsi
	callq	vsub
	leaq	-120(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	callq	vdot
	xorps	%xmm1, %xmm1
	mulsd	-200(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	ucomisd	-216(%rbp), %xmm1
	jbe	.LBB41_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB41_8
.LBB41_2:                               # %if.end
	movsd	.LCPI41_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB41_4
# BB#3:                                 # %if.then.39
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB41_8
.LBB41_4:                               # %if.end.40
	leaq	-184(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	callq	vcross
	leaq	-264(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	vdot
	xorps	%xmm1, %xmm1
	mulsd	-200(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)
	ucomisd	-224(%rbp), %xmm1
	ja	.LBB41_6
# BB#5:                                 # %lor.lhs.false
	movsd	.LCPI41_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-224(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB41_7
.LBB41_6:                               # %if.then.45
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB41_8
.LBB41_7:                               # %if.end.46
	leaq	-88(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	vdot
	mulsd	-200(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB41_8:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end41:
	.size	checktri, .Lfunc_end41-checktri
	.cfi_endproc

	.align	16, 0x90
	.type	checkdisc,@function
checkdisc:                              # @checkdisc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$26592, %rsi            # imm = 0x67E0
	movq	%rsi, -56(%rbp)
	movq	-8(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	(%rsi), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	8(%rsi), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rsi
	movsd	48(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	16(%rsi), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-56(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-56(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-56(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	subsd	26624(%rsi), %xmm0
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	movq	-56(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movq	-56(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-56(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	mulsd	-96(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	vdist2
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	26632(%rax), %xmm1      # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	26632(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB42_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB42_2:                               # %if.end
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	checkdisc, .Lfunc_end42-checkdisc
	.cfi_endproc

	.align	16, 0x90
	.type	checkplane,@function
checkplane:                             # @checkplane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$26592, %rsi            # imm = 0x67E0
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	(%rsi), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movsd	40(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	8(%rsi), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movsd	48(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	subsd	16(%rsi), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-24(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rsi
	subsd	26624(%rsi), %xmm0
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	movq	-24(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-24(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end43:
	.size	checkplane, .Lfunc_end43-checkplane
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4562254508917369340     # double 0.001
.LCPI44_1:
	.quad	4611686018427387904     # double 2
.LCPI44_2:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	checksphere,@function
checksphere:                            # @checksphere
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	leaq	-88(%rbp), %rax
	movsd	.LCPI44_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -176(%rbp)
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	movq	%rax, %rdi
	callq	vcopy
	leaq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vsub
	leaq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	26624(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	26624(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-16(%rbp), %rsi
	callq	vcopy
	leaq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rsi
	callq	vsub
	leaq	-88(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	vdot
	leaq	-56(%rbp), %rax
	movsd	%xmm0, -96(%rbp)
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	vdot
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-128(%rbp), %xmm0
	jb	.LBB44_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB44_3
# BB#2:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB44_15
.LBB44_3:                               # %if.end
	leaq	-88(%rbp), %rax
	movsd	.LCPI44_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	vdot
	movsd	%xmm0, -136(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB44_8
# BB#4:                                 # %land.lhs.true.9
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB44_8
# BB#5:                                 # %if.then.12
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-176(%rbp), %xmm0
	jbe	.LBB44_7
# BB#6:                                 # %if.then.16
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB44_15
.LBB44_7:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB44_15
.LBB44_8:                               # %if.end.17
	xorps	%xmm0, %xmm0
	movsd	.LCPI44_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-112(%rbp), %xmm2
	mulsd	-136(%rbp), %xmm1
	mulsd	-120(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -144(%rbp)
	ucomisd	-144(%rbp), %xmm0
	jbe	.LBB44_10
# BB#9:                                 # %if.then.23
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB44_15
.LBB44_10:                              # %if.end.24
	movsd	.LCPI44_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -144(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	-144(%rbp), %xmm0
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	subsd	-144(%rbp), %xmm0
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB44_12
# BB#11:                                # %if.then.33
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB44_15
.LBB44_12:                              # %if.end.34
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB44_14
# BB#13:                                # %if.then.36
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB44_15
.LBB44_14:                              # %if.else.37
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB44_15:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	checksphere, .Lfunc_end44-checksphere
	.cfi_endproc

	.align	16, 0x90
	.type	checkcylinder,@function
checkcylinder:                          # @checkcylinder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	checkcylinder, .Lfunc_end45-checkcylinder
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB46_3
# BB#2:                                 # %entry
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
.LBB46_3:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$4, %esi
	leaq	-32(%rbp), %r10
	movq	%r8, -8(%rbp)
	movq	%r10, %r8
	leaq	-208(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r10, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB46_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB46_1
.Lfunc_end46:
	.size	g_error, .Lfunc_end46-g_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI47_0:
	.quad	4607182418800017408     # double 1
.LCPI47_1:
	.quad	4607181518080091934     # double 0.99990000000000001
	.text
	.align	16, 0x90
	.type	calclight,@function
calclight:                              # @calclight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-232(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
	leaq	-224(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	objcolor
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movswl	world+280032, %eax
	cmpl	$2, %eax
	jge	.LBB47_2
# BB#1:                                 # %if.then
	leaq	-224(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vcopy
	jmp	.LBB47_37
.LBB47_2:                               # %if.end
	movl	$0, -28(%rbp)
.LBB47_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB47_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB47_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$5, 4(%rcx)
	jne	.LBB47_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_15
.LBB47_6:                               # %if.end.8
                                        #   in Loop: Header=BB47_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$6, 4(%rcx)
	jne	.LBB47_8
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_15
.LBB47_8:                               # %if.end.16
                                        #   in Loop: Header=BB47_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$7, 4(%rcx)
	jne	.LBB47_10
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_15
.LBB47_10:                              # %if.end.24
                                        #   in Loop: Header=BB47_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$10, 4(%rcx)
	jne	.LBB47_12
# BB#11:                                # %if.then.31
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_15
.LBB47_12:                              # %if.end.32
                                        #   in Loop: Header=BB47_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$13, 4(%rcx)
	jne	.LBB47_14
# BB#13:                                # %if.then.39
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_15
.LBB47_14:                              # %if.end.40
                                        #   in Loop: Header=BB47_3 Depth=1
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	callq	vcopy
	leaq	-160(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	imulq	$664, %rsi, %rsi        # imm = 0x298
	addq	%rsi, %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rsi
	callq	vvmul
	leaq	-160(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vadd
.LBB47_15:                              # %for.inc
                                        #   in Loop: Header=BB47_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB47_3
.LBB47_16:                              # %for.end
	leaq	-192(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	objnormal
	leaq	-192(%rbp), %rdi
	movsd	.LCPI47_0, %xmm0        # xmm0 = mem[0],zero
	callq	vnorm
	movsd	.LCPI47_0, %xmm0        # xmm0 = mem[0],zero
	movw	$-1, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB47_17:                              # %for.cond.44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_21 Depth 2
	movl	-28(%rbp), %eax
	cmpl	world+133448, %eax
	jge	.LBB47_36
# BB#18:                                # %for.body.47
                                        #   in Loop: Header=BB47_17 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vcopy
	movabsq	$world, %rsi
	addq	$133456, %rsi           # imm = 0x20950
	leaq	-112(%rbp), %rdi
	addq	$32, %rdi
	movslq	-28(%rbp), %rax
	imulq	$26656, %rax, %rax      # imm = 0x6820
	addq	%rax, %rsi
	addq	$26624, %rsi            # imm = 0x6800
	callq	vcopy
	movsd	.LCPI47_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	addq	$32, %rsi
	movq	%rax, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	callq	vmix
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	addq	$32, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	vsub
	movsd	.LCPI47_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rdi
	callq	vnorm
	leaq	-192(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	callq	vdot
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -120(%rbp)
	ucomisd	-120(%rbp), %xmm1
	jbe	.LBB47_20
# BB#19:                                # %if.then.60
                                        #   in Loop: Header=BB47_17 Depth=1
	jmp	.LBB47_35
.LBB47_20:                              # %if.end.61
                                        #   in Loop: Header=BB47_17 Depth=1
	movl	$0, -32(%rbp)
.LBB47_21:                              # %for.cond.62
                                        #   Parent Loop BB47_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB47_34
# BB#22:                                # %for.body.67
                                        #   in Loop: Header=BB47_21 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$5, 4(%rcx)
	jne	.LBB47_24
# BB#23:                                # %if.then.74
                                        #   in Loop: Header=BB47_21 Depth=2
	jmp	.LBB47_33
.LBB47_24:                              # %if.end.75
                                        #   in Loop: Header=BB47_21 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$6, 4(%rcx)
	jne	.LBB47_26
# BB#25:                                # %if.then.82
                                        #   in Loop: Header=BB47_21 Depth=2
	jmp	.LBB47_33
.LBB47_26:                              # %if.end.83
                                        #   in Loop: Header=BB47_21 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$7, 4(%rcx)
	jne	.LBB47_28
# BB#27:                                # %if.then.90
                                        #   in Loop: Header=BB47_21 Depth=2
	jmp	.LBB47_33
.LBB47_28:                              # %if.end.91
                                        #   in Loop: Header=BB47_21 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$10, 4(%rcx)
	jne	.LBB47_30
# BB#29:                                # %if.then.98
                                        #   in Loop: Header=BB47_21 Depth=2
	jmp	.LBB47_33
.LBB47_30:                              # %if.end.99
                                        #   in Loop: Header=BB47_21 Depth=2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$13, 4(%rcx)
	jne	.LBB47_32
# BB#31:                                # %if.then.106
                                        #   in Loop: Header=BB47_21 Depth=2
	jmp	.LBB47_33
.LBB47_32:                              # %if.end.107
                                        #   in Loop: Header=BB47_21 Depth=2
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	callq	vcopy
	leaq	-160(%rbp), %rdi
	movabsq	$world, %rsi
	addq	$133456, %rsi           # imm = 0x20950
	movslq	-28(%rbp), %rax
	imulq	$26656, %rax, %rax      # imm = 0x6820
	addq	%rax, %rsi
	addq	$26592, %rsi            # imm = 0x67E0
	callq	vvmul
	leaq	-160(%rbp), %rdi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	addq	$24, %rsi
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rsi
	addq	$320, %rsi              # imm = 0x140
	callq	vvmul
	leaq	-160(%rbp), %rdi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	vmul
	leaq	-160(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vadd
.LBB47_33:                              # %for.inc.113
                                        #   in Loop: Header=BB47_21 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB47_21
.LBB47_34:                              # %for.end.115
                                        #   in Loop: Header=BB47_17 Depth=1
	jmp	.LBB47_35
.LBB47_35:                              # %for.inc.116
                                        #   in Loop: Header=BB47_17 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB47_17
.LBB47_36:                              # %for.end.118
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB47_37:                              # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	calclight, .Lfunc_end47-calclight
	.cfi_endproc

	.align	16, 0x90
	.type	objcolor,@function
objcolor:                               # @objcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	vcset
	movl	$0, -28(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB48_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movswl	world+280032, %edx
	cmpl	$1, %edx
	jge	.LBB48_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	vadd
	jmp	.LBB48_17
.LBB48_4:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movq	-40(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$13, %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	ja	.LBB48_15
# BB#21:                                # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI48_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB48_5:                               # %sw.bb
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	vcopy
	jmp	.LBB48_16
.LBB48_6:                               # %sw.bb.6
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	checker
	jmp	.LBB48_16
.LBB48_7:                               # %sw.bb.7
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	marble
	jmp	.LBB48_16
.LBB48_8:                               # %sw.bb.8
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	lizard
	jmp	.LBB48_16
.LBB48_9:                               # %sw.bb.9
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	perlin
	jmp	.LBB48_16
.LBB48_10:                              # %sw.bb.10
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	wood
	jmp	.LBB48_16
.LBB48_11:                              # %sw.bb.11
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	spiral
	jmp	.LBB48_16
.LBB48_12:                              # %sw.bb.12
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	spots
	jmp	.LBB48_16
.LBB48_13:                              # %sw.bb.13
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	imagepixel
	jmp	.LBB48_16
.LBB48_14:                              # %sw.bb.14
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_17
.LBB48_15:                              # %sw.default
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$.L.str.74, %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	movb	$0, %al
	callq	g_printerr
.LBB48_16:                              # %sw.epilog
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	616(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	vmul
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vadd
.LBB48_17:                              # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB48_1
.LBB48_18:                              # %for.end
	cmpl	$0, -28(%rbp)
	jne	.LBB48_20
# BB#19:                                # %if.then.16
	movabsq	$.L.str.75, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB48_20:                              # %if.end.17
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	objcolor, .Lfunc_end48-objcolor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI48_0:
	.quad	.LBB48_5
	.quad	.LBB48_6
	.quad	.LBB48_7
	.quad	.LBB48_8
	.quad	.LBB48_13
	.quad	.LBB48_14
	.quad	.LBB48_14
	.quad	.LBB48_14
	.quad	.LBB48_9
	.quad	.LBB48_10
	.quad	.LBB48_14
	.quad	.LBB48_11
	.quad	.LBB48_12
	.quad	.LBB48_14

	.text
	.align	16, 0x90
	.type	vadd,@function
vadd:                                   # @vadd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	addsd	(%rsi), %xmm0
	movsd	%xmm0, (%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	addsd	8(%rsi), %xmm0
	movsd	%xmm0, 8(%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	addsd	16(%rsi), %xmm0
	movsd	%xmm0, 16(%rsi)
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	addsd	24(%rsi), %xmm0
	movsd	%xmm0, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end49:
	.size	vadd, .Lfunc_end49-vadd
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vmix,@function
vmix:                                   # @vmix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI50_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	subsd	-32(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 24(%rdx)
	popq	%rbp
	retq
.Lfunc_end50:
	.size	vmix, .Lfunc_end50-vmix
	.cfi_endproc

	.align	16, 0x90
	.type	vsub,@function
vsub:                                   # @vsub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsi)
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	vsub, .Lfunc_end51-vsub
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4607182418800017408     # double 1
.LCPI52_1:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	objnormal,@function
objnormal:                              # @objnormal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movswl	(%rdx), %eax
	movl	%eax, %edx
	subl	$4, %eax
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movl	%eax, -476(%rbp)        # 4-byte Spill
	ja	.LBB52_6
# BB#54:                                # %entry
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	.LJTI52_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB52_1:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	callq	trianglenormal
	jmp	.LBB52_7
.LBB52_2:                               # %sw.bb.1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rsi
	callq	vcopy
	jmp	.LBB52_7
.LBB52_3:                               # %sw.bb.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rsi
	callq	vcopy
	jmp	.LBB52_7
.LBB52_4:                               # %sw.bb.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rsi
	callq	vcopy
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vsub
	jmp	.LBB52_7
.LBB52_5:                               # %sw.bb.6
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-488(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	jmp	.LBB52_7
.LBB52_6:                               # %sw.default
	movabsq	$.L.str.77, %rdi
	movb	$0, %al
	callq	g_error
.LBB52_7:                               # %sw.epilog
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	vnorm
	movl	$0, -28(%rbp)
.LBB52_8:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_10 Depth 2
                                        #     Child Loop BB52_40 Depth 2
                                        #     Child Loop BB52_35 Depth 2
                                        #     Child Loop BB52_30 Depth 2
                                        #     Child Loop BB52_25 Depth 2
                                        #     Child Loop BB52_45 Depth 2
                                        #     Child Loop BB52_20 Depth 2
                                        #     Child Loop BB52_15 Depth 2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movswl	13304(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB52_53
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB52_8 Depth=1
	leaq	-448(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI52_1, %xmm1        # xmm1 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$13312, %rcx            # imm = 0x3400
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	movq	%rcx, -456(%rbp)
	movsd	%xmm1, -464(%rbp)
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-496(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	movl	$0, -32(%rbp)
.LBB52_10:                              # %for.cond.9
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_13
# BB#11:                                # %for.body.12
                                        #   in Loop: Header=BB52_10 Depth=2
	leaq	-416(%rbp), %rax
	movslq	-32(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	vcopy
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB52_10 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_10
.LBB52_13:                              # %for.end
                                        #   in Loop: Header=BB52_8 Depth=1
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-416(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -416(%rbp)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -384(%rbp)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -344(%rbp)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -312(%rbp)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -272(%rbp)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -240(%rbp)
	movq	-456(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$13, %rdx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	ja	.LBB52_50
# BB#55:                                # %for.end
                                        #   in Loop: Header=BB52_8 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	.LJTI52_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB52_14:                              # %sw.bb.29
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_15:                              # %for.cond.30
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_18
# BB#16:                                # %for.body.33
                                        #   in Loop: Header=BB52_15 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	marble
# BB#17:                                # %for.inc.38
                                        #   in Loop: Header=BB52_15 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_15
.LBB52_18:                              # %for.end.40
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_19:                              # %sw.bb.41
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_20:                              # %for.cond.42
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_23
# BB#21:                                # %for.body.45
                                        #   in Loop: Header=BB52_20 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	lizard
# BB#22:                                # %for.inc.50
                                        #   in Loop: Header=BB52_20 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_20
.LBB52_23:                              # %for.end.52
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_24:                              # %sw.bb.53
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_25:                              # %for.cond.54
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_28
# BB#26:                                # %for.body.57
                                        #   in Loop: Header=BB52_25 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	perlin
# BB#27:                                # %for.inc.62
                                        #   in Loop: Header=BB52_25 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_25
.LBB52_28:                              # %for.end.64
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_29:                              # %sw.bb.65
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_30:                              # %for.cond.66
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_33
# BB#31:                                # %for.body.69
                                        #   in Loop: Header=BB52_30 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	wood
# BB#32:                                # %for.inc.74
                                        #   in Loop: Header=BB52_30 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_30
.LBB52_33:                              # %for.end.76
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_34:                              # %sw.bb.77
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_35:                              # %for.cond.78
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_38
# BB#36:                                # %for.body.81
                                        #   in Loop: Header=BB52_35 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	spiral
# BB#37:                                # %for.inc.86
                                        #   in Loop: Header=BB52_35 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_35
.LBB52_38:                              # %for.end.88
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_39:                              # %sw.bb.89
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_40:                              # %for.cond.90
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_43
# BB#41:                                # %for.body.93
                                        #   in Loop: Header=BB52_40 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	spots
# BB#42:                                # %for.inc.98
                                        #   in Loop: Header=BB52_40 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_40
.LBB52_43:                              # %for.end.100
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_44:                              # %sw.bb.101
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	$0, -32(%rbp)
.LBB52_45:                              # %for.cond.102
                                        #   Parent Loop BB52_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -32(%rbp)
	jge	.LBB52_48
# BB#46:                                # %for.body.105
                                        #   in Loop: Header=BB52_45 Depth=2
	leaq	-224(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	-456(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	imagepixel
# BB#47:                                # %for.inc.110
                                        #   in Loop: Header=BB52_45 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB52_45
.LBB52_48:                              # %for.end.112
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_51
.LBB52_49:                              # %sw.bb.113
                                        #   in Loop: Header=BB52_8 Depth=1
	jmp	.LBB52_52
.LBB52_50:                              # %sw.default.114
                                        #   in Loop: Header=BB52_8 Depth=1
	movabsq	$.L.str.74, %rdi
	movq	-456(%rbp), %rax
	movl	4(%rax), %esi
	movb	$0, %al
	callq	g_printerr
.LBB52_51:                              # %sw.epilog.116
                                        #   in Loop: Header=BB52_8 Depth=1
	leaq	-448(%rbp), %rdi
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-192(%rbp), %xmm0
	movsd	%xmm0, -448(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -440(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -432(%rbp)
	movq	-8(%rbp), %rsi
	callq	vadd
	leaq	-448(%rbp), %rdi
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	callq	vnorm
	leaq	-448(%rbp), %rdi
	movq	-456(%rbp), %rsi
	movsd	616(%rsi), %xmm0        # xmm0 = mem[0],zero
	callq	vmul
	leaq	-448(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vadd
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	vnorm
.LBB52_52:                              # %for.inc.135
                                        #   in Loop: Header=BB52_8 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB52_8
.LBB52_53:                              # %for.end.137
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end52:
	.size	objnormal, .Lfunc_end52-objnormal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI52_0:
	.quad	.LBB52_1
	.quad	.LBB52_2
	.quad	.LBB52_3
	.quad	.LBB52_4
	.quad	.LBB52_5
.LJTI52_1:
	.quad	.LBB52_49
	.quad	.LBB52_49
	.quad	.LBB52_14
	.quad	.LBB52_19
	.quad	.LBB52_44
	.quad	.LBB52_49
	.quad	.LBB52_49
	.quad	.LBB52_49
	.quad	.LBB52_24
	.quad	.LBB52_29
	.quad	.LBB52_49
	.quad	.LBB52_34
	.quad	.LBB52_39
	.quad	.LBB52_49

	.text
	.align	16, 0x90
	.type	vnorm,@function
vnorm:                                  # @vnorm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	vlen
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	vnorm, .Lfunc_end53-vnorm
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI54_0:
	.quad	4607182418800017408     # double 1
.LCPI54_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI54_2:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	vrotate,@function
vrotate:                                # @vrotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movsd	.LCPI54_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI54_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI54_2, %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	cos
	movsd	%xmm0, -88(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -96(%rbp)
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-176(%rbp), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-168(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-176(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-88(%rbp), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-160(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-168(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-160(%rbp), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-88(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	vrotate, .Lfunc_end54-vrotate
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI55_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	vmax,@function
vmax:                                   # @vmax
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB55_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB55_2:                               # %if.end
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB55_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB55_4:                               # %if.end.9
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB55_6
# BB#5:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI55_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB55_6:                               # %if.end.15
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end55:
	.size	vmax, .Lfunc_end55-vmax
	.cfi_endproc

	.align	16, 0x90
	.type	vvmul,@function
vvmul:                                  # @vvmul
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movsd	%xmm0, (%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	8(%rsi), %xmm0
	movsd	%xmm0, 8(%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	16(%rsi), %xmm0
	movsd	%xmm0, 16(%rsi)
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	24(%rsi), %xmm0
	movsd	%xmm0, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end56:
	.size	vvmul, .Lfunc_end56-vvmul
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI57_0:
	.quad	4607182418800017408     # double 1
.LCPI57_1:
	.quad	4607181518080091934     # double 0.99990000000000001
	.text
	.align	16, 0x90
	.type	calcphong,@function
calcphong:                              # @calcphong
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	leaq	-216(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	vcopy
	leaq	-184(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	vcopy
	leaq	-184(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vsub
	leaq	-184(%rbp), %rdi
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	callq	vnorm
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	movw	$-1, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB57_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_5 Depth 2
	movl	-28(%rbp), %eax
	cmpl	world+133448, %eax
	jge	.LBB57_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB57_1 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vcopy
	movabsq	$world, %rsi
	addq	$133456, %rsi           # imm = 0x20950
	leaq	-112(%rbp), %rdi
	addq	$32, %rdi
	movslq	-28(%rbp), %rax
	imulq	$26656, %rax, %rax      # imm = 0x6820
	addq	%rax, %rsi
	addq	$26624, %rsi            # imm = 0x6800
	callq	vcopy
	movsd	.LCPI57_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	addq	$32, %rsi
	movq	%rax, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	vmix
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	callq	traceray
	cmpl	$0, %eax
	je	.LBB57_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_13
.LBB57_4:                               # %if.end
                                        #   in Loop: Header=BB57_1 Depth=1
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	vsub
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %rdi
	callq	vnorm
	leaq	-184(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	callq	vdot
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$0, -32(%rbp)
.LBB57_5:                               # %for.cond.12
                                        #   Parent Loop BB57_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movswl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB57_12
# BB#6:                                 # %for.body.15
                                        #   in Loop: Header=BB57_5 Depth=2
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	cmpl	$5, 4(%rcx)
	je	.LBB57_8
# BB#7:                                 # %if.then.20
                                        #   in Loop: Header=BB57_5 Depth=2
	jmp	.LBB57_11
.LBB57_8:                               # %if.end.21
                                        #   in Loop: Header=BB57_5 Depth=2
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	movsd	608(%rcx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -224(%rbp)
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-224(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB57_10
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB57_5 Depth=2
	jmp	.LBB57_11
.LBB57_10:                              # %if.end.29
                                        #   in Loop: Header=BB57_5 Depth=2
	leaq	-152(%rbp), %rdi
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-224(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	divsd	-224(%rbp), %xmm1
	movsd	%xmm1, -224(%rbp)
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	imulq	$664, %rax, %rax        # imm = 0x298
	addq	%rax, %rcx
	addq	$576, %rcx              # imm = 0x240
	movq	%rcx, %rsi
	callq	vcopy
	leaq	-152(%rbp), %rdi
	movabsq	$world, %rax
	addq	$133456, %rax           # imm = 0x20950
	movslq	-28(%rbp), %rcx
	imulq	$26656, %rcx, %rcx      # imm = 0x6820
	addq	%rcx, %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rsi
	callq	vvmul
	leaq	-152(%rbp), %rdi
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	vmul
	leaq	-152(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	vadd
.LBB57_11:                              # %for.inc
                                        #   in Loop: Header=BB57_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB57_5
.LBB57_12:                              # %for.end
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_13
.LBB57_13:                              # %for.inc.37
                                        #   in Loop: Header=BB57_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB57_1
.LBB57_14:                              # %for.end.39
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	calcphong, .Lfunc_end57-calcphong
	.cfi_endproc

	.align	16, 0x90
	.type	vdot,@function
vdot:                                   # @vdot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end58:
	.size	vdot, .Lfunc_end58-vdot
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI59_0:
	.quad	4644788847879072514     # double 345.678
.LCPI59_1:
	.quad	4642457109172001440     # double 234.56700000000001
.LCPI59_2:
	.quad	4638387860618067575     # double 123.456
.LCPI59_3:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI59_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	turbulence,@function
turbulence:                             # @turbulence
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm2, %xmm2
	movsd	.LCPI59_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI59_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI59_2, %xmm5        # xmm5 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	addsd	(%rdi), %xmm5
	movsd	%xmm5, -64(%rbp)
	movq	-8(%rbp), %rdi
	addsd	8(%rdi), %xmm4
	movsd	%xmm4, -56(%rbp)
	movq	-8(%rbp), %rdi
	addsd	16(%rdi), %xmm3
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB59_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB59_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB59_1 Depth=1
	leaq	-64(%rbp), %rdi
	callq	noise3
	movsd	.LCPI59_4, %xmm1        # xmm1 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	mulsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB59_1 Depth=1
	movsd	.LCPI59_4, %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB59_1
.LBB59_4:                               # %for.end
	movsd	.LCPI59_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	turbulence, .Lfunc_end59-turbulence
	.cfi_endproc

	.align	16, 0x90
	.type	vcross,@function
vcross:                                 # @vcross
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	16(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	8(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	16(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	8(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	popq	%rbp
	retq
.Lfunc_end60:
	.size	vcross, .Lfunc_end60-vcross
	.cfi_endproc

	.align	16, 0x90
	.type	vdist2,@function
vdist2:                                 # @vdist2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	(%rsi), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	8(%rsi), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	16(%rsi), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end61:
	.size	vdist2, .Lfunc_end61-vdist2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI62_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI62_1:
	.quad	4598175219545276416     # double 0.25
.LCPI62_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	checker,@function
checker:                                # @checker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	leaq	-64(%rbp), %rdi
	movsd	.LCPI62_1, %xmm0        # xmm0 = mem[0],zero
	callq	vmul
	xorps	%xmm0, %xmm0
	movsd	.LCPI62_0, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	-64(%rbp), %xmm2
	movsd	%xmm2, -64(%rbp)
	movaps	%xmm1, %xmm2
	addsd	-56(%rbp), %xmm2
	movsd	%xmm2, -56(%rbp)
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB62_2
# BB#1:                                 # %if.then
	movsd	.LCPI62_2, %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB62_2:                               # %if.end
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB62_4
# BB#3:                                 # %if.then.8
	movsd	.LCPI62_2, %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB62_4:                               # %if.end.12
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB62_6
# BB#5:                                 # %if.then.15
	movsd	.LCPI62_2, %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB62_6:                               # %if.end.19
	movsd	.LCPI62_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB62_8
# BB#7:                                 # %if.then.26
	movl	-28(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB62_8:                               # %if.end.27
	movsd	.LCPI62_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB62_10
# BB#9:                                 # %if.then.35
	movl	-28(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB62_10:                              # %if.end.37
	movsd	.LCPI62_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB62_12
# BB#11:                                # %if.then.45
	movl	-28(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB62_12:                              # %if.end.47
	movq	-16(%rbp), %rax
	cmpl	$0, -28(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB62_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	24(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	32(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	40(%rax), %rax
	movq	%rax, 24(%rdx)
	jmp	.LBB62_15
.LBB62_14:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	56(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	64(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	72(%rax), %rax
	movq	%rax, 24(%rdx)
.LBB62_15:                              # %cond.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	checker, .Lfunc_end62-checker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI63_0:
	.quad	4602678819172646912     # double 0.5
.LCPI63_1:
	.quad	4611686018427387904     # double 2
.LCPI63_2:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	marble,@function
marble:                                 # @marble
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	movsd	.LCPI63_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI63_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI63_2, %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB63_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	gradcolor
	jmp	.LBB63_3
.LBB63_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vmix
.LBB63_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	marble, .Lfunc_end63-marble
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI64_0:
	.quad	4613937818241073152     # double 3
.LCPI64_2:
	.quad	4616189618054758400     # double 4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI64_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	lizard,@function
lizard:                                 # @lizard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	movsd	.LCPI64_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI64_2, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-64(%rbp), %xmm2
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	sin
	movapd	.LCPI64_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	callq	sin
	movapd	.LCPI64_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	callq	sin
	movapd	.LCPI64_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB64_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	gradcolor
	jmp	.LBB64_3
.LBB64_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vmix
.LBB64_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	lizard, .Lfunc_end64-lizard
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI65_0:
	.quad	4602678819172646912     # double 0.5
.LCPI65_1:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI65_2:
	.quad	4607182418800017408     # double 1
.LCPI65_3:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	perlin,@function
perlin:                                 # @perlin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -96(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -88(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -80(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	movsd	.LCPI65_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI65_3, %xmm1        # xmm1 = mem[0],zero
	leaq	-64(%rbp), %rdi
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -64(%rbp)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -56(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	callq	turbulence
	movsd	.LCPI65_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI65_1, %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB65_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	gradcolor
	jmp	.LBB65_3
.LBB65_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vmix
.LBB65_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	perlin, .Lfunc_end65-perlin
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI66_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	wood,@function
wood:                                   # @wood
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI66_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-32(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB66_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	gradcolor
	jmp	.LBB66_3
.LBB66_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vmix
.LBB66_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	wood, .Lfunc_end66-wood
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI67_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI67_1:
	.quad	4681608292164698112     # double 99999
.LCPI67_2:
	.quad	4611686018427387904     # double 2
.LCPI67_3:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	spiral,@function
spiral:                                 # @spiral
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI67_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI67_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI67_3, %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	addsd	-56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movapd	.LCPI67_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	-32(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB67_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	gradcolor
	jmp	.LBB67_3
.LBB67_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vmix
.LBB67_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	spiral, .Lfunc_end67-spiral
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI68_0:
	.quad	4607182418800017408     # double 1
.LCPI68_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI68_2:
	.quad	4602678819172646912     # double 0.5
.LCPI68_3:
	.quad	4666723172467343360     # double 1.0E+4
	.text
	.align	16, 0x90
	.type	spots,@function
spots:                                  # @spots
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	leaq	-96(%rbp), %rdi
	movsd	.LCPI68_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI68_3, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	-64(%rbp), %xmm2
	movsd	%xmm2, -64(%rbp)
	movaps	%xmm1, %xmm2
	addsd	-56(%rbp), %xmm2
	movsd	%xmm2, -56(%rbp)
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-64(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movaps	%xmm0, %xmm2
	addsd	-56(%rbp), %xmm2
	cvttsd2si	%xmm2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	vdist
	movsd	.LCPI68_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI68_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	mulsd	-32(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	cos
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB68_2
# BB#1:                                 # %cond.true
	movsd	.LCPI68_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB68_6
.LBB68_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB68_4
# BB#3:                                 # %cond.true.18
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB68_5
.LBB68_4:                               # %cond.false.19
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB68_5:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB68_6:                               # %cond.end.20
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	624(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB68_8
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	gradcolor
	jmp	.LBB68_9
.LBB68_8:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	vmix
.LBB68_9:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	spots, .Lfunc_end68-spots
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI69_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	imagepixel,@function
imagepixel:                             # @imagepixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -40(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	transformpoint
	movsd	.LCPI69_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movswl	456(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -60(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movswl	458(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -64(%rbp)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rdx
	movswl	456(%rdx), %ecx
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rsi
	movswl	456(%rsi), %ecx
	addl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movswl	456(%rsi), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -60(%rbp)
	movl	-64(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movswl	458(%rsi), %edx
	movl	%ecx, %eax
	movl	%edx, -76(%rbp)         # 4-byte Spill
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-24(%rbp), %rsi
	movswl	458(%rsi), %r8d
	addl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movswl	458(%rsi), %r8d
	movl	%edx, %eax
	cltd
	idivl	%r8d
	movl	%edx, -64(%rbp)
	imull	$3, -60(%rbp), %edx
	movq	-24(%rbp), %rsi
	movswl	458(%rsi), %r8d
	subl	$1, %r8d
	subl	-64(%rbp), %r8d
	movq	-24(%rbp), %rsi
	movswl	456(%rsi), %r9d
	imull	%r9d, %r8d
	imull	$3, %r8d, %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movq	-24(%rbp), %rdi
	addq	464(%rdi), %rsi
	movq	%rsi, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movzbl	(%rsi), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-72(%rbp), %rsi
	movzbl	1(%rsi), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	movq	-72(%rbp), %rsi
	movzbl	2(%rsi), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm0, %xmm3
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	vset
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	imagepixel, .Lfunc_end69-imagepixel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI70_0:
	.quad	4607182418800017408     # double 1
.LCPI70_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	transformpoint,@function
transformpoint:                         # @transformpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	424(%rsi), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_3
	jp	.LBB70_3
# BB#1:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	432(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_3
	jp	.LBB70_3
# BB#2:                                 # %lor.lhs.false.3
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	440(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_3
	jp	.LBB70_3
	jmp	.LBB70_4
.LBB70_3:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$424, %rax              # imm = 0x1A8
	movq	%rax, %rsi
	callq	vvrotate
.LBB70_4:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rsi
	callq	vvdiv
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$392, %rax              # imm = 0x188
	movq	%rax, %rsi
	callq	vsub
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	632(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_7
	jp	.LBB70_7
# BB#5:                                 # %lor.lhs.false.9
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	640(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_7
	jp	.LBB70_7
# BB#6:                                 # %lor.lhs.false.13
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	648(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB70_7
	jp	.LBB70_7
	jmp	.LBB70_8
.LBB70_7:                               # %if.then.17
	movsd	.LCPI70_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI70_1, %xmm1        # xmm1 = mem[0],zero
	leaq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -32(%rbp)
	callq	turbulence
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movsd	632(%rax), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	640(%rax), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	648(%rax), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
.LBB70_8:                               # %if.end.36
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	transformpoint, .Lfunc_end70-transformpoint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI71_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vvrotate,@function
vvrotate:                               # @vvrotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB71_1
	jp	.LBB71_1
	jmp	.LBB71_2
.LBB71_1:                               # %if.then
	leaq	-48(%rbp), %rdi
	movsd	.LCPI71_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	callq	vrotate
.LBB71_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB71_3
	jp	.LBB71_3
	jmp	.LBB71_4
.LBB71_3:                               # %if.then.3
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI71_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	callq	vrotate
.LBB71_4:                               # %if.end.5
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB71_5
	jp	.LBB71_5
	jmp	.LBB71_6
.LBB71_5:                               # %if.then.7
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI71_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	vset
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	callq	vrotate
.LBB71_6:                               # %if.end.9
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	vvrotate, .Lfunc_end71-vvrotate
	.cfi_endproc

	.align	16, 0x90
	.type	vvdiv,@function
vvdiv:                                  # @vvdiv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsi)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end72:
	.size	vvdiv, .Lfunc_end72-vvdiv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI73_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradcolor,@function
gradcolor:                              # @gradcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movsd	.LCPI73_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB73_2
# BB#1:                                 # %cond.true
	movsd	.LCPI73_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB73_6
.LBB73_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB73_4
# BB#3:                                 # %cond.true.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB73_5
.LBB73_4:                               # %cond.false.3
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB73_5:                               # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB73_6:                               # %cond.end.4
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB73_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movswl	(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB73_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB73_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	8(%rcx,%rax,8), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB73_10
	jp	.LBB73_10
# BB#9:                                 # %if.then
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB73_15
.LBB73_10:                              # %if.end
                                        #   in Loop: Header=BB73_7 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	8(%rcx,%rax,8), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB73_12
# BB#11:                                # %if.then.17
	leaq	-72(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	subsd	8(%rdx,%rcx,8), %xmm0
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsd	8(%rdx,%rcx,8), %xmm1   # xmm1 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	subsd	8(%rdx,%rcx,8), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	callq	vcopy
	leaq	-72(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	vmul
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vcopy
	leaq	-72(%rbp), %rdi
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	callq	vcopy
	leaq	-72(%rbp), %rdi
	movsd	.LCPI73_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	callq	vmul
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	vadd
	jmp	.LBB73_15
.LBB73_12:                              # %if.end.38
                                        #   in Loop: Header=BB73_7 Depth=1
	jmp	.LBB73_13
.LBB73_13:                              # %for.inc
                                        #   in Loop: Header=BB73_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB73_7
.LBB73_14:                              # %for.end
	movabsq	$.L.str.76, %rdi
	movb	$0, %al
	callq	g_printerr
	xorps	%xmm0, %xmm0
	movsd	.LCPI73_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
.LBB73_15:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gradcolor, .Lfunc_end73-gradcolor
	.cfi_endproc

	.align	16, 0x90
	.type	vdist,@function
vdist:                                  # @vdist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	(%rsi), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	8(%rsi), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	16(%rsi), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	vdist, .Lfunc_end74-vdist
	.cfi_endproc

	.align	16, 0x90
	.type	trianglenormal,@function
trianglenormal:                         # @trianglenormal
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
	subq	$26720, %rsp            # imm = 0x6860
	leaq	-26712(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	addq	$26624, %rax            # imm = 0x6800
	movq	-24(%rbp), %rdx
	addq	$26624, %rdx            # imm = 0x6800
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	vcopy
	leaq	-26712(%rbp), %rax
	addq	$26656, %rax            # imm = 0x6820
	movq	-24(%rbp), %rdx
	addq	$26656, %rdx            # imm = 0x6820
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	vcopy
	leaq	-26712(%rbp), %rax
	addq	$26624, %rax            # imm = 0x6800
	movq	-24(%rbp), %rdx
	addq	$26592, %rdx            # imm = 0x67E0
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	vsub
	leaq	-26712(%rbp), %rax
	addq	$26656, %rax            # imm = 0x6820
	movq	-24(%rbp), %rdx
	addq	$26592, %rdx            # imm = 0x67E0
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	vsub
	xorps	%xmm0, %xmm0
	leaq	-26712(%rbp), %rax
	addq	$26592, %rax            # imm = 0x67E0
	movq	%rax, %rdi
	movsd	%xmm0, -26720(%rbp)     # 8-byte Spill
	movsd	-26720(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-26720(%rbp), %xmm2     # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	vset
	leaq	-26712(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rdx
	addq	$26624, %rdx            # imm = 0x6800
	addq	$26656, %rax            # imm = 0x6820
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	vcross
	cmpq	$0, -16(%rbp)
	je	.LBB75_2
# BB#1:                                 # %if.then
	leaq	-26712(%rbp), %rax
	movq	%rax, %rcx
	addq	$26624, %rcx            # imm = 0x6800
	addq	$26656, %rax            # imm = 0x6820
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	vdot
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB75_2:                               # %if.end
	addq	$26720, %rsp            # imm = 0x6860
	popq	%rbp
	retq
.Lfunc_end75:
	.size	trianglenormal, .Lfunc_end75-trianglenormal
	.cfi_endproc

	.align	16, 0x90
	.type	vlen,@function
vlen:                                   # @vlen
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	vlen, .Lfunc_end76-vlen
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI77_0:
	.quad	4609434218613702656     # double 1.5
.LCPI77_1:
	.quad	4613937818241073152     # double 3
.LCPI77_2:
	.quad	4611686018427387904     # double 2
.LCPI77_3:
	.quad	4607182418800017408     # double 1
.LCPI77_4:
	.quad	4666723172467343360     # double 1.0E+4
	.text
	.align	16, 0x90
	.type	noise3,@function
noise3:                                 # @noise3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, start
	je	.LBB77_2
# BB#1:                                 # %if.then
	movl	$0, start
	callq	init
.LBB77_2:                               # %if.end
	movsd	.LCPI77_0, %xmm0        # xmm0 = mem[0],zero
	movabsq	$g, %rax
	movsd	.LCPI77_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI77_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI77_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI77_4, %xmm4        # xmm4 = mem[0],zero
	movq	-8(%rbp), %rcx
	movaps	%xmm4, %xmm5
	addsd	(%rcx), %xmm5
	movsd	%xmm5, -168(%rbp)
	cvttsd2si	-168(%rbp), %edx
	andl	$255, %edx
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	andl	$255, %edx
	movl	%edx, -16(%rbp)
	movsd	-168(%rbp), %xmm5       # xmm5 = mem[0],zero
	cvttsd2si	-168(%rbp), %edx
	cvtsi2sdl	%edx, %xmm6
	subsd	%xmm6, %xmm5
	movsd	%xmm5, -56(%rbp)
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	%xmm3, %xmm5
	movsd	%xmm5, -64(%rbp)
	movq	-8(%rbp), %rcx
	movaps	%xmm4, %xmm5
	addsd	8(%rcx), %xmm5
	movsd	%xmm5, -168(%rbp)
	cvttsd2si	-168(%rbp), %edx
	andl	$255, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	andl	$255, %edx
	movl	%edx, -24(%rbp)
	movsd	-168(%rbp), %xmm5       # xmm5 = mem[0],zero
	cvttsd2si	-168(%rbp), %edx
	cvtsi2sdl	%edx, %xmm6
	subsd	%xmm6, %xmm5
	movsd	%xmm5, -72(%rbp)
	movsd	-72(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	%xmm3, %xmm5
	movsd	%xmm5, -80(%rbp)
	movq	-8(%rbp), %rcx
	addsd	16(%rcx), %xmm4
	movsd	%xmm4, -168(%rbp)
	cvttsd2si	-168(%rbp), %edx
	andl	$255, %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	addl	$1, %edx
	andl	$255, %edx
	movl	%edx, -32(%rbp)
	movsd	-168(%rbp), %xmm4       # xmm4 = mem[0],zero
	cvttsd2si	-168(%rbp), %edx
	cvtsi2sdl	%edx, %xmm5
	subsd	%xmm5, %xmm4
	movsd	%xmm4, -88(%rbp)
	movsd	-88(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	%xmm3, %xmm4
	movsd	%xmm4, -96(%rbp)
	movslq	-12(%rbp), %rcx
	movl	p(,%rcx,4), %edx
	movl	%edx, -188(%rbp)
	movslq	-16(%rbp), %rcx
	movl	p(,%rcx,4), %edx
	movl	%edx, -192(%rbp)
	movl	-188(%rbp), %edx
	addl	-20(%rbp), %edx
	movslq	%edx, %rcx
	movl	p(,%rcx,4), %edx
	movl	%edx, -36(%rbp)
	movl	-192(%rbp), %edx
	addl	-20(%rbp), %edx
	movslq	%edx, %rcx
	movl	p(,%rcx,4), %edx
	movl	%edx, -40(%rbp)
	movl	-188(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rcx
	movl	p(,%rcx,4), %edx
	movl	%edx, -44(%rbp)
	movl	-192(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rcx
	movl	p(,%rcx,4), %edx
	movl	%edx, -48(%rbp)
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-56(%rbp), %xmm3
	movaps	%xmm2, %xmm4
	mulsd	-56(%rbp), %xmm4
	movaps	%xmm1, %xmm5
	subsd	%xmm4, %xmm5
	mulsd	%xmm5, %xmm3
	movsd	%xmm3, -112(%rbp)
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-72(%rbp), %xmm3
	movaps	%xmm2, %xmm4
	mulsd	-72(%rbp), %xmm4
	movaps	%xmm1, %xmm5
	subsd	%xmm4, %xmm5
	mulsd	%xmm5, %xmm3
	movsd	%xmm3, -120(%rbp)
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-88(%rbp), %xmm3
	mulsd	-88(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, -128(%rbp)
	movl	-36(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movl	-40(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-184(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-176(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -136(%rbp)
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movl	-48(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-184(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-176(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-144(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-136(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -152(%rbp)
	movl	-36(%rbp), %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movl	-40(%rbp), %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-184(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-176(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -136(%rbp)
	movl	-44(%rbp), %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	(%rcx), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	8(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rcx
	mulsd	16(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movl	-48(%rbp), %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rax
	mulsd	(%rax), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rax
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rax
	mulsd	16(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-184(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-176(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-144(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-136(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-152(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	noise3, .Lfunc_end77-noise3
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI78_0:
	.quad	4607182418800017408     # double 1
.LCPI78_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	callq	g_rand_new
	movl	$1, %esi
	movq	%rax, gr
	movq	gr, %rdi
	callq	g_rand_set_seed
	movl	$0, -4(%rbp)
.LBB78_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_3 Depth 2
                                        #       Child Loop BB78_4 Depth 3
                                        #     Child Loop BB78_10 Depth 2
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB78_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_3
.LBB78_3:                               # %do.body
                                        #   Parent Loop BB78_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB78_4 Depth 3
	movl	$0, -8(%rbp)
.LBB78_4:                               # %for.cond.1
                                        #   Parent Loop BB78_1 Depth=1
                                        #     Parent Loop BB78_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -8(%rbp)
	jge	.LBB78_7
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB78_4 Depth=3
	movsd	.LCPI78_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI78_0, %xmm1        # xmm1 = mem[0],zero
	movq	gr, %rdi
	callq	g_rand_double_range
	movslq	-8(%rbp), %rdi
	movsd	%xmm0, -48(%rbp,%rdi,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB78_4 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB78_4
.LBB78_7:                               # %for.end
                                        #   in Loop: Header=BB78_3 Depth=2
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#8:                                 # %do.cond
                                        #   in Loop: Header=BB78_3 Depth=2
	movsd	.LCPI78_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB78_3
# BB#9:                                 # %do.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -56(%rbp)
	movl	$0, -8(%rbp)
.LBB78_10:                              # %for.cond.16
                                        #   Parent Loop BB78_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -8(%rbp)
	jge	.LBB78_13
# BB#11:                                # %for.body.18
                                        #   in Loop: Header=BB78_10 Depth=2
	movabsq	$g, %rax
	movslq	-8(%rbp), %rcx
	movsd	-48(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movslq	-8(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movsd	%xmm0, (%rax,%rcx,8)
# BB#12:                                # %for.inc.25
                                        #   in Loop: Header=BB78_10 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB78_10
.LBB78_13:                              # %for.end.27
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_14
.LBB78_14:                              # %for.inc.28
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB78_1
.LBB78_15:                              # %for.end.30
	movl	$0, -4(%rbp)
.LBB78_16:                              # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB78_19
# BB#17:                                # %for.body.33
                                        #   in Loop: Header=BB78_16 Depth=1
	movl	-4(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, p(,%rcx,4)
# BB#18:                                # %for.inc.36
                                        #   in Loop: Header=BB78_16 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB78_16
.LBB78_19:                              # %for.end.38
	movl	$256, -4(%rbp)          # imm = 0x100
.LBB78_20:                              # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB78_23
# BB#21:                                # %for.body.41
                                        #   in Loop: Header=BB78_20 Depth=1
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movslq	-4(%rbp), %rax
	movl	p(,%rax,4), %ecx
	movl	%ecx, -12(%rbp)
	movq	gr, %rdi
	callq	g_rand_int_range
	movl	%eax, -8(%rbp)
	movslq	%eax, %rdi
	movl	p(,%rdi,4), %eax
	movslq	-4(%rbp), %rdi
	movl	%eax, p(,%rdi,4)
	movl	-12(%rbp), %eax
	movslq	-8(%rbp), %rdi
	movl	%eax, p(,%rdi,4)
# BB#22:                                # %for.inc.51
                                        #   in Loop: Header=BB78_20 Depth=1
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB78_20
.LBB78_23:                              # %for.end.52
	movl	$0, -4(%rbp)
.LBB78_24:                              # %for.cond.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB78_26 Depth 2
	cmpl	$258, -4(%rbp)          # imm = 0x102
	jge	.LBB78_31
# BB#25:                                # %for.body.55
                                        #   in Loop: Header=BB78_24 Depth=1
	movslq	-4(%rbp), %rax
	movl	p(,%rax,4), %ecx
	movl	-4(%rbp), %edx
	addl	$256, %edx              # imm = 0x100
	movslq	%edx, %rax
	movl	%ecx, p(,%rax,4)
	movl	$0, -8(%rbp)
.LBB78_26:                              # %for.cond.61
                                        #   Parent Loop BB78_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -8(%rbp)
	jge	.LBB78_29
# BB#27:                                # %for.body.63
                                        #   in Loop: Header=BB78_26 Depth=2
	movabsq	$g, %rax
	movslq	-8(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movsd	(%rsi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-8(%rbp), %rcx
	movl	-4(%rbp), %edi
	addl	$256, %edi              # imm = 0x100
	movslq	%edi, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movsd	%xmm0, (%rax,%rcx,8)
# BB#28:                                # %for.inc.73
                                        #   in Loop: Header=BB78_26 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB78_26
.LBB78_29:                              # %for.end.75
                                        #   in Loop: Header=BB78_24 Depth=1
	jmp	.LBB78_30
.LBB78_30:                              # %for.inc.76
                                        #   in Loop: Header=BB78_24 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB78_24
.LBB78_31:                              # %for.end.78
	movq	gr, %rdi
	callq	g_rand_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	init, .Lfunc_end78-init
	.cfi_endproc

	.align	16, 0x90
	.type	relabel,@function
relabel:                                # @relabel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	$0, -56(%rbp)
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_selection
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-48(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB79_2
# BB#1:                                 # %if.then
	movq	texturelist, %rdi
	callq	gtk_tree_view_get_model
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	mklabel
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_set
.LBB79_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	relabel, .Lfunc_end79-relabel
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
	.asciz	"plug-in-spheredesigner"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Create an image of a textured sphere"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This plugin can be used to create textured and/or bumpmapped spheres, and uses a small lightweight raytracer to perform the task with good quality"
	.size	.L.str.8, 147

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Vidar Madsen"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1999"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Sphere _Designer..."
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Render"
	.size	.L.str.13, 23

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

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Region selected for plug-in is empty"
	.size	.L.str.16, 37

	.type	s,@object               # @s
	.local	s
	.comm	s,26632,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sphere-designer"
	.size	.L.str.17, 16

	.type	img_stride,@object      # @img_stride
	.local	img_stride
	.comm	img_stride,4,4
	.type	img,@object             # @img
	.local	img
	.comm	img,8,8
	.type	buffer,@object          # @buffer
	.local	buffer
	.comm	buffer,8,8
	.type	do_run,@object          # @do_run
	.local	do_run
	.comm	do_run,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Sphere Designer"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-sphere-designer"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-reset"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-cancel"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-ok"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"response"
	.size	.L.str.23, 9

	.type	drawarea,@object        # @drawarea
	.local	drawarea
	.comm	drawarea,8,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"expose-event"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-open"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"clicked"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-save"
	.size	.L.str.27, 9

	.type	texturelist,@object     # @texturelist
	.local	texturelist
	.comm	texturelist,8,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"changed"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Layers"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"text"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-new"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-duplicate"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-delete"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Properties"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Texture"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Bump"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Light"
	.size	.L.str.37, 6

	.type	typemenu,@object        # @typemenu
	.local	typemenu
	.comm	typemenu,8,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Type:"
	.size	.L.str.38, 6

	.type	texturemenu,@object     # @texturemenu
	.local	texturemenu
	.comm	texturemenu,8,8
	.type	textures,@object        # @textures
	.data
	.align	16
textures:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.78
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.79
	.quad	1                       # 0x1
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.80
	.quad	2                       # 0x2
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.81
	.quad	3                       # 0x3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.82
	.quad	5                       # 0x5
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.83
	.quad	8                       # 0x8
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.84
	.quad	9                       # 0x9
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.85
	.quad	11                      # 0xb
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.86
	.quad	12                      # 0xc
	.zero	24
	.size	textures, 240

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"Texture:"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Colors:"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Color Selection Dialog"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"color-changed"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Scale:"
	.size	.L.str.43, 7

	.type	scalescale,@object      # @scalescale
	.local	scalescale
	.comm	scalescale,8,8
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"value-changed"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Turbulence:"
	.size	.L.str.45, 12

	.type	turbulencescale,@object # @turbulencescale
	.local	turbulencescale
	.comm	turbulencescale,8,8
	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Amount:"
	.size	.L.str.46, 8

	.type	amountscale,@object     # @amountscale
	.local	amountscale
	.comm	amountscale,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Exp.:"
	.size	.L.str.47, 6

	.type	expscale,@object        # @expscale
	.local	expscale
	.comm	expscale,8,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Transformations"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Scale X:"
	.size	.L.str.49, 9

	.type	scalexscale,@object     # @scalexscale
	.local	scalexscale
	.comm	scalexscale,8,8
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Scale Y:"
	.size	.L.str.50, 9

	.type	scaleyscale,@object     # @scaleyscale
	.local	scaleyscale
	.comm	scaleyscale,8,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Scale Z:"
	.size	.L.str.51, 9

	.type	scalezscale,@object     # @scalezscale
	.local	scalezscale
	.comm	scalezscale,8,8
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Rotate X:"
	.size	.L.str.52, 10

	.type	rotxscale,@object       # @rotxscale
	.local	rotxscale
	.comm	rotxscale,8,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Rotate Y:"
	.size	.L.str.53, 10

	.type	rotyscale,@object       # @rotyscale
	.local	rotyscale
	.comm	rotyscale,8,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Rotate Z:"
	.size	.L.str.54, 10

	.type	rotzscale,@object       # @rotzscale
	.local	rotzscale
	.comm	rotzscale,8,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Position X:"
	.size	.L.str.55, 12

	.type	posxscale,@object       # @posxscale
	.local	posxscale
	.comm	posxscale,8,8
	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Position Y:"
	.size	.L.str.56, 12

	.type	posyscale,@object       # @posyscale
	.local	posyscale
	.comm	posyscale,8,8
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Position Z:"
	.size	.L.str.57, 12

	.type	poszscale,@object       # @poszscale
	.local	poszscale
	.comm	poszscale,8,8
	.type	fileselect.windows,@object # @fileselect.windows
	.local	fileselect.windows
	.comm	fileselect.windows,16,16
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Open File"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Save File"
	.size	.L.str.59, 10

	.type	.Lfileselect.titles,@object # @fileselect.titles
	.section	.rodata,"a",@progbits
	.align	16
.Lfileselect.titles:
	.quad	.L.str.58
	.quad	.L.str.59
	.size	.Lfileselect.titles, 16

	.type	.Lfileselect.handlers,@object # @fileselect.handlers
	.align	16
.Lfileselect.handlers:
	.quad	loadpreset_response
	.quad	savepreset_response
	.size	.Lfileselect.handlers, 16

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"destroy"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"rt"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.62, 36

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%d %d"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"File '%s' is not a valid save file."
	.size	.L.str.64, 36

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%%d %%d %%%lus"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"wt"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.67, 36

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	" %s"
	.size	.L.str.68, 4

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\n"
	.size	.L.str.69, 2

	.type	noupdate,@object        # @noupdate
	.local	noupdate
	.comm	noupdate,4,4
	.type	mklabel.tmps,@object    # @mklabel.tmps
	.local	mklabel.tmps
	.comm	mklabel.tmps,100,16
	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Bumpmap"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"<unknown>"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	" / "
	.size	.L.str.72, 4

	.type	idle_id,@object         # @idle_id
	.local	idle_id
	.comm	idle_id,4,4
	.type	world,@object           # @world
	.local	world
	.comm	world,280112,8
	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Illegal object!!\n"
	.size	.L.str.73, 18

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Warning: unknown texture %d\n"
	.size	.L.str.74, 29

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Warning: object %p has no textures\n"
	.size	.L.str.75, 36

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Error in gradient!\n"
	.size	.L.str.76, 20

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"objnormal(): Unsupported object type!?\n"
	.size	.L.str.77, 40

	.type	start,@object           # @start
	.data
	.align	4
start:
	.long	1                       # 0x1
	.size	start, 4

	.type	p,@object               # @p
	.local	p
	.comm	p,2056,16
	.type	g,@object               # @g
	.local	g
	.comm	g,12336,16
	.type	gr,@object              # @gr
	.local	gr
	.comm	gr,8,8
	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"Solid"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Checker"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Marble"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Lizard"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Phong"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Noise"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Wood"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Spiral"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Spots"
	.size	.L.str.86, 6

	.type	drawcolor1.lastw,@object # @drawcolor1.lastw
	.local	drawcolor1.lastw
	.comm	drawcolor1.lastw,8,8
	.type	drawcolor2.lastw,@object # @drawcolor2.lastw
	.local	drawcolor2.lastw
	.comm	drawcolor2.lastw,8,8
	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Rendering sphere"
	.size	.L.str.87, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
