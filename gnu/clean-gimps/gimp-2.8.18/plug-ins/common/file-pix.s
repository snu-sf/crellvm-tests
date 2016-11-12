	.text
	.file	"file-pix.bc"
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
	subq	$152, %rsp
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
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rdx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movl	$1, %esi
	movl	$3, %r10d
	movabsq	$query.load_args, %r11
	movabsq	$query.load_return_vals, %rbx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	callq	gimp_register_load_handler
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.21, %r8
	movl	$1, %r10d
	movl	$5, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r11
	xorl	%r13d, %r13d
	movl	%r13d, %ebx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movl	%r12d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	callq	gimp_register_save_handler
	movl	%eax, -136(%rbp)        # 4-byte Spill
	addq	$152, %rsp
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
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.22, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.22, %rdi
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
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_22
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.24, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.25, %rdx
	movl	$3, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_26
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_17
# BB#14:                                # %if.then.25
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.30
	movl	$0, -48(%rbp)
.LBB1_16:                               # %if.end.31
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.32
	cmpl	$2, -60(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.34
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.36
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.37
	movl	$1, -48(%rbp)
.LBB1_21:                               # %if.end.38
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.39
	cmpl	$3, -48(%rbp)
	je	.LBB1_25
# BB#23:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.42
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_25:                               # %if.end.43
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_26:                               # %return
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
	.quad	4636737291354636288     # double 100
.LCPI3_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$288, %rsp              # imm = 0x120
	movabsq	$.L.str.26, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.27, %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movl	-184(%rbp), %edx        # 4-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_52
.LBB3_2:                                # %if.end
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-48(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	get_short
	movw	%ax, -130(%rbp)
	movq	-48(%rbp), %rdi
	callq	get_short
	movw	%ax, -132(%rbp)
	movq	-48(%rbp), %rdi
	callq	get_short
	movq	-48(%rbp), %rdi
	movw	%ax, -214(%rbp)         # 2-byte Spill
	callq	get_short
	movq	-48(%rbp), %rdi
	movw	%ax, -216(%rbp)         # 2-byte Spill
	callq	get_short
	movw	%ax, -134(%rbp)
	movzwl	-134(%rbp), %ecx
	cmpl	$8, %ecx
	jne	.LBB3_4
# BB#3:                                 # %if.then.17
	movl	$1, -140(%rbp)
	movl	$2, -144(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.else
	movzwl	-134(%rbp), %eax
	cmpl	$24, %eax
	jne	.LBB3_6
# BB#5:                                 # %if.then.21
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.22
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB3_52
.LBB3_7:                                # %if.end.24
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.25
	movzwl	-130(%rbp), %edi
	movzwl	-132(%rbp), %esi
	movl	-140(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.29, %rdi
	movl	-76(%rbp), %edx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%edx, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movzwl	-130(%rbp), %edx
	movzwl	-132(%rbp), %ecx
	movl	-144(%rbp), %r8d
	movl	-228(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-80(%rbp), %edi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-72(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	movl	%eax, -36(%rbp)
	movzwl	-134(%rbp), %eax
	cmpl	$24, %eax
	jne	.LBB3_30
# BB#9:                                 # %if.then.42
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -36(%rbp)
	movzwl	-130(%rbp), %eax
	imull	$3, %eax, %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -28(%rbp)
.LBB3_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_16 Depth 3
                                        #         Child Loop BB3_20 Depth 4
	movl	-28(%rbp), %eax
	movzwl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_29
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB3_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
.LBB3_12:                               # %for.cond.51
                                        #   Parent Loop BB3_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_16 Depth 3
                                        #         Child Loop BB3_20 Depth 4
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -237(%rbp)         # 1-byte Spill
	jge	.LBB3_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-28(%rbp), %eax
	movzwl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -237(%rbp)         # 1-byte Spill
.LBB3_14:                               # %land.end
                                        #   in Loop: Header=BB3_12 Depth=2
	movb	-237(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_15
	jmp	.LBB3_28
.LBB3_15:                               # %for.body.57
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	$0, -32(%rbp)
.LBB3_16:                               # %while.cond
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_20 Depth 4
	movl	-32(%rbp), %eax
	movzwl	-130(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_26
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB3_16 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-148(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -152(%rbp)
	cmpl	$4, -152(%rbp)
	jge	.LBB3_19
# BB#18:                                # %if.then.65
                                        #   in Loop: Header=BB3_12 Depth=2
	jmp	.LBB3_26
.LBB3_19:                               # %if.end.66
                                        #   in Loop: Header=BB3_16 Depth=3
	movb	$0, -153(%rbp)
.LBB3_20:                               # %for.cond.67
                                        #   Parent Loop BB3_10 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	-153(%rbp), %eax
	movzbl	-148(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_25
# BB#21:                                # %for.body.72
                                        #   in Loop: Header=BB3_20 Depth=4
	movb	-145(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-146(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-147(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-56(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -56(%rbp)
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	movzwl	-130(%rbp), %esi
	cmpl	%esi, %edx
	jl	.LBB3_23
# BB#22:                                # %if.then.82
                                        #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.83
                                        #   in Loop: Header=BB3_20 Depth=4
	jmp	.LBB3_24
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_20 Depth=4
	movb	-153(%rbp), %al
	addb	$1, %al
	movb	%al, -153(%rbp)
	jmp	.LBB3_20
.LBB3_25:                               # %for.end
                                        #   in Loop: Header=BB3_16 Depth=3
	jmp	.LBB3_16
.LBB3_26:                               # %while.end
                                        #   in Loop: Header=BB3_12 Depth=2
	jmp	.LBB3_27
.LBB3_27:                               # %for.inc.85
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_12
.LBB3_28:                               # %for.end.88
                                        #   in Loop: Header=BB3_10 Depth=1
	movq	-64(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%ecx, %eax
	movzwl	-130(%rbp), %r8d
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-244(%rbp), %r9d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_rect
	cvtsi2sdl	-28(%rbp), %xmm0
	movzwl	-132(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB3_10
.LBB3_29:                               # %for.end.93
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_51
.LBB3_30:                               # %if.else.94
	movl	$1, %eax
	movl	%eax, %esi
	movzwl	-130(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -28(%rbp)
.LBB3_31:                               # %for.cond.101
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_33 Depth 2
                                        #       Child Loop BB3_37 Depth 3
                                        #         Child Loop BB3_41 Depth 4
	movl	-28(%rbp), %eax
	movzwl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_50
# BB#32:                                # %for.body.105
                                        #   in Loop: Header=BB3_31 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
.LBB3_33:                               # %for.cond.106
                                        #   Parent Loop BB3_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_37 Depth 3
                                        #         Child Loop BB3_41 Depth 4
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -249(%rbp)         # 1-byte Spill
	jge	.LBB3_35
# BB#34:                                # %land.rhs.109
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	-28(%rbp), %eax
	movzwl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -249(%rbp)         # 1-byte Spill
.LBB3_35:                               # %land.end.113
                                        #   in Loop: Header=BB3_33 Depth=2
	movb	-249(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_36
	jmp	.LBB3_49
.LBB3_36:                               # %for.body.114
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	$0, -32(%rbp)
.LBB3_37:                               # %while.cond.116
                                        #   Parent Loop BB3_31 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_41 Depth 4
	movl	-32(%rbp), %eax
	movzwl	-130(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_47
# BB#38:                                # %while.body.120
                                        #   in Loop: Header=BB3_37 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-155(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -160(%rbp)
	cmpl	$2, -160(%rbp)
	jge	.LBB3_40
# BB#39:                                # %if.then.126
                                        #   in Loop: Header=BB3_33 Depth=2
	jmp	.LBB3_47
.LBB3_40:                               # %if.end.127
                                        #   in Loop: Header=BB3_37 Depth=3
	movb	$0, -161(%rbp)
.LBB3_41:                               # %for.cond.128
                                        #   Parent Loop BB3_31 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	-161(%rbp), %eax
	movzbl	-155(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_46
# BB#42:                                # %for.body.134
                                        #   in Loop: Header=BB3_41 Depth=4
	movb	-154(%rbp), %al
	movslq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	movl	-32(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movl	-32(%rbp), %esi
	movzwl	-130(%rbp), %edi
	cmpl	%edi, %esi
	jl	.LBB3_44
# BB#43:                                # %if.then.141
                                        #   in Loop: Header=BB3_37 Depth=3
	jmp	.LBB3_46
.LBB3_44:                               # %if.end.142
                                        #   in Loop: Header=BB3_41 Depth=4
	jmp	.LBB3_45
.LBB3_45:                               # %for.inc.143
                                        #   in Loop: Header=BB3_41 Depth=4
	movb	-161(%rbp), %al
	addb	$1, %al
	movb	%al, -161(%rbp)
	jmp	.LBB3_41
.LBB3_46:                               # %for.end.145
                                        #   in Loop: Header=BB3_37 Depth=3
	jmp	.LBB3_37
.LBB3_47:                               # %while.end.146
                                        #   in Loop: Header=BB3_33 Depth=2
	movzwl	-130(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#48:                                # %for.inc.149
                                        #   in Loop: Header=BB3_33 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_33
.LBB3_49:                               # %for.end.152
                                        #   in Loop: Header=BB3_31 Depth=1
	movq	-64(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%ecx, %eax
	movzwl	-130(%rbp), %r8d
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-256(%rbp), %r9d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_rect
	cvtsi2sdl	-28(%rbp), %xmm0
	movzwl	-132(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB3_31
.LBB3_50:                               # %for.end.159
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB3_51:                               # %if.end.160
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-72(%rbp), %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	-76(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB3_52:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$1, -64(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-88(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-24(%rbp), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_bpp
	movabsq	$.L.str.30, %rsi
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.31, %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movl	-176(%rbp), %edx        # 4-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_48
.LBB4_2:                                # %if.end
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-88(%rbp), %rsi
	movl	4(%rsi), %ecx
	movw	%cx, %dx
	movq	-144(%rbp), %rsi
	movzwl	%dx, %edi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	put_short
	movq	-88(%rbp), %rsi
	movl	8(%rsi), %eax
	movw	%ax, %dx
	movq	-144(%rbp), %rsi
	movzwl	%dx, %edi
	callq	put_short
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi
	callq	put_short
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi
	callq	put_short
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-88(%rbp), %r8
	imull	4(%r8), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_26
# BB#3:                                 # %if.then.23
	movl	$24, %edi
	movq	-144(%rbp), %rsi
	callq	put_short
	movl	$0, -40(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_13 Depth 3
	movl	-40(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_25
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-52(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-40(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB4_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-40(%rbp), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
.LBB4_8:                                # %cond.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -60(%rbp)
	movq	-80(%rbp), %rsi
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %r8
	movl	4(%r8), %r8d
	movl	-60(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-80(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB4_9:                                # %for.cond.32
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_13 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jge	.LBB4_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	-40(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	setb	%dl
	movb	%dl, -209(%rbp)         # 1-byte Spill
.LBB4_11:                               # %land.end
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_12
	jmp	.LBB4_24
.LBB4_12:                               # %for.body.38
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	$1, -148(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -145(%rbp)
	movq	-72(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -146(%rbp)
	movq	-72(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -147(%rbp)
	movl	-36(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, -72(%rbp)
	movl	$1, -44(%rbp)
.LBB4_13:                               # %for.cond.45
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_22
# BB#14:                                # %for.body.49
                                        #   in Loop: Header=BB4_13 Depth=3
	movzbl	-145(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB4_18
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_13 Depth=3
	movzbl	-146(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB4_18
# BB#16:                                # %lor.lhs.false.62
                                        #   in Loop: Header=BB4_13 Depth=3
	movzbl	-147(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB4_18
# BB#17:                                # %lor.lhs.false.69
                                        #   in Loop: Header=BB4_13 Depth=3
	movzbl	-148(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB4_19
.LBB4_18:                               # %if.then.74
                                        #   in Loop: Header=BB4_13 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-148(%rbp), %rdi
	movq	-144(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -56(%rbp)
	movb	$1, -148(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %r9b
	movb	%r9b, -145(%rbp)
	movq	-72(%rbp), %rax
	movb	1(%rax), %r9b
	movb	%r9b, -146(%rbp)
	movq	-72(%rbp), %rax
	movb	2(%rax), %r9b
	movb	%r9b, -147(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else
                                        #   in Loop: Header=BB4_13 Depth=3
	movb	-148(%rbp), %al
	addb	$1, %al
	movb	%al, -148(%rbp)
.LBB4_20:                               # %if.end.85
                                        #   in Loop: Header=BB4_13 Depth=3
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_13
.LBB4_22:                               # %for.end
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-148(%rbp), %rdi
	movq	-144(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -56(%rbp)
# BB#23:                                # %for.inc.92
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_9
.LBB4_24:                               # %for.end.94
                                        #   in Loop: Header=BB4_4 Depth=1
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB4_4
.LBB4_25:                               # %for.end.99
	jmp	.LBB4_47
.LBB4_26:                               # %if.else.100
	movl	$8, %edi
	movq	-144(%rbp), %rsi
	callq	put_short
	movl	$0, -40(%rbp)
.LBB4_27:                               # %for.cond.102
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_32 Depth 2
                                        #       Child Loop BB4_36 Depth 3
	movl	-40(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_46
# BB#28:                                # %for.body.106
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	-52(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-40(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB4_30
# BB#29:                                # %cond.true.111
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB4_31
.LBB4_30:                               # %cond.false.112
                                        #   in Loop: Header=BB4_27 Depth=1
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-40(%rbp), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB4_31:                               # %cond.end.115
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -60(%rbp)
	movq	-80(%rbp), %rsi
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %r8
	movl	4(%r8), %r8d
	movl	-60(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-80(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movl	$0, -48(%rbp)
.LBB4_32:                               # %for.cond.118
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_36 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	movb	%cl, -221(%rbp)         # 1-byte Spill
	jge	.LBB4_34
# BB#33:                                # %land.rhs.121
                                        #   in Loop: Header=BB4_32 Depth=2
	movl	-40(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	setb	%dl
	movb	%dl, -221(%rbp)         # 1-byte Spill
.LBB4_34:                               # %land.end.125
                                        #   in Loop: Header=BB4_32 Depth=2
	movb	-221(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_35
	jmp	.LBB4_45
.LBB4_35:                               # %for.body.126
                                        #   in Loop: Header=BB4_32 Depth=2
	movb	$1, -150(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -149(%rbp)
	movl	-36(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movq	%rax, -72(%rbp)
	movl	$1, -44(%rbp)
.LBB4_36:                               # %for.cond.132
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_43
# BB#37:                                # %for.body.136
                                        #   in Loop: Header=BB4_36 Depth=3
	movzbl	-149(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB4_39
# BB#38:                                # %lor.lhs.false.143
                                        #   in Loop: Header=BB4_36 Depth=3
	movzbl	-150(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB4_40
.LBB4_39:                               # %if.then.148
                                        #   in Loop: Header=BB4_36 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-150(%rbp), %rdi
	movq	-144(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -56(%rbp)
	movb	$1, -150(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %r9b
	movb	%r9b, -149(%rbp)
	jmp	.LBB4_41
.LBB4_40:                               # %if.else.155
                                        #   in Loop: Header=BB4_36 Depth=3
	movb	-150(%rbp), %al
	addb	$1, %al
	movb	%al, -150(%rbp)
.LBB4_41:                               # %if.end.158
                                        #   in Loop: Header=BB4_36 Depth=3
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#42:                                # %for.inc.161
                                        #   in Loop: Header=BB4_36 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_36
.LBB4_43:                               # %for.end.163
                                        #   in Loop: Header=BB4_32 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-150(%rbp), %rdi
	movq	-144(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -56(%rbp)
# BB#44:                                # %for.inc.167
                                        #   in Loop: Header=BB4_32 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_32
.LBB4_45:                               # %for.end.170
                                        #   in Loop: Header=BB4_27 Depth=1
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB4_27
.LBB4_46:                               # %for.end.176
	jmp	.LBB4_47
.LBB4_47:                               # %if.end.177
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-80(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB4_48:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	get_short,@function
get_short:                              # @get_short
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
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-10(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movzbl	-10(%rbp), %r8d
	shll	$8, %r8d
	movzbl	-9(%rbp), %r9d
	addl	%r9d, %r8d
	movw	%r8w, %r10w
	movzwl	%r10w, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_short, .Lfunc_end5-get_short
	.cfi_endproc

	.align	16, 0x90
	.type	put_short,@function
put_short:                              # @put_short
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
	subq	$48, %rsp
	movw	%di, %ax
	movl	$2, %edi
	movl	%edi, %ecx
	movl	$1, %edi
	movl	%edi, %edx
	leaq	-18(%rbp), %rdi
	movw	%ax, -2(%rbp)
	movq	%rsi, -16(%rbp)
	movzwl	-2(%rbp), %r8d
	sarl	$8, %r8d
	andl	$255, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -18(%rbp)
	movzwl	-2(%rbp), %r8d
	andl	$255, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	fwrite
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	put_short, .Lfunc_end6-put_short
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

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.load_args, 72

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
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.11
	.size	query.save_args, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Input image"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Drawable to save"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file-pix-load"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"loads files of the Alias|Wavefront Pix file format"
	.size	.L.str.13, 51

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Michael Taylor"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1997"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Alias Pix image"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pix,matte,mask,alpha,als"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"file-pix-save"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"save file in the Alias|Wavefront pix/matte file format"
	.size	.L.str.20, 55

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.21, 12

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"UTF-8"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"file-pix"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"PIX"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"rb"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.27, 36

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Opening '%s'"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Background"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"wb"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Saving '%s'"
	.size	.L.str.32, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
