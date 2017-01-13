	.text
	.file	"file-pdf-save.bc"
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
	subq	$120, %rsp
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
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %r10
	movl	$1, %r11d
	movl	$8, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.save_args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.26, %r10
	movl	$1, %r11d
	movl	$8, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.save_multi_args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r14d, -80(%rbp)        # 4-byte Spill
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.29, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -92(%rbp)         # 4-byte Spill
	addq	$120, %rsp
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
.LCPI1_1:
	.quad	4634766966517661696     # double 72
.LCPI1_2:
	.quad	4636737291354636288     # double 100
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$-1, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -264(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.32, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -328(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-48(%rbp), %r9
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$21, run.values
	movl	-44(%rbp), %esi
	movl	%esi, run.values+8
	movl	$0, multi_page+1400
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	init_vals
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movl	$1, run.values+8
	jmp	.LBB1_69
.LBB1_4:                                # %if.end
	cmpl	$0, -48(%rbp)
	jne	.LBB1_15
# BB#5:                                 # %if.then.5
	cmpl	$0, -52(%rbp)
	je	.LBB1_9
# BB#6:                                 # %if.then.7
	callq	gui_single
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$4, run.values+8
	jmp	.LBB1_69
.LBB1_8:                                # %if.end.11
	jmp	.LBB1_12
.LBB1_9:                                # %if.else
	callq	gui_multi
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.14
	movl	$4, run.values+8
	jmp	.LBB1_69
.LBB1_11:                               # %if.end.15
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.16
	cmpq	$0, file_name
	jne	.LBB1_14
# BB#13:                                # %if.then.18
	movabsq	$.L.str.34, %rdi
	movl	$1, run.values+8
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB1_69
.LBB1_14:                               # %if.end.21
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.22
	movabsq	$.L.str.35, %rsi
	movq	file_name, %rdi
	callq	fopen
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.LBB1_19
# BB#16:                                # %if.then.25
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$0, run.values+8
	movl	$4, run.values+40
	cmpq	$0, -264(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.27
	callq	g_file_error_quark
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.36, %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gettext
	movq	file_name, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	leaq	-264(%rbp), %rdi
	movl	-336(%rbp), %esi        # 4-byte Reload
	movl	-340(%rbp), %edx        # 4-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB1_18:                               # %if.end.35
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
	jmp	.LBB1_69
.LBB1_19:                               # %if.end.36
	movabsq	$write_func, %rdi
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_pdf_surface_create_for_stream
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	cairo_surface_status
	cmpl	$0, %eax
	je	.LBB1_21
# BB#20:                                # %if.then.40
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	-64(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	cairo_surface_status
	movl	%eax, %edi
	callq	cairo_status_to_string
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rdi
	callq	gimp_message
	movq	-272(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$0, run.values+8
	jmp	.LBB1_69
.LBB1_21:                               # %if.end.46
	movq	-64(%rbp), %rdi
	callq	cairo_create
	movq	%rax, -72(%rbp)
	movl	$55, -76(%rbp)
	cmpl	$0, optimize+8
	je	.LBB1_23
# BB#22:                                # %if.then.49
	movl	-76(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -76(%rbp)
.LBB1_23:                               # %if.end.50
	movl	$0, -80(%rbp)
.LBB1_24:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	movl	-80(%rbp), %eax
	cmpl	multi_page+1400, %eax
	jae	.LBB1_67
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	-72(%rbp), %rdi
	callq	cairo_save
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	movl	multi_page(,%rdi,4), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %edi
	callq	gimp_image_get_active_drawable
	movl	%eax, -136(%rbp)
	cmpl	$-1, -136(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.54
                                        #   in Loop: Header=BB1_24 Depth=1
	leaq	-124(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-76(%rbp), %ecx
	callq	gimp_export_image
	cmpl	$2, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.57
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	$0, -128(%rbp)
.LBB1_28:                               # %if.end.58
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	-124(%rbp), %edi
	callq	gimp_image_base_type
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movl	%eax, -132(%rbp)
	movl	-124(%rbp), %edi
	callq	gimp_image_get_resolution
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	divsd	-96(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-64(%rbp), %rdi
	movl	-124(%rbp), %ecx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gimp_image_width
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	movl	-124(%rbp), %edi
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	callq	gimp_image_height
	cvtsi2sdl	%eax, %xmm0
	mulsd	-120(%rbp), %xmm0
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_pdf_surface_set_size
	movq	-64(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	cairo_surface_set_fallback_resolution
	movq	-72(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	cairo_scale
	leaq	-148(%rbp), %rsi
	movl	-124(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, -144(%rbp)
	movl	$0, -84(%rbp)
.LBB1_29:                               # %for.cond.68
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB1_63
# BB#30:                                # %for.body.71
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	-148(%rbp), %eax
	subl	-84(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_drawable_get
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_get_opacity
	movsd	.LCPI1_2, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	cmpl	$2, -132(%rbp)
	jne	.LBB1_35
# BB#31:                                # %if.then.80
                                        #   in Loop: Header=BB1_29 Depth=2
	movsd	.LCPI1_3, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-176(%rbp), %xmm0
	jb	.LBB1_33
# BB#32:                                # %if.then.83
                                        #   in Loop: Header=BB1_29 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.84
                                        #   in Loop: Header=BB1_29 Depth=2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
.LBB1_34:                               # %if.end.85
                                        #   in Loop: Header=BB1_29 Depth=2
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.86
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB1_59
# BB#36:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_29 Depth=2
	cmpl	$0, optimize+4
	je	.LBB1_39
# BB#37:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_29 Depth=2
	cmpl	$0, optimize+4
	je	.LBB1_59
# BB#38:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB1_29 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_59
.LBB1_39:                               # %if.then.95
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_get_mask
	movl	%eax, -232(%rbp)
	cmpl	$-1, -232(%rbp)
	je	.LBB1_43
# BB#40:                                # %if.then.100
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	-232(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-264(%rbp), %rsi
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	get_drawable_image
	movq	%rax, -248(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB1_42
# BB#41:                                # %if.then.105
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movq	-64(%rbp), %rdi
	callq	cairo_surface_destroy
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
	movq	-256(%rbp), %rdi
	callq	fclose
	movl	$0, run.values+8
	movl	$4, run.values+40
	movq	-264(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, run.values+48
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB1_69
.LBB1_42:                               # %if.end.108
                                        #   in Loop: Header=BB1_29 Depth=2
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.109
                                        #   in Loop: Header=BB1_29 Depth=2
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets
	movq	-160(%rbp), %rdx
	movl	(%rdx), %edi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	jne	.LBB1_57
# BB#44:                                # %if.then.115
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-160(%rbp), %rsi
	leaq	-304(%rbp), %rdi
	leaq	-228(%rbp), %rdx
	callq	get_layer_color
	movups	-304(%rbp), %xmm0
	movups	-288(%rbp), %xmm1
	movaps	%xmm1, -208(%rbp)
	movaps	%xmm0, -224(%rbp)
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	movq	-160(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	8(%rdx), %ecx
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm2
	movl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm3
	callq	cairo_rectangle
	cmpl	$0, optimize
	je	.LBB1_50
# BB#45:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB1_29 Depth=2
	cmpl	$0, -228(%rbp)
	je	.LBB1_50
# BB#46:                                # %if.then.123
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-200(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-176(%rbp), %xmm3
	callq	cairo_set_source_rgba
	cmpl	$-1, -232(%rbp)
	je	.LBB1_48
# BB#47:                                # %if.then.127
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	movq	-248(%rbp), %rsi
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	callq	cairo_mask_surface
	jmp	.LBB1_49
.LBB1_48:                               # %if.else.130
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	callq	cairo_fill
.LBB1_49:                               # %if.end.131
                                        #   in Loop: Header=BB1_29 Depth=2
	jmp	.LBB1_56
.LBB1_50:                               # %if.else.132
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	callq	cairo_clip
	leaq	-264(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	get_drawable_image
	movq	%rax, -168(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB1_52
# BB#51:                                # %if.then.136
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movq	-64(%rbp), %rdi
	callq	cairo_surface_destroy
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
	movq	-256(%rbp), %rdi
	callq	fclose
	movl	$0, run.values+8
	movl	$4, run.values+40
	movq	-264(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, run.values+48
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB1_69
.LBB1_52:                               # %if.end.139
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	movq	-168(%rbp), %rsi
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	callq	cairo_set_source_surface
	movq	-72(%rbp), %rdi
	callq	cairo_push_group
	movq	-72(%rbp), %rdi
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cairo_paint_with_alpha
	movq	-72(%rbp), %rdi
	callq	cairo_pop_group_to_source
	cmpl	$-1, -232(%rbp)
	je	.LBB1_54
# BB#53:                                # %if.then.144
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	movq	-248(%rbp), %rsi
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	callq	cairo_mask_surface
	jmp	.LBB1_55
.LBB1_54:                               # %if.else.147
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	callq	cairo_paint
.LBB1_55:                               # %if.end.148
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-72(%rbp), %rdi
	callq	cairo_reset_clip
	movq	-168(%rbp), %rdi
	callq	cairo_surface_destroy
.LBB1_56:                               # %if.end.149
                                        #   in Loop: Header=BB1_29 Depth=2
	jmp	.LBB1_58
.LBB1_57:                               # %if.else.150
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-160(%rbp), %rdi
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-72(%rbp), %rsi
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	callq	drawText
.LBB1_58:                               # %if.end.151
                                        #   in Loop: Header=BB1_29 Depth=2
	jmp	.LBB1_59
.LBB1_59:                               # %if.end.152
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-160(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$-1, -232(%rbp)
	je	.LBB1_61
# BB#60:                                # %if.then.155
                                        #   in Loop: Header=BB1_29 Depth=2
	movq	-240(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-248(%rbp), %rdi
	callq	cairo_surface_destroy
.LBB1_61:                               # %if.end.156
                                        #   in Loop: Header=BB1_29 Depth=2
	jmp	.LBB1_62
.LBB1_62:                               # %for.inc
                                        #   in Loop: Header=BB1_29 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_29
.LBB1_63:                               # %for.end
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	-72(%rbp), %rdi
	callq	cairo_show_page
	movq	-72(%rbp), %rdi
	callq	cairo_restore
	cmpl	$0, -128(%rbp)
	je	.LBB1_65
# BB#64:                                # %if.then.158
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	-124(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB1_65:                               # %if.end.160
                                        #   in Loop: Header=BB1_24 Depth=1
	jmp	.LBB1_66
.LBB1_66:                               # %for.inc.161
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB1_24
.LBB1_67:                               # %for.end.163
	movq	-64(%rbp), %rdi
	callq	cairo_surface_destroy
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
	movq	-256(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.38, %rdi
	movabsq	$optimize, %rcx
	movl	$12, %edx
	movq	%rcx, %rsi
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	gimp_procedural_db_set_data
	cmpl	$0, -52(%rbp)
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jne	.LBB1_69
# BB#68:                                # %if.then.167
	movabsq	$multi_page, %rax
	addq	$1404, %rax             # imm = 0x57C
	movl	$350, %ecx              # imm = 0x15E
	movl	%ecx, %edx
	movq	file_name, %rsi
	movq	%rax, %rdi
	callq	g_strlcpy
	movabsq	$.L.str.39, %rdi
	movabsq	$multi_page, %rdx
	movl	$1756, %ecx             # imm = 0x6DC
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_procedural_db_set_data
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB1_69:                               # %if.end.170
	addq	$464, %rsp              # imm = 0x1D0
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
	.type	init_vals,@function
init_vals:                              # @init_vals
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
	subq	$96, %rsp
	movabsq	$.L.str.19, %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_str_equal
	cmpl	$0, %eax
	je	.LBB3_8
# BB#1:                                 # %if.then
	movl	$1, -64(%rbp)
	cmpl	$8, -20(%rbp)
	je	.LBB3_4
# BB#2:                                 # %land.lhs.true
	cmpl	$5, -20(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB3_40
.LBB3_4:                                # %if.end
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, file_name
	cmpl	$8, -20(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, optimize+8
	movq	-32(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, optimize
	movq	-32(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, optimize+4
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
	movl	$1, -68(%rbp)
.LBB3_7:                                # %if.end.19
	jmp	.LBB3_14
.LBB3_8:                                # %if.else.20
	movabsq	$.L.str.27, %rsi
	movq	-16(%rbp), %rdi
	callq	g_str_equal
	cmpl	$0, %eax
	je	.LBB3_12
# BB#9:                                 # %if.then.23
	movl	$0, -64(%rbp)
	cmpl	$8, -20(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.25
	movl	$0, -4(%rbp)
	jmp	.LBB3_40
.LBB3_11:                               # %if.end.26
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$-1, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, file_name
	movq	-32(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, optimize+8
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, optimize
	movq	-32(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, optimize+4
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.42
	movl	$0, -4(%rbp)
	jmp	.LBB3_40
.LBB3_13:                               # %if.end.43
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.44
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB3_25
	jmp	.LBB3_41
.LBB3_41:                               # %if.end.44
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_42
.LBB3_42:                               # %if.end.44
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB3_33
	jmp	.LBB3_39
.LBB3_15:                               # %sw.bb
	cmpl	$0, -64(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.46
	movl	-76(%rbp), %edi
	callq	init_image_list_defaults
	jmp	.LBB3_24
.LBB3_17:                               # %if.else.47
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, multi_page+1400
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB3_23
# BB#18:                                # %if.then.54
	movl	$0, -72(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB3_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-72(%rbp), %rax
	movl	%edx, multi_page(,%rax,4)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB3_19
.LBB3_22:                               # %for.end
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.65
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.66
	jmp	.LBB3_39
.LBB3_25:                               # %sw.bb.67
	movabsq	$.L.str.38, %rdi
	movabsq	$optimize, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$.L.str.39, %rdi
	movabsq	$multi_page, %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_procedural_db_get_data
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB3_29
# BB#26:                                # %land.lhs.true.71
	cmpq	$0, file_name
	je	.LBB3_28
# BB#27:                                # %lor.lhs.false
	movq	file_name, %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB3_29
.LBB3_28:                               # %if.then.75
	movabsq	$multi_page, %rax
	addq	$1404, %rax             # imm = 0x57C
	movq	%rax, file_name
.LBB3_29:                               # %if.end.76
	cmpl	$0, -64(%rbp)
	jne	.LBB3_31
# BB#30:                                # %lor.lhs.false.78
	cmpl	$0, -60(%rbp)
	jne	.LBB3_32
.LBB3_31:                               # %if.then.80
	movl	-76(%rbp), %edi
	callq	init_image_list_defaults
.LBB3_32:                               # %if.end.81
	jmp	.LBB3_39
.LBB3_33:                               # %sw.bb.82
	cmpl	$0, -64(%rbp)
	jne	.LBB3_37
# BB#34:                                # %if.then.84
	movabsq	$.L.str.39, %rdi
	movabsq	$multi_page, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB3_36
# BB#35:                                # %if.then.87
	movabsq	$multi_page, %rax
	addq	$1404, %rax             # imm = 0x57C
	movq	%rax, file_name
.LBB3_36:                               # %if.end.88
	jmp	.LBB3_38
.LBB3_37:                               # %if.else.89
	movl	-76(%rbp), %edi
	callq	init_image_list_defaults
.LBB3_38:                               # %if.end.90
	movabsq	$.L.str.38, %rdi
	movabsq	$optimize, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB3_39:                               # %sw.epilog
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	callq	validate_image_list
	movl	$1, -4(%rbp)
.LBB3_40:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	init_vals, .Lfunc_end3-init_vals
	.cfi_endproc

	.align	16, 0x90
	.type	gui_single,@function
gui_single:                             # @gui_single
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
	subq	$160, %rsp
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.19, %rdx
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -8(%rbp)
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	optimize+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_end
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	optimize, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_end
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	optimize+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rax
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
	callq	gtk_box_pack_end
	movabsq	$.L.str.45, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show_all
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, optimize+4
	movq	-24(%rbp), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, optimize
	movq	-40(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, optimize+8
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-44(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gui_single, .Lfunc_end4-gui_single
	.cfi_endproc

	.align	16, 0x90
	.type	gui_multi,@function
gui_multi:                              # @gui_multi
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
	pushq	%rbx
	subq	$616, %rsp              # imm = 0x268
.Ltmp23:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.27, %rdx
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$10, %esi
	movq	%rax, -16(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%edi, %edi
	movl	$5, %esi
	callq	gtk_box_new
	movabsq	$.L.str.46, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	callq	gtk_entry_new
	movq	%rax, -40(%rbp)
	cmpq	$0, file_name
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	file_name, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB5_2:                                # %if.end
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movabsq	$.L.str.48, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.49, %rcx
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	movabsq	$.L.str.50, %r9
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	$-6, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -204(%rbp)       # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, file_choose
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	callq	gtk_icon_view_new
	movq	%rax, -96(%rbp)
	callq	create_model
	movq	%rax, model
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	model, %rsi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_model
	movq	-96(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_reorderable
	movq	-96(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_selection_mode
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_pixbuf_column
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_text_column
	movq	-96(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_tooltip_column
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$300, %edx              # imm = 0x12C
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	xorl	%edi, %edi
	callq	gtk_button_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_button_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_button_box_set_layout
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%edi, %edi
	movl	$5, %esi
	callq	gtk_box_new
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	%rax, -120(%rbp)
	movq	%r9, %rdi
	movq	%r9, %rsi
	callq	gimp_image_combo_box_new
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	optimize+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
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
	callq	gtk_box_pack_end
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	optimize, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	optimize+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movabsq	$.L.str.45, %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show_all
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rsi
	movabsq	$choose_file_call, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rsi
	movabsq	$add_image_call, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rsi
	movabsq	$del_image_call, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	model, %rcx
	movq	%rcx, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rsi
	movabsq	$remove_call, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	movq	-544(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	movl	%eax, -140(%rbp)
	callq	get_image_list
	andl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -152(%rbp)
	movq	file_name, %rdi
	movq	-152(%rbp), %rsi
	callq	g_stpcpy
	movq	-72(%rbp), %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, optimize+4
	movq	-64(%rbp), %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, optimize
	movq	-80(%rbp), %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, optimize+8
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-140(%rbp), %eax
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gui_multi, .Lfunc_end5-gui_multi
	.cfi_endproc

	.align	16, 0x90
	.type	write_func,@function
write_func:                             # @write_func
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	fwrite
	movl	$11, %r8d
	xorl	%r9d, %r9d
	movl	-20(%rbp), %r10d
	movl	%r10d, %ecx
	cmpq	%rcx, %rax
	cmovel	%r9d, %r8d
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	write_func, .Lfunc_end6-write_func
	.cfi_endproc

	.align	16, 0x90
	.type	get_drawable_image,@function
get_drawable_image:                     # @get_drawable_image
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
	subq	$1040, %rsp             # imm = 0x410
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_drawable_type
	xorl	%esi, %esi
	movl	$768, %edi              # imm = 0x300
	movl	%edi, %edx
	leaq	-880(%rbp), %rcx
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %r8
	movl	4(%r8), %eax
	movl	%eax, -108(%rbp)
	movq	-16(%rbp), %r8
	movl	8(%r8), %eax
	movl	%eax, -112(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movl	$0, -908(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -912(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, -908(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_item_get_image
	leaq	-924(%rbp), %rsi
	movl	%eax, %edi
	callq	gimp_image_get_colormap
	leaq	-880(%rbp), %rsi
	movq	%rax, -920(%rbp)
	movq	-920(%rbp), %rax
	imull	$3, -924(%rbp), %edi
	movslq	%edi, %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-920(%rbp), %rdi
	callq	g_free
.LBB7_2:                                # %if.end
	movl	-912(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	movl	%eax, -964(%rbp)        # 4-byte Spill
	ja	.LBB7_9
# BB#33:                                # %if.end
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_3:                                # %sw.bb
	cmpl	$0, -908(%rbp)
	jne	.LBB7_5
# BB#4:                                 # %if.then.8
	movl	$1, -104(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movl	$1, -104(%rbp)
.LBB7_6:                                # %if.end.9
	jmp	.LBB7_11
.LBB7_7:                                # %sw.bb.10
	movl	$1, -104(%rbp)
	jmp	.LBB7_11
.LBB7_8:                                # %sw.bb.11
	movl	$0, -104(%rbp)
	jmp	.LBB7_11
.LBB7_9:                                # %sw.default
	jmp	.LBB7_10
.LBB7_10:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.57, %rsi
	movl	$1336, %edx             # imm = 0x538
	movabsq	$.L__func__.get_drawable_image, %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-976(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-984(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB7_11:                               # %sw.epilog
	movl	-104(%rbp), %edi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	callq	cairo_image_surface_create
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	cairo_surface_status
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB7_16
# BB#12:                                # %if.then.15
	movl	-100(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -988(%rbp)        # 4-byte Spill
	jne	.LBB7_14
	jmp	.LBB7_13
.LBB7_13:                               # %sw.bb.16
	movabsq	$.L.str.58, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	jmp	.LBB7_15
.LBB7_14:                               # %sw.default.18
	movq	-24(%rbp), %rdi
	movl	-100(%rbp), %eax
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	callq	cairo_status_to_string
	movl	$1, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.59, %rcx
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB7_15:                               # %sw.epilog.20
	movq	$0, -8(%rbp)
	jmp	.LBB7_32
.LBB7_16:                               # %if.end.21
	movq	-96(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -888(%rbp)
	movq	-96(%rbp), %rdi
	callq	cairo_image_surface_get_stride
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -892(%rbp)
	movq	-16(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -904(%rbp)
.LBB7_17:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	cmpq	$0, -904(%rbp)
	je	.LBB7_31
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -936(%rbp)
	movq	-888(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	-892(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-56(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -944(%rbp)
	movl	$0, -948(%rbp)
.LBB7_19:                               # %for.cond.32
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-948(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_29
# BB#20:                                # %for.body.35
                                        #   in Loop: Header=BB7_19 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
	ja	.LBB7_27
# BB#34:                                # %for.body.35
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_21:                               # %sw.bb.36
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_rgb_to_rgb
	jmp	.LBB7_27
.LBB7_22:                               # %sw.bb.37
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_rgba_to_rgba
	jmp	.LBB7_27
.LBB7_23:                               # %sw.bb.39
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_gray_to_rgb
	jmp	.LBB7_27
.LBB7_24:                               # %sw.bb.41
                                        #   in Loop: Header=BB7_19 Depth=2
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_graya_to_rgba
	jmp	.LBB7_27
.LBB7_25:                               # %sw.bb.43
                                        #   in Loop: Header=BB7_19 Depth=2
	leaq	-880(%rbp), %rcx
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_indexed_to_rgb
	jmp	.LBB7_27
.LBB7_26:                               # %sw.bb.45
                                        #   in Loop: Header=BB7_19 Depth=2
	leaq	-880(%rbp), %rcx
	movq	-936(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	convert_from_indexeda_to_rgba
.LBB7_27:                               # %sw.epilog.48
                                        #   in Loop: Header=BB7_19 Depth=2
	movl	-60(%rbp), %eax
	movq	-936(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -936(%rbp)
	movl	-892(%rbp), %eax
	movq	-944(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -944(%rbp)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB7_19 Depth=2
	movl	-948(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -948(%rbp)
	jmp	.LBB7_19
.LBB7_29:                               # %for.end
                                        #   in Loop: Header=BB7_17 Depth=1
	jmp	.LBB7_30
.LBB7_30:                               # %for.inc.53
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	-904(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -904(%rbp)
	jmp	.LBB7_17
.LBB7_31:                               # %for.end.55
	movq	-96(%rbp), %rdi
	callq	cairo_surface_mark_dirty
	movq	-96(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB7_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$1040, %rsp             # imm = 0x410
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_drawable_image, .Lfunc_end7-get_drawable_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_3
	.quad	.LBB7_8
	.quad	.LBB7_7
	.quad	.LBB7_8
.LJTI7_1:
	.quad	.LBB7_21
	.quad	.LBB7_22
	.quad	.LBB7_23
	.quad	.LBB7_24
	.quad	.LBB7_25
	.quad	.LBB7_26

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_layer_color,@function
get_layer_color:                        # @get_layer_color
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movq	%rdi, %rax
	xorps	%xmm0, %xmm0
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%ecx, -156(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movl	-156(%rbp), %ecx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB8_9
.LBB8_2:                                # %if.end
	movq	-32(%rbp), %rax
	cmpl	$3, 12(%rax)
	jb	.LBB8_4
# BB#3:                                 # %if.then.1
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$255, %ecx
	leaq	-80(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	-128(%rbp), %rax
	leaq	-136(%rbp), %rdi
	leaq	-144(%rbp), %r10
	leaq	-152(%rbp), %r11
	movl	-156(%rbp), %ebx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	gimp_histogram
	movl	$2, %esi
	xorl	%edx, %edx
	movl	$255, %ecx
	leaq	-88(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	-128(%rbp), %r10
	leaq	-136(%rbp), %r11
	leaq	-144(%rbp), %r14
	leaq	-152(%rbp), %r15
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-156(%rbp), %edi
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 24(%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_histogram
	movl	$3, %esi
	xorl	%edx, %edx
	movl	$255, %ecx
	leaq	-96(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	-128(%rbp), %r10
	leaq	-136(%rbp), %r11
	leaq	-144(%rbp), %r14
	leaq	-152(%rbp), %r15
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-156(%rbp), %edi
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 24(%rsp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_histogram
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	xorl	%eax, %eax
	movl	$255, %ecx
	leaq	-80(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	leaq	-152(%rbp), %r10
	movl	-156(%rbp), %r11d
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movl	%r11d, %edi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-216(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-208(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_histogram
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB8_5:                                # %if.end.9
	movl	-156(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB8_7
# BB#6:                                 # %if.then.12
	movl	$4, %esi
	xorl	%edx, %edx
	movl	$255, %ecx
	leaq	-104(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	-128(%rbp), %rax
	leaq	-136(%rbp), %rdi
	leaq	-144(%rbp), %r10
	leaq	-152(%rbp), %r11
	movl	-156(%rbp), %ebx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movq	%rax, (%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	gimp_histogram
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.14
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
.LBB8_8:                                # %if.end.15
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	addsd	-120(%rbp), %xmm2
	movsd	%xmm2, -120(%rbp)
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	sete	%al
	setnp	%cl
	andb	%cl, %al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-40(%rbp), %rsi
	movl	%edx, (%rsi)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-72(%rbp), %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-64(%rbp), %rsi
	movq	%rsi, 8(%rdi)
	movq	-56(%rbp), %rsi
	movq	%rsi, 16(%rdi)
	movq	-48(%rbp), %rsi
	movq	%rsi, 24(%rdi)
.LBB8_9:                                # %return
	movq	-176(%rbp), %rax        # 8-byte Reload
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_layer_color, .Lfunc_end8-get_layer_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	drawText,@function
drawText:                               # @drawText
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_text
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_markup
	movq	%rax, -64(%rbp)
	callq	pango_attr_list_new
	movq	%rax, -224(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_save
	callq	cairo_font_options_create
	movq	%rax, -80(%rbp)
	callq	pango_attr_list_new
	movq	%rax, -224(%rbp)
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	cairo_get_font_options
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movl	-44(%rbp), %edi
	callq	gimp_drawable_offsets
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	cairo_move_to
	cmpl	$1, -48(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	leaq	-120(%rbp), %rsi
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_color
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movl	-44(%rbp), %edi
	callq	gimp_item_get_image
	xorl	%edi, %edi
	xorps	%xmm2, %xmm2
	leaq	-120(%rbp), %r8
	movl	-44(%rbp), %esi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	movl	%edi, -244(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	-244(%rbp), %edx        # 4-byte Reload
	movl	-244(%rbp), %ecx        # 4-byte Reload
	callq	gimp_image_pick_color
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB9_3:                                # %if.end
	movq	-24(%rbp), %rdi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cairo_set_source_rgba
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_hint_style
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	ja	.LBB9_8
# BB#31:                                # %if.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_4:                                # %sw.bb
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
	jmp	.LBB9_8
.LBB9_5:                                # %sw.bb.15
	movl	$2, %esi
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
	jmp	.LBB9_8
.LBB9_6:                                # %sw.bb.16
	movl	$3, %esi
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
	jmp	.LBB9_8
.LBB9_7:                                # %sw.bb.17
	movl	$4, %esi
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_set_hint_style
.LBB9_8:                                # %sw.epilog
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_antialias
	cmpl	$0, %eax
	je	.LBB9_10
# BB#9:                                 # %if.then.19
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_set_antialias
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.20
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_set_antialias
.LBB9_11:                               # %if.end.21
	movl	$1, %edi
	callq	pango_cairo_font_map_new_for_font_type
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	pango_cairo_font_map_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	pango_cairo_font_map_set_resolution
	movq	-232(%rbp), %rdi
	callq	pango_font_map_create_context
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-176(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pango_cairo_context_set_font_options
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_base_direction
	movl	%eax, -156(%rbp)
	cmpl	$1, -156(%rbp)
	jne	.LBB9_13
# BB#12:                                # %if.then.29
	movl	$1, -160(%rbp)
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.30
	movl	$0, -160(%rbp)
.LBB9_14:                               # %if.end.31
	movq	-176(%rbp), %rdi
	movl	-160(%rbp), %esi
	callq	pango_context_set_base_dir
	movq	-176(%rbp), %rdi
	callq	pango_layout_new
	movl	$2, %esi
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	pango_layout_set_wrap
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_font
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	pango_font_description_from_string
	leaq	-124(%rbp), %rsi
	movq	%rax, -184(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_font_size
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-124(%rbp), %edi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_pixels
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movq	-184(%rbp), %rdi
	mulsd	-136(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	pango_font_description_set_absolute_size
	movq	-168(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	pango_layout_set_font_description
	movq	-168(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	shll	$10, %ecx
	movl	%ecx, %esi
	callq	pango_layout_set_width
	movl	$0, -148(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_justification
	movl	%eax, -144(%rbp)
	cmpl	$2, -144(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.41
	movl	$1, -152(%rbp)
	jmp	.LBB9_26
.LBB9_16:                               # %if.else.42
	cmpl	$0, -144(%rbp)
	jne	.LBB9_18
# BB#17:                                # %if.then.45
	movl	$0, -152(%rbp)
	jmp	.LBB9_25
.LBB9_18:                               # %if.else.46
	cmpl	$1, -144(%rbp)
	jne	.LBB9_20
# BB#19:                                # %if.then.49
	movl	$2, -152(%rbp)
	jmp	.LBB9_24
.LBB9_20:                               # %if.else.50
	cmpl	$0, -156(%rbp)
	jne	.LBB9_22
# BB#21:                                # %if.then.53
	movl	$0, -152(%rbp)
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.54
	movl	$2, -152(%rbp)
.LBB9_23:                               # %if.end.55
	movl	$1, -148(%rbp)
.LBB9_24:                               # %if.end.56
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.57
	jmp	.LBB9_26
.LBB9_26:                               # %if.end.58
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_indent
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movq	-168(%rbp), %rdi
	mulsd	-192(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	callq	pango_layout_set_indent
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_line_spacing
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movq	-168(%rbp), %rdi
	mulsd	-200(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	callq	pango_layout_set_spacing
	movl	-44(%rbp), %edi
	callq	gimp_text_layer_get_letter_spacing
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	mulsd	-208(%rbp), %xmm1
	cvttsd2si	%xmm1, %edi
	callq	pango_attr_letter_spacing_new
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-168(%rbp), %rdi
	movl	-148(%rbp), %esi
	callq	pango_layout_set_justify
	movq	-168(%rbp), %rdi
	movl	-152(%rbp), %esi
	callq	pango_layout_set_alignment
	movq	-168(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	pango_layout_set_attributes
	cmpq	$0, -64(%rbp)
	je	.LBB9_29
# BB#27:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB9_29
# BB#28:                                # %if.then.74
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	pango_layout_set_markup
	jmp	.LBB9_30
.LBB9_29:                               # %if.else.75
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-168(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_layout_set_text
.LBB9_30:                               # %if.end.76
	movq	-24(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	pango_cairo_show_layout
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-184(%rbp), %rdi
	callq	pango_font_description_free
	movq	-176(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-224(%rbp), %rdi
	callq	pango_attr_list_unref
	movq	-80(%rbp), %rdi
	callq	cairo_font_options_destroy
	movq	-24(%rbp), %rdi
	callq	cairo_restore
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end9:
	.size	drawText, .Lfunc_end9-drawText
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7

	.text
	.align	16, 0x90
	.type	init_image_list_defaults,@function
init_image_list_defaults:               # @init_image_list_defaults
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
	movl	%edi, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, multi_page
	movl	$1, multi_page+1400
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movl	$0, multi_page+1400
.LBB10_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end10:
	.size	init_image_list_defaults, .Lfunc_end10-init_image_list_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	validate_image_list,@function
validate_image_list:                    # @validate_image_list
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -8(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$350, -8(%rbp)          # imm = 0x15E
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jae	.LBB11_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	multi_page+1400, %eax
	setb	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB11_3:                               # %land.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_8
.LBB11_4:                               # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	multi_page(,%rcx,4), %edi
	callq	gimp_image_is_valid
	cmpl	$0, %eax
	je	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	multi_page(,%rcx,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, multi_page(,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB11_1
.LBB11_8:                               # %for.end
	movl	-4(%rbp), %eax
	movl	%eax, multi_page+1400
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	validate_image_list, .Lfunc_end11-validate_image_list
	.cfi_endproc

	.align	16, 0x90
	.type	create_model,@function
create_model:                           # @create_model
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
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
	movl	multi_page, %eax
	movl	%eax, -64(%rbp)
	callq	gdk_pixbuf_get_type
	movl	$4, %edi
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$24, %ecx
	movl	%ecx, %r8d
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -24(%rbp)
	movl	$0, -60(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	cmpl	multi_page+1400, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jae	.LBB12_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpl	$350, -60(%rbp)         # imm = 0x15E
	setb	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB12_3:                               # %land.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_6
.LBB12_4:                               # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-56(%rbp), %rsi
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	movl	multi_page(,%rcx,4), %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_list_store_append
	movl	$90, %esi
	movl	$120, %edx
	movl	$1, %ecx
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %eax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_image_get_thumbnail
	movabsq	$.L.str.55, %rdi
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	g_strdup_printf
	movl	-64(%rbp), %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_name
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$3, %edi
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	-64(%rbp), %r10d
	movq	-88(%rbp), %r11         # 8-byte Reload
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movq	-104(%rbp), %r14        # 8-byte Reload
	movl	%r9d, -116(%rbp)        # 4-byte Spill
	movq	%r14, %r9
	movl	$2, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	$-1, 32(%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	create_model, .Lfunc_end12-create_model
	.cfi_endproc

	.align	16, 0x90
	.type	choose_file_call,@function
choose_file_call:                       # @choose_file_call
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_file_new_for_path
	movq	%rax, -24(%rbp)
	movq	file_choose, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_file_get_uri
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_chooser_set_uri
	movq	file_choose, %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	file_choose, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_file
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_file_get_path
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_file_get_path
	movq	%rax, file_name
	movq	file_choose, %rdi
	callq	gtk_widget_hide
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	choose_file_call, .Lfunc_end13-choose_file_call
	.cfi_endproc

	.align	16, 0x90
	.type	add_image_call,@function
add_image_call:                         # @add_image_call
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
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
	leaq	-76(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, dnd_remove
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gimp_int_combo_box_get_active
	movq	model, %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_list_store_append
	movabsq	$.L.str.55, %rdi
	movq	-40(%rbp), %rax
	movl	multi_page+1400, %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	g_strdup_printf
	movl	$90, %esi
	movl	$120, %edx
	movl	$1, %ecx
	movl	-76(%rbp), %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_thumbnail
	movl	-76(%rbp), %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_name
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	$2, %ecx
	movl	$3, %edi
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	-76(%rbp), %r10d
	movq	-96(%rbp), %r11         # 8-byte Reload
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movq	-112(%rbp), %r14        # 8-byte Reload
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movq	%r14, %r9
	movl	$2, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	$-1, 32(%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movl	multi_page+1400, %edx
	addl	$1, %edx
	movl	%edx, multi_page+1400
	movl	$1, dnd_remove
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	add_image_call, .Lfunc_end14-add_image_call
	.cfi_endproc

	.align	16, 0x90
	.type	del_image_call,@function
del_image_call:                         # @del_image_call
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, dnd_remove
	movq	-16(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_icon_view_get_selected_items
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jbe	.LBB15_10
# BB#1:                                 # %if.then
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	leaq	15(,%rcx,8), %rcx
	movabsq	$68719476720, %rdx      # imm = 0xFFFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -32(%rbp)
	movl	$0, -76(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB15_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-24(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	g_list_nth_data
	movq	%rax, -88(%rbp)
	movq	model, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	gtk_tree_row_reference_new
	movl	-76(%rbp), %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_tree_path_free
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB15_2
.LBB15_5:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	movl	$0, -76(%rbp)
.LBB15_6:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB15_9
# BB#7:                                 # %for.body.11
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	gtk_tree_row_reference_get_path
	leaq	-72(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	model, %rdi
	movq	-40(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$2, %r8d
	leaq	-112(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	model, %rdi
	subq	$16, %rsp
	movl	$-1, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get
	addq	$16, %rsp
	movq	model, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	callq	gtk_tree_row_reference_free
	movl	multi_page+1400, %eax
	addl	$-1, %eax
	movl	%eax, multi_page+1400
# BB#8:                                 # %for.inc.21
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB15_6
.LBB15_9:                               # %for.end.23
	jmp	.LBB15_10
.LBB15_10:                              # %if.end
	movl	$1, dnd_remove
	callq	recount_pages
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	del_image_call, .Lfunc_end15-del_image_call
	.cfi_endproc

	.align	16, 0x90
	.type	remove_call,@function
remove_call:                            # @remove_call
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, dnd_remove
	je	.LBB16_2
# BB#1:                                 # %if.then
	callq	recount_pages
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	remove_call, .Lfunc_end16-remove_call
	.cfi_endproc

	.align	16, 0x90
	.type	get_image_list,@function
get_image_list:                         # @get_image_list
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
	subq	$64, %rsp
	leaq	-40(%rbp), %rsi
	movq	model, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -44(%rbp)
	movl	$0, multi_page+1400
	cmpl	$0, -44(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movl	$0, -4(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB17_6
.LBB17_2:                               # %if.end
	jmp	.LBB17_3
.LBB17_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB17_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	-40(%rbp), %rsi
	movl	$3, %edx
	leaq	-48(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	model, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-40(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	multi_page+1400, %r8d
	movl	%r8d, %ecx
	movl	%edx, multi_page(,%rcx,4)
	movq	model, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -44(%rbp)
	movl	multi_page+1400, %eax
	addl	$1, %eax
	movl	%eax, multi_page+1400
	jmp	.LBB17_3
.LBB17_5:                               # %while.end
	movl	$1, -4(%rbp)
.LBB17_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	get_image_list, .Lfunc_end17-get_image_list
	.cfi_endproc

	.align	16, 0x90
	.type	recount_pages,@function
recount_pages:                          # @recount_pages
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
	subq	$64, %rsp
	movl	$0, -48(%rbp)
	movq	model, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -8(%rbp)
	movq	model, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -44(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB18_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$.L.str.55, %rdi
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	leaq	-40(%rbp), %rsi
	movq	model, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB18_1
.LBB18_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	recount_pages, .Lfunc_end18-recount_pages
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_rgb_to_rgb,@function
convert_from_rgb_to_rgb:                # @convert_from_rgb_to_rgb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB19_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_3
.LBB19_3:                               # %do.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rax
	movb	2(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB19_1
.LBB19_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end19:
	.size	convert_from_rgb_to_rgb, .Lfunc_end19-convert_from_rgb_to_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_rgba_to_rgba,@function
convert_from_rgba_to_rgba:              # @convert_from_rgba_to_rgba
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB20_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_3
.LBB20_3:                               # %do.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	shrl	$8, %ecx
	addl	-32(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movl	-28(%rbp), %ecx
	shrl	$8, %ecx
	addl	-28(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-24(%rbp), %ecx
	shrl	$8, %ecx
	addl	-24(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	3(%rax), %sil
	movq	-16(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB20_1
.LBB20_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end20:
	.size	convert_from_rgba_to_rgba, .Lfunc_end20-convert_from_rgba_to_rgba
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_gray_to_rgb,@function
convert_from_gray_to_rgb:               # @convert_from_gray_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB21_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_3
.LBB21_3:                               # %do.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB21_1
.LBB21_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end21:
	.size	convert_from_gray_to_rgb, .Lfunc_end21-convert_from_gray_to_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_graya_to_rgba,@function
convert_from_graya_to_rgba:             # @convert_from_graya_to_rgba
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB22_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_3
.LBB22_3:                               # %do.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	shrl	$8, %ecx
	addl	-32(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movl	-28(%rbp), %ecx
	shrl	$8, %ecx
	addl	-28(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-24(%rbp), %ecx
	shrl	$8, %ecx
	addl	-24(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %sil
	movq	-16(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB22_1
.LBB22_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end22:
	.size	convert_from_graya_to_rgba, .Lfunc_end22-convert_from_graya_to_rgba
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_indexed_to_rgb,@function
convert_from_indexed_to_rgb:            # @convert_from_indexed_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB23_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -36(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	%sil, 2(%rcx)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB23_1
.LBB23_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end23:
	.size	convert_from_indexed_to_rgb, .Lfunc_end23-convert_from_indexed_to_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	convert_from_indexeda_to_rgba,@function
convert_from_indexeda_to_rgba:          # @convert_from_indexeda_to_rgba
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB24_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -36(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	-36(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	$128, %ecx
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %ecx
	shrl	$8, %ecx
	addl	-48(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %rax
	movb	%dil, (%rax)
	movl	-44(%rbp), %ecx
	shrl	$8, %ecx
	addl	-44(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %rax
	movb	%dil, 1(%rax)
	movl	-40(%rbp), %ecx
	shrl	$8, %ecx
	addl	-40(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %rax
	movb	%dil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	1(%rax), %dil
	movq	-16(%rbp), %rax
	movb	%dil, 3(%rax)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB24_1
.LBB24_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end24:
	.size	convert_from_indexeda_to_rgba, .Lfunc_end24-convert_from_indexeda_to_rgba
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.data
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.save_args,@object # @query.save_args
	.align	16
query.save_args:
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.size	query.save_args, 192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Run mode"
	.size	.L.str.1, 9

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
	.asciz	"filename"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"raw-filename"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vectorize"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Convert bitmaps to vector graphics where possible. TRUE or FALSE"
	.size	.L.str.10, 65

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ignore-hidden"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Omit hidden layers and layers with zero opacity. TRUE or FALSE"
	.size	.L.str.12, 63

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"apply-masks"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Apply layer masks before saving. TRUE or FALSE (Keeping them will not change the output)"
	.size	.L.str.14, 89

	.type	query.save_multi_args,@object # @query.save_multi_args
	.data
	.align	16
query.save_multi_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.7
	.size	query.save_multi_args, 192

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"images"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Input image for each page (An image can appear more than once)"
	.size	.L.str.16, 63

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"count"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The amount of images entered (This will be the amount of pages). 1 <= count <= MAX_PAGE_COUNT"
	.size	.L.str.18, 94

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"file-pdf-save"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Save files in PDF format"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Saves files in Adobe's Portable Document Format. PDF is designed to be easily processed by a variety of different platforms, and is a distant cousin of PostScript."
	.size	.L.str.21, 164

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Barak Itkin"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Copyright Barak Itkin"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"August 2009"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Portable Document Format"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"file-pdf-save-multi"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Create multipage PDF..."
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"application/pdf"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"pdf"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.zero	1
	.size	.L.str.31, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"UTF-8"
	.size	.L.str.33, 6

	.type	multi_page,@object      # @multi_page
	.local	multi_page
	.comm	multi_page,1756,4
	.type	file_name,@object       # @file_name
	.local	file_name
	.comm	file_name,8,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"You must select a file to save!"
	.size	.L.str.34, 32

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"wb"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.36, 36

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"An error occured while creating the PDF file:\n%s\nMake sure you entered a valid filename and that the selected location isn't read only!"
	.size	.L.str.37, 136

	.type	optimize,@object        # @optimize
	.data
	.align	4
optimize:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	optimize, 12

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"file-pdf-data-optimize"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"file-pdf-data-multi-page"
	.size	.L.str.39, 25

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"PDF"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-file-pdf-save"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Omit hidden layers and layers with zero opacity"
	.size	.L.str.42, 48

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Convert bitmaps to vector graphics where possible"
	.size	.L.str.43, 50

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Apply layer masks before saving"
	.size	.L.str.44, 32

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Keeping the masks will not change the output"
	.size	.L.str.45, 45

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Save to:"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Browse..."
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Multipage PDF export"
	.size	.L.str.48, 21

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gtk-save"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gtk-cancel"
	.size	.L.str.50, 11

	.type	file_choose,@object     # @file_choose
	.local	file_choose
	.comm	file_choose,8,8
	.type	model,@object           # @model
	.local	model
	.comm	model,8,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Remove the selected pages"
	.size	.L.str.51, 26

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Add this image"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"clicked"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"row-deleted"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Page %d"
	.size	.L.str.55, 8

	.type	dnd_remove,@object      # @dnd_remove
	.data
	.align	4
dnd_remove:
	.long	1                       # 0x1
	.size	dnd_remove, 4

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"Error! In order to save the file, at least one image should be added!"
	.size	.L.str.56, 70

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"file-pdf-save.c"
	.size	.L.str.57, 16

	.type	.L__func__.get_drawable_image,@object # @__func__.get_drawable_image
.L__func__.get_drawable_image:
	.asciz	"get_drawable_image"
	.size	.L__func__.get_drawable_image, 19

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Cannot handle the size (either width or height) of the image."
	.size	.L.str.58, 62

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Cairo error: %s"
	.size	.L.str.59, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
