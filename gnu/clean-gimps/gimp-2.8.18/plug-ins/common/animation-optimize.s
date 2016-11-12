	.text
	.file	"animation-optimize.bc"
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movabsq	$query.args, %rbx
	movabsq	$query.return_args, %r14
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-40(%rbp), %r15         # 8-byte Reload
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	movl	%r10d, -48(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movabsq	$query.args, %rbx
	movabsq	$query.return_args, %r14
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movabsq	$query.args, %rbx
	movabsq	$query.return_args, %r14
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%r11d, -92(%rbp)        # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.24, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.24, %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.24, %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_plugin_menu_register
	movl	%eax, -108(%rbp)        # 4-byte Spill
	addq	$152, %rsp
	popq	%rbx
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
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-32(%rbp), %rcx
	movl	$2, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.25, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.25, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$1, -44(%rbp)
	jne	.LBB1_5
# BB#3:                                 # %land.lhs.true
	cmpl	$3, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then
	movl	$1, -48(%rbp)
.LBB1_5:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.7
	movl	$0, opmode
	jmp	.LBB1_20
.LBB1_7:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.10
	movl	$0, opmode
	movl	$1, -52(%rbp)
	jmp	.LBB1_19
.LBB1_9:                                # %if.else.11
	movq	-8(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.14
	movl	$1, opmode
	jmp	.LBB1_18
.LBB1_11:                               # %if.else.15
	movq	-8(%rbp), %rdi
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.18
	movl	$3, opmode
	jmp	.LBB1_17
.LBB1_13:                               # %if.else.19
	movq	-8(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %if.then.22
	movl	$2, opmode
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.23
	movabsq	$.L.str.29, %rdi
	movb	$0, %al
	callq	g_error
.LBB1_16:                               # %if.end.24
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.25
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.26
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.27
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.28
	cmpl	$3, -48(%rbp)
	jne	.LBB1_24
# BB#21:                                # %if.then.30
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, image_id
	movl	-44(%rbp), %edi
	movl	-52(%rbp), %esi
	callq	do_optimizations
	movl	%eax, new_image_id
	cmpl	$1, -44(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.35
	callq	gimp_displays_flush
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.38
	movl	$21, run.values
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movl	$13, run.values+40
	movl	new_image_id, %eax
	movl	%eax, run.values+48
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
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
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
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
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
	je	.LBB3_3
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
.LBB3_3:                                # %entry
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
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB3_1
.Lfunc_end3:
	.size	g_error, .Lfunc_end3-g_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	do_optimizations,@function
do_optimizations:                       # @do_optimizations
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$528, %rsp              # imm = 0x210
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -136(%rbp)
	movl	$-1, -140(%rbp)
	movl	opmode(%rip), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$3, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	ja	.LBB4_5
# BB#228:                               # %entry
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_2:                                # %sw.bb.2
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_3:                                # %sw.bb.5
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_4:                                # %sw.bb.8
	jmp	.LBB4_5
.LBB4_5:                                # %sw.default
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB4_6:                                # %sw.epilog
	movl	image_id, %edi
	callq	gimp_image_width
	movl	%eax, width
	movl	image_id, %edi
	callq	gimp_image_height
	movabsq	$total_frames, %rsi
	movl	%eax, height
	movl	image_id, %edi
	callq	gimp_image_get_layers
	movq	%rax, layers
	movl	image_id, %edi
	callq	gimp_image_base_type
	movl	$2, %edi
	movl	$4, %ecx
	movl	%eax, imagetype
	cmpl	$0, imagetype
	cmovel	%ecx, %edi
	movb	%dil, %dl
	movb	%dl, pixelstep
	cmpl	$0, imagetype
	jne	.LBB4_8
# BB#7:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false
	movl	$3, %eax
	movl	$5, %ecx
	cmpl	$2, imagetype
	cmovel	%ecx, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB4_9:                                # %cond.end
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, drawabletype_alpha
	movl	width, %eax
	imull	height, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -104(%rbp)
	movl	-84(%rbp), %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, -112(%rbp)
	movl	-84(%rbp), %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, -120(%rbp)
	cmpl	$3, opmode
	je	.LBB4_11
# BB#10:                                # %lor.lhs.false
	cmpl	$2, opmode
	jne	.LBB4_12
.LBB4_11:                               # %if.then
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -128(%rbp)
.LBB4_12:                               # %if.end
	movq	-104(%rbp), %rdi
	movl	width, %eax
	imull	height, %eax
	movl	%eax, %esi
	movzbl	pixelstep, %edx
	callq	total_alpha
	movq	-112(%rbp), %rdi
	movl	width, %eax
	imull	height, %eax
	movl	%eax, %esi
	movzbl	pixelstep, %edx
	callq	total_alpha
	movl	width, %edi
	movl	height, %esi
	movl	imagetype, %edx
	callq	gimp_image_new
	movl	%eax, new_image_id
	movl	new_image_id, %edi
	callq	gimp_image_undo_disable
	cmpl	$2, imagetype
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jne	.LBB4_14
# BB#13:                                # %if.then.41
	movabsq	$ncolours, %rsi
	movl	image_id, %edi
	callq	gimp_image_get_colormap
	movq	%rax, palette
	movl	new_image_id, %edi
	movq	palette, %rsi
	movl	ncolours, %edx
	callq	gimp_image_set_colormap
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB4_14:                               # %if.end.44
	cmpl	$3, opmode
	je	.LBB4_16
# BB#15:                                # %lor.lhs.false.47
	cmpl	$2, opmode
	jne	.LBB4_74
.LBB4_16:                               # %if.then.50
	movl	$8, %eax
	movl	%eax, %esi
	movslq	total_frames, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -216(%rbp)
	movslq	total_frames, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -224(%rbp)
	movslq	total_frames, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -232(%rbp)
	movslq	total_frames, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -240(%rbp)
	movslq	total_frames, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -248(%rbp)
	movl	width, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movq	%rax, -256(%rbp)
	movl	$0, -80(%rbp)
.LBB4_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	total_frames, %eax
	jge	.LBB4_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movslq	-80(%rbp), %rdi
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx,%rdi,8)
	movl	width, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movslq	-80(%rbp), %rdx
	movq	-224(%rbp), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movl	width, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movslq	-80(%rbp), %rdx
	movq	-232(%rbp), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movl	width, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-80(%rbp), %rdx
	movq	-240(%rbp), %rdi
	movq	%rax, (%rdi,%rdx,8)
	movl	width, %ecx
	movl	%ecx, %edi
	callq	g_malloc0_n
	movslq	-80(%rbp), %rdx
	movq	-248(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_17
.LBB4_20:                               # %for.end
	movl	$0, -76(%rbp)
.LBB4_21:                               # %for.cond.85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_27 Depth 2
                                        #       Child Loop BB4_29 Depth 3
                                        #         Child Loop BB4_32 Depth 4
                                        #     Child Loop BB4_54 Depth 2
                                        #       Child Loop BB4_56 Depth 3
	movl	-76(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB4_69
# BB#22:                                # %for.body.88
                                        #   in Loop: Header=BB4_21 Depth=1
	xorl	%esi, %esi
	movq	-256(%rbp), %rax
	movl	width, %ecx
	movl	%ecx, %edx
	shlq	$2, %rdx
	movq	%rax, %rdi
	callq	memset
	movl	$0, -80(%rbp)
.LBB4_23:                               # %for.cond.91
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	total_frames, %eax
	jge	.LBB4_26
# BB#24:                                # %for.body.94
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	total_frames, %eax
	movl	-80(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movq	layers, %rsi
	movl	(%rsi,%rdx,4), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	movl	-80(%rbp), %edi
	callq	get_frame_disposal
	xorl	%ecx, %ecx
	movl	%eax, -92(%rbp)
	movl	-80(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	-76(%rbp), %edx
	movslq	-80(%rbp), %r8
	movq	-216(%rbp), %r9
	movq	(%r9,%r8,8), %r8
	movl	width, %eax
	movq	drawable, %r9
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movl	%eax, %r8d
	movl	$0, (%rsp)
	callq	compose_row
	movq	drawable, %rdi
	callq	gimp_drawable_detach
# BB#25:                                # %for.inc.101
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_23
.LBB4_26:                               # %for.end.103
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	$0, -80(%rbp)
.LBB4_27:                               # %for.cond.104
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_29 Depth 3
                                        #         Child Loop BB4_32 Depth 4
	movl	-80(%rbp), %eax
	cmpl	total_frames, %eax
	jge	.LBB4_53
# BB#28:                                # %for.body.107
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	$0, -200(%rbp)
.LBB4_29:                               # %for.cond.108
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_32 Depth 4
	movl	-200(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB4_51
# BB#30:                                # %for.body.111
                                        #   in Loop: Header=BB4_29 Depth=3
	movl	-200(%rbp), %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movslq	-80(%rbp), %rsi
	movq	-216(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$128, %eax
	jl	.LBB4_48
# BB#31:                                # %if.then.124
                                        #   in Loop: Header=BB4_29 Depth=3
	movl	$0, -204(%rbp)
.LBB4_32:                               # %for.cond.125
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        #       Parent Loop BB4_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-204(%rbp), %eax
	movslq	-200(%rbp), %rcx
	movq	-256(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jae	.LBB4_45
# BB#33:                                # %for.body.130
                                        #   in Loop: Header=BB4_32 Depth=4
	movzbl	pixelstep(%rip), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	je	.LBB4_39
	jmp	.LBB4_229
.LBB4_229:                              # %for.body.130
                                        #   in Loop: Header=BB4_32 Depth=4
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jne	.LBB4_42
	jmp	.LBB4_34
.LBB4_34:                               # %sw.bb.132
                                        #   in Loop: Header=BB4_32 Depth=4
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movslq	-80(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-200(%rbp), %rcx
	movslq	-204(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jne	.LBB4_38
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_32 Depth=4
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-80(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-200(%rbp), %rcx
	movslq	-204(%rbp), %rdx
	movq	-232(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jne	.LBB4_38
# BB#36:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB4_32 Depth=4
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movslq	-80(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-200(%rbp), %rcx
	movslq	-204(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jne	.LBB4_38
# BB#37:                                # %if.then.176
                                        #   in Loop: Header=BB4_29 Depth=3
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	addl	$1, %esi
	movl	%esi, (%rcx,%rax,4)
	jmp	.LBB4_49
.LBB4_38:                               # %if.end.182
                                        #   in Loop: Header=BB4_32 Depth=4
	jmp	.LBB4_43
.LBB4_39:                               # %sw.bb.183
                                        #   in Loop: Header=BB4_32 Depth=4
	movl	-200(%rbp), %eax
	shll	$1, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movslq	-80(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-200(%rbp), %rcx
	movslq	-204(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %edi
	cmpl	%edi, %eax
	jne	.LBB4_41
# BB#40:                                # %if.then.198
                                        #   in Loop: Header=BB4_29 Depth=3
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	addl	$1, %esi
	movl	%esi, (%rcx,%rax,4)
	jmp	.LBB4_49
.LBB4_41:                               # %if.end.204
                                        #   in Loop: Header=BB4_32 Depth=4
	jmp	.LBB4_43
.LBB4_42:                               # %sw.default.205
                                        #   in Loop: Header=BB4_32 Depth=4
	movabsq	$.L.str.34, %rdi
	movb	$0, %al
	callq	g_error
.LBB4_43:                               # %sw.epilog.206
                                        #   in Loop: Header=BB4_32 Depth=4
	jmp	.LBB4_44
.LBB4_44:                               # %for.inc.207
                                        #   in Loop: Header=BB4_32 Depth=4
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB4_32
.LBB4_45:                               # %for.end.209
                                        #   in Loop: Header=BB4_29 Depth=3
	movslq	-200(%rbp), %rax
	movslq	-200(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, %ecx
	movq	-248(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	$1, (%rcx,%rax,4)
	movl	-200(%rbp), %esi
	movzbl	pixelstep, %edi
	imull	%edi, %esi
	movslq	%esi, %rax
	movslq	-80(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movb	(%rcx,%rax), %r8b
	movslq	-200(%rbp), %rax
	movslq	-200(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, %ecx
	movq	-224(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movb	%r8b, (%rcx,%rax)
	movzbl	pixelstep, %esi
	cmpl	$4, %esi
	jne	.LBB4_47
# BB#46:                                # %if.then.231
                                        #   in Loop: Header=BB4_29 Depth=3
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movslq	-80(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movslq	-200(%rbp), %rcx
	movslq	-200(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, %edx
	movq	-232(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	%dil, (%rdx,%rcx)
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movslq	-80(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	(%rdx,%rcx), %dil
	movslq	-200(%rbp), %rcx
	movslq	-200(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, %edx
	movq	-240(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movb	%dil, (%rdx,%rcx)
.LBB4_47:                               # %if.end.256
                                        #   in Loop: Header=BB4_29 Depth=3
	movslq	-200(%rbp), %rax
	movq	-256(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
.LBB4_48:                               # %if.end.260
                                        #   in Loop: Header=BB4_29 Depth=3
	jmp	.LBB4_49
.LBB4_49:                               # %same
                                        #   in Loop: Header=BB4_29 Depth=3
	jmp	.LBB4_50
.LBB4_50:                               # %for.inc.261
                                        #   in Loop: Header=BB4_29 Depth=3
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB4_29
.LBB4_51:                               # %for.end.263
                                        #   in Loop: Header=BB4_27 Depth=2
	jmp	.LBB4_52
.LBB4_52:                               # %for.inc.264
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_27
.LBB4_53:                               # %for.end.266
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	$0, -200(%rbp)
.LBB4_54:                               # %for.cond.267
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_56 Depth 3
	movl	-200(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB4_67
# BB#55:                                # %for.body.270
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	$0, -260(%rbp)
	movb	$-1, -261(%rbp)
	movb	$0, -262(%rbp)
	movb	$-1, -263(%rbp)
	movl	$0, -204(%rbp)
.LBB4_56:                               # %for.cond.271
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	movslq	-200(%rbp), %rcx
	movq	-256(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jae	.LBB4_61
# BB#57:                                # %for.body.276
                                        #   in Loop: Header=BB4_56 Depth=3
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	cmpl	-260(%rbp), %esi
	jbe	.LBB4_59
# BB#58:                                # %if.then.283
                                        #   in Loop: Header=BB4_56 Depth=3
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	movl	%esi, -260(%rbp)
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movb	(%rcx,%rax), %dil
	movb	%dil, -261(%rbp)
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movb	(%rcx,%rax), %dil
	movb	%dil, -262(%rbp)
	movslq	-200(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movb	(%rcx,%rax), %dil
	movb	%dil, -263(%rbp)
.LBB4_59:                               # %if.end.300
                                        #   in Loop: Header=BB4_56 Depth=3
	jmp	.LBB4_60
.LBB4_60:                               # %for.inc.301
                                        #   in Loop: Header=BB4_56 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB4_56
.LBB4_61:                               # %for.end.303
                                        #   in Loop: Header=BB4_54 Depth=2
	movb	-261(%rbp), %al
	movl	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	imull	-76(%rbp), %ecx
	movl	-200(%rbp), %edx
	movzbl	pixelstep, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	addl	$0, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-128(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movzbl	pixelstep, %ecx
	cmpl	$4, %ecx
	jne	.LBB4_63
# BB#62:                                # %if.then.316
                                        #   in Loop: Header=BB4_54 Depth=2
	movb	-262(%rbp), %al
	movl	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	imull	-76(%rbp), %ecx
	movl	-200(%rbp), %edx
	movzbl	pixelstep, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-128(%rbp), %r8
	movb	%al, (%r8,%rdi)
	movb	-263(%rbp), %al
	movl	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	imull	-76(%rbp), %ecx
	movl	-200(%rbp), %edx
	movzbl	pixelstep, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-128(%rbp), %r8
	movb	%al, (%r8,%rdi)
.LBB4_63:                               # %if.end.335
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	$255, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -260(%rbp)
	cmovel	%ecx, %eax
	movb	%al, %dl
	movl	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	imull	-76(%rbp), %eax
	movl	-200(%rbp), %ecx
	movzbl	pixelstep, %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-128(%rbp), %r8
	movb	%dl, (%r8,%rdi)
	cmpl	$0, -260(%rbp)
	jne	.LBB4_65
# BB#64:                                # %if.then.353
                                        #   in Loop: Header=BB4_54 Depth=2
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	g_warning
.LBB4_65:                               # %if.end.354
                                        #   in Loop: Header=BB4_54 Depth=2
	jmp	.LBB4_66
.LBB4_66:                               # %for.inc.355
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB4_54
.LBB4_67:                               # %for.end.357
                                        #   in Loop: Header=BB4_21 Depth=1
	jmp	.LBB4_68
.LBB4_68:                               # %for.inc.358
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_21
.LBB4_69:                               # %for.end.360
	movl	$0, -80(%rbp)
.LBB4_70:                               # %for.cond.361
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	total_frames, %eax
	jge	.LBB4_73
# BB#71:                                # %for.body.364
                                        #   in Loop: Header=BB4_70 Depth=1
	movslq	-80(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
	movslq	-80(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
	movslq	-80(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
	movslq	-80(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
	movslq	-80(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#72:                                # %for.inc.375
                                        #   in Loop: Header=BB4_70 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_70
.LBB4_73:                               # %for.end.377
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB4_74:                               # %if.end.378
	cmpl	$3, opmode
	jne	.LBB4_76
# BB#75:                                # %if.then.381
	movabsq	$.L.str.36, %rsi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	new_image_id, %edi
	movl	width, %edx
	movl	height, %ecx
	movl	drawabletype_alpha, %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -88(%rbp)
	movl	new_image_id, %edi
	movl	-88(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-88(%rbp), %edi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, drawable
	movq	drawable, %rsi
	movl	width, %r8d
	movl	height, %r9d
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movl	width, %r8d
	movl	height, %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	drawable, %rdi
	callq	gimp_drawable_flush
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	jmp	.LBB4_225
.LBB4_76:                               # %if.else
	movl	$0, -80(%rbp)
.LBB4_77:                               # %for.cond.385
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_81 Depth 2
                                        #     Child Loop BB4_86 Depth 2
                                        #       Child Loop BB4_88 Depth 3
                                        #         Child Loop BB4_90 Depth 4
                                        #     Child Loop BB4_104 Depth 2
                                        #       Child Loop BB4_106 Depth 3
                                        #         Child Loop BB4_117 Depth 4
                                        #     Child Loop BB4_153 Depth 2
                                        #       Child Loop BB4_155 Depth 3
                                        #         Child Loop BB4_160 Depth 4
                                        #         Child Loop BB4_166 Depth 4
                                        #       Child Loop BB4_174 Depth 3
                                        #         Child Loop BB4_179 Depth 4
                                        #         Child Loop BB4_185 Depth 4
                                        #     Child Loop BB4_199 Depth 2
                                        #       Child Loop BB4_201 Depth 3
                                        #         Child Loop BB4_203 Depth 4
	movl	-80(%rbp), %eax
	cmpl	total_frames, %eax
	jge	.LBB4_224
# BB#78:                                # %for.body.388
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	total_frames, %eax
	movl	-80(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movq	layers, %rsi
	movl	(%rsi,%rdx,4), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	cmpl	$0, %eax
	jne	.LBB4_80
# BB#79:                                # %if.then.397
	callq	gimp_quit
.LBB4_80:                               # %if.end.398
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-80(%rbp), %edi
	callq	get_frame_duration
	movl	%eax, -132(%rbp)
	movl	-80(%rbp), %edi
	callq	get_frame_disposal
	movl	%eax, -92(%rbp)
	movl	$0, -76(%rbp)
.LBB4_81:                               # %for.cond.401
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB4_84
# BB#82:                                # %for.body.404
                                        #   in Loop: Header=BB4_81 Depth=2
	xorl	%eax, %eax
	movl	-80(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	-76(%rbp), %edx
	movzbl	pixelstep, %ecx
	imull	width, %ecx
	imull	-76(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %r8d
	addq	-104(%rbp), %r8
	movl	width, %ecx
	movq	drawable, %r9
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movl	-368(%rbp), %r8d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	compose_row
# BB#83:                                # %for.inc.410
                                        #   in Loop: Header=BB4_81 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_81
.LBB4_84:                               # %for.end.412
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	cmpl	$2, opmode
	jne	.LBB4_101
# BB#85:                                # %if.then.415
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	$0, -272(%rbp)
.LBB4_86:                               # %for.cond.416
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_88 Depth 3
                                        #         Child Loop BB4_90 Depth 4
	movl	-272(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB4_100
# BB#87:                                # %for.body.419
                                        #   in Loop: Header=BB4_86 Depth=2
	movl	$0, -268(%rbp)
.LBB4_88:                               # %for.cond.420
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_90 Depth 4
	movl	-268(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB4_98
# BB#89:                                # %for.body.423
                                        #   in Loop: Header=BB4_88 Depth=3
	movl	$0, -276(%rbp)
.LBB4_90:                               # %for.cond.424
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-276(%rbp), %eax
	movzbl	pixelstep, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_95
# BB#91:                                # %for.body.429
                                        #   in Loop: Header=BB4_90 Depth=4
	movl	-272(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-268(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-276(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-272(%rbp), %ecx
	imull	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	movl	-268(%rbp), %edx
	movzbl	pixelstep, %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	addl	-276(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	cmpl	%ecx, %eax
	je	.LBB4_93
# BB#92:                                # %if.then.452
                                        #   in Loop: Header=BB4_88 Depth=3
	jmp	.LBB4_96
.LBB4_93:                               # %if.end.453
                                        #   in Loop: Header=BB4_90 Depth=4
	jmp	.LBB4_94
.LBB4_94:                               # %for.inc.454
                                        #   in Loop: Header=BB4_90 Depth=4
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB4_90
.LBB4_95:                               # %for.end.456
                                        #   in Loop: Header=BB4_88 Depth=3
	movl	-272(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-268(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movb	$0, (%rdi,%rsi)
.LBB4_96:                               # %enough
                                        #   in Loop: Header=BB4_88 Depth=3
	jmp	.LBB4_97
.LBB4_97:                               # %for.inc.468
                                        #   in Loop: Header=BB4_88 Depth=3
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB4_88
.LBB4_98:                               # %for.end.470
                                        #   in Loop: Header=BB4_86 Depth=2
	jmp	.LBB4_99
.LBB4_99:                               # %for.inc.471
                                        #   in Loop: Header=BB4_86 Depth=2
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB4_86
.LBB4_100:                              # %for.end.473
                                        #   in Loop: Header=BB4_77 Depth=1
	jmp	.LBB4_101
.LBB4_101:                              # %if.end.474
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	$0, -164(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -168(%rbp)
	movl	width, %eax
	movl	%eax, -180(%rbp)
	movl	height, %eax
	movl	%eax, -172(%rbp)
	movl	$0, -192(%rbp)
	movl	$0, -184(%rbp)
	movl	width, %eax
	movl	%eax, -196(%rbp)
	movl	height, %eax
	movl	%eax, -188(%rbp)
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
	cmpl	$0, -80(%rbp)
	je	.LBB4_211
# BB#102:                               # %land.lhs.true.478
                                        #   in Loop: Header=BB4_77 Depth=1
	cmpl	$0, opmode
	jne	.LBB4_211
# BB#103:                               # %if.then.481
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	$1, -164(%rbp)
	movl	width, %eax
	movl	%eax, -176(%rbp)
	movl	height, %eax
	movl	%eax, -168(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -172(%rbp)
	movl	width, %eax
	movl	%eax, -192(%rbp)
	movl	height, %eax
	movl	%eax, -184(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -284(%rbp)
.LBB4_104:                              # %for.cond.485
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_106 Depth 3
                                        #         Child Loop BB4_117 Depth 4
	movl	-284(%rbp), %eax
	cmpl	height, %eax
	jae	.LBB4_148
# BB#105:                               # %for.body.488
                                        #   in Loop: Header=BB4_104 Depth=2
	movl	$0, -280(%rbp)
.LBB4_106:                              # %for.cond.489
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_104 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_117 Depth 4
	movl	-280(%rbp), %eax
	cmpl	width, %eax
	jae	.LBB4_146
# BB#107:                               # %for.body.492
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB4_110
# BB#108:                               # %land.lhs.true.505
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB4_110
# BB#109:                               # %if.then.520
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	$0, -292(%rbp)
	movl	$0, -296(%rbp)
	jmp	.LBB4_123
.LBB4_110:                              # %if.end.521
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_113
# BB#111:                               # %land.lhs.true.536
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB4_113
# BB#112:                               # %if.then.551
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	$1, -292(%rbp)
	movl	$0, -296(%rbp)
	movl	$0, -164(%rbp)
	jmp	.LBB4_123
.LBB4_113:                              # %if.end.552
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB4_116
# BB#114:                               # %land.lhs.true.567
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_116
# BB#115:                               # %if.then.582
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	$1, -292(%rbp)
	movl	$1, -296(%rbp)
	jmp	.LBB4_123
.LBB4_116:                              # %if.end.583
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	$0, -292(%rbp)
	movl	$1, -296(%rbp)
	movl	$0, -288(%rbp)
.LBB4_117:                              # %for.cond.584
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_104 Depth=2
                                        #       Parent Loop BB4_106 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-288(%rbp), %eax
	movzbl	pixelstep, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_122
# BB#118:                               # %for.body.589
                                        #   in Loop: Header=BB4_117 Depth=4
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-284(%rbp), %ecx
	imull	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	movl	-280(%rbp), %edx
	movzbl	pixelstep, %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	addl	-288(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	cmpl	%ecx, %eax
	je	.LBB4_120
# BB#119:                               # %if.then.612
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	$1, -292(%rbp)
	jmp	.LBB4_123
.LBB4_120:                              # %if.end.613
                                        #   in Loop: Header=BB4_117 Depth=4
	jmp	.LBB4_121
.LBB4_121:                              # %for.inc.614
                                        #   in Loop: Header=BB4_117 Depth=4
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_117
.LBB4_122:                              # %for.end.616
                                        #   in Loop: Header=BB4_106 Depth=3
	jmp	.LBB4_123
.LBB4_123:                              # %decided
                                        #   in Loop: Header=BB4_106 Depth=3
	cmpl	$0, -296(%rbp)
	je	.LBB4_133
# BB#124:                               # %if.then.618
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB4_126
# BB#125:                               # %if.then.621
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB4_126:                              # %if.end.622
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jle	.LBB4_128
# BB#127:                               # %if.then.625
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB4_128:                              # %if.end.626
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB4_130
# BB#129:                               # %if.then.629
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	movl	%eax, -184(%rbp)
.LBB4_130:                              # %if.end.630
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jle	.LBB4_132
# BB#131:                               # %if.then.633
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB4_132:                              # %if.end.634
                                        #   in Loop: Header=BB4_106 Depth=3
	jmp	.LBB4_133
.LBB4_133:                              # %if.end.635
                                        #   in Loop: Header=BB4_106 Depth=3
	cmpl	$0, -292(%rbp)
	je	.LBB4_143
# BB#134:                               # %if.then.637
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB4_136
# BB#135:                               # %if.then.640
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	movl	%eax, -176(%rbp)
.LBB4_136:                              # %if.end.641
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB4_138
# BB#137:                               # %if.then.644
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	movl	%eax, -180(%rbp)
.LBB4_138:                              # %if.end.645
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB4_140
# BB#139:                               # %if.then.648
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB4_140:                              # %if.end.649
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jle	.LBB4_142
# BB#141:                               # %if.then.652
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB4_142:                              # %if.end.653
                                        #   in Loop: Header=BB4_106 Depth=3
	jmp	.LBB4_144
.LBB4_143:                              # %if.else.654
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movb	$0, (%rdi,%rsi)
.LBB4_144:                              # %if.end.666
                                        #   in Loop: Header=BB4_106 Depth=3
	jmp	.LBB4_145
.LBB4_145:                              # %for.inc.667
                                        #   in Loop: Header=BB4_106 Depth=3
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB4_106
.LBB4_146:                              # %for.end.669
                                        #   in Loop: Header=BB4_104 Depth=2
	jmp	.LBB4_147
.LBB4_147:                              # %for.inc.670
                                        #   in Loop: Header=BB4_104 Depth=2
	movl	-284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	jmp	.LBB4_104
.LBB4_148:                              # %for.end.672
                                        #   in Loop: Header=BB4_77 Depth=1
	cmpl	$0, -164(%rbp)
	jne	.LBB4_150
# BB#149:                               # %if.then.674
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-192(%rbp), %eax
	movl	%eax, -176(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-188(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB4_150:                              # %if.end.675
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB4_195
# BB#151:                               # %land.lhs.true.679
                                        #   in Loop: Header=BB4_77 Depth=1
	cmpl	$0, -8(%rbp)
	jne	.LBB4_195
# BB#152:                               # %if.then.681
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-168(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB4_153:                              # %for.cond.682
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_155 Depth 3
                                        #         Child Loop BB4_160 Depth 4
                                        #         Child Loop BB4_166 Depth 4
                                        #       Child Loop BB4_174 Depth 3
                                        #         Child Loop BB4_179 Depth 4
                                        #         Child Loop BB4_185 Depth 4
	movl	-284(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB4_194
# BB#154:                               # %for.body.685
                                        #   in Loop: Header=BB4_153 Depth=2
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
.LBB4_155:                              # %for.cond.687
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_160 Depth 4
                                        #         Child Loop BB4_166 Depth 4
	movl	-280(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_173
# BB#156:                               # %for.body.690
                                        #   in Loop: Header=BB4_155 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB4_170
# BB#157:                               # %land.lhs.true.705
                                        #   in Loop: Header=BB4_155 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	subl	$1, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_170
# BB#158:                               # %land.lhs.true.721
                                        #   in Loop: Header=BB4_155 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_170
# BB#159:                               # %if.then.736
                                        #   in Loop: Header=BB4_155 Depth=3
	movl	$0, -288(%rbp)
.LBB4_160:                              # %for.cond.737
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        #       Parent Loop BB4_155 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-288(%rbp), %eax
	movzbl	pixelstep, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_165
# BB#161:                               # %for.body.742
                                        #   in Loop: Header=BB4_160 Depth=4
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	subl	$1, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-284(%rbp), %ecx
	imull	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	movl	-280(%rbp), %edx
	movzbl	pixelstep, %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	addl	-288(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	cmpl	%ecx, %eax
	je	.LBB4_163
# BB#162:                               # %if.then.766
                                        #   in Loop: Header=BB4_155 Depth=3
	jmp	.LBB4_171
.LBB4_163:                              # %if.end.767
                                        #   in Loop: Header=BB4_160 Depth=4
	jmp	.LBB4_164
.LBB4_164:                              # %for.inc.768
                                        #   in Loop: Header=BB4_160 Depth=4
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_160
.LBB4_165:                              # %for.end.770
                                        #   in Loop: Header=BB4_155 Depth=3
	movl	$0, -288(%rbp)
.LBB4_166:                              # %for.cond.771
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        #       Parent Loop BB4_155 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-288(%rbp), %eax
	movzbl	pixelstep, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_169
# BB#167:                               # %for.body.775
                                        #   in Loop: Header=BB4_166 Depth=4
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movb	(%rdi,%rsi), %r8b
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
# BB#168:                               # %for.inc.794
                                        #   in Loop: Header=BB4_166 Depth=4
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_166
.LBB4_169:                              # %for.end.796
                                        #   in Loop: Header=BB4_155 Depth=3
	jmp	.LBB4_170
.LBB4_170:                              # %if.end.797
                                        #   in Loop: Header=BB4_155 Depth=3
	jmp	.LBB4_171
.LBB4_171:                              # %skip_right
                                        #   in Loop: Header=BB4_155 Depth=3
	jmp	.LBB4_172
.LBB4_172:                              # %for.inc.798
                                        #   in Loop: Header=BB4_155 Depth=3
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB4_155
.LBB4_173:                              # %for.end.800
                                        #   in Loop: Header=BB4_153 Depth=2
	movl	-180(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -280(%rbp)
.LBB4_174:                              # %for.cond.802
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_179 Depth 4
                                        #         Child Loop BB4_185 Depth 4
	movl	-280(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jl	.LBB4_192
# BB#175:                               # %for.body.805
                                        #   in Loop: Header=BB4_174 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB4_189
# BB#176:                               # %land.lhs.true.820
                                        #   in Loop: Header=BB4_174 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	addl	$1, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_189
# BB#177:                               # %land.lhs.true.836
                                        #   in Loop: Header=BB4_174 Depth=3
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB4_189
# BB#178:                               # %if.then.851
                                        #   in Loop: Header=BB4_174 Depth=3
	movl	$0, -288(%rbp)
.LBB4_179:                              # %for.cond.852
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        #       Parent Loop BB4_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-288(%rbp), %eax
	movzbl	pixelstep, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_184
# BB#180:                               # %for.body.857
                                        #   in Loop: Header=BB4_179 Depth=4
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	addl	$1, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	movl	-284(%rbp), %ecx
	imull	width, %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	movl	-280(%rbp), %edx
	movzbl	pixelstep, %r8d
	imull	%r8d, %edx
	addl	%edx, %ecx
	addl	-288(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	cmpl	%ecx, %eax
	je	.LBB4_182
# BB#181:                               # %if.then.881
                                        #   in Loop: Header=BB4_174 Depth=3
	jmp	.LBB4_190
.LBB4_182:                              # %if.end.882
                                        #   in Loop: Header=BB4_179 Depth=4
	jmp	.LBB4_183
.LBB4_183:                              # %for.inc.883
                                        #   in Loop: Header=BB4_179 Depth=4
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_179
.LBB4_184:                              # %for.end.885
                                        #   in Loop: Header=BB4_174 Depth=3
	movl	$0, -288(%rbp)
.LBB4_185:                              # %for.cond.886
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_153 Depth=2
                                        #       Parent Loop BB4_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-288(%rbp), %eax
	movzbl	pixelstep, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_188
# BB#186:                               # %for.body.890
                                        #   in Loop: Header=BB4_185 Depth=4
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	movb	(%rdi,%rsi), %r8b
	movl	-284(%rbp), %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movl	-280(%rbp), %ecx
	movzbl	pixelstep, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
# BB#187:                               # %for.inc.909
                                        #   in Loop: Header=BB4_185 Depth=4
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_185
.LBB4_188:                              # %for.end.911
                                        #   in Loop: Header=BB4_174 Depth=3
	jmp	.LBB4_189
.LBB4_189:                              # %if.end.912
                                        #   in Loop: Header=BB4_174 Depth=3
	jmp	.LBB4_190
.LBB4_190:                              # %skip_left
                                        #   in Loop: Header=BB4_174 Depth=3
	jmp	.LBB4_191
.LBB4_191:                              # %for.inc.913
                                        #   in Loop: Header=BB4_174 Depth=3
	movl	-280(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB4_174
.LBB4_192:                              # %for.end.914
                                        #   in Loop: Header=BB4_153 Depth=2
	jmp	.LBB4_193
.LBB4_193:                              # %for.inc.915
                                        #   in Loop: Header=BB4_153 Depth=2
	movl	-284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	jmp	.LBB4_153
.LBB4_194:                              # %for.end.917
                                        #   in Loop: Header=BB4_77 Depth=1
	jmp	.LBB4_195
.LBB4_195:                              # %if.end.918
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB4_197
# BB#196:                               # %if.then.920
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_198
.LBB4_197:                              # %if.else.921
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB4_198:                              # %if.end.922
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-168(%rbp), %eax
	movl	%eax, -284(%rbp)
.LBB4_199:                              # %for.cond.923
                                        #   Parent Loop BB4_77 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_201 Depth 3
                                        #         Child Loop BB4_203 Depth 4
	movl	-284(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB4_210
# BB#200:                               # %for.body.926
                                        #   in Loop: Header=BB4_199 Depth=2
	movl	-176(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB4_201:                              # %for.cond.927
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_199 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_203 Depth 4
	movl	-280(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_208
# BB#202:                               # %for.body.930
                                        #   in Loop: Header=BB4_201 Depth=3
	movl	$0, -288(%rbp)
.LBB4_203:                              # %for.cond.931
                                        #   Parent Loop BB4_77 Depth=1
                                        #     Parent Loop BB4_199 Depth=2
                                        #       Parent Loop BB4_201 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-288(%rbp), %eax
	movzbl	pixelstep, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_206
# BB#204:                               # %for.body.935
                                        #   in Loop: Header=BB4_203 Depth=4
	movl	-284(%rbp), %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	imull	width, %eax
	movzbl	pixelstep, %ecx
	imull	-280(%rbp), %ecx
	addl	%ecx, %eax
	addl	-288(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%dil, (%rdx)
# BB#205:                               # %for.inc.945
                                        #   in Loop: Header=BB4_203 Depth=4
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_203
.LBB4_206:                              # %for.end.947
                                        #   in Loop: Header=BB4_201 Depth=3
	jmp	.LBB4_207
.LBB4_207:                              # %for.inc.948
                                        #   in Loop: Header=BB4_201 Depth=3
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB4_201
.LBB4_208:                              # %for.end.950
                                        #   in Loop: Header=BB4_199 Depth=2
	jmp	.LBB4_209
.LBB4_209:                              # %for.inc.951
                                        #   in Loop: Header=BB4_199 Depth=2
	movl	-284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	jmp	.LBB4_199
.LBB4_210:                              # %for.end.953
                                        #   in Loop: Header=BB4_77 Depth=1
	jmp	.LBB4_212
.LBB4_211:                              # %if.else.954
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
.LBB4_212:                              # %if.end.956
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
	movl	total_frames, %eax
	movl	-80(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movq	layers, %rsi
	movl	(%rsi,%rdx,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	strlen
	addq	$40, %rax
	movl	%eax, %ecx
	movl	%ecx, -144(%rbp)
	movslq	-144(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	remove_disposal_tag
	movq	-152(%rbp), %rdi
	callq	g_free
	movslq	-144(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	remove_ms_tag
	movq	-160(%rbp), %rdi
	movslq	-144(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movl	-132(%rbp), %r8d
	cmpl	$0, -80(%rbp)
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%r8d, -404(%rbp)        # 4-byte Spill
	jne	.LBB4_214
# BB#213:                               # %cond.true.973
                                        #   in Loop: Header=BB4_77 Depth=1
	movabsq	$.L.str.38, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB4_215
.LBB4_214:                              # %cond.false.974
                                        #   in Loop: Header=BB4_77 Depth=1
	movabsq	$.L.str.40, %rax
	movabsq	$.L.str.39, %rcx
	cmpl	$0, -164(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB4_215:                              # %cond.end.977
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.37, %rdx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movl	-404(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_snprintf
	movq	-152(%rbp), %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-180(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB4_217
# BB#216:                               # %lor.lhs.false.982
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-172(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jg	.LBB4_221
.LBB4_217:                              # %if.then.985
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-132(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_free
	movl	-140(%rbp), %edi
	callq	gimp_item_get_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	strlen
	addq	$40, %rax
	movl	%eax, %ecx
	movl	%ecx, -144(%rbp)
	movslq	-144(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	remove_disposal_tag
	movq	-152(%rbp), %rdi
	callq	g_free
	movslq	-144(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	remove_ms_tag
	movq	-160(%rbp), %rdi
	movslq	-144(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movl	-136(%rbp), %r8d
	cmpl	$0, -80(%rbp)
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movl	%r8d, -452(%rbp)        # 4-byte Spill
	jne	.LBB4_219
# BB#218:                               # %cond.true.998
                                        #   in Loop: Header=BB4_77 Depth=1
	movabsq	$.L.str.38, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB4_220
.LBB4_219:                              # %cond.false.999
                                        #   in Loop: Header=BB4_77 Depth=1
	movabsq	$.L.str.40, %rax
	movabsq	$.L.str.39, %rcx
	cmpl	$0, -164(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB4_220:                              # %cond.end.1002
                                        #   in Loop: Header=BB4_77 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.37, %rdx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movl	-452(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_snprintf
	movl	-140(%rbp), %edi
	movq	-160(%rbp), %rsi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gimp_item_set_name
	movq	-160(%rbp), %rdi
	movl	%eax, -472(%rbp)        # 4-byte Spill
	callq	g_free
	jmp	.LBB4_222
.LBB4_221:                              # %if.else.1006
                                        #   in Loop: Header=BB4_77 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	new_image_id, %edi
	movq	-160(%rbp), %rsi
	movl	-180(%rbp), %eax
	subl	-176(%rbp), %eax
	movl	-172(%rbp), %ecx
	subl	-168(%rbp), %ecx
	movl	drawabletype_alpha, %r8d
	movl	%eax, %edx
	callq	gimp_layer_new
	movl	%eax, -88(%rbp)
	movl	%eax, -140(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_free
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	new_image_id, %edi
	movl	-88(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-88(%rbp), %edi
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, drawable
	movq	drawable, %rsi
	movl	-180(%rbp), %r8d
	subl	-176(%rbp), %r8d
	movl	-172(%rbp), %r9d
	subl	-168(%rbp), %r9d
	movl	%edx, -480(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movl	-180(%rbp), %edx
	subl	-176(%rbp), %edx
	movl	-172(%rbp), %r8d
	subl	-168(%rbp), %r8d
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-484(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -488(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-488(%rbp), %r9d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_rect
	movq	drawable, %rdi
	callq	gimp_drawable_flush
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	movl	-88(%rbp), %edi
	movl	-176(%rbp), %esi
	movl	-168(%rbp), %edx
	callq	gimp_layer_translate
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB4_222:                              # %if.end.1017
                                        #   in Loop: Header=BB4_77 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	total_frames, %xmm0
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -496(%rbp)        # 4-byte Spill
# BB#223:                               # %for.inc.1022
                                        #   in Loop: Header=BB4_77 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_77
.LBB4_224:                              # %for.end.1024
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB4_225:                              # %if.end.1026
	movl	new_image_id, %edi
	callq	gimp_image_undo_enable
	cmpl	$1, -4(%rbp)
	movl	%eax, -504(%rbp)        # 4-byte Spill
	je	.LBB4_227
# BB#226:                               # %if.then.1030
	movl	new_image_id, %edi
	callq	gimp_display_new
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB4_227:                              # %if.end.1032
	movq	do_optimizations.rawframe, %rdi
	callq	g_free
	movq	$0, do_optimizations.rawframe
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	$0, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	$0, -104(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	$0, -120(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	$0, -128(%rbp)
	movl	new_image_id, %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end4:
	.size	do_optimizations, .Lfunc_end4-do_optimizations
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_4
	.quad	.LBB4_1
	.quad	.LBB4_2
	.quad	.LBB4_3

	.text
	.align	16, 0x90
	.type	total_alpha,@function
total_alpha:                            # @total_alpha
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
	subq	$16, %rsp
	movb	%dl, %al
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movzbl	-13(%rbp), %ecx
	imull	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %r8d
	movl	%edx, %esi
	movq	%r8, %rdx
	callq	memset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	total_alpha, .Lfunc_end5-total_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	get_frame_disposal,@function
get_frame_disposal:                     # @get_frame_disposal
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	total_frames, %edi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	movq	layers, %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	parse_disposal_tag
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_frame_disposal, .Lfunc_end6-get_frame_disposal
	.cfi_endproc

	.align	16, 0x90
	.type	compose_row,@function
compose_row:                            # @compose_row
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
	subq	$160, %rsp
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB7_4
# BB#1:                                 # %if.then
	cmpq	$0, compose_row.line_buf
	je	.LBB7_3
# BB#2:                                 # %if.then.2
	movq	compose_row.line_buf, %rdi
	callq	g_free
	movq	$0, compose_row.line_buf
.LBB7_3:                                # %if.end
	jmp	.LBB7_25
.LBB7_4:                                # %if.end.3
	cmpl	$2, -8(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movzbl	pixelstep, %edx
	callq	total_alpha
.LBB7_6:                                # %if.end.5
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	%eax, -124(%rbp)
	movl	-12(%rbp), %eax
	movl	-124(%rbp), %edi
	addl	-112(%rbp), %edi
	cmpl	%edi, %eax
	jge	.LBB7_8
# BB#7:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB7_9
.LBB7_8:                                # %if.then.10
	jmp	.LBB7_25
.LBB7_9:                                # %if.end.11
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -116(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_width
	movl	%eax, -120(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -132(%rbp)
	cmpq	$0, compose_row.line_buf
	je	.LBB7_11
# BB#10:                                # %if.then.19
	movq	compose_row.line_buf, %rdi
	callq	g_free
	movq	$0, compose_row.line_buf
.LBB7_11:                               # %if.end.20
	movl	-120(%rbp), %eax
	imull	-116(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	leaq	-104(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	%rax, compose_row.line_buf
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %ecx
	subl	-112(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	compose_row.line_buf, %rsi
	movl	-12(%rbp), %ecx
	subl	-112(%rbp), %ecx
	movl	-120(%rbp), %r8d
	callq	gimp_pixel_rgn_get_rect
	movq	compose_row.line_buf, %rax
	movq	%rax, -56(%rbp)
	movl	-108(%rbp), %ecx
	movl	%ecx, -128(%rbp)
.LBB7_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
	movl	-128(%rbp), %eax
	movl	-120(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_25
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB7_12 Depth=1
	cmpl	$0, -128(%rbp)
	jl	.LBB7_23
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB7_23
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB7_12 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB7_17
# BB#16:                                # %lor.lhs.false.32
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	-56(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movzbl	-1(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	je	.LBB7_22
.LBB7_17:                               # %if.then.36
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	$0, -136(%rbp)
.LBB7_18:                               # %for.cond.37
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	movzbl	pixelstep, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_21
# BB#19:                                # %for.body.42
                                        #   in Loop: Header=BB7_18 Depth=2
	movq	-56(%rbp), %rax
	movslq	-136(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movl	-128(%rbp), %esi
	movzbl	pixelstep, %edi
	imull	%edi, %esi
	addl	-136(%rbp), %esi
	movslq	%esi, %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB7_18 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_18
.LBB7_21:                               # %for.end
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-128(%rbp), %eax
	movzbl	pixelstep, %ecx
	imull	%ecx, %eax
	movzbl	pixelstep, %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	$-1, (%rsi,%rdx)
.LBB7_22:                               # %if.end.55
                                        #   in Loop: Header=BB7_12 Depth=1
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.56
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-116(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#24:                                # %for.inc.59
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB7_12
.LBB7_25:                               # %for.end.61
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	compose_row, .Lfunc_end7-compose_row
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	get_frame_duration,@function
get_frame_duration:                     # @get_frame_duration
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
	movl	%edi, -4(%rbp)
	movl	$0, -20(%rbp)
	movl	total_frames, %edi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	movq	layers, %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	parse_ms_tag
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB9_2:                                # %if.end
	cmpl	$0, -20(%rbp)
	jge	.LBB9_4
# BB#3:                                 # %if.then.2
	movl	$100, -20(%rbp)
.LBB9_4:                                # %if.end.3
	cmpl	$0, -20(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.5
	movl	$100, -20(%rbp)
.LBB9_6:                                # %if.end.6
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_frame_duration, .Lfunc_end9-get_frame_duration
	.cfi_endproc

	.align	16, 0x90
	.type	remove_disposal_tag,@function
remove_disposal_tag:                    # @remove_disposal_tag
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB10_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-36(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	is_disposal_tag
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB10_1
.LBB10_5:                               # %while.end
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	remove_disposal_tag, .Lfunc_end10-remove_disposal_tag
	.cfi_endproc

	.align	16, 0x90
	.type	remove_ms_tag,@function
remove_ms_tag:                          # @remove_ms_tag
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB11_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-36(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	is_ms_tag
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB11_1
.LBB11_5:                               # %while.end
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	remove_ms_tag, .Lfunc_end11-remove_ms_tag
	.cfi_endproc

	.align	16, 0x90
	.type	parse_disposal_tag,@function
parse_disposal_tag:                     # @parse_disposal_tag
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB12_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-20(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movslq	-24(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	is_disposal_tag
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_7
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_5
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	movl	$0, -4(%rbp)
.LBB12_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	parse_disposal_tag, .Lfunc_end12-parse_disposal_tag
	.cfi_endproc

	.align	16, 0x90
	.type	is_disposal_tag,@function
is_disposal_tag:                        # @is_disposal_tag
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$9, %rax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_8
.LBB13_2:                               # %if.end
	movabsq	$.L.str.39, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movl	$9, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB13_8
.LBB13_4:                               # %if.else
	movabsq	$.L.str.40, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_6
# BB#5:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movl	$9, (%rax)
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB13_8
.LBB13_6:                               # %if.end.7
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.8
	movl	$0, -4(%rbp)
.LBB13_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	is_disposal_tag, .Lfunc_end13-is_disposal_tag
	.cfi_endproc

	.align	16, 0x90
	.type	parse_ms_tag,@function
parse_ms_tag:                           # @parse_ms_tag
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB14_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movslq	-20(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	is_ms_tag
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_7
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_5
.LBB14_5:                               # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB14_1
.LBB14_6:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB14_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	parse_ms_tag, .Lfunc_end14-parse_ms_tag
	.cfi_endproc

	.align	16, 0x90
	.type	is_ms_tag,@function
is_ms_tag:                              # @is_ms_tag
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_35
.LBB15_2:                               # %if.end
	movl	$1, -40(%rbp)
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -45(%rbp)          # 1-byte Spill
	jge	.LBB15_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -45(%rbp)         # 1-byte Spill
.LBB15_5:                               # %land.end
                                        #   in Loop: Header=BB15_3 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_6
	jmp	.LBB15_7
.LBB15_6:                               # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_3
.LBB15_7:                               # %while.end
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB15_9
# BB#8:                                 # %lor.lhs.false
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	jne	.LBB15_10
.LBB15_9:                               # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB15_35
.LBB15_10:                              # %if.end.19
	jmp	.LBB15_11
.LBB15_11:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	imull	$10, -36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	subl	$48, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
# BB#12:                                # %do.cond
                                        #   in Loop: Header=BB15_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -46(%rbp)          # 1-byte Spill
	jge	.LBB15_14
# BB#13:                                # %land.rhs.26
                                        #   in Loop: Header=BB15_11 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -46(%rbp)         # 1-byte Spill
.LBB15_14:                              # %land.end.35
                                        #   in Loop: Header=BB15_11 Depth=1
	movb	-46(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_11
# BB#15:                                # %do.end
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$2, %eax
	jg	.LBB15_17
# BB#16:                                # %if.then.39
	movl	$0, -4(%rbp)
	jmp	.LBB15_35
.LBB15_17:                              # %if.end.40
	jmp	.LBB15_18
.LBB15_18:                              # %while.cond.41
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -47(%rbp)          # 1-byte Spill
	jge	.LBB15_20
# BB#19:                                # %land.rhs.44
                                        #   in Loop: Header=BB15_18 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -47(%rbp)         # 1-byte Spill
.LBB15_20:                              # %land.end.50
                                        #   in Loop: Header=BB15_18 Depth=1
	movb	-47(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_21
	jmp	.LBB15_22
.LBB15_21:                              # %while.body.51
                                        #   in Loop: Header=BB15_18 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_18
.LBB15_22:                              # %while.end.53
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$2, %eax
	jle	.LBB15_25
# BB#23:                                # %lor.lhs.false.57
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$77, %edi
	jne	.LBB15_25
# BB#24:                                # %lor.lhs.false.64
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$83, %edi
	je	.LBB15_26
.LBB15_25:                              # %if.then.72
	movl	$0, -4(%rbp)
	jmp	.LBB15_35
.LBB15_26:                              # %if.end.73
	movl	-40(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
.LBB15_27:                              # %while.cond.75
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movb	%cl, -48(%rbp)          # 1-byte Spill
	jge	.LBB15_29
# BB#28:                                # %land.rhs.78
                                        #   in Loop: Header=BB15_27 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	sete	%sil
	movb	%sil, -48(%rbp)         # 1-byte Spill
.LBB15_29:                              # %land.end.84
                                        #   in Loop: Header=BB15_27 Depth=1
	movb	-48(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_30
	jmp	.LBB15_31
.LBB15_30:                              # %while.body.85
                                        #   in Loop: Header=BB15_27 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_27
.LBB15_31:                              # %while.end.87
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$1, %eax
	jl	.LBB15_33
# BB#32:                                # %lor.lhs.false.91
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$41, %edx
	je	.LBB15_34
.LBB15_33:                              # %if.then.97
	movl	$0, -4(%rbp)
	jmp	.LBB15_35
.LBB15_34:                              # %if.end.98
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -4(%rbp)
.LBB15_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	is_ms_tag, .Lfunc_end15-is_ms_tag
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
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable (unused)"
	.size	.L.str.5, 24

	.type	query.return_args,@object # @query.return_args
	.section	.rodata,"a",@progbits
	.align	16
query.return_args:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.return_args, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"result"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Resulting image"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-animationoptimize"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Modify image to reduce size when saved as GIF animation"
	.size	.L.str.9, 56

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This procedure applies various optimizations to a GIMP layer-based animation in an attempt to reduce the final file size.  If a frame of the animation can use the 'combine' mode, this procedure attempts to maximize the number of ajdacent pixels having the same color, which improves the compression for some image formats such as GIF or MNG."
	.size	.L.str.10, 342

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Adam D. Moss <adam@gimp.org>"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1997-2003"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Optimize (for _GIF)"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RGB*, INDEXED*, GRAY*"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plug-in-animationoptimize-diff"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Reduce file size where combining layers is possible"
	.size	.L.str.16, 52

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This procedure applies various optimizations to a GIMP layer-based animation in an attempt to reduce the final file size.  If a frame of the animation can use the 'combine' mode, this procedure uses a simple difference between the frames."
	.size	.L.str.17, 239

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1997-2001"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Optimize (Difference)"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plug-in-animationunoptimize"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Remove optimization to make editing easier"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"This procedure 'simplifies' a GIMP layer-based animation that has been optimized for animation. This makes editing the animation much easier."
	.size	.L.str.22, 142

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Unoptimize"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<Image>/Filters/Animation"
	.size	.L.str.24, 26

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"UTF-8"
	.size	.L.str.26, 6

	.type	opmode,@object          # @opmode
	.local	opmode
	.comm	opmode,4,4
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"plug-in-animation-find-backdrop"
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plug-in-animation-remove-backdrop"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GAH!!!"
	.size	.L.str.29, 7

	.type	image_id,@object        # @image_id
	.local	image_id
	.comm	image_id,4,4
	.type	new_image_id,@object    # @new_image_id
	.local	new_image_id
	.comm	new_image_id,4,4
	.type	do_optimizations.rawframe,@object # @do_optimizations.rawframe
	.local	do_optimizations.rawframe
	.comm	do_optimizations.rawframe,8,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Unoptimizing animation"
	.size	.L.str.30, 23

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Removing animation background"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Finding animation background"
	.size	.L.str.32, 29

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Optimizing animation"
	.size	.L.str.33, 21

	.type	width,@object           # @width
	.local	width
	.comm	width,4,4
	.type	height,@object          # @height
	.local	height
	.comm	height,4,4
	.type	total_frames,@object    # @total_frames
	.local	total_frames
	.comm	total_frames,4,4
	.type	layers,@object          # @layers
	.local	layers
	.comm	layers,8,8
	.type	imagetype,@object       # @imagetype
	.local	imagetype
	.comm	imagetype,4,4
	.type	pixelstep,@object       # @pixelstep
	.local	pixelstep
	.comm	pixelstep,1,1
	.type	drawabletype_alpha,@object # @drawabletype_alpha
	.local	drawabletype_alpha
	.comm	drawabletype_alpha,4,4
	.type	ncolours,@object        # @ncolours
	.local	ncolours
	.comm	ncolours,4,4
	.type	palette,@object         # @palette
	.local	palette
	.comm	palette,8,8
	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Eeep!"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"yayyyy!"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Backgroundx"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s(%dms)%s"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.zero	1
	.size	.L.str.38, 1

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"(combine)"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"(replace)"
	.size	.L.str.40, 10

	.type	compose_row.line_buf,@object # @compose_row.line_buf
	.local	compose_row.line_buf
	.comm	compose_row.line_buf,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
