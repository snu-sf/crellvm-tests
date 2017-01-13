	.text
	.file	"guillotine.bc"
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
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movl	$2, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$2, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.17, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movl	$3, -48(%rbp)
	movq	-32(%rbp), %rcx
	movl	$3, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %esi
	movl	%esi, run.values+8
	movl	$0, run.values+40
	movl	$0, run.values+48
	movl	$5, run.values+80
	movq	$0, run.values+88
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$3, -48(%rbp)
	jne	.LBB1_13
# BB#3:                                 # %if.then
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-24(%rbp), %rdi
	movl	48(%rdi), %edi
	cmpl	$0, -44(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	guillotine
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_list_length
	movl	$4, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	%eax, run.values+48
	movslq	run.values+48, %rdi
	callq	g_malloc_n
	movq	%rax, run.values+88
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB1_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movslq	-68(%rbp), %rax
	movq	run.values+88, %rdx
	movl	%ecx, (%rdx,%rax,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
                                        #   in Loop: Header=BB1_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_4
.LBB1_10:                               # %for.end
	movq	-56(%rbp), %rdi
	callq	g_list_free
	cmpl	$0, -44(%rbp)
	jne	.LBB1_12
# BB#11:                                # %if.then.19
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_12:                               # %if.end
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.21
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
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
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
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
	.type	guillotine,@function
guillotine:                             # @guillotine
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
	subq	$256, %rsp              # imm = 0x100
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_height
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	%eax, -36(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	g_list_append
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	g_list_append
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	g_list_append
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	callq	g_list_append
	xorl	%esi, %esi
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_find_next_guide
	movl	%eax, -28(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jle	.LBB3_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_get_guide_position
	movl	%eax, -76(%rbp)
	movl	-12(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_get_guide_orientation
	movl	%eax, %esi
	testl	%eax, %eax
	movl	%esi, -168(%rbp)        # 4-byte Spill
	je	.LBB3_3
	jmp	.LBB3_41
.LBB3_41:                               # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB3_6
	jmp	.LBB3_42
.LBB3_42:                               # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB3_9
	jmp	.LBB3_11
.LBB3_3:                                # %sw.bb
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$guide_sort_func, %rdx
	movq	-48(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	g_list_insert_sorted
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_11
.LBB3_6:                                # %sw.bb.15
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB3_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$guide_sort_func, %rdx
	movq	-64(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	g_list_insert_sorted
	movq	%rax, -64(%rbp)
	movl	$1, -40(%rbp)
.LBB3_8:                                # %if.end.22
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_11
.LBB3_9:                                # %sw.bb.23
	jmp	.LBB3_10
.LBB3_10:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.21, %rsi
	movl	$199, %edx
	movabsq	$.L__func__.guillotine, %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-192(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB3_11:                               # %sw.epilog
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_find_next_guide
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_13:                               # %for.end
	cmpl	$0, -40(%rbp)
	je	.LBB3_39
# BB#14:                                # %if.then.26
	movl	-12(%rbp), %edi
	callq	gimp_image_get_filename
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.29
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
.LBB3_16:                               # %if.end.32
	movq	-48(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -96(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm0
	callq	log10
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -100(%rbp)
	cvtsi2sdl	-96(%rbp), %xmm0
	callq	log10
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.LBB3_18
# BB#17:                                # %cond.true
	movl	-100(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB3_19
.LBB3_18:                               # %cond.false
	movl	-104(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB3_19:                               # %cond.end
	movl	-196(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.23, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.24, %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -128(%rbp)
	movl	$0, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_20:                               # %for.cond.46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
                                        #       Child Loop BB3_30 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -197(%rbp)         # 1-byte Spill
	je	.LBB3_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -197(%rbp)         # 1-byte Spill
.LBB3_22:                               # %land.end
                                        #   in Loop: Header=BB3_20 Depth=1
	movb	-197(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_23
	jmp	.LBB3_38
.LBB3_23:                               # %for.body.49
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	$0, -108(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB3_24:                               # %for.cond.50
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_30 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -72(%rbp)
	movb	%cl, -198(%rbp)         # 1-byte Spill
	je	.LBB3_26
# BB#25:                                # %land.rhs.52
                                        #   in Loop: Header=BB3_24 Depth=2
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -198(%rbp)         # 1-byte Spill
.LBB3_26:                               # %land.end.55
                                        #   in Loop: Header=BB3_24 Depth=2
	movb	-198(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_27
	jmp	.LBB3_36
.LBB3_27:                               # %for.body.56
                                        #   in Loop: Header=BB3_24 Depth=2
	movl	-12(%rbp), %edi
	callq	gimp_image_duplicate
	movl	%eax, -132(%rbp)
	cmpl	$-1, -132(%rbp)
	jne	.LBB3_29
# BB#28:                                # %if.then.60
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	g_warning
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB3_40
.LBB3_29:                               # %if.end.61
                                        #   in Loop: Header=BB3_24 Depth=2
	movl	-132(%rbp), %edi
	callq	gimp_image_undo_disable
	movl	-132(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%ecx, %edx
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%ecx, %esi
	subl	%esi, %edx
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%ecx, %r8d
	subl	%r8d, %esi
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%ecx, %r8d
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%ecx, %r9d
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-204(%rbp), %edx        # 4-byte Reload
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_image_crop
	movq	-88(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	g_string_new
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movl	$46, %esi
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	callq	strrchr
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	movq	-144(%rbp), %rdi
	movslq	-164(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	g_string_insert
	movq	-160(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_free
	movl	-132(%rbp), %edi
	movq	-144(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_image_set_filename
	movl	$1, %esi
	movq	-144(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_string_free
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB3_30:                               # %while.cond
                                        #   Parent Loop BB3_20 Depth=1
                                        #     Parent Loop BB3_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%esi, %esi
	movl	-132(%rbp), %edi
	callq	gimp_image_find_next_guide
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB3_32
# BB#31:                                # %while.body
                                        #   in Loop: Header=BB3_30 Depth=3
	movl	-132(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_delete_guide
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB3_30
.LBB3_32:                               # %while.end
                                        #   in Loop: Header=BB3_24 Depth=2
	movl	-132(%rbp), %edi
	callq	gimp_image_undo_enable
	cmpl	$0, -16(%rbp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB3_34
# BB#33:                                # %if.then.93
                                        #   in Loop: Header=BB3_24 Depth=2
	movl	-132(%rbp), %edi
	callq	gimp_display_new
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB3_34:                               # %if.end.95
                                        #   in Loop: Header=BB3_24 Depth=2
	movq	-24(%rbp), %rdi
	movslq	-132(%rbp), %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
# BB#35:                                # %for.inc.98
                                        #   in Loop: Header=BB3_24 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB3_24
.LBB3_36:                               # %for.end.100
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_37
.LBB3_37:                               # %for.inc.101
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB3_20
.LBB3_38:                               # %for.end.104
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB3_39:                               # %if.end.105
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-64(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB3_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	guillotine, .Lfunc_end3-guillotine
	.cfi_endproc

	.align	16, 0x90
	.type	guide_sort_func,@function
guide_sort_func:                        # @guide_sort_func
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%esi, %eax
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	subl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	guide_sort_func, .Lfunc_end4-guide_sort_func
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
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

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.return_vals, 48

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image-count"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Number of images created"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image-ids"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Output images"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-guillotine"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Slice the image into subimages using guides"
	.size	.L.str.11, 44

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This function takes an image and slices it along its guides, creating new images. The original image is not modified."
	.size	.L.str.12, 118

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Adam D. Moss (adam@foxbox.org)"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1998"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Guillotine"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, INDEXED*, GRAY*"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Image/Transform"
	.size	.L.str.17, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,120,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Guillotine"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"guillotine.c"
	.size	.L.str.21, 13

	.type	.L__func__.guillotine,@object # @__func__.guillotine
.L__func__.guillotine:
	.asciz	"guillotine"
	.size	.L__func__.guillotine, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Untitled"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%%0%i"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"-%si-%si"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Couldn't create new image."
	.size	.L.str.25, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
