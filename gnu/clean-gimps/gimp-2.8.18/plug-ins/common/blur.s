	.text
	.file	"blur.bc"
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %r10
	movl	$1, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.14, %rsi
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.15, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movl	$21, run.values
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdi
	movl	$.L.str.6, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$3, -12(%rbp)
	jge	.LBB1_5
.LBB1_4:                                # %if.then
	movl	$1, run.values+8
	jmp	.LBB1_12
.LBB1_5:                                # %if.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %lor.lhs.false.10
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_10
.LBB1_7:                                # %if.then.14
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-92(%rbp), %esi         # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	blur
	cmpl	$1, -52(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.20
	callq	gimp_displays_flush
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB1_9:                                # %if.end.22
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_11:                               # %if.end.23
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_12:                               # %return
	addq	$96, %rsp
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
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	blur,@function
blur:                                   # @blur
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_17
.LBB3_2:                                # %if.end
	movl	-244(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-248(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -148(%rbp)
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -152(%rbp)
	movq	-48(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -156(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %edi
	movl	%edi, %esi
	movl	%eax, -264(%rbp)
	movl	-252(%rbp), %eax
	subl	-244(%rbp), %eax
	addl	$2, %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -184(%rbp)
	movl	-252(%rbp), %edx
	subl	-244(%rbp), %edx
	addl	$2, %edx
	imull	-156(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -200(%rbp)
	movl	-252(%rbp), %edx
	subl	-244(%rbp), %edx
	addl	$2, %edx
	imull	-156(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -216(%rbp)
	movl	-252(%rbp), %edx
	subl	-244(%rbp), %edx
	imull	-156(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	leaq	-96(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-96(%rbp), %rdi
	movq	-184(%rbp), %rax
	movslq	-156(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	movslq	-156(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rax
	movslq	-156(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -224(%rbp)
	movq	-192(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %ecx
	subl	$1, %ecx
	movl	-252(%rbp), %r8d
	subl	-244(%rbp), %r8d
	callq	blur_prepare_row
	leaq	-96(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %ecx
	movl	-252(%rbp), %r8d
	subl	-244(%rbp), %r8d
	callq	blur_prepare_row
	movl	-248(%rbp), %ecx
	movl	%ecx, -236(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	movl	-236(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jge	.LBB3_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-96(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	-252(%rbp), %ecx
	subl	-244(%rbp), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	blur_prepare_row
	movq	-168(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -240(%rbp)
.LBB3_5:                                # %for.cond.40
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-240(%rbp), %eax
	movl	-252(%rbp), %ecx
	subl	-244(%rbp), %ecx
	imull	-156(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_12
# BB#6:                                 # %for.body.45
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %eax
	cmpl	-156(%rbp), %eax
	je	.LBB3_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_5 Depth=2
	cmpl	$0, -264(%rbp)
	jne	.LBB3_9
.LBB3_8:                                # %if.then.49
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	$9, %eax
	movl	-240(%rbp), %ecx
	subl	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movslq	-240(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-240(%rbp), %edi
	addl	-156(%rbp), %edi
	movslq	%edi, %rdx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-240(%rbp), %edi
	subl	-156(%rbp), %edi
	movslq	%edi, %rdx
	movq	-208(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movslq	-240(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-240(%rbp), %edi
	addl	-156(%rbp), %edi
	movslq	%edi, %rdx
	movq	-208(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-240(%rbp), %edi
	subl	-156(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movslq	-240(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	-240(%rbp), %edi
	addl	-156(%rbp), %edi
	movslq	%edi, %rdx
	movq	-224(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	addl	$4, %ecx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-280(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movq	-176(%rbp), %rsi
	movq	%rsi, %r9
	addq	$1, %r9
	movq	%r9, -176(%rbp)
	movb	%r8b, (%rsi)
	movl	$0, -260(%rbp)
	jmp	.LBB3_10
.LBB3_9:                                # %if.else
                                        #   in Loop: Header=BB3_5 Depth=2
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-240(%rbp), %rax
	movl	%eax, %ecx
	movl	-156(%rbp), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movslq	%esi, %rdi
	movq	-192(%rbp), %r8
	movzbl	(%r8,%rdi), %esi
	movl	-260(%rbp), %r9d
	movl	%ecx, %r10d
	subl	%r9d, %r10d
	movslq	%r10d, %r11
	movzbl	(%r8,%r11), %r10d
	imull	%r10d, %esi
	cvtsi2sdl	%esi, %xmm1
	movzbl	(%r8,%rax), %esi
	movl	%ecx, %ebx
	addl	%edx, %ebx
	movl	%ebx, %r14d
	subl	%r9d, %r14d
	movslq	%r14d, %r15
	movzbl	(%r8,%r15), %r14d
	imull	%r14d, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movslq	%ebx, %r12
	movzbl	(%r8,%r12), %esi
	movl	%edx, %r13d
                                        # kill: RCX<def> ECX<kill>
	leal	(%rcx,%r13,2), %edx
	subl	%r9d, %edx
	movslq	%edx, %rcx
	movzbl	(%r8,%rcx), %edx
	imull	%edx, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movq	-208(%rbp), %r8
	movzbl	(%r8,%rdi), %esi
	movzbl	(%r8,%r11), %r9d
	imull	%r9d, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movzbl	(%r8,%rax), %esi
	movzbl	(%r8,%r15), %ebx
	imull	%ebx, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movzbl	(%r8,%r12), %esi
	movzbl	(%r8,%rcx), %r8d
	imull	%r8d, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movq	-224(%rbp), %r13
	movzbl	(%r13,%rdi), %esi
	movzbl	(%r13,%r11), %edi
	imull	%edi, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movzbl	(%r13,%rax), %esi
	movzbl	(%r13,%r15), %r11d
	imull	%r11d, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	movzbl	(%r13,%r12), %esi
	movzbl	(%r13,%rcx), %r15d
	imull	%r15d, %esi
	cvtsi2sdl	%esi, %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	%r10d, %xmm2
	cvtsi2sdl	%r14d, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%r9d, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%ebx, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%r8d, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%edi, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%r11d, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	%r15d, %xmm3
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %al
	movq	-176(%rbp), %rcx
	movq	%rcx, %r12
	addq	$1, %r12
	movq	%r12, -176(%rbp)
	movb	%al, (%rcx)
.LBB3_10:                               # %if.end.253
                                        #   in Loop: Header=BB3_5 Depth=2
	jmp	.LBB3_11
.LBB3_11:                               # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB3_5
.LBB3_12:                               # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-144(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-236(%rbp), %ecx
	movl	-252(%rbp), %eax
	subl	-244(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$32, %eax
	movq	-192(%rbp), %rsi
	movq	%rsi, -232(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -192(%rbp)
	movq	-224(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-232(%rbp), %rsi
	movq	%rsi, -224(%rbp)
	movl	-236(%rbp), %ecx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-284(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_14
# BB#13:                                # %if.then.258
                                        #   in Loop: Header=BB3_3 Depth=1
	cvtsi2sdl	-236(%rbp), %xmm0
	movl	-256(%rbp), %eax
	subl	-248(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB3_14:                               # %if.end.264
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_15
.LBB3_15:                               # %for.inc.265
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB3_3
.LBB3_16:                               # %for.end.267
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-48(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-244(%rbp), %esi
	movl	-248(%rbp), %edx
	movl	-252(%rbp), %r8d
	subl	-244(%rbp), %r8d
	movl	-256(%rbp), %r9d
	subl	-248(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-184(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	g_free
	movq	-216(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
.LBB3_17:                               # %return
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	blur, .Lfunc_end3-blur
	.cfi_endproc

	.align	16, 0x90
	.type	blur_prepare_row,@function
blur_prepare_row:                       # @blur_prepare_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movl	36(%rsi), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB4_6
.LBB4_2:                                # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB4_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false.5
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB4_6:                                # %cond.end.6
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -32(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB4_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-8(%rbp), %rcx
	subl	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end
	movl	$0, -32(%rbp)
.LBB4_11:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB4_14
# BB#12:                                # %for.body.16
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#13:                                # %for.inc.27
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_11
.LBB4_14:                               # %for.end.29
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	blur_prepare_row, .Lfunc_end4-blur_prepare_row
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
	.asciz	"plug-in-blur"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Simple blur, fast but not very strong"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This plug-in blurs the specified drawable, using a 3x3 blur. Indexed images are not supported."
	.size	.L.str.8, 95

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Miles O'Neal  <meo@rru.com>"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Miles O'Neal, Spencer Kimball, Peter Mattis, Torsten Martinsen, Brian Degenhardt, Federico Mena Quintero, Stephen Norris, Daniel Cotting"
	.size	.L.str.10, 137

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1995-1998"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Blur"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<Image>/Filters/Blur"
	.size	.L.str.14, 21

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"UTF-8"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Blurring"
	.size	.L.str.17, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
