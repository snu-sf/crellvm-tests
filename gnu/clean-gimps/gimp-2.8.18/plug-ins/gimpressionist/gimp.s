	.text
	.file	"gimp.bc"
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %r10
	movl	$1, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.16, %rsi
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB1_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movl	$1, -52(%rbp)
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.4
	movabsq	$run.values, %rax
	movl	$21, run.values
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
# BB#5:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#6:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, img_has_alpha
	callq	g_rand_new
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rax, random_generator
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.17
	movabsq	$.L.str.20, %rdi
	movl	$0, run.values+8
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
	movq	drawable, %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_33
.LBB1_8:                                # %if.end.19
	movl	-44(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	ja	.LBB1_14
	jmp	.LBB1_9
.LBB1_9:                                # %sw.bb
	callq	gimpressionist_get_data
	cmpl	$0, -44(%rbp)
	jne	.LBB1_13
# BB#10:                                # %if.then.21
	callq	create_gimpressionist
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then.24
	jmp	.LBB1_33
.LBB1_12:                               # %if.end.25
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.26
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	movl	$0, -48(%rbp)
.LBB1_15:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#16:                                # %land.lhs.true
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_29
.LBB1_18:                               # %if.then.34
	cmpl	$0, -52(%rbp)
	je	.LBB1_22
# BB#19:                                # %if.then.36
	movq	-64(%rbp), %rdi
	callq	select_preset
	cmpl	$0, %eax
	je	.LBB1_21
# BB#20:                                # %if.then.39
	movl	$0, -48(%rbp)
.LBB1_21:                               # %if.end.40
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.41
	cmpl	$1, -44(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.43
	movl	$1, pcvals+100
.LBB1_24:                               # %if.end.44
	cmpl	$3, -48(%rbp)
	jne	.LBB1_28
# BB#25:                                # %if.then.46
	callq	gimpressionist_main
	callq	gimp_displays_flush
	cmpl	$0, -44(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jne	.LBB1_27
# BB#26:                                # %if.then.49
	movabsq	$.L.str.8, %rdi
	movabsq	$pcvals, %rax
	movl	$5088, %edx             # imm = 0x13E0
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.51
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.52
	jmp	.LBB1_32
.LBB1_29:                               # %if.else
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.54
	movl	$0, -48(%rbp)
.LBB1_31:                               # %if.end.55
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.56
	movq	random_generator, %rdi
	callq	g_rand_free
	callq	free_parsepath_cache
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	brush_reload
	callq	preview_free_resources
	callq	brush_free
	callq	preset_free
	callq	orientation_map_free_resources
	callq	size_map_free_resources
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_33:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	infile_copy_to_ppm
	.align	16, 0x90
	.type	infile_copy_to_ppm,@function
infile_copy_to_ppm:                     # @infile_copy_to_ppm
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, infile+8
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	grabarea
.LBB2_2:                                # %if.end
	movabsq	$infile, %rdi
	movq	-8(%rbp), %rsi
	callq	ppm_copy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	infile_copy_to_ppm, .Lfunc_end2-infile_copy_to_ppm
	.cfi_endproc

	.globl	grabarea
	.align	16, 0x90
	.type	grabarea,@function
grabarea:                               # @grabarea
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
	subq	$240, %rsp
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_41
.LBB3_2:                                # %if.end
	movabsq	$infile, %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	ppm_new
	movabsq	$infile, %rdi
	movq	%rdi, -56(%rbp)
	movq	drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.4
	movabsq	$inalpha, %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	ppm_new
.LBB3_4:                                # %if.end.5
	leaq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	imull	$3, (%rcx), %edx
	movl	%edx, -92(%rbp)
	movq	drawable, %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-48(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -104(%rbp)
.LBB3_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
                                        #       Child Loop BB3_33 Depth 3
                                        #     Child Loop BB3_26 Depth 2
                                        #     Child Loop BB3_17 Depth 2
                                        #       Child Loop BB3_19 Depth 3
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_10 Depth 3
	cmpq	$0, -104(%rbp)
	je	.LBB3_41
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-32(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	ja	.LBB3_39
# BB#42:                                # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_7:                                # %sw.bb
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB3_8:                                # %for.cond.9
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_15
# BB#9:                                 # %for.body.11
                                        #   in Loop: Header=BB3_8 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movl	$0, -68(%rbp)
	movl	-24(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB3_10:                               # %for.cond.16
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_13
# BB#11:                                # %for.body.18
                                        #   in Loop: Header=BB3_10 Depth=3
	imull	$3, -88(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-120(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-132(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-120(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-120(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-132(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-120(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB3_10
.LBB3_13:                               # %for.end
                                        #   in Loop: Header=BB3_8 Depth=2
	movl	-28(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
# BB#14:                                # %for.inc.33
                                        #   in Loop: Header=BB3_8 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_8
.LBB3_15:                               # %for.end.36
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_39
.LBB3_16:                               # %sw.bb.37
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB3_17:                               # %for.cond.40
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_19 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_24
# BB#18:                                # %for.body.43
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	inalpha+8, %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	$0, -68(%rbp)
	movl	-24(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB3_19:                               # %for.cond.55
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_22
# BB#20:                                # %for.body.58
                                        #   in Loop: Header=BB3_19 Depth=3
	movl	$255, %eax
	imull	$3, -88(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movq	-144(%rbp), %rdx
	movb	(%rdx), %sil
	movl	-164(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-152(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-144(%rbp), %rdx
	movb	(%rdx), %sil
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-152(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-144(%rbp), %rdx
	movb	(%rdx), %sil
	movl	-164(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-152(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-144(%rbp), %rdx
	movzbl	1(%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %sil
	movslq	-164(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-144(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -144(%rbp)
# BB#21:                                # %for.inc.79
                                        #   in Loop: Header=BB3_19 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB3_19
.LBB3_22:                               # %for.end.82
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	-28(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
# BB#23:                                # %for.inc.86
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_17
.LBB3_24:                               # %for.end.89
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_39
.LBB3_25:                               # %sw.bb.90
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-24(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB3_26:                               # %for.cond.95
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_29
# BB#27:                                # %for.body.99
                                        #   in Loop: Header=BB3_26 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imull	$3, -88(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-112(%rbp), %rsi
	imull	$3, -16(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movl	-28(%rbp), %ecx
	movq	-112(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
# BB#28:                                # %for.inc.113
                                        #   in Loop: Header=BB3_26 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_26
.LBB3_29:                               # %for.end.116
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_39
.LBB3_30:                               # %sw.bb.117
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB3_31:                               # %for.cond.120
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_33 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_38
# BB#32:                                # %for.body.124
                                        #   in Loop: Header=BB3_31 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	inalpha+8, %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movl	$0, -68(%rbp)
	movl	-24(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB3_33:                               # %for.cond.137
                                        #   Parent Loop BB3_5 Depth=1
                                        #     Parent Loop BB3_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_36
# BB#34:                                # %for.body.141
                                        #   in Loop: Header=BB3_33 Depth=3
	movl	$255, %eax
	imull	$3, -88(%rbp), %ecx
	movl	%ecx, -196(%rbp)
	movq	-176(%rbp), %rdx
	movb	(%rdx), %sil
	movl	-196(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-176(%rbp), %rdx
	movb	1(%rdx), %sil
	movl	-196(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-176(%rbp), %rdx
	movb	2(%rdx), %sil
	movl	-196(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-176(%rbp), %rdx
	movzbl	3(%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %sil
	movslq	-196(%rbp), %rdx
	movq	-192(%rbp), %rdi
	movb	%sil, (%rdi,%rdx)
	movq	-176(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -176(%rbp)
# BB#35:                                # %for.inc.163
                                        #   in Loop: Header=BB3_33 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB3_33
.LBB3_36:                               # %for.end.166
                                        #   in Loop: Header=BB3_31 Depth=2
	movl	-28(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
# BB#37:                                # %for.inc.170
                                        #   in Loop: Header=BB3_31 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_31
.LBB3_38:                               # %for.end.173
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %sw.epilog
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_40
.LBB3_40:                               # %for.inc.174
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -104(%rbp)
	jmp	.LBB3_5
.LBB3_41:                               # %for.end.176
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	grabarea, .Lfunc_end3-grabarea
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_7
	.quad	.LBB3_16
	.quad	.LBB3_25
	.quad	.LBB3_30

	.text
	.globl	infile_copy_alpha_to_ppm
	.align	16, 0x90
	.type	infile_copy_alpha_to_ppm,@function
infile_copy_alpha_to_ppm:               # @infile_copy_alpha_to_ppm
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
	movabsq	$inalpha, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	ppm_copy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	infile_copy_alpha_to_ppm, .Lfunc_end4-infile_copy_alpha_to_ppm
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc

	.align	16, 0x90
	.type	gimpressionist_get_data,@function
gimpressionist_get_data:                # @gimpressionist_get_data
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
	callq	restore_default_values
	movabsq	$.L.str.8, %rdi
	movabsq	$pcvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimpressionist_get_data, .Lfunc_end6-gimpressionist_get_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI7_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI7_3:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI7_4:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI7_5:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	gimpressionist_main,@function
gimpressionist_main:                    # @gimpressionist_main
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
	subq	$272, %rsp              # imm = 0x110
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_44
.LBB7_2:                                # %if.end
	movabsq	$.L.str.21, %rdi
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -112(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	cmpq	$0, infile+8
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jne	.LBB7_4
# BB#3:                                 # %if.then.4
	callq	grabarea
.LBB7_4:                                # %if.end.5
	movabsq	$infile, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$inalpha, %rdx
	cmpl	$0, img_has_alpha
	cmovneq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	repaint
	leaq	-48(%rbp), %rdi
	movl	$1, %eax
	movabsq	$infile, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	imull	$3, (%rcx), %r8d
	movl	%r8d, -92(%rbp)
	movq	drawable, %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-48(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
.LBB7_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
                                        #       Child Loop BB7_33 Depth 3
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_19 Depth 3
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_10 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB7_43
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-32(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	ja	.LBB7_39
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_7:                                # %sw.bb
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB7_8:                                # %for.cond.13
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_10 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_15
# BB#9:                                 # %for.body.16
                                        #   in Loop: Header=BB7_8 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movl	$0, -68(%rbp)
	movl	-24(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB7_10:                               # %for.cond.21
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_13
# BB#11:                                # %for.body.24
                                        #   in Loop: Header=BB7_10 Depth=3
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -148(%rbp)
	movslq	-148(%rbp), %rcx
	movl	%ecx, %eax
	movq	-144(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cvtsi2sdl	%esi, %xmm0
	movsd	.LCPI7_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	%eax, %esi
	incl	%esi
	movslq	%esi, %rcx
	movzbl	(%rdx,%rcx), %esi
	cvtsi2sdl	%esi, %xmm1
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addl	$2, %eax
	movslq	%eax, %rcx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)
	movb	%dil, (%rcx)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB7_10 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB7_10
.LBB7_13:                               # %for.end
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	-28(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
# BB#14:                                # %for.inc.48
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_8
.LBB7_15:                               # %for.end.51
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_39
.LBB7_16:                               # %sw.bb.52
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB7_17:                               # %for.cond.55
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_19 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_24
# BB#18:                                # %for.body.59
                                        #   in Loop: Header=BB7_17 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	inalpha+8, %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movl	$0, -68(%rbp)
	movl	-24(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB7_19:                               # %for.cond.71
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_22
# BB#20:                                # %for.body.75
                                        #   in Loop: Header=BB7_19 Depth=3
	movl	$255, %eax
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_3, %xmm2         # xmm2 = mem[0],zero
	imull	$3, -88(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	movl	-180(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	movl	-180(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm3
	movl	-180(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -184(%rbp)
	movl	-184(%rbp), %ecx
	movb	%cl, %dil
	movq	-160(%rbp), %rdx
	movb	%dil, (%rdx)
	movslq	-180(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %dil
	movq	-160(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movq	-160(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -160(%rbp)
# BB#21:                                # %for.inc.108
                                        #   in Loop: Header=BB7_19 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB7_19
.LBB7_22:                               # %for.end.111
                                        #   in Loop: Header=BB7_17 Depth=2
	movl	-28(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
# BB#23:                                # %for.inc.115
                                        #   in Loop: Header=BB7_17 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_17
.LBB7_24:                               # %for.end.118
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_39
.LBB7_25:                               # %sw.bb.119
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	-24(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB7_26:                               # %for.cond.124
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_29
# BB#27:                                # %for.body.128
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	-128(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imull	$3, -88(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imull	$3, -16(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-28(%rbp), %ecx
	movq	-128(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
# BB#28:                                # %for.inc.142
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_26
.LBB7_29:                               # %for.end.145
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_39
.LBB7_30:                               # %sw.bb.146
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB7_31:                               # %for.cond.149
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_38
# BB#32:                                # %for.body.153
                                        #   in Loop: Header=BB7_31 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	inalpha+8, %rax
	movl	-84(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movl	$0, -68(%rbp)
	movl	-24(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB7_33:                               # %for.cond.166
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_36
# BB#34:                                # %for.body.170
                                        #   in Loop: Header=BB7_33 Depth=3
	movl	$255, %eax
	imull	$3, -88(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movl	-212(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movq	-192(%rbp), %rdx
	movb	%dil, (%rdx)
	movl	-212(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movq	-192(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movl	-212(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movq	-192(%rbp), %rdx
	movb	%dil, 2(%rdx)
	movslq	-212(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %dil
	movq	-192(%rbp), %rdx
	movb	%dil, 3(%rdx)
	movq	-192(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -192(%rbp)
# BB#35:                                # %for.inc.192
                                        #   in Loop: Header=BB7_33 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB7_33
.LBB7_36:                               # %for.end.195
                                        #   in Loop: Header=BB7_31 Depth=2
	movl	-28(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
# BB#37:                                # %for.inc.199
                                        #   in Loop: Header=BB7_31 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_31
.LBB7_38:                               # %for.end.202
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_39
.LBB7_39:                               # %sw.epilog
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$16, %eax
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-104(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movl	-96(%rbp), %ecx
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-240(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_41
# BB#40:                                # %if.then.210
                                        #   in Loop: Header=BB7_5 Depth=1
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdq	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	cvtsi2sdq	-112(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB7_41:                               # %if.end.216
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_42
.LBB7_42:                               # %for.inc.217
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	jmp	.LBB7_5
.LBB7_43:                               # %for.end.220
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	drawable, %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB7_44:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimpressionist_main, .Lfunc_end7-gimpressionist_main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_7
	.quad	.LBB7_16
	.quad	.LBB7_25
	.quad	.LBB7_30

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	infile,@object          # @infile
	.local	infile
	.comm	infile,16,8
	.type	inalpha,@object         # @inalpha
	.local	inalpha
	.comm	inalpha,16,8
	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.args, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

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
	.asciz	"preset"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Preset Name"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-gimpressionist"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Performs various artistic operations"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Performs various artistic operations on an image"
	.size	.L.str.10, 49

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Vidar Madsen <vidar@prosalg.no>"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Vidar Madsen"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"v1.0, November 2003"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_GIMPressionist..."
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.16, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.zero	1
	.size	.L.str.17, 1

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
	.asciz	"The selection does not intersect the active layer or mask."
	.size	.L.str.20, 59

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Painting"
	.size	.L.str.21, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
