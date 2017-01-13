	.text
	.file	"gfig.bc"
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
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.53, %r9
	movabsq	$.L.str.54, %rcx
	movabsq	$.L.str.55, %r8
	movl	$1, %r10d
	movl	$4, %r11d
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
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.56, %rsi
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.57, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.57, %rdi
	movabsq	$.L.str.58, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.57, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$344, %eax              # imm = 0x158
	movl	%eax, %esi
	callq	g_malloc0_n
	movabsq	$run.values, %rsi
	movq	%rax, gfig_context
	movq	gfig_context, %rax
	movl	$1, 4(%rax)
	movq	gfig_context, %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movq	gfig_context, %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movq	gfig_context, %rax
	movl	%ecx, 12(%rax)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, (%rax)
	movl	$21, run.values
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8
	movq	gfig_context, %rax
	movl	8(%rax), %edi
	callq	gimp_image_undo_group_start
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_context_push
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	gfig_context, %rax
	movl	8(%rax), %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movq	gfig_context, %rax
	movl	8(%rax), %edi
	callq	gimp_selection_none
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_4:                                # %if.end
	movabsq	$sel_x1, %rsi
	movabsq	$sel_y1, %rdx
	movabsq	$sel_x2, %rcx
	movabsq	$sel_y2, %r8
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	sel_x2, %edi
	subl	sel_x1, %edi
	movl	%edi, sel_width
	movl	sel_y2, %edi
	subl	sel_y1, %edi
	movl	%edi, sel_height
	movl	sel_width, %edi
	cmpl	sel_height, %edi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jle	.LBB1_9
# BB#5:                                 # %if.then.23
	cmpl	$400, sel_width         # imm = 0x190
	jge	.LBB1_7
# BB#6:                                 # %cond.true
	movl	sel_width, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	movl	$400, %eax              # imm = 0x190
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	sel_height, %eax
	imull	-60(%rbp), %eax
	cltd
	idivl	sel_width
	movl	%eax, -64(%rbp)
	jmp	.LBB1_13
.LBB1_9:                                # %if.else
	cmpl	$400, sel_height        # imm = 0x190
	jge	.LBB1_11
# BB#10:                                # %cond.true.26
	movl	sel_height, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.27
	movl	$400, %eax              # imm = 0x190
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               # %cond.end.28
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	sel_width, %eax
	imull	-64(%rbp), %eax
	cltd
	idivl	sel_height
	movl	%eax, -60(%rbp)
.LBB1_13:                               # %if.end.32
	cmpl	$2, -60(%rbp)
	jle	.LBB1_15
# BB#14:                                # %cond.true.34
	movl	-60(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.35
	movl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               # %cond.end.36
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, preview_width
	cmpl	$2, -64(%rbp)
	jle	.LBB1_18
# BB#17:                                # %cond.true.39
	movl	-64(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.40
	movl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_19:                               # %cond.end.41
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, preview_height(%rip)
	cvtsi2sdl	sel_width(%rip), %xmm0
	cvtsi2sdl	preview_width(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, scale_x_factor(%rip)
	movsd	%xmm0, org_scale_x_factor(%rip)
	cvtsi2sdl	sel_height(%rip), %xmm0
	cvtsi2sdl	preview_height(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, scale_y_factor(%rip)
	movsd	%xmm0, org_scale_y_factor(%rip)
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	%edx, %ecx
	movl	%eax, %esi
	leal	-1(%rcx,%rsi), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-128(%rbp), %edi        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	movl	-132(%rbp), %r8d        # 4-byte Reload
	divl	%r8d
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	callq	gfig_init_object_classes
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB1_20
	jmp	.LBB1_30
.LBB1_30:                               # %cond.end.41
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_31
.LBB1_31:                               # %cond.end.41
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jne	.LBB1_24
	jmp	.LBB1_20
.LBB1_20:                               # %sw.bb
	callq	gfig_dialog
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %if.then.55
	movq	gfig_drawable, %rdi
	callq	gimp_drawable_detach
	movq	gfig_context, %rdi
	movl	8(%rdi), %edi
	callq	gimp_image_undo_group_end
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB1_29
.LBB1_22:                               # %if.end.58
	jmp	.LBB1_25
.LBB1_23:                               # %sw.bb.59
	movl	$1, -56(%rbp)
	jmp	.LBB1_25
.LBB1_24:                               # %sw.default
	jmp	.LBB1_25
.LBB1_25:                               # %sw.epilog
	callq	gimp_context_pop
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	cmpl	$1, -52(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB1_27
# BB#26:                                # %if.then.65
	callq	gimp_displays_flush
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.67
	movl	$0, -56(%rbp)
.LBB1_28:                               # %if.end.68
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_29:                               # %return
	addq	$160, %rsp
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

	.globl	gfig_name_encode
	.align	16, 0x90
	.type	gfig_name_encode,@function
gfig_name_encode:                       # @gfig_name_encode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$255, -20(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB3_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -21(%rbp)          # 1-byte Spill
.LBB3_3:                                # %land.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_10
.LBB3_4:                                # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB3_7
# BB#6:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB3_8
.LBB3_7:                                # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str, %rsi
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
	jmp	.LBB3_9
.LBB3_8:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_9:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_10:                               # %while.end
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gfig_name_encode, .Lfunc_end3-gfig_name_encode
	.cfi_endproc

	.globl	gfig_name_decode
	.align	16, 0x90
	.type	gfig_name_decode,@function
gfig_name_decode:                       # @gfig_name_decode
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
	movl	$255, -20(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	setne	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_11
.LBB4_4:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB4_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
# BB#6:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movabsq	$.L.str.1, %rsi
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
	jmp	.LBB4_10
.LBB4_9:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
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
.LBB4_10:                               # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_1
.LBB4_11:                               # %while.end
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gfig_name_decode, .Lfunc_end4-gfig_name_decode
	.cfi_endproc

	.globl	gfig_list_pos
	.align	16, 0x90
	.type	gfig_list_pos,@function
gfig_list_pos:                          # @gfig_list_pos
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	gfig_list, %rdi
	movq	%rdi, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jg	.LBB5_4
# BB#3:                                 # %if.then
	jmp	.LBB5_9
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gfig_list_pos, .Lfunc_end5-gfig_list_pos
	.cfi_endproc

	.globl	gfig_list_insert
	.align	16, 0x90
	.type	gfig_list_insert,@function
gfig_list_insert:                       # @gfig_list_insert
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gfig_list_pos
	movl	%eax, -12(%rbp)
	movq	gfig_list, %rdi
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rcx, %rsi
	callq	g_list_insert
	movq	%rax, gfig_list
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gfig_list_insert, .Lfunc_end6-gfig_list_insert
	.cfi_endproc

	.globl	gfig_free
	.align	16, 0x90
	.type	gfig_free,@function
gfig_free:                              # @gfig_free
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$356, %edx              # imm = 0x164
	movabsq	$.L__func__.gfig_free, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	free_all_objs
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gfig_free, .Lfunc_end7-gfig_free
	.cfi_endproc

	.globl	gfig_new
	.align	16, 0x90
	.type	gfig_new,@function
gfig_new:                               # @gfig_new
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
	movl	$1, %eax
	movl	%eax, %edi
	movl	$136, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gfig_new, .Lfunc_end8-gfig_new
	.cfi_endproc

	.globl	gfig_load
	.align	16, 0x90
	.type	gfig_load,@function
gfig_load:                              # @gfig_load
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
	subq	$736, %rsp              # imm = 0x2E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -568(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$424, %edx              # imm = 0x1A8
	movabsq	$.L__func__.gfig_load, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	-656(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB9_21
.LBB9_7:                                # %if.end.6
	callq	gfig_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$256, %esi              # imm = 0x100
	movl	$1, %ecx
	leaq	-304(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.7, %rsi
	leaq	-576(%rbp), %r8
	leaq	-640(%rbp), %rcx
	leaq	-608(%rbp), %rdx
	leaq	-304(%rbp), %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	leaq	-608(%rbp), %rdi
	movl	$.L.str.8, %r9d
	movl	%r9d, %esi
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_9
# BB#8:                                 # %lor.lhs.false
	leaq	-640(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_10
.LBB9_9:                                # %if.then.23
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	gfig_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_10:                               # %if.end.27
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-304(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.11, %rsi
	leaq	-560(%rbp), %rdx
	leaq	-304(%rbp), %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	leaq	-560(%rbp), %rsi
	leaq	-304(%rbp), %rdi
	movl	%eax, -684(%rbp)        # 4-byte Spill
	callq	gfig_name_decode
	leaq	-304(%rbp), %rdi
	callq	g_strdup
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-304(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.12, %rsi
	movl	$9, %ecx
	movl	%ecx, %edx
	leaq	-304(%rbp), %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_12
# BB#11:                                # %if.then.42
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rcx
	addq	$9, %rcx
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	cvtsd2ss	%xmm0, %xmm0
	movq	-32(%rbp), %rcx
	movss	%xmm0, 24(%rcx)
.LBB9_12:                               # %if.end.46
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-304(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.13, %rsi
	leaq	-568(%rbp), %rdx
	leaq	-304(%rbp), %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -708(%rbp)        # 4-byte Spill
	callq	load_options
	cmpl	$0, %eax
	je	.LBB9_14
# BB#13:                                # %if.then.53
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.14, %rdi
	movl	line_no, %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	gfig_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_14:                               # %if.end.56
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gfig_load_styles
	cmpl	$0, %eax
	je	.LBB9_16
# BB#15:                                # %if.then.59
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.14, %rdi
	movl	line_no, %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	gfig_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_16:                               # %if.end.62
	movq	-32(%rbp), %rdi
	movl	-568(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	gfig_load_objs
	movq	-32(%rbp), %rdx
	movq	96(%rdx), %rdi
	callq	g_list_length
	movl	%eax, -564(%rbp)
	movl	-564(%rbp), %eax
	cmpl	-568(%rbp), %eax
	je	.LBB9_18
# BB#17:                                # %if.then.66
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.15, %rdi
	movl	line_no, %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	gfig_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_18:                               # %if.end.69
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	gfig_context, %rdi
	cmpq	$0, 16(%rdi)
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jne	.LBB9_20
# BB#19:                                # %if.then.72
	movq	-32(%rbp), %rax
	movq	gfig_context, %rcx
	movq	%rax, 16(%rcx)
.LBB9_20:                               # %if.end.74
	movq	-32(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gfig_load, .Lfunc_end9-gfig_load
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_message, .Lfunc_end10-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	load_options,@function
load_options:                           # @load_options
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
	subq	$848, %rsp              # imm = 0x350
	movl	$256, %eax              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-816(%rbp), %rdx        # 8-byte Reload
	callq	get_line
	leaq	-288(%rbp), %rdi
	movl	$.L.str.60, %ecx
	movl	%ecx, %esi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_2:                               # %if.end
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB11_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-288(%rbp), %rdi
	movl	$.L.str.61, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_41
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movabsq	$.L.str.62, %rsi
	leaq	-800(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	-288(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	leaq	-544(%rbp), %rdi
	movl	$.L.str.63, %r8d
	movl	%r8d, %esi
	movl	%eax, -836(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_8
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movl	$0, -804(%rbp)
	callq	atoi
	movl	%eax, -804(%rbp)
	cmpl	$0, -804(%rbp)
	jg	.LBB11_7
# BB#6:                                 # %if.then.18
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_7:                               # %if.end.19
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-804(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 32(%rcx)
	jmp	.LBB11_40
.LBB11_8:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.64, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_12
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$32, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	load_bool
	cmpl	$0, %eax
	je	.LBB11_11
# BB#10:                                # %if.then.28
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_11:                              # %if.end.29
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_39
.LBB11_12:                              # %if.else.30
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.65, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_16
# BB#13:                                # %if.then.34
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$32, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	callq	load_bool
	cmpl	$0, %eax
	je	.LBB11_15
# BB#14:                                # %if.then.39
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_15:                              # %if.end.40
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_38
.LBB11_16:                              # %if.else.41
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.66, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_20
# BB#17:                                # %if.then.45
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$32, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	load_bool
	cmpl	$0, %eax
	je	.LBB11_19
# BB#18:                                # %if.then.50
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_19:                              # %if.end.51
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_37
.LBB11_20:                              # %if.else.52
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.67, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_24
# BB#21:                                # %if.then.56
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$32, %rax
	addq	$20, %rax
	movq	%rax, %rsi
	callq	load_bool
	cmpl	$0, %eax
	je	.LBB11_23
# BB#22:                                # %if.then.61
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_23:                              # %if.end.62
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_36
.LBB11_24:                              # %if.else.63
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-544(%rbp), %rdi
	movl	$.L.str.68, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_35
# BB#25:                                # %if.then.67
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movl	$.L.str.69, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_27
# BB#26:                                # %if.then.71
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	jmp	.LBB11_34
.LBB11_27:                              # %if.else.73
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movl	$.L.str.70, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_29
# BB#28:                                # %if.then.77
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-16(%rbp), %rax
	movl	$1, 36(%rax)
	jmp	.LBB11_33
.LBB11_29:                              # %if.else.80
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-800(%rbp), %rdi
	movl	$.L.str.71, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_31
# BB#30:                                # %if.then.84
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-16(%rbp), %rax
	movl	$2, 36(%rax)
	jmp	.LBB11_32
.LBB11_31:                              # %if.else.87
	movl	$-1, -4(%rbp)
	jmp	.LBB11_42
.LBB11_32:                              # %if.end.88
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_33
.LBB11_33:                              # %if.end.89
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_34
.LBB11_34:                              # %if.end.90
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_35
.LBB11_35:                              # %if.end.91
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_36
.LBB11_36:                              # %if.end.92
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_37
.LBB11_37:                              # %if.end.93
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_38
.LBB11_38:                              # %if.end.94
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_39
.LBB11_39:                              # %if.end.95
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_40
.LBB11_40:                              # %if.end.96
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB11_3
.LBB11_41:                              # %while.end
	movl	$0, -4(%rbp)
.LBB11_42:                              # %return
	movl	-4(%rbp), %eax
	addq	$848, %rsp              # imm = 0x350
	popq	%rbp
	retq
.Lfunc_end11:
	.size	load_options, .Lfunc_end11-load_options
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_load_objs,@function
gfig_load_objs:                         # @gfig_load_objs
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
	subq	$512, %rsp              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB12_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-288(%rbp), %rdi
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdx
	callq	get_line
	movq	-24(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	ftell
	leaq	-472(%rbp), %rdi
	movq	%rax, -296(%rbp)
	movq	-24(%rbp), %rsi
	callq	gfig_skip_style
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	d_load_object
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	add_to_all_obj
	movq	-24(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movq	%rax, -304(%rbp)
	movq	-24(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	fseek
	movq	-32(%rbp), %rsi
	addq	$32, %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -500(%rbp)        # 4-byte Spill
	callq	gfig_load_style
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-304(%rbp), %rsi
	movl	%eax, -504(%rbp)        # 4-byte Spill
	callq	fseek
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$.L.str.59, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_message
.LBB12_5:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_6:                               # %while.end
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gfig_load_objs, .Lfunc_end12-gfig_load_objs
	.cfi_endproc

	.globl	save_options
	.align	16, 0x90
	.type	save_options,@function
save_options:                           # @save_options
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
	movabsq	$.L.str.16, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	movl	selvals, %edx
	movb	$0, %al
	callq	g_string_append_printf
	cmpl	$0, selvals+4
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB13_9
.LBB13_2:                               # %if.else
	cmpl	$1, selvals+4
	jne	.LBB13_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB13_8
.LBB13_4:                               # %if.else.3
	cmpl	$2, selvals+4
	jne	.LBB13_6
# BB#5:                                 # %if.then.5
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.6
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.7
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.8
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.22, %rcx
	movq	-8(%rbp), %rdi
	cmpl	$0, selvals+8
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.22, %rdx
	movq	-8(%rbp), %rdi
	cmpl	$0, selvals+12
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.22, %rdx
	movq	-8(%rbp), %rdi
	cmpl	$0, selvals+16
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.22, %rdx
	movq	-8(%rbp), %rdi
	cmpl	$0, selvals+20
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	save_options, .Lfunc_end13-save_options
	.cfi_endproc

	.globl	gfig_save_as_string
	.align	16, 0x90
	.type	gfig_save_as_string,@function
gfig_save_as_string:                    # @gfig_save_as_string
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
	subq	$880, %rsp              # imm = 0x370
	movabsq	$.L.str.28, %rdi
	callq	g_string_new
	leaq	-848(%rbp), %rdi
	movq	%rax, -856(%rbp)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rsi
	callq	gfig_name_encode
	movabsq	$.L.str.29, %rsi
	leaq	-848(%rbp), %rdx
	movq	-856(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.31, %rdx
	leaq	-64(%rbp), %rdi
	movq	-856(%rbp), %rcx
	movq	gfig_context, %r8
	movq	16(%r8), %r8
	cvtss2sd	24(%r8), %xmm0
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.30, %rsi
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_list_length
	movabsq	$.L.str.32, %rsi
	movl	%eax, -12(%rbp)
	movq	-856(%rbp), %rdi
	movl	-12(%rbp), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-856(%rbp), %rdi
	callq	save_options
	movq	-856(%rbp), %rdi
	callq	gfig_save_styles
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -8(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB14_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rdi
	movq	-856(%rbp), %rsi
	callq	gfig_save_obj_start
	movq	-864(%rbp), %rax
	addq	$32, %rax
	movq	-856(%rbp), %rsi
	movq	%rax, %rdi
	callq	gfig_save_style
	movq	-864(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-864(%rbp), %rdi
	movq	-856(%rbp), %rsi
	callq	d_save_object
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-864(%rbp), %rdi
	movq	-856(%rbp), %rsi
	callq	gfig_save_obj_end
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB14_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB14_1
.LBB14_9:                               # %for.end
	movq	-856(%rbp), %rax
	addq	$880, %rsp              # imm = 0x370
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gfig_save_as_string, .Lfunc_end14-gfig_save_as_string
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_save_obj_start,@function
gfig_save_obj_start:                    # @gfig_save_obj_start
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
	subq	$16, %rsp
	movabsq	$.L.str.72, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	8(%rsi), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_string_append_printf
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	callq	gfig_style_save_as_attributes
	movabsq	$.L.str.73, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gfig_save_obj_start, .Lfunc_end15-gfig_save_obj_start
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_save_obj_end,@function
gfig_save_obj_end:                      # @gfig_save_obj_end
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
	subq	$16, %rsp
	movabsq	$.L.str.74, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	8(%rsi), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_string_append_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gfig_save_obj_end, .Lfunc_end16-gfig_save_obj_end
	.cfi_endproc

	.globl	gfig_save_as_parasite
	.align	16, 0x90
	.type	gfig_save_as_parasite,@function
gfig_save_as_parasite:                  # @gfig_save_as_parasite
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
	subq	$32, %rsp
	callq	gfig_save_as_string
	movabsq	$.L.str.33, %rdi
	movl	$3, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gimp_parasite_new
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_string_free
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_attach_parasite
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_free
	movl	$0, -4(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_free
	movl	$1, -4(%rbp)
.LBB17_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gfig_save_as_parasite, .Lfunc_end17-gfig_save_as_parasite
	.cfi_endproc

	.globl	gfig_load_from_parasite
	.align	16, 0x90
	.type	gfig_load_from_parasite,@function
gfig_load_from_parasite:                # @gfig_load_from_parasite
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
	subq	$80, %rsp
	movabsq	$.L.str.33, %rsi
	movq	gfig_context, %rax
	movl	12(%rax), %edi
	callq	gimp_item_get_parasite
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB18_5
.LBB18_2:                               # %if.end
	movabsq	$.L.str.35, %rdi
	callq	gimp_temp_name
	movabsq	$.L.str.36, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB18_5
.LBB18_4:                               # %if.end.9
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_parasite_free
	movabsq	$.L.str.38, %rsi
	movq	-24(%rbp), %rdi
	callq	gfig_load
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_unlink
	movq	-24(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB18_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gfig_load_from_parasite, .Lfunc_end18-gfig_load_from_parasite
	.cfi_endproc

	.globl	gfig_save_callbk
	.align	16, 0x90
	.type	gfig_save_callbk,@function
gfig_save_callbk:                       # @gfig_save_callbk
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
	movabsq	$.L.str.39, %rsi
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB19_6
.LBB19_2:                               # %if.end
	callq	gfig_save_as_string
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rcx
	callq	fwrite
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	ferror
	cmpl	$0, %eax
	je	.LBB19_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.41, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movl	104(%rax), %ecx
	andl	$-4, %ecx
	movl	%ecx, 104(%rax)
.LBB19_5:                               # %if.end.11
	movq	-8(%rbp), %rdi
	callq	fclose
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB19_6:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gfig_save_callbk, .Lfunc_end19-gfig_save_callbk
	.cfi_endproc

	.align	16, 0x90
	.type	load_bool,@function
load_bool:                              # @load_bool
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB20_6
.LBB20_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB20_5
.LBB20_4:                               # %if.else.4
	movl	$1, -4(%rbp)
	jmp	.LBB20_7
.LBB20_5:                               # %if.end
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.5
	movl	$0, -4(%rbp)
.LBB20_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	load_bool, .Lfunc_end20-load_bool
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

	.type	obj_show_single,@object # @obj_show_single
	.data
	.globl	obj_show_single
	.align	4
obj_show_single:
	.long	4294967295              # 0xffffffff
	.size	obj_show_single, 4

	.type	back_pixbuf,@object     # @back_pixbuf
	.bss
	.globl	back_pixbuf
	.align	8
back_pixbuf:
	.quad	0
	.size	back_pixbuf, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\%03o"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%3o"
	.size	.L.str.1, 4

	.type	gfig_list,@object       # @gfig_list
	.bss
	.globl	gfig_list
	.align	8
gfig_list:
	.quad	0
	.size	gfig_list, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gfig.c"
	.size	.L.str.2, 7

	.type	.L__func__.gfig_free,@object # @__func__.gfig_free
.L__func__.gfig_free:
	.asciz	"gfig_free"
	.size	.L__func__.gfig_free, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gfig != NULL"
	.size	.L.str.3, 13

	.type	.L__func__.gfig_load,@object # @__func__.gfig_load
.L__func__.gfig_load:
	.asciz	"gfig_load"
	.size	.L__func__.gfig_load, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"filename != NULL"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%10s %10s %lf"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GFIG"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Version"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"File '%s' is not a gfig file"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Name: %100s"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Version: "
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ObjCount: %d"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"File '%s' corrupt file - Line %d Option section incorrect"
	.size	.L.str.14, 58

	.type	line_no,@object         # @line_no
	.bss
	.globl	line_no
	.align	4
line_no:
	.long	0                       # 0x0
	.size	line_no, 4

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"File '%s' corrupt file - Line %d Object count to small"
	.size	.L.str.15, 55

	.type	gfig_context,@object    # @gfig_context
	.bss
	.globl	gfig_context
	.align	8
gfig_context:
	.quad	0
	.size	gfig_context, 8

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"<OPTIONS>\n"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GridSpacing: %d\n"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GridType: RECT_GRID\n"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GridType: POLAR_GRID\n"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GridType: ISO_GRID\n"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"DrawGrid: %s\n"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"TRUE"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FALSE"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Snap2Grid: %s\n"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"LockOnGrid: %s\n"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ShowControl: %s\n"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"</OPTIONS>\n"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GFIG Version 0.2\n"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Name: %s\n"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Version: %s\n"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%f"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"ObjCount: %d\n"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gfig"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Error trying to save figure as a parasite: can't attach parasite to drawable."
	.size	.L.str.34, 78

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gfigtmp"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"wb"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Error trying to open temporary file '%s' for parasite loading: %s"
	.size	.L.str.37, 66

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"(none)"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"wb+"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.40, 36

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Failed to write file."
	.size	.L.str.41, 22

	.type	obj_creating,@object    # @obj_creating
	.bss
	.globl	obj_creating
	.align	8
obj_creating:
	.quad	0
	.size	obj_creating, 8

	.type	tmp_line,@object        # @tmp_line
	.globl	tmp_line
	.align	8
tmp_line:
	.quad	0
	.size	tmp_line, 8

	.type	need_to_scale,@object   # @need_to_scale
	.globl	need_to_scale
	.align	4
need_to_scale:
	.long	0                       # 0x0
	.size	need_to_scale, 4

	.type	dobj_class,@object      # @dobj_class
	.globl	dobj_class
	.align	16
dobj_class:
	.zero	480
	.size	dobj_class, 480

	.type	top_level_dlg,@object   # @top_level_dlg
	.globl	top_level_dlg
	.align	8
top_level_dlg:
	.quad	0
	.size	top_level_dlg, 8

	.type	gfig_drawable,@object   # @gfig_drawable
	.globl	gfig_drawable
	.align	8
gfig_drawable:
	.quad	0
	.size	gfig_drawable, 8

	.type	org_scale_x_factor,@object # @org_scale_x_factor
	.globl	org_scale_x_factor
	.align	8
org_scale_x_factor:
	.quad	0                       # double 0
	.size	org_scale_x_factor, 8

	.type	org_scale_y_factor,@object # @org_scale_y_factor
	.globl	org_scale_y_factor
	.align	8
org_scale_y_factor:
	.quad	0                       # double 0
	.size	org_scale_y_factor, 8

	.type	preview_width,@object   # @preview_width
	.globl	preview_width
	.align	4
preview_width:
	.long	0                       # 0x0
	.size	preview_width, 4

	.type	preview_height,@object  # @preview_height
	.globl	preview_height
	.align	4
preview_height:
	.long	0                       # 0x0
	.size	preview_height, 4

	.type	scale_x_factor,@object  # @scale_x_factor
	.globl	scale_x_factor
	.align	8
scale_x_factor:
	.quad	0                       # double 0
	.size	scale_x_factor, 8

	.type	scale_y_factor,@object  # @scale_y_factor
	.globl	scale_y_factor
	.align	8
scale_y_factor:
	.quad	0                       # double 0
	.size	scale_y_factor, 8

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.45
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.48
	.size	query.args, 96

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"run-mode"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.43, 61

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"image"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Input image (unused)"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"drawable"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Input drawable"
	.size	.L.str.47, 15

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"dummy"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"plug-in-gfig"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Create geometric shapes"
	.size	.L.str.50, 24

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Draw Vector Graphics and paint them onto your images.  Gfig allows you to draw many types of objects including Lines, Circles, Ellipses, Curves, Polygons, pointed stars, Bezier curves, and Spirals.  Objects can be painted using Brushes or other toolsor filled using colours or patterns.  Gfig objects can also be used to create selections.  "
	.size	.L.str.51, 342

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Andy Thomas"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"1997"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Gfig..."
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"<Image>/Filters/Render"
	.size	.L.str.56, 23

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"UTF-8"
	.size	.L.str.58, 6

	.type	sel_x1,@object          # @sel_x1
	.local	sel_x1
	.comm	sel_x1,4,4
	.type	sel_y1,@object          # @sel_y1
	.local	sel_y1
	.comm	sel_y1,4,4
	.type	sel_x2,@object          # @sel_x2
	.local	sel_x2
	.comm	sel_x2,4,4
	.type	sel_y2,@object          # @sel_y2
	.local	sel_y2
	.comm	sel_y2,4,4
	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Failed to load object, load count = %d"
	.size	.L.str.59, 39

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"<OPTIONS>"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"</OPTIONS>"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%255s %255s"
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"GridSpacing:"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"DrawGrid:"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Snap2Grid:"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"LockOnGrid:"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"ShowControl:"
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GridType:"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"RECT_GRID"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"POLAR_GRID"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"ISO_GRID"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"<%s "
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	">\n"
	.size	.L.str.73, 3

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"</%s>\n"
	.size	.L.str.74, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
