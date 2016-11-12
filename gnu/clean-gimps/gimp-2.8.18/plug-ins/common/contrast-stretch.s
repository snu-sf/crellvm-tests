	.text
	.file	"contrast-stretch.bc"
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_7
.LBB1_4:                                # %if.then
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	c_astretch
	cmpl	$1, -56(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.17
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_13
.LBB1_7:                                # %if.else
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_11
# BB#8:                                 # %if.then.22
	movl	-60(%rbp), %edi
	callq	indexed_c_astretch
	cmpl	$1, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.25
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_10:                               # %if.end.27
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.28
	movl	$0, -52(%rbp)
.LBB1_12:                               # %if.end.29
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.30
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-52(%rbp), %edx
	movl	%edx, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
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

	.align	16, 0x90
	.type	c_astretch,@function
c_astretch:                             # @c_astretch
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
	subq	$816, %rsp              # imm = 0x330
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -808(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -808(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-808(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	movabsq	$find_min_max, %rdx
	leaq	-792(%rbp), %rcx
	movl	%eax, -792(%rbp)
	movb	$-1, -18(%rbp)
	movb	$-1, -19(%rbp)
	movb	$-1, -20(%rbp)
	movb	$0, -15(%rbp)
	movb	$0, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterate1
	movl	$0, -796(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	movl	-796(%rbp), %eax
	cmpl	-792(%rbp), %eax
	jge	.LBB3_14
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movslq	-796(%rbp), %rax
	movzbl	-17(%rbp,%rax), %ecx
	movslq	-796(%rbp), %rax
	movzbl	-20(%rbp,%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -800(%rbp)
	cmpl	$0, -800(%rbp)
	je	.LBB3_11
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_4 Depth=1
	movslq	-796(%rbp), %rax
	movzbl	-20(%rbp,%rax), %ecx
	movl	%ecx, -804(%rbp)
.LBB3_7:                                # %for.cond.26
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-804(%rbp), %eax
	movslq	-796(%rbp), %rcx
	movzbl	-17(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB3_10
# BB#8:                                 # %for.body.33
                                        #   in Loop: Header=BB3_7 Depth=2
	leaq	-792(%rbp), %rax
	movl	-804(%rbp), %ecx
	movslq	-796(%rbp), %rdx
	movzbl	-20(%rbp,%rdx), %esi
	subl	%esi, %ecx
	imull	$255, %ecx, %ecx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-800(%rbp)
	movb	%al, %dil
	movslq	-796(%rbp), %r8
	movslq	-804(%rbp), %r9
	movq	-816(%rbp), %r10        # 8-byte Reload
	addq	$4, %r10
	imulq	$3, %r9, %r9
	addq	%r9, %r10
	movb	%dil, (%r10,%r8)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-804(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -804(%rbp)
	jmp	.LBB3_7
.LBB3_10:                               # %for.end
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_12
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-792(%rbp), %rax
	movslq	-796(%rbp), %rcx
	movb	-20(%rbp,%rcx), %dl
	movslq	-796(%rbp), %rcx
	movslq	-796(%rbp), %rsi
	movzbl	-20(%rbp,%rsi), %edi
	movl	%edi, %esi
	addq	$4, %rax
	imulq	$3, %rsi, %rsi
	addq	%rsi, %rax
	movb	%dl, (%rax,%rcx)
.LBB3_12:                               # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %for.inc.55
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-796(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -796(%rbp)
	jmp	.LBB3_4
.LBB3_14:                               # %for.end.57
	xorl	%esi, %esi
	movabsq	$c_astretch_func, %rdx
	leaq	-792(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rcx
	callq	gimp_rgn_iterate2
	addq	$816, %rsp              # imm = 0x330
	popq	%rbp
	retq
.Lfunc_end3:
	.size	c_astretch, .Lfunc_end3-c_astretch
	.cfi_endproc

	.align	16, 0x90
	.type	indexed_c_astretch,@function
indexed_c_astretch:                     # @indexed_c_astretch
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
	subq	$64, %rsp
	leaq	-20(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$255, -40(%rbp)
	movl	$255, -44(%rbp)
	movl	$255, -48(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB4_2:                                # %if.end
	movl	$0, -24(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_18
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB4_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB4_6:                                # %if.end.10
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB4_8
# BB#7:                                 # %if.then.18
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -32(%rbp)
.LBB4_8:                                # %if.end.24
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB4_10
# BB#9:                                 # %if.then.32
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -36(%rbp)
.LBB4_10:                               # %if.end.38
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB4_12
# BB#11:                                # %if.then.46
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -40(%rbp)
.LBB4_12:                               # %if.end.52
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_14
# BB#13:                                # %if.then.60
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -44(%rbp)
.LBB4_14:                               # %if.end.66
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB4_16
# BB#15:                                # %if.then.74
                                        #   in Loop: Header=BB4_3 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -48(%rbp)
.LBB4_16:                               # %if.end.80
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB4_3
.LBB4_18:                               # %for.end
	movl	$0, -24(%rbp)
.LBB4_19:                               # %for.cond.81
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_28
# BB#20:                                # %for.body.84
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.LBB4_22
# BB#21:                                # %if.then.87
                                        #   in Loop: Header=BB4_19 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	subl	-40(%rbp), %eax
	imull	$255, %eax, %eax
	movl	-28(%rbp), %esi
	subl	-40(%rbp), %esi
	cltd
	idivl	%esi
	movb	%al, %dil
	imull	$3, -24(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %r8
	movb	%dil, (%r8,%rcx)
.LBB4_22:                               # %if.end.100
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB4_24
# BB#23:                                # %if.then.103
                                        #   in Loop: Header=BB4_19 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	subl	-44(%rbp), %eax
	imull	$255, %eax, %eax
	movl	-32(%rbp), %esi
	subl	-44(%rbp), %esi
	cltd
	idivl	%esi
	movb	%al, %dil
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %r8
	movb	%dil, (%r8,%rcx)
.LBB4_24:                               # %if.end.118
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.LBB4_26
# BB#25:                                # %if.then.121
                                        #   in Loop: Header=BB4_19 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	subl	-48(%rbp), %eax
	imull	$255, %eax, %eax
	movl	-36(%rbp), %esi
	subl	-48(%rbp), %esi
	cltd
	idivl	%esi
	movb	%al, %dil
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %r8
	movb	%dil, (%r8,%rcx)
.LBB4_26:                               # %if.end.136
                                        #   in Loop: Header=BB4_19 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %for.inc.137
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB4_19
.LBB4_28:                               # %for.end.139
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_image_set_colormap
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	indexed_c_astretch, .Lfunc_end4-indexed_c_astretch
	.cfi_endproc

	.align	16, 0x90
	.type	find_min_max,@function
find_min_max:                           # @find_min_max
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB5_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 780(%rax)
	je	.LBB5_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB5_9
.LBB5_4:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	772(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jge	.LBB5_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, 772(%rcx,%rax)
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	775(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jle	.LBB5_8
# BB#7:                                 # %if.then.25
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, 775(%rcx,%rax)
.LBB5_8:                                # %if.end.31
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.32
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_1
.LBB5_11:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	find_min_max, .Lfunc_end5-find_min_max
	.cfi_endproc

	.align	16, 0x90
	.type	c_astretch_func,@function
c_astretch_func:                        # @c_astretch_func
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-44(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movq	-40(%rbp), %rdx
	addq	$4, %rdx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rdx
	movb	(%rdx,%rax), %dil
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	-40(%rbp), %rax
	cmpl	$0, 780(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-40(%rbp), %rax
	movslq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB6_6:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	c_astretch_func, .Lfunc_end6-c_astretch_func
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
.Lfunc_end7:
	.size	g_message, .Lfunc_end7-g_message
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
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-c-astretch"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Stretch contrast to cover the maximum possible range"
	.size	.L.str.7, 53

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This simple plug-in does an automatic contrast stretch.  For each channel in the image, it finds the minimum and maximum values... it uses those values to stretch the individual histograms to the full contrast range.  For some images it may do just what you want; for others it may not work that well."
	.size	.L.str.8, 302

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Federico Mena Quintero"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1996"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Stretch Contrast"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Colors/Auto"
	.size	.L.str.13, 20

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
	.asciz	"Auto-stretching contrast"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"c_astretch: cmap was NULL!  Quitting...\n"
	.size	.L.str.17, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
